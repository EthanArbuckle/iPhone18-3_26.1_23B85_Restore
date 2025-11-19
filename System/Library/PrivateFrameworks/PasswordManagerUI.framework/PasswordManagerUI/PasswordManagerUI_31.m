uint64_t sub_21CA5E7F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_searchTask;
  if (*(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_searchTask))
  {
    v6 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_searchTask);

    sub_21CB85944();
  }

  sub_21CB858C4();
  v7 = sub_21CB858E4();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v10 = sub_21C9E6C0C(0, 0, v4, &unk_21CBC1D98, v9);
  sub_21C6EA794(v4, &qword_27CDF1D50, &qword_21CBA0C00);
  v11 = *(v0 + v5);
  *(v0 + v5) = v10;
}

uint64_t sub_21CA5E97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_21CB85C44();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68A8, &qword_21CBC1DA0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CA5EA8C, 0, 0);
}

uint64_t sub_21CA5EA8C()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (!Strong)
  {
LABEL_4:
    v4 = v0[14];
    v3 = v0[15];
    v6 = v0[12];
    v5 = v0[13];

    v7 = v0[1];

    return v7();
  }

  if (sub_21CB85954())
  {

    goto LABEL_4;
  }

  v0[17] = sub_21CB858B4();
  v0[18] = sub_21CB858A4();
  v10 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CA5EBC0, v10, v9);
}

uint64_t sub_21CA5EBC0()
{
  v1 = v0[18];
  v2 = v0[16];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v3 = v0[6];
  v0[19] = v0[5];
  v0[20] = v3;
  v0[21] = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsInPersonalKeychain);
  v0[22] = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsByGroupID);
  v4 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__autoFillQuirksManager);
  v5 = qword_27CDEA4C0;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v6 = sub_21C81C2D0(v4, v0[7]);

  v0[23] = [v6 associatedDomainsManager];

  return MEMORY[0x2822009F8](sub_21CA5ED44, 0, 0);
}

uint64_t sub_21CA5ED44()
{
  v1 = sub_21CB85954();
  v2 = *(v0 + 184);
  if (v1)
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    v5 = *(v0 + 160);
    v6 = *(v0 + 128);

    goto LABEL_38;
  }

  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v9 = *(v0 + 152);
  v10 = v2;
  matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v8, v9, v7, v2);

  *(v0 + 192) = matched;

  if ((sub_21CB85954() & 1) == 0)
  {
    v91 = v2;
    v16 = *(v0 + 176);
    v17 = *(v0 + 88);
    v18 = sub_21CB12B08(MEMORY[0x277D84F90]);
    v21 = 0;
    v87 = v16 + 64;
    v88 = v17;
    v22 = -1;
    v23 = -1 << *(v16 + 32);
    if (-v23 < 64)
    {
      v22 = ~(-1 << -v23);
    }

    v24 = v22 & *(v16 + 64);
    v86 = (63 - v23) >> 6;
    v92 = (v17 + 16);
    v94 = (v17 + 32);
    v25 = v18;
    v89 = v16;
    v90 = (v17 + 8);
    while (1)
    {
      *(v0 + 200) = v25;
      if (!v24)
      {
        if (v86 <= v21 + 1)
        {
          v32 = v21 + 1;
        }

        else
        {
          v32 = v86;
        }

        v33 = v32 - 1;
        while (1)
        {
          v31 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v31 >= v86)
          {
            v60 = *(v0 + 112);
            v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68B0, &qword_21CBC1DA8);
            (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
            v24 = 0;
            v21 = v33;
            goto LABEL_21;
          }

          v24 = *(v87 + 8 * v31);
          ++v21;
          if (v24)
          {
            v93 = v25;
            v21 = v31;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
        return MEMORY[0x2822009F8](v18, v19, v20);
      }

      v93 = v25;
      v31 = v21;
LABEL_20:
      v35 = *(v0 + 104);
      v34 = *(v0 + 112);
      v36 = *(v0 + 80);
      v37 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v38 = v37 | (v31 << 6);
      (*(v88 + 16))(v35, *(v89 + 48) + *(v88 + 72) * v38, v36);
      v39 = *(*(v89 + 56) + 8 * v38);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68B0, &qword_21CBC1DA8);
      v41 = *(v40 + 48);
      (*(v88 + 32))(v34, v35, v36);
      *(v34 + v41) = v39;
      (*(*(v40 - 8) + 56))(v34, 0, 1, v40);

      v25 = v93;
LABEL_21:
      v42 = *(v0 + 120);
      sub_21C716934(*(v0 + 112), v42, &qword_27CDF68A8, &qword_21CBC1DA0);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68B0, &qword_21CBC1DA8);
      if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
      {
        v63 = *(v0 + 176);
        v64 = *(v0 + 160);
        v65 = *(v0 + 136);

        *(v0 + 208) = sub_21CB858A4();
        v66 = sub_21CB85874();
        v68 = v67;
        v18 = sub_21CA5F3FC;
        v19 = v66;
        v20 = v68;

        return MEMORY[0x2822009F8](v18, v19, v20);
      }

      v45 = *(v0 + 152);
      v44 = *(v0 + 160);
      v46 = *(v0 + 80);
      v47 = *(*(v0 + 120) + *(v43 + 48));
      (*v94)(*(v0 + 96));
      v48 = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v47, v45, v44, v91);

      if (sub_21CB85954())
      {
        v69 = *(v0 + 176);
        v70 = *(v0 + 184);
        v71 = *(v0 + 160);
        v72 = *(v0 + 128);
        v73 = *(v0 + 96);
        v74 = *(v0 + 80);

        (*v90)(v73, v74);

        goto LABEL_39;
      }

      v49 = *(v0 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_21CB10A54(v49);
      v51 = v25[2];
      v52 = (v19 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_46;
      }

      v55 = v19;
      if (v25[3] < v54)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }

      v62 = v18;
      sub_21C8D58B0();
      v18 = v62;
      if (v55)
      {
LABEL_29:
        v58 = v25[7];
        v59 = *(v58 + 8 * v18);
        *(v58 + 8 * v18) = v48;

        goto LABEL_9;
      }

LABEL_8:
      v26 = *(v0 + 104);
      v27 = v18;
      (*v92)(v26, *(v0 + 96), *(v0 + 80));
      sub_21C8D5124(v27, v26, v48, v25);
LABEL_9:
      v28 = *(v0 + 96);
      v29 = *(v0 + 80);
      v30 = sub_21CB85954();
      v18 = (*v90)(v28, v29);
      if (v30)
      {
        v75 = *(v0 + 176);
        v76 = *(v0 + 184);
        v77 = *(v0 + 160);
        v78 = *(v0 + 128);

        goto LABEL_38;
      }
    }

    v56 = *(v0 + 96);
    sub_21C8D1B3C(v54, isUniquelyReferenced_nonNull_native);
    v18 = sub_21CB10A54(v56);
    if ((v55 & 1) != (v57 & 1))
    {
      v85 = *(v0 + 80);

      return sub_21CB863B4();
    }

LABEL_28:
    if (v55)
    {
      goto LABEL_29;
    }

    goto LABEL_8;
  }

  v12 = *(v0 + 176);
  v13 = *(v0 + 184);
  v14 = *(v0 + 160);
  v15 = *(v0 + 128);

LABEL_38:

LABEL_39:
  v80 = *(v0 + 112);
  v79 = *(v0 + 120);
  v82 = *(v0 + 96);
  v81 = *(v0 + 104);

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_21CA5F3FC()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[16];

  v5 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_groups);

  v6 = sub_21CA60578(v3, v2, v5);

  if (sub_21CB85954())
  {
  }

  else
  {
    v7 = v0[16];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[8] = v6;

    sub_21CB81DC4();
  }

  return MEMORY[0x2822009F8](sub_21CA5F518, 0, 0);
}

uint64_t sub_21CA5F518()
{
  v1 = v0[23];
  v2 = v0[16];

  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];

  v7 = v0[1];

  return v7();
}

uint64_t sub_21CA5F5AC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21CA5DA9C(v1, 0, 0);
  }

  return result;
}

uint64_t sub_21CA5F614(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;

    v4 = sub_21CA61260(v1, v3);

    v5 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsByGroupID);
    *(v3 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsByGroupID) = v4;

    sub_21CA59710();
    sub_21CA5D088();
  }

  return result;
}

uint64_t sub_21CA5F6B0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_groups);
    *(result + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_groups) = v1;

    sub_21CA59710();
    sub_21CA5D088();
  }

  return result;
}

uint64_t sub_21CA5F738()
{
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_group, &qword_27CDF7670, &unk_21CBAA8F0);
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__accountsState);

  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__groupsStore);

  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__autoFillQuirksManager);

  v4 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_subscriptions);

  v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsThatReuseAPasswordFromMyPasswords);

  v6 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__listedSections;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6890, &unk_21CBC1B90);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsInPersonalKeychain);

  v9 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_accountsByGroupID);

  v10 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_groups);

  v11 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__searchText;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel_searchTask);

  v14 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__selectedAccountsNewIDToOldID;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6898, &unk_21CBC1BA0);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__isPresentingMoveAccountsFailureAlert;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v18 = *(*(v17 - 8) + 8);
  v18(v0 + v16, v17);
  v18(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__isPresentingReusedPasswordAlert, v17);
  v18(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__isPresentingMoveSharedAccountsAlert, v17);
  v19 = OBJC_IVAR____TtC17PasswordManagerUI23PMMoveAccountsListModel__moveSharedAccountsAlertConfiguration;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68A0, qword_21CBC1BB0);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  return v0;
}

