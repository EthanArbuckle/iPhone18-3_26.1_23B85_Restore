uint64_t sub_1D906E170(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  v9 = sub_1D9176E3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(*a1 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  sub_1D90399EC(v8);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1D9176CEC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1D8D08A50(v8, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  v17 = sub_1D9176D9C();
  (*(v10 + 8))(v13, v9);
  if (v17)
  {
    v18 = 1;
  }

  else if (*(a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x90)) == 1)
  {
    v19 = *(a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x88));
    v20 = *(v14 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id);
    v21 = *(v14 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8);

    v22 = sub_1D8EF0850(v20, v21, v19);

    v18 = v22 ^ 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

char *PurchaseController.displaySubscriptionConfirmationSheetIfNeeded(for:channelObjects:)(unint64_t a1, unint64_t a2)
{
  v4 = sub_1D9177E0C();
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D9177E9C();
  v78 = *(v80 - 8);
  v7 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D917744C();
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v75 = &v71 - v13;
  v76 = v14;
  if (a2 >> 62)
  {
LABEL_34:
    v15 = sub_1D917935C();
  }

  else
  {
    v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x1E69E7CC0];
  v84 = a1;
  if (v15)
  {
    a1 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1DA72AA90](a1, a2, v12);
      }

      else
      {
        if (a1 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v17 = *(a2 + 8 * a1 + 32);
      }

      v18 = v17;
      v19 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (*(*&v17[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 176) > 1u)
      {
        if (*(*&v17[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 176) != 2)
        {
          goto LABEL_5;
        }
      }

      else if (!*(*&v17[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 176))
      {

LABEL_16:
        sub_1D917959C();
        v21 = *(aBlock[0] + 16);
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        goto LABEL_6;
      }

      v20 = sub_1D9179ACC();

      if (v20)
      {
        goto LABEL_16;
      }

LABEL_5:

LABEL_6:
      ++a1;
      if (v19 == v15)
      {
        v22 = aBlock[0];
        a1 = v84;
        v16 = MEMORY[0x1E69E7CC0];
        if ((aBlock[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_35;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

LABEL_21:
  if ((v22 & 0x4000000000000000) != 0)
  {
LABEL_35:
    v23 = sub_1D917935C();
    if (v23)
    {
      goto LABEL_23;
    }

LABEL_36:

    goto LABEL_37;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_23:
  aBlock[0] = v16;
  result = sub_1D8D41BE0(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
    __break(1u);
    return result;
  }

  v25 = 0;
  v16 = aBlock[0];
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1DA72AA90](v25, v22);
    }

    else
    {
      v26 = *(v22 + 8 * v25 + 32);
    }

    v27 = v26;
    v29 = *&v26[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
    v28 = *&v26[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];

    aBlock[0] = v16;
    v31 = *(v16 + 16);
    v30 = *(v16 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1D8D41BE0((v30 > 1), v31 + 1, 1);
      v16 = aBlock[0];
    }

    ++v25;
    *(v16 + 16) = v31 + 1;
    v32 = v16 + 16 * v31;
    *(v32 + 32) = v29;
    *(v32 + 40) = v28;
  }

  while (v23 != v25);

  a1 = v84;
LABEL_37:
  v33 = sub_1D8FC0F28(v16);

  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v34 = v86;
  v35 = __swift_project_value_buffer(v86, qword_1EDCD0690);
  swift_beginAccess();
  v36 = v85;
  v37 = *(v85 + 16);
  v38 = v75;
  v74 = v85 + 16;
  v73 = v37;
  v37(v75, v35, v34);

  v39 = sub_1D917741C();
  v40 = sub_1D9178D1C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v72 = v35;
    v43 = v42;
    aBlock[0] = v42;
    *v41 = 141558275;
    *(v41 + 4) = 1752392040;
    *(v41 + 12) = 2081;
    v44 = sub_1D9178AAC();
    v46 = sub_1D8CFA924(v44, v45, aBlock);

    *(v41 + 14) = v46;
    _os_log_impl(&dword_1D8CEC000, v39, v40, "User's Entitlements IAP/1p Id's: %{private,mask.hash}s", v41, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v47 = v43;
    v35 = v72;
    MEMORY[0x1DA72CB90](v47, -1, -1);
    v48 = v41;
    a1 = v84;
    MEMORY[0x1DA72CB90](v48, -1, -1);
  }

  v49 = *(v36 + 8);
  v49(v38, v34);
  if ([objc_opt_self() isRunningOnInternalOS] && (v50 = *(v83 + *((*MEMORY[0x1E69E7D40] & *v83) + 0xC8)), v51 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0(), LODWORD(v50) = objc_msgSend(v50, sel_BOOLForKey_, v51), v51, v50))
  {

    swift_bridgeObjectRetain_n();
  }

  else
  {

    a1 = sub_1D90701C4(v33, a1);
  }

  v52 = v76;
  v53 = v86;
  v73(v76, v35, v86);

  v54 = sub_1D917741C();
  v55 = sub_1D9178D1C();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 141558275;
    *(v56 + 4) = 1752392040;
    *(v56 + 12) = 2081;
    v58 = sub_1D9178AAC();
    v60 = v59;

    v61 = sub_1D8CFA924(v58, v60, aBlock);

    *(v56 + 14) = v61;
    _os_log_impl(&dword_1D8CEC000, v54, v55, "Showing all newly subscribed 1p/IAP subscriptions in the confirmation sheet: %{private,mask.hash}s", v56, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x1DA72CB90](v57, -1, -1);
    MEMORY[0x1DA72CB90](v56, -1, -1);
  }

  else
  {
  }

  v49(v52, v53);
  v62 = MEMORY[0x1E69E7CC0];
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v63 = sub_1D9178E1C();
  v64 = swift_allocObject();
  v65 = v83;
  *(v64 + 16) = v83;
  *(v64 + 24) = a1;
  aBlock[4] = sub_1D907139C;
  aBlock[5] = v64;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_21_2;
  v66 = _Block_copy(aBlock);
  v67 = v65;

  v68 = v77;
  sub_1D9177E4C();
  aBlock[0] = v62;
  sub_1D8CFBE38(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v69 = v79;
  v70 = v82;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v68, v69, v66);
  _Block_release(v66);

  (*(v81 + 8))(v69, v70);
  return (*(v78 + 8))(v68, v80);
}

uint64_t sub_1D906EE30(uint64_t a1, uint64_t a2)
{
  sub_1D9068320(v9);
  if (!v10)
  {
    return sub_1D8D08A50(v9, &unk_1ECAB9920, &unk_1D91AD170);
  }

  sub_1D8CFD9D8(v9, v6);
  sub_1D8D08A50(v9, &unk_1ECAB9920, &unk_1D91AD170);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 8))(a2, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_1D906EEF0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v111 = a4;
  v130 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v105 - v9;
  v11 = sub_1D9176E3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v125 = v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D917744C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v112 = v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v121 = v105 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v105 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = (v105 - v25);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EDCD5AA8 == -1)
    {
LABEL_18:
      v46 = __swift_project_value_buffer(v15, qword_1EDCD0690);
      swift_beginAccess();
      (*(v16 + 16))(v26, v46, v15);
      v47 = sub_1D9178CFC();
      v48 = sub_1D917741C();
      if (os_log_type_enabled(v48, v47))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1D8CEC000, v48, v47, "Could not unwrap self in PurchaseController. Cannot update subscriptions.", v49, 2u);
        MEMORY[0x1DA72CB90](v49, -1, -1);
      }

      return (*(v16 + 8))(v26, v15);
    }

LABEL_97:
    swift_once();
    goto LABEL_18;
  }

  v120 = Strong;
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v15, qword_1EDCD0690);
  swift_beginAccess();
  v29 = *(v16 + 16);
  v118 = v28;
  v117 = v16 + 16;
  v116 = v29;
  v29(v23, v28, v15);
  v26 = sub_1D917741C();
  v30 = sub_1D9178D1C();
  v31 = os_log_type_enabled(v26, v30);
  v131 = a2;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1D8CEC000, v26, v30, "Updating subscribed channels from server objects.", v32, 2u);
    v33 = v32;
    a2 = v131;
    MEMORY[0x1DA72CB90](v33, -1, -1);
  }

  v128 = v12;
  v129 = v11;

  v34 = *(v16 + 8);
  v16 += 8;
  v124 = v15;
  v119 = v16;
  v115 = v34;
  v34(v23, v15);
  v108 = v10;
  if (a2 >> 62)
  {
    v35 = sub_1D917935C();
    v15 = a5;
    if (v35)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v35 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = a5;
    if (v35)
    {
LABEL_8:
      v36 = objc_opt_self();
      if (v35 >= 1)
      {
        v37 = v36;
        v38 = 0;
        v39 = a2 & 0xC000000000000001;
        do
        {
          if (v39)
          {
            v41 = MEMORY[0x1DA72AA90](v38, a2);
          }

          else
          {
            v41 = *(a2 + 8 * v38 + 32);
          }

          v42 = v41;
          v43 = sub_1D90687E0();
          v44 = [v37 createOrFindChannelFromFeedChannelItem:v42 personalizedRequest:1 context:v43];

          v45 = *&v42[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes];
          sub_1D9039D04(v132);
          if (LOBYTE(v132[0]) >= 4u)
          {
            v40 = 0;
          }

          else
          {
            v40 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

            a2 = v131;
          }

          ++v38;
          [v44 setSubscriptionOfferAppType_];
        }

        while (v35 != v38);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_97;
    }
  }

LABEL_22:
  v51 = sub_1D90687E0();
  sub_1D8CF2154(0, &unk_1EDCD0798, off_1E8567588);
  v52 = sub_1D917908C();
  v53 = MEMORY[0x1E69E7CC0];
  v54 = v52;
  v105[1] = 0;
  v55 = v120;

  v132[0] = v53;
  if (v54 >> 62)
  {
    goto LABEL_94;
  }

  v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v56)
  {
    goto LABEL_24;
  }

LABEL_35:
  v60 = MEMORY[0x1E69E7D40];
  v114 = *((*MEMORY[0x1E69E7D40] & *v55) + 0xC0);
  v61 = *(v55 + v114);

  InterestRepository.unsafeFavoriteExistingEntitledChannelsIfNeeded(entitledChannels:)(v53);

  if (v56)
  {
    v53 = 0;
    v63 = *v60 & *v55;
    v123 = v54 & 0xC000000000000001;
    v110 = v54 & 0xFFFFFFFFFFFFFF8;
    v109 = (v54 + 32);
    v113 = *(v63 + 160);
    v127 = (v128 + 8);
    v64 = a2 & 0xC000000000000001;
    a2 &= 0xFFFFFFFFFFFFFF8uLL;
    v107 = (v128 + 48);
    *&v62 = 141558275;
    v106 = v62;
    v122 = v54;
    v128 = v56;
    while (1)
    {
      if (v123)
      {
        v65 = MEMORY[0x1DA72AA90](v53, v54);
      }

      else
      {
        if (v53 >= *(v110 + 16))
        {
          goto LABEL_93;
        }

        v65 = *&v109[8 * v53];
      }

      v54 = v65;
      if (__OFADD__(v53++, 1))
      {
        goto LABEL_91;
      }

      v130 = v53;
      v67 = v125;
      sub_1D9176E2C();
      sub_1D9176CCC();
      v69 = v68;
      v126 = *v127;
      v126(v67, v129);
      [v54 setLastPersonalizedRequestDate_];
      v70 = MEMORY[0x1E69E7CC0];
      v132[0] = MEMORY[0x1E69E7CC0];
      if (v35)
      {
        v71 = 0;
        while (1)
        {
          if (v64)
          {
            v72 = MEMORY[0x1DA72AA90](v71, v131);
          }

          else
          {
            if (v71 >= *(a2 + 16))
            {
              goto LABEL_88;
            }

            v72 = *(v131 + 8 * v71 + 32);
          }

          v73 = v72;
          v55 = (v71 + 1);
          if (__OFADD__(v71, 1))
          {
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
            __break(1u);
LABEL_94:
            v56 = sub_1D917935C();
            if (!v56)
            {
              goto LABEL_35;
            }

LABEL_24:
            v53 = 0;
            a2 = v54 & 0xC000000000000001;
            do
            {
              if (a2)
              {
                v57 = MEMORY[0x1DA72AA90](v53, v54);
              }

              else
              {
                if (v53 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_90;
                }

                v57 = *(v54 + 8 * v53 + 32);
              }

              v58 = v57;
              v55 = (v53 + 1);
              if (__OFADD__(v53, 1))
              {
                goto LABEL_89;
              }

              if ([v57 subscriptionActive])
              {
                sub_1D917959C();
                v59 = *(v132[0] + 16);
                sub_1D91795DC();
                sub_1D91795EC();
                sub_1D91795AC();
              }

              else
              {
              }

              ++v53;
            }

            while (v55 != v56);
            a2 = v131;
            v53 = v132[0];
            v55 = v120;
            goto LABEL_35;
          }

          v75 = *&v72[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
          v74 = *&v72[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];
          v133 = [v54 storeId];
          if (v75 == sub_1D9179A4C() && v74 == v76)
          {
          }

          else
          {
            v53 = sub_1D9179ACC();

            if ((v53 & 1) == 0)
            {

              goto LABEL_49;
            }
          }

          sub_1D917959C();
          v53 = *(v132[0] + 16);
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
LABEL_49:
          ++v71;
          if (v55 == v35)
          {
            v70 = v132[0];
            v56 = v128;
            break;
          }
        }
      }

      if ((v70 & 0x8000000000000000) != 0 || (v70 & 0x4000000000000000) != 0)
      {
        v53 = v70;
        v97 = sub_1D917935C();
        v70 = v53;
        if (v97)
        {
LABEL_65:
          if ((v70 & 0xC000000000000001) != 0)
          {
            v78 = MEMORY[0x1DA72AA90](0, v70);
          }

          else
          {
            if (!*(v70 + 16))
            {
              goto LABEL_92;
            }

            v78 = *(v70 + 32);
          }

          v79 = v78;

          if ([v54 subscriptionActive])
          {
          }

          else
          {
            v116(v121, v118, v124);
            v80 = v54;
            v81 = sub_1D917741C();
            v82 = sub_1D9178D1C();
            if (os_log_type_enabled(v81, v82))
            {
              v83 = swift_slowAlloc();
              *v83 = v106;
              *(v83 + 4) = 1752392040;
              *(v83 + 12) = 2049;
              *(v83 + 14) = [v80 storeId];

              _os_log_impl(&dword_1D8CEC000, v81, v82, "Setting channel %{private,mask.hash}lld to subscribed", v83, 0x16u);
              MEMORY[0x1DA72CB90](v83, -1, -1);
            }

            else
            {

              v81 = v80;
            }

            v84 = v108;

            v115(v121, v124);
            v85 = *&v79[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes];
            sub_1D90399EC(v84);
            v86 = v129;
            if ((*v107)(v84, 1, v129) == 1)
            {
              sub_1D8D08A50(v84, &qword_1ECAB75C0, &unk_1D9188A50);
              v87 = 0.0;
            }

            else
            {
              sub_1D9176CCC();
              v89 = v88;
              v126(v84, v86);
              v87 = v89;
            }

            v90 = v120;
            [*&v120[v113] unsafeHandleSubscriptionChangeForChannel:v80 subscriptionBecameActive:1 subscriptionEnabledDate:v87];
            v91 = *&v90[v114];

            v92 = [v80 storeId];
            InterestRepository.favoriteInterest(forAdamID:force:)(v92 & ~(v92 >> 63), 0);

            v93 = [v80 storeId];
            v132[0] = v93 & ~(v93 >> 63);
            sub_1D8E40D20();
            v94 = sub_1D917927C();
            v96 = v95;
            swift_beginAccess();
            sub_1D8D19AFC(&v133, v94, v96);
            swift_endAccess();
          }

          v56 = v128;
          goto LABEL_39;
        }
      }

      else if (*(v70 + 16))
      {
        goto LABEL_65;
      }

      if ([v54 subscriptionActive])
      {
        v116(v112, v118, v124);
        v98 = v54;
        v99 = sub_1D917741C();
        v100 = sub_1D9178D1C();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = v106;
          *(v101 + 4) = 1752392040;
          *(v101 + 12) = 2049;
          *(v101 + 14) = [v98 storeId];

          _os_log_impl(&dword_1D8CEC000, v99, v100, "Setting channel %{private,mask.hash}lld to not subscribed", v101, 0x16u);
          MEMORY[0x1DA72CB90](v101, -1, -1);
        }

        else
        {

          v99 = v98;
        }

        v115(v112, v124);
        v102 = v120;
        [*&v120[v113] unsafeHandleSubscriptionChangeForChannel:v98 subscriptionBecameActive:0 subscriptionEnabledDate:0.0];
        v103 = *&v102[v114];

        v104 = [v98 storeId];
        InterestRepository.unfavoriteInterest(forAdamID:)(v104 & ~(v104 >> 63));
      }

      else
      {
      }

LABEL_39:
      v53 = v130;
      v54 = v122;
      if (v130 == v56)
      {
      }
    }
  }
}

uint64_t MockPurchaseController.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  sub_1D9177A9C();
  return v3;
}

uint64_t MockPurchaseController.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC18PodcastsFoundation22MockPurchaseController__recentlyEntitledProducts;
  v8[1] = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  sub_1D9177A9C();
  (*(v2 + 32))(v0 + v6, v5, v1);
  return v0;
}

uint64_t sub_1D906FF40()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  sub_1D9177AAC();
  return swift_endAccess();
}

uint64_t MockPurchaseController.deinit()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation22MockPurchaseController__recentlyEntitledProducts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MockPurchaseController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation22MockPurchaseController__recentlyEntitledProducts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D90700F4()
{
  v1 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  sub_1D9177AAC();
  return swift_endAccess();
}

uint64_t sub_1D907016C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D9068470();
  *a2 = result;
  return result;
}

uint64_t sub_1D9070198(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D9068530();
}

