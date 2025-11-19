uint64_t PushServer.connection(_:didReceiveToken:for:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for AppTokenInfo(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v19[1] = sub_22CE85C54();
  v14 = *&v5[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  sub_22CE85598(a5, v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppTokenInfo);
  v15 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  sub_22CE85530(v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AppTokenInfo);
  v17 = v5;
  swift_unknownObjectRetain();
  sub_22CE41BF0(a3, a4);
  sub_22CE85C44();
  sub_22CE85C34();
}

uint64_t sub_22CE7EA94(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF0F0, &qword_22CE88EA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v21 - v16;
  sub_22CE85598(a8, &v21 - v16, type metadata accessor for AppTokenInfo);
  v18 = type metadata accessor for AppTokenInfo(0);
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  sub_22CE7EBE0(a4, a5, a6, a7, v17);
  v19 = sub_22CE42330(v17, &qword_27D9EF0F0, &qword_22CE88EA0);
  return a1(v19);
}

void sub_22CE7EBE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v123 = a4;
  v122 = a3;
  v114 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v121 = v111 - v11;
  v120 = type metadata accessor for PushToken();
  v12 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v124 = v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF0F0, &qword_22CE88EA0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v115 = v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v113 = v111 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v116 = v111 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v126 = v111 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v125 = (v111 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v111 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v111 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = v111 - v32;
  v34 = sub_22CE85D44();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = (v111 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *&v6[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  *v38 = v39;
  (*(v35 + 104))(v38, *MEMORY[0x277D85200], v34);
  v40 = v39;
  LOBYTE(v39) = sub_22CE85D54();
  v42 = *(v35 + 8);
  v41 = v35 + 8;
  v42(v38, v34);
  if ((v39 & 1) == 0)
  {
    __break(1u);
LABEL_29:
    swift_once();
LABEL_4:
    v45 = sub_22CE85C84();
    v46 = __swift_project_value_buffer(v45, qword_281445368);
    sub_22CE4DD94(a5, v33, &qword_27D9EF0F0, &qword_22CE88EA0);

    v111[1] = v46;
    v47 = sub_22CE85C74();
    v48 = sub_22CE85FA4();
    v49 = os_log_type_enabled(v47, v48);
    v111[0] = a1;
    v117 = v41;
    if (v49)
    {
      v118 = a5;
      v50 = v41;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v136[0] = v52;
      *v51 = 136446466;
      sub_22CE4DD94(v33, v31, &qword_27D9EF0F0, &qword_22CE88EA0);
      v53 = type metadata accessor for AppTokenInfo(0);
      v54 = (*(*(v53 - 8) + 48))(v31, 1, v53);

      if (v54 == 1)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      sub_22CE42330(v33, &qword_27D9EF0F0, &qword_22CE88EA0);
      v55 = *(v31 + 2);
      v56 = *(v31 + 3);

      sub_22CE85600(v31, type metadata accessor for AppTokenInfo);
      v57 = sub_22CE44280(v55, v56, v136);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2082;
      *(v51 + 14) = sub_22CE44280(v119, v50, v136);
      _os_log_impl(&dword_22CE3F000, v47, v48, "Received app token with identifier: %{public}s for environment: %{public}s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C20D0](v52, -1, -1);
      MEMORY[0x2318C20D0](v51, -1, -1);

      a5 = v118;
    }

    else
    {

      sub_22CE42330(v33, &qword_27D9EF0F0, &qword_22CE88EA0);
    }

    v112 = v6;
    sub_22CE40D28(&v6[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore], &v138);
    v62 = v139;
    v63 = v140;
    __swift_project_boxed_opaque_existential_1(&v138, v139);
    sub_22CE4DD94(a5, v28, &qword_27D9EF0F0, &qword_22CE88EA0);
    v64 = type metadata accessor for AppTokenInfo(0);
    v65 = (*(v64 - 8) + 48);
    v118 = *v65;
    if (v118(v28, 1, v64) == 1)
    {
      __break(1u);
    }

    else
    {
      v66 = *(v28 + 2);
      v67 = *(v28 + 3);

      sub_22CE85600(v28, type metadata accessor for AppTokenInfo);
      (*(v63 + 88))(v136, v66, v67, v62, v63);

      v131 = v136[0];
      v132 = v136[1];
      v133 = v136[2];
      v134 = v136[3];
      v135 = v137;
      v68 = *(&v136[0] + 1);
      if (!*(&v136[0] + 1))
      {
        v126 = v65;
        __swift_destroy_boxed_opaque_existential_1(&v138);
        v74 = a5;
        v75 = v116;
        sub_22CE4DD94(a5, v116, &qword_27D9EF0F0, &qword_22CE88EA0);
        v76 = sub_22CE85C74();
        v77 = sub_22CE85F94();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v127 = v79;
          *v78 = 136446210;
          v80 = v113;
          sub_22CE4DD94(v75, v113, &qword_27D9EF0F0, &qword_22CE88EA0);
          v81 = v118;
          if (v118(v80, 1, v64) == 1)
          {
LABEL_35:
            __break(1u);
            return;
          }

          sub_22CE42330(v75, &qword_27D9EF0F0, &qword_22CE88EA0);
          v82 = *(v80 + 16);
          v83 = *(v80 + 24);

          sub_22CE85600(v80, type metadata accessor for AppTokenInfo);
          v84 = sub_22CE44280(v82, v83, &v127);

          *(v78 + 4) = v84;
          _os_log_impl(&dword_22CE3F000, v76, v77, "Subscription for token does not exist: %{public}s", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v79);
          MEMORY[0x2318C20D0](v79, -1, -1);
          MEMORY[0x2318C20D0](v78, -1, -1);
        }

        else
        {

          sub_22CE42330(v75, &qword_27D9EF0F0, &qword_22CE88EA0);
          v81 = v118;
        }

        v109 = v115;
        sub_22CE4DD94(v74, v115, &qword_27D9EF0F0, &qword_22CE88EA0);
        if (v81(v109, 1, v64) != 1)
        {
          ObjectType = swift_getObjectType();

          (*(v114 + 32))(v109, ObjectType);
          v107 = type metadata accessor for AppTokenInfo;
          v108 = v109;
          goto LABEL_27;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v69 = v131;
      v70 = *(&v132 + 1);
      v71 = v132;
      v72 = v135 | (SBYTE2(v135) << 16);
      __swift_destroy_boxed_opaque_existential_1(&v138);
      v73 = a5;
      if (v72 < 0)
      {
        v116 = v71;
      }

      else
      {
        v127 = v69;
        v128 = v68;

        MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
        v116 = v127;
        v70 = v128;
      }

      v85 = v112;
      v86 = v126;
      v87 = v125;
      v88 = v118;
      sub_22CE4DD94(v73, v125, &qword_27D9EF0F0, &qword_22CE88EA0);
      if (v88(v87, 1, v64) != 1)
      {
        v90 = *v87;
        v89 = v87[1];

        sub_22CE85600(v87, type metadata accessor for AppTokenInfo);
        sub_22CE4DD94(v73, v86, &qword_27D9EF0F0, &qword_22CE88EA0);
        if (v88(v86, 1, v64) != 1)
        {
          sub_22CE42330(&v131, &qword_27D9EEE78, &qword_22CE88E90);
          v91 = v121;
          sub_22CE4DD94(v86 + *(v64 + 24), v121, &qword_27D9EEF40, &qword_22CE86C00);
          sub_22CE85600(v86, type metadata accessor for AppTokenInfo);
          v92 = *(v120 + 32);
          v93 = sub_22CE85974();
          v94 = v124;
          (*(*(v93 - 8) + 56))(&v124[v92], 1, 1, v93);
          v94[2] = v116;
          v94[3] = v70;
          v95 = v117;
          v94[4] = v119;
          v94[5] = v95;
          v94[6] = v90;
          v94[7] = v89;
          v96 = v122;
          v97 = v123;
          *v94 = v122;
          v94[1] = v97;
          sub_22CE41BF0(v96, v97);
          sub_22CE63E3C(v91, v94 + v92);
          v98 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore;
          sub_22CE40D28(&v85[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore], &v127);
          v99 = v129;
          v100 = v130;
          __swift_project_boxed_opaque_existential_1(&v127, v129);
          (*(v100 + 16))(v94, v99, v100);
          __swift_destroy_boxed_opaque_existential_1(&v127);
          sub_22CE40D28(&v85[v98], &v127);
          v101 = v129;
          v102 = v130;
          __swift_project_boxed_opaque_existential_1(&v127, v129);
          v103 = (*(v102 + 8))(v101, v102);
          __swift_destroy_boxed_opaque_existential_1(&v127);
          sub_22CE85C54();
          v104 = *&v85[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_calloutQueue];
          v105 = swift_allocObject();
          *(v105 + 16) = v85;
          *(v105 + 24) = v103;
          v106 = v85;
          sub_22CE85C44();
          sub_22CE85C34();

          v107 = type metadata accessor for PushToken;
          v108 = v94;
LABEL_27:
          sub_22CE85600(v108, v107);
          return;
        }

        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v43 = sub_22CE7ACA8(a1);
  if (v44)
  {
    v41 = v44;
    v119 = v43;
    if (qword_281445360 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v58 = sub_22CE85C84();
  __swift_project_value_buffer(v58, qword_281445368);
  v59 = sub_22CE85C74();
  v60 = sub_22CE85F94();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_22CE3F000, v59, v60, "Connection for incoming push token is unknown", v61, 2u);
    MEMORY[0x2318C20D0](v61, -1, -1);
  }
}

uint64_t PushServer.connection(_:channelSubscriptionsFailedWith:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22CE85C54();
  v7 = *&v3[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v9 = v3;
  swift_unknownObjectRetain();

  sub_22CE85C44();
  sub_22CE85C34();
}

uint64_t sub_22CE7FA94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_22CE85C54();
  v9 = *&v4[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = v4;
  swift_unknownObjectRetain();
  sub_22CE41BF0(a3, a4);
  sub_22CE85C44();
  sub_22CE85C34();
}

uint64_t sub_22CE7FB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for IncomingMessage(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22CE85C54();
  v10 = *&v3[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  sub_22CE85598(a3, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IncomingMessage);
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a1;
  v12[4] = a2;
  sub_22CE85530(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for IncomingMessage);
  v13 = v3;
  swift_unknownObjectRetain();
  sub_22CE85C44();
  sub_22CE85C34();
}

uint64_t sub_22CE7FD1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for AppTokenInfo(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v19[1] = sub_22CE85C54();
  v14 = *&v5[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  sub_22CE85598(a5, v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppTokenInfo);
  v15 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  sub_22CE85530(v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AppTokenInfo);
  v17 = v5;
  swift_unknownObjectRetain();
  sub_22CE41BF0(a3, a4);
  sub_22CE85C44();
  sub_22CE85C34();
}

uint64_t sub_22CE7FED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22CE85C54();
  v7 = *&v3[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v9 = v3;
  swift_unknownObjectRetain();

  sub_22CE85C44();
  sub_22CE85C34();
}

uint64_t sub_22CE7FFB4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v51[1] = a2;
  v52 = a1;
  v66 = type metadata accessor for PushEvent(0);
  v5 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v64 = (v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22CE85B54();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_22CE85B14();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v69 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22CE85A34();
  v13 = *(v70 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v70);
  v16 = (v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_22CE85A74();
  v17 = *(*(v65 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v65);
  v68 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a3 + 16);
  if (!v21)
  {
    return v52(v18);
  }

  v61 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__eventPublisher;
  v54 = *MEMORY[0x277CB9220];
  v63 = (v13 + 104);
  v53 = *MEMORY[0x277CB9218];
  v55 = *MEMORY[0x277CB9210];
  v60 = (v10 + 16);
  v59 = (v19 + 16);
  v58 = *MEMORY[0x277CB9320];
  v57 = (v10 + 8);
  v56 = (v19 + 8);
  v22 = a3 + 48;
  v62 = v16;
  while (1)
  {
    v23 = *(v22 - 16);
    v24 = *(v22 - 8);
    v26 = *v22;
    v25 = *(v22 + 8);
    v27 = *(v22 + 16);
    v28 = *(v22 + 24);
    v30 = *(v22 + 32);
    v29 = *(v22 + 40);
    v31 = *(v22 + 48) | (*(v22 + 50) << 16);
    v75 = v27;
    v76 = v21;
    v78 = v25;
    v79 = v23;
    v73 = v30;
    v74 = v28;
    v72 = v29;
    if ((v31 & 0x80000000) == 0)
    {
      *v16 = v26;
      v16[1] = v25;
      (*v63)(v16, v55, v70);

      sub_22CE449A4(v26, v25, v27, v28, v30, v29, v31);
      v32 = v27;
      v33 = v26;
      v34 = v26;
      v35 = v25;
LABEL_5:
      sub_22CE449A4(v34, v35, v32, v28, v30, v29, v31);

      goto LABEL_6;
    }

    if (v31)
    {
      if (v31 != 1)
      {
        (*v63)(v16, v54, v70);

        v32 = v27;
        v33 = v26;
        v34 = v26;
        v35 = v78;
        goto LABEL_5;
      }

      *v16 = v27;
      v16[1] = v28;
      v16[2] = v30;
      v16[3] = v29;
      (*v63)(v16, v53, v70);

      v48 = v27;
      v33 = v26;
      sub_22CE449A4(v26, v78, v48, v28, v30, v29, v31);

      sub_22CE62924(v48, v28, v30, v29, 1);
    }

    else
    {
      *v16 = v27;
      v16[1] = v28;
      (*v63)(v16, v55, v70);

      v49 = v27;
      v33 = v26;
      sub_22CE449A4(v26, v78, v49, v28, v30, v29, v31);

      sub_22CE62924(v49, v28, v30, v29, 0);
    }

LABEL_6:
    v36 = v68;
    sub_22CE85A54();
    sub_22CE85B44();
    v37 = v69;
    sub_22CE85B04();
    if ((v31 & 0x80000000) == 0)
    {
      break;
    }

    v38 = v66;
    v39 = *(v66 + 28);

    v40 = v78;
    swift_bridgeObjectRetain_n();
    v41 = v64;
    sub_22CE85954();

    sub_22CE62988(v33, v40, v75, v74, v73, v72, v31);
    (*v60)(v41 + v38[8], v37, v77);
    type metadata accessor for PushEvent.EventType(0);
    swift_storeEnumTagMultiPayload();
    v42 = v38[9];
    v43 = v65;
    (*v59)(v41 + v42, v36, v65);
    v44 = sub_22CE85AF4();
    (*(*(v44 - 8) + 104))(v41 + v42, v58, v44);
    v45 = v38[10];
    v46 = sub_22CE85AB4();
    (*(*(v46 - 8) + 56))(v41 + v45, 1, 1, v46);
    *v41 = v33;
    v41[1] = v40;
    v41[2] = v33;
    v41[3] = v40;
    v41[4] = v79;
    v41[5] = v24;
    *(v41 + v38[11]) = 0;
    v47 = *(v67 + v61);
    sub_22CE85CB4();
    sub_22CE85600(v41, type metadata accessor for PushEvent);
    (*v57)(v37, v77);
    v18 = (*v56)(v36, v43);
    v22 += 72;
    v21 = v76 - 1;
    v16 = v62;
    if (v76 == 1)
    {
      return v52(v18);
    }
  }

  v80 = v79;
  v81 = v24;

  result = MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
  __break(1u);
  return result;
}

void sub_22CE8071C(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v59 - v5;
  v7 = type metadata accessor for Budget();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v59 - v13;
  v14 = sub_22CE85D44();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[2];
  v79 = a1[3];
  v80 = *(a1 + 16);
  v20 = *a1;
  v77 = a1[1];
  v78 = v19;
  v76 = v20;
  v21 = *(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v18 = v21;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v22 = v21;
  LOBYTE(v21) = sub_22CE85D54();
  (*(v15 + 8))(v18, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (((v80 | (SBYTE2(v80) << 16)) & 0x80000000) == 0)
  {
    if (qword_281445360 == -1)
    {
LABEL_4:
      v23 = sub_22CE85C84();
      __swift_project_value_buffer(v23, qword_281445368);
      sub_22CE41214(&v76, &v71);
      v24 = sub_22CE85C74();
      v25 = sub_22CE85F94();
      sub_22CE632E8(&v76);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v70 = v27;
        *v26 = 136380675;
        v71 = v76;

        MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
        v28 = sub_22CE44280(v71, *(&v71 + 1), &v70);

        *(v26 + 4) = v28;
        _os_log_impl(&dword_22CE3F000, v24, v25, "Cannot request frequent updates for push-to-start subscription: %{private}s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x2318C20D0](v27, -1, -1);
        MEMORY[0x2318C20D0](v26, -1, -1);
      }

      return;
    }

LABEL_21:
    swift_once();
    goto LABEL_4;
  }

  v66 = v80 | (SBYTE2(v80) << 16);
  v61 = v12;
  v29 = v77;
  v64 = *(&v78 + 1);
  v65 = v78;
  v62 = *(&v79 + 1);
  v63 = v79;
  v68 = v1;
  sub_22CE83C40(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer, &v71);
  v31 = *(&v72 + 1);
  v30 = v73;
  __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
  v32 = *(v30 + 48);

  v67 = v29;
  v32(v29, *(&v29 + 1), v31, v30);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22CE42330(v6, &qword_27D9EEBA0, &qword_22CE86D20);
    __swift_destroy_boxed_opaque_existential_1(&v71);
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v33 = sub_22CE85C84();
    __swift_project_value_buffer(v33, qword_281445368);

    v34 = v65;
    v35 = v64;
    v36 = v63;
    v37 = v62;
    v38 = v66;
    sub_22CE62924(v65, v64, v63, v62, v66);
    v39 = sub_22CE85C74();
    v40 = sub_22CE85FA4();
    v41 = v67;
    sub_22CE62988(v67, *(&v29 + 1), v34, v35, v36, v37, v38);
    if (os_log_type_enabled(v39, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v71 = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_22CE44280(v41, *(&v29 + 1), &v71);
      _os_log_impl(&dword_22CE3F000, v39, v40, "Requesting frequent updates permission for activity exceeding reduced budget %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x2318C20D0](v43, -1, -1);
      MEMORY[0x2318C20D0](v42, -1, -1);
    }
  }

  else
  {
    v60 = v7;
    v44 = v69;
    sub_22CE85530(v6, v69, type metadata accessor for Budget);
    __swift_destroy_boxed_opaque_existential_1(&v71);
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v45 = sub_22CE85C84();
    __swift_project_value_buffer(v45, qword_281445368);
    v46 = v61;
    sub_22CE85598(v44, v61, type metadata accessor for Budget);

    v47 = v65;
    v48 = v64;
    v49 = v63;
    v50 = v62;
    v51 = v66;
    sub_22CE62924(v65, v64, v63, v62, v66);
    v52 = sub_22CE85C74();
    v53 = sub_22CE85FA4();
    v54 = v67;
    sub_22CE62988(v67, *(&v29 + 1), v47, v48, v49, v50, v51);
    if (os_log_type_enabled(v52, v53))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v71 = v56;
      *v55 = 136446466;
      *(v55 + 4) = sub_22CE44280(v54, *(&v29 + 1), &v71);
      *(v55 + 12) = 2050;
      v57 = *(v46 + *(v60 + 20));
      sub_22CE85600(v46, type metadata accessor for Budget);
      *(v55 + 14) = v57;
      _os_log_impl(&dword_22CE3F000, v52, v53, "Requesting frequent updates permission for activity exceeding reduced budget %{public}s; remaining budget: %{public}ld", v55, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x2318C20D0](v56, -1, -1);
      MEMORY[0x2318C20D0](v55, -1, -1);
    }

    else
    {
      sub_22CE85600(v46, type metadata accessor for Budget);
    }

    sub_22CE85600(v69, type metadata accessor for Budget);
  }

  v58 = *(v68 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer__subscriptionExceedingReducedBudgetPublisher);
  v73 = v78;
  v74 = v79;
  v75 = v80;
  v71 = v76;
  v72 = v77;
  sub_22CE85CB4();
}

uint64_t sub_22CE80FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_22CE85A34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22CE85A74();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v25 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  v24[0] = *a1;
  v24[1] = v11;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64) | (*(a1 + 66) << 16);
  if (v18 < 0)
  {
    if (v18)
    {
      if (v18 == 1)
      {
        *v7 = v14;
        v7[1] = v15;
        v7[2] = v16;
        v7[3] = v17;
        (*(v4 + 104))(v7, *MEMORY[0x277CB9218], v3);
        sub_22CE62924(v14, v15, v16, v17, 1);
      }

      else
      {
        (*(v4 + 104))(v7, *MEMORY[0x277CB9220], v3);
      }
    }

    else
    {
      *v7 = v14;
      v7[1] = v15;
      (*(v4 + 104))(v7, *MEMORY[0x277CB9210], v3);
      sub_22CE62924(v14, v15, v16, v17, 0);
    }
  }

  else
  {
    *v7 = v13;
    v7[1] = v12;
    (*(v4 + 104))(v7, *MEMORY[0x277CB9210], v3);
    sub_22CE449A4(v13, v12, v14, v15, v16, v17, v18);
  }

  v19 = v25;
  sub_22CE85A54();

  sub_22CE62988(v13, v12, v14, v15, v16, v17, v18);
  v20 = v28;
  (*(v26 + 32))(v28, v19, v27);
  v21 = *MEMORY[0x277CB9320];
  v22 = sub_22CE85AF4();
  return (*(*(v22 - 8) + 104))(v20, v21, v22);
}

uint64_t sub_22CE812C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v85 = a2;
  v94 = sub_22CE85B94();
  v84 = *(v94 - 8);
  v3 = *(v84 + 64);
  v4 = MEMORY[0x28223BE20](v94);
  v82 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v77 - v6;
  v90 = sub_22CE85A64();
  v83 = *(v90 - 1);
  v7 = *(v83 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22CE85AE4();
  v9 = *(v95 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v95);
  v96 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22CE85B54();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_22CE85974();
  v87 = *(v14 - 8);
  v15 = *(v87 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v77 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v77 - v26;
  v28 = type metadata accessor for IncomingMessage.EventType(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a1[1];
  v93 = *a1;
  v91 = v32;
  v33 = type metadata accessor for IncomingMessage(0);
  sub_22CE85598(v88 + *(v33 + 40), v31, type metadata accessor for IncomingMessage.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = *v31;
      v80 = v31[1];
      v81 = v35;
      v36 = v31[2];
      v78 = v31[3];
      v79 = v36;
      v37 = v31[4];
      v38 = *(v37 + 16);
      v39 = MEMORY[0x277D84F90];
      v40 = v85;
      v77 = v37;
      if (v38)
      {
        v97 = MEMORY[0x277D84F90];
        sub_22CE4BC48(0, v38, 0);
        v39 = v97;
        v87 = v83 + 8;
        v88 = (v84 + 8);
        v41 = v9 + 32;
        v42 = (v37 + 48);
        v86 = v9;
        do
        {
          v44 = *(v42 - 2);
          v43 = *(v42 - 1);
          if (*v42)
          {
            if (*v42 == 1)
            {
              v45 = *(v42 - 1);

              sub_22CE85AD4();
              sub_22CE52058(v44, v43, 1u);
            }

            else
            {
              v51 = v89;
              sub_22CE85A44();

              v52 = v92;
              sub_22CE85B74();
              sub_22CE85B84();
              (*v88)(v52, v94);
              sub_22CE85AC4();

              (*v87)(v51, v90);
            }
          }

          else
          {
            v46 = *(v42 - 1);

            v47 = v41;
            v48 = v89;
            sub_22CE85A24();

            v49 = v92;
            sub_22CE85B74();
            sub_22CE85B84();
            (*v88)(v49, v94);
            sub_22CE85AC4();

            sub_22CE52058(v44, v43, 0);
            v50 = v48;
            v41 = v47;
            v9 = v86;
            (*v87)(v50, v90);
          }

          v97 = v39;
          v54 = *(v39 + 16);
          v53 = *(v39 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_22CE4BC48(v53 > 1, v54 + 1, 1);
            v39 = v97;
          }

          v42 += 24;
          *(v39 + 16) = v54 + 1;
          (*(v9 + 32))(v39 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v54, v96, v95);
          --v38;
        }

        while (v38);
        v40 = v85;
      }

      v56 = v84;
      if (!*(v39 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB70, &qword_22CE86CF0);
        v96 = *(v9 + 72);
        v57 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_22CE88D00;
        v58 = v39 + v57;
        v59 = (v39 + v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF120, &qword_22CE88EE0) + 48));
        sub_22CE85A44();

        v60 = v92;
        sub_22CE85B74();
        v61 = sub_22CE85B84();
        v63 = v62;
        v90 = *(v56 + 8);
        v90(v60, v94);
        *v59 = v61;
        v59[1] = v63;
        v64 = *MEMORY[0x277CB9330];
        v92 = *(v9 + 104);
        v65 = v95;
        (v92)(v58, v64, v95);
        v66 = &v96[v58];

        v67 = v82;
        sub_22CE85B74();
        v68 = sub_22CE85B84();
        v70 = v69;
        v90(v67, v94);
        *v66 = v68;
        v66[1] = v70;
        (v92)(v66, *MEMORY[0x277CB9338], v65);
      }

      v71 = v80;

      v73 = v78;
      v72 = v79;
      sub_22CE41BF0(v79, v78);

      sub_22CE4E0DC(v72, v73);

      *v40 = v81;
      v40[1] = v71;
      v40[2] = v72;
      v40[3] = v73;
      v40[4] = v39;
      type metadata accessor for PushEvent.EventType(0);
    }

    else
    {
      type metadata accessor for PushEvent.EventType(0);
    }
  }

  else
  {
    sub_22CE44874(v31, v27, &qword_27D9EEF40, &qword_22CE86C00);
    sub_22CE4DD94(v27, v25, &qword_27D9EEF40, &qword_22CE86C00);
    v55 = v87;
    if ((*(v87 + 48))(v25, 1, v14) == 1)
    {
      sub_22CE42330(v25, &qword_27D9EEF40, &qword_22CE86C00);
      sub_22CE85B34();
      sub_22CE85B04();
      sub_22CE42330(v27, &qword_27D9EEF40, &qword_22CE86C00);
      type metadata accessor for PushEvent.EventType(0);
    }

    else
    {
      (*(v55 + 32))(v20, v25, v14);
      sub_22CE85954();
      sub_22CE426A4(&qword_27D9EF128, MEMORY[0x277CC9578]);
      v74 = sub_22CE85DD4();
      v75 = *(v55 + 8);
      v75(v18, v14);
      if (v74)
      {
        sub_22CE85B24();
      }

      else
      {
        sub_22CE85B44();
      }

      sub_22CE85B04();
      v75(v20, v14);
      sub_22CE42330(v27, &qword_27D9EEF40, &qword_22CE86C00);
      type metadata accessor for PushEvent.EventType(0);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22CE81C94@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = sub_22CE85BC4();
  v71 = *(v2 - 8);
  v3 = *(v71 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v67 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = v57 - v6;
  v7 = sub_22CE85854();
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v65 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = v57 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v73 = v57 - v14;
  MEMORY[0x28223BE20](v13);
  v76 = v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF0F8, &qword_22CE88EA8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v66 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v57 - v20;
  v22 = (v1 + *(type metadata accessor for IncomingMessage(0) + 44));
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v72 = v22[3];
  v26 = v22[4];
  v27 = v22[5];
  v28 = v22[6];
  v29 = v22[7];
  v30 = v22[8];
  v74 = v22[9];
  v75 = v30;
  v32 = v22[10];
  v31 = v22[11];
  v62 = v32;
  v63 = v31;
  v33 = sub_22CE85BE4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  if (v24 == 1)
  {
    v36 = v77;

    return v35(v36, 1, 1, v33);
  }

  else
  {
    v60 = v2;
    v61 = v21;
    v59 = v33;
    v58 = v35;
    v57[1] = v34 + 56;
    (v35)(v21, 1, 1);
    v39 = *(v1 + 16);
    v38 = *(v1 + 24);
    type metadata accessor for StringLocalizer();
    swift_initStackObject();

    v40 = sub_22CE64974(v39, v38);
    if (v24)
    {
    }

    else
    {
      v25 = 0;
      v23 = 0;
    }

    sub_22CE64CE8(v23, v24, v25, v28, v29);
    v42 = v41;

    v43 = v77;
    if (v26)
    {

      v44 = v72;
    }

    else
    {
      v27 = 0;
      v44 = 0;
    }

    sub_22CE64CE8(v44, v26, v27, v75, v74);
    v46 = v45;

    if (v42 && (v75 = v40, v46))
    {
      sub_22CE85844();
      sub_22CE85844();
      if (v63)
      {

        v47 = v68;
        sub_22CE85BA4();
      }

      else
      {
        v47 = v68;
        sub_22CE85BB4();
      }

      v49 = v60;
      v51 = v69;
      v50 = v70;
      v52 = *(v69 + 16);
      v52(v64, v76, v70);
      v53 = v73;
      v52(v65, v73, v50);
      v54 = v71;
      (*(v71 + 16))(v67, v47, v49);
      v55 = v66;
      sub_22CE85BD4();

      (*(v54 + 8))(v47, v49);
      v56 = *(v51 + 8);
      v56(v53, v50);
      v56(v76, v50);
      v48 = v61;
      sub_22CE42330(v61, &qword_27D9EF0F8, &qword_22CE88EA8);
      v58(v55, 0, 1, v59);
      sub_22CE44874(v55, v48, &qword_27D9EF0F8, &qword_22CE88EA8);
      v43 = v77;
    }

    else
    {

      v48 = v61;
    }

    return sub_22CE44874(v48, v43, &qword_27D9EF0F8, &qword_22CE88EA8);
  }
}

uint64_t sub_22CE8228C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22CE85804();
    if (v10)
    {
      v11 = sub_22CE85824();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22CE85814();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22CE85804();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22CE85824();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22CE85814();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22CE824BC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = *(*(v3 + 56) + 8 * v12);

    if (!v14)
    {
      return 1;
    }

    result = sub_22CE4DE0C(v13);
    if ((v15 & 1) == 0 || (v16 = *(*(a2 + 56) + 8 * result), v17 = *(v16 + 16), v17 != *(v14 + 16)))
    {
LABEL_29:

      return 0;
    }

    if (v17)
    {
      v18 = v16 == v14;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = (v16 + 40);
      v20 = (v14 + 40);
      while (v17)
      {
        result = *(v19 - 1);
        if (result != *(v20 - 1) || *v19 != *v20)
        {
          result = sub_22CE86194();
          if ((result & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v19 += 2;
        v20 += 2;
        if (!--v17)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_22CE82670(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_22CE44280(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_22CE826CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_22CE82718(a1, a2);
  sub_22CE82848(&unk_284017400);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22CE82718(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22CE82934(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22CE86114();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22CE85EC4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22CE82934(v10, 0);
        result = sub_22CE860B4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22CE82848(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22CE829A8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22CE82934(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF0E8, &qword_22CE88E98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22CE829A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF0E8, &qword_22CE88E98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_22CE82A9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22CE86204();
  sub_22CE85E54();
  v9 = sub_22CE86244();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22CE86194() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_22CE83218(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22CE82C08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22CE86204();
  sub_22CE85E54();
  v9 = sub_22CE86244();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22CE86194() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_22CE83398(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22CE82D58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF148, qword_22CE88F10);
  result = sub_22CE860A4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22CE86204();
      sub_22CE85E54();
      result = sub_22CE86244();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22CE82FB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF118, &unk_22CE88ED0);
  result = sub_22CE860A4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22CE86204();
      sub_22CE85E54();
      result = sub_22CE86244();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22CE83218(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22CE82D58(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22CE83518();
      goto LABEL_16;
    }

    sub_22CE837D0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22CE86204();
  sub_22CE85E54();
  result = sub_22CE86244();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22CE86194();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22CE861A4();
  __break(1u);
  return result;
}

uint64_t sub_22CE83398(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22CE82FB8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22CE83674();
      goto LABEL_16;
    }

    sub_22CE83A08(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22CE86204();
  sub_22CE85E54();
  result = sub_22CE86244();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22CE86194();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22CE861A4();
  __break(1u);
  return result;
}

void *sub_22CE83518()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF148, qword_22CE88F10);
  v2 = *v0;
  v3 = sub_22CE86094();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22CE83674()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF118, &unk_22CE88ED0);
  v2 = *v0;
  v3 = sub_22CE86094();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22CE837D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF148, qword_22CE88F10);
  result = sub_22CE860A4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22CE86204();

      sub_22CE85E54();
      result = sub_22CE86244();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22CE83A08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF118, &unk_22CE88ED0);
  result = sub_22CE860A4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22CE86204();

      sub_22CE85E54();
      result = sub_22CE86244();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22CE83C40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_6Tm(uint64_t a1)
{
  v3 = *(v1 + 32);

  sub_22CE62988(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88) | (*(v1 + 90) << 16));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_22CE83D60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_22CE779E4(v2, v3, a1);
}

unint64_t sub_22CE83DC0()
{
  result = qword_27D9EF0E0;
  if (!qword_27D9EF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EF0E0);
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22CE8410C(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 16);
  v5 = sub_22CE846D0(v3);
  return a1(v5);
}

uint64_t objectdestroy_30Tm()
{
  v1 = (type metadata accessor for AppTokenInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + 24);
  swift_unknownObjectRelease();
  sub_22CE4E0DC(*(v0 + 40), *(v0 + 48));
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[8];
  v9 = sub_22CE85974();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v3 + v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CE8429C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for AppTokenInfo(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_22CE7EA94(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_27Tm()
{
  v1 = type metadata accessor for IncomingMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v26 = *(*(v1 - 1) + 64);

  v4 = *(v0 + 24);
  swift_unknownObjectRelease();
  v5 = (v0 + v3);
  v6 = *(v0 + v3 + 8);
  if (v6 >> 60 != 15)
  {
    sub_22CE4E0DC(*v5, v6);
  }

  v7 = v5[3];

  v8 = v5[5];

  v9 = v1[8];
  v10 = sub_22CE85974();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v5 + v9, v10);
  sub_22CE4E0DC(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v13 = v5 + v1[10];
  type metadata accessor for IncomingMessage.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v15 = *(v13 + 1);

    sub_22CE4E0DC(*(v13 + 2), *(v13 + 3));
    v16 = *(v13 + 4);
  }

  else if (!EnumCaseMultiPayload && !(*(v11 + 48))(v13, 1, v10))
  {
    v12(v13, v10);
  }

  v17 = (v5 + v1[11]);
  v18 = v17[1];
  if (v18)
  {
    if (v18 == 1)
    {
      goto LABEL_14;
    }

    v19 = v17[2];
  }

  if (v17[4])
  {

    v20 = v17[5];
  }

  v21 = v17[7];

  v22 = v17[9];

  v23 = v17[11];

LABEL_14:
  v24 = v1[12];
  if (!(*(v11 + 48))(v5 + v24, 1, v10))
  {
    v12(v5 + v24, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v26, v2 | 7);
}

uint64_t sub_22CE84590(uint64_t (*a1)(void))
{
  v3 = *(type metadata accessor for IncomingMessage(0) - 8);
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));
  v7 = v1[2];
  sub_22CE7BADC(v4, v5, v6);
  return a1();
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  sub_22CE4E0DC(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22CE8465C(uint64_t (*a1)(void))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  sub_22CE7AF88(v3, v4, v5, v6);
  return a1();
}

uint64_t sub_22CE846D0(uint64_t a1)
{
  v3 = sub_22CE85D44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = v1;
  v8 = *&v1[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_22CE85D54();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v97 = *(a1 + 16);
    if (v97)
    {
      v12 = 0;
      v96 = a1 + 32;
      v101 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore;
      *&v11 = 136446210;
      v95 = v11;
      v94 = MEMORY[0x277D84F90];
      while (1)
      {
        v103 = v12;
        v20 = (v96 + 40 * v12);
        v21 = v20[1];
        v22 = v20[2];
        v23 = v20[3];
        v106 = *v20;
        v107 = v22;
        v100 = *(v20 + 32);
        sub_22CE40D28(&v102[v101], &v108);
        v24 = *(&v109 + 1);
        v25 = v110;
        __swift_project_boxed_opaque_existential_1(&v108, *(&v109 + 1));
        v26 = *(v25 + 24);

        v105 = v23;

        result = v26(v24, v25);
        v27 = result;
        v28 = *(result + 16);
        if (!v28)
        {
          v104 = MEMORY[0x277D84F90];
          goto LABEL_28;
        }

        v29 = 0;
        v30 = result + 32;
        v98 = v28 - 1;
        v104 = MEMORY[0x277D84F90];
        v99 = result + 32;
        do
        {
          v31 = v30 + 72 * v29;
          v32 = v29;
          while (1)
          {
            if (v32 >= *(v27 + 16))
            {
              __break(1u);
              goto LABEL_69;
            }

            v33 = *(v31 + 16);
            v34 = *(v31 + 32);
            v35 = *(v31 + 64);
            v121 = *(v31 + 48);
            v36 = *v31;
            v122 = v35;
            v119 = v33;
            v120 = v34;
            v118 = v36;
            if ((v35 & 0x800000) != 0 && v35 == 1)
            {
              break;
            }

LABEL_13:
            ++v32;
            v31 += 72;
            if (v28 == v32)
            {
              goto LABEL_28;
            }
          }

          v37 = v121;
          v38 = v120;
          sub_22CE41214(&v118, v116);
          sub_22CE62924(v38, *(&v38 + 1), v37, *(&v37 + 1), 1);

          if (v37 == __PAIR128__(v105, v107))
          {
          }

          else
          {
            v39 = sub_22CE86194();

            if ((v39 & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          if (v118 != __PAIR128__(v21, v106) && (sub_22CE86194() & 1) == 0)
          {
LABEL_12:
            result = sub_22CE632E8(&v118);
            goto LABEL_13;
          }

          v40 = v104;
          result = swift_isUniquelyReferenced_nonNull_native();
          v113[0] = v40;
          if ((result & 1) == 0)
          {
            result = sub_22CE4BBC8(0, *(v40 + 16) + 1, 1);
            v40 = v113[0];
          }

          v42 = *(v40 + 16);
          v41 = *(v40 + 24);
          if (v42 >= v41 >> 1)
          {
            result = sub_22CE4BBC8((v41 > 1), v42 + 1, 1);
            v40 = v113[0];
          }

          v29 = v32 + 1;
          *(v40 + 16) = v42 + 1;
          v104 = v40;
          v43 = v40 + 72 * v42;
          *(v43 + 32) = v118;
          v44 = v119;
          v45 = v120;
          v46 = v121;
          *(v43 + 96) = v122;
          *(v43 + 64) = v45;
          *(v43 + 80) = v46;
          *(v43 + 48) = v44;
          v30 = v99;
        }

        while (v98 != v32);
LABEL_28:

        __swift_destroy_boxed_opaque_existential_1(&v108);
        v47 = *(v104 + 16);
        if (!v47)
        {

          if (qword_281445360 != -1)
          {
            swift_once();
          }

          v54 = sub_22CE85C84();
          __swift_project_value_buffer(v54, qword_281445368);

          v55 = v105;

          v52 = sub_22CE85C74();
          v56 = sub_22CE85F94();

          if (os_log_type_enabled(v52, v56))
          {
            v13 = swift_slowAlloc();
            v14 = swift_slowAlloc();
            *&v118 = v14;
            *v13 = v95;

            v57 = sub_22CE44280(v107, v55, &v118);

            *(v13 + 4) = v57;
            v16 = v56;
            v17 = v52;
            v18 = "Cannot find subscription for failed channel: %{public}s ";
            goto LABEL_5;
          }

          goto LABEL_38;
        }

        v48 = *(v104 + 48);
        v49 = *(v104 + 80);
        v120 = *(v104 + 64);
        v121 = v49;
        v122 = *(v104 + 96);
        v118 = *(v104 + 32);
        v119 = v48;
        if ((v122 & 0x800000) != 0)
        {
          v58 = v119;
          if (v100)
          {
            if (v100 == 1)
            {
              sub_22CE41214(&v118, v116);

              if (qword_281445360 != -1)
              {
                swift_once();
              }

              v59 = sub_22CE85C84();
              __swift_project_value_buffer(v59, qword_281445368);

              v60 = sub_22CE85C74();
              v61 = sub_22CE85F94();

              if (os_log_type_enabled(v60, v61))
              {
                v62 = swift_slowAlloc();
                v63 = swift_slowAlloc();
                *&v116[0] = v63;
                *v62 = v95;
                v64 = sub_22CE44280(v58, *(&v58 + 1), v116);

                *(v62 + 4) = v64;
                v65 = v61;
                v66 = v60;
                v67 = "Subscription for activity %{public}s failed with a bad channel ID";
                goto LABEL_58;
              }

LABEL_59:

LABEL_60:

              sub_22CE40D28(&v102[v101], v113);
              v79 = v114;
              v80 = v115;
              __swift_project_boxed_opaque_existential_1(v113, v114);
              v81 = *(v80 + 56);

              v81(&v108, v58, *(&v58 + 1), v79, v80);

              v116[2] = v110;
              v116[3] = v111;
              v117 = v112;
              v116[0] = v108;
              v116[1] = v109;
              sub_22CE42330(v116, &qword_27D9EEE78, &qword_22CE88E90);
              __swift_destroy_boxed_opaque_existential_1(v113);
              v82 = v94;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v82 = sub_22CE60818(0, *(v82 + 2) + 1, 1, v82);
              }

              v19 = v103;
              v84 = *(v82 + 2);
              v83 = *(v82 + 3);
              if (v84 >= v83 >> 1)
              {
                v82 = sub_22CE60818((v83 > 1), v84 + 1, 1, v82);
              }

              *(v82 + 2) = v84 + 1;
              v94 = v82;
              v85 = &v82[72 * v84];
              *(v85 + 2) = v118;
              v86 = v119;
              v87 = v120;
              v88 = v121;
              *(v85 + 24) = v122;
              *(v85 + 4) = v87;
              *(v85 + 5) = v88;
              *(v85 + 3) = v86;
              goto LABEL_7;
            }

            sub_22CE41214(&v118, v116);

            if (qword_281445360 != -1)
            {
              swift_once();
            }

            v73 = sub_22CE85C84();
            __swift_project_value_buffer(v73, qword_281445368);

            v60 = sub_22CE85C74();
            v74 = sub_22CE85F94();

            if (!os_log_type_enabled(v60, v74))
            {
              goto LABEL_59;
            }

            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            *&v116[0] = v63;
            *v62 = v95;
            v75 = sub_22CE44280(v58, *(&v58 + 1), v116);

            *(v62 + 4) = v75;
            v65 = v74;
            v66 = v60;
            v67 = "Subscription for activity %{public}s failed for an unknown reason";
LABEL_58:
            _os_log_impl(&dword_22CE3F000, v66, v65, v67, v62, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v63);
            MEMORY[0x2318C20D0](v63, -1, -1);
            MEMORY[0x2318C20D0](v62, -1, -1);
            goto LABEL_60;
          }

          sub_22CE41214(&v118, v116);

          if (v47 != 1)
          {
            if (qword_281445360 != -1)
            {
              swift_once();
            }

            v76 = sub_22CE85C84();
            __swift_project_value_buffer(v76, qword_281445368);

            v60 = sub_22CE85C74();
            v77 = sub_22CE85F94();

            if (!os_log_type_enabled(v60, v77))
            {
              goto LABEL_59;
            }

            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            *&v116[0] = v63;
            *v62 = v95;
            v78 = sub_22CE44280(v58, *(&v58 + 1), v116);

            *(v62 + 4) = v78;
            v65 = v77;
            v66 = v60;
            v67 = "Subscription for activity %{public}s failed as it is a duplicate";
            goto LABEL_58;
          }

          sub_22CE632E8(&v118);
          if (qword_281445360 != -1)
          {
            swift_once();
          }

          v68 = sub_22CE85C84();
          __swift_project_value_buffer(v68, qword_281445368);

          v52 = sub_22CE85C74();
          v69 = sub_22CE85FA4();

          if (os_log_type_enabled(v52, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *&v116[0] = v71;
            *v70 = v95;
            v72 = sub_22CE44280(v58, *(&v58 + 1), v116);

            *(v70 + 4) = v72;
            _os_log_impl(&dword_22CE3F000, v52, v69, "Subscription for activity %{public}s already exists; we will reuse it", v70, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v71);
            MEMORY[0x2318C20D0](v71, -1, -1);
            MEMORY[0x2318C20D0](v70, -1, -1);
          }

          else
          {
          }

LABEL_38:

          goto LABEL_6;
        }

        if (qword_281445360 != -1)
        {
          swift_once();
        }

        v50 = sub_22CE85C84();
        __swift_project_value_buffer(v50, qword_281445368);

        v51 = v105;

        v52 = sub_22CE85C74();
        v53 = sub_22CE85F94();

        if (!os_log_type_enabled(v52, v53))
        {
          goto LABEL_38;
        }

        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *&v116[0] = v14;
        *v13 = v95;

        v15 = sub_22CE44280(v107, v51, v116);

        *(v13 + 4) = v15;
        v16 = v53;
        v17 = v52;
        v18 = "Subscription has no activityIdentifier for failed channel: %{public}s ";
LABEL_5:
        _os_log_impl(&dword_22CE3F000, v17, v16, v18, v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x2318C20D0](v14, -1, -1);
        MEMORY[0x2318C20D0](v13, -1, -1);
LABEL_6:

        v19 = v103;
LABEL_7:
        v12 = v19 + 1;
        if (v12 == v97)
        {
          goto LABEL_67;
        }
      }
    }

    v94 = MEMORY[0x277D84F90];
LABEL_67:
    sub_22CE85C54();
    v89 = v102;
    v90 = *&v102[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_calloutQueue];
    v91 = swift_allocObject();
    *(v91 + 16) = v94;
    *(v91 + 24) = v89;
    v92 = v89;
    sub_22CE85C44();
    sub_22CE85C34();
  }

  else
  {
LABEL_69:
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE85398(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 24);
  v4 = *(*(v1 + 16) + OBJC_IVAR____TtC24SessionPushNotifications10PushServer__tokenPublisher);
  v5 = sub_22CE85CB4();
  return a1(v5);
}

uint64_t sub_22CE853F4(uint64_t (*a1)(uint64_t))
{
  v3 = *(type metadata accessor for PushEvent(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(*(v1 + 16) + OBJC_IVAR____TtC24SessionPushNotifications10PushServer__eventPublisher);
  v6 = sub_22CE85CB4();
  return a1(v6);
}

uint64_t sub_22CE85530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE85598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE85600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CE85660(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22CE86194() & 1;
  }
}

uint64_t sub_22CE856C0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1 + 2);
}