uint64_t sub_21CA5F9D0()
{
  sub_21CA5F738();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_21CA5FA50()
{
  sub_21CA50814();
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_21C6EA5CC(319, &qword_27CDF6848, &qword_27CDF6730, &qword_21CBC18C8);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_21C6F039C(319, &qword_27CDEAEC8);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_21C6EA5CC(319, &qword_27CDF6850, &qword_27CDF6858, &qword_21CBC1AC8);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_21C6F039C(319, &qword_27CDEAEE0);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_21C6EA5CC(319, &qword_27CDF6860, &qword_27CDF6868, &qword_21CBC1AD0);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21CA5FCE8()
{
  v0 = type metadata accessor for PMSharingGroup();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_21CA5FD88(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_21CA5FDD0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_21CA60DC4(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_21CA5FE6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8980, &qword_21CBADE78);
  result = sub_21CB86224();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v37 = *v21;
    v23 = *(v9 + 40);
    sub_21CB86484();

    sub_21CB854C4();
    result = sub_21CB864D4();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = 16 * v27;
    v33 = (*(v9 + 48) + v32);
    *v33 = v19;
    v33[1] = v20;
    v34 = (*(v9 + 56) + v32);
    *v34 = v37;
    v34[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21CA600C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMMoveAccountsListModel.Section(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6888, &unk_21CBC1B80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v30 - v15;
  v18 = *(v17 + 56);
  sub_21CA60D5C(a1, v30 - v15, type metadata accessor for PMMoveAccountsListModel.Section);
  sub_21CA60D5C(a2, &v16[v18], type metadata accessor for PMMoveAccountsListModel.Section);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
LABEL_3:
      sub_21CA60500(v16, type metadata accessor for PMMoveAccountsListModel.Section);
      return 1;
    }

    goto LABEL_6;
  }

  sub_21CA60D5C(v16, v12, type metadata accessor for PMMoveAccountsListModel.Section);
  if (v19(&v16[v18], 1, v4) != 1)
  {
    sub_21CA615C0(&v16[v18], v8, type metadata accessor for PMSharingGroup);
    sub_21CB85C44();
    sub_21CA5FD88(&qword_27CDECD58, MEMORY[0x277D49978]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v30[2] == v30[0] && v30[3] == v30[1])
    {
    }

    else
    {
      v21 = sub_21CB86344();

      if ((v21 & 1) == 0)
      {
LABEL_19:
        sub_21CA60500(v8, type metadata accessor for PMSharingGroup);
        sub_21CA60500(v12, type metadata accessor for PMSharingGroup);
        sub_21CA60500(v16, type metadata accessor for PMMoveAccountsListModel.Section);
        return 0;
      }
    }

    v22 = v4[5];
    v23 = *&v12[v22];
    v24 = *&v12[v22 + 8];
    v25 = &v8[v22];
    if (v23 == *v25 && v24 == *(v25 + 1) || (sub_21CB86344()) && (sub_21C967680(*&v12[v4[6]], *&v8[v4[6]]))
    {
      if (v26 = v4[7], v27 = *&v12[v26], v28 = *&v12[v26 + 8], v29 = &v8[v26], v27 == *v29) && v28 == *(v29 + 1) || (sub_21CB86344())
      {
        sub_21CA60500(v8, type metadata accessor for PMSharingGroup);
        sub_21CA60500(v12, type metadata accessor for PMSharingGroup);
        goto LABEL_3;
      }
    }

    goto LABEL_19;
  }

  sub_21CA60500(v12, type metadata accessor for PMSharingGroup);
LABEL_6:
  sub_21C6EA794(v16, &qword_27CDF6888, &unk_21CBC1B80);
  return 0;
}

uint64_t sub_21CA60500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CA60578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v55 = a2;
  v49 = a1;
  v3 = type metadata accessor for PMSharingGroup();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB0A0, &qword_21CBA0E40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB098, &unk_21CBC1D80);
  v21 = *(v9 + 72);
  v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21CBA0690;
  v58 = v22;
  v59 = v8;
  v50 = v23;
  v24 = v23 + v22;
  v25 = *(v8 + 48);
  v26 = *(v4 + 56);
  v53 = v4 + 56;
  v54 = v3;
  v52 = v26;
  v26(v24, 1, 1, v3);
  *(v24 + v25) = v49;
  v27 = v51;
  v28 = *(v51 + 16);
  v57 = v21;
  if (v28)
  {
    v60 = MEMORY[0x277D84F90];

    sub_21C7B1380(0, v28, 0);
    v29 = v60;
    v30 = v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v51 = *(v4 + 72);
    do
    {
      sub_21CA60D5C(v30, v7, type metadata accessor for PMSharingGroup);
      sub_21CA60D5C(v7, v20, type metadata accessor for PMSharingGroup);
      v52(v20, 0, 1, v54);
      v31 = v55;
      if (*(v55 + 16) && (v32 = sub_21CB10A54(v7), (v33 & 1) != 0))
      {
        v34 = *(*(v31 + 56) + 8 * v32);
      }

      else
      {
        v34 = MEMORY[0x277D84F90];
      }

      v35 = *(v59 + 48);
      sub_21CA60500(v7, type metadata accessor for PMSharingGroup);
      *&v20[v35] = v34;
      v60 = v29;
      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_21C7B1380(v36 > 1, v37 + 1, 1);
        v29 = v60;
      }

      *(v29 + 16) = v37 + 1;
      v38 = v29 + v58 + v37 * v57;
      v21 = v57;
      sub_21C716934(v20, v38, &qword_27CDEB0A0, &qword_21CBA0E40);
      v30 += v51;
      --v28;
    }

    while (v28);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v60 = v50;
  result = sub_21CAE9004(v29);
  v40 = v60;
  v55 = *(v60 + 16);
  if (v55)
  {
    v41 = 0;
    v42 = v60 + v58;
    v43 = MEMORY[0x277D84F90];
    while (v41 < *(v40 + 16))
    {
      sub_21C6EDBAC(v42, v18, &qword_27CDEB0A0, &qword_21CBA0E40);
      sub_21C6EDBAC(v18, v15, &qword_27CDEB0A0, &qword_21CBA0E40);
      v44 = *(*&v15[*(v59 + 48)] + 16);

      sub_21CA60500(v15, type metadata accessor for PMMoveAccountsListModel.Section);
      if (v44)
      {
        sub_21C716934(v18, v56, &qword_27CDEB0A0, &qword_21CBA0E40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B1380(0, *(v43 + 16) + 1, 1);
          v43 = v60;
        }

        v47 = *(v43 + 16);
        v46 = *(v43 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_21C7B1380(v46 > 1, v47 + 1, 1);
          v43 = v60;
        }

        *(v43 + 16) = v47 + 1;
        v48 = v43 + v58 + v47 * v57;
        v21 = v57;
        result = sub_21C716934(v56, v48, &qword_27CDEB0A0, &qword_21CBA0E40);
      }

      else
      {
        result = sub_21C6EA794(v18, &qword_27CDEB0A0, &qword_21CBA0E40);
      }

      ++v41;
      v42 += v21;
      if (v55 == v41)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
LABEL_24:

    return v43;
  }

  return result;
}

unint64_t sub_21CA60AC0(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 56);
  v43 = *(result + 48);
  v10 = *a3;

  result = sub_21CB10A3C(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_21C8D2D78(v15, i & 1);
    v17 = *a3;
    result = sub_21CB10A3C(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_21CB863B4();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    v24 = (v19[6] + 16 * result);
    *v24 = v8;
    v24[1] = v7;
    v25 = (v19[7] + 16 * result);
    *v25 = v43;
    v25[1] = v9;
    v26 = v19[2];
    v14 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v27;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v23 = result;
  sub_21C8D6350();
  result = v23;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = result;

  v21 = (v19[7] + 16 * v20);
  v22 = v21[1];
  *v21 = v43;
  v21[1] = v9;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 88); ; i += 4)
    {
      v7 = *(i - 3);
      v9 = *(i - 2);
      v3 = *(i - 1);
      v6 = *i;
      v31 = *a3;

      result = sub_21CB10A3C(v7, v9);
      v33 = v31[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        break;
      }

      v8 = v32;
      if (v31[3] < v35)
      {
        sub_21C8D2D78(v35, 1);
        v36 = *a3;
        result = sub_21CB10A3C(v7, v9);
        if ((v8 & 1) != (v37 & 1))
        {
          goto LABEL_5;
        }
      }

      v38 = *a3;
      if (v8)
      {
        v28 = result;

        v29 = (v38[7] + 16 * v28);
        v30 = v29[1];
        *v29 = v3;
        v29[1] = v6;
      }

      else
      {
        v38[(result >> 6) + 8] |= 1 << result;
        v39 = (v38[6] + 16 * result);
        *v39 = v7;
        v39[1] = v9;
        v40 = (v38[7] + 16 * result);
        *v40 = v3;
        v40[1] = v6;
        v41 = v38[2];
        v14 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v38[2] = v42;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_21CA60D5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA60DC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = result;
  v31 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v33 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    if (*(a4 + 16))
    {
      v30 = v11 | (v5 << 6);
      v15 = 16 * v14;
      v16 = (*(a3 + 48) + 16 * v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(a3 + 56) + v15 + 8);
      v20 = *(a4 + 40);
      sub_21CB86484();

      sub_21CB854C4();
      v21 = sub_21CB864D4();
      v22 = -1 << *(a4 + 32);
      v23 = v21 & ~v22;
      if ((*(v33 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        v24 = ~v22;
        while (1)
        {
          v25 = (*(a4 + 48) + 16 * v23);
          v26 = *v25 == v17 && v25[1] == v18;
          if (v26 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v33 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
          return sub_21CA5FE6C(v29, a2, v31, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_21CA5FE6C(v29, a2, v31, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CA60FEC(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_21CA5FDD0(v13, v7, a1, a2);
      MEMORY[0x21CF16D90](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_21CA60DC4(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_21CA611AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21CA5E97C(a1, v4, v5, v6);
}

uint64_t sub_21CA61260(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = sub_21CB85C44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = &v34 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89C0, &qword_21CBADDB8);
  result = sub_21CB86204();
  v11 = 0;
  v39 = result;
  v40 = a1;
  v12 = *(a1 + 64);
  v34 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v42 = v4;
  v35 = result + 64;
  v36 = v4 + 32;
  v37 = v4 + 16;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v11 << 6);
      v21 = v40;
      v22 = v42;
      v23 = *(v42 + 72) * v20;
      v24 = v38;
      (*(v42 + 16))(v38, *(v40 + 48) + v23, v3);
      v25 = *(v21 + 56);
      v26 = v3;
      v46 = *(v25 + 8 * v20);
      v27 = *(v22 + 32);
      v27(v7, v24, v3);

      v28 = v44;
      sub_21CA5E17C(&v46, v41, &v45);
      v44 = v28;
      if (v28)
      {
        break;
      }

      *(v35 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v29 = v39;
      result = (v27)(*(v39 + 48) + v23, v7, v26);
      *(*(v29 + 56) + 8 * v20) = v45;
      v30 = *(v29 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_17;
      }

      result = v29;
      v3 = v26;
      *(result + 16) = v32;
      v15 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }

    v33 = v39;

    (*(v42 + 8))(v7, v3);

    return v33;
  }

  else
  {
LABEL_5:
    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        return result;
      }

      v19 = *(v34 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_21CA61554()
{
  result = qword_27CDF68B8;
  if (!qword_27CDF68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF68B8);
  }

  return result;
}

uint64_t sub_21CA615A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_21CA5986C(a1);
}

uint64_t sub_21CA615B4(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_21CA5992C(a1);
}

uint64_t sub_21CA615C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21CA61680()
{
  sub_21C72CDCC(319, &qword_27CDEBD50, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21CA618DC(319, &qword_27CDF68D8, &qword_27CDEB700, &unk_21CBA24F0, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_21C7210DC();
      if (v2 <= 0x3F)
      {
        sub_21CA618DC(319, &qword_27CDEC848, &unk_27CDEBE60, &unk_21CB9FF40, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_21C705CFC();
          if (v4 <= 0x3F)
          {
            sub_21C6EFE5C();
            if (v5 <= 0x3F)
            {
              sub_21CA61848();
              if (v6 <= 0x3F)
              {
                sub_21CA618DC(319, &qword_27CDEACF0, &qword_27CDEACF8, &unk_21CBC1FB0, type metadata accessor for PMDependency);
                if (v7 <= 0x3F)
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

void sub_21CA61848()
{
  if (!qword_27CDF68E0)
  {
    type metadata accessor for PMSignInWithAppleAccountDetailsModel();
    sub_21C7060A8(&qword_27CDF68E8, type metadata accessor for PMSignInWithAppleAccountDetailsModel);
    v0 = sub_21CB823D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF68E0);
    }
  }
}

void sub_21CA618DC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21CA61988@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v30[-v9];
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v12 = a2 + v11[6];
  v31 = 0;
  sub_21CB84D44();
  v13 = v33;
  *v12 = v32;
  *(v12 + 1) = v13;
  v14 = a2 + v11[7];
  v31 = 0;
  sub_21CB84D44();
  v15 = v33;
  *v14 = v32;
  *(v14 + 1) = v15;
  v16 = v11[8];
  v17 = type metadata accessor for PMAccount(0);
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  sub_21C6EDBAC(v10, v8, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21CB84D44();
  sub_21C6EA794(v10, &unk_27CDEBE60, &unk_21CB9FF40);
  v18 = v11[9];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v20 = (a2 + v18);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v32);

  type metadata accessor for PMAccountsState();
  sub_21C7060A8(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v21 = sub_21CB82674();
  v23 = v22;

  *v20 = v21;
  v20[1] = v23;
  v24 = (a2 + v11[10]);
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C7060A8(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  *v24 = sub_21CB823C4();
  v24[1] = v25;
  v26 = (a2 + v11[11]);
  type metadata accessor for PMSignInWithAppleAccountDetailsModel();
  sub_21C7060A8(&qword_27CDF68E8, type metadata accessor for PMSignInWithAppleAccountDetailsModel);
  *v26 = sub_21CB823C4();
  v26[1] = v27;
  v28 = v11[12];
  *(a2 + v28) = swift_getKeyPath();
  return sub_21CA6642C(a1, a2 + v11[5]);
}

uint64_t sub_21CA61D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a1;
  v61 = a2;
  v4 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v5 = (v4 - 8);
  v64 = *(v4 - 8);
  v63 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v62 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_21CB81024();
  v55 = *(v58 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v58);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v44 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6900, &unk_21CBC2048);
  v60 = *(v59 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  v65 = &v44 - v14;
  v15 = v5[7];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  v57 = v15;
  v17 = v16;
  v56 = v16;
  MEMORY[0x21CF14A20]();
  v18 = sub_21CA624B0(v12);
  v20 = v19;
  v51 = v19;
  sub_21C6EA794(v12, &qword_27CDEB700, &unk_21CBA24F0);
  v80 = v18;
  v81 = v20;
  v21 = v3 + v5[8];
  v22 = *v21;
  v23 = *(v21 + 8);
  v78 = v22;
  v79 = v23;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v48 = v69;
  v47 = v70;
  v49 = v71;
  MEMORY[0x21CF14A20](v17);
  v68 = v3;
  v67 = v3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6908, &qword_21CBC2058);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6910, &unk_21CBC2060);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
  v25 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v46 = sub_21C6EADEC(&qword_27CDF6918, &qword_27CDF6908, &qword_21CBC2058);
  v26 = sub_21C71F3FC();
  v27 = sub_21C6EADEC(&qword_27CDF6920, &qword_27CDF6910, &unk_21CBC2060);
  v50 = sub_21C7FC578();
  sub_21CB84714();

  sub_21C6EA794(v12, &qword_27CDEB700, &unk_21CBA24F0);

  v28 = v53;
  sub_21CB81014();
  v29 = sub_21CB81004();
  v31 = v30;
  (*(v55 + 8))(v28, v58);
  v80 = v29;
  v81 = v31;
  v32 = v3 + v5[9];
  v33 = *v32;
  v34 = *(v32 + 8);
  v78 = v33;
  v79 = v34;
  sub_21CB84D74();
  v66 = v3;
  v69 = v24;
  v70 = MEMORY[0x277D837D0];
  v71 = v44;
  v72 = v45;
  v73 = v25;
  v74 = v46;
  v75 = v26;
  v76 = v27;
  v77 = v50;
  swift_getOpaqueTypeConformance2();
  v35 = v59;
  v36 = v61;
  v37 = v65;
  sub_21CB84754();

  (*(v60 + 8))(v37, v35);
  v38 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6928, &unk_21CBC2070) + 36);
  MEMORY[0x21CF14A20](v56);
  v39 = v62;
  sub_21CA660E0(v3, v62, type metadata accessor for PMMoveAccountToGroupAlert);
  v40 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v41 = swift_allocObject();
  sub_21CA66148(v39, v41 + v40, type metadata accessor for PMMoveAccountToGroupAlert);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB708, &unk_21CBC2080);
  v43 = (v38 + *(result + 36));
  *v43 = sub_21CA65710;
  v43[1] = v41;
  return result;
}

uint64_t sub_21CA624B0(uint64_t a1)
{
  v2 = sub_21CB81024();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v38 - v8;
  v9 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for PMAccount(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  v39 = a1;
  sub_21C6EDBAC(a1, &v38 - v22, &qword_27CDEB700, &unk_21CBA24F0);
  v24 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v25 = *(*(v24 - 8) + 48);
  if (v25(v23, 1, v24) != 1)
  {
    sub_21CA660E0(v23, v16, type metadata accessor for PMAccount);
    sub_21C719720(v23, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
    sub_21CA660E0(&v16[*(v13 + 24)], v12, type metadata accessor for PMAccount.Storage);
    sub_21C719720(v16, type metadata accessor for PMAccount);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719720(v12, type metadata accessor for PMAccount.Storage);
      goto LABEL_5;
    }

    v27 = *v12;
    sub_21C6EDBAC(v39, v20, &qword_27CDEB700, &unk_21CBA24F0);
    if (v25(v20, 1, v24) == 1)
    {
      v28 = &qword_27CDEB700;
      v29 = &unk_21CBA24F0;
      v30 = v20;
    }

    else
    {
      v31 = v38;
      sub_21C6EDBAC(&v20[*(v24 + 24)], v38, &qword_27CDF7670, &unk_21CBAA8F0);
      sub_21C719720(v20, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
      v32 = type metadata accessor for PMSharingGroup();
      if ((*(*(v32 - 8) + 48))(v31, 1, v32) != 1)
      {
        v35 = (v31 + *(v32 + 20));
        v36 = *v35;
        v34 = v35[1];

        sub_21C719720(v31, type metadata accessor for PMSharingGroup);
        v33 = v36;
        goto LABEL_12;
      }

      v28 = &qword_27CDF7670;
      v29 = &unk_21CBAA8F0;
      v30 = v31;
    }

    sub_21C6EA794(v30, v28, v29);
    v33 = 0;
    v34 = 0;
LABEL_12:
    sub_21C7C1D78(v27, v33, v34);

    v26 = sub_21CB85594();

    return v26;
  }

  sub_21C6EA794(v23, &qword_27CDEB700, &unk_21CBA24F0);
LABEL_5:
  sub_21CB81014();
  v26 = sub_21CB81004();
  (*(v40 + 8))(v5, v41);
  return v26;
}

uint64_t sub_21CA629CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v95 = &v83 - v7;
  v8 = sub_21CB81024();
  v90 = *(v8 - 8);
  v91 = v8;
  v9 = *(v90 + 64);
  MEMORY[0x28223BE20](v8);
  v89 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v96 = *(v11 - 8);
  v97 = v11;
  v12 = *(v96 + 64);
  MEMORY[0x28223BE20](v11);
  v105 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v104 = &v83 - v15;
  v16 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v86 = *(v16 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v87 = v18;
  v88 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B70, &unk_21CBC2090);
  v93 = *(v19 - 8);
  v94 = v19;
  v20 = *(v93 + 64);
  MEMORY[0x28223BE20](v19);
  v92 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v103 = &v83 - v23;
  v24 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v99 = *(v24 - 8);
  v25 = *(v99 + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v100 = (&v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for PMChangePasswordOnWebsiteLink();
  v27 = *(v26 - 1);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for PMAccount.Storage(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (&v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0638, &qword_21CBAF088);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v102 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v83 - v39;
  v41 = a1;
  v42 = a1;
  v43 = a2;
  if ((sub_21CA63408(v42) & 1) == 0)
  {
    goto LABEL_6;
  }

  v44 = type metadata accessor for PMAccount(0);
  sub_21CA660E0(v41 + *(v44 + 24), v34, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719720(v34, type metadata accessor for PMAccount.Storage);
LABEL_6:
    v52 = 1;
    goto LABEL_7;
  }

  v45 = *v34;
  v46 = [v45 hasValidWebsite];

  if (!v46)
  {
    goto LABEL_6;
  }

  sub_21CA660E0(v41, &v30[v26[5]], type metadata accessor for PMAccount);
  v47 = v100;
  sub_21CA660E0(a2, v100, type metadata accessor for PMMoveAccountToGroupAlert);
  v48 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v49 = swift_allocObject();
  sub_21CA66148(v47, v49 + v48, type metadata accessor for PMMoveAccountToGroupAlert);
  *v30 = swift_getKeyPath();
  *(v30 + 1) = 0;
  v30[16] = 0;
  v50 = &v30[v26[7]];
  v51 = &v30[v26[9]];
  v30[v26[6]] = 0;
  *v50 = 0;
  *(v50 + 1) = 0;
  v30[v26[8]] = 0;
  *v51 = sub_21CA666DC;
  *(v51 + 1) = v49;
  sub_21CA66148(v30, v40, type metadata accessor for PMChangePasswordOnWebsiteLink);
  v52 = 0;
LABEL_7:
  v53 = *(v27 + 56);
  v101 = v40;
  v53(v40, v52, 1, v26);
  v85 = type metadata accessor for PMMoveAccountToGroupAlert;
  v84 = v43;
  v54 = v100;
  sub_21CA660E0(v43, v100, type metadata accessor for PMMoveAccountToGroupAlert);
  v55 = v88;
  sub_21CA660E0(v41, v88, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
  v56 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v57 = (v56 + v25 + *(v86 + 80)) & ~*(v86 + 80);
  v58 = swift_allocObject();
  sub_21CA66148(v54, v58 + v56, type metadata accessor for PMMoveAccountToGroupAlert);
  v59 = sub_21CA66148(v55, v58 + v57, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
  MEMORY[0x28223BE20](v59);
  *(&v83 - 2) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
  sub_21C7FC578();
  v60 = v103;
  sub_21CB84DA4();
  v61 = v89;
  sub_21CB81014();
  v62 = sub_21CB81004();
  v64 = v63;
  (*(v90 + 8))(v61, v91);
  v106 = v62;
  v107 = v64;
  v65 = v95;
  sub_21CB81EF4();
  v66 = sub_21CB81F14();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  sub_21CA660E0(v84, v54, v85);
  v67 = swift_allocObject();
  sub_21CA66148(v54, v67 + v56, type metadata accessor for PMMoveAccountToGroupAlert);
  sub_21C71F3FC();
  v68 = v104;
  sub_21CB84DC4();
  v69 = v102;
  sub_21C6EDBAC(v101, v102, &qword_27CDF0638, &qword_21CBAF088);
  v70 = v92;
  v71 = v93;
  v100 = *(v93 + 16);
  v72 = v94;
  (v100)(v92, v60, v94);
  v74 = v96;
  v73 = v97;
  v75 = *(v96 + 16);
  v75(v105, v68, v97);
  v76 = v98;
  sub_21C6EDBAC(v69, v98, &qword_27CDF0638, &qword_21CBAF088);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6938, &qword_21CBC20A0);
  (v100)(v76 + *(v77 + 48), v70, v72);
  v78 = v76 + *(v77 + 64);
  v79 = v105;
  v75(v78, v105, v73);
  v80 = *(v74 + 8);
  v80(v104, v73);
  v81 = *(v71 + 8);
  v81(v103, v72);
  sub_21C6EA794(v101, &qword_27CDF0638, &qword_21CBAF088);
  v80(v79, v73);
  v81(v70, v72);
  return sub_21C6EA794(v102, &qword_27CDF0638, &qword_21CBAF088);
}

uint64_t sub_21CA63408(uint64_t a1)
{
  v3 = type metadata accessor for PMAccount.Storage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_21CB85C44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  v19 = type metadata accessor for PMAccount(0);
  v20 = (a1 + *(v19 + 28));
  v21 = v20[1];
  if (!v21)
  {
    goto LABEL_8;
  }

  v57 = v11;
  v58 = v8;
  v59 = v7;
  v60 = v19;
  v22 = a1;
  v23 = *v20;
  v24 = v20[2];
  v25 = v20[3];

  if (([v25 issueTypes] & 1) == 0)
  {
    sub_21C7D33F0(v23, v21, v24, v25);
LABEL_8:
    v32 = 0;
    return v32 & 1;
  }

  v53 = v21;
  v54 = v24;
  v55 = v23;
  v56 = v25;
  v51 = v3;
  v52 = v6;
  v26 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v27 = v22;
  sub_21C6EDBAC(v22 + *(v26 + 20), v18, &qword_27CDF7670, &unk_21CBAA8F0);
  v28 = type metadata accessor for PMSharingGroup();
  v29 = *(*(v28 - 8) + 48);
  if (v29(v18, 1, v28) != 1)
  {
    sub_21C7D33F0(v55, v53, v54, v56);
    sub_21C6EA794(v18, &qword_27CDF7670, &unk_21CBAA8F0);
    goto LABEL_8;
  }

  sub_21C6EA794(v18, &qword_27CDF7670, &unk_21CBAA8F0);
  v50 = *(v1 + *(type metadata accessor for PMMoveAccountToGroupAlert(0) + 36) + 8);
  v30 = [objc_opt_self() sharedStore];
  sub_21C6EDBAC(v22 + *(v26 + 24), v15, &qword_27CDF7670, &unk_21CBAA8F0);
  if (v29(v15, 1, v28) == 1)
  {
    sub_21C6EA794(v15, &qword_27CDF7670, &unk_21CBAA8F0);
    v31 = 0;
  }

  else
  {
    v34 = v57;
    v35 = v58;
    v36 = v59;
    (*(v58 + 16))(v57, v15, v59);
    sub_21C719720(v15, type metadata accessor for PMSharingGroup);
    sub_21CB85B64();
    (*(v35 + 8))(v34, v36);
    v31 = sub_21CB85584();
  }

  v37 = v52;
  v38 = [v30 savedAccountsForGroupID_];

  sub_21C897E98();
  v39 = sub_21CB85824();
  sub_21CA660E0(v27 + *(v60 + 24), v37, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v42 = v55;
  v41 = v56;
  if (EnumCaseMultiPayload != 1)
  {

    v43 = *v37;
    v44 = v50;
    Strong = swift_unknownObjectWeakLoadStrong();
    v46 = v54;
    if (Strong)
    {
      v47 = *(v44 + 24);
      ObjectType = swift_getObjectType();
      LOBYTE(v47) = (*(v47 + 192))(v39, v43, ObjectType, v47);

      sub_21C7D33F0(v42, v53, v46, v41);
      swift_unknownObjectRelease();
      v32 = v47 ^ 1;
    }

    else
    {

      sub_21C7D33F0(v42, v53, v46, v41);
      v32 = 1;
    }

    return v32 & 1;
  }

  result = sub_21C719720(v37, type metadata accessor for PMAccount.Storage);
  __break(1u);
  return result;
}

uint64_t sub_21CA63918(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  if (*(a1 + *(v6 + 40)))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = 1;

    sub_21CB81DC4();
  }

  if (*(a1 + *(v6 + 44)))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = 1;

    sub_21CB81DC4();
  }

  v12 = sub_21CB858E4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21CA660E0(a1, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMMoveAccountToGroupAlert);
  sub_21CA660E0(v20, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
  sub_21CB858B4();
  v13 = sub_21CB858A4();
  v14 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v15 = (v7 + *(v21 + 80) + v14) & ~*(v21 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_21CA66148(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for PMMoveAccountToGroupAlert);
  sub_21CA66148(v5, v16 + v15, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
  sub_21C98B308(0, 0, v11, &unk_21CBC20E0, v16);
}

uint64_t sub_21CA63C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = type metadata accessor for PMAccount(0);
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();
  sub_21CB858B4();
  v5[15] = sub_21CB858A4();
  v13 = sub_21CB85874();
  v5[16] = v13;
  v5[17] = v12;

  return MEMORY[0x2822009F8](sub_21CA63E38, v13, v12);
}

uint64_t sub_21CA63E38()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  *(v0 + 144) = v5;
  v6 = *(v3 + *(v5 + 36) + 8);
  sub_21CA660E0(v4, v1, type metadata accessor for PMAccount);
  v7 = *(type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0) + 24);
  *(v0 + 192) = v7;
  sub_21C6EDBAC(v4 + v7, v2, &qword_27CDF7670, &unk_21CBAA8F0);
  v8 = type metadata accessor for PMSharingGroup();
  *(v0 + 152) = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  *(v0 + 160) = v10;
  *(v0 + 168) = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v11 = v10(v2, 1, v8);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  if (v11 == 1)
  {
    sub_21C6EA794(*(v0 + 80), &qword_27CDF7670, &unk_21CBAA8F0);
    v14 = sub_21CB85C44();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  else
  {
    v15 = sub_21CB85C44();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v12, v13, v15);
    sub_21C719720(v13, type metadata accessor for PMSharingGroup);
    (*(v16 + 56))(v12, 0, 1, v15);
  }

  v17 = swift_task_alloc();
  *(v0 + 176) = v17;
  *v17 = v0;
  v17[1] = sub_21CA640B0;
  v18 = *(v0 + 112);
  v19 = *(v0 + 88);

  return sub_21C835884(v18, v19, 1);
}

uint64_t sub_21CA640B0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 184) = v0;

  sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C719720(v4, type metadata accessor for PMAccount);
  v7 = *(v2 + 136);
  v8 = *(v2 + 128);
  if (v0)
  {
    v9 = sub_21CA643F0;
  }

  else
  {
    v9 = sub_21CA64250;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21CA64250()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 192);
  v5 = *(v0 + 120);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);

  sub_21C6EDBAC(v7 + v4, v6, &qword_27CDF7670, &unk_21CBAA8F0);
  LODWORD(v3) = v2(v6, 1, v3);
  sub_21C6EA794(v6, &qword_27CDF7670, &unk_21CBAA8F0);
  if (v3 != 1)
  {
    v8 = *(*(v0 + 40) + *(*(v0 + 144) + 48));
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v9 = sub_21C741948(v8, *(v0 + 32));

    if (v9)
    {
      sub_21C91C188();
    }
  }

  v10 = *(v0 + 112);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v15 = *(v0 + 56);
  sub_21CA645C8(*(v0 + 40));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_21CA643F0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);

  sub_21CA660E0(v8, v6, type metadata accessor for PMAccount);
  (*(v5 + 56))(v6, 0, 1, v4);
  v10 = *(v2 + 32);
  sub_21C6EDBAC(v6, v7, &unk_27CDEBE60, &unk_21CB9FF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
  sub_21CB84D64();
  sub_21C6EA794(v6, &unk_27CDEBE60, &unk_21CB9FF40);
  v11 = v9 + *(v2 + 28);
  v12 = *(v11 + 8);
  *(v0 + 16) = *v11;
  *(v0 + 24) = v12;
  *(v0 + 196) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();

  v13 = *(v0 + 112);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 56);
  sub_21CA645C8(*(v0 + 40));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21CA645C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-v7];
  v9 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  if (*(a1 + v9[10]))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13[14] = 0;

    sub_21CB81DC4();
  }

  if (*(a1 + v9[11]))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13[15] = 0;

    sub_21CB81DC4();
  }

  v10 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = v9[5];
  sub_21C6EDBAC(v8, v5, &qword_27CDEB700, &unk_21CBA24F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  sub_21CB84F34();
  return sub_21C6EA794(v8, &qword_27CDEB700, &unk_21CBA24F0);
}

double sub_21CA647B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  sub_21C6EDBAC(a1 + *(v13 + 24), v12, &qword_27CDF7670, &unk_21CBAA8F0);
  v14 = type metadata accessor for PMSharingGroup();
  LODWORD(a1) = (*(*(v14 - 8) + 48))(v12, 1, v14);
  sub_21C6EA794(v12, &qword_27CDF7670, &unk_21CBAA8F0);
  v15 = (v5 + 8);
  sub_21CB81014();
  v17 = sub_21CB81004();
  if (a1 == 1)
  {
    v18 = v16;
    (*v15)(v8, v4);
    *&v35 = v17;
    *(&v35 + 1) = v18;
    sub_21C71F3FC();
    v30 = sub_21CB84054();
    v31 = v19;
    v32 = v20 & 1;
    v33 = v21;
    v34 = 1;
  }

  else
  {
    v22 = v16;
    (*v15)(v8, v4);
    *&v35 = v17;
    *(&v35 + 1) = v22;
    sub_21C71F3FC();
    v30 = sub_21CB84054();
    v31 = v23;
    v32 = v24 & 1;
    v33 = v25;
    v34 = 0;
  }

  sub_21CB83494();
  result = *&v35;
  v27 = v36;
  v28 = v37;
  *a2 = v35;
  *(a2 + 16) = v27;
  *(a2 + 32) = v28;
  return result;
}

uint64_t sub_21CA64A8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *(type metadata accessor for PMMoveAccountToGroupAlert(0) + 20);
  sub_21C6EDBAC(v6, v3, &qword_27CDEB700, &unk_21CBA24F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  sub_21CB84F34();
  return sub_21C6EA794(v6, &qword_27CDEB700, &unk_21CBA24F0);
}

__n128 sub_21CA64BCC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CA64D0C(a1);
  v6 = v5;
  if ((sub_21CA63408(a1) & 1) != 0 && (v7 = a1 + *(type metadata accessor for PMAccount(0) + 28), *(v7 + 8)))
  {
    v8 = *(v7 + 24);

    v9 = [v8 localizedAlertWarningForSharingReusedPassword];
    v10 = sub_21CB855C4();
    v12 = v11;

    *&v14 = v10;
    *(&v14 + 1) = v12;
    sub_21C71F3FC();
    sub_21CB84054();
  }

  else
  {
    *&v14 = v4;
    *(&v14 + 1) = v6;
    sub_21C71F3FC();
    sub_21CB84054();
  }

  sub_21CB83494();
  result = v15;
  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_21CA64D0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = type metadata accessor for PMSharingGroup();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PMAccount.Storage(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for PMAccount(0);
  sub_21CA660E0(a1 + *(v21 + 24), v20, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = type metadata accessor for PMAccount.Storage;
    v23 = v20;
LABEL_3:
    sub_21C719720(v23, v22);
    return 0;
  }

  v25 = *v20;
  v26 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  sub_21C6EDBAC(a1 + *(v26 + 20), v11, &qword_27CDF7670, &unk_21CBAA8F0);
  v27 = *(v13 + 48);
  if (v27(v11, 1, v12) == 1)
  {
    sub_21C6EA794(v11, &qword_27CDF7670, &unk_21CBAA8F0);
    sub_21C6EDBAC(a1 + *(v26 + 24), v5, &qword_27CDF7670, &unk_21CBAA8F0);
    v28 = v27(v5, 1, v12);
    sub_21C6EA794(v5, &qword_27CDF7670, &unk_21CBAA8F0);
    if (v28 == 1)
    {

      return 0;
    }

    v38 = sub_21C7BFCA4(v25);

    return v38;
  }

  else
  {
    sub_21CA66148(v11, v16, type metadata accessor for PMSharingGroup);
    sub_21C6EDBAC(a1 + *(v26 + 24), v8, &qword_27CDF7670, &unk_21CBAA8F0);
    v29 = v27(v8, 1, v12);
    sub_21C6EA794(v8, &qword_27CDF7670, &unk_21CBAA8F0);
    if (v29 == 1)
    {
      v30 = [objc_opt_self() sharedProvider];
      sub_21CB85B64();
      v31 = sub_21CB85584();

      v32 = [v30 cachedGroupWithID_];

      if (!v32)
      {

        v22 = type metadata accessor for PMSharingGroup;
        v23 = v16;
        goto LABEL_3;
      }

      sub_21C7BD554(v25, v32);
      v34 = v33;
      v36 = v35;

      if (v36)
      {
        v37 = v34;
      }

      else
      {
        v37 = 0;
      }

      sub_21C719720(v16, type metadata accessor for PMSharingGroup);
      return v37;
    }

    else
    {
      v39 = sub_21C7BFE38(v25, *&v16[*(v12 + 20)], *&v16[*(v12 + 20) + 8]);

      sub_21C719720(v16, type metadata accessor for PMSharingGroup);
      return v39;
    }
  }
}

uint64_t sub_21CA65190@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v41 - v18;
  v20 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v21 = *(v20 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
  v43 = a1;
  sub_21CB84D54();
  if ((*(v12 + 48))(v19, 1, v11))
  {
    sub_21C6EA794(v19, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_5:
    v46 = 0;
    v22 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  sub_21CA660E0(v19, v15, type metadata accessor for PMAccount);
  sub_21C6EA794(v19, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21CA660E0(&v15[*(v11 + 24)], v10, type metadata accessor for PMAccount.Storage);
  sub_21C719720(v15, type metadata accessor for PMAccount);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719720(v10, type metadata accessor for PMAccount.Storage);
    goto LABEL_5;
  }

  v46 = *v10;
  v22 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  if (v46)
  {
    v38 = v46;
    MEMORY[0x21CF15300]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v40 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21CB85834();
    }

    sub_21CB85854();
    v22 = v44;
  }

LABEL_6:
  sub_21C6EA794(&v46, &qword_27CDF6930, &unk_21CBC3200);
  v23 = *(v20 + 20);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  MEMORY[0x21CF14A20](v24);
  v25 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  if ((*(*(v25 - 8) + 48))(v6, 1, v25) || (v26 = &v6[*(v25 + 24)], v27 = type metadata accessor for PMSharingGroup(), (*(*(v27 - 8) + 48))(v26, 1, v27)))
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v39 = &v26[*(v27 + 20)];
    v28 = *v39;
    v29 = v39[1];
  }

  sub_21C6EA794(v6, &qword_27CDEB700, &unk_21CBA24F0);
  v30 = sub_21C7C1BFC(v22, v28, v29);
  v32 = v31;

  v44 = v30;
  v45 = v32;
  sub_21C71F3FC();
  result = sub_21CB84054();
  v34 = v42;
  *v42 = result;
  v34[1] = v35;
  *(v34 + 16) = v36 & 1;
  v34[3] = v37;
  return result;
}

uint64_t sub_21CA65630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  if (result != 1)
  {
    v6 = (a2 + *(type metadata accessor for PMMoveAccountToGroupAlert(0) + 24));
    v7 = *v6;
    v8 = *(v6 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    return sub_21CB84D64();
  }

  return result;
}

double sub_21CA65700@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  *&result = sub_21CA64BCC(a1, a2).n128_u64[0];
  return result;
}

uint64_t sub_21CA65710(uint64_t a1)
{
  v3 = *(type metadata accessor for PMMoveAccountToGroupAlert(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CA65630(a1, v4);
}

uint64_t sub_21CA65780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C6EDBAC(a1, v9, &qword_27CDF68C0, &qword_21CBC1F78);
  sub_21CA61988(v9, v13);
  MEMORY[0x21CF14400](v13, a2, v10, a3);
  return sub_21C719720(v13, type metadata accessor for PMMoveAccountToGroupAlert);
}

uint64_t sub_21CA65914(void *a1, void *a2)
{
  v4 = type metadata accessor for PMSharingGroup();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6940, &qword_21CBC2180);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - v23;
  if (!static PMAccount.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v66 = v21;
  v67 = v14;
  v62 = v8;
  v25 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v68 = v4;
  v63 = v25;
  v64 = a1;
  v26 = *(v25 + 20);
  v27 = *(v18 + 48);
  sub_21C6EDBAC(a1 + v26, v24, &qword_27CDF7670, &unk_21CBAA8F0);
  v65 = a2;
  v28 = a2 + v26;
  v29 = v68;
  sub_21C6EDBAC(v28, &v24[v27], &qword_27CDF7670, &unk_21CBAA8F0);
  v30 = *(v5 + 48);
  if (v30(v24, 1, v29) == 1)
  {
    if (v30(&v24[v27], 1, v29) == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_21C6EDBAC(v24, v17, &qword_27CDF7670, &unk_21CBAA8F0);
  if (v30(&v24[v27], 1, v29) == 1)
  {
    sub_21C719720(v17, type metadata accessor for PMSharingGroup);
LABEL_9:
    v36 = &qword_27CDF6940;
    v37 = &qword_21CBC2180;
LABEL_26:
    v40 = v24;
    goto LABEL_27;
  }

  v38 = v69;
  sub_21CA66148(&v24[v27], v69, type metadata accessor for PMSharingGroup);
  sub_21CB85C44();
  sub_21C7060A8(&qword_27CDECD58, MEMORY[0x277D49978]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v72 == v70 && v73 == v71)
  {
  }

  else
  {
    v41 = sub_21CB86344();

    if ((v41 & 1) == 0)
    {
LABEL_25:
      sub_21C719720(v38, type metadata accessor for PMSharingGroup);
      sub_21C719720(v17, type metadata accessor for PMSharingGroup);
      v36 = &qword_27CDF7670;
      v37 = &unk_21CBAA8F0;
      goto LABEL_26;
    }
  }

  v42 = v29[5];
  v43 = *&v17[v42];
  v44 = *&v17[v42 + 8];
  v45 = (v38 + v42);
  if ((v43 != *v45 || v44 != v45[1]) && (sub_21CB86344() & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((sub_21C967680(*&v17[v29[6]], *(v38 + v29[6])) & 1) == 0)
  {
    goto LABEL_25;
  }

  v46 = v29[7];
  v47 = *&v17[v46];
  v48 = *&v17[v46 + 8];
  v49 = (v38 + v46);
  if ((v47 != *v49 || v48 != v49[1]) && (sub_21CB86344() & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_21C719720(v38, type metadata accessor for PMSharingGroup);
  sub_21C719720(v17, type metadata accessor for PMSharingGroup);
LABEL_4:
  sub_21C6EA794(v24, &qword_27CDF7670, &unk_21CBAA8F0);
  v31 = *(v63 + 24);
  v32 = *(v18 + 48);
  v33 = v29;
  v34 = v66;
  sub_21C6EDBAC(v64 + v31, v66, &qword_27CDF7670, &unk_21CBAA8F0);
  sub_21C6EDBAC(v65 + v31, v34 + v32, &qword_27CDF7670, &unk_21CBAA8F0);
  if (v30(v34, 1, v33) == 1)
  {
    if (v30((v34 + v32), 1, v33) == 1)
    {
LABEL_6:
      sub_21C6EA794(v34, &qword_27CDF7670, &unk_21CBAA8F0);
      return 1;
    }

    goto LABEL_15;
  }

  v39 = v67;
  sub_21C6EDBAC(v34, v67, &qword_27CDF7670, &unk_21CBAA8F0);
  if (v30((v34 + v32), 1, v33) != 1)
  {
    v50 = v62;
    sub_21CA66148(v34 + v32, v62, type metadata accessor for PMSharingGroup);
    sub_21CB85C44();
    sub_21C7060A8(&qword_27CDECD58, MEMORY[0x277D49978]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v72 == v70 && v73 == v71)
    {
    }

    else
    {
      v51 = sub_21CB86344();

      if ((v51 & 1) == 0)
      {
LABEL_41:
        sub_21C719720(v50, type metadata accessor for PMSharingGroup);
        sub_21C719720(v67, type metadata accessor for PMSharingGroup);
        v36 = &qword_27CDF7670;
        v37 = &unk_21CBAA8F0;
        v40 = v34;
        goto LABEL_27;
      }
    }

    v52 = v68[5];
    v53 = &v67[v52];
    v54 = *&v67[v52];
    v55 = *&v67[v52 + 8];
    v56 = (v50 + v52);
    if (*v53 == *v56 && v55 == v56[1] || (sub_21CB86344()) && (sub_21C967680(*&v67[v68[6]], *(v50 + v68[6])))
    {
      if (v57 = v68[7], v58 = &v67[v57], v59 = *&v67[v57], v60 = *&v67[v57 + 8], v61 = (v50 + v57), *v58 == *v61) && v60 == v61[1] || (sub_21CB86344())
      {
        sub_21C719720(v50, type metadata accessor for PMSharingGroup);
        sub_21C719720(v67, type metadata accessor for PMSharingGroup);
        goto LABEL_6;
      }
    }

    goto LABEL_41;
  }

  sub_21C719720(v39, type metadata accessor for PMSharingGroup);
LABEL_15:
  v36 = &qword_27CDF6940;
  v37 = &qword_21CBC2180;
  v40 = v34;
LABEL_27:
  sub_21C6EA794(v40, v36, v37);
  return 0;
}

uint64_t sub_21CA660E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA66148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA661B0()
{
  v1 = *(type metadata accessor for PMMoveAccountToGroupAlert(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21CA63918(v0 + v2, v5);
}

uint64_t sub_21CA662DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMMoveAccountToGroupAlert(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21C702EFC;

  return sub_21CA63C84(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_21CA6642C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CA6649C()
{
  result = qword_27CDF6948;
  if (!qword_27CDF6948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6928, &unk_21CBC2070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6900, &unk_21CBC2048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6908, &qword_21CBC2058);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6910, &unk_21CBC2060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC150, &unk_21CBA4F60);
    type metadata accessor for PMMoveAccountToGroupAlert.Configuration(255);
    sub_21C6EADEC(&qword_27CDF6918, &qword_27CDF6908, &qword_21CBC2058);
    sub_21C71F3FC();
    sub_21C6EADEC(&qword_27CDF6920, &qword_27CDF6910, &unk_21CBC2060);
    sub_21C7FC578();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEB780, &qword_27CDEB708, &unk_21CBC2080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6948);
  }

  return result;
}

void sub_21CA66728()
{
  type metadata accessor for PMAccount(319);
  if (v0 <= 0x3F)
  {
    sub_21C705CFC();
    if (v1 <= 0x3F)
    {
      sub_21C70640C();
      if (v2 <= 0x3F)
      {
        sub_21C72CC94(319, &qword_27CDF6960, type metadata accessor for PMMoveAccountToGroupPicker.Selection, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_21C72CC94(319, &qword_27CDF6968, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_21CA668D8();
            if (v5 <= 0x3F)
            {
              sub_21C7210DC();
              if (v6 <= 0x3F)
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

void sub_21CA668D8()
{
  if (!qword_27CDF6970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF6970);
    }
  }
}

void sub_21CA6693C()
{
  type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(319);
  if (v0 <= 0x3F)
  {
    sub_21C72CC94(319, &qword_27CDF6988, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_21CA66A30()
{
  sub_21C72CC94(319, &qword_27CDEABC0, MEMORY[0x277D49978], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_21CA66AB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a2;
  v38 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6C0, &qword_21CBA2490);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v39 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB728, &unk_21CBA2510);
  v34 = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - v19;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  sub_21CB84F44();

  sub_21C6EDBAC(v16, v14, &qword_27CDF68C0, &qword_21CBC1F78);
  sub_21CA61988(v14, &v20[*(v17 + 36)]);
  sub_21C6EA794(v16, &qword_27CDF68C0, &qword_21CBC1F78);
  v21 = v33;
  sub_21C6EDBAC(v33, v20, &qword_27CDEB6C0, &qword_21CBA2490);
  swift_getKeyPath();
  sub_21CB84F44();

  v22 = swift_allocObject();
  v23 = v37;
  *(v22 + 16) = a1;
  *(v22 + 24) = v23;
  v24 = v21;
  v25 = v35;
  sub_21C6EDBAC(v24, v35, &qword_27CDEB6C0, &qword_21CBA2490);
  v26 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v27 = (v5 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_21C716934(v25, v28 + v26, &qword_27CDEB6C0, &qword_21CBA2490);
  v29 = (v28 + v27);
  *v29 = a1;
  v29[1] = v23;
  sub_21C71DD5C(a1);
  sub_21C71DD5C(a1);
  type metadata accessor for PMAccount(0);
  type metadata accessor for PMNewGroupFlow(0);
  sub_21C7D9E6C();
  sub_21C7060F0(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  sub_21C7060F0(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
  v30 = v39;
  sub_21CB847C4();

  sub_21C6EA794(v30, &qword_27CDEB1E8, &qword_21CBA13A0);
  return sub_21C6EA794(v20, &qword_27CDEB728, &unk_21CBA2510);
}

uint64_t sub_21CA66F38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v46 = a1;
  v47 = a2;
  v48 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69D0, &qword_21CBC2368);
  v38 = *(v3 - 8);
  v4 = v38;
  v39 = v3;
  v45 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69E0, &qword_21CBC2378);
  v43 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  sub_21CB84F44();

  sub_21C6EDBAC(v15, v12, &qword_27CDF68C0, &qword_21CBC1F78);
  v20 = *(v16 + 36);
  v41 = v19;
  sub_21CA61988(v12, &v19[v20]);
  sub_21C6EA794(v15, &qword_27CDF68C0, &qword_21CBC1F78);
  v21 = *(v4 + 16);
  v22 = v19;
  v23 = v42;
  v24 = v39;
  v21(v22, v42, v39);
  swift_getKeyPath();
  sub_21CB84F44();

  v25 = swift_allocObject();
  v27 = v46;
  v26 = v47;
  *(v25 + 16) = v46;
  *(v25 + 24) = v26;
  v28 = v44;
  v21(v44, v23, v24);
  v29 = v38;
  v30 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v31 = (v45 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v29 + 32))(v32 + v30, v28, v24);
  v33 = (v32 + v31);
  *v33 = v27;
  v33[1] = v26;
  sub_21C71DD5C(v27);
  sub_21C71DD5C(v27);
  type metadata accessor for PMAccount(0);
  type metadata accessor for PMNewGroupFlow(0);
  sub_21CA6EDD4();
  sub_21C7060F0(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  sub_21C7060F0(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
  v34 = v40;
  v35 = v41;
  sub_21CB847C4();

  sub_21C6EA794(v34, &qword_27CDEB1E8, &qword_21CBA13A0);
  return sub_21C6EA794(v35, &qword_27CDF69E0, &qword_21CBC2378);
}

uint64_t sub_21CA673E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a2;
  v40 = a3;
  v44 = a6;
  v35 = *(a4 - 8);
  v38 = *(v35 + 64);
  MEMORY[0x28223BE20](a1);
  v36 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v37 = v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v34 - v15;
  type metadata accessor for PMMoveAccountToGroupAlert(255);
  v41 = sub_21CB828F4();
  v43 = *(v41 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v42 = v34 - v18;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  sub_21CB84F44();

  v19 = v6;
  sub_21CA65780(v16, a4, a5);
  sub_21C6EA794(v16, &qword_27CDF68C0, &qword_21CBC1F78);
  swift_getKeyPath();
  sub_21CB84F44();

  v20 = swift_allocObject();
  v34[1] = v20;
  v21 = v39;
  v22 = v40;
  *(v20 + 16) = v39;
  *(v20 + 24) = v22;
  v23 = v35;
  v24 = v36;
  (*(v35 + 16))(v36, v19, a4);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = (v38 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  (*(v23 + 32))(v27 + v25, v24, a4);
  v28 = (v27 + v26);
  *v28 = v21;
  v28[1] = v22;
  sub_21C71DD5C(v21);
  sub_21C71DD5C(v21);
  type metadata accessor for PMAccount(0);
  type metadata accessor for PMNewGroupFlow(0);
  v29 = sub_21C7060F0(&qword_27CDEB768, type metadata accessor for PMMoveAccountToGroupAlert);
  v45 = a5;
  v46 = v29;
  v30 = v41;
  swift_getWitnessTable();
  sub_21C7060F0(&qword_27CDEB2C8, type metadata accessor for PMAccount);
  sub_21C7060F0(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
  v31 = v37;
  v32 = v42;
  sub_21CB847C4();

  sub_21C6EA794(v31, &qword_27CDEB1E8, &qword_21CBA13A0);
  return (*(v43 + 8))(v32, v30);
}

uint64_t sub_21CA678BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA6F9A4(v2, v11, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_21CA70198(v11, a1, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  }

  sub_21C716934(v11, v7, &qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x21CF14A20](v4);
  return sub_21C6EA794(v7, &qword_27CDEB6B8, &qword_21CBA2488);
}

uint64_t sub_21CA67A30(uint64_t a1)
{
  v3 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  v11 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA6F9A4(v1, v14, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C716934(v14, v10, &qword_27CDEB6B8, &qword_21CBA2488);
    sub_21CA6F9A4(a1, v6, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
    sub_21CB84F34();
    sub_21CA70138(a1, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
    return sub_21C6EA794(v10, &qword_27CDEB6B8, &qword_21CBA2488);
  }

  else
  {
    sub_21CA70138(v1, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
    sub_21CA70198(a1, v1, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
    swift_storeEnumTagMultiPayload();
    return sub_21CA70138(v14, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  }
}

uint64_t sub_21CA67C64()
{
  v1 = sub_21CB85C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA6F9A4(v0, v17, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v18 = (*(v7 + 48))(v17, 2, v6);
  if (v18)
  {
    if (v18 == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    return MEMORY[0x21CF15F90](v19);
  }

  else
  {
    sub_21C716934(v17, v13, &unk_27CDF20B0, &unk_21CBA0090);
    MEMORY[0x21CF15F90](0);
    sub_21C6EDBAC(v13, v10, &unk_27CDF20B0, &unk_21CBA0090);
    if ((*(v2 + 48))(v10, 1, v1) == 1)
    {
      sub_21CB864A4();
    }

    else
    {
      (*(v2 + 32))(v5, v10, v1);
      sub_21CB864A4();
      sub_21C7060F0(&qword_27CDF8950, MEMORY[0x277D49978]);
      sub_21CB85494();
      (*(v2 + 8))(v5, v1);
    }

    return sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
  }
}

uint64_t sub_21CA67F7C()
{
  sub_21CB86484();
  sub_21CA67C64();
  return sub_21CB864D4();
}

uint64_t sub_21CA67FC0()
{
  sub_21CB86484();
  sub_21CA67C64();
  return sub_21CB864D4();
}

uint64_t sub_21CA68064()
{
  v0 = *(type metadata accessor for PMMoveAccountToGroupPicker(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
  return sub_21CB84D54();
}

uint64_t sub_21CA680BC(uint64_t a1)
{
  v2 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for PMMoveAccountToGroupPicker(0) + 40);
  sub_21CA6F9A4(a1, v5, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
  sub_21CB84D64();
  return sub_21CA6818C(a1);
}

uint64_t sub_21CA6818C(uint64_t a1)
{
  v2 = v1;
  v70 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  v3 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v57 - v4;
  v67 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v5 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v57 - v8;
  v61 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  v9 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v62 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = &v57 - v15;
  v16 = type metadata accessor for PMAccount.MockData(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PMAccount.Storage(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v68 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v57 - v29;
  v31 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v57 - v36;
  v60 = type metadata accessor for PMAccount(0);
  v38 = *(v60 + 24);
  v69 = v2;
  sub_21CA6F9A4(v2 + v38, v23, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CA70198(v23, v19, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v19[*(v16 + 72)], v30, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA70138(v19, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v39 = *v23;
    sub_21CB85B94();
  }

  sub_21C716934(v30, v37, &unk_27CDF20B0, &unk_21CBA0090);
  (*(v25 + 56))(v37, 0, 2, v24);
  v40 = v70;
  v41 = sub_21CA72AC4(v70, v37);
  result = sub_21CA70138(v37, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  if ((v41 & 1) == 0)
  {
    sub_21CA6F9A4(v40, v34, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    v43 = (*(v25 + 48))(v34, 2, v24);
    if (v43)
    {
      if (v43 == 1)
      {
        v44 = sub_21CB85C44();
        v45 = v68;
        (*(*(v44 - 8) + 56))(v68, 1, 1, v44);
        sub_21CA6E3B8(v45);
        return sub_21C6EA794(v45, &unk_27CDF20B0, &unk_21CBA0090);
      }

      else
      {
        v48 = v63;
        sub_21CA6F9A4(v69, v63, type metadata accessor for PMAccount);
        (*(*(v60 - 8) + 56))(v48, 0, 1);
        v49 = *(type metadata accessor for PMMoveAccountToGroupPicker(0) + 44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
        v50 = v64;
        sub_21CB84D54();
        v51 = v62;
        sub_21CA6F9A4(v50, v62, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v52 = v51;
          v53 = v58;
          sub_21C716934(v52, v58, &qword_27CDEB6B8, &qword_21CBA2488);
          v54 = v65;
          MEMORY[0x21CF14A20](v59);
          sub_21C6EA794(v53, &qword_27CDEB6B8, &qword_21CBA2488);
        }

        else
        {
          v54 = v65;
          sub_21CA70198(v51, v65, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
        }

        v56 = v66;
        v55 = v67;
        sub_21CA70198(v54, v66, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
        sub_21C7D3344(v48, v56 + *(v55 + 20), &unk_27CDEBE60, &unk_21CB9FF40);
        sub_21CA67A30(v56);
        return sub_21CB84D64();
      }
    }

    else
    {
      v46 = v34;
      v47 = v68;
      sub_21C716934(v46, v68, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CA6E3B8(v47);
      return sub_21C6EA794(v47, &unk_27CDF20B0, &unk_21CBA0090);
    }
  }

  return result;
}

uint64_t sub_21CA688D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69C0, &unk_21CBC2350);
  v3 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v71 = &v61 - v4;
  v5 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v6 = v5 - 8;
  v61 = *(v5 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69C8, &qword_21CBC2360);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69D0, &qword_21CBC2368);
  v67 = *(v70 - 8);
  v15 = *(v67 + 64);
  MEMORY[0x28223BE20](v70);
  v17 = &v61 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69D8, &qword_21CBC2370);
  v65 = *(v69 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x28223BE20](v69);
  v64 = &v61 - v19;
  v20 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v6 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
  sub_21CB84D54();
  v68 = v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = v17;
  sub_21CA69144(v17);
  if (EnumCaseMultiPayload == 1)
  {
    v27 = v67;
    v28 = v70;
    (*(v67 + 16))(v71, v17, v70);
    swift_storeEnumTagMultiPayload();
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69E0, &qword_21CBC2378);
    v30 = type metadata accessor for PMAccount(255);
    v31 = type metadata accessor for PMNewGroupFlow(255);
    v32 = sub_21CA6EDD4();
    v33 = sub_21C7060F0(&qword_27CDEB2C8, type metadata accessor for PMAccount);
    v34 = sub_21C7060F0(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
    v73 = v29;
    v74 = v30;
    v75 = v31;
    v76 = v32;
    v77 = v33;
    v78 = v34;
    swift_getOpaqueTypeConformance2();
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69F0, &unk_21CBC2380);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA5B8, &qword_21CB9E6B8);
    v38 = sub_21CA6EF34();
    v73 = v37;
    v74 = v38;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = sub_21CA6F154();
    v73 = v35;
    v74 = v36;
    v75 = OpaqueTypeConformance2;
    v76 = v40;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v27 + 8))(v26, v28);
  }

  else
  {
    sub_21CB84D74();
    swift_getKeyPath();
    v41 = v63;
    sub_21CB84F44();

    sub_21C6EA794(v14, &qword_27CDF69C8, &qword_21CBC2360);
    v42 = v62;
    sub_21CA6F9A4(v2, v62, type metadata accessor for PMMoveAccountToGroupPicker);
    v43 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v44 = swift_allocObject();
    sub_21CA70198(v42, v44 + v43, type metadata accessor for PMMoveAccountToGroupPicker);
    v45 = v64;
    sub_21CA66F38(sub_21CA6F1D0, v44, v64);

    sub_21C6EA794(v41, &qword_27CDEB6B8, &qword_21CBA2488);
    (*(v67 + 8))(v26, v70);
    v46 = v65;
    v47 = v69;
    (*(v65 + 16))(v71, v45, v69);
    swift_storeEnumTagMultiPayload();
    v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69E0, &qword_21CBC2378);
    v49 = type metadata accessor for PMAccount(255);
    v50 = type metadata accessor for PMNewGroupFlow(255);
    v51 = sub_21CA6EDD4();
    v52 = sub_21C7060F0(&qword_27CDEB2C8, type metadata accessor for PMAccount);
    v53 = sub_21C7060F0(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
    v73 = v48;
    v74 = v49;
    v75 = v50;
    v76 = v51;
    v77 = v52;
    v78 = v53;
    swift_getOpaqueTypeConformance2();
    v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69F0, &unk_21CBC2380);
    v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA5B8, &qword_21CB9E6B8);
    v57 = sub_21CA6EF34();
    v73 = v56;
    v74 = v57;
    v58 = swift_getOpaqueTypeConformance2();
    v59 = sub_21CA6F154();
    v73 = v54;
    v74 = v55;
    v75 = v58;
    v76 = v59;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v46 + 8))(v45, v47);
  }

  return sub_21CA70138(v68, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
}

uint64_t sub_21CA69144@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69F0, &unk_21CBC2380);
  v114 = *(v115 - 8);
  v2 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v112 = v104 - v3;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA5B8, &qword_21CB9E6B8);
  v4 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = v104 - v5;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A08, &qword_21CBC2390);
  v6 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v119 = (v104 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A18, L"N\a©");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = (v104 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A38, &qword_21CBC2510);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v107 = v104 - v13;
  v120 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v14 = *(v120 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v120);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_21CA6F9A4(v1, v104 - v16, type metadata accessor for PMMoveAccountToGroupPicker);
  v17 = sub_21CB858B4();
  v18 = sub_21CB858A4();
  v19 = *(v14 + 80);
  v108 = ~v19;
  v20 = (v19 + 32) & ~v19;
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v18;
  *(v21 + 24) = v22;
  v23 = sub_21CA70198(v104 - v16, v21 + v20, type metadata accessor for PMMoveAccountToGroupPicker);
  MEMORY[0x28223BE20](v23);
  v24 = v104 - v16;
  v25 = v123;
  sub_21CA6F9A4(v123, v24, type metadata accessor for PMMoveAccountToGroupPicker);
  v110 = v17;
  v26 = sub_21CB858A4();
  v118 = v15;
  v117 = v19;
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v22;
  v111 = v20;
  sub_21CA70198(v24, v27 + v20, type metadata accessor for PMMoveAccountToGroupPicker);
  type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  sub_21CB84F64();
  v126 = v25;
  v125 = v25;
  v124 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A40, L"6\a3");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A48, L"b\aw");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A50, &qword_21CBC2528);
  sub_21CA72588();
  sub_21C7060F0(&qword_27CDF6A80, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  sub_21C6EADEC(&qword_27CDF6A88, &qword_27CDF6A48, L"b\aw");
  sub_21CA7277C();
  sub_21CB84E34();
  v28 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v30 = v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v120 + 44);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
  v106 = v31;
  v105 = v32;
  sub_21CB84D54();
  v107 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v33 = *(*(v107 - 1) + 64);
  MEMORY[0x28223BE20](v107);
  v34 = v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = v104 - v36;
  MEMORY[0x28223BE20](v38);
  sub_21CA6F9A4(v30, v30, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  v104[2] = v28;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
    v104[1] = v104;
    v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v39);
    v42 = v104 - v41;
    sub_21C716934(v30, v104 - v41, &qword_27CDEB6B8, &qword_21CBA2488);
    MEMORY[0x21CF14A20](v39);
    sub_21C6EA794(v42, &qword_27CDEB6B8, &qword_21CBA2488);
    sub_21CA70138(v30, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  }

  else
  {
    sub_21CA70138(v30, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
    sub_21CA70198(v30, v37, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  }

  sub_21CA70198(v37, v34, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v43 = v119;
  v44 = v119 + *(v109 + 36);
  sub_21C6EDBAC(v34, v44, &qword_27CDEB700, &unk_21CBA24F0);
  v45 = sub_21CA70138(v34, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v46 = v118;
  MEMORY[0x28223BE20](v45);
  v47 = v104 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA6F9A4(v123, v47, type metadata accessor for PMMoveAccountToGroupPicker);
  v48 = (v117 + 16) & v108;
  v49 = swift_allocObject();
  v109 = v48;
  sub_21CA70198(v47, v49 + v48, type metadata accessor for PMMoveAccountToGroupPicker);
  v50 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB708, &unk_21CBC2080) + 36));
  *v50 = sub_21CA72944;
  v50[1] = v49;
  v51 = sub_21C716934(v116, v43, &qword_27CDF6A18, L"N\a©");
  v116 = v104;
  MEMORY[0x28223BE20](v51);
  v52 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v53 = v104 - v52;
  v54 = sub_21CB84D54();
  v108 = v104;
  MEMORY[0x28223BE20](v54);
  v55 = v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v58 = v104 - v57;
  MEMORY[0x28223BE20](v59);
  v60 = v104 - v52;
  sub_21CA6F9A4(v104 - v52, v104 - v52, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = v121;
  if (EnumCaseMultiPayload == 1)
  {
    v106 = v104;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
    v105 = v104;
    v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v63);
    v66 = v104 - v65;
    sub_21C716934(v60, v104 - v65, &qword_27CDEB6B8, &qword_21CBA2488);
    MEMORY[0x21CF14A20](v63);
    sub_21C6EA794(v66, &qword_27CDEB6B8, &qword_21CBA2488);
    sub_21CA70138(v53, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  }

  else
  {
    sub_21CA70138(v104 - v52, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
    sub_21CA70198(v104 - v52, v58, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  }

  sub_21CA70198(v58, v55, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v67 = v62 + *(v122 + 36);
  sub_21C6EDBAC(&v55[*(v107 + 5)], v67, &unk_27CDEBE60, &unk_21CB9FF40);
  v68 = sub_21CA70138(v55, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v107 = v104;
  v69 = v118;
  MEMORY[0x28223BE20](v68);
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = v123;
  sub_21CA6F9A4(v123, v104 - v70, type metadata accessor for PMMoveAccountToGroupPicker);
  v72 = v109;
  v73 = swift_allocObject();
  sub_21CA70198(v104 - v70, v73 + v72, type metadata accessor for PMMoveAccountToGroupPicker);
  v74 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6F8, &qword_21CBC23B0) + 36));
  *v74 = sub_21CA7295C;
  v74[1] = v73;
  v75 = sub_21C716934(v119, v62, &qword_27CDF6A08, &qword_21CBC2390);
  v119 = v104;
  MEMORY[0x28223BE20](v75);
  sub_21CA6F9A4(v71, v104 - v70, type metadata accessor for PMMoveAccountToGroupPicker);
  v76 = sub_21CB858A4();
  v77 = v111;
  v78 = swift_allocObject();
  *(v78 + 16) = v76;
  *(v78 + 24) = MEMORY[0x277D85700];
  sub_21CA70198(v104 - v70, v78 + v77, type metadata accessor for PMMoveAccountToGroupPicker);
  v79 = sub_21CB858E4();
  v80 = *(v79 - 8);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
  v83 = v104 - v82;
  sub_21CB858C4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v117 = sub_21CB827C4();
    v118 = v104;
    v116 = *(v117 - 8);
    v84 = v116[8];
    MEMORY[0x28223BE20](v117);
    v111 = v79;
    v86 = v104 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
    v128 = 0;
    v129 = 0xE000000000000000;
    sub_21CB86094();

    v128 = 0xD00000000000003FLL;
    v129 = 0x800000021CB99270;
    v127 = 143;
    v87 = sub_21CB862F4();
    MEMORY[0x21CF151F0](v87);

    v89 = MEMORY[0x28223BE20](v88);
    v90 = v104 - v82;
    v91 = v104 - v82;
    v92 = v111;
    (*(v80 + 16))(v90, v91, v111, v89);
    sub_21CB827B4();
    (*(v80 + 8))(v83, v92);
    v93 = v112;
    sub_21C716934(v121, v112, &qword_27CDEA5B8, &qword_21CB9E6B8);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA5C0, &qword_21CB9E6C0);
    (v116[4])(v93 + *(v94 + 36), v86, v117);
  }

  else
  {
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA5C8, &qword_21CB9E6C8);
    v93 = v112;
    v96 = (v112 + *(v95 + 36));
    v97 = sub_21CB824F4();
    (*(v80 + 32))(&v96[*(v97 + 20)], v83, v79);
    *v96 = &unk_21CBC2550;
    *(v96 + 1) = v78;
    sub_21C716934(v121, v93, &qword_27CDEA5B8, &qword_21CB9E6B8);
  }

  v98 = (v123 + *(v120 + 48));
  v100 = *v98;
  v99 = v98[1];
  v128 = v100;
  v129 = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AA8, &unk_21CBC2560);
  sub_21CB84D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D0, &unk_21CBA25B0);
  v101 = sub_21CA6EF34();
  v128 = v122;
  v129 = v101;
  swift_getOpaqueTypeConformance2();
  sub_21CA6F154();
  v102 = v115;
  sub_21CB84934();

  return (*(v114 + 8))(v93, v102);
}

uint64_t sub_21CA6A2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA6F9A4(a1, v11, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_21CA70198(v11, a2, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  }

  sub_21C716934(v11, v7, &qword_27CDEB6B8, &qword_21CBA2488);
  MEMORY[0x21CF14A20](v4);
  return sub_21C6EA794(v7, &qword_27CDEB6B8, &qword_21CBA2488);
}

uint64_t sub_21CA6A44C(uint64_t a1)
{
  v2 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA6F9A4(a1, v5, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  return sub_21CA67A30(v5);
}

uint64_t sub_21CA6A4E8(char a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for PMMoveAccountToGroupPicker(0) + 32) + 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    v5 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 64))(ObjectType, v5);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v7 = *(v3 + 24);
    v8 = swift_getObjectType();
    (*(v7 + 72))(v8, v7);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_21CA6A5B0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AC8, &qword_21CBC2618);
  v58 = *(v60 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v55 = &v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AD0, &qword_21CBC2620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v54 - v9;
  v54 = sub_21CB81024();
  v10 = *(v54 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v54);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AD8, &unk_21CBC2628);
  v14 = *(v56 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v56);
  v57 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v63 = &v54 - v18;
  v19 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - v24;
  v26 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v27 = *(v26 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
  sub_21CB84D54();
  v28 = sub_21CB85C44();
  (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v29 - 8) + 56))(v22, 0, 2, v29);
  v30 = sub_21CA72AC4(v25, v22);
  sub_21CA70138(v22, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  sub_21CA70138(v25, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v64 = (v30 & 1) == 0;
  v65 = v2;
  if (*(v2 + *(v26 + 24)) == 1)
  {
    sub_21CB81014();
    v35 = sub_21CB81004();
    v37 = v36;
    (*(v10 + 8))(v13, v54);
    v66 = v35;
    v67 = v37;
    sub_21C71F3FC();
    v31 = sub_21CB84054();
    v33 = v38 & 1;
  }

  v66 = v31;
  v67 = v32;
  v68 = v33;
  v69 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AE0, &qword_21CBC2638);
  sub_21C87DED8();
  sub_21C6EADEC(&qword_27CDF6AE8, &qword_27CDF6AE0, &qword_21CBC2638);
  v39 = sub_21CB85034();
  if (v30)
  {
    v40 = 1;
    v42 = v59;
    v41 = v60;
    v43 = v58;
  }

  else
  {
    MEMORY[0x28223BE20](v39);
    *(&v54 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AF0, &unk_21CBC2640);
    sub_21CA735E4();
    v44 = v55;
    sub_21CB85054();
    v43 = v58;
    v42 = v59;
    v41 = v60;
    (*(v58 + 32))(v59, v44, v60);
    v40 = 0;
  }

  (*(v43 + 56))(v42, v40, 1, v41);
  v45 = v14[2];
  v46 = v56;
  v47 = v57;
  v48 = v63;
  v45(v57, v63, v56);
  v49 = v61;
  sub_21C6EDBAC(v42, v61, &qword_27CDF6AD0, &qword_21CBC2620);
  v50 = v62;
  v45(v62, v47, v46);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B00, &unk_21CBC2650);
  sub_21C6EDBAC(v49, &v50[*(v51 + 48)], &qword_27CDF6AD0, &qword_21CBC2620);
  sub_21C6EA794(v42, &qword_27CDF6AD0, &qword_21CBC2620);
  v52 = v14[1];
  v52(v48, v46);
  sub_21C6EA794(v49, &qword_27CDF6AD0, &qword_21CBC2620);
  return (v52)(v47, v46);
}

uint64_t sub_21CA6AC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21CA6ACD8(a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A40, L"6\a3");
  v5 = a2 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  return result;
}

uint64_t sub_21CA6ACD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AC0, &qword_21CBC2610);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v11 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v12 = *(a1 + *(v11 + 28));
  v13 = (a1 + *(v11 + 20));
  v14 = v13[1];
  v19[0] = *v13;
  v19[1] = v14;
  if (v12 == 1)
  {
    sub_21C71F3FC();

    sub_21CB84CB4();
    (*(v7 + 16))(v5, v10, v6);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21CB83494();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    sub_21C71F3FC();

    *v5 = sub_21CB84054();
    *(v5 + 1) = v16;
    v5[16] = v17 & 1;
    *(v5 + 3) = v18;
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    return sub_21CB83494();
  }
}

uint64_t sub_21CA6AF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v44 = sub_21CB83374();
  v41 = *(v44 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AB0, &qword_21CBC25C8);
  v42 = *(v45 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v45);
  v40 = &v39 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AB8, &unk_21CBC25D0);
  v8 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v10 = &v39 - v9;
  v11 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A98, &qword_21CBC2540);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v21 = *(a1 + *(v20 + 28));
  v22 = *(v20 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
  sub_21CB84D54();
  sub_21CA6B5B4(v14, v19);
  sub_21CA70138(v14, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  if (v21 == 1)
  {
    (*(v16 + 16))(v10, v19, v15);
    swift_storeEnumTagMultiPayload();
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    v24 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    v25 = sub_21C7060F0(&qword_27CDF6A80, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    v47 = v23;
    v48 = v11;
    v49 = v24;
    v50 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v27 = sub_21C7060F0(&qword_27CDF6AA0, MEMORY[0x277CDDF40]);
    v47 = v15;
    v48 = v44;
    v49 = OpaqueTypeConformance2;
    v50 = v27;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v29 = v5;
    sub_21CB83364();
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    v31 = sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    v32 = sub_21C7060F0(&qword_27CDF6A80, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    v47 = v30;
    v48 = v11;
    v49 = v31;
    v50 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = sub_21C7060F0(&qword_27CDF6AA0, MEMORY[0x277CDDF40]);
    v35 = v40;
    v36 = v44;
    sub_21CB840E4();
    (*(v41 + 8))(v29, v36);
    (*(v16 + 8))(v19, v15);
    v37 = v42;
    v38 = v45;
    (*(v42 + 16))(v10, v35, v45);
    swift_storeEnumTagMultiPayload();
    v47 = v15;
    v48 = v36;
    v49 = v33;
    v50 = v34;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return (*(v37 + 8))(v35, v38);
  }
}

uint64_t sub_21CA6B5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v55 = sub_21CB81024();
  v53 = *(v55 - 1);
  v3 = *(v53 + 8);
  MEMORY[0x28223BE20](v55);
  v52 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v5);
  v57 = v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v51 - v10;
  v12 = type metadata accessor for PMSharingGroup();
  v51[0] = *(v12 - 8);
  v13 = *(v51[0] + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_21CB85C44();
  v54 = *(v56 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v51 - v25;
  v27 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_21CA6F9A4(a1, v30, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v31 = (*(v20 + 48))(v30, 2, v19);
  if (v31)
  {
    if (v31 == 1)
    {
      v33 = v58;
      v32 = v59;
      v34 = v57;
      if (qword_27CDEA490 != -1)
      {
        swift_once();
      }

      v62 = qword_27CE18738;
      v63 = qword_27CE18740;
      sub_21C71F3FC();

      sub_21CB84CB4();
      v36 = v60;
      v35 = v61;
      goto LABEL_16;
    }

    v39 = v52;
    sub_21CB81014();
    v40 = sub_21CB81004();
    v42 = v41;
    (*(v53 + 1))(v39, v55);
    v62 = v40;
    v63 = v42;
    sub_21C71F3FC();
    v34 = v57;
    sub_21CB84CB4();
    v36 = v60;
    v35 = v61;
LABEL_15:
    v33 = v58;
    v32 = v59;
    goto LABEL_16;
  }

  v53 = v15;
  v37 = v51[1];
  sub_21C716934(v30, v26, &unk_27CDF20B0, &unk_21CBA0090);
  v55 = v26;
  sub_21C6EDBAC(v26, v23, &unk_27CDF20B0, &unk_21CBA0090);
  v38 = v54;
  if ((*(v54 + 48))(v23, 1, v56) == 1)
  {
    sub_21C6EA794(v23, &unk_27CDF20B0, &unk_21CBA0090);
    v32 = v59;
    v36 = v60;
    v34 = v57;
  }

  else
  {
    (*(v38 + 32))(v18, v23, v56);
    v43 = *(v37 + *(type metadata accessor for PMMoveAccountToGroupPicker(0) + 36) + 8);
    sub_21CA1D444(v18, v11);
    v44 = (*(v51[0] + 48))(v11, 1, v12);
    v36 = v60;
    v34 = v57;
    if (v44 != 1)
    {
      v46 = v53;
      sub_21CA70198(v11, v53, type metadata accessor for PMSharingGroup);
      v47 = (v46 + *(v12 + 20));
      v48 = v47[1];
      v62 = *v47;
      v63 = v48;
      sub_21C71F3FC();

      sub_21CB84CB4();
      sub_21CA70138(v46, type metadata accessor for PMSharingGroup);
      (*(v38 + 8))(v18, v56);
      sub_21C6EA794(v55, &unk_27CDF20B0, &unk_21CBA0090);
      v35 = v61;
      goto LABEL_15;
    }

    (*(v38 + 8))(v18, v56);
    sub_21C6EA794(v11, &qword_27CDF7670, &unk_21CBAA8F0);
    v32 = v59;
  }

  v45 = v55;
  v35 = v61;
  if (qword_27CDEA498 != -1)
  {
    swift_once();
  }

  v62 = qword_27CE18748;
  v63 = qword_27CE18750;
  sub_21C71F3FC();

  sub_21CB84CB4();
  sub_21C6EA794(v45, &unk_27CDF20B0, &unk_21CBA0090);
  v33 = v58;
LABEL_16:
  v49 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA580, &qword_21CB9E690) + 36);
  sub_21CA6F9A4(v36, v49, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA588, &qword_21CB9E698) + 36)) = 1;
  return (*(v33 + 32))(v35, v34, v32);
}

uint64_t sub_21CA6BDB4()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount.MockData(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v26 - v20;
  v22 = type metadata accessor for PMAccount(0);
  sub_21CA6F9A4(v1 + *(v22 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CA70198(v9, v5, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v5[*(v2 + 72)], v14, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA70138(v5, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v23 = *v9;
    sub_21CB85B94();
  }

  sub_21C716934(v14, v21, &unk_27CDF20B0, &unk_21CBA0090);
  (*(v11 + 56))(v21, 0, 2, v10);
  v24 = *(type metadata accessor for PMMoveAccountToGroupPicker(0) + 40);
  sub_21CA6F9A4(v21, v18, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30);
  sub_21CB84D64();
  return sub_21CA70138(v21, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
}

uint64_t sub_21CA6C0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  if (result == 1)
  {
    return sub_21CA6BDB4();
  }

  return result;
}

uint64_t sub_21CA6C13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  v3[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = sub_21CB858B4();
  v3[12] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v3[13] = v8;
  v3[14] = v7;

  return MEMORY[0x2822009F8](sub_21CA6C240, v8, v7);
}

uint64_t sub_21CA6C240()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v0[15] = v4;
  v5 = *(v4 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
  sub_21CB84D54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = v0[12];
    v7 = v0[10];

    sub_21CA70138(v7, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
    v8 = v0[10];
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }

  else
  {
    sub_21CA70138(v0[10], type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_21CA6C3B0;
    v13 = v0[7];

    return sub_21CA6C80C();
  }
}

uint64_t sub_21CA6C3B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = a1;

  v4 = *(v2 + 112);
  v5 = *(v2 + 104);

  return MEMORY[0x2822009F8](sub_21CA6C4D8, v5, v4);
}

uint64_t sub_21CA6C4D8()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 56) + *(*(v0 + 120) + 32) + 8);
  v3 = sub_21CB85C44();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 160))(v5, v4, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 153) = v8 & 1;
  sub_21C6EA794(*(v0 + 64), &unk_27CDF20B0, &unk_21CBA0090);

  return MEMORY[0x2822009F8](sub_21CA6C608, 0, 0);
}

uint64_t sub_21CA6C608()
{
  v1 = *(v0 + 88);
  *(v0 + 144) = sub_21CB858A4();
  v3 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CA6C694, v3, v2);
}

uint64_t sub_21CA6C694()
{
  v1 = *(v0 + 153);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 56);

  v6 = (v5 + *(v4 + 48));
  v8 = *v6;
  v7 = v6[1];
  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  *(v0 + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AA8, &unk_21CBC2560);
  sub_21CB84D64();
  v9 = (v5 + *(v4 + 52));
  v10 = *v9;
  v11 = *(v9 + 1);
  *(v0 + 32) = v10;
  *(v0 + 40) = v11;
  *(v0 + 152) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v12 = *(v0 + 104);
  v13 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21CA6C798, v12, v13);
}

uint64_t sub_21CA6C798()
{
  v1 = v0[12];

  v2 = v0[10];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21CA6C80C()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = sub_21CB85C44();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = *(type metadata accessor for PMSharingGroup() - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  sub_21CB858B4();
  v1[10] = sub_21CB858A4();
  v9 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CA6C990, v9, v8);
}

unint64_t sub_21CA6C990()
{
  v1 = v0[10];
  v2 = v0[3];

  v3 = sub_21CB12DEC(MEMORY[0x277D84F90]);
  v4 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v5 = *(v2 + *(v4 + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v47 = v0[2];
  v7 = *(v47 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v0[6];
    v46 = v0[8];
    v45 = v47 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v48 = (v9 + 16);
    v41 = v9;
    v42 = (v9 + 8);
    v43 = (v9 + 56);
    v44 = *(v0[3] + *(v4 + 32) + 8);
    do
    {
      if (v8 >= *(v47 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v10 = v0[9];
      v11 = v0[7];
      v13 = v0[4];
      v12 = v0[5];
      sub_21CA6F9A4(v45 + *(v46 + 72) * v8, v10, type metadata accessor for PMSharingGroup);
      v14 = *v48;
      (*v48)(v11, v10, v12);
      v14(v13, v10, v12);
      sub_21CA70138(v10, type metadata accessor for PMSharingGroup);
      (*v43)(v13, 0, 1, v12);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = v0[3];
        v15 = v0[4];
        v17 = *(v44 + 24);
        ObjectType = swift_getObjectType();
        v19 = (*(v17 + 160))(v16, v15, ObjectType, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
      }

      v20 = v0[7];
      sub_21C6EA794(v0[4], &unk_27CDF20B0, &unk_21CBA0090);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v3;
      result = sub_21CB10A54(v20);
      v23 = v3[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_25;
      }

      v27 = v22;
      if (v3[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = result;
          sub_21C8D6D88();
          result = v35;
          v3 = v49;
        }
      }

      else
      {
        v28 = v0[7];
        sub_21C8D4014(v26, isUniquelyReferenced_nonNull_native);
        result = sub_21CB10A54(v28);
        if ((v27 & 1) != (v29 & 1))
        {
          v40 = v0[5];

          return sub_21CB863B4();
        }
      }

      v30 = v0[7];
      v31 = v0[5];
      if (v27)
      {
        *(v3[7] + result) = v19 & 1;
        result = (*v42)(v30, v31);
      }

      else
      {
        v3[(result >> 6) + 8] |= 1 << result;
        v32 = result;
        v14(v3[6] + *(v41 + 72) * result, v30, v31);
        *(v3[7] + v32) = v19 & 1;
        result = (*(v41 + 8))(v30, v31);
        v33 = v3[2];
        v25 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v25)
        {
          goto LABEL_26;
        }

        v3[2] = v34;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v36 = v0[9];
  v37 = v0[7];
  v38 = v0[4];

  v39 = v0[1];

  return v39(v3);
}

uint64_t sub_21CA6CDE4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v60 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6A98, &qword_21CBC2540);
  v59 = *(v61 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v66 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v54 - v7;
  v8 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B08, &qword_21CBC2660);
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v10);
  v64 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = &v54 - v14;
  v15 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AF0, &unk_21CBC2640);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B10, &unk_21CBC2668);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v62 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v30 = &v54 - v28;
  if (v55)
  {
    (*(v20 + 56))(&v54 - v28, 1, 1, v19, v29);
  }

  else
  {
    v31 = sub_21CB85C44();
    (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
    (*(*(v32 - 8) + 56))(v18, 0, 2, v32);
    sub_21CA6B5B4(v18, v23);
    sub_21CA70138(v18, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    v23[*(v19 + 36)] = 0;
    sub_21C716934(v23, v30, &qword_27CDF6AF0, &unk_21CBC2640);
    (*(v20 + 56))(v30, 0, 1, v19, v33);
  }

  v34 = *(a2 + *(v8 + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CA6F9A4(a2, &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMMoveAccountToGroupPicker);
  v35 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v36 = swift_allocObject();
  sub_21CA70198(&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for PMMoveAccountToGroupPicker);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA8, &qword_21CBA9380);
  sub_21CB85C44();
  sub_21C6EADEC(&qword_27CDEDBB8, &qword_27CDEDBA8, &qword_21CBA9380);
  sub_21CA735E4();
  sub_21C7060F0(&qword_27CDEDBC8, type metadata accessor for PMSharingGroup);
  v37 = v63;
  sub_21CB84FF4();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v38 - 8) + 56))(v18, 2, 2, v38);
  v39 = v65;
  sub_21CA6B5B4(v18, v65);
  sub_21CA70138(v18, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v54 = v30;
  v40 = v62;
  sub_21C6EDBAC(v30, v62, &qword_27CDF6B10, &unk_21CBC2668);
  v42 = v57;
  v41 = v58;
  v56 = *(v57 + 16);
  v43 = v64;
  (v56)(v64, v37, v58);
  v44 = v59;
  v45 = *(v59 + 16);
  v46 = v61;
  v45(v66, v39, v61);
  v47 = v40;
  v48 = v60;
  sub_21C6EDBAC(v47, v60, &qword_27CDF6B10, &unk_21CBC2668);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B18, &qword_21CBC2678);
  (v56)(v48 + *(v49 + 48), v43, v41);
  v50 = v66;
  v45((v48 + *(v49 + 64)), v66, v46);
  v51 = *(v44 + 8);
  v51(v65, v46);
  v52 = *(v42 + 8);
  v52(v63, v41);
  sub_21C6EA794(v54, &qword_27CDF6B10, &unk_21CBC2668);
  v51(v50, v46);
  v52(v64, v41);
  return sub_21C6EA794(v62, &qword_27CDF6B10, &unk_21CBC2668);
}

uint64_t sub_21CA6D5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(v11, a1, v12);
  v15 = *(v13 + 56);
  v15(v11, 0, 1, v12);
  (*(v4 + 56))(v11, 0, 2, v3);
  v16 = v20;
  sub_21CA6B5B4(v11, v20);
  sub_21CA70138(v11, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v14(v7, v19, v12);
  v15(v7, 0, 1, v12);
  v17 = sub_21CA6D824(v7);
  sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AF0, &unk_21CBC2640);
  *(v16 + *(result + 36)) = (v17 & 1) == 0;
  return result;
}

uint64_t sub_21CA6D824(uint64_t a1)
{
  v94 = a1;
  v86 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  v2 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_21CB85C44();
  v4 = *(v96 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v96);
  v80 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v79 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v9 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v93 = &v79 - v10;
  v11 = type metadata accessor for PMAccount.MockData(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAccount.Storage(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = (&v79 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v82 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v84 = &v79 - v26;
  MEMORY[0x28223BE20](v27);
  v89 = &v79 - v28;
  MEMORY[0x28223BE20](v29);
  v91 = &v79 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v79 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v79 - v35;
  v37 = *(type metadata accessor for PMAccount(0) + 24);
  v95 = v1;
  sub_21CA6F9A4(v1 + v37, v21, type metadata accessor for PMAccount.Storage);
  v90 = v15;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v83 = v11;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21CA70198(v21, v14, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v14[*(v11 + 72)], v33, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA70138(v14, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v39 = *v21;
    sub_21CB85B94();
  }

  sub_21C716934(v33, v36, &unk_27CDF20B0, &unk_21CBA0090);
  v87 = v4;
  v40 = *(v4 + 48);
  v41 = v96;
  v42 = v40(v36, 1, v96);
  sub_21C6EA794(v36, &unk_27CDF20B0, &unk_21CBA0090);
  v43 = v94;
  if (v42 == 1)
  {
    v44 = 1;
    if (v40(v94, 1, v41) == 1)
    {
      return v44 & 1;
    }
  }

  v88 = v40;
  sub_21CA6F9A4(v95 + v37, v18, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CA70198(v18, v14, type metadata accessor for PMAccount.MockData);
    v45 = v89;
    sub_21C6EDBAC(&v14[*(v83 + 72)], v89, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA70138(v14, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v46 = *v18;
    v45 = v89;
    sub_21CB85B94();
  }

  v47 = v96;
  v48 = v88;
  v49 = v91;
  sub_21C716934(v45, v91, &unk_27CDF20B0, &unk_21CBA0090);
  v50 = v93;
  v51 = *(v92 + 48);
  sub_21C6EDBAC(v49, v93, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v43, v50 + v51, &unk_27CDF20B0, &unk_21CBA0090);
  if (v48(v50, 1, v47) == 1)
  {
    sub_21C6EA794(v49, &unk_27CDF20B0, &unk_21CBA0090);
    if (v48(v50 + v51, 1, v47) == 1)
    {
      sub_21C6EA794(v50, &unk_27CDF20B0, &unk_21CBA0090);
LABEL_26:
      v44 = 1;
      return v44 & 1;
    }

    goto LABEL_14;
  }

  v52 = v84;
  sub_21C6EDBAC(v50, v84, &unk_27CDF20B0, &unk_21CBA0090);
  if (v48(v50 + v51, 1, v47) == 1)
  {
    sub_21C6EA794(v49, &unk_27CDF20B0, &unk_21CBA0090);
    (*(v87 + 8))(v52, v47);
LABEL_14:
    sub_21C6EA794(v50, &qword_27CDEAC40, &qword_21CBA1A40);
    goto LABEL_15;
  }

  v64 = v87;
  v65 = v50 + v51;
  v66 = v81;
  (*(v87 + 32))(v81, v65, v47);
  sub_21C7060F0(&qword_27CDEAC48, MEMORY[0x277D49978]);
  v67 = sub_21CB85574();
  v68 = *(v64 + 8);
  v68(v66, v47);
  sub_21C6EA794(v49, &unk_27CDF20B0, &unk_21CBA0090);
  v68(v52, v47);
  v48 = v88;
  v43 = v94;
  sub_21C6EA794(v50, &unk_27CDF20B0, &unk_21CBA0090);
  if (v67)
  {
    goto LABEL_26;
  }

LABEL_15:
  v53 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v54 = v53[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
  v55 = v95;
  v56 = v85;
  sub_21CB84D54();
  LODWORD(v54) = swift_getEnumCaseMultiPayload();
  sub_21CA70138(v56, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  if (v54 == 1)
  {
    v57 = *(v55 + v53[8] + 8);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_26;
    }

    v58 = *(v57 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v58) = (*(v58 + 160))(v55, v43, ObjectType, v58);
    swift_unknownObjectRelease();
    v44 = v58 ^ 1;
  }

  else
  {
    v60 = v82;
    sub_21C6EDBAC(v43, v82, &unk_27CDF20B0, &unk_21CBA0090);
    if (v48(v60, 1, v47) == 1)
    {
      sub_21C6EA794(v60, &unk_27CDF20B0, &unk_21CBA0090);
      v61 = (v55 + v53[13]);
      v62 = *v61;
      v63 = *(v61 + 1);
      LOBYTE(v98) = v62;
      v99 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
      sub_21CB84D54();
      v44 = v97 ^ 1;
    }

    else
    {
      v69 = v87;
      v70 = v80;
      (*(v87 + 32))(v80, v60, v47);
      v71 = (v55 + v53[12]);
      v73 = *v71;
      v72 = v71[1];
      v98 = v73;
      v99 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AA8, &unk_21CBC2560);
      sub_21CB84D54();
      v74 = v97;
      if (!*(v97 + 16) || (v75 = sub_21CB10A54(v70), (v76 & 1) == 0))
      {

        (*(v69 + 8))(v70, v47);
        goto LABEL_26;
      }

      v77 = *(*(v74 + 56) + v75);
      (*(v69 + 8))(v70, v47);

      v44 = v77 ^ 1;
    }
  }

  return v44 & 1;
}

uint64_t sub_21CA6E1DC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 56))(v11, 1, 2, v2, v9);
  sub_21CA6B5B4(v11, a1);
  sub_21CA70138(v11, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v12 = sub_21CB85C44();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = sub_21CA6D824(v6);
  sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6AF0, &unk_21CBC2640);
  *(a1 + *(result + 36)) = (v13 & 1) == 0;
  return result;
}

uint64_t sub_21CA6E3B8(uint64_t a1)
{
  v2 = v1;
  v79 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488);
  v3 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v73 - v4;
  v5 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v73 - v9;
  v81 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  v10 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v82 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = &v73 - v16;
  v17 = sub_21CB85C44();
  v78 = *(v17 - 8);
  v18 = *(v78 + 64);
  MEMORY[0x28223BE20](v17);
  v77 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PMAccount.MockData(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PMAccount.Storage(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v73 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v73 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v73 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v80 = &v73 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v87 = &v73 - v45;
  v46 = *(type metadata accessor for PMAccount(0) + 24);
  v88 = v2;
  sub_21CA6F9A4(v2 + v46, v27, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CA70198(v27, v23, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v23[*(v20 + 72)], v37, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CA70138(v23, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v47 = *v27;
    sub_21CB85B94();
  }

  sub_21C716934(v37, v40, &unk_27CDF20B0, &unk_21CBA0090);
  v76 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v48 = *(v88 + *(v76 + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v49 = v89;
  sub_21C6EDBAC(v40, v34, &unk_27CDF20B0, &unk_21CBA0090);
  v50 = v78;
  v51 = *(v78 + 48);
  if (v51(v34, 1, v17) == 1)
  {
    sub_21C6EA794(v40, &unk_27CDF20B0, &unk_21CBA0090);
    v52 = type metadata accessor for PMSharingGroup();
    (*(*(v52 - 8) + 56))(v87, 1, 1, v52);
  }

  else
  {
    v53 = *(v50 + 32);
    v73 = v48;
    v54 = v31;
    v55 = v77;
    v56 = v53(v77, v34, v17);
    MEMORY[0x28223BE20](v56);
    *(&v73 - 2) = v55;
    sub_21C968E80(sub_21CA1ECA4, v49, v87);
    v57 = v55;
    v31 = v54;
    (*(v50 + 8))(v57, v17);
    sub_21C6EA794(v40, &unk_27CDF20B0, &unk_21CBA0090);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v58 = v89;
  sub_21C6EDBAC(v79, v31, &unk_27CDF20B0, &unk_21CBA0090);
  if (v51(v31, 1, v17) == 1)
  {
    v59 = type metadata accessor for PMSharingGroup();
    v60 = v80;
    (*(*(v59 - 8) + 56))(v80, 1, 1, v59);
  }

  else
  {
    v61 = v77;
    v62 = (*(v50 + 32))(v77, v31, v17);
    MEMORY[0x28223BE20](v62);
    *(&v73 - 2) = v61;
    v60 = v80;
    sub_21C968E80(sub_21CA1EA74, v58, v80);
    (*(v50 + 8))(v61, v17);
  }

  v64 = v84;
  v63 = v85;
  v65 = v83;

  sub_21CA6F9A4(v88, v65, type metadata accessor for PMAccount);
  v66 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  sub_21C6EDBAC(v87, v65 + *(v66 + 20), &qword_27CDF7670, &unk_21CBAA8F0);
  sub_21C6EDBAC(v60, v65 + *(v66 + 24), &qword_27CDF7670, &unk_21CBAA8F0);
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  v67 = *(v76 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0);
  sub_21CB84D54();
  v68 = v82;
  sub_21CA6F9A4(v64, v82, type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v69 = v68;
    v70 = v74;
    sub_21C716934(v69, v74, &qword_27CDEB6B8, &qword_21CBA2488);
    MEMORY[0x21CF14A20](v75);
    sub_21C6EA794(v70, &qword_27CDEB6B8, &qword_21CBA2488);
  }

  else
  {
    sub_21CA70198(v68, v63, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  }

  v71 = v86;
  sub_21CA70198(v63, v86, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  sub_21C7D3344(v65, v71, &qword_27CDEB700, &unk_21CBA24F0);
  sub_21CA67A30(v71);
  sub_21CB84D64();
  sub_21C6EA794(v60, &qword_27CDF7670, &unk_21CBAA8F0);
  return sub_21C6EA794(v87, &qword_27CDF7670, &unk_21CBAA8F0);
}

unint64_t sub_21CA6EDD4()
{
  result = qword_27CDF69E8;
  if (!qword_27CDF69E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69E0, &qword_21CBC2378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69F0, &unk_21CBC2380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA5B8, &qword_21CB9E6B8);
    sub_21CA6EF34();
    swift_getOpaqueTypeConformance2();
    sub_21CA6F154();
    swift_getOpaqueTypeConformance2();
    sub_21C7060F0(&qword_27CDEB768, type metadata accessor for PMMoveAccountToGroupAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF69E8);
  }

  return result;
}

unint64_t sub_21CA6EF34()
{
  result = qword_27CDF69F8;
  if (!qword_27CDF69F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA5B8, &qword_21CB9E6B8);
    sub_21CA6EFEC();
    sub_21C6EADEC(&qword_27CDEB778, &qword_27CDEB6F8, &qword_21CBC23B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF69F8);
  }

  return result;
}

unint64_t sub_21CA6EFEC()
{
  result = qword_27CDF6A00;
  if (!qword_27CDF6A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A08, &qword_21CBC2390);
    sub_21CA6F0A4();
    sub_21C6EADEC(&qword_27CDEB780, &qword_27CDEB708, &unk_21CBC2080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A00);
  }

  return result;
}

unint64_t sub_21CA6F0A4()
{
  result = qword_27CDF6A10;
  if (!qword_27CDF6A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A18, L"N\a©");
    sub_21C6EADEC(&qword_27CDF6A20, &qword_27CDF6A28, &unk_21CBC23A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A10);
  }

  return result;
}

unint64_t sub_21CA6F154()
{
  result = qword_27CDF6A30;
  if (!qword_27CDF6A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A30);
  }

  return result;
}

uint64_t sub_21CA6F1D0(char a1)
{
  v3 = *(type metadata accessor for PMMoveAccountToGroupPicker(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CA6A4E8(a1, v4);
}

uint64_t sub_21CA6F244@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X2>, uint64_t a3@<X8>)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD8, &unk_21CBA5300);
  v6 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  v11 = sub_21CB82644();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v49 - v18;
  if (a2)
  {
    a2(1, v17);
  }

  sub_21CA6F9A4(a1, a3, type metadata accessor for PMAccount);
  v20 = type metadata accessor for PMAccount(0);
  (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
  v21 = type metadata accessor for PMNewGroupFlow(0);
  v22 = a3 + v21[6];
  *(v22 + 24) = &type metadata for PMIMessageAvailabilityProviderMain;
  *(v22 + 32) = &off_282E572E8;
  *(a3 + v21[5]) = 0;
  v49 = v21[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE0, &unk_21CBAE540);
  v23 = *(type metadata accessor for PMNewGroupFlow.Step(0) - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_21CBA0690;
  swift_storeEnumTagMultiPayload();
  v53 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE8, &qword_21CBA5310);
  sub_21C6EADEC(&qword_27CDECBF0, &qword_27CDECBE8, &qword_21CBA5310);
  sub_21C7060F0(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step);
  sub_21CB82654();
  (*(v12 + 16))(v15, v19, v11);
  sub_21CB84D44();
  (*(v12 + 8))(v19, v11);
  v27 = a3 + v21[8];
  v52 = 0;
  sub_21CB84D44();
  v28 = v54;
  *v27 = v53;
  *(v27 + 8) = v28;
  v29 = v21[9];
  v30 = type metadata accessor for MoveAccountFailureAlertData(0);
  (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
  sub_21C6EDBAC(v10, v50, &qword_27CDECBD8, &unk_21CBA5300);
  sub_21CB84D44();
  sub_21C6EA794(v10, &qword_27CDECBD8, &unk_21CBA5300);
  v31 = v21[10];
  *(a3 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v32 = v21[11];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v34 = (a3 + v32);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v53);

  type metadata accessor for PMAccountsState();
  sub_21C7060F0(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v35 = sub_21CB82674();
  v37 = v36;

  *v34 = v35;
  v34[1] = v37;
  v38 = (a3 + v21[12]);
  type metadata accessor for PMPasswordManagerState();
  sub_21C7060F0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  *v38 = sub_21CB82B84();
  v38[1] = v39;
  v40 = (a3 + v21[13]);
  v41 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v41, v53);

  type metadata accessor for PMGroupsStore();
  sub_21C7060F0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v42 = sub_21CB82674();
  v44 = v43;

  *v40 = v42;
  v40[1] = v44;
  v45 = a3 + v21[14];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  v46 = v21[15];
  *(a3 + v46) = swift_getKeyPath();
  v47 = v21[16];
  result = swift_getKeyPath();
  *(a3 + v47) = result;
  return result;
}

uint64_t sub_21CA6F8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF69D0, &qword_21CBC2368) - 8);
  v6 = v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_21CA6F244(a1, v7, a2);
}

uint64_t sub_21CA6F9A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA6FA0C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD8, &unk_21CBA5300);
  v6 = *(*(v50 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v50);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  v11 = sub_21CB82644();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  if (a2)
  {
    a2(1);
  }

  sub_21CA6F9A4(a1, a3, type metadata accessor for PMAccount);
  v19 = type metadata accessor for PMAccount(0);
  (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
  v20 = type metadata accessor for PMNewGroupFlow(0);
  v21 = a3 + v20[6];
  *(v21 + 24) = &type metadata for PMIMessageAvailabilityProviderMain;
  *(v21 + 32) = &off_282E572E8;
  *(a3 + v20[5]) = 0;
  v48 = v20[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE0, &unk_21CBAE540);
  v22 = *(type metadata accessor for PMNewGroupFlow.Step(0) - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_21CBA0690;
  swift_storeEnumTagMultiPayload();
  v52 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE8, &qword_21CBA5310);
  sub_21C6EADEC(&qword_27CDECBF0, &qword_27CDECBE8, &qword_21CBA5310);
  sub_21C7060F0(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step);
  sub_21CB82654();
  (*(v12 + 16))(v16, v18, v11);
  sub_21CB84D44();
  (*(v12 + 8))(v18, v11);
  v26 = a3 + v20[8];
  v51 = 0;
  sub_21CB84D44();
  v27 = v53;
  *v26 = v52;
  *(v26 + 8) = v27;
  v28 = v20[9];
  v29 = type metadata accessor for MoveAccountFailureAlertData(0);
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  sub_21C6EDBAC(v10, v49, &qword_27CDECBD8, &unk_21CBA5300);
  sub_21CB84D44();
  sub_21C6EA794(v10, &qword_27CDECBD8, &unk_21CBA5300);
  v30 = v20[10];
  *(a3 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v31 = v20[11];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v33 = (a3 + v31);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v52);

  type metadata accessor for PMAccountsState();
  sub_21C7060F0(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v34 = sub_21CB82674();
  v36 = v35;

  *v33 = v34;
  v33[1] = v36;
  v37 = (a3 + v20[12]);
  type metadata accessor for PMPasswordManagerState();
  sub_21C7060F0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  *v37 = sub_21CB82B84();
  v37[1] = v38;
  v39 = (a3 + v20[13]);
  v40 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v40, v52);

  type metadata accessor for PMGroupsStore();
  sub_21C7060F0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v41 = sub_21CB82674();
  v43 = v42;

  *v39 = v41;
  v39[1] = v43;
  v44 = a3 + v20[14];
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0;
  v45 = v20[15];
  *(a3 + v45) = swift_getKeyPath();
  v46 = v20[16];
  result = swift_getKeyPath();
  *(a3 + v46) = result;
  return result;
}

uint64_t sub_21CA700B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = v2 + ((*(*(*(v2 + 16) - 8) + 64) + ((*(*(*(v2 + 16) - 8) + 80) + 32) & ~*(*(*(v2 + 16) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *(v4 + 8);
  return sub_21CA6FA0C(a1, *v4, a2);
}

uint64_t sub_21CA70138(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CA70198(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA70200()
{
  v1 = *(*(type metadata accessor for PMMoveAccountToGroupPicker(0) - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_21CA68064();
}

uint64_t objectdestroy_64Tm()
{
  v1 = v0;
  v2 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v307 = *(*(v2 - 1) + 80);
  v305 = *(*(v2 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v306 = (v307 + 32) & ~v307;
  v4 = v0 + v306;
  v5 = *(v4 + 8);

  v6 = type metadata accessor for PMAccount(0);
  v7 = (v4 + v6[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = *(v7 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 5);

    v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v13 = v12[7];
    v14 = sub_21CB85B74();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v15 = *&v7[v12[8] + 8];

    v16 = v12[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(&v7[v16], 1, v17))
    {
      (*(v18 + 8))(&v7[v16], v17);
    }
  }

  else
  {
    v19 = *(v7 + 4);

    v20 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v21 = v20[7];
    v22 = sub_21CB85C04();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(&v7[v21], 1, v22))
    {
      (*(v23 + 8))(&v7[v21], v22);
    }

    v24 = v20[8];
    v25 = sub_21CB85BB4();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(&v7[v24], 1, v25))
    {
      (*(v26 + 8))(&v7[v24], v25);
    }

    v27 = v20[9];
    v28 = sub_21CB85C44();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(&v7[v27], 1, v28))
    {
      (*(v29 + 8))(&v7[v27], v28);
    }
  }

  v30 = v4 + v6[6];
  type metadata accessor for PMAccount.Storage(0);
  v308 = v2;
  v309 = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *(v30 + 8);

    v32 = *(v30 + 24);

    v33 = *(v30 + 40);

    v34 = *(v30 + 56);

    v35 = type metadata accessor for PMAccount.MockData(0);
    v36 = v35[8];
    v37 = sub_21CB80DD4();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    if (!v39(v30 + v36, 1, v37))
    {
      (*(v38 + 8))(v30 + v36, v37);
    }

    v40 = *(v30 + v35[9]);

    v41 = *(v30 + v35[10] + 8);

    v42 = *(v30 + v35[11] + 8);

    v43 = v35[12];
    if (!v39(v30 + v43, 1, v37))
    {
      (*(v38 + 8))(v30 + v43, v37);
    }

    v44 = v35[15];
    v45 = sub_21CB85BB4();
    v46 = *(v45 - 8);
    v6 = v309;
    if (!(*(v46 + 48))(v30 + v44, 1, v45))
    {
      (*(v46 + 8))(v30 + v44, v45);
    }

    v47 = v35[16];
    v48 = sub_21CB85C04();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(v30 + v47, 1, v48))
    {
      (*(v49 + 8))(v30 + v47, v48);
    }

    v50 = *(v30 + v35[17] + 8);

    v51 = v35[18];
    v52 = sub_21CB85C44();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(v30 + v51, 1, v52))
    {
      (*(v53 + 8))(v30 + v51, v52);
    }
  }

  else
  {
  }

  v54 = v4 + v6[7];
  if (*(v54 + 8))
  {
  }

  v55 = *(v4 + v2[5] + 8);

  v56 = *(v4 + v2[8] + 8);

  v57 = *(v4 + v2[9] + 8);

  v58 = v4 + v2[10];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  if (!(*(*(v59 - 8) + 48))(v58, 2, v59))
  {
    v60 = sub_21CB85C44();
    v61 = *(v60 - 8);
    if (!(*(v61 + 48))(v58, 1, v60))
    {
      (*(v61 + 8))(v58, v60);
    }
  }

  v62 = *(v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30) + 28));

  v63 = (v4 + v2[11]);
  type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = *v63;

    v65 = v63[1];

    v66 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488) + 32);
    v67 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
    if (!(*(*(v67 - 8) + 48))(v66, 1, v67))
    {
      v302 = v63;
      v68 = *(v66 + 1);

      v69 = &v66[v309[5]];
      v70 = swift_getEnumCaseMultiPayload();
      v71 = *(v69 + 1);

      v72 = *(v69 + 3);

      if (v70 == 1)
      {
        v73 = *(v69 + 5);

        v74 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v75 = v74[7];
        v76 = sub_21CB85B74();
        (*(*(v76 - 8) + 8))(&v69[v75], v76);
        v77 = *&v69[v74[8] + 8];

        v78 = v74[9];
        v79 = sub_21CB85C44();
        v80 = *(v79 - 8);
        if (!(*(v80 + 48))(&v69[v78], 1, v79))
        {
          (*(v80 + 8))(&v69[v78], v79);
        }
      }

      else
      {
        v95 = v1;
        v96 = *(v69 + 4);

        v97 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v98 = v97[7];
        v99 = sub_21CB85C04();
        v100 = *(v99 - 8);
        if (!(*(v100 + 48))(&v69[v98], 1, v99))
        {
          (*(v100 + 8))(&v69[v98], v99);
        }

        v101 = v97[8];
        v102 = sub_21CB85BB4();
        v103 = *(v102 - 8);
        if (!(*(v103 + 48))(&v69[v101], 1, v102))
        {
          (*(v103 + 8))(&v69[v101], v102);
        }

        v104 = v97[9];
        v105 = sub_21CB85C44();
        v106 = *(v105 - 8);
        v1 = v95;
        if (!(*(v106 + 48))(&v69[v104], 1, v105))
        {
          (*(v106 + 8))(&v69[v104], v105);
        }
      }

      v107 = &v66[v309[6]];
      v300 = v1;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v108 = *(v107 + 1);

        v109 = *(v107 + 3);

        v110 = *(v107 + 5);

        v111 = *(v107 + 7);

        v112 = type metadata accessor for PMAccount.MockData(0);
        v113 = v112[8];
        v114 = sub_21CB80DD4();
        v115 = *(v114 - 8);
        v116 = *(v115 + 48);
        if (!v116(&v107[v113], 1, v114))
        {
          (*(v115 + 8))(&v107[v113], v114);
        }

        v117 = *&v107[v112[9]];

        v118 = *&v107[v112[10] + 8];

        v119 = *&v107[v112[11] + 8];

        v120 = v112[12];
        if (!v116(&v107[v120], 1, v114))
        {
          (*(v115 + 8))(&v107[v120], v114);
        }

        v121 = v112[15];
        v122 = sub_21CB85BB4();
        v123 = *(v122 - 8);
        if (!(*(v123 + 48))(&v107[v121], 1, v122))
        {
          (*(v123 + 8))(&v107[v121], v122);
        }

        v124 = v112[16];
        v125 = sub_21CB85C04();
        v126 = *(v125 - 8);
        if (!(*(v126 + 48))(&v107[v124], 1, v125))
        {
          (*(v126 + 8))(&v107[v124], v125);
        }

        v127 = *&v107[v112[17] + 8];

        v128 = v112[18];
        v129 = sub_21CB85C44();
        v130 = *(v129 - 8);
        if (!(*(v130 + 48))(&v107[v128], 1, v129))
        {
          (*(v130 + 8))(&v107[v128], v129);
        }
      }

      else
      {
      }

      v166 = &v66[v309[7]];
      if (*(v166 + 1))
      {
      }

      v167 = &v66[*(v67 + 20)];
      v168 = type metadata accessor for PMSharingGroup();
      v169 = *(*(v168 - 1) + 48);
      v63 = v302;
      if (!v169(v167, 1, v168))
      {
        v170 = sub_21CB85C44();
        (*(*(v170 - 8) + 8))(v167, v170);
        v171 = *&v167[v168[5] + 8];

        v172 = *&v167[v168[6]];

        v173 = *&v167[v168[7] + 8];
      }

      v174 = &v66[*(v67 + 24)];
      v175 = v169(v174, 1, v168);
      v1 = v300;
      v2 = v308;
      if (!v175)
      {
        v176 = sub_21CB85C44();
        (*(*(v176 - 8) + 8))(v174, v176);
        v177 = *&v174[v168[5] + 8];

        v178 = *&v174[v168[6]];

        v179 = *&v174[v168[7] + 8];
      }
    }

    v180 = &v66[*(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20)];
    v181 = v309;
    if (!(*(*(v309 - 1) + 48))(v180, 1, v309))
    {
      v304 = v63;
      v182 = *(v180 + 1);

      v183 = &v180[v309[5]];
      v184 = swift_getEnumCaseMultiPayload();
      v185 = *(v183 + 1);

      v186 = *(v183 + 3);

      if (v184 == 1)
      {
        v187 = *(v183 + 5);

        v188 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v189 = v188[7];
        v190 = sub_21CB85B74();
        (*(*(v190 - 8) + 8))(&v183[v189], v190);
        v191 = *&v183[v188[8] + 8];

        v192 = v188[9];
        v193 = sub_21CB85C44();
        v194 = *(v193 - 8);
        if (!(*(v194 + 48))(&v183[v192], 1, v193))
        {
          (*(v194 + 8))(&v183[v192], v193);
        }
      }

      else
      {
        v222 = *(v183 + 4);

        v223 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v224 = v223[7];
        v225 = sub_21CB85C04();
        v226 = *(v225 - 8);
        if (!(*(v226 + 48))(&v183[v224], 1, v225))
        {
          (*(v226 + 8))(&v183[v224], v225);
        }

        v227 = v223[8];
        v228 = sub_21CB85BB4();
        v229 = *(v228 - 8);
        if (!(*(v229 + 48))(&v183[v227], 1, v228))
        {
          (*(v229 + 8))(&v183[v227], v228);
        }

        v230 = v223[9];
        v231 = sub_21CB85C44();
        v232 = *(v231 - 8);
        if (!(*(v232 + 48))(&v183[v230], 1, v231))
        {
          (*(v232 + 8))(&v183[v230], v231);
        }
      }

      v233 = &v180[v309[6]];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v234 = *(v233 + 1);

        v235 = *(v233 + 3);

        v236 = *(v233 + 5);

        v237 = *(v233 + 7);

        v238 = type metadata accessor for PMAccount.MockData(0);
        v239 = v238[8];
        v240 = sub_21CB80DD4();
        v241 = *(v240 - 8);
        v242 = *(v241 + 48);
        if (!v242(&v233[v239], 1, v240))
        {
          (*(v241 + 8))(&v233[v239], v240);
        }

        v243 = *&v233[v238[9]];

        v244 = *&v233[v238[10] + 8];

        v245 = *&v233[v238[11] + 8];

        v246 = v238[12];
        if (!v242(&v233[v246], 1, v240))
        {
          (*(v241 + 8))(&v233[v246], v240);
        }

        v247 = v238[15];
        v248 = sub_21CB85BB4();
        v249 = *(v248 - 8);
        if (!(*(v249 + 48))(&v233[v247], 1, v248))
        {
          (*(v249 + 8))(&v233[v247], v248);
        }

        v250 = v238[16];
        v251 = sub_21CB85C04();
        v252 = *(v251 - 8);
        v181 = v309;
        if (!(*(v252 + 48))(&v233[v250], 1, v251))
        {
          (*(v252 + 8))(&v233[v250], v251);
        }

        v253 = *&v233[v238[17] + 8];

        v254 = v238[18];
        v255 = sub_21CB85C44();
        v256 = *(v255 - 8);
        if (!(*(v256 + 48))(&v233[v254], 1, v255))
        {
          (*(v256 + 8))(&v233[v254], v255);
        }
      }

      else
      {
      }

      v292 = v181[7];
LABEL_130:
      v293 = &v180[v292];
      v2 = v308;
      v63 = v304;
      if (*&v180[v292 + 8])
      {
      }
    }
  }

  else
  {
    v81 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
    if (!(*(*(v81 - 8) + 48))(v63, 1, v81))
    {
      v82 = v63[1];

      v303 = v63;
      v83 = v63 + v6[5];
      v84 = swift_getEnumCaseMultiPayload();
      v85 = *(v83 + 1);

      v86 = *(v83 + 3);

      if (v84 == 1)
      {
        v87 = *(v83 + 5);

        v88 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v89 = v88[7];
        v90 = sub_21CB85B74();
        (*(*(v90 - 8) + 8))(&v83[v89], v90);
        v91 = *&v83[v88[8] + 8];

        v92 = v88[9];
        v93 = sub_21CB85C44();
        v94 = *(v93 - 8);
        if (!(*(v94 + 48))(&v83[v92], 1, v93))
        {
          (*(v94 + 8))(&v83[v92], v93);
        }
      }

      else
      {
        v131 = *(v83 + 4);

        v132 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v133 = v132[7];
        v134 = sub_21CB85C04();
        v135 = *(v134 - 8);
        if (!(*(v135 + 48))(&v83[v133], 1, v134))
        {
          (*(v135 + 8))(&v83[v133], v134);
        }

        v136 = v132[8];
        v137 = sub_21CB85BB4();
        v138 = *(v137 - 8);
        if (!(*(v138 + 48))(&v83[v136], 1, v137))
        {
          (*(v138 + 8))(&v83[v136], v137);
        }

        v139 = v132[9];
        v140 = sub_21CB85C44();
        v141 = *(v140 - 8);
        v6 = v309;
        if (!(*(v141 + 48))(&v83[v139], 1, v140))
        {
          (*(v141 + 8))(&v83[v139], v140);
        }
      }

      v142 = v303 + v6[6];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v301 = v1;
        v143 = *(v142 + 1);

        v144 = *(v142 + 3);

        v145 = *(v142 + 5);

        v146 = *(v142 + 7);

        v147 = type metadata accessor for PMAccount.MockData(0);
        v148 = v147[8];
        v149 = sub_21CB80DD4();
        v150 = *(v149 - 8);
        v151 = *(v150 + 48);
        if (!v151(&v142[v148], 1, v149))
        {
          (*(v150 + 8))(&v142[v148], v149);
        }

        v152 = *&v142[v147[9]];

        v153 = *&v142[v147[10] + 8];

        v154 = *&v142[v147[11] + 8];

        v155 = v147[12];
        if (!v151(&v142[v155], 1, v149))
        {
          (*(v150 + 8))(&v142[v155], v149);
        }

        v156 = v147[15];
        v157 = sub_21CB85BB4();
        v158 = *(v157 - 8);
        if (!(*(v158 + 48))(&v142[v156], 1, v157))
        {
          (*(v158 + 8))(&v142[v156], v157);
        }

        v159 = v147[16];
        v160 = sub_21CB85C04();
        v161 = *(v160 - 8);
        v1 = v301;
        if (!(*(v161 + 48))(&v142[v159], 1, v160))
        {
          (*(v161 + 8))(&v142[v159], v160);
        }

        v162 = *&v142[v147[17] + 8];

        v163 = v147[18];
        v164 = sub_21CB85C44();
        v165 = *(v164 - 8);
        v6 = v309;
        if (!(*(v165 + 48))(&v142[v163], 1, v164))
        {
          (*(v165 + 8))(&v142[v163], v164);
        }
      }

      else
      {
      }

      v63 = v303;
      v195 = (v303 + v6[7]);
      if (v195[1])
      {
      }

      v196 = v303 + *(v81 + 20);
      v197 = type metadata accessor for PMSharingGroup();
      v198 = *(*(v197 - 1) + 48);
      if (!v198(v196, 1, v197))
      {
        v199 = sub_21CB85C44();
        (*(*(v199 - 8) + 8))(v196, v199);
        v200 = *&v196[v197[5] + 8];

        v201 = *&v196[v197[6]];

        v202 = *&v196[v197[7] + 8];
      }

      v203 = v303 + *(v81 + 24);
      v204 = v198(v203, 1, v197);
      v2 = v308;
      v6 = v309;
      if (!v204)
      {
        v205 = sub_21CB85C44();
        (*(*(v205 - 8) + 8))(v203, v205);
        v206 = *&v203[v197[5] + 8];

        v207 = *&v203[v197[6]];

        v208 = *&v203[v197[7] + 8];
      }
    }

    v180 = v63 + *(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20);
    if (!(*(*(v6 - 1) + 48))(v180, 1, v6))
    {
      v304 = v63;
      v209 = *(v180 + 1);

      v210 = &v180[v6[5]];
      v211 = swift_getEnumCaseMultiPayload();
      v212 = *(v210 + 1);

      v213 = *(v210 + 3);

      if (v211 == 1)
      {
        v214 = *(v210 + 5);

        v215 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v216 = v215[7];
        v217 = sub_21CB85B74();
        (*(*(v217 - 8) + 8))(&v210[v216], v217);
        v218 = *&v210[v215[8] + 8];

        v219 = v215[9];
        v220 = sub_21CB85C44();
        v221 = *(v220 - 8);
        if (!(*(v221 + 48))(&v210[v219], 1, v220))
        {
          (*(v221 + 8))(&v210[v219], v220);
        }
      }

      else
      {
        v257 = *(v210 + 4);

        v258 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v259 = v258[7];
        v260 = sub_21CB85C04();
        v261 = *(v260 - 8);
        if (!(*(v261 + 48))(&v210[v259], 1, v260))
        {
          (*(v261 + 8))(&v210[v259], v260);
        }

        v262 = v258[8];
        v263 = sub_21CB85BB4();
        v264 = *(v263 - 8);
        if (!(*(v264 + 48))(&v210[v262], 1, v263))
        {
          (*(v264 + 8))(&v210[v262], v263);
        }

        v265 = v258[9];
        v266 = sub_21CB85C44();
        v267 = *(v266 - 8);
        if (!(*(v267 + 48))(&v210[v265], 1, v266))
        {
          (*(v267 + 8))(&v210[v265], v266);
        }
      }

      v268 = &v180[v6[6]];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v269 = *(v268 + 1);

        v270 = *(v268 + 3);

        v271 = *(v268 + 5);

        v272 = *(v268 + 7);

        v273 = type metadata accessor for PMAccount.MockData(0);
        v274 = v273[8];
        v275 = sub_21CB80DD4();
        v276 = *(v275 - 8);
        v277 = *(v276 + 48);
        if (!v277(&v268[v274], 1, v275))
        {
          (*(v276 + 8))(&v268[v274], v275);
        }

        v278 = *&v268[v273[9]];

        v279 = *&v268[v273[10] + 8];

        v280 = *&v268[v273[11] + 8];

        v281 = v273[12];
        if (!v277(&v268[v281], 1, v275))
        {
          (*(v276 + 8))(&v268[v281], v275);
        }

        v282 = v273[15];
        v283 = sub_21CB85BB4();
        v284 = *(v283 - 8);
        if (!(*(v284 + 48))(&v268[v282], 1, v283))
        {
          (*(v284 + 8))(&v268[v282], v283);
        }

        v285 = v273[16];
        v286 = sub_21CB85C04();
        v287 = *(v286 - 8);
        v6 = v309;
        if (!(*(v287 + 48))(&v268[v285], 1, v286))
        {
          (*(v287 + 8))(&v268[v285], v286);
        }

        v288 = *&v268[v273[17] + 8];

        v289 = v273[18];
        v290 = sub_21CB85C44();
        v291 = *(v290 - 8);
        if (!(*(v291 + 48))(&v268[v289], 1, v290))
        {
          (*(v291 + 8))(&v268[v289], v290);
        }
      }

      else
      {
      }

      v292 = v6[7];
      goto LABEL_130;
    }
  }

  v294 = *(v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0) + 28));

  v295 = (v4 + v2[12]);
  v296 = *v295;

  v297 = v295[1];

  v298 = *(v4 + v2[13] + 8);

  return MEMORY[0x2821FE8E8](v1, v306 + v305, v307 | 7);
}

uint64_t sub_21CA724E0(uint64_t a1)
{
  v3 = *(*(type metadata accessor for PMMoveAccountToGroupPicker(0) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_21CA680BC(a1);
}

unint64_t sub_21CA72588()
{
  result = qword_27CDF6A58;
  if (!qword_27CDF6A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A40, L"6\a3");
    sub_21CA72640();
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A58);
  }

  return result;
}

unint64_t sub_21CA72640()
{
  result = qword_27CDF6A60;
  if (!qword_27CDF6A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A68, &qword_21CBC2530);
    sub_21CA726C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A60);
  }

  return result;
}

unint64_t sub_21CA726C4()
{
  result = qword_27CDF6A70;
  if (!qword_27CDF6A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A78, &qword_21CBC2538);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A70);
  }

  return result;
}

unint64_t sub_21CA7277C()
{
  result = qword_27CDF6A90;
  if (!qword_27CDF6A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A50, &qword_21CBC2528);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    type metadata accessor for PMMoveAccountToGroupPicker.Selection(255);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C7060F0(&qword_27CDF6A80, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6A98, &qword_21CBC2540);
    sub_21CB83374();
    sub_21C7060F0(&qword_27CDF6AA0, MEMORY[0x277CDDF40]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6A90);
  }

  return result;
}

uint64_t sub_21CA729E8()
{
  v2 = *(type metadata accessor for PMMoveAccountToGroupPicker(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21C702EFC;

  return sub_21CA6C13C(v4, v5, v0 + v3);
}

uint64_t sub_21CA72AC4(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_21CB85C44();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B20, &unk_21CBC2680);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v37 - v21;
  v24 = *(v23 + 56);
  sub_21CA6F9A4(v39, &v37 - v21, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  sub_21CA6F9A4(v40, &v22[v24], type metadata accessor for PMMoveAccountToGroupPicker.Selection);
  v25 = *(v7 + 48);
  v26 = v25(v22, 2, v6);
  if (!v26)
  {
    v39 = v5;
    v40 = v10;
    v28 = v37;
    v27 = v38;
    sub_21CA6F9A4(v22, v18, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    if (v25(&v22[v24], 2, v6))
    {
      sub_21C6EA794(v18, &unk_27CDF20B0, &unk_21CBA0090);
      goto LABEL_9;
    }

    v30 = *(v11 + 48);
    sub_21C716934(v18, v14, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C716934(&v22[v24], &v14[v30], &unk_27CDF20B0, &unk_21CBA0090);
    v31 = v28;
    v32 = *(v28 + 48);
    if (v32(v14, 1, v27) == 1)
    {
      if (v32(&v14[v30], 1, v27) == 1)
      {
        sub_21C6EA794(v14, &unk_27CDF20B0, &unk_21CBA0090);
        goto LABEL_8;
      }
    }

    else
    {
      v33 = v40;
      sub_21C6EDBAC(v14, v40, &unk_27CDF20B0, &unk_21CBA0090);
      if (v32(&v14[v30], 1, v27) != 1)
      {
        v34 = v39;
        (*(v31 + 32))(v39, &v14[v30], v27);
        sub_21C7060F0(&qword_27CDEAC48, MEMORY[0x277D49978]);
        v35 = sub_21CB85574();
        v36 = *(v31 + 8);
        v36(v34, v27);
        v36(v33, v27);
        sub_21C6EA794(v14, &unk_27CDF20B0, &unk_21CBA0090);
        if (v35)
        {
          goto LABEL_8;
        }

LABEL_17:
        sub_21CA70138(v22, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
        return 0;
      }

      (*(v31 + 8))(v33, v27);
    }

    sub_21C6EA794(v14, &qword_27CDEAC40, &qword_21CBA1A40);
    goto LABEL_17;
  }

  if (v26 == 1)
  {
    if (v25(&v22[v24], 2, v6) != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_21CA70138(v22, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    return 1;
  }

  if (v25(&v22[v24], 2, v6) == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_21C6EA794(v22, &qword_27CDF6B20, &unk_21CBC2680);
  return 0;
}

BOOL sub_21CA7301C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v42 = (&v41 - v9);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC50, &unk_21CBA00A0);
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = &v41 - v11;
  v12 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB700, &unk_21CBA24F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v41 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B28, &qword_21CBC2690);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v41 - v23;
  v26 = *(v25 + 56);
  v45 = a1;
  sub_21C6EDBAC(a1, &v41 - v23, &qword_27CDEB700, &unk_21CBA24F0);
  v46 = a2;
  sub_21C6EDBAC(a2, &v24[v26], &qword_27CDEB700, &unk_21CBA24F0);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) != 1)
  {
    sub_21C6EDBAC(v24, v20, &qword_27CDEB700, &unk_21CBA24F0);
    if (v27(&v24[v26], 1, v12) != 1)
    {
      sub_21CA70198(&v24[v26], v16, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
      v31 = sub_21CA61968(v20, v16);
      sub_21CA70138(v16, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
      sub_21CA70138(v20, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
      sub_21C6EA794(v24, &qword_27CDEB700, &unk_21CBA24F0);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_21CA70138(v20, type metadata accessor for PMMoveAccountToGroupAlert.Configuration);
LABEL_6:
    v28 = &qword_27CDF6B28;
    v29 = &qword_21CBC2690;
    v30 = v24;
LABEL_14:
    sub_21C6EA794(v30, v28, v29);
    return 0;
  }

  if (v27(&v24[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(v24, &qword_27CDEB700, &unk_21CBA24F0);
LABEL_8:
  v32 = *(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20);
  v33 = v44;
  v34 = *(v43 + 48);
  sub_21C6EDBAC(v45 + v32, v44, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C6EDBAC(v46 + v32, v33 + v34, &unk_27CDEBE60, &unk_21CB9FF40);
  v35 = v48;
  v36 = *(v47 + 48);
  if (v36(v33, 1, v48) == 1)
  {
    if (v36(v33 + v34, 1, v35) == 1)
    {
      sub_21C6EA794(v33, &unk_27CDEBE60, &unk_21CB9FF40);
      return 1;
    }

    goto LABEL_13;
  }

  v37 = v42;
  sub_21C6EDBAC(v33, v42, &unk_27CDEBE60, &unk_21CB9FF40);
  if (v36(v33 + v34, 1, v35) == 1)
  {
    sub_21CA70138(v37, type metadata accessor for PMAccount);
LABEL_13:
    v28 = &qword_27CDEAC50;
    v29 = &unk_21CBA00A0;
    v30 = v33;
    goto LABEL_14;
  }

  v39 = v41;
  sub_21CA70198(v33 + v34, v41, type metadata accessor for PMAccount);
  v40 = static PMAccount.== infix(_:_:)(v37, v39);
  sub_21CA70138(v39, type metadata accessor for PMAccount);
  sub_21CA70138(v37, type metadata accessor for PMAccount);
  sub_21C6EA794(v33, &unk_27CDEBE60, &unk_21CB9FF40);
  return v40;
}

unint64_t sub_21CA735E4()
{
  result = qword_27CDF6AF8;
  if (!qword_27CDF6AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6AF0, &unk_21CBC2640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    type metadata accessor for PMMoveAccountToGroupPicker.Selection(255);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C7060F0(&qword_27CDF6A80, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF4C98, &qword_27CDF4C90, &unk_21CBBC650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6AF8);
  }

  return result;
}

uint64_t sub_21CA7375C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for PMMoveAccountToGroupPicker(0) - 8) + 80);

  return sub_21CA6D5D4(a1, a2);
}

unint64_t sub_21CA737DC()
{
  result = qword_27CDF6B30;
  if (!qword_27CDF6B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6B38, &qword_21CBC2698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69E0, &qword_21CBC2378);
    type metadata accessor for PMAccount(255);
    type metadata accessor for PMNewGroupFlow(255);
    sub_21CA6EDD4();
    sub_21C7060F0(&qword_27CDEB2C8, type metadata accessor for PMAccount);
    sub_21C7060F0(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF69F0, &unk_21CBC2380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB7D0, &unk_21CBA25B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA5B8, &qword_21CB9E6B8);
    sub_21CA6EF34();
    swift_getOpaqueTypeConformance2();
    sub_21CA6F154();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6B30);
  }

  return result;
}

uint64_t sub_21CA739E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1(0);
  }

  return result;
}

uint64_t sub_21CA73A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6C0, &qword_21CBA2490) - 8);
  v6 = v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 8);
  return sub_21CA6FA0C(a1, *v6, a2);
}

uint64_t sub_21CA73AC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
  swift_beginAccess();
  return sub_21CA77220(v5 + v3, a1, type metadata accessor for PMMultipleAccountsDetailsModel.State);
}

uint64_t sub_21CA73BA4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
  swift_beginAccess();
  sub_21CA7704C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21CA73C10()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
  sub_21CB810D4();

  v1 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__subscriptions;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_21CA73CD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__subscriptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21CA73D98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__subscriptions;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_21C7A230C(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21CA73EE8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__subscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void *sub_21CA73F58()
{
  swift_getKeyPath();
  sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
  sub_21CB810D4();

  v1 = v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration;
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration);
  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 8);
  sub_21C7FB8AC(v2, *(v1 + 8), *(v1 + 16));
  return v2;
}

void sub_21CA74024(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = (v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration);
  v9 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration);
  v8 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 8);
  v10 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 16);
  if (!v9)
  {
    if (!a1)
    {
      v14 = 0;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v11 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration);

  v12 = v10;
  if ((sub_21C714F88(v9, a1) & 1) == 0 || (sub_21C967788(v8, a2) & 1) == 0)
  {
    sub_21C713140(v9, v8, v10);
    goto LABEL_13;
  }

  sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
  v13 = sub_21CB85DD4();
  sub_21C713140(v9, v8, v10);
  if ((v13 & 1) == 0)
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
    sub_21CB810C4();
    sub_21C713140(a1, a2, a3);

    return;
  }

  v14 = *v7;
  v8 = v7[1];
  v10 = v7[2];
LABEL_9:
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;

  sub_21C713140(v14, v8, v10);
}

uint64_t sub_21CA7424C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2);
  v22 = v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v26 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__accountsState;
  v10 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__accountsState);
  v11 = qword_27CDEA4C0;

  if (v11 != -1)
  {
    swift_once();
  }

  v25 = qword_27CE18778;
  sub_21CB86544();
  sub_21C7072A8(v10, v27);

  swift_beginAccess();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590);
  sub_21CB81E04();

  v12 = *(v6 + 8);
  v19[1] = v6 + 8;
  v20 = v12;
  v12(v9, v5);
  swift_getKeyPath();
  v19[0] = v5;
  v27 = v1;
  sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
  sub_21CB810D4();

  v27 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v27 = v1;
  swift_getKeyPath();
  sub_21CB810E4();

  v13 = *(v1 + v26);

  sub_21CB86544();
  sub_21C7072A8(v13, v27);

  swift_beginAccess();
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  v14 = v19[0];
  sub_21CB81E04();

  v20(v9, v14);
  swift_getKeyPath();
  v27 = v1;
  sub_21CB810D4();

  v27 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v27 = v1;
  swift_getKeyPath();
  sub_21CB810E4();

  v15 = *(v1 + v26);

  sub_21CB86544();
  sub_21C7072A8(v15, v27);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v16 = v22;
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC80, &qword_27CDEAC58, &qword_21CBA0EC0);
  v17 = v24;
  sub_21CB81E04();

  (*(v23 + 8))(v16, v17);
  swift_getKeyPath();
  v27 = v1;
  sub_21CB810D4();

  v27 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v27 = v1;
  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21CA74988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__accountsState);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v3, v6);

  sub_21C8329EC(a2);
}