uint64_t sub_1D90701C4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1D9070418(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_1D9070388(v12, v6, a2, a1);

    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void *sub_1D9070388(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1D9070418(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D9070418(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v27 = sub_1D9179E1C();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_1D9179ACC() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1D90A7CC4(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v41 = sub_1D9179E1C();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_1D9179ACC() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D90707F4()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1D9070854(uint64_t a1)
{
  v2 = v1;
  v70 = a1;
  ObjectType = swift_getObjectType();
  v64 = *v1;
  v3 = v64;
  v65 = *MEMORY[0x1E69E7D40];
  v4 = v65;
  v5 = MEMORY[0x1E69E7D40];
  v6 = sub_1D9178FBC();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v67 = v62 - v11;
  v66 = sub_1D9178E0C();
  v12 = *(v66 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9178D8C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = sub_1D9177E9C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  *(v1 + *((v4 & v3) + 0x60)) = MEMORY[0x1E69E7CD0];
  v63 = *((*v5 & *v1) + 0x68);
  v20 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v62[0] = "on.PurchaseController";
  v62[1] = v20;
  sub_1D9177E4C();
  v76 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE38(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  v21 = MEMORY[0x1E69E7D40];
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8090], v66);
  *(v1 + v63) = sub_1D9178E4C();
  v22 = *((*v21 & *v1) + 0x70);
  v23 = *((v65 & v64) + 0x58);
  v24 = *((v65 & v64) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v1 + v22, 1, 1, AssociatedTypeWitness);
  v26 = v2 + *((*v21 & *v2) + 0x78);
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  v27 = *((*v21 & *v1) + 0x80);
  v28 = MEMORY[0x1E69E7CD0];
  v76 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  v29 = v67;
  sub_1D9177A9C();
  (*(v68 + 32))(v1 + v27, v29, v69);
  *(v1 + *((*v21 & *v1) + 0x88)) = v28;
  *(v1 + *((*v21 & *v1) + 0x90)) = 0;
  *(v1 + *((*v21 & *v1) + 0x98)) = 0;
  v30 = *((*v21 & *v1) + 0xA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v31 = swift_allocObject();
  *(v31 + 20) = 0;
  *(v31 + 16) = 0;
  *(v1 + v30) = v31;
  *(v1 + *((*v21 & *v1) + 0xB8)) = 0;
  *(v1 + *((*v21 & *v1) + 0xD0)) = 0;
  swift_beginAccess();
  v32 = sub_1D91791BC();
  (*(*(v32 - 8) + 24))(v1 + v22, v70, v32);
  swift_endAccess();
  *(v1 + *((*v21 & *v1) + 0xC8)) = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v33 = sub_1D90687E0();
  type metadata accessor for InterestStore();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  if (qword_1ECAB1F70 != -1)
  {
    swift_once();
  }

  v35 = qword_1ECAB1F78;
  type metadata accessor for InterestRepository();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  v37 = objc_allocWithZone(MTSubscriptionChangeHandler);
  v38 = v35;
  *(v2 + *((*v21 & *v2) + 0xA0)) = [v37 init];
  v39 = [objc_opt_self() sharedInstance];
  v40 = [objc_opt_self() ams_sharedAccountStore];
  v41 = objc_allocWithZone(type metadata accessor for MusicSubscriptionInfoSyncUtil());
  *(v2 + *((*v21 & *v2) + 0xB0)) = sub_1D8D34518(v39, v40, v41);
  *(v2 + *((*v21 & *v2) + 0xC0)) = v36;
  v42 = type metadata accessor for PurchaseController();
  v75.receiver = v2;
  v75.super_class = v42;

  v43 = objc_msgSendSuper2(&v75, sel_init);
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 defaultCenter];
  v47 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v46 addObserver:v45 selector:sel_didFinishUpdatingFeeds name:v47 object:0];

  sub_1D8CF2154(0, &qword_1ECAB9A60, off_1E8567680);
  v48 = *(v45 + *((*v21 & *v45) + 0x68));
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = v45;
  v51 = v48;
  v52 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDelegate:v50 onQueue:v51];

  v53 = *((*v21 & *v50) + 0xB8);
  v54 = *(v50 + v53);
  *(v50 + v53) = v52;

  v55 = [v44 defaultCenter];
  v56 = v72;
  sub_1D9178FCC();

  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v58 = swift_allocObject();
  v58[2] = v24;
  v58[3] = v23;
  v58[4] = v57;
  sub_1D8CFBE38(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);
  v59 = v74;
  sub_1D9177D9C();

  (*(v73 + 8))(v56, v59);
  v60 = *((*v21 & *v50) + 0x60);
  swift_beginAccess();
  sub_1D917783C();
  swift_endAccess();

  return v50;
}

uint64_t type metadata accessor for MockPurchaseController()
{
  result = qword_1ECAB9A38;
  if (!qword_1ECAB9A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9071710()
{
  sub_1D8D344B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D907181C()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_1D906EEF0(v0[4], v0[5], v0[6], v0[7], v0[8]);
}

uint64_t sub_1D9071830(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_73Tm(void (*a1)(void))
{
  v3 = *(v1 + 32);

  a1(*(v1 + 40));

  return swift_deallocObject();
}

char *sub_1D907193C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  return sub_1D906BD7C(*(v0 + 32), *(v0 + 40));
}

uint64_t sub_1D907194C(void *a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1D906BF40(a1, a2, v2[4], v2[5]);
}

BOOL sub_1D9071958(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  sub_1D9176CCC();
  return v3 < v4;
}

void sub_1D9071998()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1D90689A8();
}

void sub_1D90719E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D8DBAA4C(0);
  }
}

uint64_t sub_1D9071A38()
{
  v0 = sub_1D917744C();
  v51 = *(v0 - 8);
  v52 = v0;
  v1 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v50 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v39 - v5;
  v47 = &v39 - v5;
  v7 = type metadata accessor for MediaRequest.Params();
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D8D946F4(&unk_1F5461BF8);
  sub_1D8D08A50(&unk_1F5461C18, &unk_1ECAB9A50, &unk_1D9197130);
  v48 = sub_1D8D946F4(&unk_1F5461C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9A50, &unk_1D9197130);
  swift_arrayDestroy();
  v12 = sub_1D9176C2C();
  v13 = *(*(v12 - 8) + 56);
  v13(v6, 1, 1, v12);
  v14 = MEMORY[0x1E69E7CC0];
  v46 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v45 = sub_1D8D94DF8(v14);
  v44 = sub_1D8D951E0(v14);
  v43 = sub_1D8D9503C(v14);
  v41 = sub_1D8D953C4(v14);
  v15 = sub_1D8D952D8(v14);
  v42 = sub_1D8D95394(v14);
  v16 = sub_1D8D957C4(v14);
  *(v11 + 41) = 263;
  v11[43] = 5;
  v11[152] = 1;
  v11[201] = 1;
  v17 = v8[30];
  v13(&v11[v17], 1, 1, v12);
  v18 = &v11[v8[31]];
  v19 = &v11[v8[33]];
  v20 = v8[35];
  v40 = v8[36];
  v21 = &v11[v20];
  v22 = &v11[v8[37]];
  *v11 = 1;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 10) = 83952388;
  v23 = v45;
  *(v11 + 6) = v46;
  *(v11 + 7) = v23;
  v24 = v43;
  *(v11 + 8) = v44;
  *(v11 + 9) = v14;
  v25 = v48;
  v26 = v49;
  *(v11 + 10) = v24;
  *(v11 + 11) = v26;
  *(v11 + 12) = v25;
  *(v11 + 13) = v41;
  *(v11 + 14) = v14;
  *(v11 + 15) = v15;
  *(v11 + 16) = v14;
  *(v11 + 17) = v14;
  *(v11 + 18) = v14;
  v11[152] = 1;
  *(v11 + 20) = 30;
  v11[168] = 0;
  *(v11 + 22) = v42;
  *(v11 + 23) = v16;
  *(v11 + 24) = 0;
  *(v11 + 100) = 257;
  v11[202] = 0;
  sub_1D8E26828(v47, &v11[v17]);
  *v18 = 0;
  *(v18 + 1) = 0;
  v11[v8[32]] = 0;
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v11[v8[34]] = v14;
  *v21 = 0;
  *(v21 + 1) = 0;
  v11[v40] = 2;
  *v22 = 0;
  *(v22 + 1) = 0;
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v27 = v52;
  v28 = __swift_project_value_buffer(v52, qword_1EDCD0690);
  swift_beginAccess();
  v30 = v50;
  v29 = v51;
  (*(v51 + 16))(v50, v28, v27);
  v31 = sub_1D917741C();
  v32 = sub_1D9178D1C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1D8CEC000, v31, v32, "Getting state from MediaAPI for user's entitlements.", v33, 2u);
    MEMORY[0x1DA72CB90](v33, -1, -1);
  }

  (*(v29 + 8))(v30, v27);
  v34 = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v35 = swift_allocObject();
  v36 = v53;
  v35[2] = v53;
  v37 = v36;
  sub_1D904AD58(v11, 0, sub_1D9076238, v35);

  return sub_1D8D90BEC(v11);
}

char *sub_1D9071F28(uint64_t a1, uint64_t *a2)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 privateQueueContext];

  sub_1D8CF2154(0, &unk_1EDCD0798, off_1E8567588);
  v5 = sub_1D917908C();

  if (v5 >> 62)
  {
    v6 = sub_1D917935C();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D8E31798(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = v17;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA72AA90](v8, v5);
    }

    else
    {
      v10 = *(v5 + 8 * v8 + 32);
    }

    v11 = v10;
    [v10 lastPersonalizedRequestDate];
    v13 = v12;

    v17 = v9;
    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D8E31798((v14 > 1), v15 + 1, 1);
    }

    ++v8;
    *(v9 + 16) = v15 + 1;
    *(v9 + 8 * v15 + 32) = v13;
  }

  while (v6 != v8);

LABEL_14:
  v16 = *a2;
  *a2 = v9;
}

uint64_t sub_1D9072120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a4;
  v85 = a3;
  v6 = sub_1D917744C();
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = *(v88 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v77 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v81 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v77 - v16;
  v18 = sub_1D9176E3C();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v77 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v77 - v27;
  if (a1)
  {
    v29 = a1;
    sub_1D9176E2C();
    v82 = v29;
    [v29 doubleValue];
    sub_1D9176D7C();
    v86 = v19[1];
    v87 = v19 + 1;
    v86(v26, v18);
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v30 = v89;
    v31 = __swift_project_value_buffer(v89, qword_1EDCD0690);
    swift_beginAccess();
    v32 = v88;
    v33 = *(v88 + 16);
    v79 = v88 + 16;
    v80 = v31;
    v78 = v33;
    v33(v17, v31, v30);
    v34 = v19[2];
    v83 = v28;
    v34(v23, v28, v18);
    v35 = sub_1D917741C();
    v36 = sub_1D9178D1C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v18;
      v39 = swift_slowAlloc();
      v90 = v39;
      *v37 = 136315138;
      sub_1D8CFD720(&qword_1EDCD5930, MEMORY[0x1E6969530]);
      v40 = sub_1D9179A4C();
      v42 = v41;
      v43 = v23;
      v44 = v38;
      v86(v43, v38);
      v45 = sub_1D8CFA924(v40, v42, &v90);
      v30 = v89;

      *(v37 + 4) = v45;
      _os_log_impl(&dword_1D8CEC000, v35, v36, "Updating channels if any were updated before %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1DA72CB90](v39, -1, -1);
      MEMORY[0x1DA72CB90](v37, -1, -1);
    }

    else
    {

      v56 = v23;
      v44 = v18;
      v86(v56, v18);
    }

    v57 = *(v32 + 8);
    v57(v17, v30);
    v58 = v85;
    v59 = swift_beginAccess();
    v60 = *(v58 + 16);
    MEMORY[0x1EEE9AC00](v59);
    v61 = v83;
    *(&v77 - 2) = v83;

    v62 = *(sub_1D90678D8(sub_1D90762F8, (&v77 - 4), v60) + 16);

    if (v62)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v64 = Strong;
        sub_1D9071A38();
      }

      v65 = v44;
    }

    else
    {
      v66 = v81;
      v78(v81, v80, v30);

      v67 = sub_1D917741C();
      v68 = sub_1D9178D1C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 134217984;
        swift_beginAccess();
        *(v69 + 4) = *(*(v58 + 16) + 16);

        _os_log_impl(&dword_1D8CEC000, v67, v68, "Defer MAPI update, all %ld channels were updated recently", v69, 0xCu);
        MEMORY[0x1DA72CB90](v69, -1, -1);
      }

      else
      {
      }

      v65 = v44;

      v57(v66, v30);
    }

    return (v86)(v61, v65);
  }

  else if (a2)
  {
    v46 = sub_1D9176A5C();
    v48 = v88;
    v47 = v89;
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v47, qword_1EDCD0690);
    swift_beginAccess();
    (*(v48 + 16))(v13, v49, v47);
    v50 = v46;
    v51 = sub_1D917741C();
    v52 = sub_1D9178CFC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v50;
      *v54 = v50;
      v55 = v50;
      _os_log_impl(&dword_1D8CEC000, v51, v52, "Error getting subs TTL from bag: %@", v53, 0xCu);
      sub_1D8D08A50(v54, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v54, -1, -1);
      MEMORY[0x1DA72CB90](v53, -1, -1);
    }

    else
    {
      v55 = v51;
      v51 = v50;
    }

    return (*(v48 + 8))(v13, v47);
  }

  else
  {
    v71 = v88;
    v70 = v89;
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v72 = __swift_project_value_buffer(v70, qword_1EDCD0690);
    swift_beginAccess();
    (*(v71 + 16))(v10, v72, v70);
    v73 = sub_1D917741C();
    v74 = sub_1D9178CFC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1D8CEC000, v73, v74, "Error getting subs TTL from bag", v75, 2u);
      MEMORY[0x1DA72CB90](v75, -1, -1);
    }

    return (*(v71 + 8))(v10, v70);
  }
}

uint64_t sub_1D90729D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9177E9C();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(a6 + *((*MEMORY[0x1E69E7D40] & *a6) + 0x68));
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a1;
  aBlock[4] = sub_1D9076240;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_37_0;
  v19 = _Block_copy(aBlock);
  v20 = a5;

  v21 = a6;
  sub_1D9177E4C();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD720(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v24);
}

uint64_t sub_1D9072CDC(unint64_t a1, char *a2, unint64_t a3)
{
  v185 = a2;
  v182 = sub_1D9176E3C();
  v5 = *(v182 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v182);
  v9 = v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v181 = v172 - v10;
  v11 = sub_1D917744C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v176 = v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (v172 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  isUniquelyReferenced_nonNull_native = v172 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (v172 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v172 - v25;
  if (a1)
  {
    v201[2] = a1;
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if (!swift_dynamicCast() || v199 != 1)
    {
      v40 = a1;
      if (qword_1EDCD5AA8 != -1)
      {
        swift_once();
      }

      v41 = __swift_project_value_buffer(v11, qword_1EDCD0690);
      swift_beginAccess();
      v42 = v12;
      (*(v12 + 16))(v26, v41, v11);
      v43 = a1;
      v44 = sub_1D917741C();
      v45 = v11;
      v46 = sub_1D9178CFC();

      if (os_log_type_enabled(v44, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v199 = v48;
        *v47 = 136315138;
        swift_getErrorValue();
        v49 = sub_1D9179D2C();
        v51 = sub_1D8CFA924(v49, v50, &v199);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_1D8CEC000, v44, v46, "Getting channels failed with error %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x1DA72CB90](v48, -1, -1);
        MEMORY[0x1DA72CB90](v47, -1, -1);
      }

      else
      {
      }

      return (*(v42 + 8))(v26, v45);
    }
  }

  v196 = v18;
  v197 = v9;
  v183 = v5;
  v28 = v185;
  v29 = *((*MEMORY[0x1E69E7D40] & *v185) + 0xA8);
  swift_beginAccess();
  v30 = *&v28[v29];
  os_unfair_lock_lock((v30 + 20));
  *(v30 + 16) = 0;
  os_unfair_lock_unlock((v30 + 20));
  swift_endAccess();
  if (qword_1EDCD5AA8 != -1)
  {
    goto LABEL_162;
  }

  while (2)
  {
    v31 = __swift_project_value_buffer(v11, qword_1EDCD0690);
    swift_beginAccess();
    v32 = *(v12 + 16);
    v178 = v12 + 16;
    v177 = v32;
    v32(v24, v31, v11);
    v33 = sub_1D917741C();
    v34 = sub_1D9178D1C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "Set receivedEntitlementsNotification to false", v35, 2u);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    v36 = *(v12 + 8);
    v12 += 8;
    v184 = v11;
    v180 = v12;
    v179 = v36;
    v36(v24, v11);
    v37 = MEMORY[0x1E69E7CC0];
    if (!a3)
    {
      v39 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_16;
      }

LABEL_33:
      if (v39 < 0)
      {
        v24 = v39;
      }

      else
      {
        v24 = (v39 & 0xFFFFFFFFFFFFFF8);
      }

      v55 = sub_1D917935C();

      if (!(v55 | a1))
      {
LABEL_38:

        v56 = v184;
        v177(isUniquelyReferenced_nonNull_native, v31, v184);
        v57 = sub_1D917741C();
        v58 = sub_1D9178CFC();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_1D8CEC000, v57, v58, "Failed to cast to channel objects", v59, 2u);
          MEMORY[0x1DA72CB90](v59, -1, -1);
        }

        v60 = isUniquelyReferenced_nonNull_native;
        v61 = v56;
        v62 = &v202;
        return (*(v62 - 32))(v60, v61);
      }

      v199 = v37;
      isUniquelyReferenced_nonNull_native = sub_1D917935C();
      goto LABEL_18;
    }

    v38 = sub_1D8FBEEFC(a3);
    if (!v38)
    {
      v39 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }

    v39 = v38;

    if (v39 >> 62)
    {
      goto LABEL_33;
    }

LABEL_16:
    v24 = (v39 & 0xFFFFFFFFFFFFFF8);
    v12 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!(v12 | a1))
    {
      goto LABEL_38;
    }

    v199 = v37;
    isUniquelyReferenced_nonNull_native = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
    v175 = v31;
    if (!isUniquelyReferenced_nonNull_native)
    {
      v54 = MEMORY[0x1E69E7CC0];
      goto LABEL_42;
    }

    a3 = 0;
    v11 = &OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes;
    while ((v39 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x1DA72AA90](a3, v39);
      v12 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        goto LABEL_30;
      }