void sub_21CA74A4C(uint64_t a1)
{
  v77 = type metadata accessor for PMAccount.MockData(0);
  v3 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v76 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v81 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v81);
  v8 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v75 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v75 - v13;
  v80 = type metadata accessor for PMAccount(0);
  v15 = *(*(v80 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v80);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v75 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v79 = &v75 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v75 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v75 - v26;
  MEMORY[0x28223BE20](v25);
  v31 = &v75 - v30;
  v78 = v1;
  v32 = *(v1 + 24);
  if (!(v32 >> 62))
  {
    v43 = v29;
    v44 = *(a1 + 16);
    v45 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
    v76 = v28;
    v77 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__accountsState;

    swift_beginAccess();
    if (!v44)
    {
      a1 = MEMORY[0x277D84F90];
LABEL_35:
      sub_21C8D75F0(v32);
      goto LABEL_59;
    }

    v75 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v46 = a1 + v75;
    a1 = MEMORY[0x277D84F90];
    v81 = *(v43 + 72);
    v79 = v45;
    while (1)
    {
      sub_21CA77220(v46, v19, type metadata accessor for PMAccount);
      v47 = *v19;
      v48 = v19[1];
      swift_getKeyPath();
      v82 = v32;
      sub_21CA77288(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
      sub_21CB810D4();

      v49 = *(v32 + 64);
      if (*(v49 + 16))
      {
        v50 = *(v32 + 64);

        v51 = sub_21CB10A3C(v47, v48);
        if (v52)
        {
          v53 = *(v49 + 56) + 32 * v51;
          v54 = *(v53 + 8);
          LODWORD(v80) = *(v53 + 16);
          v55 = *(v53 + 24);

          v56 = v55;

          v57 = *(v78 + v77);
          v58 = qword_27CDEA4C0;

          if (v58 != -1)
          {
            swift_once();
          }

          sub_21CB86544();
          sub_21C7072A8(v57, v82);

          swift_getKeyPath();
          swift_getKeyPath();
          sub_21CB81DB4();

          if ((v82 & 1) != 0 || v80 != 1)
          {
            v59 = v76;
            sub_21CA772F0(v19, v76, type metadata accessor for PMAccount);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v84 = a1;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21C7B0C4C(0, *(a1 + 16) + 1, 1);
              a1 = v84;
            }

            v62 = *(a1 + 16);
            v61 = *(a1 + 24);
            if (v62 >= v61 >> 1)
            {
              sub_21C7B0C4C(v61 > 1, v62 + 1, 1);
              a1 = v84;
            }

            *(a1 + 16) = v62 + 1;
            sub_21CA772F0(v59, a1 + v75 + v62 * v81, type metadata accessor for PMAccount);
            goto LABEL_22;
          }
        }

        else
        {
        }
      }

      sub_21C719780(v19, type metadata accessor for PMAccount);
LABEL_22:
      v46 += v81;
      if (!--v44)
      {
        goto LABEL_35;
      }
    }
  }

  if (v32 >> 62 == 1)
  {
    return;
  }

  if (v32 != 0x8000000000000000)
  {
    if (v32 == 0x8000000000000008)
    {
      v33 = *(a1 + 16);
      if (v33)
      {
        v79 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v34 = a1 + v79;
        v35 = *(v29 + 72);
        a1 = MEMORY[0x277D84F90];
        v75 = v35;
        do
        {
          sub_21CA77220(v34, v31, type metadata accessor for PMAccount);
          sub_21CA77220(&v31[*(v80 + 24)], v10, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v36 = v76;
            sub_21CA772F0(v10, v76, type metadata accessor for PMAccount.MockData);
            sub_21C6EDBAC(v36 + *(v77 + 60), v14, &qword_27CDEAF58, &unk_21CBA0980);
            sub_21C719780(v36, type metadata accessor for PMAccount.MockData);
          }

          else
          {
            v37 = *v10;
            sub_21CB85BD4();
          }

          v38 = sub_21CB85BB4();
          if ((*(*(v38 - 8) + 48))(v14, 1, v38) == 1)
          {
            sub_21C719780(v31, type metadata accessor for PMAccount);
            sub_21C6EA794(v14, &qword_27CDEAF58, &unk_21CBA0980);
          }

          else
          {
            sub_21C6EA794(v14, &qword_27CDEAF58, &unk_21CBA0980);
            sub_21CA772F0(v31, v27, type metadata accessor for PMAccount);
            v39 = swift_isUniquelyReferenced_nonNull_native();
            v83 = a1;
            if ((v39 & 1) == 0)
            {
              sub_21C7B0C4C(0, *(a1 + 16) + 1, 1);
              a1 = v83;
            }

            v41 = *(a1 + 16);
            v40 = *(a1 + 24);
            if (v41 >= v40 >> 1)
            {
              sub_21C7B0C4C(v40 > 1, v41 + 1, 1);
              a1 = v83;
            }

            *(a1 + 16) = v41 + 1;
            v42 = a1 + v79 + v41 * v75;
            v35 = v75;
            sub_21CA772F0(v27, v42, type metadata accessor for PMAccount);
          }

          v34 += v35;
          --v33;
        }

        while (v33);
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    v63 = *(a1 + 16);
    if (!v63)
    {
LABEL_58:
      a1 = MEMORY[0x277D84F90];
      goto LABEL_59;
    }

    v64 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v65 = a1 + v64;
    a1 = MEMORY[0x277D84F90];
    v66 = *(v29 + 72);
    while (1)
    {
      sub_21CA77220(v65, v24, type metadata accessor for PMAccount);
      sub_21CA77220(&v24[*(v80 + 24)], v8, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v67 = v76;
        sub_21CA772F0(v8, v76, type metadata accessor for PMAccount.MockData);
        v68 = *(v67 + *(v77 + 56));
        v69 = v68;
        sub_21C719780(v67, type metadata accessor for PMAccount.MockData);
        if (v68)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v69 = *v8;
        v70 = [*v8 totpGenerators];
        sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
        v71 = sub_21CB85824();

        if (v71 >> 62)
        {
          if (sub_21CB85FA4())
          {
LABEL_47:
            if ((v71 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CF15BD0](0, v71);
              swift_unknownObjectRelease();
            }

            else if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

LABEL_50:

            sub_21CA772F0(v24, v79, type metadata accessor for PMAccount);
            v72 = swift_isUniquelyReferenced_nonNull_native();
            v83 = a1;
            if ((v72 & 1) == 0)
            {
              sub_21C7B0C4C(0, *(a1 + 16) + 1, 1);
              a1 = v83;
            }

            v74 = *(a1 + 16);
            v73 = *(a1 + 24);
            if (v74 >= v73 >> 1)
            {
              sub_21C7B0C4C(v73 > 1, v74 + 1, 1);
              a1 = v83;
            }

            *(a1 + 16) = v74 + 1;
            sub_21CA772F0(v79, a1 + v64 + v74 * v66, type metadata accessor for PMAccount);
            goto LABEL_41;
          }
        }

        else if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }
      }

      sub_21C719780(v24, type metadata accessor for PMAccount);
LABEL_41:
      v65 += v66;
      if (!--v63)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_59:
  sub_21CA75504(a1);
}

uint64_t sub_21CA75504(uint64_t a1)
{
  v107 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v108 = (&v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  v4 = *(*(v109 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v109);
  v105 = (&v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v102 = (&v99 - v7);
  v118 = type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  v8 = *(*(v118 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v118);
  v114 = (&v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v117 = (&v99 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v111 = &v99 - v14;
  v113 = sub_21CB85C44();
  v112 = *(v113 - 8);
  v15 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v100 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for PMAccount(0);
  v17 = *(*(v106 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v106);
  v104 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v116 = &v99 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v103 = (&v99 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v115 = (&v99 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v120 = &v99 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = (&v99 - v29);
  v31 = *(a1 + 16);
  v101 = a1;
  v110 = v28;
  if (v31)
  {
    v32 = 0;
    v33 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v123 = *(v28 + 72);
    v119 = v33;
    v121 = a1 + v33;
    v34 = MEMORY[0x277D84F90];
    do
    {
      v35 = v31;
      sub_21CA77220(v121 + v123 * v32, v30, type metadata accessor for PMAccount);
      v36 = *(v122 + 16);
      if (!*(v36 + 16))
      {
        goto LABEL_3;
      }

      v37 = *v30;
      v38 = v30[1];
      v39 = *(v36 + 40);
      sub_21CB86484();
      sub_21CB854C4();
      v40 = sub_21CB864D4();
      v41 = -1 << *(v36 + 32);
      v42 = v40 & ~v41;
      if ((*(v36 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        v43 = ~v41;
        while (1)
        {
          v44 = (*(v36 + 48) + 16 * v42);
          v45 = *v44 == v37 && v44[1] == v38;
          if (v45 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v42 = (v42 + 1) & v43;
          if (((*(v36 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_21CA772F0(v30, v120, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v34 + 16) + 1, 1);
          v34 = v124;
        }

        v31 = v35;
        v48 = *(v34 + 16);
        v47 = *(v34 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_21C7B0C4C(v47 > 1, v48 + 1, 1);
          v34 = v124;
        }

        *(v34 + 16) = v48 + 1;
        sub_21CA772F0(v120, v34 + v119 + v48 * v123, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_3:
        sub_21C719780(v30, type metadata accessor for PMAccount);
        v31 = v35;
      }

      ++v32;
    }

    while (v32 != v31);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v49 = *(v34 + 16);
  if (v49)
  {
    if (v49 == 1)
    {
      v50 = v115;
      sub_21CA77220(v34 + ((*(v110 + 80) + 32) & ~*(v110 + 80)), v115, type metadata accessor for PMAccount);

      swift_getKeyPath();
      v51 = v122;
      v126 = v122;
      sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
      sub_21CB810D4();

      v52 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
      swift_beginAccess();
      v53 = v51 + v52;
      v54 = v114;
      sub_21CA77220(v53, v114, type metadata accessor for PMMultipleAccountsDetailsModel.State);
      v55 = &qword_27CDED000;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v56 = *v54;
        swift_getKeyPath();
        v124 = v56;
        sub_21CA77288(&qword_27CDED418, type metadata accessor for PMAppAccountDetailsModel);
        sub_21CB810D4();

        v57 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
        swift_beginAccess();
        v58 = v56 + v57;
        v59 = v102;
        sub_21CA77220(v58, v102, type metadata accessor for PMAppAccountDetailsModel.State);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v60 = v103;
          sub_21CA772F0(v59, v103, type metadata accessor for PMAccount);
        }

        else
        {
          v77 = *v59;
          swift_getKeyPath();
          swift_getKeyPath();
          v60 = v103;
          sub_21CB81DB4();

          v55 = &qword_27CDED000;
        }

        v78 = _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(v60, v50);

        sub_21C719780(v60, type metadata accessor for PMAccount);
        if (v78)
        {
          v68 = type metadata accessor for PMAccount;
          v69 = v50;
          return sub_21C719780(v69, v68);
        }
      }

      else
      {
        sub_21C719780(v54, type metadata accessor for PMMultipleAccountsDetailsModel.State);
      }

      v79 = v116;
      sub_21CA77220(v50, v116, type metadata accessor for PMAccount);
      v80 = type metadata accessor for PMAppAccountDetailsModel(0);
      v81 = *(v80 + 48);
      v82 = *(v80 + 52);
      v83 = swift_allocObject();
      v84 = v83 + v55[126];
      sub_21CB81104();
      v85 = v108;
      sub_21CA77220(v79 + *(v106 + 24), v108, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C719780(v85, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v86 = *v85;
        v87 = [*v85 credentialTypes];

        if (v87 == 4)
        {
          sub_21CA772F0(v116, v83 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state, type metadata accessor for PMAccount);
          swift_storeEnumTagMultiPayload();
LABEL_40:
          v95 = v117;
          *v117 = v83;
          swift_storeEnumTagMultiPayload();
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          v97 = v122;
          *(&v99 - 2) = v122;
          *(&v99 - 1) = v95;
          v125 = v97;

          sub_21CB810C4();

          sub_21C719780(v50, type metadata accessor for PMAccount);
          v68 = type metadata accessor for PMMultipleAccountsDetailsModel.State;
          v69 = v95;
          return sub_21C719780(v69, v68);
        }
      }

      v88 = v116;
      v89 = v104;
      sub_21CA77220(v116, v104, type metadata accessor for PMAccount);
      v90 = type metadata accessor for PMCombinedAccountDetailsModel(0);
      v91 = *(v90 + 48);
      v92 = *(v90 + 52);
      swift_allocObject();
      v93 = sub_21CA4B79C(v89);
      sub_21C719780(v88, type metadata accessor for PMAccount);
      v94 = v105;
      *v105 = v93;
      swift_storeEnumTagMultiPayload();
      sub_21CA772F0(v94, v83 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state, type metadata accessor for PMAppAccountDetailsModel.State);
      goto LABEL_40;
    }

    v65 = v117;
    *v117 = v34;
    swift_storeEnumTagMultiPayload();
    v66 = swift_getKeyPath();
    MEMORY[0x28223BE20](v66);
    v67 = v122;
    *(&v99 - 2) = v122;
    *(&v99 - 1) = v65;
    v126 = v67;
    sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
    sub_21CB810C4();

    v68 = type metadata accessor for PMMultipleAccountsDetailsModel.State;
    v69 = v65;
  }

  else
  {

    v61 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel_groupID;
    v62 = v111;
    sub_21C6EDBAC(v122 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel_groupID, v111, &unk_27CDF20B0, &unk_21CBA0090);
    v63 = v112;
    v64 = v113;
    if ((*(v112 + 48))(v62, 1, v113) == 1)
    {
      sub_21C6EA794(v62, &unk_27CDF20B0, &unk_21CBA0090);
    }

    else
    {
      v70 = v100;
      v71 = (*(v63 + 32))(v100, v62, v64);
      MEMORY[0x28223BE20](v71);
      *(&v99 - 2) = v70;
      v72 = v101;

      v31 = *(sub_21CAE8024(sub_21CA772D0, (&v99 - 4), v72) + 16);

      (*(v63 + 8))(v70, v64);
    }

    v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE90, &qword_21CBC2AD0) + 48);
    v74 = v117;
    *v117 = v31 == 0;
    v75 = v122;
    sub_21C6EDBAC(v122 + v61, v74 + v73, &unk_27CDF20B0, &unk_21CBA0090);
    swift_storeEnumTagMultiPayload();
    v76 = swift_getKeyPath();
    MEMORY[0x28223BE20](v76);
    *(&v99 - 2) = v75;
    *(&v99 - 1) = v74;
    v126 = v75;
    sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
    sub_21CB810C4();

    v68 = type metadata accessor for PMMultipleAccountsDetailsModel.State;
    v69 = v74;
  }

  return sub_21C719780(v69, v68);
}

unint64_t sub_21CA763D8(uint64_t a1, int a2)
{
  v30 = a2;
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = (&v27 - v10);
  v12 = *(v2 + 24);
  if (!(v12 >> 62))
  {
    v27 = v2;
    v13 = *(a1 + 16);
    v31 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;

    swift_beginAccess();
    if (v13)
    {
      v14 = *(v5 + 72);
      v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v15 = a1 + v28;
      v16 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_21CA77220(v15, v11, type metadata accessor for PMAccount);
        v17 = *v11;
        v18 = v11[1];
        swift_getKeyPath();
        v32 = v12;
        sub_21CA77288(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
        sub_21CB810D4();

        v19 = *(v12 + 64);
        if (*(v19 + 16))
        {
          v20 = *(v12 + 64);

          v21 = sub_21CB10A3C(v17, v18);
          if (v22)
          {
            v23 = *(*(v19 + 56) + 32 * v21 + 16);

            if ((v30 & 1) != 0 || !v23)
            {
              sub_21CA772F0(v11, v29, type metadata accessor for PMAccount);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v33 = v16;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_21C7B0C4C(0, *(v16 + 16) + 1, 1);
                v16 = v33;
              }

              v26 = *(v16 + 16);
              v25 = *(v16 + 24);
              if (v26 >= v25 >> 1)
              {
                sub_21C7B0C4C(v25 > 1, v26 + 1, 1);
                v16 = v33;
              }

              *(v16 + 16) = v26 + 1;
              sub_21CA772F0(v29, v16 + v28 + v26 * v14, type metadata accessor for PMAccount);
              goto LABEL_6;
            }
          }

          else
          {
          }
        }

        sub_21C719780(v11, type metadata accessor for PMAccount);
LABEL_6:
        v15 += v14;
        if (!--v13)
        {
          goto LABEL_17;
        }
      }
    }

    v16 = MEMORY[0x277D84F90];
LABEL_17:
    sub_21CA75504(v16);

    return sub_21C8D75F0(v12);
  }

  return result;
}

uint64_t sub_21CA766E8(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v42 = a1;
  v2 = sub_21CB85C44();
  v45 = *(v2 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v5 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v7 = &v40 - v6;
  v8 = type metadata accessor for PMAccount.MockData(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAccount.Storage(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v41 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v40 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v40 - v26;
  v28 = type metadata accessor for PMAccount(0);
  sub_21CA77220(v42 + *(v28 + 24), v15, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CA772F0(v15, v11, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v11[*(v8 + 72)], v25, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719780(v11, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v29 = *v15;
    sub_21CB85B94();
  }

  sub_21C7C3490(v25, v27);
  v30 = v45;
  (*(v45 + 16))(v22, v44, v2);
  (*(v30 + 56))(v22, 0, 1, v2);
  v31 = *(v43 + 48);
  sub_21C6EDBAC(v27, v7, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v22, &v7[v31], &unk_27CDF20B0, &unk_21CBA0090);
  v32 = *(v30 + 48);
  if (v32(v7, 1, v2) != 1)
  {
    v34 = v41;
    sub_21C6EDBAC(v7, v41, &unk_27CDF20B0, &unk_21CBA0090);
    if (v32(&v7[v31], 1, v2) != 1)
    {
      v35 = v45;
      v36 = &v7[v31];
      v37 = v40;
      (*(v45 + 32))(v40, v36, v2);
      sub_21CA77288(&qword_27CDEAC48, MEMORY[0x277D49978]);
      v33 = sub_21CB85574();
      v38 = *(v35 + 8);
      v38(v37, v2);
      sub_21C6EA794(v22, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v27, &unk_27CDF20B0, &unk_21CBA0090);
      v38(v41, v2);
      sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
      return v33 & 1;
    }

    sub_21C6EA794(v22, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v27, &unk_27CDF20B0, &unk_21CBA0090);
    (*(v45 + 8))(v34, v2);
    goto LABEL_9;
  }

  sub_21C6EA794(v22, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EA794(v27, &unk_27CDF20B0, &unk_21CBA0090);
  if (v32(&v7[v31], 1, v2) != 1)
  {
LABEL_9:
    sub_21C6EA794(v7, &qword_27CDEAC40, &qword_21CBA1A40);
    v33 = 0;
    return v33 & 1;
  }

  sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
  v33 = 1;
  return v33 & 1;
}

uint64_t sub_21CA76CB0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21CA74A4C(v1);
  }

  return result;
}

uint64_t sub_21CA76D10(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 24) >> 62 == 1)
    {
      sub_21CA75504(v1);
    }
  }

  return result;
}

uint64_t sub_21CA76D80(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__accountsState);
      v5 = qword_27CDEA4C0;

      if (v5 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7072A8(v4, v7);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v6 = v7;
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    sub_21CA763D8(v6, v1);
  }

  return result;
}

uint64_t sub_21CA76F00()
{
  v1 = *(v0 + 16);

  sub_21C8D75F0(*(v0 + 24));
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel_groupID, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C719780(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state, type metadata accessor for PMMultipleAccountsDetailsModel.State);
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__subscriptions);

  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__accountsState);

  sub_21C713140(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration), *(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 8), *(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 16));
  v4 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel___observationRegistrar;
  v5 = sub_21CB81114();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_21CA76FEC()
{
  sub_21CA76F00();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CA7704C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA770B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE90, &qword_21CBC2AD0) + 48);
  *v7 = 0;
  v9 = sub_21CB85C44();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  swift_storeEnumTagMultiPayload();
  *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__subscriptions) = MEMORY[0x277D84FA0];
  v10 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__accountsState;
  *(v3 + v10) = swift_getKeyPath();
  v11 = (v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  sub_21CB81104();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_21C6EDBAC(a3, v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel_groupID, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C940A00(a2);
  sub_21CA7424C();
  sub_21C6EA794(a3, &unk_27CDF20B0, &unk_21CBA0090);
  return v3;
}

uint64_t sub_21CA77220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA77288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CA772F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21CA77374()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v1;
  v4[1] = v2;
  v4[2] = v3;
  sub_21C7FB8AC(v1, v2, v3);
  sub_21C713140(v5, v6, v7);
}

id sub_21CA77434@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C706138(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration);
  v5 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 8);
  v6 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 16);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_21C7FB8AC(v4, v5, v6);
}

void sub_21CA774F4(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  sub_21C7FB8AC(*a1, v3, v4);
  sub_21CA74024(v2, v3, v4);
}

uint64_t sub_21CA77544@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
  v93 = *(v2 - 8);
  v3 = *(v93 + 64);
  MEMORY[0x28223BE20](v2);
  v92 = &v85 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BB0, &qword_21CBC29A0);
  v5 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v95 = &v85 - v6;
  v89 = sub_21CB82FD4();
  v88 = *(v89 - 8);
  v7 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BB8, &qword_21CBC29A8);
  v96 = *(v98 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v94 = &v85 - v10;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BC0, &qword_21CBC29B0);
  v11 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106);
  v107 = &v85 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BC8, &qword_21CBC29B8);
  v13 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  *&v103 = &v85 - v14;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BD0, &qword_21CBC29C0);
  v15 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  *&v104 = &v85 - v16;
  v17 = type metadata accessor for PMMultipleAccountsDetailsView();
  v97 = *(v17 - 8);
  v18 = *(v97 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v99 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BD8, &unk_21CBC29C8);
  v91 = *(v102 - 8);
  v19 = *(v91 + 64);
  MEMORY[0x28223BE20](v102);
  v90 = &v85 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v86 = *(v21 - 8);
  v22 = *(v86 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v85 - v25;
  v27 = type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (&v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = v2;
  v31 = v1;
  sub_21CB85084();
  v32 = v110;
  swift_getKeyPath();
  *&v110 = v32;
  sub_21C706138(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel);
  sub_21CB810D4();

  v33 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
  swift_beginAccess();
  sub_21CA7A4A4(v32 + v33, v30, type metadata accessor for PMMultipleAccountsDetailsModel.State);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = *v30;

      sub_21CB85084();
      v36 = *(v110 + 24);
      sub_21C940A00(v36);

      KeyPath = swift_getKeyPath();
      v38 = swift_getKeyPath();
      *&v110 = v35;
      *(&v110 + 1) = KeyPath;
      v99 = v35;
      *&v111 = v36;
      *(&v111 + 1) = v38;
      LOBYTE(v112) = 1;
      v39 = v88;
      v40 = v87;
      v41 = v89;
      (*(v88 + 104))(v87, *MEMORY[0x277CDDDC0], v89);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C28, &qword_21CBC2A60);
      v100 = sub_21CA7A114();
      v43 = v94;
      sub_21CB84684();
      (*(v39 + 8))(v40, v41);

      sub_21C8D75F0(v36);

      v44 = v96;
      v45 = v98;
      (*(v96 + 16))(v103, v43, v98);
      swift_storeEnumTagMultiPayload();
      v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C18, &qword_21CBC2A58);
      v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0560, &qword_21CBAEF20);
      v48 = sub_21C6EADEC(&qword_27CDF6C20, &qword_27CDF6C18, &qword_21CBC2A58);
      v49 = sub_21C8F0690();
      *&v110 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
      *(&v110 + 1) = v49;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v110 = v46;
      *(&v110 + 1) = v47;
      *&v111 = v48;
      *(&v111 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      *&v110 = v42;
      *(&v110 + 1) = v100;
      swift_getOpaqueTypeConformance2();
      v51 = v104;
      sub_21CB83494();
      sub_21C6EDBAC(v51, v107, &qword_27CDF6BD0, &qword_21CBC29C0);
      swift_storeEnumTagMultiPayload();
      sub_21CA79F84();
      sub_21CA7A284();
      sub_21CB83494();

      sub_21C6EA794(v51, &qword_27CDF6BD0, &qword_21CBC29C0);
      return (*(v44 + 8))(v43, v45);
    }

    else
    {
      sub_21CA79090(*v30, &v110);

      v71 = v110;
      v72 = BYTE1(v111);
      v73 = v111;
      *&v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BE0, &unk_21CBC2A00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
      sub_21CA79C98();
      v74 = sub_21C8F0690();
      v113 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
      v114 = v74;
      swift_getOpaqueTypeConformance2();
      v75 = v95;
      sub_21CB84894();
      sub_21CA79E2C(v71, *(&v71 + 1), v73, v72);
      v76 = v92;
      v77 = v100;
      sub_21CB85094();
      swift_getKeyPath();
      sub_21CB850B4();

      (*(v93 + 8))(v76, v77);
      v103 = v111;
      v104 = v110;
      v78 = v112;
      v79 = v99;
      sub_21CA7A4A4(v31, v99, type metadata accessor for PMMultipleAccountsDetailsView);
      v80 = (*(v97 + 80) + 16) & ~*(v97 + 80);
      v81 = swift_allocObject();
      sub_21CA79E48(v79, v81 + v80);
      v82 = v107;
      v83 = v75 + *(v108 + 36);
      v84 = v103;
      *v83 = v104;
      *(v83 + 16) = v84;
      *(v83 + 32) = v78;
      *(v83 + 40) = &unk_21CBC2A50;
      *(v83 + 48) = v81;
      sub_21C6EDBAC(v75, v82, &qword_27CDF6BB0, &qword_21CBC29A0);
      swift_storeEnumTagMultiPayload();
      sub_21CA79F84();
      sub_21CA7A284();
      sub_21CB83494();
      return sub_21C6EA794(v75, &qword_27CDF6BB0, &qword_21CBC29A0);
    }
  }

  else
  {
    v53 = *v30;
    v54 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE90, &qword_21CBC2AD0) + 48);
    v85 = v26;
    sub_21C7C3490(v54, v26);
    v55 = v31;
    v56 = v99;
    sub_21CA7A4A4(v55, v99, type metadata accessor for PMMultipleAccountsDetailsView);
    sub_21C6EDBAC(v26, v23, &unk_27CDF20B0, &unk_21CBA0090);
    v57 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v58 = (v18 + *(v86 + 80) + v57) & ~*(v86 + 80);
    v59 = swift_allocObject();
    sub_21CA79E48(v56, v59 + v57);
    sub_21C7C3490(v23, v59 + v58);
    *(v59 + v58 + v22) = v53;
    *&v110 = sub_21CA7A3A4;
    *(&v110 + 1) = v59;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C18, &qword_21CBC2A58);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
    v62 = sub_21C6EADEC(&qword_27CDF6C20, &qword_27CDF6C18, &qword_21CBC2A58);
    v63 = sub_21C8F0690();
    v113 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v114 = v63;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = v90;
    sub_21CB84894();

    v66 = v91;
    v67 = v102;
    (*(v91 + 16))(v103, v65, v102);
    swift_storeEnumTagMultiPayload();
    *&v110 = v60;
    *(&v110 + 1) = v61;
    *&v111 = v62;
    *(&v111 + 1) = v64;
    swift_getOpaqueTypeConformance2();
    v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C28, &qword_21CBC2A60);
    v69 = sub_21CA7A114();
    *&v110 = v68;
    *(&v110 + 1) = v69;
    swift_getOpaqueTypeConformance2();
    v70 = v104;
    sub_21CB83494();
    sub_21C6EDBAC(v70, v107, &qword_27CDF6BD0, &qword_21CBC29C0);
    swift_storeEnumTagMultiPayload();
    sub_21CA79F84();
    sub_21CA7A284();
    sub_21CB83494();
    sub_21C6EA794(v70, &qword_27CDF6BD0, &qword_21CBC29C0);
    (*(v66 + 8))(v65, v67);
    return sub_21C6EA794(v85, &unk_27CDF20B0, &unk_21CBA0090);
  }
}