LABEL_25:
      v53 = *(*&v52[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 74);
      if (v53 == 2 || (v53 & 1) == 0)
      {
      }

      else
      {
        v24 = &v199;
        sub_1D917959C();
        a1 = *(v199 + 16);
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
      }

      ++a3;
      if (v12 == isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_31;
      }
    }

    if (a3 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_154;
    }

    v52 = *(v39 + 8 * a3 + 32);
    v12 = a3 + 1;
    if (!__OFADD__(a3, 1))
    {
      goto LABEL_25;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    v54 = v199;
LABEL_42:

    a3 = v184;
    if (v54 < 0 || (v54 & 0x4000000000000000) != 0)
    {
LABEL_164:
      v63 = sub_1D917935C();
    }

    else
    {
      v63 = *(v54 + 16);
    }

    v64 = MEMORY[0x1E69E7CC0];
    if (!v63)
    {
LABEL_55:
      v72 = sub_1D8FC0F28(v64);

      v73 = v196;
      v177(v196, v175, a3);

      v74 = sub_1D917741C();
      v75 = sub_1D9178D1C();

      v76 = os_log_type_enabled(v74, v75);
      v174 = v72;
      if (v76)
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v199 = v78;
        *v77 = 141558275;
        *(v77 + 4) = 1752392040;
        *(v77 + 12) = 2081;
        v201[0] = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
        sub_1D8CF48EC(&qword_1EDCD5BD8, &unk_1ECAB4F30, &qword_1D918DA90);
        sub_1D8D447DC();
        v79 = sub_1D917851C();
        a1 = sub_1D8CFA924(v79, v80, &v199);

        *(v77 + 14) = a1;
        _os_log_impl(&dword_1D8CEC000, v74, v75, "Got purchased channels %{private,mask.hash}s from MAPI", v77, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        MEMORY[0x1DA72CB90](v78, -1, -1);
        MEMORY[0x1DA72CB90](v77, -1, -1);

        v81 = v73;
        v82 = v184;
      }

      else
      {

        v81 = v73;
        v82 = a3;
      }

      v179(v81, v82);
      v12 = v185;
      v83 = v197;
      sub_1D9176E2C();
      v84 = v181;
      sub_1D9176D7C();
      v85 = *(v183 + 8);
      v183 += 8;
      v172[2] = v85;
      v86 = v85(v83, v182);
      MEMORY[0x1EEE9AC00](v86);
      v172[-2] = v84;
      v172[-1] = v12;

      v11 = 0;
      v87 = sub_1D9067A30(sub_1D907624C, &v172[-4], v54);
      isUniquelyReferenced_nonNull_native = v87;
      v172[1] = 0;
      a3 = v87 >> 62;
      if (v87 >> 62)
      {
        v88 = sub_1D917935C();
      }

      else
      {
        v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = MEMORY[0x1E69E7CC0];
      v192 = isUniquelyReferenced_nonNull_native;
      if (v88)
      {
        v199 = MEMORY[0x1E69E7CC0];
        sub_1D8D41BE0(0, v88 & ~(v88 >> 63), 0);
        if (v88 < 0)
        {
          goto LABEL_167;
        }

        v11 = 0;
        v24 = v199;
        v89 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        do
        {
          if (v89)
          {
            v90 = MEMORY[0x1DA72AA90](v11, isUniquelyReferenced_nonNull_native);
          }

          else
          {
            v90 = *(isUniquelyReferenced_nonNull_native + 8 * v11 + 32);
          }

          v91 = v90;
          a1 = *&v90[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
          v12 = *&v90[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];

          v199 = v24;
          v93 = v24[2];
          v92 = v24[3];
          if (v93 >= v92 >> 1)
          {
            sub_1D8D41BE0((v92 > 1), v93 + 1, 1);
            v24 = v199;
          }

          ++v11;
          v24[2] = v93 + 1;
          v94 = &v24[2 * v93];
          v94[4] = a1;
          v94[5] = v12;
          isUniquelyReferenced_nonNull_native = v192;
        }

        while (v88 != v11);
      }

      v173 = sub_1D8FC0F28(v24);

      if (a3)
      {
        v95 = sub_1D917935C();
      }

      else
      {
        v95 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v186 = v54;
      if (v95)
      {
        v96 = 0;
        v190 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        v189 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        v196 = MEMORY[0x1E69E7CC8];
        v188 = isUniquelyReferenced_nonNull_native + 32;
        v187 = v95;
        while (1)
        {
          if (v190)
          {
            v128 = v96;
            v98 = MEMORY[0x1DA72AA90](v96, isUniquelyReferenced_nonNull_native);
            v99 = __OFADD__(v128, 1);
            v24 = (v128 + 1);
            if (v99)
            {
              goto LABEL_155;
            }
          }

          else
          {
            if (v96 >= *(v189 + 16))
            {
              goto LABEL_156;
            }

            v97 = v96;
            v98 = *(v188 + 8 * v96);
            v99 = __OFADD__(v97, 1);
            v24 = (v97 + 1);
            if (v99)
            {
              goto LABEL_155;
            }
          }

          v100 = *&v98[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
          v194 = v24;
          v195 = v100;
          v101 = *&v98[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];
          v193 = v98;
          v102 = *&v98[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_relationships];
          if (v102 && (v103 = *(v102 + 16)) != 0)
          {
            v191 = v101;
            v24 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
            swift_beginAccess();
            v104 = *(v24 + v103);
            if (v104 >> 62)
            {
              if (v104 < 0)
              {
                v129 = *(v24 + v103);
              }

              v11 = sub_1D917935C();
            }

            else
            {
              v11 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v11)
            {
              isUniquelyReferenced_nonNull_native = 0;
              v197 = v104 & 0xC000000000000001;
              v105 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                if (v197)
                {
                  v106 = MEMORY[0x1DA72AA90](isUniquelyReferenced_nonNull_native, v104);
                }

                else
                {
                  if (isUniquelyReferenced_nonNull_native >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_152;
                  }

                  v106 = *(v104 + 8 * isUniquelyReferenced_nonNull_native + 32);
                }

                a3 = v106;
                v107 = (isUniquelyReferenced_nonNull_native + 1);
                if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
                {
                  break;
                }

                v24 = v11;
                v108 = *&v106[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
                v12 = *&v106[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8];

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v105 = sub_1D8D4241C(0, *(v105 + 2) + 1, 1, v105);
                }

                a1 = *(v105 + 2);
                v109 = *(v105 + 3);
                a3 = a1 + 1;
                if (a1 >= v109 >> 1)
                {
                  v105 = sub_1D8D4241C((v109 > 1), a1 + 1, 1, v105);
                }

                *(v105 + 2) = a3;
                v110 = &v105[16 * a1];
                *(v110 + 4) = v108;
                *(v110 + 5) = v12;
                ++isUniquelyReferenced_nonNull_native;
                v11 = v24;
                if (v107 == v24)
                {
                  goto LABEL_101;
                }
              }

              __break(1u);
LABEL_152:
              __break(1u);
              goto LABEL_153;
            }

            v105 = MEMORY[0x1E69E7CC0];
LABEL_101:

            v24 = v196;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v201[0] = v24;
            v117 = sub_1D8D33C70(v195, v191);
            v119 = v24[2];
            v120 = (v118 & 1) == 0;
            v99 = __OFADD__(v119, v120);
            v121 = v119 + v120;
            if (v99)
            {
              goto LABEL_157;
            }

            v12 = v118;
            if (v24[3] >= v121)
            {
              v54 = v186;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v11 = v117;
                sub_1D8F84DF0();
                v117 = v11;
              }
            }

            else
            {
              sub_1D9008704(v121, isUniquelyReferenced_nonNull_native);
              v117 = sub_1D8D33C70(v195, v191);
              v54 = v186;
              if ((v12 & 1) != (v122 & 1))
              {
                goto LABEL_168;
              }
            }

            isUniquelyReferenced_nonNull_native = v192;
            v24 = v201[0];
            if (v12)
            {
              v123 = *(v201[0] + 56);
              v12 = *(v123 + 8 * v117);
              *(v123 + 8 * v117) = v105;
            }

            else
            {
              *(v201[0] + 8 * (v117 >> 6) + 64) |= 1 << v117;
              v124 = (v24[6] + 16 * v117);
              v125 = v191;
              *v124 = v195;
              v124[1] = v125;
              *(v24[7] + 8 * v117) = v105;

              v126 = v24[2];
              v99 = __OFADD__(v126, 1);
              v127 = v126 + 1;
              if (v99)
              {
                goto LABEL_160;
              }

              v24[2] = v127;
            }
          }

          else
          {
            v11 = v196;

            v111 = sub_1D8D33C70(v195, v101);
            if (v112)
            {
              v113 = v111;
              v114 = swift_isUniquelyReferenced_nonNull_native();
              v201[0] = v11;
              v24 = v11;
              if ((v114 & 1) == 0)
              {
                sub_1D8F84DF0();
                v24 = v201[0];
              }

              v115 = *(v24[6] + 16 * v113 + 8);

              v116 = *(v24[7] + 8 * v113);

              sub_1D8DA2AF4(v113, v24);
            }

            else
            {

              v24 = v11;
            }
          }

          v96 = v194;
          v196 = v24;
          if (v194 == v187)
          {
            goto LABEL_118;
          }
        }
      }

      v24 = MEMORY[0x1E69E7CC8];
LABEL_118:

      a3 = (v24 + 8);
      v130 = 1 << *(v24 + 32);
      v131 = -1;
      if (v130 < 64)
      {
        v131 = ~(-1 << v130);
      }

      v132 = v131 & v24[8];
      v133 = (v130 + 63) >> 6;

      a1 = 0;
      v134 = MEMORY[0x1E69E7CC0];
      while (v132)
      {
LABEL_127:
        v136 = (a1 << 9) | (8 * __clz(__rbit64(v132)));
        isUniquelyReferenced_nonNull_native = *(v24[7] + v136);
        v12 = *(isUniquelyReferenced_nonNull_native + 16);
        v137 = *(v134 + 2);
        v11 = v137 + v12;
        if (__OFADD__(v137, v12))
        {
          goto LABEL_158;
        }

        v138 = *(v24[7] + v136);

        v139 = swift_isUniquelyReferenced_nonNull_native();
        if (!v139 || v11 > *(v134 + 3) >> 1)
        {
          if (v137 <= v11)
          {
            v140 = v137 + v12;
          }

          else
          {
            v140 = v137;
          }

          v134 = sub_1D8D4241C(v139, v140, 1, v134);
        }

        v54 = v186;
        v132 &= v132 - 1;
        if (*(isUniquelyReferenced_nonNull_native + 16))
        {
          if ((*(v134 + 3) >> 1) - *(v134 + 2) < v12)
          {
            goto LABEL_161;
          }

          swift_arrayInitWithCopy();

          if (v12)
          {
            v141 = *(v134 + 2);
            v99 = __OFADD__(v141, v12);
            v142 = v141 + v12;
            if (v99)
            {
              __break(1u);
              goto LABEL_164;
            }

            *(v134 + 2) = v142;
          }
        }

        else
        {

          if (v12)
          {
            goto LABEL_159;
          }
        }
      }

      while (1)
      {
        v135 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        if (v135 >= v133)
        {

          v143 = sub_1D8FC0F28(v134);

          v144 = v185;
          v145 = *((*MEMORY[0x1E69E7D40] & *v185) + 0x90);
          v146 = v174;
          if ((v185[v145] & 1) == 0)
          {
            v147 = *((*MEMORY[0x1E69E7D40] & *v185) + 0x88);
            v148 = *&v185[v147];
            *&v185[v147] = v174;

            v144[v145] = 1;
          }

          v149 = v176;
          v150 = v184;
          v177(v176, v175, v184);
          v151 = v173;

          v152 = sub_1D917741C();
          v153 = sub_1D9178D1C();

          if (os_log_type_enabled(v152, v153))
          {
            v154 = swift_slowAlloc();
            v155 = swift_slowAlloc();
            v201[0] = v155;
            *v154 = 141558787;
            *(v154 + 4) = 1752392040;
            *(v154 + 12) = 2081;
            v198 = v151;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
            sub_1D8CF48EC(&qword_1EDCD5BD8, &unk_1ECAB4F30, &qword_1D918DA90);
            sub_1D8D447DC();
            v156 = sub_1D917851C();
            v158 = sub_1D8CFA924(v156, v157, v201);

            *(v154 + 14) = v158;
            v54 = v186;
            *(v154 + 22) = 2160;
            *(v154 + 24) = 1752392040;
            *(v154 + 32) = 2081;
            v198 = v143;
            v146 = v174;
            v151 = v173;
            v159 = sub_1D917851C();
            v161 = sub_1D8CFA924(v159, v160, v201);

            *(v154 + 34) = v161;
            _os_log_impl(&dword_1D8CEC000, v152, v153, "Got recently purchased channels %{private,mask.hash}s and purchased shows %{private,mask.hash}s from MAPI", v154, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1DA72CB90](v155, -1, -1);
            MEMORY[0x1DA72CB90](v154, -1, -1);

            v162 = v176;
            v163 = v184;
          }

          else
          {

            v162 = v149;
            v163 = v150;
          }

          v179(v162, v163);
          v164 = sub_1D8FB13E8(v143, v151);
          MEMORY[0x1EEE9AC00](v164);
          v165 = type metadata accessor for StorePurchaseTask();
          v172[-2] = v165;
          v172[-1] = &protocol witness table for StorePurchaseTask;
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          v172[-2] = v165;
          v172[-1] = &protocol witness table for StorePurchaseTask;
          swift_getKeyPath();
          v201[0] = v164;
          v167 = v185;
          sub_1D9177ADC();
          v168 = sub_1D8DBC35C(v54);
          if ([objc_opt_self() isRunningOnInternalOS])
          {
            v169 = *&v167[*((*MEMORY[0x1E69E7D40] & *v167) + 0xC8)];
            v170 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
            LODWORD(v169) = [v169 BOOLForKey_];

            if (v169)
            {
              v168 = v146;
            }
          }

          sub_1D9074670(v168, v54);

          v60 = v181;
          v61 = v182;
          v62 = &v200;
          return (*(v62 - 32))(v60, v61);
        }

        v132 = *(a3 + 8 * v135);
        ++a1;
        if (v132)
        {
          a1 = v135;
          goto LABEL_127;
        }
      }

LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      swift_once();
      continue;
    }

    break;
  }

  v199 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v63 & ~(v63 >> 63), 0);
  if ((v63 & 0x8000000000000000) == 0)
  {
    v65 = 0;
    v64 = v199;
    do
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x1DA72AA90](v65, v54);
      }

      else
      {
        v66 = *(v54 + 8 * v65 + 32);
      }

      v67 = v66;
      v68 = *&v66[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
      v69 = *&v66[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];

      v199 = v64;
      a1 = *(v64 + 16);
      v70 = *(v64 + 24);
      if (a1 >= v70 >> 1)
      {
        sub_1D8D41BE0((v70 > 1), a1 + 1, 1);
        v64 = v199;
      }

      ++v65;
      *(v64 + 16) = a1 + 1;
      v71 = v64 + 16 * a1;
      *(v71 + 32) = v68;
      *(v71 + 40) = v69;
    }

    while (v63 != v65);
    a3 = v184;
    goto LABEL_55;
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

uint64_t sub_1D90743DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_1D9176E3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  sub_1D90399EC(v8);
  v15 = *(v10 + 48);
  if (v15(v8, 1, v9) == 1)
  {
    sub_1D9176CEC();
    if (v15(v8, 1, v9) != 1)
    {
      sub_1D8D08A50(v8, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  v16 = sub_1D9176D9C();
  (*(v10 + 8))(v13, v9);
  if (v16)
  {
    v17 = 1;
  }

  else if (*(a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x90)))
  {
    v18 = *(a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x88));
    v19 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id);
    v20 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8);

    LOBYTE(v20) = sub_1D8EF0850(v19, v20, v18);

    v17 = v20 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

char *sub_1D9074670(unint64_t a1, unint64_t a2)
{
  v4 = sub_1D9177E0C();
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D9177E9C();
  v77 = *(v79 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D917744C();
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = *(v84 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v74 = &v70 - v12;
  v75 = v13;
  if (a2 >> 62)
  {
LABEL_34:
    v14 = sub_1D917935C();
  }

  else
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  v83 = a1;
  if (v14)
  {
    a1 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1DA72AA90](a1, a2);
      }

      else
      {
        if (a1 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v16 = *(a2 + 8 * a1 + 32);
      }

      v17 = v16;
      v18 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (*(*&v16[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 176) > 1u)
      {
        if (*(*&v16[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 176) != 2)
        {
          goto LABEL_5;
        }
      }

      else if (!*(*&v16[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 176))
      {

LABEL_16:
        sub_1D917959C();
        v20 = *(aBlock[0] + 16);
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        goto LABEL_6;
      }

      v19 = sub_1D9179ACC();

      if (v19)
      {
        goto LABEL_16;
      }

LABEL_5:

LABEL_6:
      ++a1;
      if (v18 == v14)
      {
        v21 = aBlock[0];
        a1 = v83;
        v15 = MEMORY[0x1E69E7CC0];
        if ((aBlock[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_35;
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

LABEL_21:
  if ((v21 & 0x4000000000000000) != 0)
  {
LABEL_35:
    v22 = sub_1D917935C();
    if (v22)
    {
      goto LABEL_23;
    }

LABEL_36:

    goto LABEL_37;
  }

  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_36;
  }

LABEL_23:
  aBlock[0] = v15;
  result = sub_1D8D41BE0(0, v22 & ~(v22 >> 63), 0);
  if (v22 < 0)
  {
    __break(1u);
    return result;
  }

  v24 = 0;
  v15 = aBlock[0];
  do
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1DA72AA90](v24, v21);
    }

    else
    {
      v25 = *(v21 + 8 * v24 + 32);
    }

    v26 = v25;
    v28 = *&v25[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
    v27 = *&v25[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];

    aBlock[0] = v15;
    v30 = *(v15 + 16);
    v29 = *(v15 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1D8D41BE0((v29 > 1), v30 + 1, 1);
      v15 = aBlock[0];
    }

    ++v24;
    *(v15 + 16) = v30 + 1;
    v31 = v15 + 16 * v30;
    *(v31 + 32) = v28;
    *(v31 + 40) = v27;
  }

  while (v22 != v24);

  a1 = v83;
LABEL_37:
  v32 = sub_1D8FC0F28(v15);

  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v33 = v85;
  v34 = __swift_project_value_buffer(v85, qword_1EDCD0690);
  swift_beginAccess();
  v35 = v84;
  v36 = *(v84 + 16);
  v37 = v74;
  v73 = v84 + 16;
  v72 = v36;
  v36(v74, v34, v33);

  v38 = sub_1D917741C();
  v39 = sub_1D9178D1C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v71 = v34;
    v42 = v41;
    aBlock[0] = v41;
    *v40 = 141558275;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    v43 = sub_1D9178AAC();
    v45 = sub_1D8CFA924(v43, v44, aBlock);

    *(v40 + 14) = v45;
    _os_log_impl(&dword_1D8CEC000, v38, v39, "User's Entitlements IAP/1p Id's: %{private,mask.hash}s", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v46 = v42;
    v34 = v71;
    MEMORY[0x1DA72CB90](v46, -1, -1);
    v47 = v40;
    a1 = v83;
    MEMORY[0x1DA72CB90](v47, -1, -1);
  }

  v48 = *(v35 + 8);
  v48(v37, v33);
  if ([objc_opt_self() isRunningOnInternalOS] && (v49 = *(v82 + *((*MEMORY[0x1E69E7D40] & *v82) + 0xC8)), v50 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0(), LODWORD(v49) = objc_msgSend(v49, sel_BOOLForKey_, v50), v50, v49))
  {

    swift_bridgeObjectRetain_n();
  }

  else
  {

    a1 = sub_1D90701C4(v32, a1);
  }

  v51 = v75;
  v52 = v85;
  v72(v75, v34, v85);

  v53 = sub_1D917741C();
  v54 = sub_1D9178D1C();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v55 = 141558275;
    *(v55 + 4) = 1752392040;
    *(v55 + 12) = 2081;
    v57 = sub_1D9178AAC();
    v59 = v58;

    v60 = sub_1D8CFA924(v57, v59, aBlock);

    *(v55 + 14) = v60;
    _os_log_impl(&dword_1D8CEC000, v53, v54, "Showing all newly subscribed 1p/IAP subscriptions in the confirmation sheet: %{private,mask.hash}s", v55, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x1DA72CB90](v56, -1, -1);
    MEMORY[0x1DA72CB90](v55, -1, -1);
  }

  else
  {
  }

  v48(v51, v52);
  v61 = MEMORY[0x1E69E7CC0];
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v62 = sub_1D9178E1C();
  v63 = swift_allocObject();
  v64 = v82;
  *(v63 + 16) = v82;
  *(v63 + 24) = a1;
  aBlock[4] = sub_1D9076270;
  aBlock[5] = v63;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_44_1;
  v65 = _Block_copy(aBlock);
  v66 = v64;

  v67 = v76;
  sub_1D9177E4C();
  aBlock[0] = v61;
  sub_1D8CFD720(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v68 = v78;
  v69 = v81;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v67, v68, v65);
  _Block_release(v65);

  (*(v80 + 8))(v68, v69);
  return (*(v77 + 8))(v67, v79);
}

uint64_t sub_1D9075084(void *a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x78);
  swift_beginAccess();
  sub_1D9076278(a1 + v4, v11);
  if (!v12)
  {
    return sub_1D8D08A50(v11, &unk_1ECAB9920, &unk_1D91AD170);
  }

  sub_1D8CFD9D8(v11, v8);
  sub_1D8D08A50(v11, &unk_1ECAB9920, &unk_1D91AD170);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 8))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_1D9075180(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v111 = a4;
  v131 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v105 - v7;
  v9 = sub_1D9176E3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v125 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D917744C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v121 = v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v112 = v105 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (v105 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v105 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EDCD5AA8 == -1)
    {
LABEL_18:
      v44 = __swift_project_value_buffer(v13, qword_1EDCD0690);
      swift_beginAccess();
      (*(v14 + 16))(v22, v44, v13);
      v45 = sub_1D9178CFC();
      v46 = sub_1D917741C();
      if (os_log_type_enabled(v46, v45))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1D8CEC000, v46, v45, "Could not unwrap self in PurchaseController. Cannot update subscriptions.", v47, 2u);
        MEMORY[0x1DA72CB90](v47, -1, -1);
      }

      return (*(v14 + 8))(v22, v13);
    }

LABEL_97:
    swift_once();
    goto LABEL_18;
  }

  v26 = Strong;
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v130 = a3;
  v27 = __swift_project_value_buffer(v13, qword_1EDCD0690);
  swift_beginAccess();
  v28 = *(v14 + 16);
  v118 = v27;
  v117 = v14 + 16;
  v116 = v28;
  v28(v24, v27, v13);
  v22 = sub_1D917741C();
  v29 = sub_1D9178D1C();
  if (os_log_type_enabled(v22, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1D8CEC000, v22, v29, "Updating subscribed channels from server objects.", v30, 2u);
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  v128 = v10;
  v120 = v26;
  v129 = v9;

  v31 = *(v14 + 8);
  v14 += 8;
  v124 = v13;
  v119 = v14;
  v115 = v31;
  v31(v24, v13);
  v13 = v131;
  v108 = v8;
  if (v131 >> 62)
  {
    v32 = sub_1D917935C();
    if (v32)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v32 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
LABEL_8:
      v33 = objc_opt_self();
      if (v32 >= 1)
      {
        v34 = v33;
        v35 = objc_opt_self();
        v36 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x1DA72AA90](v36, v13);
          }

          else
          {
            v38 = *(v13 + 8 * v36 + 32);
          }

          v39 = v38;
          v40 = [v35 sharedInstance];
          v41 = [v40 privateQueueContext];

          v42 = [v34 createOrFindChannelFromFeedChannelItem:v39 personalizedRequest:1 context:v41];
          v43 = *&v39[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes];
          sub_1D9039D04(v132);
          if (LOBYTE(v132[0]) >= 4u)
          {
            v37 = 0;
          }

          else
          {
            v37 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
          }

          ++v36;
          [v42 setSubscriptionOfferAppType_];
        }

        while (v32 != v36);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_97;
    }
  }

LABEL_22:
  v49 = [objc_opt_self() sharedInstance];
  v50 = [v49 privateQueueContext];

  sub_1D8CF2154(0, &unk_1EDCD0798, off_1E8567588);
  v51 = sub_1D917908C();
  v52 = MEMORY[0x1E69E7CC0];
  v53 = v51;
  v105[1] = 0;

  v132[0] = v52;
  if (v53 >> 62)
  {
    goto LABEL_94;
  }

  v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v54)
  {
    goto LABEL_24;
  }

LABEL_35:
  v58 = MEMORY[0x1E69E7D40];
  v59 = v120;
  v114 = *((*MEMORY[0x1E69E7D40] & *v120) + 0xC0);
  v60 = *&v120[v114];

  InterestRepository.unsafeFavoriteExistingEntitledChannelsIfNeeded(entitledChannels:)(v52);

  if (v54)
  {
    v52 = 0;
    v62 = *v58 & *v59;
    v123 = v53 & 0xC000000000000001;
    v110 = v53 & 0xFFFFFFFFFFFFFF8;
    v109 = (v53 + 32);
    v113 = *(v62 + 160);
    v127 = (v128 + 8);
    v63 = v13 & 0xC000000000000001;
    v64 = v13 & 0xFFFFFFFFFFFFFF8;
    v107 = (v128 + 48);
    *&v61 = 141558275;
    v106 = v61;
    v122 = v53;
    v128 = v54;
    while (1)
    {
      if (v123)
      {
        v65 = MEMORY[0x1DA72AA90](v52, v53);
      }

      else
      {
        if (v52 >= *(v110 + 16))
        {
          goto LABEL_93;
        }

        v65 = *&v109[8 * v52];
      }

      v53 = v65;
      if (__OFADD__(v52++, 1))
      {
        goto LABEL_91;
      }

      v130 = v52;
      v67 = v125;
      sub_1D9176E2C();
      sub_1D9176CCC();
      v69 = v68;
      v126 = *v127;
      v126(v67, v129);
      [v53 setLastPersonalizedRequestDate_];
      v70 = MEMORY[0x1E69E7CC0];
      v132[0] = MEMORY[0x1E69E7CC0];
      if (v32)
      {
        v71 = 0;
        while (1)
        {
          if (v63)
          {
            v72 = MEMORY[0x1DA72AA90](v71, v13);
          }

          else
          {
            if (v71 >= *(v64 + 16))
            {
              goto LABEL_88;
            }

            v72 = *(v13 + 8 * v71 + 32);
          }

          v73 = v72;
          v13 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
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
            __break(1u);
LABEL_94:
            v54 = sub_1D917935C();
            if (!v54)
            {
              goto LABEL_35;
            }

LABEL_24:
            v52 = 0;
            do
            {
              if ((v53 & 0xC000000000000001) != 0)
              {
                v55 = MEMORY[0x1DA72AA90](v52, v53);
              }

              else
              {
                if (v52 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_90;
                }

                v55 = *(v53 + 8 * v52 + 32);
              }

              v56 = v55;
              v13 = v52 + 1;
              if (__OFADD__(v52, 1))
              {
                goto LABEL_89;
              }

              if ([v55 subscriptionActive])
              {
                sub_1D917959C();
                v57 = *(v132[0] + 16);
                sub_1D91795DC();
                sub_1D91795EC();
                sub_1D91795AC();
              }

              else
              {
              }

              ++v52;
              v77 = v13 == v54;
              v13 = v131;
            }

            while (!v77);
            v52 = v132[0];
            goto LABEL_35;
          }

          v75 = *&v72[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id];
          v74 = *&v72[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8];
          v133 = [v53 storeId];
          v77 = v75 == sub_1D9179A4C() && v74 == v76;
          if (v77)
          {
          }

          else
          {
            v52 = sub_1D9179ACC();

            if ((v52 & 1) == 0)
            {

              goto LABEL_49;
            }
          }

          sub_1D917959C();
          v52 = *(v132[0] + 16);
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
LABEL_49:
          ++v71;
          v77 = v13 == v32;
          v13 = v131;
          if (v77)
          {
            v70 = v132[0];
            v54 = v128;
            break;
          }
        }
      }

      if ((v70 & 0x8000000000000000) != 0 || (v70 & 0x4000000000000000) != 0)
      {
        v52 = v70;
        v97 = sub_1D917935C();
        v70 = v52;
        if (v97)
        {
LABEL_65:
          if ((v70 & 0xC000000000000001) != 0)
          {
            v78 = MEMORY[0x1DA72AA90](0, v70);
          }

          else
          {
            if (!*(v70 + 16))
            {
              goto LABEL_92;
            }

            v78 = *(v70 + 32);
          }

          v79 = v78;

          if ([v53 subscriptionActive])
          {
          }

          else
          {
            v116(v121, v118, v124);
            v80 = v53;
            v81 = sub_1D917741C();
            v82 = sub_1D9178D1C();
            if (os_log_type_enabled(v81, v82))
            {
              v83 = swift_slowAlloc();
              *v83 = v106;
              *(v83 + 4) = 1752392040;
              *(v83 + 12) = 2049;
              *(v83 + 14) = [v80 storeId];

              _os_log_impl(&dword_1D8CEC000, v81, v82, "Setting channel %{private,mask.hash}lld to subscribed", v83, 0x16u);
              MEMORY[0x1DA72CB90](v83, -1, -1);
            }

            else
            {

              v81 = v80;
            }

            v84 = v108;

            v115(v121, v124);
            v85 = *&v79[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes];
            sub_1D90399EC(v84);
            v86 = v129;
            if ((*v107)(v84, 1, v129) == 1)
            {
              sub_1D8D08A50(v84, &qword_1ECAB75C0, &unk_1D9188A50);
              v87 = 0.0;
            }

            else
            {
              sub_1D9176CCC();
              v89 = v88;
              v126(v84, v86);
              v87 = v89;
            }

            v90 = v120;
            [*&v120[v113] unsafeHandleSubscriptionChangeForChannel:v80 subscriptionBecameActive:1 subscriptionEnabledDate:v87];
            v91 = *&v90[v114];

            v92 = [v80 storeId];
            InterestRepository.favoriteInterest(forAdamID:force:)(v92 & ~(v92 >> 63), 0);

            v93 = [v80 storeId];
            v132[0] = v93 & ~(v93 >> 63);
            sub_1D8E40D20();
            v94 = sub_1D917927C();
            v96 = v95;
            swift_beginAccess();
            sub_1D8D19AFC(&v133, v94, v96);
            swift_endAccess();
          }

          v54 = v128;
          goto LABEL_39;
        }
      }

      else if (*(v70 + 16))
      {
        goto LABEL_65;
      }

      if ([v53 subscriptionActive])
      {
        v116(v112, v118, v124);
        v98 = v53;
        v99 = sub_1D917741C();
        v100 = sub_1D9178D1C();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = v106;
          *(v101 + 4) = 1752392040;
          *(v101 + 12) = 2049;
          *(v101 + 14) = [v98 storeId];

          _os_log_impl(&dword_1D8CEC000, v99, v100, "Setting channel %{private,mask.hash}lld to not subscribed", v101, 0x16u);
          MEMORY[0x1DA72CB90](v101, -1, -1);
        }

        else
        {

          v99 = v98;
        }

        v115(v112, v124);
        v102 = v120;
        [*&v120[v113] unsafeHandleSubscriptionChangeForChannel:v98 subscriptionBecameActive:0 subscriptionEnabledDate:0.0];
        v103 = *&v102[v114];

        v104 = [v98 storeId];
        InterestRepository.unfavoriteInterest(forAdamID:)(v104 & ~(v104 >> 63));
      }

      else
      {
      }

LABEL_39:
      v52 = v130;
      v53 = v122;
      if (v130 == v54)
      {
      }
    }
  }
}

id PurchaseControllerWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchaseControllerWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9076278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9920, &unk_1D91AD170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9076334@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_1D90763DC()
{
  result = qword_1ECAB9A80;
  if (!qword_1ECAB9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9A80);
  }

  return result;
}

unint64_t sub_1D9076434()
{
  result = qword_1ECAB9A88;
  if (!qword_1ECAB9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9A88);
  }

  return result;
}

unint64_t sub_1D907648C()
{
  result = qword_1ECAB9A90;
  if (!qword_1ECAB9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9A90);
  }

  return result;
}

unint64_t sub_1D90764E4()
{
  result = qword_1ECAB9A98;
  if (!qword_1ECAB9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9A98);
  }

  return result;
}

uint64_t StorePurchaseError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

id StorePurchaseTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StorePurchaseTask.init()()
{
  v1 = &v0[OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate];
  v2 = type metadata accessor for StorePurchaseTask();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1D907673C(uint64_t a1, uint64_t *a2)
{
  sub_1D90767F8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  sub_1D90768C8(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1D90767A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  return sub_1D90767F8(v1 + v3, a1);
}

uint64_t sub_1D90767F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9A78, &qword_1D91AD680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9076868(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  sub_1D90768C8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D90768C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9A78, &qword_1D91AD680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D907699C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v13 = *a5;
  v14 = objc_allocWithZone(MEMORY[0x1E698C818]);
  v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v16 = [v14 initWithString_];

  v17 = [objc_allocWithZone(MEMORY[0x1E698CAE0]) initWithPurchaseType:3 buyParams:v16];
  [v17 setUserInitiated_];
  [v17 setRequiresAccount_];
  if (a6)
  {
    a6 = sub_1D917802C();
  }

  [v17 setMetricsOverlay_];

  if (a4)
  {
    a4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v17 setPresentingSceneIdentifier_];

  sub_1D9077144(v17, a7, a8, a9);
}

uint64_t sub_1D9076B28(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = sub_1D917744C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  if (a2)
  {
    v36 = a5;
    v38 = a2;
    v17 = sub_1D9176A5C();
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v37 = a4;
    v18 = __swift_project_value_buffer(v9, qword_1EDCD0690);
    swift_beginAccess();
    (*(v10 + 16))(v16, v18, v9);
    v19 = v17;
    v20 = a3;
    v21 = sub_1D917741C();
    v22 = sub_1D9178CFC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412546;
      *(v23 + 4) = v19;
      *v24 = v19;
      *(v23 + 12) = 2112;
      v25 = v19;
      v26 = [v20 buyParams];
      *(v23 + 14) = v26;
      v24[1] = v26;
      _os_log_impl(&dword_1D8CEC000, v21, v22, "Purchase completed with error: %@. buyParams %@", v23, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C70, &unk_1D9188C30);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v24, -1, -1);
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

    else
    {
      v25 = v21;
      v21 = v19;
    }

    a4 = v37;
    a2 = v38;
  }

  else
  {
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v9, qword_1EDCD0690);
    swift_beginAccess();
    (*(v10 + 16))(v13, v27, v9);
    v28 = a3;
    v21 = sub_1D917741C();
    v29 = sub_1D9178D1C();

    if (os_log_type_enabled(v21, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = 0;
      v32 = v31;
      *v30 = 138412290;
      v33 = [v28 buyParams];
      *(v30 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&dword_1D8CEC000, v21, v29, "Purchase completed successfully %@", v30, 0xCu);
      sub_1D8D08A50(v32, &unk_1ECAB6C70, &unk_1D9188C30);
      v34 = v32;
      a2 = v38;
      MEMORY[0x1DA72CB90](v34, -1, -1);
      MEMORY[0x1DA72CB90](v30, -1, -1);
    }

    v16 = v13;
  }

  (*(v10 + 8))(v16, v9);
  return a4(a2);
}

id StorePurchaseTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StorePurchaseTask();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D9076FB4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(v1) init];
  *a1 = result;
  return result;
}

uint64_t sub_1D9076FEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  return sub_1D90767F8(v3 + v4, a1);
}

uint64_t sub_1D9077048(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  sub_1D90768C8(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t (*sub_1D90770AC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_1D9077144(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v49 = a4;
  v48 = a3;
  v7 = sub_1D917744C();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47[-v13];
  v15 = [objc_opt_self() ams_sharedAccountStore];
  v16 = [v15 ams_activeiTunesAccount];

  [a1 setAccount_];
  v17 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  sub_1D90767F8(v4 + v17, &aBlock);
  if (v53)
  {
    sub_1D8D6BCE0(&aBlock, v56);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v19 = v57;
    v20 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    *(v18 + 16) = (*(v20 + 32))(a1, a2, v19, v20);
    v32 = v7;
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v7, qword_1EDCD0690);
    swift_beginAccess();
    v34 = v50;
    (*(v50 + 16))(v14, v33, v32);
    v35 = a1;
    v36 = sub_1D917741C();
    v37 = sub_1D9178D1C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = [v35 buyParams];
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&dword_1D8CEC000, v36, v37, "Starting purchase with buyParams: %@", v38, 0xCu);
      sub_1D8D08A50(v39, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v39, -1, -1);
      MEMORY[0x1DA72CB90](v38, -1, -1);
    }

    (*(v34 + 8))(v14, v32);
    v41 = *(v18 + 16);
    if (v41)
    {
      v42 = [v41 performPurchase];
      v43 = swift_allocObject();
      v44 = v48;
      v43[2] = v35;
      v43[3] = v44;
      v43[4] = v49;
      v43[5] = v18;
      v54 = sub_1D9077CF4;
      v55 = v43;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v52 = sub_1D8D5960C;
      v53 = &block_descriptor_71;
      v45 = _Block_copy(&aBlock);
      v46 = v35;

      [v42 addFinishBlock_];
      _Block_release(v45);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v56);
  }

  else
  {
    sub_1D8D08A50(&aBlock, &qword_1ECAB9A78, &qword_1D91AD680);
    if (qword_1EDCD5AA8 != -1)
    {
      swift_once();
    }

    v21 = v7;
    v22 = __swift_project_value_buffer(v7, qword_1EDCD0690);
    swift_beginAccess();
    v23 = v50;
    (*(v50 + 16))(v11, v22, v21);
    v24 = a1;
    v25 = sub_1D917741C();
    v26 = sub_1D9178CFC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = [v24 buyParams];
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "Failed to purchase because there is no UI delegate, buyParams: %@", v27, 0xCu);
      sub_1D8D08A50(v28, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v28, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }

    (*(v23 + 8))(v11, v21);
    sub_1D9077CA0();
    v30 = swift_allocError();
    *v31 = 0;
    v48();
  }
}

uint64_t sub_1D9077988()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698C818]);
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 initWithString_];

  if ([v2 parameterForKey_])
  {
    sub_1D917928C();

    swift_unknownObjectRelease();
  }

  else
  {

    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D8D08A50(v7, &qword_1ECAB57F0, &unk_1D9190AA0);
    return 0;
  }
}

unint64_t sub_1D9077AB4()
{
  result = qword_1ECAB9AA8;
  if (!qword_1ECAB9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AA8);
  }

  return result;
}