uint64_t sub_21CA7841C@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v65 = a2;
  v55 = a1;
  v70 = a3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C60, &qword_21CBC2AD8);
  v3 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v69 = &v53 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C68, &qword_21CBC2AE0);
  v5 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v63 = &v53 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C70, &qword_21CBC2AE8);
  v7 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v57 = &v53 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C78, &qword_21CBC2AF0);
  v9 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v58 = &v53 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C80, &qword_21CBC2AF8);
  v11 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v53 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC10, &unk_21CBC2B00);
  v13 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v53 - v18;
  v20 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v53 - v25;
  v66 = type metadata accessor for PMEmptyStateDetailView(0);
  v27 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v29 = (&v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v32 = (&v53 - v31);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC18, &qword_21CBAAD20);
  v33 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v35 = &v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v53 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
  sub_21CB85084();
  v39 = *(v71 + 24);
  sub_21C940A00(v39);

  if (!(v39 >> 62))
  {
    sub_21C8D75F0(v39);
    v41 = sub_21CB85C44();
    (*(*(v41 - 8) + 56))(v23, 5, 6, v41);
    sub_21C9E14F8(v23, v65 & 1, v29);
    sub_21CA7A4A4(v29, v15, type metadata accessor for PMEmptyStateDetailView);
    goto LABEL_5;
  }

  if (v39 >> 62 == 1)
  {
    sub_21C8D75F0(v39);
    v40 = sub_21CB85C44();
    (*(*(v40 - 8) + 56))(v23, 6, 6, v40);
    sub_21C9E14F8(v23, v65 & 1, v29);
    sub_21CA7A4A4(v29, v15, type metadata accessor for PMEmptyStateDetailView);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    sub_21C706138(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
    sub_21CB83494();
    sub_21C6EDBAC(v35, v63, &qword_27CDEEC18, &qword_21CBAAD20);
    swift_storeEnumTagMultiPayload();
    sub_21CA7A598();
    sub_21C87CAD0();
    v42 = v64;
    sub_21CB83494();
    sub_21C6EA794(v35, &qword_27CDEEC18, &qword_21CBAAD20);
    sub_21C6EDBAC(v42, v69, &qword_27CDF6C80, &qword_21CBC2AF8);
    swift_storeEnumTagMultiPayload();
    sub_21CA7A50C();
    goto LABEL_6;
  }

  if (v39 == 0x8000000000000000)
  {
    v45 = sub_21CB85C44();
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    v48 = v55;
    v53 = v46 + 48;
    v54 = v47;
    if (v47(v55, 1, v45) == 1)
    {
      (*(v46 + 56))(v23, 1, 6, v45);
      sub_21C9E14F8(v23, v65 & 1, v29);
      v32 = v29;
    }

    else
    {
      sub_21C6EDBAC(v48, v19, &unk_27CDF20B0, &unk_21CBA0090);
      result = v54(v19, 1, v45);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      (*(v46 + 32))(v26, v19, v45);
      (*(v46 + 56))(v26, 0, 6, v45);
      sub_21C9E14F8(v26, v65 & 1, v32);
    }

    sub_21CA7A4A4(v32, v15, type metadata accessor for PMEmptyStateDetailView);
    swift_storeEnumTagMultiPayload();
    sub_21C706138(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
    sub_21CB83494();
    sub_21CA7A654(v32);
    sub_21C6EDBAC(v38, v57, &qword_27CDEEC18, &qword_21CBAAD20);
    swift_storeEnumTagMultiPayload();
    sub_21C87CAD0();
    v51 = v58;
    sub_21CB83494();
    sub_21C6EDBAC(v51, v63, &qword_27CDF6C78, &qword_21CBC2AF0);
    swift_storeEnumTagMultiPayload();
    sub_21CA7A598();
    v52 = v64;
    sub_21CB83494();
    sub_21C6EA794(v51, &qword_27CDF6C78, &qword_21CBC2AF0);
    sub_21C6EDBAC(v52, v69, &qword_27CDF6C80, &qword_21CBC2AF8);
    swift_storeEnumTagMultiPayload();
    sub_21CA7A50C();
    sub_21CB83494();
    sub_21C6EA794(v52, &qword_27CDF6C80, &qword_21CBC2AF8);
    return sub_21C6EA794(v38, &qword_27CDEEC18, &qword_21CBAAD20);
  }

  if (v39 == 0x8000000000000008)
  {
    v44 = sub_21CB85C44();
    (*(*(v44 - 8) + 56))(v23, 2, 6, v44);
    sub_21C9E14F8(v23, v65 & 1, v29);
    sub_21CA7A4A4(v29, v69, type metadata accessor for PMEmptyStateDetailView);
    swift_storeEnumTagMultiPayload();
    sub_21CA7A50C();
    sub_21C706138(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
    sub_21CB83494();
    return sub_21CA7A654(v29);
  }

  v49 = sub_21CB85C44();
  (*(*(v49 - 8) + 56))(v23, 3, 6, v49);
  sub_21C9E14F8(v23, v65 & 1, v29);
  sub_21CA7A4A4(v29, v57, type metadata accessor for PMEmptyStateDetailView);
  swift_storeEnumTagMultiPayload();
  sub_21C87CAD0();
  sub_21C706138(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
  v50 = v58;
  sub_21CB83494();
  sub_21C6EDBAC(v50, v63, &qword_27CDF6C78, &qword_21CBC2AF0);
  swift_storeEnumTagMultiPayload();
  sub_21CA7A598();
  v42 = v64;
  sub_21CB83494();
  sub_21C6EA794(v50, &qword_27CDF6C78, &qword_21CBC2AF0);
  sub_21C6EDBAC(v42, v69, &qword_27CDF6C80, &qword_21CBC2AF8);
  swift_storeEnumTagMultiPayload();
  sub_21CA7A50C();
LABEL_6:
  sub_21CB83494();
  sub_21C6EA794(v42, &qword_27CDF6C80, &qword_21CBC2AF8);
  return sub_21CA7A654(v29);
}

double sub_21CA79090@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v69 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
  sub_21CB85084();
  v22 = *(v79 + 24);
  sub_21C940A00(v22);

  v75 = a1;
  v76 = a2;
  v71 = v21;
  v72 = v18;
  if (!(v22 >> 62))
  {
    sub_21C8D75F0(v22);
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v70 = sub_21CB81034();
    v23 = *(v70 - 8);
    v24 = *(v23 + 72);
    v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v26 = swift_allocObject();
    sub_21CB81014();
    sub_21CB81014();
    v27 = v74;
    sub_21CB81014();
    v28 = v73;
    sub_21CB81014();
    sub_21CB80FE4();
    v29 = *(v5 + 8);
    v29(v28, v4);
    v29(v27, v4);
    v29(v12, v4);
    v29(v15, v4);
    swift_setDeallocating();
    (*(v23 + 8))(v26 + v25, v70);
    swift_deallocClassInstance();
    v30 = v71;
    sub_21CB81004();
    v29(v72, v4);
    v29(v30, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_21CBA0690;
    v32 = *(v75 + 16);
    v33 = MEMORY[0x277D83C10];
    *(v31 + 56) = MEMORY[0x277D83B88];
    *(v31 + 64) = v33;
    *(v31 + 32) = v32;
    v34 = sub_21CB85594();
    v36 = v35;

    *&v77 = v34;
    *(&v77 + 1) = v36;
    LOBYTE(v78) = 1;
LABEL_8:
    sub_21C989C28();
    sub_21CB83494();
    v77 = v79;
    v78 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C08, &qword_21CBC2A18);
    sub_21CA79DA8();
    goto LABEL_9;
  }

  if (v22 >> 62 == 1)
  {
    sub_21C8D75F0(v22);
LABEL_7:
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v70 = sub_21CB81034();
    v51 = *(v70 - 8);
    v52 = *(v51 + 72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = swift_allocObject();
    sub_21CB81014();
    sub_21CB81014();
    v55 = v74;
    sub_21CB81014();
    v56 = v73;
    sub_21CB81014();
    sub_21CB80FE4();
    v57 = *(v5 + 8);
    v57(v56, v4);
    v57(v55, v4);
    v57(v12, v4);
    v57(v15, v4);
    swift_setDeallocating();
    (*(v51 + 8))(v54 + v53, v70);
    swift_deallocClassInstance();
    v58 = v71;
    sub_21CB81004();
    v57(v72, v4);
    v57(v58, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_21CBA0690;
    v60 = *(v75 + 16);
    v61 = MEMORY[0x277D83C10];
    *(v59 + 56) = MEMORY[0x277D83B88];
    *(v59 + 64) = v61;
    *(v59 + 32) = v60;
    v62 = sub_21CB85594();
    v64 = v63;

    *&v77 = v62;
    *(&v77 + 1) = v64;
    LOBYTE(v78) = 0;
    goto LABEL_8;
  }

  if (v22 != 0x8000000000000008)
  {
    goto LABEL_7;
  }

  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v70 = sub_21CB81034();
  v37 = *(v70 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  v41 = v74;
  sub_21CB81014();
  v42 = v73;
  sub_21CB81014();
  sub_21CB80FE4();
  v43 = *(v5 + 8);
  v43(v42, v4);
  v43(v41, v4);
  v43(v12, v4);
  v43(v15, v4);
  swift_setDeallocating();
  (*(v37 + 8))(v40 + v39, v70);
  swift_deallocClassInstance();
  v44 = v71;
  sub_21CB81004();
  v43(v72, v4);
  v43(v44, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_21CBA0690;
  v46 = *(v75 + 16);
  v47 = MEMORY[0x277D83C10];
  *(v45 + 56) = MEMORY[0x277D83B88];
  *(v45 + 64) = v47;
  *(v45 + 32) = v46;
  v48 = sub_21CB85594();
  v50 = v49;

  *&v77 = v48;
  *(&v77 + 1) = v50;
  v78 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C08, &qword_21CBC2A18);
  sub_21CA79DA8();
  sub_21C989C28();
LABEL_9:
  sub_21CB83494();
  result = *&v79;
  v66 = v80;
  v67 = v81;
  v68 = v76;
  *v76 = v79;
  *(v68 + 16) = v66;
  *(v68 + 17) = v67;
  return result;
}

uint64_t sub_21CA79B0C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_21CB858B4();
  v2[5] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CA79BA4, v4, v3);
}

uint64_t sub_21CA79BA4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
  sub_21CB85084();
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_21CB85254();
  sub_21CB82524();

  v6 = v0[1];

  return v6();
}

unint64_t sub_21CA79C98()
{
  result = qword_27CDF6BE8;
  if (!qword_27CDF6BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6BE0, &unk_21CBC2A00);
    sub_21CA79D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6BE8);
  }

  return result;
}

unint64_t sub_21CA79D1C()
{
  result = qword_27CDF6BF0;
  if (!qword_27CDF6BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6BF8, &qword_21CBC2A10);
    sub_21CA79DA8();
    sub_21C989C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6BF0);
  }

  return result;
}

unint64_t sub_21CA79DA8()
{
  result = qword_27CDF6C00;
  if (!qword_27CDF6C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C08, &qword_21CBC2A18);
    sub_21C989C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C00);
  }

  return result;
}

uint64_t sub_21CA79E2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return sub_21CA79E40();
  }
}

uint64_t sub_21CA79E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMMultipleAccountsDetailsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA79EAC(uint64_t a1)
{
  v4 = *(type metadata accessor for PMMultipleAccountsDetailsView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21CA79B0C(a1, v1 + v5);
}

unint64_t sub_21CA79F84()
{
  result = qword_27CDF6C10;
  if (!qword_27CDF6C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6BD0, &qword_21CBC29C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C18, &qword_21CBC2A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0560, &qword_21CBAEF20);
    sub_21C6EADEC(&qword_27CDF6C20, &qword_27CDF6C18, &qword_21CBC2A58);
    sub_21C8F0690();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C28, &qword_21CBC2A60);
    sub_21CA7A114();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C10);
  }

  return result;
}