uint64_t dispatch thunk of StorePurchaseDelegate.handle(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))();
}

{
  return (*(a5 + 16))();
}

{
  return (*(a5 + 24))();
}

unint64_t sub_1D9077CA0()
{
  result = qword_1ECAB9AB0;
  if (!qword_1ECAB9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AB0);
  }

  return result;
}

PodcastsFoundation::HTTPStatusCode_optional __swiftcall HTTPStatusCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 500)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 400)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 200)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

unint64_t sub_1D9077D7C()
{
  result = qword_1ECAB9AB8;
  if (!qword_1ECAB9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AB8);
  }

  return result;
}

uint64_t sub_1D9077DD0()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](qword_1D91AD918[v1]);
  return sub_1D9179E1C();
}

uint64_t sub_1D9077E58()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](qword_1D91AD918[v1]);
  return sub_1D9179E1C();
}

uint64_t IMURLRequestEncoder.prepareRequestOnQueueAsync(_:account:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D9077EFC, 0, 0);
}

uint64_t sub_1D9077EFC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  *v5 = v0;
  v5[1] = sub_1D904D4F4;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD00000000000002CLL, 0x80000001D91D4A70, sub_1D9078458, v3, v6);
}

uint64_t sub_1D907800C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v38 = a5;
  v36 = a3;
  v44 = a2;
  v41 = sub_1D9177E0C();
  v43 = *(v41 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D9177E9C();
  v40 = *(v42 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938);
  v35 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = sub_1D917653C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a4, v16, v19);
  (*(v12 + 16))(v15, a1, v11);
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v12 + 80) + v22 + 8) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 16) = v36;
  (*(v17 + 32))(v24 + v21, v20, v16);
  v26 = v38;
  *(v24 + v22) = v38;
  (*(v12 + 32))(v24 + v23, v15, v35);
  aBlock[4] = sub_1D90786FC;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_72;
  v27 = _Block_copy(aBlock);
  v28 = v26;
  v29 = v25;
  v30 = v37;
  sub_1D9177E4C();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  v31 = v39;
  v32 = v41;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v30, v31, v27);
  _Block_release(v27);
  (*(v43 + 8))(v31, v32);
  (*(v40 + 8))(v30, v42);
}

void sub_1D9078464(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v21 = a1;
  v22 = a3;
  v5 = sub_1D917653C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v14 = sub_1D91764BC();
  (*(v10 + 16))(v13, v20, v9);
  (*(v6 + 16))(v8, a2, v5);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + *(v6 + 80) + v15) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v15, v13, v9);
  (*(v6 + 32))(v17 + v16, v8, v5);
  aBlock[4] = sub_1D9078954;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D90669A0;
  aBlock[3] = &block_descriptor_8_0;
  v18 = _Block_copy(aBlock);

  [v21 prepareRequest:v14 account:v22 completion:v18];
  _Block_release(v18);
}

void sub_1D90786FC()
{
  v1 = *(sub_1D917653C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938) - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  sub_1D9078464(v5, v0 + v2, v6, v7);
}

uint64_t sub_1D90787E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v14 - v8;
  if (a2)
  {
    v14[1] = a2;
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938);
    return sub_1D917875C();
  }

  else
  {
    v12 = sub_1D917653C();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v9, a4, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938);
    return sub_1D917876C();
  }
}

uint64_t sub_1D9078954(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1D917653C() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1D90787E8(a1, a2, v2 + v6, v9);
}

uint64_t MediaRequest.Params.init(requestType:requestContentType:viewType:directFetch:relationshipIncludes:relationshipRelates:relationshipLimit:include:omit:typedIncludes:typedExtends:typedAssociations:fields:typedFields:withTypes:displayKinds:identifiers:fragment:limit:filters:meta:offset:pageName:requestAllPages:hostUrl:countryCode:isImplicitActionRequest:searchTerm:queryContentTypes:triggerBy:includeEntitlementsOverride:languageTag:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, char *a15, uint64_t a16, char a17, __int128 a18, uint64_t a19, char a20, char *a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34)
{
  v52 = *(a1 + 4);
  *(a9 + 41) = 263;
  *(a9 + 43) = 5;
  *(a9 + 152) = 1;
  *(a9 + 201) = 1;
  v36 = *(a1 + 40);
  v49 = *a2;
  v37 = *a3;
  v38 = *a4;
  v51 = *a15;
  v53 = *a21;
  v39 = type metadata accessor for MediaRequest.Params();
  v40 = v39[28];
  v41 = sub_1D9176C2C();
  v47 = a1[1];
  v48 = *a1;
  (*(*(v41 - 8) + 56))(a9 + v40, 1, 1, v41);
  v42 = (a9 + v39[29]);
  v43 = (a9 + v39[31]);
  v50 = v39[34];
  v44 = (a9 + v39[33]);
  v45 = (a9 + v39[35]);
  *a9 = v48;
  *(a9 + 16) = v47;
  *(a9 + 32) = v52;
  *(a9 + 40) = v36;
  *(a9 + 41) = v49;
  *(a9 + 42) = v37;
  *(a9 + 43) = v38;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 96) = a11;
  *(a9 + 112) = a12;
  *(a9 + 128) = a13;
  *(a9 + 144) = a14;
  *(a9 + 152) = v51;
  *(a9 + 160) = a16;
  *(a9 + 168) = a17 & 1;
  *(a9 + 176) = a18;
  *(a9 + 192) = a19;
  *(a9 + 200) = a20 & 1;
  *(a9 + 201) = v53;
  *(a9 + 202) = a22;
  result = sub_1D8E26828(a23, a9 + v40);
  *v42 = a24;
  v42[1] = a25;
  *(a9 + v39[30]) = a26;
  *v43 = a27;
  v43[1] = a28;
  *(a9 + v39[32]) = a29;
  *v44 = a30;
  v44[1] = a31;
  *(a9 + v50) = a32;
  *v45 = a33;
  v45[1] = a34;
  return result;
}

uint64_t MediaRequest.RequestType.init(raw:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_1D91767FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D91767BC();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_1D8D08A50(v5, &qword_1ECAB76F0, &qword_1D91B6700);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
    v16 = -1;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = sub_1D917677C();
    v13 = v17;
    v14 = sub_1D917670C();
    result = (*(v7 + 8))(v10, v6);
    v15 = xmmword_1D91AD940;
    v16 = 3;
  }

  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 40) = v16;
  return result;
}

uint64_t MediaRequest.Params.init(recommendationsWith:contentTypes:displayKinds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v40 = a2;
  v38 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v36 = &v27 - v7;
  v37 = sub_1D8D946F4(&unk_1F5461610);
  sub_1D8D08A50(&unk_1F5461630, &unk_1ECAB9A50, &unk_1D9197130);
  v35 = sub_1D8D946F4(&unk_1F5461640);
  sub_1D8D08A50(&unk_1F5461660, &unk_1ECAB9A50, &unk_1D9197130);
  v9 = sub_1D9176C2C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v11 = MEMORY[0x1E69E7CC0];
  v34 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v33 = sub_1D8D94DF8(v11);
  v32 = sub_1D8D951E0(v11);
  v31 = sub_1D8D9503C(v11);
  v29 = sub_1D8D953C4(v11);
  v28 = sub_1D8D952D8(v11);
  v30 = sub_1D8D95394(v11);
  v27 = sub_1D8D957C4(v11);
  *(a4 + 41) = 263;
  *(a4 + 43) = 5;
  *(a4 + 152) = 1;
  *(a4 + 201) = 1;
  v12 = type metadata accessor for MediaRequest.Params();
  v13 = v12[28];
  v10((a4 + v13), 1, 1, v9);
  v14 = (a4 + v12[29]);
  v15 = (a4 + v12[31]);
  v16 = v12[34];
  v17 = (a4 + v12[33]);
  v18 = (a4 + v12[35]);
  *a4 = v38;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 83953409;
  v19 = v33;
  *(a4 + 48) = v34;
  *(a4 + 56) = v19;
  v20 = v31;
  *(a4 + 64) = v32;
  *(a4 + 72) = v11;
  v21 = v37;
  *(a4 + 80) = v20;
  *(a4 + 88) = v21;
  v22 = v29;
  *(a4 + 96) = v35;
  *(a4 + 104) = v22;
  v23 = v28;
  *(a4 + 112) = v11;
  *(a4 + 120) = v23;
  v24 = v39;
  *(a4 + 128) = &unk_1F54615E8;
  *(a4 + 136) = v24;
  *(a4 + 144) = v11;
  *(a4 + 152) = 1;
  *(a4 + 160) = 0;
  *(a4 + 168) = 1;
  v25 = v27;
  *(a4 + 176) = v30;
  *(a4 + 184) = v25;
  *(a4 + 192) = 0;
  *(a4 + 200) = 1;
  *(a4 + 202) = 0;
  result = sub_1D8E26828(v36, a4 + v13);
  *v14 = 0;
  v14[1] = 0;
  *(a4 + v12[30]) = 0;
  *v15 = 0;
  v15[1] = 0;
  *(a4 + v12[32]) = v40;
  *v17 = 0;
  v17[1] = 0;
  *(a4 + v16) = 2;
  *v18 = 0;
  v18[1] = 0;
  return result;
}

PodcastsFoundation::MediaRequest::ContentType_optional __swiftcall MediaRequest.ContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaRequest.Params.init(searchTerm:contentTypes:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v46 = a2;
  v47 = a3;
  v45 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v40 = &v34 - v11;
  v44 = sub_1D8E27040(&unk_1F5461AF0);
  sub_1D8D08A50(&unk_1F5461B10, &qword_1ECAB8E08, &qword_1D91A7608);
  v43 = sub_1D8D946F4(&unk_1F5461B20);
  sub_1D8D08A50(&unk_1F5461B40, &unk_1ECAB9A50, &unk_1D9197130);
  v42 = sub_1D8D946F4(&unk_1F5461B50);
  sub_1D8D08A50(&unk_1F5461B70, &unk_1ECAB9A50, &unk_1D9197130);
  v13 = 3;
  if ((a5 & 1) == 0)
  {
    v13 = a4;
  }

  v41 = v13;
  v14 = sub_1D9176C2C();
  v15 = *(*(v14 - 8) + 56);
  v15(v12, 1, 1, v14);
  v16 = MEMORY[0x1E69E7CC0];
  v39 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v38 = sub_1D8D951E0(v16);
  v37 = sub_1D8D9503C(v16);
  v36 = sub_1D8D953C4(v16);
  v34 = sub_1D8D952D8(v16);
  v35 = sub_1D8D95394(v16);
  v17 = sub_1D8D957C4(v16);
  *(a6 + 41) = 263;
  *(a6 + 43) = 5;
  *(a6 + 152) = 1;
  *(a6 + 201) = 1;
  v18 = type metadata accessor for MediaRequest.Params();
  v19 = v18[28];
  v15((a6 + v19), 1, 1, v14);
  v20 = (a6 + v18[29]);
  v21 = (a6 + v18[31]);
  v22 = v18[34];
  v23 = (a6 + v18[33]);
  v24 = (a6 + v18[35]);
  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 40) = 83953412;
  v25 = v44;
  *(a6 + 48) = v39;
  *(a6 + 56) = v25;
  v26 = v37;
  *(a6 + 64) = v38;
  *(a6 + 72) = v16;
  v28 = v42;
  v27 = v43;
  *(a6 + 80) = v26;
  *(a6 + 88) = v27;
  v29 = v36;
  *(a6 + 96) = v28;
  *(a6 + 104) = v29;
  v30 = v34;
  *(a6 + 112) = v16;
  *(a6 + 120) = v30;
  *(a6 + 128) = v16;
  *(a6 + 136) = v16;
  *(a6 + 144) = v16;
  *(a6 + 152) = 1;
  v31 = v40;
  *(a6 + 160) = v41;
  *(a6 + 168) = 0;
  *(a6 + 176) = v35;
  *(a6 + 184) = v17;
  *(a6 + 192) = 0;
  *(a6 + 200) = 257;
  *(a6 + 202) = 0;
  result = sub_1D8E26828(v31, a6 + v19);
  *v20 = 0;
  v20[1] = 0;
  *(a6 + v18[30]) = 0;
  v33 = v46;
  *v21 = v45;
  v21[1] = v33;
  *(a6 + v18[32]) = v47;
  *v23 = 0;
  v23[1] = 0;
  *(a6 + v22) = 2;
  *v24 = 0;
  v24[1] = 0;
  return result;
}

uint64_t MediaRequest.Params.requestType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 40);
  *(a1 + 40) = v7;
  return sub_1D8D8DFD4(v2, v3, v4, v5, v6, v7);
}

__n128 MediaRequest.Params.requestType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1D8D85E5C(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t MediaRequest.Params.relationshipIncludes.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t MediaRequest.Params.relationshipRelates.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t MediaRequest.Params.relationshipLimit.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t MediaRequest.Params.include.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t MediaRequest.Params.omit.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t MediaRequest.Params.typedIncludes.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t MediaRequest.Params.typedExtends.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t MediaRequest.Params.typedAssociations.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t MediaRequest.Params.fields.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t MediaRequest.Params.typedFields.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t MediaRequest.Params.withTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t MediaRequest.Params.displayKinds.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

uint64_t MediaRequest.Params.identifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t MediaRequest.Params.limit.getter()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t MediaRequest.Params.limit.setter(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t MediaRequest.Params.filters.setter(uint64_t a1)
{
  v3 = *(v1 + 176);

  *(v1 + 176) = a1;
  return result;
}

uint64_t MediaRequest.Params.meta.setter(uint64_t a1)
{
  v3 = *(v1 + 184);

  *(v1 + 184) = a1;
  return result;
}

uint64_t MediaRequest.Params.offset.getter()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t MediaRequest.Params.offset.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t MediaRequest.Params.hostUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaRequest.Params() + 112);

  return sub_1D8ECA48C(v3, a1);
}

uint64_t MediaRequest.Params.hostUrl.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MediaRequest.Params() + 112);

  return sub_1D8E26828(a1, v3);
}

uint64_t MediaRequest.Params.countryCode.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaRequest.Params() + 116));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaRequest.Params.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaRequest.Params() + 116));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaRequest.Params.isImplicitActionRequest.setter(char a1)
{
  result = type metadata accessor for MediaRequest.Params();
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t MediaRequest.Params.searchTerm.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaRequest.Params() + 124));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaRequest.Params.searchTerm.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaRequest.Params() + 124));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaRequest.Params.queryContentTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaRequest.Params() + 128));
}

uint64_t MediaRequest.Params.queryContentTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaRequest.Params() + 128);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MediaRequest.Params.triggerBy.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaRequest.Params() + 132));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaRequest.Params.triggerBy.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaRequest.Params() + 132));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MediaRequest.Params.includeEntitlementsOverride.setter(char a1)
{
  result = type metadata accessor for MediaRequest.Params();
  *(v1 + *(result + 136)) = a1;
  return result;
}

uint64_t MediaRequest.Params.languageTag.getter()
{
  v1 = (v0 + *(type metadata accessor for MediaRequest.Params() + 140));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MediaRequest.Params.languageTag.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaRequest.Params() + 140));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1D907A264()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

void sub_1D907A3AC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7374736163646F70;
  v5 = 0xEA00000000007365;
  v6 = 0x69726F6765746163;
  if (v2 != 5)
  {
    v6 = 0x6970652D7478656ELL;
    v5 = 0xED00007365646F73;
  }

  v7 = 0x80000001D91C7F60;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x697263736E617274;
    v7 = 0xEB00000000737470;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001D91C7F40;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001D91C7F20;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

PodcastsFoundation::MediaRequest::HTTPMethod_optional __swiftcall MediaRequest.HTTPMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaRequest.HTTPMethod.rawValue.getter()
{
  v1 = 1953722224;
  if (*v0 != 1)
  {
    v1 = 0x6574656C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7628135;
  }
}