unint64_t sub_21CA7A114()
{
  result = qword_27CDF6C30;
  if (!qword_27CDF6C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C28, &qword_21CBC2A60);
    sub_21CA7A1CC();
    sub_21C6EADEC(&qword_27CDEB1B8, &qword_27CDEB1C0, &unk_21CBA1390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C30);
  }

  return result;
}

unint64_t sub_21CA7A1CC()
{
  result = qword_27CDF6C38;
  if (!qword_27CDF6C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C40, &qword_21CBC2A68);
    sub_21C95DCB4();
    sub_21C6EADEC(&qword_27CDF6C48, &qword_27CDF6C50, &unk_21CBC2A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C38);
  }

  return result;
}

unint64_t sub_21CA7A284()
{
  result = qword_27CDF6C58;
  if (!qword_27CDF6C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6BB0, &qword_21CBC29A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6BE0, &unk_21CBC2A00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0560, &qword_21CBAEF20);
    sub_21CA79C98();
    sub_21C8F0690();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C58);
  }

  return result;
}

uint64_t sub_21CA7A3A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMMultipleAccountsDetailsView() - 8);
  v4 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090) - 8);
  v6 = v1 + ((v4 + *(v5 + 80)) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_21CA7841C(v6, v7, a1);
}

uint64_t sub_21CA7A4A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CA7A50C()
{
  result = qword_27CDF6C88;
  if (!qword_27CDF6C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C80, &qword_21CBC2AF8);
    sub_21CA7A598();
    sub_21C87CAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C88);
  }

  return result;
}