uint64_t sub_1D907A604(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1953722224;
  if (v2 != 1)
  {
    v4 = 0x6574656C6564;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7628135;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1953722224;
  if (*a2 != 1)
  {
    v8 = 0x6574656C6564;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7628135;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D907A6E8()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D907A778()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D907A7F4()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D907A88C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1953722224;
  if (v2 != 1)
  {
    v5 = 0x6574656C6564;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7628135;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t MediaRequest.ViewType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D917980C();

  *a1 = v2 != 0;
  return result;
}

PodcastsFoundation::MediaRequest::IncludeExtendTypes_optional __swiftcall MediaRequest.IncludeExtendTypes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9179C6C();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D907ABB4@<X0>(unint64_t *a1@<X8>)
{
  result = MediaRequest.IncludeExtendTypes.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MediaRequest.URLFragment.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D917980C();

  *a1 = v2 != 0;
  return result;
}

PodcastsFoundation::MediaRequest::Relationship_optional __swiftcall MediaRequest.Relationship.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MediaRequest.Relationship.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7365646F73697065;
  v3 = 0x2D74736163646F70;
  v4 = 0x697263736E617274;
  if (v1 != 3)
  {
    v4 = 0x7372657470616863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1D907ADB0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D907AEAC()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D907AF94()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D907B098(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7365646F73697065;
  v5 = 0xEF736E6F73616573;
  v6 = 0x2D74736163646F70;
  v7 = 0xEB00000000737470;
  v8 = 0x697263736E617274;
  if (v2 != 3)
  {
    v8 = 0x7372657470616863;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001D91C7F20;
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

PodcastsFoundation::MediaRequest::Filter_optional __swiftcall MediaRequest.Filter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MediaRequest.Filter.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656C75646F6DLL;
  v3 = 0x6C725564656566;
  v4 = 0x6449636E7973;
  if (v1 != 3)
  {
    v4 = 0x4B79616C70736964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
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

uint64_t sub_1D907B258()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D907B340()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D907B414()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D907B504(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656C75646F6DLL;
  v5 = 0xE700000000000000;
  v6 = 0x6C725564656566;
  v7 = 0xE600000000000000;
  v8 = 0x6449636E7973;
  if (v2 != 3)
  {
    v8 = 0x4B79616C70736964;
    v7 = 0xEC00000073646E69;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000001D91C81C0;
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

PodcastsFoundation::MediaRequest::WithTypes_optional __swiftcall MediaRequest.WithTypes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaRequest.WithTypes.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x63646F507377656ELL;
  v3 = 0x69726F6765746163;
  if (v1 != 5)
  {
    v3 = 0x7372657470616863;
  }

  v4 = 0x697263736E617274;
  if (v1 != 3)
  {
    v4 = 0x6E79536E61656C63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D656C7469746E65;
  if (v1 != 1)
  {
    v5 = 0x726566664F707061;
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

uint64_t sub_1D907B710()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

unint64_t sub_1D907B84C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000073746E65;
  v3 = *v1;
  v4 = 0xEC00000073747361;
  v5 = 0x63646F507377656ELL;
  v6 = 0xEA00000000007365;
  v7 = 0x69726F6765746163;
  if (v3 != 5)
  {
    v7 = 0x7372657470616863;
    v6 = 0xE800000000000000;
  }

  v8 = 0xEB00000000737470;
  v9 = 0x697263736E617274;
  result = 0xE900000000000063;
  if (v3 != 3)
  {
    v9 = 0x6E79536E61656C63;
    v8 = 0xE900000000000063;
  }

  if (*v1 <= 4u)
  {
    v7 = v9;
    v6 = v8;
  }

  v11 = 0x6D656C7469746E65;
  if (v3 != 1)
  {
    v11 = 0x726566664F707061;
    v2 = 0xE900000000000073;
  }

  if (*v1)
  {
    v5 = v11;
    v4 = v2;
  }

  if (*v1 <= 2u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (*v1 <= 2u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t MediaRequest.MediaRequestActionType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D917980C();

  *a1 = v2 != 0;
  return result;
}

PodcastsFoundation::MediaRequest::Field_optional __swiftcall MediaRequest.Field.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MediaRequest.Field.rawValue.getter()
{
  result = 0x6B726F77747261;
  switch(*v0)
  {
    case 1:
      result = 0x5479616C70736964;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x657373416C6D7474;
      break;
    case 4:
      result = 0x656B6F546C6D7474;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x6574656C706D6F63;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x72617262694C6E69;
      break;
    case 0xA:
      result = 1701667182;
      break;
    case 0xB:
      result = 0x614E747369747261;
      break;
    case 0xC:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D907BC0C(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D907BCCC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_1D9179DBC();
  a3(v6);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D907BD54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D907BDD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_1D9179DBC();
  a4(v7);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D907BE4C@<X0>(unint64_t *a1@<X8>)
{
  result = MediaRequest.Field.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MediaRequest.PageName.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D917980C();

  *a1 = v2 != 0;
  return result;
}

uint64_t MediaRequest.Association.hash(into:)()
{
  v1 = v0[1];
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  if (v1 == 26)
  {
    return sub_1D9179DDC();
  }

  sub_1D9179DDC();
  MediaRequest.IncludeExtendTypes.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t MediaRequest.Association.hashValue.getter()
{
  v2 = *v0;
  sub_1D9179DBC();
  MediaRequest.Association.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D907C128()
{
  v2 = *v0;
  sub_1D9179DBC();
  MediaRequest.Association.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D907C178()
{
  v2 = *v0;
  sub_1D9179DBC();
  MediaRequest.Association.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation12MediaRequestC11AssociationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D8D8D46C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 26)
  {
    return v3 == 26;
  }

  if (v3 == 26)
  {
    return 0;
  }

  v5 = MediaRequest.IncludeExtendTypes.rawValue.getter();
  v7 = v6;
  if (v5 != MediaRequest.IncludeExtendTypes.rawValue.getter() || v7 != v8)
  {
    v9 = sub_1D9179ACC();

    return (v9 & 1) != 0;
  }

  return 1;
}

unint64_t sub_1D907C2C8()
{
  result = qword_1ECAB9AC8;
  if (!qword_1ECAB9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AC8);
  }

  return result;
}

unint64_t sub_1D907C320()
{
  result = qword_1ECAB9AD0;
  if (!qword_1ECAB9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AD0);
  }

  return result;
}

unint64_t sub_1D907C378()
{
  result = qword_1ECAB9AD8;
  if (!qword_1ECAB9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AD8);
  }

  return result;
}

unint64_t sub_1D907C3D0()
{
  result = qword_1ECAB9AE0;
  if (!qword_1ECAB9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AE0);
  }

  return result;
}

unint64_t sub_1D907C428()
{
  result = qword_1ECAB9AE8;
  if (!qword_1ECAB9AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AE8);
  }

  return result;
}

unint64_t sub_1D907C480()
{
  result = qword_1ECAB9AF0;
  if (!qword_1ECAB9AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AF0);
  }

  return result;
}

unint64_t sub_1D907C4D8()
{
  result = qword_1ECAB9AF8;
  if (!qword_1ECAB9AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AF8);
  }

  return result;
}

unint64_t sub_1D907C530()
{
  result = qword_1ECAB9B00;
  if (!qword_1ECAB9B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9B00);
  }

  return result;
}

void sub_1D907C5E8()
{
  if (!qword_1ECAB0170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9B10, &qword_1D91AE208);
    sub_1D8D93908();
    v0 = sub_1D91780DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB0170);
    }
  }
}

void sub_1D907C660()
{
  if (!qword_1ECAB0150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8D942BC();
    v0 = sub_1D91780DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB0150);
    }
  }
}

void sub_1D907C6D8()
{
  if (!qword_1ECAB0168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8D93908();
    v0 = sub_1D91780DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB0168);
    }
  }
}

uint64_t sub_1D907C750(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1D907C798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1D907C7E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaRequest.IncludeExtendTypes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaRequest.IncludeExtendTypes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaRequest.Association(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 65286 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65286 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65286;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65286;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65286;
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

_WORD *storeEnumTagSinglePayload for MediaRequest.Association(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65286 < 0xFF0000)
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
    v5 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1D907CB10()
{
  result = qword_1ECAB9B18;
  if (!qword_1ECAB9B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9B18);
  }

  return result;
}

void __swiftcall ServerPodcast.toFeed()(IMPodcastFeed *__return_ptr retstr)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v92 - v5;
  v7 = [objc_allocWithZone(IMPodcastFeed) init];
  v8 = v7;
  v9 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v9)
  {
    [v7 setFeedDescription_];
    goto LABEL_12;
  }

  v10 = *(v9 + 104);
  if (!v10)
  {
    v13 = 0;
LABEL_9:

    goto LABEL_10;
  }

  if (v10[3])
  {
    v11 = v10[2];
    v12 = v10[3];

LABEL_8:
    v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    goto LABEL_9;
  }

  v15 = v10[4];
  v14 = v10[5];

  if (v14)
  {
    goto LABEL_8;
  }

  v13 = 0;
LABEL_10:
  [v8 setFeedDescription_];

  if (*(v9 + 24))
  {
    v16 = *(v9 + 16);
    v17 = *(v9 + 24);

    v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    goto LABEL_13;
  }

LABEL_12:
  v18 = 0;
LABEL_13:
  [v8 setAuthor_];

  if (!v9)
  {
    [v8 setCategory_];
    goto LABEL_22;
  }

  v19 = *(v9 + 208);
  if (v19 && v19[2])
  {
    v20 = v19[4];
    v21 = v19[5];

    v22 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v22 = 0;
  }

  [v8 setCategory_];

  v23 = *(v9 + 112);
  if (v23)
  {
    v24 = *(v9 + 112);

    ServerArtwork.urlResolved.getter(v6);

    v25 = sub_1D9176C2C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v6, 1, v25) == 1)
    {
      sub_1D8E677CC(v6);
LABEL_22:
      v23 = 0;
      goto LABEL_24;
    }

    sub_1D9176ACC();
    (*(v26 + 8))(v6, v25);
    v23 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

LABEL_24:
  [v8 setImageURL_];

  if (v9)
  {
    if (*(v9 + 24))
    {
      v27 = *(v9 + 16);
      v28 = *(v9 + 24);

      v29 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v29 = 0;
    }

    [v8 setProvider_];

    if (*(v9 + 96))
    {
      v30 = *(v9 + 88);
      v31 = *(v9 + 96);

      v32 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      goto LABEL_32;
    }
  }

  else
  {
    [v8 setProvider_];
  }

  v32 = 0;
LABEL_32:
  [v8 setTitle_];

  if (v9)
  {
    if (!*(v9 + 184) || (v33 = *(v9 + 176), v34 = *(v9 + 184), , v35 = sub_1D917980C(), , v35 != 1))
    {
      LOBYTE(v35) = sub_1D9179ACC();
    }

    [v8 setIsExplicit_];
    [v8 setIsNotSubscribable_];
    if (*(v9 + 40))
    {
      v36 = *(v9 + 32);
      v37 = *(v9 + 40);

      v38 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v38 = 0;
    }

    [v8 setShareURL_];

    if (*(v9 + 144))
    {
      v39 = *(v9 + 136);
      v40 = *(v9 + 144);

      v41 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      goto LABEL_43;
    }
  }

  else
  {
    [v8 setIsExplicit_];
    [v8 setIsNotSubscribable_];
    [v8 setShareURL_];
  }

  v41 = 0;
LABEL_43:
  [v8 setShowType_];

  if (v9)
  {
    if (*(v9 + 200))
    {
      v42 = *(v9 + 192);
      v43 = *(v9 + 200);

      v44 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v44 = 0;
    }

    [v8 setWebpageURL_];

    v45 = *(v9 + 152);
    if (v45)
    {
      v46 = *(v45 + 16);
      if (v46)
      {
        if (*(v46 + 56))
        {
          v47 = *(v46 + 48);
          v48 = *(v46 + 56);

          v49 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

          goto LABEL_53;
        }
      }
    }
  }

  else
  {
    [v8 setWebpageURL_];
  }

  v49 = 0;
LABEL_53:
  [v8 setUberBackgroundImageURL_];

  if (v9)
  {
    v50 = *(v9 + 152);
    if (v50 && (v51 = *(v50 + 16)) != 0 && *(v51 + 72))
    {
      v52 = *(v51 + 64);
      v53 = *(v51 + 72);

      v54 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v54 = 0;
    }

    [v8 setUberBackgroundJoeColor_];

    v55 = *(v9 + 56);
    v56 = *(v9 + 64);

    sub_1D917980C();

    v57 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    [v8 setUberBackgroundJoeColor_];
    v57 = 0;
  }

  [v8 setDisplayType_];

  v58 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id);
  v59 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8);
  v60 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v8 setPodcastStoreId_];

  if (!v9)
  {
    [v8 setArtworkPrimaryColor_];
LABEL_69:
    v67 = 0;
    goto LABEL_70;
  }

  v61 = *(v9 + 112);
  if (v61 && *(v61 + 72))
  {
    v62 = *(v61 + 64);
    v63 = *(v61 + 72);

    v64 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v64 = 0;
  }

  [v8 setArtworkPrimaryColor_];

  if (!*(v9 + 80))
  {
    goto LABEL_69;
  }

  v65 = *(v9 + 72);
  v66 = *(v9 + 80);

  v67 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

LABEL_70:
  [v8 setResolvedFeedURL_];

  v68 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);
  if (!v68)
  {
    goto LABEL_80;
  }

  v69 = *(v68 + 16);
  if (!v69)
  {
    goto LABEL_80;
  }

  v70 = *(v69 + 16);
  if (!(v70 >> 62))
  {
    if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_74;
    }

LABEL_80:
    v73 = 0;
    v72 = 0;
    goto LABEL_81;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_80;
  }

LABEL_74:
  if ((v70 & 0xC000000000000001) != 0)
  {

    v91 = MEMORY[0x1DA72AA90](0, v70);

    v71 = v91;
    goto LABEL_77;
  }

  if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v71 = *(v70 + 32);
LABEL_77:
    v72 = v71;
    v73 = sub_1D907D79C();

LABEL_81:
    [v8 setChannelItem_];

    if (v9 && *(v9 + 240))
    {
      v74 = *(v9 + 232);
      v75 = *(v9 + 240);

      v76 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v76 = 0;
    }

    [v8 setShowSpecificUpsellCopy_];

    v77 = OBJC_IVAR___MTServerPodcast_episodes;
    swift_beginAccess();
    v78 = *(v2 + v77);
    if (v78)
    {
      if (v78 >> 62)
      {
        goto LABEL_120;
      }

      v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_88:
      if (v79)
      {
        v94 = MEMORY[0x1E69E7CC0];

        sub_1D91795CC();
        if ((v79 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_122;
        }

        v80 = 0;
        do
        {
          if ((v78 & 0xC000000000000001) != 0)
          {
            v81 = MEMORY[0x1DA72AA90](v80, v78);
          }

          else
          {
            v81 = *(v78 + 8 * v80 + 32);
          }

          v82 = v81;
          ++v80;
          sub_1D907DDC4();

          sub_1D917959C();
          v83 = *(v94 + 16);
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
        }

        while (v79 != v80);
      }

      sub_1D8CF2154(0, &qword_1ECAAFDE0, off_1E8567518);
      v84 = sub_1D91785DC();

      [v84 mutableCopy];

      sub_1D917928C();
      swift_unknownObjectRelease();
      sub_1D8CF2154(0, &unk_1ECAAFE00, 0x1E695DF70);
      if (swift_dynamicCast())
      {
        v85 = v96;
      }

      else
      {
        v85 = 0;
      }

      [v8 setItems_];
    }

    if (!v9 || (v79 = *(v9 + 224)) == 0)
    {
LABEL_118:

      return;
    }

    v93 = v72;
    v94 = MEMORY[0x1E69E7CC0];
    v9 = v79 & 0xFFFFFFFFFFFFFF8;
    if (!(v79 >> 62))
    {
      v86 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_104:

      if (v86)
      {
        v87 = 0;
        v78 = 0;
        do
        {
          if ((v79 & 0xC000000000000001) != 0)
          {
            v88 = MEMORY[0x1DA72AA90](v87, v79);
            v72 = (v87 + 1);
            if (__OFADD__(v87, 1))
            {
LABEL_116:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v87 >= *(v9 + 16))
            {
              __break(1u);
LABEL_120:
              v79 = sub_1D917935C();
              goto LABEL_88;
            }

            v88 = *(v79 + 8 * v87 + 32);

            v72 = (v87 + 1);
            if (__OFADD__(v87, 1))
            {
              goto LABEL_116;
            }
          }

          v96 = v88;
          sub_1D907DC1C(&v96, &v95);

          if (v95)
          {
            MEMORY[0x1DA729B90](v89);
            if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v92 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D917863C();
            }

            sub_1D917869C();
          }

          ++v87;
        }

        while (v72 != v86);
      }

      sub_1D8CF2154(0, &qword_1EDCD0A08, off_1E8567520);
      v90 = sub_1D91785DC();

      [v8 setOffers_];

      v72 = v93;
      goto LABEL_118;
    }

LABEL_122:
    v86 = sub_1D917935C();
    goto LABEL_104;
  }

  __break(1u);
}

id sub_1D907D79C()
{
  v1 = [objc_allocWithZone(IMPodcastFeedChannelItem) init];
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v1 setName_];

  if (*(v2 + 56))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 48);
  }

  [v1 setShowCount_];
  if (*(v2 + 72))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 64);
  }

  [v1 setAvailableShowCount_];
  v8 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id);
  v9 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_id + 8);
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v1 setStoreId_];

  v11 = *(v2 + 24);
  if (v11 && *(v11 + 56))
  {
    v12 = *(v11 + 48);
    v13 = *(v11 + 56);

    v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v14 = 0;
  }

  [v1 setArtworkURL_];

  v15 = *(v2 + 128);
  if (v15 && *(v15 + 56))
  {
    v16 = *(v15 + 48);
    v17 = *(v2 + 128);

    v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v19 = *(v2 + 128);

    v18 = 0;
  }

  [v1 setLogoImageURL_];

  if (!v15)
  {
    [v1 setLogoImageHeight_];
LABEL_21:
    v22 = 0;
    goto LABEL_22;
  }

  v20 = 0.0;
  if ((*(v15 + 40) & 1) == 0)
  {
    *&v20 = *(v15 + 32);
  }

  [v1 setLogoImageHeight_];
  if (*(v15 + 24) == 1)
  {
    goto LABEL_21;
  }

  v22 = *(v15 + 16);
LABEL_22:
  *&v21 = v22;
  [v1 setLogoImageWidth_];
  v23 = *(v2 + 112);
  if (v23 && (v24 = *(v23 + 32)) != 0 && *(v24 + 56))
  {
    v25 = *(v24 + 48);
    v26 = *(v24 + 56);

    v27 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v27 = 0;
  }

  [v1 setUberBackgroundImageURL_];

  v28 = *(v2 + 112);
  if (v28 && (v29 = *(v28 + 32)) != 0 && *(v29 + 72))
  {
    v30 = *(v29 + 64);
    v31 = *(v29 + 72);

    v32 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v32 = 0;
  }

  [v1 setUberBackgroundJoeColor_];

  if (*(v2 + 144))
  {
    v33 = *(v2 + 136);
    v34 = *(v2 + 144);

    v35 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v35 = 0;
  }

  [v1 setBackgroundColor_];

  if (*(v2 + 168))
  {
    v36 = *(v2 + 160);
    v37 = *(v2 + 168);

    v38 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v38 = 0;
  }

  [v1 setUrl_];

  if (*(v2 + 73) - 1 < 2)
  {
    if (*(v2 + 152))
    {
      v39 = *(v2 + 152);
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC0];
    }

    if (*(v2 + 120))
    {
      v40 = *(v2 + 120);
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
    }

    v44 = v39;

    sub_1D8E3025C(v40);
    if (v44 >> 62)
    {
      sub_1D917935C();
    }

    else
    {
      v41 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  v42 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v1 setDisplayType_];

  return v1;
}

void sub_1D907DC1C(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(IMPodcastOffer) init];
  v5 = v3[4];
  v6 = v3[5];

  v7 = sub_1D917980C();

  if (v7 > 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v4 setKind_];

  v9 = v3[2];
  v10 = v3[3];

  v11 = sub_1D917980C();

  if (v11 > 3)
  {
    v13 = 0;
  }

  else
  {
    v12 = *&aStdq_13[8 * v11];
    v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v4 setPriceType_];

  *a2 = v4;
}

id sub_1D907DDC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v108 = &v109[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 7];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v109[-v6 - 7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v109[-v9 - 7];
  v11 = [objc_allocWithZone(IMPodcastFeedItem) init];
  v12 = *&v0[OBJC_IVAR___MTServerPodcastEpisode_attributes];
  if (*(v12 + 24))
  {
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);

    v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v15 = 0;
  }

  [v11 setAuthor_];

  v16 = *(v12 + 248);
  if (v16 && v16[2])
  {
    v17 = v16[4];
    v18 = v16[5];

    v19 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v19 = 0;
  }

  [v11 setCategory_];

  if (!*(v12 + 224) || (v20 = *(v12 + 216), v21 = *(v12 + 224), , v22 = sub_1D917980C(), , v22 != 1))
  {
    LOBYTE(v22) = sub_1D9179ACC();
  }

  [v11 setIsExplicit_];
  if (*(v12 + 328))
  {
    v23 = *(v12 + 320);
    v24 = *(v12 + 328);

    v25 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v25 = 0;
  }

  [v11 setGuid_];

  if (*(v12 + 184))
  {
    v26 = *(v12 + 176);
    v27 = *(v12 + 184);
LABEL_16:

    v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    goto LABEL_21;
  }

  v29 = *(v12 + 112);
  if (v29 && *(v29 + 24))
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    goto LABEL_16;
  }

  v28 = 0;