unint64_t sub_21CA7A598()
{
  result = qword_27CDF6C90;
  if (!qword_27CDF6C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C78, &qword_21CBC2AF0);
    sub_21C87CAD0();
    sub_21C706138(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C90);
  }

  return result;
}

uint64_t sub_21CA7A654(uint64_t a1)
{
  v2 = type metadata accessor for PMEmptyStateDetailView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CA7A6CC()
{
  result = qword_27CDF6C98;
  if (!qword_27CDF6C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6CA0, &unk_21CBC2B10);
    sub_21CA79F84();
    sub_21CA7A284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C98);
  }

  return result;
}

uint64_t sub_21CA7A784@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_21CB829D4();
  v3 = *(v2 - 8);
  v46 = v2;
  v47 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_21CB83554();
  v36 = *(v38 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_21CB83584();
  v39 = *(v41 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6CC8, &qword_21CBC2C90);
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6CD0, &qword_21CBC2C98);
  v42 = *(v40 - 8);
  v16 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6CD8, &qword_21CBC2CA0);
  v44 = *(v19 - 8);
  v45 = v19;
  v20 = *(v44 + 64);
  MEMORY[0x28223BE20](v19);
  v35 = &v35 - v21;
  v49 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6CE0, &qword_21CBC2CA8);
  sub_21C6EADEC(&qword_27CDF6CE8, &qword_27CDF6CE0, &qword_21CBC2CA8);
  sub_21CB83EF4();
  v22 = (v1 + *(type metadata accessor for _PMMyPasswordsAccountsView() + 28));
  v23 = *v22;
  v24 = v22[1];
  type metadata accessor for PMAccountsListModel(0);
  sub_21C706180(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  sub_21CB82B54();
  swift_getKeyPath();
  sub_21CB82B74();

  sub_21CB83544();
  sub_21CB83534();
  (*(v36 + 8))(v8, v38);
  v34 = sub_21C6EADEC(&qword_27CDF6CF0, &qword_27CDF6CC8, &qword_21CBC2C90);
  sub_21CB84114();

  (*(v39 + 8))(v11, v41);
  v25 = v15;
  v26 = v35;
  (*(v37 + 8))(v25, v12);
  v27 = v43;
  sub_21CB85294();
  v52 = v12;
  v53 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_21C706180(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  v30 = v40;
  v31 = v46;
  sub_21CB849C4();
  (*(v47 + 8))(v27, v31);
  (*(v42 + 8))(v18, v30);
  if (qword_27CDEA4A0 != -1)
  {
    swift_once();
  }

  v50 = qword_27CE18758;
  v51 = qword_27CE18760;
  v52 = v30;
  v53 = v31;
  v54 = OpaqueTypeConformance2;
  v55 = v29;
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  v32 = v45;
  sub_21CB842F4();
  return (*(v44 + 8))(v26, v32);
}

uint64_t sub_21CA7AE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3958, &qword_21CBB8708);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3960, &qword_21CBB8710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v26 - v14;
  v16 = *(a1 + *(type metadata accessor for _PMMyPasswordsAccountsView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v17 = *(v26[1] + 16);

  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB68, &qword_21CBB8730);
    sub_21C6EADEC(&qword_27CDF3988, &qword_27CDEDB68, &qword_21CBB8730);
    sub_21CB85054();
    (*(v5 + 32))(v15, v8, v4);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  (*(v5 + 56))(v15, v18, 1, v4);
  type metadata accessor for PMAccountsListModel(0);
  sub_21C706180(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  v19 = sub_21CB82B84();
  v21 = v20;
  v22 = [objc_opt_self() safari_browserDefaults];
  v23 = sub_21CB81E74();
  sub_21CA7B880(v15, v12);
  sub_21CA7B880(v12, a2);
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6CF8, &qword_21CBC2D28) + 48));
  *v24 = v19;
  v24[1] = v21;
  v24[2] = v23;

  sub_21CA7B8F0(v15);

  return sub_21CA7B8F0(v12);
}

uint64_t sub_21CA7B1BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB85C44();
  (*(*(v2 - 8) + 56))(a1, 2, 2, v2);
  type metadata accessor for PMSystemSettingsNavigationDestination();
  swift_storeEnumTagMultiPayload();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB68, &qword_21CBB8730);
  v4 = a1 + v3[19];
  result = swift_getKeyPath();
  *v4 = result;
  *(v4 + 8) = 0;
  v6 = (a1 + v3[18]);
  *v6 = sub_21CA7B2A8;
  v6[1] = 0;
  v7 = (a1 + v3[17]);
  *v7 = sub_21CA7B364;
  v7[1] = 0;
  return result;
}

uint64_t sub_21CA7B2A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB85C44();
  (*(*(v2 - 8) + 56))(a1, 2, 2, v2);
  v3 = (a1 + *(type metadata accessor for PMRecentlyDeletedAccountsView(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE0, &qword_21CBB8760);
  *(swift_allocObject() + 16) = 0;
  result = sub_21CB84D44();
  *v3 = v5;
  v3[1] = v6;
  return result;
}

uint64_t sub_21CA7B364@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB85C44();
  (*(*(v2 - 8) + 56))(a1, 2, 2, v2);
  v3 = type metadata accessor for PMRecentlyDeletedRow();
  v4 = *(v3 + 20);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a1 + v4);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v12);

  type metadata accessor for PMAccountsState();
  sub_21C706180(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = a1 + *(v3 + 24);
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_21CA7B4E0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for _PMMyPasswordsAccountsView();
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v4 = v2[6];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a1 + v4);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v13);

  type metadata accessor for PMAccountsState();
  sub_21C706180(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = (a1 + v2[7]);
  type metadata accessor for PMAccountsListModel(0);
  sub_21C706180(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  result = sub_21CB82B84();
  *v10 = result;
  v10[1] = v12;
  return result;
}

uint64_t sub_21CA7B6A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB85C44();
  (*(*(v2 - 8) + 56))(a1, 2, 2, v2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6CA8, &qword_21CBC2B90);
  v4 = (a1 + *(result + 36));
  *v4 = sub_21CA7B4E0;
  v4[1] = 0;
  return result;
}

uint64_t type metadata accessor for _PMMyPasswordsAccountsView()
{
  result = qword_27CDF6CB0;
  if (!qword_27CDF6CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CA7B7A8()
{
  sub_21C721A6C();
  if (v0 <= 0x3F)
  {
    sub_21C7205C4();
    if (v1 <= 0x3F)
    {
      sub_21C705CFC();
      if (v2 <= 0x3F)
      {
        sub_21C713510();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21CA7B880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3960, &qword_21CBB8710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA7B8F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3960, &qword_21CBB8710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CA7B984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v42 = a5;
  v9 = sub_21CB83124();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED670, &qword_21CBA7280);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D00, &qword_21CBC2E40);
  v16 = *(v41 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v41);
  v19 = &v41 - v18;
  v43 = a1;
  v44 = a2;
  v45 = a3;
  v46 = a4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED680, &unk_21CBA7290);
  sub_21C830C8C();
  sub_21CB84C84();
  KeyPath = swift_getKeyPath();
  LOBYTE(v48) = 0;
  v20 = sub_21C830DF8();
  v21 = sub_21C830EB0();
  sub_21CB840E4();

  (*(v12 + 8))(v15, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v22 = *(KeyPath + 16);

  sub_21CB83114();
  sub_21CB83104();
  KeyPath = v22;
  sub_21CB830E4();
  sub_21CB83104();
  sub_21CB83144();
  v23 = sub_21CB84034();
  v25 = v24;
  KeyPath = v11;
  v48 = &type metadata for PMAccountsListNavigationCellLabelStyle;
  v49 = v20;
  LOBYTE(v11) = v26 & 1;
  v50 = v21;
  swift_getOpaqueTypeConformance2();
  v28 = v41;
  v27 = v42;
  sub_21CB84774();
  sub_21C74A72C(v23, v25, v11);

  LOBYTE(v15) = sub_21CB83D34();
  sub_21CB81F24();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  (*(v16 + 8))(v19, v28);
  v37 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D08, &unk_21CBC8240) + 36);
  *v37 = v15;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  v38 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D10, &unk_21CBC2EC0);
  v40 = v27 + *(result + 36);
  *v40 = v38;
  *(v40 + 8) = 0;
  return result;
}

uint64_t sub_21CA7BE08@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CDEA4A0 != -1)
  {
    swift_once();
  }

  sub_21C71F3FC();

  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_21CA7BEAC@<D0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v6 = sub_21CB82F84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(a1, 0);
    (*(v7 + 8))(v10, v6);
    if ((v20 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18[0] = sub_21CB84BB4();
    memset(&v18[1], 0, 32);
    v19 = 1;
    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_21CB84BB4();
  v12 = sub_21CB84A74();
  v18[0] = v11;
  v18[1] = v12;
  *&v18[2] = vdupq_n_s64(0x4040000000000000uLL);
  v18[4] = 0x4018000000000000;
  v19 = 0;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
  sub_21C830D18();
  sub_21CB83494();
  result = *&v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  *a3 = v20;
  *(a3 + 16) = v15;
  *(a3 + 32) = v16;
  *(a3 + 40) = v17;
  return result;
}

double sub_21CA7C0E4@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21CA7BEAC(*(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_21CA7C0F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21CA7C174(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

unint64_t sub_21CA7C1F0()
{
  result = qword_27CDF6D18;
  if (!qword_27CDF6D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6D10, &unk_21CBC2EC0);
    sub_21CA7C27C();
    sub_21C9CF6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6D18);
  }

  return result;
}

unint64_t sub_21CA7C27C()
{
  result = qword_27CDF6D20;
  if (!qword_27CDF6D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6D08, &unk_21CBC8240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6D00, &qword_21CBC2E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED670, &qword_21CBA7280);
    sub_21C830DF8();
    sub_21C830EB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6D20);
  }

  return result;
}

unint64_t sub_21CA7C3AC()
{
  result = qword_27CDF6D28;
  if (!qword_27CDF6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6D28);
  }

  return result;
}

unint64_t sub_21CA7C404()
{
  result = qword_27CDF6D30;
  if (!qword_27CDF6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6D30);
  }

  return result;
}

void sub_21CA7C478()
{
  sub_21CA7C4EC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PMSharingGroup();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21CA7C4EC()
{
  if (!qword_27CDF6D48)
  {
    type metadata accessor for PMSharingGroup();
    type metadata accessor for PMDeviceSharingAvailability(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CDF6D48);
    }
  }
}

uint64_t sub_21CA7C5D4()
{
  v1 = type metadata accessor for PMSharingGroup();
  v2 = *(*(v1 - 1) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v76 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v76 - v9;
  v11 = type metadata accessor for PMNewGroupFlow.Step(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA83DA4(v0, v14, type metadata accessor for PMNewGroupFlow.Step);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v77 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E58, &unk_21CBC3290) + 48)];
      sub_21CA83E0C(v14, v10, type metadata accessor for PMSharingGroup);
      MEMORY[0x21CF15F90](2);
      sub_21CB85C44();
      sub_21C7061C8(&qword_27CDF8950, MEMORY[0x277D49978]);
      sub_21CB85494();
      v16 = &v10[v1[5]];
      v17 = *v16;
      v18 = *(v16 + 1);
      sub_21CB854C4();
      v19 = *&v10[v1[6]];
      MEMORY[0x21CF15F90](*(v19 + 16));
      v20 = *(v19 + 16);
      if (!v20)
      {
LABEL_48:
        v69 = &v10[v1[7]];
        v70 = *v69;
        v71 = *(v69 + 1);
        sub_21CB854C4();
        v72 = v77;
        sub_21CB85DE4();

        v51 = v10;
        return sub_21C7197E0(v51, type metadata accessor for PMSharingGroup);
      }

      v21 = (v19 + 32);
      while (1)
      {
        v22 = v21[2];
        v23 = *v21;
        v80 = v21[1];
        v81 = v22;
        v79 = v23;
        v24 = v21[3];
        v25 = v21[4];
        v26 = v21[6];
        v84 = v21[5];
        v85 = v26;
        v82 = v24;
        v83 = v25;
        if (*(&v23 + 1))
        {
          sub_21CB864A4();
          sub_21C7A33F0(&v79, v78);
          sub_21CB854C4();
          if (*(&v80 + 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_21CB864A4();
          sub_21C7A33F0(&v79, v78);
          if (*(&v80 + 1))
          {
LABEL_11:
            sub_21CB864A4();
            sub_21CB854C4();
            goto LABEL_14;
          }
        }

        sub_21CB864A4();
LABEL_14:
        sub_21CB854C4();
        sub_21CB854C4();
        sub_21CB854C4();
        v27 = v85;
        v28 = BYTE2(v84);
        v29 = BYTE1(v84);
        sub_21CB864A4();
        MEMORY[0x21CF15F90](v29);
        MEMORY[0x21CF15F90](v28);
        if (v27)
        {
          sub_21CB864A4();
          sub_21CB854C4();
          v30 = *(&v85 + 1);
          if (*(&v85 + 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_21CB864A4();
          v30 = *(&v85 + 1);
          if (*(&v85 + 1))
          {
LABEL_18:
            sub_21CB864A4();
            v31 = v30;
            sub_21CB85DE4();

            goto LABEL_8;
          }
        }

        sub_21CB864A4();
LABEL_8:
        sub_21C7A344C(&v79);
        v21 += 7;
        if (!--v20)
        {
          goto LABEL_48;
        }
      }
    }

    sub_21CA83E0C(v14, v7, type metadata accessor for PMSharingGroup);
    MEMORY[0x21CF15F90](3);
    sub_21CB85C44();
    sub_21C7061C8(&qword_27CDF8950, MEMORY[0x277D49978]);
    sub_21CB85494();
    v53 = &v7[v1[5]];
    v54 = *v53;
    v55 = *(v53 + 1);
    sub_21CB854C4();
    v56 = *&v7[v1[6]];
    MEMORY[0x21CF15F90](*(v56 + 16));
    v57 = *(v56 + 16);
    if (!v57)
    {
LABEL_49:
      v73 = &v7[v1[7]];
      v74 = *v73;
      v75 = *(v73 + 1);
      sub_21CB854C4();
      v51 = v7;
      return sub_21C7197E0(v51, type metadata accessor for PMSharingGroup);
    }

    v58 = (v56 + 32);
    while (1)
    {
      v59 = v58[2];
      v60 = *v58;
      v80 = v58[1];
      v81 = v59;
      v79 = v60;
      v61 = v58[3];
      v62 = v58[4];
      v63 = v58[6];
      v84 = v58[5];
      v85 = v63;
      v82 = v61;
      v83 = v62;
      if (*(&v60 + 1))
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v79, v78);
        sub_21CB854C4();
        if (*(&v80 + 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v79, v78);
        if (*(&v80 + 1))
        {
LABEL_40:
          sub_21CB864A4();
          sub_21CB854C4();
          goto LABEL_43;
        }
      }

      sub_21CB864A4();
LABEL_43:
      sub_21CB854C4();
      sub_21CB854C4();
      sub_21CB854C4();
      v64 = v85;
      v65 = BYTE2(v84);
      v66 = BYTE1(v84);
      sub_21CB864A4();
      MEMORY[0x21CF15F90](v66);
      MEMORY[0x21CF15F90](v65);
      if (v64)
      {
        sub_21CB864A4();
        sub_21CB854C4();
        v67 = *(&v85 + 1);
        if (*(&v85 + 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        sub_21CB864A4();
        v67 = *(&v85 + 1);
        if (*(&v85 + 1))
        {
LABEL_47:
          sub_21CB864A4();
          v68 = v67;
          sub_21CB85DE4();

          goto LABEL_37;
        }
      }

      sub_21CB864A4();
LABEL_37:
      sub_21C7A344C(&v79);
      v58 += 7;
      if (!--v57)
      {
        goto LABEL_49;
      }
    }
  }

  if (EnumCaseMultiPayload != 2)
  {
    return MEMORY[0x21CF15F90](EnumCaseMultiPayload != 3);
  }

  sub_21CA83E0C(v14, v4, type metadata accessor for PMSharingGroup);
  MEMORY[0x21CF15F90](4);
  sub_21CB85C44();
  sub_21C7061C8(&qword_27CDF8950, MEMORY[0x277D49978]);
  sub_21CB85494();
  v32 = &v4[v1[5]];
  v33 = *v32;
  v34 = *(v32 + 1);
  sub_21CB854C4();
  v35 = *&v4[v1[6]];
  MEMORY[0x21CF15F90](*(v35 + 16));
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = (v35 + 32);
    do
    {
      v39 = v37[2];
      v40 = *v37;
      v80 = v37[1];
      v81 = v39;
      v79 = v40;
      v41 = v37[3];
      v42 = v37[4];
      v43 = v37[6];
      v84 = v37[5];
      v85 = v43;
      v82 = v41;
      v83 = v42;
      if (*(&v40 + 1))
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v79, v78);
        sub_21CB854C4();
        if (*(&v80 + 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v79, v78);
        if (*(&v80 + 1))
        {
LABEL_25:
          sub_21CB864A4();
          sub_21CB854C4();
          goto LABEL_28;
        }
      }

      sub_21CB864A4();
LABEL_28:
      sub_21CB854C4();
      sub_21CB854C4();
      sub_21CB854C4();
      v44 = v85;
      v45 = BYTE2(v84);
      v46 = BYTE1(v84);
      sub_21CB864A4();
      MEMORY[0x21CF15F90](v46);
      MEMORY[0x21CF15F90](v45);
      if (v44)
      {
        sub_21CB864A4();
        sub_21CB854C4();
        v47 = *(&v85 + 1);
        if (!*(&v85 + 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_21CB864A4();
        v47 = *(&v85 + 1);
        if (!*(&v85 + 1))
        {
LABEL_32:
          sub_21CB864A4();
          goto LABEL_22;
        }
      }

      sub_21CB864A4();
      v38 = v47;
      sub_21CB85DE4();

LABEL_22:
      sub_21C7A344C(&v79);
      v37 += 7;
      --v36;
    }

    while (v36);
  }

  v48 = &v4[v1[7]];
  v49 = *v48;
  v50 = *(v48 + 1);
  sub_21CB854C4();
  v51 = v4;
  return sub_21C7197E0(v51, type metadata accessor for PMSharingGroup);
}