LABEL_21:
  [v11 setItemDescription_];

  v32 = *(v12 + 112);
  if (v32)
  {
    if (v32[3])
    {
      v33 = v32[2];
      v34 = v32[3];
LABEL_26:

      v37 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      goto LABEL_28;
    }

    if (v32[5])
    {
      v35 = v32[4];
      v36 = v32[5];

      goto LABEL_26;
    }
  }

  v37 = 0;
LABEL_28:
  [v11 setItemSummary_];

  PodcastEpisodeAttributes.releaseDateResolved.getter(v10);
  v38 = sub_1D9176E3C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  v41 = 0;
  if (v40(v10, 1, v38) != 1)
  {
    v41 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v39 + 8))(v10, v38);
  }

  [v11 setPubDate_];

  v42 = *(v12 + 208);
  if (v42)
  {
    v43 = *(v12 + 208);

    PodcastEpisodeAttributes.AvailabilityDates.free.getter(v7);

    if (v40(v7, 1, v38) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v39 + 8))(v7, v38);
    }
  }

  else
  {
    (*(v39 + 56))(v7, 1, 1, v38);
  }

  v44 = v108;
  [v11 setFirstTimeAvailableAsFree_];

  v45 = *(v12 + 208);
  if (v45)
  {
    v109[0] = 2;

    PodcastEpisodeAttributes.AvailabilityDates.subscript.getter(v109, v44);

    if (v40(v44, 1, v38) == 1)
    {
      v45 = 0;
    }

    else
    {
      v45 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v39 + 8))(v44, v38);
    }
  }

  else
  {
    (*(v39 + 56))(v44, 1, 1, v38);
  }

  v46 = v1;
  [v11 setFirstTimeAvailableAsPaid_];

  if (*(v12 + 88))
  {
    v47 = *(v12 + 80);
    v48 = *(v12 + 88);

    v49 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v49 = 0;
  }

  [v11 setTitle_];

  if (*(v12 + 104))
  {
    v50 = *(v12 + 96);
    v51 = *(v12 + 104);

    v52 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v52 = 0;
  }

  [v11 setItunesTitle_];

  PodcastEpisodeAttributes.uti.getter();
  if (v53)
  {
    v54 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v54 = 0;
  }

  [v11 setUti_];

  if (*(v12 + 360))
  {
    v55 = 0;
  }

  else
  {
    v55 = *(v12 + 352);
  }

  [v11 setSeasonNumber_];
  if (*(v12 + 344))
  {
    v56 = 0;
  }

  else
  {
    v56 = *(v12 + 336);
  }

  [v11 setEpisodeNumber_];
  if (*(v12 + 168))
  {
    v57 = *(v12 + 160);
    v58 = *(v12 + 168);

    sub_1D917980C();
  }

  v59 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v11 setEpisodeType_];

  if (*(v12 + 240))
  {
    v60 = *(v12 + 232);
    v61 = *(v12 + 240);

    v62 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v62 = 0;
  }

  [v11 setWebpageURL_];

  v63 = *&v46[OBJC_IVAR___MTServerPodcastEpisode_id];
  v64 = *&v46[OBJC_IVAR___MTServerPodcastEpisode_id + 8];
  v65 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v11 setEpisodeStoreId_];

  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v66, &v113);
  v68 = v67;
  v69 = v113;
  v70 = v113;
  v72 = v71 / 1000.0;
  if (v73)
  {
    v72 = 0.0;
  }

  [v11 setDuration_];
  v74 = *&aStdq_13[8 * v69];
  v75 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v11 setPriceType_];

  if (v68)
  {
    v76 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v76 = 0;
  }

  [v11 setEnclosureURL_];

  v111[1] = v70;
  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v77, &v112);
  v79 = v78;
  v80 = v112;
  if (v81)
  {
    v82 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v82 = 0;
  }

  [v11 setFreeTranscriptIdentifier_];

  if (v79)
  {
    v83 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v83 = 0;
  }

  [v11 setFreeTranscriptSnippet_];

  if (v80 == 2)
  {
    v84 = 0;
  }

  else
  {
    v84 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v11 setFreeTranscriptProvider_];

  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v85, v111);
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v92 = v111[0];
  v93 = *&aStdq_13[8 * v111[0]];
  v94 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v11 setEntitledPriceType_];

  v95 = v89 / 1000.0;
  if (v91)
  {
    v95 = 0.0;
  }

  [v11 setEntitledDuration_];
  if (v87)
  {
    v96 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v96 = 0;
  }

  [v11 setEntitledEnclosureURL_];

  v109[1] = v92;
  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v97, &v110);
  v99 = v98;
  v100 = v110;
  if (v101)
  {
    v102 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v102 = 0;
  }

  [v11 setEntitledTranscriptIdentifier_];

  if (v99)
  {
    v103 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v103 = 0;
  }

  [v11 setEntitledTranscriptSnippet_];

  if (v100 == 2)
  {
    v104 = 0;
  }

  else
  {
    v104 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v11 setEntitledTranscriptProvider_];

  v105 = [v46 chapters];
  [v11 setChapters_];

  v106 = [v46 chapterSource];
  [v11 setChapterSource_];

  return v11;
}

void PodcastEpisodeAttributes.episodeType.getter(char *a1@<X8>)
{
  if (*(v1 + 168))
  {
    v3 = *(v1 + 160);

    v4 = sub_1D917980C();

    v5 = v4 == 1;
    if (v4 == 2)
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

BOOL MediaAttributes.contentRatingResolved.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 96))();
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D917980C();

  return v3 == 1;
}

uint64_t PodcastAttributes.displayTypeResolved.getter@<X0>(char *a1@<X8>)
{
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);

  v5 = sub_1D917980C();

  v7 = v5 == 1;
  if (v5 == 2)
  {
    v7 = 2;
  }

  *a1 = v7;
  return result;
}

uint64_t PodcastAttributes.DisplayType.rawValue.getter()
{
  v1 = 1684627824;
  if (*v0 != 1)
  {
    v1 = 0x646972627968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701147238;
  }
}

uint64_t Kind.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6269726373627573;
  }

  else
  {
    result = 7628135;
  }

  *v0;
  return result;
}

uint64_t ServerArtwork.urlResolved.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v32 - v5;
  v7 = *(v1 + 56);
  if (!v7 || (*(v1 + 24) & 1) != 0 || (*(v1 + 40) & 1) != 0)
  {
    v8 = sub_1D9176C2C();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }

  else
  {
    v11 = *(v1 + 16);
    v12 = *(v1 + 32);
    v36 = *(v1 + 48);
    v37 = v7;
    v34 = 8218747;
    v35 = 0xE300000000000000;

    v13 = sub_1D905F354(v12);
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v32 = v15;
    v33 = v16;
    sub_1D8D447DC();
    v17 = sub_1D917922C();
    v19 = v18;

    v36 = v17;
    v37 = v19;
    v34 = 8222587;
    v35 = 0xE300000000000000;
    v20 = sub_1D905F354(v11);
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v32 = v22;
    v33 = v23;
    v24 = sub_1D917922C();
    v26 = v25;

    v36 = v24;
    v37 = v26;
    v34 = 8218235;
    v35 = 0xE300000000000000;
    v32 = 6778986;
    v33 = 0xE300000000000000;
    sub_1D917922C();

    v27 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
    v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v29 = [v27 initWithString_];

    if (v29)
    {
      sub_1D9176B9C();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = sub_1D9176C2C();
    (*(*(v31 - 8) + 56))(v6, v30, 1, v31);
    return sub_1D8D6734C(v6, a1, &unk_1ECAB5910, &qword_1D9188C90);
  }
}

uint64_t PodcastEpisodeAttributes.AvailabilityDates.free.getter@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10[-v4];
  v12 = 1;
  PodcastEpisodeAttributes.AvailabilityDates.subscript.getter(&v12, &v10[-v4]);
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(v5, 1, v6) == 1)
  {
    v11 = 0;
    PodcastEpisodeAttributes.AvailabilityDates.subscript.getter(&v11, a1);
    result = v8(v5, 1, v6);
    if (result != 1)
    {
      return sub_1D8D08A50(v5, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    (*(v7 + 32))(a1, v5, v6);
    return (*(v7 + 56))(a1, 0, 1, v6);
  }

  return result;
}

PodcastsFoundation::PodcastEpisodeAttributes::MediaKind_optional PodcastEpisodeAttributes.mediaKindResolved.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (v3)
  {
    v4 = *(v1 + 272);

    v5._countAndFlagsBits = v4;
    v5._object = v3;
    result.value = PodcastEpisodeAttributes.MediaKind.init(rawValue:)(v5).value;
    v7 = v8;
    if (v8 == 5)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  return result;
}

uint64_t PodcastEpisodeAttributes.uti.getter()
{
  v1 = sub_1D91772BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 280);
  if (v6)
  {
    v7 = *(v0 + 272);

    v8._countAndFlagsBits = v7;
    v8._object = v6;
    PodcastEpisodeAttributes.MediaKind.init(rawValue:)(v8);
    if (v12 != 5)
    {
      if (v12 == 1)
      {
        sub_1D917729C();
        goto LABEL_6;
      }

      if (v12)
      {
        return 0;
      }
    }
  }

  sub_1D917728C();
LABEL_6:
  v9 = sub_1D917721C();
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t PodcastEpisodeAttributes.EpisodeType.rawValue.getter()
{
  v1 = 0x72656C69617274;
  if (*v0 != 1)
  {
    v1 = 0x73756E6F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819047270;
  }
}

uint64_t PodcastEpisodeAttributes.episodeArtwork.getter()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[15] == 0x65646F73697065 && v1 == 0xE700000000000000;
    if (!v2 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  v3 = v0[17];
}

BOOL PodcastAttributes.isSerialShowTypeInFeed.getter()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 136);
    v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() showTypeFromString_];

  return v3 == 2;
}

uint64_t String.posixTimestampToDate()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCD09F8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDCD0A00;
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v4 = [v2 dateFromString_];

  if (v4)
  {
    sub_1D9176DFC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D9176E3C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id ServerPodcastEpisode.__allocating_init(id:type:href:attributes:relationships:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = objc_allocWithZone(v8);
  v17 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  *&v16[OBJC_IVAR___MTServerPodcastEpisode_relationships] = 0;
  v18 = &v16[OBJC_IVAR___MTServerPodcastEpisode_id];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v16[OBJC_IVAR___MTServerPodcastEpisode_type];
  *v19 = a3;
  *(v19 + 1) = a4;
  v20 = &v16[OBJC_IVAR___MTServerPodcastEpisode_href];
  *v20 = a5;
  *(v20 + 1) = a6;
  *&v16[OBJC_IVAR___MTServerPodcastEpisode_attributes] = a7;
  swift_beginAccess();
  *&v16[v17] = a8;
  v23.receiver = v16;
  v23.super_class = v8;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t ServerPodcastBase.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8);

  return v1;
}

uint64_t ServerPodcastBase.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_type);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_type + 8);

  return v1;
}

uint64_t sub_1D907F5E0(uint64_t a1)
{
  v2 = sub_1D908FF80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D907F61C(uint64_t a1)
{
  v2 = sub_1D908FF80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D907F6E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9B78, &qword_1D91AE508);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D908FF80();
  sub_1D9179F1C();
  v11 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id);
  v12 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8);
  LOBYTE(v18) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_type);
    v15 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_type + 8);
    LOBYTE(v18) = 1;
    sub_1D91799BC();
    v18 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
    HIBYTE(v17) = 2;
    type metadata accessor for PodcastAttributes(0);
    sub_1D9090018(&qword_1ECAB20C0, 255, type metadata accessor for PodcastAttributes);
    sub_1D917999C();
    v18 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);
    HIBYTE(v17) = 3;
    type metadata accessor for PodcastRelationships();
    sub_1D9090018(&qword_1ECAB1D90, v16, type metadata accessor for PodcastRelationships);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v9, v5);
}

id ServerPodcastBase.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9B80, &unk_1D91AE510);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D908FF80();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for ServerPodcastBase();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v23) = 0;
    v11 = sub_1D91798BC();
    v13 = &v1[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v23) = 1;
    v15 = sub_1D91798BC();
    v16 = &v1[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_type];
    *v16 = v15;
    v16[1] = v17;
    type metadata accessor for PodcastAttributes(0);
    v22 = 2;
    sub_1D9090018(&qword_1EDCD48C0, 255, type metadata accessor for PodcastAttributes);
    sub_1D917989C();
    *&v1[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes] = v23;
    type metadata accessor for PodcastRelationships();
    v22 = 3;
    sub_1D9090018(&qword_1EDCD3968, v18, type metadata accessor for PodcastRelationships);
    sub_1D917989C();
    *&v1[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships] = v23;
    v19 = type metadata accessor for ServerPodcastBase();
    v21.receiver = v1;
    v21.super_class = v19;
    v3 = objc_msgSendSuper2(&v21, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t sub_1D907FD7C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id ServerPodcast.__allocating_init(from:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MTServerPodcast_episodes] = 0;
  sub_1D8CFD9D8(a1, v6);
  v4 = ServerPodcastBase.init(from:)(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

id ServerPodcast.init(from:)(uint64_t *a1)
{
  *(v1 + OBJC_IVAR___MTServerPodcast_episodes) = 0;
  sub_1D8CFD9D8(a1, v5);
  v3 = ServerPodcastBase.init(from:)(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t ServerPodcastEpisode.id.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_id);
  v2 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_id + 8);

  return v1;
}

uint64_t ServerPodcastEpisode.type.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_type);
  v2 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_type + 8);

  return v1;
}

uint64_t ServerPodcastEpisode.href.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_href);
  v2 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_href + 8);

  return v1;
}

void sub_1D90800C8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1D9080128()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D9080174(uint64_t a1)
{
  v3 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ServerPodcastEpisode.init(id:type:href:attributes:relationships:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  *&v8[OBJC_IVAR___MTServerPodcastEpisode_relationships] = 0;
  v11 = &v8[OBJC_IVAR___MTServerPodcastEpisode_id];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v8[OBJC_IVAR___MTServerPodcastEpisode_type];
  *v12 = a3;
  *(v12 + 1) = a4;
  v13 = &v8[OBJC_IVAR___MTServerPodcastEpisode_href];
  *v13 = a5;
  *(v13 + 1) = a6;
  *&v8[OBJC_IVAR___MTServerPodcastEpisode_attributes] = a7;
  swift_beginAccess();
  *&v8[v10] = a8;
  v15.receiver = v8;
  v15.super_class = type metadata accessor for ServerPodcastEpisode();
  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_1D90802D4(void *a1)
{
  v3 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 || (v5 = [objc_allocWithZone(type metadata accessor for PodcastEpisodeRelationships()) init], v6 = *(v1 + v3), *(v1 + v3) = v5, v6, (v4 = *(v1 + v3)) != 0))
  {
    v7 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
    swift_beginAccess();
    if (!*&v4[v7])
    {
      v8 = objc_allocWithZone(type metadata accessor for PodcastRelationshipContainer());
      v9 = v4;
      v10 = [v8 init];
      v11 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
      swift_beginAccess();
      v12 = *&v9[v11];
      *&v9[v11] = v10;
    }

    v13 = *(v1 + v3);
    if (v13)
    {
      v14 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
      swift_beginAccess();
      v15 = *(v13 + v14);
      if (v15)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1D9189070;
        *(v16 + 32) = a1;
        v17 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
        swift_beginAccess();
        v18 = *&v15[v17];
        *&v15[v17] = v16;
        v19 = v15;
        v20 = a1;
      }
    }
  }
}

uint64_t sub_1D90804CC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1717924456;
  v4 = 0x7475626972747461;
  if (v1 != 3)
  {
    v4 = 0x6E6F6974616C6572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t sub_1D908055C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D90910AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9080584(uint64_t a1)
{
  v2 = sub_1D90900A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90805C0(uint64_t a1)
{
  v2 = sub_1D90900A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D908069C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9BA0, &qword_1D91AE520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90900A8();
  sub_1D9179F1C();
  v11 = *(v3 + OBJC_IVAR___MTServerPodcastEpisode_id);
  v12 = *(v3 + OBJC_IVAR___MTServerPodcastEpisode_id + 8);
  LOBYTE(v22) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR___MTServerPodcastEpisode_type);
    v14 = *(v3 + OBJC_IVAR___MTServerPodcastEpisode_type + 8);
    LOBYTE(v22) = 1;
    sub_1D91799BC();
    v15 = *(v3 + OBJC_IVAR___MTServerPodcastEpisode_href);
    v16 = *(v3 + OBJC_IVAR___MTServerPodcastEpisode_href + 8);
    LOBYTE(v22) = 2;
    sub_1D91799BC();
    v22 = *(v3 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
    LOBYTE(v21) = 3;
    type metadata accessor for PodcastEpisodeAttributes(0);
    sub_1D9090018(&qword_1ECAB9420, 255, type metadata accessor for PodcastEpisodeAttributes);
    sub_1D91799FC();
    v17 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
    swift_beginAccess();
    v21 = *(v3 + v17);
    v20[15] = 4;
    type metadata accessor for PodcastEpisodeRelationships();
    sub_1D9090018(&qword_1ECAB9428, v18, type metadata accessor for PodcastEpisodeRelationships);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v9, v5);
}

char *ServerPodcastEpisode.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9BA8, &qword_1D91AE528);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v27 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  *&v1[OBJC_IVAR___MTServerPodcastEpisode_relationships] = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90900A8();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    type metadata accessor for ServerPodcastEpisode();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v6;
    LOBYTE(v29) = 0;
    v12 = sub_1D91798BC();
    v14 = &v1[OBJC_IVAR___MTServerPodcastEpisode_id];
    *v14 = v12;
    v14[1] = v15;
    LOBYTE(v29) = 1;
    v16 = sub_1D91798BC();
    v17 = &v1[OBJC_IVAR___MTServerPodcastEpisode_type];
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v29) = 2;
    v19 = sub_1D91798BC();
    v20 = &v1[OBJC_IVAR___MTServerPodcastEpisode_href];
    *v20 = v19;
    v20[1] = v21;
    type metadata accessor for PodcastEpisodeAttributes(0);
    LOBYTE(v30) = 3;
    sub_1D9090018(&qword_1EDCD2E70, 255, type metadata accessor for PodcastEpisodeAttributes);
    sub_1D91798FC();
    *&v1[OBJC_IVAR___MTServerPodcastEpisode_attributes] = v29;
    type metadata accessor for PodcastEpisodeRelationships();
    LOBYTE(v29) = 4;
    sub_1D9090018(&qword_1EDCD2758, v22, type metadata accessor for PodcastEpisodeRelationships);
    sub_1D917989C();
    v23 = v30;
    v24 = v27;
    swift_beginAccess();
    v25 = *&v3[v24];
    *&v3[v24] = v23;

    v26 = type metadata accessor for ServerPodcastEpisode();
    v28.receiver = v3;
    v28.super_class = v26;
    v3 = objc_msgSendSuper2(&v28, sel_init);
    (*(v11 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t ServerPodcastStation.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_id);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_id + 8);

  return v1;
}

uint64_t ServerPodcastStation.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_type);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_type + 8);

  return v1;
}

uint64_t sub_1D9080FB0()
{
  v1 = 25705;
  v2 = 0x7475626972747461;
  if (*v0 != 2)
  {
    v2 = 0x7365646F73697065;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_1D908101C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9091264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9081044(uint64_t a1)
{
  v2 = sub_1D9090140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9081080(uint64_t a1)
{
  v2 = sub_1D9090140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1D90810D4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D9081180(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9BD0, &unk_1D91AE530);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9090140();
  sub_1D9179F1C();
  v11 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_id);
  v12 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_id + 8);
  LOBYTE(v20) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_type);
    v15 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_type + 8);
    LOBYTE(v20) = 1;
    sub_1D91799BC();
    v20 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_attributes);
    LOBYTE(v19) = 2;
    type metadata accessor for PodcastStationAttributes();
    sub_1D9090018(&qword_1ECAB9BE0, v16, type metadata accessor for PodcastStationAttributes);
    sub_1D91799FC();
    v17 = OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_episodes;
    swift_beginAccess();
    v19 = *(v3 + v17);
    v18[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F38, &qword_1D91A7A68);
    sub_1D90287C8();
    sub_1D917999C();
  }

  return (*(v6 + 8))(v9, v5);
}

char *ServerPodcastStation.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9BE8, &qword_1D91AE540);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v25 = OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_episodes;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_episodes] = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9090140();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v13 = *&v1[v25];

    type metadata accessor for ServerPodcastStation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v6;
    LOBYTE(v27) = 0;
    v12 = sub_1D91798BC();
    v15 = &v1[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_id];
    *v15 = v12;
    v15[1] = v16;
    LOBYTE(v27) = 1;
    v17 = sub_1D91798BC();
    v18 = &v1[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_type];
    *v18 = v17;
    v18[1] = v19;
    type metadata accessor for PodcastStationAttributes();
    LOBYTE(v28) = 2;
    sub_1D9090018(&qword_1ECAB9BF0, v20, type metadata accessor for PodcastStationAttributes);
    sub_1D91798FC();
    *&v1[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_attributes] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F38, &qword_1D91A7A68);
    LOBYTE(v27) = 3;
    sub_1D9028F30();
    sub_1D917989C();
    v21 = v28;
    v22 = v25;
    swift_beginAccess();
    v23 = *&v3[v22];
    *&v3[v22] = v21;

    v24 = type metadata accessor for ServerPodcastStation();
    v26.receiver = v3;
    v26.super_class = v24;
    v3 = objc_msgSendSuper2(&v26, sel_init);
    (*(v11 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t sub_1D9081820(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(v3 + v4);
}

uint64_t sub_1D9081870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(v4 + v6);
  *(v4 + v6) = a1;
}

uint64_t sub_1D9081904@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = objc_allocWithZone(a2());
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1D9081988()
{
  if (*v0)
  {
    result = 0x74726F6873;
  }

  else
  {
    result = 0x647261646E617473;
  }

  *v0;
  return result;
}

uint64_t sub_1D90819C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74726F6873 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

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

uint64_t sub_1D9081A98(uint64_t a1)
{
  v2 = sub_1D90901B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9081AD4(uint64_t a1)
{
  v2 = sub_1D90901B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerDescription.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t ServerDescription.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D9081B78(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9BF8, &qword_1D91AE548);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90901B8();
  sub_1D9179F1C();
  v11 = v3[2];
  v12 = v3[3];
  v16[15] = 0;
  sub_1D917994C();
  if (!v2)
  {
    v14 = v3[4];
    v15 = v3[5];
    v16[14] = 1;
    sub_1D917994C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ServerDescription.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerDescription.init(from:)(a1);
  return v2;
}

void *ServerDescription.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C00, &qword_1D91AE550);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90901B8();
  sub_1D9179EEC();
  if (v2)
  {
    type metadata accessor for ServerDescription();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    v1[2] = sub_1D917984C();
    v1[3] = v10;
    v16 = 1;
    v12 = sub_1D917984C();
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    v1[4] = v12;
    v1[5] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t ServerArtwork.width.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ServerArtwork.height.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t ServerArtwork.url.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ServerArtwork.bgColor.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ServerArtwork.textColor1.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ServerArtwork.textColor2.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ServerArtwork.textColor3.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t ServerArtwork.textColor4.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

__n128 ServerArtwork.__allocating_init(width:height:url:bgColor:textColor1:textColor2:textColor3:textColor4:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2 & 1;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4 & 1;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = a8;
  *(v20 + 80) = a9;
  *(v20 + 96) = a10;
  result = a11;
  *(v20 + 112) = a11;
  *(v20 + 128) = a12;
  *(v20 + 136) = a13;
  return result;
}

uint64_t ServerArtwork.init(width:height:url:bgColor:textColor1:textColor2:textColor3:textColor4:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4 & 1;
  *(v13 + 48) = a5;
  *(v13 + 56) = a6;
  *(v13 + 64) = a7;
  *(v13 + 72) = a8;
  *(v13 + 80) = a9;
  *(v13 + 96) = a10;
  *(v13 + 112) = a11;
  *(v13 + 128) = a12;
  *(v13 + 136) = a13;
  return v13;
}

uint64_t sub_1D90821D0()
{
  v1 = 0x6874646977;
  *v0;
  v2 = 7107189;
  if (*v0 != 2)
  {
    v2 = 0x726F6C6F436762;
  }

  if (*v0)
  {
    v1 = 0x746867696568;
  }

  if (*v0 > 1u)
  {
    v1 = v2;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return 0x6F6C6F4374786574;
  }
}

uint64_t sub_1D90822C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D90913C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D90822F0(uint64_t a1)
{
  v2 = sub_1D90904B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908232C(uint64_t a1)
{
  v2 = sub_1D90904B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ServerArtwork.deinit()
{
  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  v5 = v0[15];

  v6 = v0[17];

  return v0;
}

uint64_t ServerArtwork.__deallocating_deinit()
{
  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  v5 = v0[15];

  v6 = v0[17];

  return swift_deallocClassInstance();
}

uint64_t ServerArtwork.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C08, &qword_1D91AE558);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90904B8();
  sub_1D9179F1C();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v28[15] = 0;
  sub_1D917998C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  v28[14] = 1;
  sub_1D917998C();
  v15 = *(v3 + 48);
  v16 = *(v3 + 56);
  v28[13] = 2;
  sub_1D917994C();
  v17 = *(v3 + 64);
  v18 = *(v3 + 72);
  v28[12] = 3;
  sub_1D917994C();
  v19 = *(v3 + 80);
  v20 = *(v3 + 88);
  v28[11] = 4;
  sub_1D917994C();
  v21 = *(v3 + 96);
  v22 = *(v3 + 104);
  v28[10] = 5;
  sub_1D917994C();
  v23 = *(v3 + 112);
  v24 = *(v3 + 120);
  v28[9] = 6;
  sub_1D917994C();
  v26 = *(v3 + 128);
  v27 = *(v3 + 136);
  v28[8] = 7;
  sub_1D917994C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t ServerArtwork.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ServerArtwork.init(from:)(a1);
  return v2;
}

uint64_t ServerArtwork.init(from:)(uint64_t *a1)
{
  v22[1] = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C10, &qword_1D91AE560);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90904B8();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = 0;
    *(v1 + 16) = sub_1D917988C();
    *(v1 + 24) = v10 & 1;
    v29 = 1;
    *(v1 + 32) = sub_1D917988C();
    *(v1 + 40) = v11 & 1;
    v28 = 2;
    *(v1 + 48) = sub_1D917984C();
    *(v1 + 56) = v13;
    v27 = 3;
    *(v1 + 64) = sub_1D917984C();
    *(v1 + 72) = v14;
    v26 = 4;
    *(v1 + 80) = sub_1D917984C();
    *(v1 + 88) = v15;
    v25 = 5;
    *(v1 + 96) = sub_1D917984C();
    *(v1 + 104) = v16;
    v24 = 6;
    *(v1 + 112) = sub_1D917984C();
    *(v1 + 120) = v17;
    v23 = 7;
    v18 = sub_1D917984C();
    v19 = v8;
    v21 = v20;
    (*(v5 + 8))(v19, v4);
    *(v1 + 128) = v18;
    *(v1 + 136) = v21;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

id sub_1D9082AC8()
{
  result = sub_1D9082AE8();
  qword_1EDCD0A00 = result;
  return result;
}

id sub_1D9082AE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8908, &unk_1D91A4830);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_1D9176F0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1D9176EBC();
  v10 = sub_1D9176EDC();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v9 setDateFormat_];

  sub_1D9176FEC();
  v12 = sub_1D917701C();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v3, 1, v12) != 1)
  {
    v14 = sub_1D9176FFC();
    (*(v13 + 8))(v3, v12);
  }

  [v9 setTimeZone_];

  return v9;
}

id static NSDateFormatter.posixTimestampFormatter.getter()
{
  if (qword_1EDCD09F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD0A00;

  return v1;
}

uint64_t PodcastAttributes.artistName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PodcastAttributes.url.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

PodcastsFoundation::PodcastAttributes::DisplayType_optional __swiftcall PodcastAttributes.DisplayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PodcastAttributes.displayType.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t PodcastAttributes.feedUrl.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t PodcastAttributes.name.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t PodcastAttributes.copyright.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t PodcastAttributes.kind.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t PodcastAttributes.releaseDateTime.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t PodcastAttributes.contentRating.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t PodcastAttributes.websiteUrl.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t PodcastAttributes.upsell.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return v1;
}

uint64_t sub_1D9083064@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9B28, &unk_1D91AE4F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18[-v12];
  v14 = *a1;
  swift_beginAccess();
  sub_1D8D088B4(v3 + v14, v13, &qword_1ECAB9B28, &unk_1D91AE4F8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) != 1)
  {
    return sub_1D8D6734C(v13, a3, &qword_1ECAB75C0, &unk_1D9188A50);
  }

  sub_1D8D08A50(v13, &qword_1ECAB9B28, &unk_1D91AE4F8);
  a2(v3);
  sub_1D8D088B4(a3, v10, &qword_1ECAB75C0, &unk_1D9188A50);
  (*(v16 + 56))(v10, 0, 1, v15);
  swift_beginAccess();
  sub_1D908631C(v10, v3 + v14);
  return swift_endAccess();
}

uint64_t sub_1D908326C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  if (*(a1 + 168))
  {
    v8 = *(a1 + 160);
    if (qword_1EDCD09F8 != -1)
    {
      v17 = *(a1 + 160);
      swift_once();
    }

    v9 = qword_1EDCD0A00;
    v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v11 = [v9 dateFromString_];

    if (v11)
    {
      sub_1D9176DFC();

      v12 = sub_1D9176E3C();
      (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    }

    else
    {
      v16 = sub_1D9176E3C();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    return sub_1D8D6734C(v7, a2, &qword_1ECAB75C0, &unk_1D9188A50);
  }

  else
  {
    v13 = sub_1D9176E3C();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

unint64_t sub_1D9083470(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x6269726373627573;
      break;
    case 3:
      result = 0x5479616C70736964;
      break;
    case 4:
      result = 0x6C725564656566;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x7470697263736564;
      break;
    case 7:
      result = 0x6B726F77747261;
      break;
    case 8:
      result = 0x6867697279706F63;
      break;
    case 9:
      result = 1684957547;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x44657361656C6572;
      break;
    case 12:
      result = 0x52746E65746E6F63;
      break;
    case 13:
      result = 0x5565746973626577;
      break;
    case 14:
      result = 0x6D614E65726E6567;
      break;
    case 15:
      result = 0x754E6E6F73616573;
      break;
    case 16:
      result = 0x73726566666FLL;
      break;
    case 17:
      result = 0x6C6C65737075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9083674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9091638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D908369C(uint64_t a1)
{
  v2 = sub_1D909050C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90836D8(uint64_t a1)
{
  v2 = sub_1D909050C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *PodcastAttributes.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[19];

  v11 = v0[21];

  v12 = v0[23];

  v13 = v0[25];

  v14 = v0[26];

  v15 = v0[27];

  v16 = v0[28];

  v17 = v0[30];

  sub_1D8D08A50(v0 + OBJC_IVAR____TtC18PodcastsFoundation17PodcastAttributes____lazy_storage___releaseDateResolved, &qword_1ECAB9B28, &unk_1D91AE4F8);
  return v0;
}

uint64_t PodcastAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C18, &unk_1D91AE568);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D909050C();
  sub_1D9179F1C();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  LOBYTE(v39) = 0;
  sub_1D917994C();
  if (!v2)
  {
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    LOBYTE(v39) = 1;
    sub_1D917994C();
    v15 = *(v3 + 48);
    LOBYTE(v39) = 2;
    sub_1D917995C();
    v16 = *(v3 + 56);
    v17 = *(v3 + 64);
    LOBYTE(v39) = 3;
    sub_1D91799BC();
    v18 = *(v3 + 72);
    v19 = *(v3 + 80);
    LOBYTE(v39) = 4;
    sub_1D917994C();
    v20 = *(v3 + 88);
    v21 = *(v3 + 96);
    LOBYTE(v39) = 5;
    sub_1D917994C();
    v39 = *(v3 + 104);
    HIBYTE(v38) = 6;
    type metadata accessor for ServerDescription();
    sub_1D9090018(&qword_1ECAB20B8, v22, type metadata accessor for ServerDescription);
    sub_1D917999C();
    v39 = *(v3 + 112);
    HIBYTE(v38) = 7;
    type metadata accessor for ServerArtwork();
    sub_1D9090018(&qword_1ECAB26D8, v23, type metadata accessor for ServerArtwork);
    sub_1D917999C();
    v24 = *(v3 + 120);
    v25 = *(v3 + 128);
    LOBYTE(v39) = 8;
    sub_1D917994C();
    v26 = *(v3 + 136);
    v27 = *(v3 + 144);
    LOBYTE(v39) = 9;
    sub_1D917994C();
    v39 = *(v3 + 152);
    HIBYTE(v38) = 10;
    type metadata accessor for PodcastEditorialArtworkContainer();
    sub_1D9090018(qword_1ECAB12D0, v28, type metadata accessor for PodcastEditorialArtworkContainer);
    sub_1D917999C();
    v29 = *(v3 + 160);
    v30 = *(v3 + 168);
    LOBYTE(v39) = 11;
    sub_1D917994C();
    v31 = *(v3 + 176);
    v32 = *(v3 + 184);
    LOBYTE(v39) = 12;
    sub_1D917994C();
    v33 = *(v3 + 192);
    v34 = *(v3 + 200);
    LOBYTE(v39) = 13;
    sub_1D917994C();
    v39 = *(v3 + 208);
    HIBYTE(v38) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D90906C8(&qword_1ECAAFEE8);
    sub_1D917999C();
    v39 = *(v3 + 216);
    HIBYTE(v38) = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C20, &qword_1D91AE578);
    sub_1D9090584(&qword_1ECAAFED8);
    sub_1D917999C();
    v39 = *(v3 + 224);
    HIBYTE(v38) = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C28, &qword_1D91AE580);
    sub_1D90905F0();
    sub_1D917999C();
    v35 = *(v3 + 232);
    v36 = *(v3 + 240);
    LOBYTE(v39) = 17;
    sub_1D917994C();
  }

  return (*(v6 + 8))(v9, v5);
}

void *PodcastAttributes.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C30, &qword_1D91AE588);
  v43 = *(v45 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v42 - v7;
  v9 = OBJC_IVAR____TtC18PodcastsFoundation17PodcastAttributes____lazy_storage___releaseDateResolved;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D909050C();
  v44 = v8;
  v12 = v3;
  sub_1D9179EEC();
  if (v2)
  {
    sub_1D8D08A50(v3 + OBJC_IVAR____TtC18PodcastsFoundation17PodcastAttributes____lazy_storage___releaseDateResolved, &qword_1ECAB9B28, &unk_1D91AE4F8);
    v16 = *(*v3 + 48);
    v17 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v43;
    LOBYTE(v47) = 0;
    v3[2] = sub_1D917984C();
    v3[3] = v14;
    LOBYTE(v47) = 1;
    v3[4] = sub_1D917984C();
    v3[5] = v15;
    LOBYTE(v47) = 2;
    *(v3 + 48) = sub_1D917985C();
    LOBYTE(v47) = 3;
    v3[7] = sub_1D91798BC();
    v3[8] = v19;
    LOBYTE(v47) = 4;
    v3[9] = sub_1D917984C();
    v3[10] = v20;
    LOBYTE(v47) = 5;
    v3[11] = sub_1D917984C();
    v3[12] = v21;
    type metadata accessor for ServerDescription();
    v46 = 6;
    sub_1D9090018(&qword_1EDCD4760, v22, type metadata accessor for ServerDescription);
    sub_1D917989C();
    v42 = v3;
    v3[13] = v47;
    type metadata accessor for ServerArtwork();
    v46 = 7;
    sub_1D9090018(&qword_1EDCD54A0, v23, type metadata accessor for ServerArtwork);
    sub_1D917989C();
    v24 = v42;
    v42[14] = v47;
    LOBYTE(v47) = 8;
    v24[15] = sub_1D917984C();
    v24[16] = v25;
    LOBYTE(v47) = 9;
    v26 = sub_1D917984C();
    v27 = v42;
    v42[17] = v26;
    v27[18] = v28;
    type metadata accessor for PodcastEditorialArtworkContainer();
    v46 = 10;
    sub_1D9090018(&qword_1EDCD1B18, v29, type metadata accessor for PodcastEditorialArtworkContainer);
    sub_1D917989C();
    v42[19] = v47;
    LOBYTE(v47) = 11;
    v30 = sub_1D917984C();
    v31 = v42;
    v42[20] = v30;
    v31[21] = v32;
    LOBYTE(v47) = 12;
    v33 = sub_1D917984C();
    v34 = v42;
    v42[22] = v33;
    v34[23] = v35;
    LOBYTE(v47) = 13;
    v36 = sub_1D917984C();
    v37 = v42;
    v42[24] = v36;
    v37[25] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    v46 = 14;
    sub_1D90906C8(&qword_1EDCD0A50);
    sub_1D917989C();
    v42[26] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C20, &qword_1D91AE578);
    v46 = 15;
    sub_1D9090584(&qword_1EDCD0A48);
    sub_1D917989C();
    v42[27] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C28, &qword_1D91AE580);
    v46 = 16;
    sub_1D9090734();
    sub_1D917989C();
    v42[28] = v47;
    LOBYTE(v47) = 17;
    v39 = sub_1D917984C();
    v41 = v40;
    (*(v13 + 8))(v44, v45);
    v12 = v42;
    v42[29] = v39;
    v12[30] = v41;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t sub_1D9084A04()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 80);

  return v1;
}

uint64_t sub_1D9084A38()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 96);

  return v1;
}