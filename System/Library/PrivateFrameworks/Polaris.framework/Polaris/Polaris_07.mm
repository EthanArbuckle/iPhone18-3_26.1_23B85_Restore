uint64_t sub_25EAFFFB0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v44 - v7;
  v8 = sub_25EB6E138();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  result = MEMORY[0x28223BE20](v13);
  v18 = &v44 - v17;
  v50 = *(a2 + 16);
  if (v50)
  {
    v19 = 0;
    v22 = *(v9 + 16);
    v20 = v9 + 16;
    v21 = v22;
    v52 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v23 = *(v20 + 56);
    v55 = v22;
    v56 = v23;
    v57 = (v20 - 8);
    v49 = a1;
    while (1)
    {
      v53 = v19;
      v21(v18, v52 + v56 * v19, v8);
      v27 = *a1;
      if (*(*a1 + 16))
      {
        v28 = *(v27 + 40);
        sub_25EB0D618(&unk_27FD11F50, MEMORY[0x277D3E738]);
        v29 = sub_25EB6E228();
        v30 = -1 << *(v27 + 32);
        v31 = v29 & ~v30;
        v54 = v27 + 56;
        if ((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          break;
        }
      }

LABEL_3:
      v19 = v53 + 1;
      v24 = v51;
      v21 = v55;
      v55(v51, v18, v8);
      v25 = v24;
      a1 = v49;
      sub_25EB25C78(v15, v25);
      v26 = *v57;
      (*v57)(v15, v8);
      result = (v26)(v18, v8);
      if (v19 == v50)
      {
        return result;
      }
    }

    v32 = ~v30;
    while (1)
    {
      v33 = v20;
      v55(v15, *(v27 + 48) + v31 * v56, v8);
      sub_25EB0D618(&unk_27FD124E0, MEMORY[0x277D3E738]);
      v34 = v18;
      v35 = sub_25EB6E248();
      v36 = *v57;
      (*v57)(v15, v8);
      if (v35)
      {
        break;
      }

      v31 = (v31 + 1) & v32;
      v18 = v34;
      v20 = v33;
      if (((*(v54 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v37 = v45;
    sub_25EB6E128();
    v38 = v47;
    v39 = sub_25EB6E168();
    v41 = v40;
    (*(v46 + 8))(v37, v38);
    sub_25EB0CA68();
    v42 = swift_allocError();
    *v43 = v39;
    *(v43 + 8) = v41;
    *(v43 + 16) = 3;
    swift_willThrow();
    result = (v36)(v34, v8);
    *v48 = v42;
  }

  return result;
}

uint64_t _s7Polaris12GraphManagerC16graphDeployments8withName0F16ResourceDelegate010autoManageB9LifecycleACSay0A7Runtime14EndpointServer_pG_SSAA0bchI0_pSgSbtAC5ErrorOYKcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  v10 = MEMORY[0x277D84FA0];
  *(v9 + 32) = MEMORY[0x277D84FA0];
  v11 = MEMORY[0x277D84F90];
  *(v9 + 48) = sub_25EB0D1DC(MEMORY[0x277D84F90]);
  *(v9 + 56) = sub_25EB0D408(v11, &qword_27FD11F70, &qword_25EB78DD0, &qword_27FD11F78, &qword_25EB78DD8);
  *(v9 + 64) = sub_25EB0D408(v11, &unk_27FD11F60, &qword_25EB78DC0, &unk_27FD123D0, &qword_25EB78DC8);
  if (*(a1 + 16))
  {
    v12 = a6;
    *(v9 + 16) = v10;
    v13 = objc_opt_self();
    v14 = sub_25EB6E258();

    v15 = [v13 uniqueSessionWithName_];

    *(v9 + 40) = v15;
    if (v15)
    {
      [v15 setRemoteSession_];
    }

    sub_25EB0EDAC(a4, v9 + 72, &qword_27FD11C40, &qword_25EB789B0);
    *(v9 + 112) = a5 & 1;
    v16 = v25;
    sub_25EB00E80(a1, &v23);
    sub_25EB0D660(a4, &qword_27FD11C40, &qword_25EB789B0);

    if (v16)
    {
      v17 = v24;
      *v12 = v23;
      *(v12 + 16) = v17;
    }
  }

  else
  {

    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 4;
    v23 = 0uLL;
    v24 = 4;
    sub_25EB0CA68();
    swift_willThrowTypedImpl();
    sub_25EB0D660(a4, &qword_27FD11C40, &qword_25EB789B0);
    sub_25EB0D660(v9 + 32, &qword_27FD11C48, &qword_25EB789B8);
    v18 = *(v9 + 48);

    v19 = *(v9 + 56);

    v20 = *(v9 + 64);

    swift_deallocPartialClassInstance();
  }

  return v9;
}

uint64_t _s7Polaris12GraphManagerC16graphDeployments8withName0F16ResourceDelegate010autoManageB9LifecycleACSay0A7Runtime14EndpointServer_pG_SSAA0bchI0_pSgSbtAC5ErrorOYKcfc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = MEMORY[0x277D84FA0];
  *(v6 + 32) = MEMORY[0x277D84FA0];
  *(v6 + 24) = 0;
  v11 = MEMORY[0x277D84F90];
  *(v6 + 48) = sub_25EB0D1DC(MEMORY[0x277D84F90]);
  *(v6 + 56) = sub_25EB0D408(v11, &qword_27FD11F70, &qword_25EB78DD0, &qword_27FD11F78, &qword_25EB78DD8);
  *(v6 + 64) = sub_25EB0D408(v11, &unk_27FD11F60, &qword_25EB78DC0, &unk_27FD123D0, &qword_25EB78DC8);
  if (*(a1 + 16))
  {
    *(v6 + 16) = v10;
    v12 = objc_opt_self();
    v13 = sub_25EB6E258();

    v14 = [v12 uniqueSessionWithName_];

    *(v6 + 40) = v14;
    if (v14)
    {
      [v14 setRemoteSession_];
    }

    sub_25EB0EDAC(a4, v6 + 72, &qword_27FD11C40, &qword_25EB789B0);
    *(v6 + 112) = a5 & 1;
    sub_25EB00E80(a1, &v22);
    sub_25EB0D660(a4, &qword_27FD11C40, &qword_25EB789B0);

    if (v21)
    {
      v15 = v23;
      *a6 = v22;
      *(a6 + 16) = v15;
    }
  }

  else
  {

    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 4;
    v22 = 0uLL;
    v23 = 4;
    sub_25EB0CA68();
    swift_willThrowTypedImpl();
    sub_25EB0D660(a4, &qword_27FD11C40, &qword_25EB789B0);
    sub_25EB0D660(v6 + 32, &qword_27FD11C48, &qword_25EB789B8);
    v16 = *(v6 + 48);

    v17 = *(v6 + 56);

    v18 = *(v6 + 64);

    type metadata accessor for GraphManager();
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t _s7Polaris12GraphManagerC16graphDeployments7withKey0F16ResourceDelegate010autoManageB9LifecycleACSay0A7Runtime14EndpointServer_pG_So018PSExecutionSessionG0aSgAA0bchI0_pSgSbtAC5ErrorOYKcfC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  v10 = MEMORY[0x277D84FA0];
  *(v9 + 32) = MEMORY[0x277D84FA0];
  v11 = MEMORY[0x277D84F90];
  *(v9 + 48) = sub_25EB0D1DC(MEMORY[0x277D84F90]);
  *(v9 + 56) = sub_25EB0D408(v11, &qword_27FD11F70, &qword_25EB78DD0, &qword_27FD11F78, &qword_25EB78DD8);
  *(v9 + 64) = sub_25EB0D408(v11, &unk_27FD11F60, &qword_25EB78DC0, &unk_27FD123D0, &qword_25EB78DC8);
  if (*(a1 + 16))
  {
    *(v9 + 16) = v10;
    if ((a2 & 0x100000000) != 0)
    {
      *(v9 + 40) = 0;
    }

    else
    {
      v12 = [objc_opt_self() sharedInstanceForExecutionSessionKey_];
      *(v9 + 40) = v12;
      if (v12)
      {
        [v12 setRemoteSession_];
      }
    }

    sub_25EB0EDAC(a3, v9 + 72, &qword_27FD11C40, &qword_25EB789B0);
    *(v9 + 112) = a4 & 1;
    v16 = v22;
    sub_25EB00E80(a1, &v20);
    sub_25EB0D660(a3, &qword_27FD11C40, &qword_25EB789B0);

    if (v16)
    {
      v17 = v21;
      *a5 = v20;
      *(a5 + 16) = v17;
    }
  }

  else
  {

    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 4;
    v20 = 0uLL;
    v21 = 4;
    sub_25EB0CA68();
    swift_willThrowTypedImpl();
    sub_25EB0D660(a3, &qword_27FD11C40, &qword_25EB789B0);
    sub_25EB0D660(v9 + 32, &qword_27FD11C48, &qword_25EB789B8);
    v13 = *(v9 + 48);

    v14 = *(v9 + 56);

    v15 = *(v9 + 64);

    swift_deallocPartialClassInstance();
  }

  return v9;
}

uint64_t _s7Polaris12GraphManagerC16graphDeployments7withKey0F16ResourceDelegate010autoManageB9LifecycleACSay0A7Runtime14EndpointServer_pG_So018PSExecutionSessionG0aSgAA0bchI0_pSgSbtAC5ErrorOYKcfc(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = MEMORY[0x277D84FA0];
  *(v5 + 32) = MEMORY[0x277D84FA0];
  *(v5 + 24) = 0;
  v12 = MEMORY[0x277D84F90];
  *(v5 + 48) = sub_25EB0D1DC(MEMORY[0x277D84F90]);
  *(v5 + 56) = sub_25EB0D408(v12, &qword_27FD11F70, &qword_25EB78DD0, &qword_27FD11F78, &qword_25EB78DD8);
  *(v5 + 64) = sub_25EB0D408(v12, &unk_27FD11F60, &qword_25EB78DC0, &unk_27FD123D0, &qword_25EB78DC8);
  if (*(a1 + 16))
  {
    *(v5 + 16) = v11;
    if ((a2 & 0x100000000) != 0)
    {
      *(v5 + 40) = 0;
    }

    else
    {
      v13 = [objc_opt_self() sharedInstanceForExecutionSessionKey_];
      *(v5 + 40) = v13;
      if (v13)
      {
        [v13 setRemoteSession_];
      }
    }

    sub_25EB0EDAC(a3, v5 + 72, &qword_27FD11C40, &qword_25EB789B0);
    *(v5 + 112) = a4 & 1;
    sub_25EB00E80(a1, &v20);
    sub_25EB0D660(a3, &qword_27FD11C40, &qword_25EB789B0);

    if (v19)
    {
      v17 = v21;
      *a5 = v20;
      *(a5 + 16) = v17;
    }
  }

  else
  {

    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 4;
    v20 = 0uLL;
    v21 = 4;
    sub_25EB0CA68();
    swift_willThrowTypedImpl();
    sub_25EB0D660(a3, &qword_27FD11C40, &qword_25EB789B0);
    sub_25EB0D660(v5 + 32, &qword_27FD11C48, &qword_25EB789B8);
    v14 = *(v5 + 48);

    v15 = *(v5 + 56);

    v16 = *(v5 + 64);

    type metadata accessor for GraphManager();
    swift_deallocPartialClassInstance();
  }

  return v5;
}

uint64_t _s7Polaris12GraphManagerC26graphDeploymentsForTesting010autoManageB9LifecycleACSay0A7Runtime14EndpointServer_pG_SbtAC5ErrorOYKcfC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    result = (*(v3 + 184))();
    if (v4)
    {
      *a3 = v7;
      *(a3 + 16) = v8;
    }
  }

  else
  {

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 4;
    sub_25EB0CA68();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_25EB00E80(uint64_t a1, _OWORD *a2)
{
  v88 = a2;
  v4 = v3;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v95 = *(v99 - 8);
  v6 = *(v95 + 64);
  MEMORY[0x28223BE20](v99);
  v106 = &v87 - v7;
  v8 = sub_25EB6E138();
  v102 = *(v8 - 8);
  v9 = *(v102 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v87 - v12;
  v14 = *(v2 + 40);
  if (v14)
  {
    v15 = type metadata accessor for GraphManager.GraphManagerExecutionSessionDelegate();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR____TtCC7Polaris12GraphManagerP33_8AAE28825E74C265BC34075E2BD49E3336GraphManagerExecutionSessionDelegate_graphManager] = v2;
    swift_unownedRetain();
    v107.receiver = v16;
    v107.super_class = v15;
    v17 = objc_msgSendSuper2(&v107, sel_init);
    [v14 setDelegate:v17 delegateQueue:0];
  }

  v18 = *(a1 + 16);
  swift_beginAccess();
  v19 = v2;
  v90 = v18;
  if (v18)
  {
    v20 = 0;
    v91 = a1 + 32;
    v101 = v102 + 16;
    v94 = v95 + 16;
    v97 = v2;
    v98 = (v95 + 8);
    v100 = (v102 + 8);
    v105 = v8;
    while (2)
    {
      sub_25EB0ECC8(v91 + 40 * v20, &v108);
      v21 = type metadata accessor for GraphManager.HashableEndpointServer();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      v24 = swift_allocObject();
      sub_25EB6E0D8();
      v25 = v24 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer;
      *v25 = 0;
      *(v25 + 24) = 0u;
      *(v25 + 40) = 0;
      *(v25 + 8) = 0u;
      sub_25EB0ED2C(&v108, v25 + 8);
      v26 = sub_25EB03CC4(&v108);
      if (v4)
      {

        goto LABEL_31;
      }

      v27 = v26;
      v93 = 0;
      v92 = v20 + 1;
      v28 = (v26 + 56);
      v29 = 1 << *(v26 + 32);
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v31 = v30 & *(v26 + 56);
      v32 = (v29 + 63) >> 6;

      v34 = 0;
      v103 = v32;
      v104 = v28;
      v96 = v33;
      while (v31)
      {
LABEL_17:
        (*(v102 + 16))(v13, *(v27 + 48) + *(v102 + 72) * (__clz(__rbit64(v31)) | (v34 << 6)), v8);
        v39 = v106;
        sub_25EB6E128();
        swift_beginAccess();

        v40 = *(v19 + 56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = *(v19 + 56);
        v42 = v110;
        *(v19 + 56) = 0x8000000000000000;
        v44 = sub_25EAFD040(v39);
        v45 = *(v42 + 2);
        v46 = (v43 & 1) == 0;
        v47 = v45 + v46;
        if (__OFADD__(v45, v46))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          sub_25EB6E9B8();
          __break(1u);
LABEL_52:

          __break(1u);
          return result;
        }

        v48 = v43;
        if (*(v42 + 3) >= v47)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25EB2D340();
          }
        }

        else
        {
          sub_25EB2A9FC(v47, isUniquelyReferenced_nonNull_native);
          v49 = sub_25EAFD040(v106);
          if ((v48 & 1) != (v50 & 1))
          {
            goto LABEL_51;
          }

          v44 = v49;
        }

        v8 = v105;
        v51 = v110;
        if (v48)
        {
          v35 = *(v110 + 7);
          v36 = *(v35 + 8 * v44);
          *(v35 + 8 * v44) = v24;

          (*v98)(v106, v99);
        }

        else
        {
          v52 = v13;
          *&v110[8 * (v44 >> 6) + 64] |= 1 << v44;
          v53 = v95;
          v54 = v106;
          v55 = v99;
          (*(v95 + 16))(*(v51 + 6) + *(v95 + 72) * v44, v106, v99);
          *(*(v51 + 7) + 8 * v44) = v24;
          (*(v53 + 8))(v54, v55);
          v56 = *(v51 + 2);
          v57 = __OFADD__(v56, 1);
          v58 = v56 + 1;
          if (v57)
          {
            goto LABEL_49;
          }

          *(v51 + 2) = v58;
          v13 = v52;
          v8 = v105;
          v27 = v96;
        }

        v31 &= v31 - 1;
        v19 = v97;
        v37 = *(v97 + 56);
        *(v97 + 56) = v51;

        swift_endAccess();
        (*v100)(v13, v8);
        v32 = v103;
        v28 = v104;
      }

      while (1)
      {
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v38 >= v32)
        {
          break;
        }

        v31 = v28[v38];
        ++v34;
        if (v31)
        {
          v34 = v38;
          goto LABEL_17;
        }
      }

      v59 = *(v19 + 16);

      v60 = v19;
      v61 = *(sub_25EB0B09C(v27, v59) + 16);

      if (v61)
      {
        v65 = v24;
        *&v108 = 0;
        *(&v108 + 1) = 0xE000000000000000;
        sub_25EB6E6B8();
        MEMORY[0x25F8C69B0](0xD000000000000035, 0x800000025EB8DBB0);
        v28 = *(v60 + 16);

        v66 = sub_25EB0B09C(v27, v28);

        KeyPath = swift_getKeyPath();
        v68 = v66 + 56;
        v69 = 1 << *(v66 + 32);
        v70 = -1;
        if (v69 < 64)
        {
          v70 = ~(-1 << v69);
        }

        v71 = v70 & *(v66 + 56);
        v72 = (v69 + 63) >> 6;
        v106 = KeyPath;

        v104 = v66;

        v73 = 0;
        v74 = MEMORY[0x277D84F90];
        v87 = v65;
        if (v71)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v75 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            goto LABEL_50;
          }

          if (v75 >= v72)
          {

            v110 = v74;

            v28 = v93;
            sub_25EB0A814(&v110);
            if (v28)
            {
              goto LABEL_52;
            }

            v82 = MEMORY[0x25F8C6AB0](v110, MEMORY[0x277D84CC0]);
            v84 = v83;

            MEMORY[0x25F8C69B0](v82, v84);

            v85 = v108;
            v86 = v88;
            *v88 = v108;
            *(v86 + 16) = 2;
            v108 = v85;
            v109 = 2;
            sub_25EB0CA68();
            swift_willThrowTypedImpl();
          }

          v71 = *(v68 + 8 * v75);
          ++v73;
          if (v71)
          {
            v73 = v75;
            do
            {
LABEL_39:
              v76 = v105;
              v77 = v102;
              v78 = v89;
              (*(v102 + 16))(v89, v104[6] + *(v102 + 72) * (__clz(__rbit64(v71)) | (v73 << 6)), v105);
              swift_getAtKeyPath();
              v79 = v110;
              (*(v77 + 8))(v78, v76);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v74 = sub_25EB067AC(0, *(v74 + 2) + 1, 1, v74);
              }

              v81 = *(v74 + 2);
              v80 = *(v74 + 3);
              if (v81 >= v80 >> 1)
              {
                v74 = sub_25EB067AC((v80 > 1), v81 + 1, 1, v74);
              }

              v71 &= v71 - 1;
              *(v74 + 2) = v81 + 1;
              *&v74[4 * v81 + 32] = v79;
            }

            while (v71);
          }
        }
      }

      swift_beginAccess();
      sub_25EB0F088(v27);
      swift_endAccess();

      v20 = v92;
      v4 = v93;
      v19 = v60;
      if (v92 != v90)
      {
        continue;
      }

      break;
    }
  }

  result = sub_25EB01C40(&v108);
  if (v4)
  {
LABEL_31:
    v63 = v109;
    v64 = v88;
    *v88 = v108;
    *(v64 + 16) = v63;
  }

  return result;
}

uint64_t GraphManager.deinit()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 40);
  if (v1)
  {
    v14 = 0;
    if ([v1 stopRemoteGraphs:1 error:&v14])
    {
      v2 = v14;
    }

    else
    {
      v3 = v14;
      v4 = sub_25EB6E048();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C50, &unk_25EB789C0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_25EB78950;
      v14 = 0;
      v15 = 0xE000000000000000;
      sub_25EB6E6B8();
      MEMORY[0x25F8C69B0](0xD00000000000003ALL, 0x800000025EB8D730);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
      sub_25EB6E748();
      v6 = v14;
      v7 = v15;
      *(v5 + 56) = MEMORY[0x277D837D0];
      *(v5 + 32) = v6;
      *(v5 + 40) = v7;
      sub_25EB6EA18();
    }
  }

  v8 = *(v0 + 16);

  sub_25EB0D660(v0 + 32, &qword_27FD11C48, &qword_25EB789B8);

  v9 = *(v0 + 48);

  v10 = *(v0 + 56);

  v11 = *(v0 + 64);

  sub_25EB0D660(v0 + 72, &qword_27FD11C40, &qword_25EB789B0);
  v12 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t GraphManager.__deallocating_deinit()
{
  GraphManager.deinit();

  return swift_deallocClassInstance();
}

void *GraphManager.executionSession.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_25EB019AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t sub_25EB01A0C()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_25EB01A44(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_25EB01AE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

uint64_t sub_25EB01B40()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_25EB01B78(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_25EB01C40(uint64_t a1)
{
  v235[0] = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11C00, &qword_25EB78990);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v243 = v235 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v247 = v235 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v266 = v235 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v235 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v249 = v235 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v252 = v235 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v253 = v235 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v272 = v235 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v246 = v235 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v271 = v235 - v27;
  MEMORY[0x28223BE20](v26);
  v255 = v235 - v28;
  v277 = sub_25EB6E138();
  v29 = *(v277 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v277);
  v263 = v235 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v261 = v235 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v236 = v235 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v267 = v235 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v265 = v235 - v40;
  MEMORY[0x28223BE20](v39);
  v239 = v235 - v41;
  swift_beginAccess();
  v42 = *(v2 + 16);
  v43 = v42 + 56;
  v44 = 1 << *(v42 + 32);
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & *(v42 + 56);
  v47 = (v44 + 63) >> 6;
  v268 = v29 + 16;
  v262 = v29 + 32;
  v264 = v9 + 32;
  v251 = (v29 + 56);
  v250 = (v29 + 40);
  v273 = v9;
  v276 = (v9 + 8);
  v245 = v29;
  v244 = (v29 + 8);
  v240 = v42;

  v48 = 0;
  v254 = xmmword_25EB78950;
  v278 = v8;
  v256 = v15;
  v274 = v2;
  v275 = v9 + 16;
  v238 = v43;
  v237 = v47;
LABEL_6:
  if (v46)
  {
    v64 = v48;
LABEL_11:
    v242 = (v46 - 1) & v46;
    v241 = v64;
    v65 = *(v240 + 48);
    v66 = v245;
    v259 = *(v245 + 72);
    v67 = v239;
    v68 = v277;
    v260 = *(v245 + 16);
    v260(v239, v65 + v259 * (__clz(__rbit64(v46)) | (v64 << 6)), v277);
    v248 = *(v66 + 32);
    v248(v265, v67, v68);
    v69 = sub_25EB6E108();
    v71 = v69 + 56;
    v70 = *(v69 + 56);
    v269 = v69;
    v72 = 1 << *(v69 + 32);
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    else
    {
      v73 = -1;
    }

    v74 = v73 & v70;
    swift_beginAccess();
    v75 = 0;
    v76 = (v72 + 63) >> 6;
    v77 = v271;
    v258 = v71;
    v257 = v76;
    while (v74)
    {
LABEL_20:
      v79 = *(v269 + 48);
      v80 = v273;
      v270 = *(v273 + 72);
      v81 = *(v273 + 16);
      v82 = v255;
      v83 = v278;
      v81(v255, v79 + v270 * (__clz(__rbit64(v74)) | (v75 << 6)), v278);
      (*(v80 + 32))(v77, v82, v83);
      if (*(v2 + 112) == 1)
      {
        v84 = *(v2 + 48);
        if (*(v84 + 16))
        {
          v85 = *(v2 + 48);

          v86 = sub_25EAFD040(v77);
          if (v87)
          {
            v212 = v247;
            v213 = v77;
            v214 = v277;
            v260(v247, *(v84 + 56) + v86 * v259, v277);

            (*v251)(v212, 0, 1, v214);
            sub_25EB0D660(v212, &unk_27FD11C00, &qword_25EB78990);
            v282 = 0;
            v283 = 0xE000000000000000;
            sub_25EB6E6B8();
            MEMORY[0x25F8C69B0](0xD000000000000025, 0x800000025EB8DB40);
            v215 = v246;
            v216 = v265;
            sub_25EB6E128();
            sub_25EAFD940(&qword_27FD11E78);
            v217 = v278;
            v218 = sub_25EB6E968();
            MEMORY[0x25F8C69B0](v218);

            v219 = *v276;
            (*v276)(v215, v217);
            MEMORY[0x25F8C69B0](0xD000000000000031, 0x800000025EB8DB70);
            v220 = sub_25EB6E168();
            MEMORY[0x25F8C69B0](v220);

            MEMORY[0x25F8C69B0](46, 0xE100000000000000);
            v221 = v282;
            v222 = v283;
            v223 = v235[0];
            *v235[0] = v282;
            *(v223 + 8) = v222;
            *(v223 + 16) = 0;
            v282 = v221;
            v283 = v222;
            v284 = 0;
            sub_25EB0CA68();
            swift_willThrowTypedImpl();

            v219(v213, v217);
            return (*v244)(v216, v214);
          }
        }

        v88 = v247;
        (*v251)(v247, 1, 1, v277);
        sub_25EB0D660(v88, &unk_27FD11C00, &qword_25EB78990);
        v83 = v278;
      }

      v89 = v272;
      v81(v272, v77, v83);
      swift_beginAccess();
      v260(v267, v265, v277);
      v90 = *(v2 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v279 = *(v2 + 48);
      v92 = v279;
      *(v2 + 48) = 0x8000000000000000;
      v93 = sub_25EAFD040(v89);
      v95 = *(v92 + 16);
      v96 = (v94 & 1) == 0;
      v97 = __OFADD__(v95, v96);
      v98 = v95 + v96;
      if (v97)
      {
        goto LABEL_112;
      }

      v99 = v94;
      if (*(v92 + 24) >= v98)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v122 = v93;
          sub_25EB2CFE4();
          v93 = v122;
        }
      }

      else
      {
        sub_25EB2A550(v98, isUniquelyReferenced_nonNull_native);
        v93 = sub_25EAFD040(v272);
        if ((v99 & 1) != (v100 & 1))
        {
          goto LABEL_116;
        }
      }

      v101 = v279;
      if (v99)
      {
        (*v250)(*(v279 + 56) + v93 * v259, v267, v277);
        v102 = v278;
      }

      else
      {
        *(v279 + 8 * (v93 >> 6) + 64) |= 1 << v93;
        v103 = v93;
        v102 = v278;
        v81((v101[6] + v93 * v270), v272, v278);
        v248((v101[7] + v103 * v259), v267, v277);
        v104 = v101[2];
        v97 = __OFADD__(v104, 1);
        v105 = v104 + 1;
        if (v97)
        {
          goto LABEL_114;
        }

        v101[2] = v105;
      }

      v74 &= v74 - 1;
      v270 = *v276;
      v270(v272, v102);
      v106 = v274;
      v107 = *(v274 + 48);
      *(v274 + 48) = v101;

      swift_endAccess();
      v108 = [objc_allocWithZone(MEMORY[0x277D3E6B8]) init];
      [v108 setType_];
      sub_25EB6E188();
      LODWORD(v279) = v282;
      sub_25EB6E968();
      v109 = sub_25EB6E258();

      [v108 setKey_];

      v110 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      [v108 setDefaultStride_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11CD0, &qword_25EB789D8);
      inited = swift_initStackObject();
      *(inited + 16) = v254;
      sub_25EAFCC70(0, &qword_27FD11B58, 0x277CCABB0);
      *(inited + 32) = sub_25EB6E4F8();
      *(inited + 40) = [objc_allocWithZone(MEMORY[0x277D3E6C0]) initWithOffset_];
      sub_25EB0E264(inited, &qword_27FD11F20, &qword_25EB78D48, sub_25EAFD0D0);
      swift_setDeallocating();
      sub_25EB0D660(inited + 32, &qword_27FD11CD8, &qword_25EB789E0);
      sub_25EAFCC70(0, &qword_27FD11CE0, 0x277D3E6C0);
      sub_25EB0D6C0(&qword_27FD11CE8, &qword_27FD11B58, 0x277CCABB0);
      v112 = sub_25EB6E1F8();

      [v108 setSupportedStrides_];

      [v108 setOptions_];
      sub_25EB0EDAC(v106 + 72, &v279, &qword_27FD11C40, &qword_25EB789B0);
      if (v281)
      {
        sub_25EB0ED2C(&v279, &v282);
        v113 = *(v106 + 40);
        if (v113)
        {
          v114 = [v113 context];
          v116 = v285;
          v115 = v286;
          __swift_project_boxed_opaque_existential_1(&v282, v285);
          v117 = *(v115 + 8);
          v118 = v108;
          v119 = v117(v116, v115);
          v8 = v278;
          [v114 addResourceStream:v118 withInitialAvailability:v119];

          v77 = v271;
          v270(v271, v8);
        }

        else
        {
          v77 = v271;
          v8 = v278;
          v270(v271, v278);
        }

        v71 = v258;
        v76 = v257;
        __swift_destroy_boxed_opaque_existential_1Tm(&v282);
        v2 = v274;
      }

      else
      {
        sub_25EB0D660(&v279, &qword_27FD11C40, &qword_25EB789B0);
        v120 = *(v106 + 40);
        if (v120)
        {
          v121 = [v120 context];
          [v121 addResourceStream_];

          v77 = v271;
          v8 = v278;
          v270(v271, v278);
        }

        else
        {
          v77 = v271;
          v8 = v278;
          v270(v271, v278);
        }

        v2 = v274;
        v71 = v258;
        v76 = v257;
      }
    }

    while (1)
    {
      v78 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        __break(1u);
        goto LABEL_107;
      }

      if (v78 >= v76)
      {
        break;
      }

      v74 = *(v71 + 8 * v78);
      ++v75;
      if (v74)
      {
        v75 = v78;
        goto LABEL_20;
      }
    }

    v123 = v246;
    sub_25EB6E128();
    sub_25EB6E188();
    v270 = *v276;
    v270(v123, v8);
    LODWORD(v279) = v282;
    v282 = sub_25EB6E968();
    v283 = v124;

    MEMORY[0x25F8C69B0](0x6B7361545FLL, 0xE500000000000000);

    v125 = objc_allocWithZone(MEMORY[0x277D3E6D0]);
    v126 = sub_25EB6E258();

    v269 = [v125 initWithName_];

    v127 = sub_25EB6E118();
    v128 = v127;
    v129 = 0;
    v130 = v127 + 56;
    v131 = 1 << *(v127 + 32);
    if (v131 < 64)
    {
      v132 = ~(-1 << v131);
    }

    else
    {
      v132 = -1;
    }

    v133 = v132 & *(v127 + 56);
    v134 = (v131 + 63) >> 6;
    while (v133)
    {
      v135 = v129;
LABEL_53:
      v136 = __clz(__rbit64(v133));
      v133 &= v133 - 1;
      v137 = v253;
      v138 = v278;
      (*(v273 + 16))(v253, *(v128 + 48) + *(v273 + 72) * (v136 | (v135 << 6)), v278);
      sub_25EB6E188();
      LODWORD(v279) = v282;
      sub_25EB6E968();
      v139 = sub_25EB6E258();

      v140 = [objc_opt_self() inputWithKey_];

      [v269 addInput_];
      v270(v137, v138);
    }

    while (1)
    {
      v135 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v135 >= v134)
      {

        v141 = sub_25EB6E108();
        v142 = v141;
        v143 = 0;
        v144 = v141 + 56;
        v145 = 1 << *(v141 + 32);
        if (v145 < 64)
        {
          v146 = ~(-1 << v145);
        }

        else
        {
          v146 = -1;
        }

        v147 = v146 & *(v141 + 56);
        v148 = (v145 + 63) >> 6;
        while (v147)
        {
          v149 = v143;
LABEL_64:
          v150 = __clz(__rbit64(v147));
          v147 &= v147 - 1;
          v151 = v252;
          v152 = v278;
          (*(v273 + 16))(v252, *(v142 + 48) + *(v273 + 72) * (v150 | (v149 << 6)), v278);
          sub_25EB6E188();
          LODWORD(v279) = v282;
          sub_25EB6E968();
          v153 = sub_25EB6E2B8();

          v154 = [objc_allocWithZone(MEMORY[0x277D3E6E0]) initWithKey_];

          [v269 addOutput_];

          v270(v151, v152);
        }

        while (1)
        {
          v149 = v143 + 1;
          if (__OFADD__(v143, 1))
          {
            goto LABEL_108;
          }

          if (v149 >= v148)
          {

            v49 = v246;
            v50 = v265;
            sub_25EB6E128();
            v51 = v278;
            sub_25EB6E188();
            v52 = v270;
            v270(v49, v51);
            LODWORD(v279) = v282;
            sub_25EB6E968();
            v53 = objc_allocWithZone(MEMORY[0x277D3E698]);
            v54 = sub_25EB6E258();

            v55 = v53;
            v8 = v51;
            v56 = [v55 initWithName_];

            v57 = [objc_opt_self() fixedFrequency_];
            [v56 setGraphFrequency_];

            v58 = v269;
            [v56 addTask_];
            sub_25EB6E128();
            v59 = v274;
            swift_beginAccess();
            v60 = v56;
            v2 = v59;
            v61 = v60;
            v62 = *(v59 + 64);
            v63 = swift_isUniquelyReferenced_nonNull_native();
            *&v279 = *(v59 + 64);
            *(v59 + 64) = 0x8000000000000000;
            sub_25EB2C628(v61, v49, v63);
            v52(v49, v8);
            *(v59 + 64) = v279;
            swift_endAccess();

            (*v244)(v50, v277);
            v48 = v241;
            v15 = v256;
            v43 = v238;
            v47 = v237;
            v46 = v242;
            goto LABEL_6;
          }

          v147 = *(v144 + 8 * v149);
          ++v143;
          if (v147)
          {
            v143 = v149;
            goto LABEL_64;
          }
        }
      }

      v133 = *(v130 + 8 * v135);
      ++v129;
      if (v133)
      {
        v129 = v135;
        goto LABEL_53;
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v64 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v64 >= v47)
      {

        [*(v2 + 40) publishContext];
        v155 = *(v2 + 16);
        v158 = *(v155 + 56);
        v157 = (v155 + 56);
        v156 = v158;
        v159 = 1 << *(*(v2 + 16) + 32);
        if (v159 < 64)
        {
          v160 = ~(-1 << v159);
        }

        else
        {
          v160 = -1;
        }

        v161 = v160 & v156;
        v162 = (v159 + 63) >> 6;
        v257 = *(v2 + 16);

        v163 = 0;
        v255 = v157;
        *&v254 = v162;
LABEL_71:
        if (v161)
        {
          v164 = v163;
LABEL_76:
          v165 = __clz(__rbit64(v161));
          v259 = (v161 - 1) & v161;
          v258 = v164;
          v166 = *(v257 + 48);
          v167 = v245;
          v269 = *(v245 + 72);
          v168 = v236;
          v169 = v277;
          v270 = *(v245 + 16);
          (v270)(v236, v166 + v269 * (v165 | (v164 << 6)), v277);
          v260 = *(v167 + 32);
          v260(v261, v168, v169);
          v170 = sub_25EB6E0F8();
          v172 = (v170 + 56);
          v171 = *(v170 + 56);
          v271 = v170;
          v173 = 1 << *(v170 + 32);
          if (v173 < 64)
          {
            v174 = ~(-1 << v173);
          }

          else
          {
            v174 = -1;
          }

          v175 = v174 & v171;
          swift_beginAccess();
          v176 = 0;
          v177 = (v173 + 63) >> 6;
          v267 = v172;
          v265 = v177;
          while (v175)
          {
            v181 = v274;
LABEL_89:
            v183 = *(v271 + 6);
            v184 = v273;
            v272 = *(v273 + 72);
            v185 = *(v273 + 16);
            v186 = v249;
            v187 = v278;
            v185(v249, v183 + v272 * (__clz(__rbit64(v175)) | (v176 << 6)), v278);
            (*(v184 + 32))(v15, v186, v187);
            if (*(v181 + 112))
            {
              v188 = *(v181 + 48);
              if (*(v188 + 16))
              {
                v189 = *(v181 + 48);

                v190 = sub_25EAFD040(v15);
                if (v191)
                {
                  v224 = v243;
                  v225 = v277;
                  (v270)(v243, *(v188 + 56) + v190 * v269, v277);

                  (*v251)(v224, 0, 1, v225);
                  sub_25EB0D660(v224, &unk_27FD11C00, &qword_25EB78990);
                  *&v279 = 0;
                  *(&v279 + 1) = 0xE000000000000000;
                  sub_25EB6E6B8();
                  MEMORY[0x25F8C69B0](0xD000000000000025, 0x800000025EB8DB40);
                  v226 = v246;
                  v227 = v261;
                  sub_25EB6E128();
                  sub_25EAFD940(&qword_27FD11E78);
                  v228 = v15;
                  v229 = v278;
                  v230 = sub_25EB6E968();
                  MEMORY[0x25F8C69B0](v230);

                  v231 = *v276;
                  (*v276)(v226, v229);
                  MEMORY[0x25F8C69B0](0xD000000000000031, 0x800000025EB8DB70);
                  v232 = sub_25EB6E168();
                  MEMORY[0x25F8C69B0](v232);

                  MEMORY[0x25F8C69B0](46, 0xE100000000000000);
                  v233 = v279;
                  v234 = v235[0];
                  *v235[0] = v279;
                  *(v234 + 16) = 0;
                  v279 = v233;
                  v280 = 0;
                  sub_25EB0CA68();
                  swift_willThrowTypedImpl();

                  v231(v228, v229);
                  return (*v244)(v227, v225);
                }
              }

              v192 = v243;
              (*v251)(v243, 1, 1, v277);
              sub_25EB0D660(v192, &unk_27FD11C00, &qword_25EB78990);
              v187 = v278;
            }

            v193 = v266;
            v185(v266, v15, v187);
            swift_beginAccess();
            (v270)(v263, v261, v277);
            v194 = *(v181 + 48);
            v195 = swift_isUniquelyReferenced_nonNull_native();
            v287 = *(v181 + 48);
            v196 = v287;
            *(v181 + 48) = 0x8000000000000000;
            v198 = sub_25EAFD040(v193);
            v199 = v196[2];
            v200 = (v197 & 1) == 0;
            v201 = v199 + v200;
            if (__OFADD__(v199, v200))
            {
              goto LABEL_113;
            }

            v202 = v197;
            if (v196[3] >= v201)
            {
              if ((v195 & 1) == 0)
              {
                sub_25EB2CFE4();
              }
            }

            else
            {
              sub_25EB2A550(v201, v195);
              v203 = sub_25EAFD040(v266);
              if ((v202 & 1) != (v204 & 1))
              {
                goto LABEL_116;
              }

              v198 = v203;
            }

            v205 = v287;
            v206 = v276;
            if (v202)
            {
              (*v250)(v287[7] + v198 * v269, v263, v277);
              v178 = *v206;
              v179 = v278;
              (*v206)(v266, v278);
            }

            else
            {
              v287[(v198 >> 6) + 8] |= 1 << v198;
              v207 = v266;
              v208 = v278;
              v185((v205[6] + v198 * v272), v266, v278);
              v260((v205[7] + v198 * v269), v263, v277);
              v178 = *v206;
              (*v206)(v207, v208);
              v209 = v205[2];
              v97 = __OFADD__(v209, 1);
              v210 = v209 + 1;
              if (v97)
              {
                goto LABEL_115;
              }

              v205[2] = v210;
              v179 = v278;
            }

            v175 &= v175 - 1;
            v180 = *(v274 + 48);
            *(v274 + 48) = v205;

            swift_endAccess();
            v15 = v256;
            v178(v256, v179);
            v172 = v267;
            v177 = v265;
          }

          v181 = v274;
          while (1)
          {
            v182 = v176 + 1;
            if (__OFADD__(v176, 1))
            {
              goto LABEL_109;
            }

            if (v182 >= v177)
            {
              (*v244)(v261, v277);

              v163 = v258;
              v157 = v255;
              v162 = v254;
              v161 = v259;
              goto LABEL_71;
            }

            v175 = *&v172[8 * v182];
            ++v176;
            if (v175)
            {
              v176 = v182;
              goto LABEL_89;
            }
          }
        }

        while (1)
        {
          v164 = v163 + 1;
          if (__OFADD__(v163, 1))
          {
            goto LABEL_111;
          }

          if (v164 >= v162)
          {
          }

          v161 = *&v157[8 * v164];
          ++v163;
          if (v161)
          {
            goto LABEL_76;
          }
        }
      }

      v46 = *(v43 + 8 * v64);
      ++v48;
      if (v46)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  result = sub_25EB6E9B8();
  __break(1u);
  return result;
}

void sub_25EB03AD4()
{
  sub_25EB6E6B8();
  MEMORY[0x25F8C69B0](0xD000000000000030, 0x800000025EB8D7D0);
  MEMORY[0x25F8C69B0](0xD0000000000000CCLL, 0x800000025EB8D810);
  sub_25EB6E838();
  __break(1u);
}

void sub_25EB03B80()
{
  sub_25EB6E6B8();
  MEMORY[0x25F8C69B0](0xD00000000000002FLL, 0x800000025EB8D8E0);
  MEMORY[0x25F8C69B0](0xD0000000000000CCLL, 0x800000025EB8D810);
  sub_25EB6E838();
  __break(1u);
}

uint64_t sub_25EB03C2C()
{
  sub_25EB6E0E8();
  sub_25EB0D618(&qword_27FD11C58, MEMORY[0x277CC95F0]);
  return sub_25EB6E238();
}

uint64_t sub_25EB03CC4(uint64_t a1)
{
  v4 = v1 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer));
  v5 = *(v4 + 40);
  __swift_project_boxed_opaque_existential_1((v4 + 8), *(v4 + 32));
  v6 = sub_25EB6E148();
  os_unfair_lock_unlock(v4);
  if (v2)
  {
    sub_25EB6E6B8();
    MEMORY[0x25F8C69B0](0xD00000000000002FLL, 0x800000025EB8DB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
    sub_25EB6E748();
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 2;
    sub_25EB0CA68();
    swift_willThrowTypedImpl();
  }

  return v6;
}

uint64_t GraphManager.HashableEndpointServer.deinit()
{
  v1 = OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_id;
  v2 = sub_25EB6E0E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer + 8));
  return v0;
}

uint64_t GraphManager.HashableEndpointServer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_id;
  v2 = sub_25EB6E0E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer + 8));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25EB03F30()
{
  sub_25EB6EA28();
  sub_25EB6E0E8();
  sub_25EB0D618(&qword_27FD11C58, MEMORY[0x277CC95F0]);
  sub_25EB6E238();
  return sub_25EB6EA58();
}

uint64_t sub_25EB03FCC()
{
  v1 = *v0;
  sub_25EB6EA28();
  sub_25EB6E0E8();
  sub_25EB0D618(&qword_27FD11C58, MEMORY[0x277CC95F0]);
  sub_25EB6E238();
  return sub_25EB6EA58();
}

uint64_t sub_25EB0406C()
{
  v1 = *v0;
  sub_25EB6E0E8();
  sub_25EB0D618(&qword_27FD11C58, MEMORY[0x277CC95F0]);
  return sub_25EB6E238();
}

uint64_t sub_25EB040F4()
{
  sub_25EB6EA28();
  v1 = *v0;
  sub_25EB6E0E8();
  sub_25EB0D618(&qword_27FD11C58, MEMORY[0x277CC95F0]);
  sub_25EB6E238();
  return sub_25EB6EA58();
}

uint64_t sub_25EB041AC(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 24));
  sub_25EB04204((v1 + 32), a1, &v4);
  os_unfair_lock_unlock((v1 + 24));
  return v4;
}

uint64_t sub_25EB04204@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v51 = a3;
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v49 - v6;
  v57 = sub_25EB6E138();
  v7 = *(v57 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v57);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v13 = *a1;
  v60 = MEMORY[0x277D84F90];
  v14 = v13 + 56;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 56);
  v18 = (v15 + 63) >> 6;
  v54 = v7 + 8;
  v55 = v7 + 16;
  v58 = v13;

  v20 = 0;
  v56 = v4;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_9:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = v57;
      (*(v7 + 16))(v12, *(v58 + 48) + *(v7 + 72) * (v22 | (v21 << 6)), v57);
      v24 = sub_25EB6E108();
      (*(v7 + 8))(v12, v23);
      result = sub_25EB0BB10(v24);
      v4 = v56;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_9;
    }
  }

  v25 = v58;

  v49 = v60;
  v60 = MEMORY[0x277D84F90];
  v26 = 1 << *(v25 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v25 + 56);
  v29 = (v26 + 63) >> 6;

  v30 = 0;
  for (i = v52; v28; v4 = v56)
  {
    v32 = v30;
LABEL_19:
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = v57;
    (*(v7 + 16))(i, *(v58 + 48) + *(v7 + 72) * (v33 | (v32 << 6)), v57);
    v35 = sub_25EB6E0F8();
    (*(v7 + 8))(i, v34);
    result = sub_25EB0BB10(v35);
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {

      v36 = v60;
      v60 = v49;
      sub_25EB0B9D8(v36);
      v37 = v60;
      v57 = *(v50 + 16);
      if (v57)
      {
        v38 = 0;
        v39 = *(v53 + 16);
        v40 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v41 = v50 + v40;
        v42 = *(v53 + 72);
        v43 = v60 + v40;
        v44 = (v53 + 8);
        v45 = v59;
        v53 += 16;
        v55 = v50 + v40;
        v56 = v39;
        v58 = v60;
        while (2)
        {
          v39(v45, v41 + v42 * v38++, v4);
          v46 = *(v37 + 16) + 1;
          v47 = v43;
          do
          {
            if (!--v46)
            {
              (*v44)(v59, v4);
              v48 = 0;
              goto LABEL_29;
            }

            sub_25EAFD940(&qword_27FD11F30);
            v47 += v42;
          }

          while ((sub_25EB6E248() & 1) == 0);
          v45 = v59;
          (*v44)(v59, v4);
          v39 = v56;
          v41 = v55;
          v37 = v58;
          if (v38 != v57)
          {
            continue;
          }

          break;
        }
      }

      v48 = 1;
LABEL_29:

      *v51 = v48;
      return result;
    }

    v28 = *(v14 + 8 * v32);
    ++v30;
    if (v28)
    {
      v30 = v32;
      goto LABEL_19;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_25EB046E0(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF8, &qword_25EB78988);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v38 = *(v44 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v35 - v8;
  v9 = *(v1 + OBJC_IVAR____TtCC7Polaris12GraphManagerP33_8AAE28825E74C265BC34075E2BD49E3336GraphManagerExecutionSessionDelegate_graphManager);
  swift_unownedRetainStrong();
  if (!v9)
  {
    goto LABEL_36;
  }

  v42 = v6;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  v10 = a1 & 0xFFFFFFFFFFFFFF8;

  sub_25EB6E998();
  sub_25EAFCC70(0, &qword_27FD11E08, 0x277D3E828);
  v11 = a1;
  if (!swift_dynamicCastMetatype())
  {
    v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = a1;
    if (v29)
    {
      v30 = (v10 + 32);
      while (1)
      {
        v31 = *v30;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v30;
        if (!--v29)
        {
          v11 = a1;
          goto LABEL_4;
        }
      }

      v11 = v10 | 1;
    }
  }

LABEL_4:
  while (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = a1;
    v37 = v9;
    if (!v12)
    {
      goto LABEL_30;
    }

LABEL_6:
    v13 = 0;
    v40 = v11 & 0xFFFFFFFFFFFFFF8;
    v41 = v11 & 0xC000000000000001;
    v14 = (v38 + 48);
    v9 = MEMORY[0x277D84F90];
    v39 = (v38 + 32);
    while (1)
    {
      if (v41)
      {
        v15 = MEMORY[0x25F8C6D90](v13, v11);
      }

      else
      {
        if (v13 >= *(v40 + 16))
        {
          goto LABEL_27;
        }

        v15 = *(v11 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v18 = v11;
      v19 = [v15 resourceKey];
      v20 = sub_25EB6E268();
      v22 = v21;

      v23 = v20;
      v24 = v42;
      v25 = v22;
      a1 = v44;
      Key<>.init(_:)(v23, v25, v42);

      if ((*v14)(v24, 1, a1) == 1)
      {
        sub_25EB0D660(v24, &qword_27FD11BF8, &qword_25EB78988);
      }

      else
      {
        v26 = *v39;
        (*v39)(v43, v24, a1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_25EB062E0(0, v9[2] + 1, 1, v9);
        }

        v28 = v9[2];
        v27 = v9[3];
        if (v28 >= v27 >> 1)
        {
          v9 = sub_25EB062E0(v27 > 1, v28 + 1, 1, v9);
        }

        v9[2] = v28 + 1;
        v26(v9 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v28, v43, a1);
      }

      v11 = v18;
      ++v13;
      if (v17 == v12)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_25EAFCC70(0, &qword_27FD11E08, 0x277D3E828);

    v11 = sub_25EB6E848();
  }

  v12 = sub_25EB6E5F8();
  v36 = a1;
  v37 = v9;
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_30:
  v9 = MEMORY[0x277D84F90];
LABEL_31:

  v1 = v37;
  (*(*v37 + 280))(v9);
  os_unfair_lock_lock(v1 + 6);
  sub_25EB04204(v1 + 4, v9, v45);

  os_unfair_lock_unlock(v1 + 6);
  if (v45[0] != 1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    os_unfair_lock_unlock(v1 + 6);
    __break(1u);
    return;
  }

  v32 = v1[5];
  if (v32)
  {
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E70, &qword_25EB78CB8);
    v34 = sub_25EB6E3C8();
    [v33 resourceRequestsAreComplete_];
  }

  else
  {
  }
}

void sub_25EB04C78(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF8, &qword_25EB78988);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v64 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v54 - v14;
  v15 = *(v1 + OBJC_IVAR____TtCC7Polaris12GraphManagerP33_8AAE28825E74C265BC34075E2BD49E3336GraphManagerExecutionSessionDelegate_graphManager);
  v62 = swift_unownedRetainStrong();
  if (v62)
  {
    v16 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(a1 + 56);
    v20 = (v17 + 63) >> 6;
    v65 = (v10 + 48);
    v60 = (v10 + 32);

    v21 = 0;
    v59 = MEMORY[0x277D84F90];
    while (1)
    {
      v22 = v21;
      if (!v19)
      {
        break;
      }

LABEL_9:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v24 = (*(a1 + 48) + ((v21 << 10) | (16 * v23)));
      v25 = *v24;
      v26 = v24[1];

      Key<>.init(_:)(v25, v26, v8);
      if ((*v65)(v8, 1, v9) == 1)
      {
        sub_25EB0D660(v8, &qword_27FD11BF8, &qword_25EB78988);
      }

      else
      {
        v27 = *v60;
        (*v60)(v63, v8, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_25EB062E0(0, *(v59 + 2) + 1, 1, v59);
        }

        v29 = *(v59 + 2);
        v28 = *(v59 + 3);
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v56 = v29 + 1;
          v32 = sub_25EB062E0(v28 > 1, v29 + 1, 1, v59);
          v30 = v56;
          v59 = v32;
        }

        v31 = v59;
        *(v59 + 2) = v30;
        v27(&v31[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29], v63, v9);
      }
    }

    while (1)
    {
      v21 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v21 >= v20)
      {
        break;
      }

      v19 = *(v16 + 8 * v21);
      ++v22;
      if (v19)
      {
        goto LABEL_9;
      }
    }

    (*(*v62 + 288))(v59);
    v63 = 0;

    v66[2] = MEMORY[0x277D84FA0];
    v33 = 1 << *(a1 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(a1 + 56);
    v36 = (v33 + 63) >> 6;
    v55 = (v10 + 8);
    v56 = v10 + 16;

    v37 = 0;
    v54 = xmmword_25EB78950;
    v8 = v9;
    v38 = v61;
    v57 = v10;
    v58 = a1;
    if (v35)
    {
      goto LABEL_21;
    }

LABEL_22:
    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= v36)
      {

        v51 = *(v62 + 40);
        if (v51)
        {
          v52 = v51;
          v53 = sub_25EB6E428();

          [v52 resourcesNoLongerWantedProcessed_];
        }

        else
        {
        }

        return;
      }

      v35 = *(v16 + 8 * v39);
      ++v37;
      if (v35)
      {
        while (1)
        {
          v40 = __clz(__rbit64(v35));
          v35 &= v35 - 1;
          v41 = *(a1 + 48) + ((v39 << 10) | (16 * v40));
          v42 = *v41;
          v43 = *(v41 + 8);
          swift_bridgeObjectRetain_n();
          Key<>.init(_:)(v42, v43, v38);
          if ((*v65)(v38, 1, v8) == 1)
          {

            sub_25EB0D660(v38, &qword_27FD11BF8, &qword_25EB78988);
            v37 = v39;
            if (!v35)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v59 = v42;
            v44 = v64;
            (*(v10 + 32))(v64, v38, v8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123C0, &qword_25EB78998);
            v45 = *(v10 + 72);
            v46 = (*(v10 + 80) + 32) & ~*(v10 + 80);
            v47 = swift_allocObject();
            *(v47 + 16) = v54;
            (*(v10 + 16))(v47 + v46, v44, v8);
            v48 = v8;
            v8 = v62;
            os_unfair_lock_lock((v62 + 24));
            v49 = v63;
            sub_25EB04204(v8 + 4, v47, v66);
            v63 = v49;
            if (v49)
            {
              goto LABEL_38;
            }

            swift_setDeallocating();
            v50 = *v55;
            (*v55)(v47 + v46, v48);
            swift_deallocClassInstance();
            os_unfair_lock_unlock(v8 + 6);
            if (v66[0])
            {
              v50(v64, v48);
            }

            else
            {
              sub_25EB26244(v66, v59, v43);

              v50(v64, v48);
            }

            v37 = v39;
            v38 = v61;
            v8 = v48;
            v10 = v57;
            a1 = v58;
            if (!v35)
            {
              goto LABEL_22;
            }
          }

LABEL_21:
          v39 = v37;
        }
      }
    }

LABEL_36:
    __break(1u);
  }

  __break(1u);
LABEL_38:
  os_unfair_lock_unlock(v8 + 6);
  __break(1u);

  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_25EB05368(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC7Polaris12GraphManagerP33_8AAE28825E74C265BC34075E2BD49E3336GraphManagerExecutionSessionDelegate_graphManager);
  swift_unownedRetainStrong();
  if (v3)
  {
    sub_25EB0EDAC(v3 + 72, &v8, &qword_27FD11C40, &qword_25EB789B0);

    if (*(&v9 + 1))
    {
      sub_25EB0ED2C(&v8, v11);
      v4 = sub_25EB05464(a1);
      v5 = v12;
      v6 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v6 + 16))(v4, v5, v6);

      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  return sub_25EB0D660(&v8, &qword_27FD11C40, &qword_25EB789B0);
}

uint64_t sub_25EB05464(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF8, &qword_25EB78988);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v45 = v12;
  v49 = v10;
  v39 = v1;
  v53 = MEMORY[0x277D84F90];
  sub_25EB2500C(0, v13, 0);
  v14 = v53;
  v15 = a1 + 56;
  v16 = -1 << *(a1 + 32);
  result = sub_25EB6E568();
  v18 = result;
  v19 = 0;
  v47 = v8;
  v48 = (v8 + 48);
  v43 = a1 + 56;
  v44 = (v8 + 32);
  v40 = a1 + 64;
  v41 = v13;
  v42 = v6;
  v46 = a1;
  while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
  {
    v23 = v18 >> 6;
    if ((*(v15 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_23;
    }

    v24 = *(a1 + 36);
    v50 = v19;
    v51 = v24;
    v25 = (*(a1 + 48) + 16 * v18);
    v27 = *v25;
    v26 = v25[1];
    swift_bridgeObjectRetain_n();
    Key<>.init(_:)(v27, v26, v6);
    v28 = v49;
    result = (*v48)(v6, 1, v49);
    if (result == 1)
    {
      goto LABEL_27;
    }

    v29 = v45;
    v52 = *v44;
    v52(v45, v6, v28);

    v53 = v14;
    v31 = *(v14 + 16);
    v30 = *(v14 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_25EB2500C(v30 > 1, v31 + 1, 1);
      v14 = v53;
    }

    *(v14 + 16) = v31 + 1;
    result = (v52)(v14 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v31, v29, v28);
    a1 = v46;
    v20 = 1 << *(v46 + 32);
    if (v18 >= v20)
    {
      goto LABEL_24;
    }

    v15 = v43;
    v32 = *(v43 + 8 * v23);
    if ((v32 & (1 << v18)) == 0)
    {
      goto LABEL_25;
    }

    if (v51 != *(v46 + 36))
    {
      goto LABEL_26;
    }

    v33 = v32 & (-2 << (v18 & 0x3F));
    if (v33)
    {
      v20 = __clz(__rbit64(v33)) | v18 & 0x7FFFFFFFFFFFFFC0;
      v21 = v41;
      v22 = v50;
    }

    else
    {
      v34 = v23 << 6;
      v35 = v23 + 1;
      v21 = v41;
      v36 = (v40 + 8 * v23);
      while (v35 < (v20 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_25EB0DE08(v18, v51, 0);
          v20 = __clz(__rbit64(v37)) + v34;
          goto LABEL_20;
        }
      }

      result = sub_25EB0DE08(v18, v51, 0);
LABEL_20:
      v22 = v50;
    }

    v19 = v22 + 1;
    v18 = v20;
    v6 = v42;
    if (v19 == v21)
    {
      return v14;
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
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25EB0582C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC7Polaris12GraphManagerP33_8AAE28825E74C265BC34075E2BD49E3336GraphManagerExecutionSessionDelegate_graphManager);
  swift_unownedRetainStrong();
  if (v3)
  {
    sub_25EB0EDAC(v3 + 72, &v8, &qword_27FD11C40, &qword_25EB789B0);

    if (*(&v9 + 1))
    {
      sub_25EB0ED2C(&v8, v11);
      v4 = sub_25EB05464(a1);
      v5 = v12;
      v6 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v6 + 24))(v4, v5, v6);

      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  return sub_25EB0D660(&v8, &qword_27FD11C40, &qword_25EB789B0);
}

uint64_t sub_25EB05940(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_25EB6E438();
  v7 = a1;
  a4(v6);
}

id sub_25EB059E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GraphManager.GraphManagerExecutionSessionDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25EB05A70(uint64_t a1, SEL *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  sub_25EB0EDAC(v2 + 72, v31, &qword_27FD11C40, &qword_25EB789B0);
  v10 = v32;
  sub_25EB0D660(v31, &qword_27FD11C40, &qword_25EB789B0);
  if (v10)
  {
    v11 = *(v2 + 40);
    if (v11)
    {
      v26 = a2;
      v27 = v3;
      v12 = *(a1 + 16);
      v25 = v11;
      if (v12)
      {
        v13 = *(v33 + 16);
        v14 = a1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
        v29 = *(v33 + 72);
        v30 = v13;
        v33 += 16;
        v28 = (v33 - 8);
        v15 = MEMORY[0x277D84F90];
        do
        {
          v30(v9, v14, v6);
          v16 = sub_25EB6E168();
          v18 = v17;
          (*v28)(v9, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_25EB068B0(0, *(v15 + 2) + 1, 1, v15);
          }

          v20 = *(v15 + 2);
          v19 = *(v15 + 3);
          if (v20 >= v19 >> 1)
          {
            v15 = sub_25EB068B0((v19 > 1), v20 + 1, 1, v15);
          }

          *(v15 + 2) = v20 + 1;
          v21 = &v15[16 * v20];
          *(v21 + 4) = v16;
          *(v21 + 5) = v18;
          v14 += v29;
          --v12;
        }

        while (v12);
      }

      else
      {
        v15 = MEMORY[0x277D84F90];
      }

      sub_25EB0CDCC(v15);

      v23 = sub_25EB6E428();

      [v25 *v26];
    }
  }

  else
  {
    sub_25EB0CA68();
    swift_allocError();
    *v22 = xmmword_25EB78970;
    *(v22 + 16) = 4;
    swift_willThrow();
  }
}

void GraphManager.resourceAvailabilityHasChanged(forResources:to:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980) - 8);
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      sub_25EB6E168();
      v10 = objc_allocWithZone(PSExecutionSessionResourceAvailability);
      v11 = sub_25EB6E258();

      [v10 initWithResourceKey:v11 availability:a2];

      MEMORY[0x25F8C6A80]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25EB6E3F8();
      }

      sub_25EB6E418();
      v8 += v9;
      --v4;
    }

    while (v4);
    v2 = v14;
    v3 = v16;
  }

  v13 = v2[5];
  if (v13)
  {

    if (v3 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11CC0, &qword_25EB789D0);
      sub_25EB6E848();
    }

    else
    {
      sub_25EB6E998();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11CC0, &qword_25EB789D0);
    v15 = sub_25EB6E3C8();

    [v13 resourceAvailabilityHasChangedTo_];
  }

  else
  {
  }
}

void sub_25EB05FB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v17 = a1;
    v2 = sub_25EB6E5F8();
    a1 = v17;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = a1;
  sub_25EAFCC70(0, &qword_27FD11B58, 0x277CCABB0);
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = v3;
    v6 = *(v1 + 40);
    v18 = v2;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25F8C6D90](v4, v5);
      }

      else
      {
        v7 = *(v5 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277D3E6B8]) init];
      [v9 setType_];
      v10 = v8;
      sub_25EB6E2A8();
      v11 = sub_25EB6E258();

      [v9 setKey_];

      v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      [v9 setDefaultStride_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11CD0, &qword_25EB789D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25EB78950;
      *(inited + 32) = sub_25EB6E4F8();
      *(inited + 40) = [objc_allocWithZone(MEMORY[0x277D3E6C0]) initWithOffset_];
      sub_25EB0E264(inited, &qword_27FD11F20, &qword_25EB78D48, sub_25EAFD0D0);
      swift_setDeallocating();
      sub_25EB0D660(inited + 32, &qword_27FD11CD8, &qword_25EB789E0);
      sub_25EAFCC70(0, &qword_27FD11CE0, 0x277D3E6C0);
      sub_25EB0D6C0(&qword_27FD11CE8, &qword_27FD11B58, 0x277CCABB0);
      v14 = sub_25EB6E1F8();

      [v9 setSupportedStrides_];

      [v9 setOptions_];
      if (v6)
      {
        v15 = [v6 context];
        v16 = v9;
        [v15 addBuiltInResourceStream_];
      }

      ++v4;

      v5 = v3;
    }

    while (v18 != v4);
  }
}

size_t sub_25EB062E0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123C0, &qword_25EB78998);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_25EB064D0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F90, &qword_25EB78DF0);
  v10 = *(sub_25EB6E138() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25EB6E138() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25EB066A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11F40, &unk_25EB78DB0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25EB067AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD124F0, &qword_25EB79650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25EB068B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F28, &qword_25EB78D50);
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

void *sub_25EB069BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EF0, &qword_25EB78D28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EF8, &unk_25EB78D30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25EB06AF0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11BE0, &unk_25EB78940);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_25EB06B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_25EB6E358();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25EB070E0();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25EB6E6E8();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_25EB070E0()
{
  v0 = sub_25EB6E368();
  v4 = sub_25EB07160(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_25EB07160(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25EB6E2C8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_25EB6E528();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_25EB06AF0(v9, 0);
  v12 = sub_25EB072B8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_25EB6E2C8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_25EB6E6E8();
LABEL_4:

  return sub_25EB6E2C8();
}

unint64_t sub_25EB072B8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_25EB074D8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25EB6E338();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25EB6E6E8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_25EB074D8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_25EB6E318();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_25EB074D8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25EB6E348();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8C69F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_25EB07554(uint64_t a1, uint64_t a2)
{
  v65[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v59 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v51 - v10;
  MEMORY[0x28223BE20](v9);
  i = v51 - v12;
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_30;
  }

  v65[0] = a1;
  v13 = *(a1 + 16);

  v53 = v13;
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v55 = a1;
  v56 = a1 + ((v17 + 32) & ~v17);
  v62 = *(v15 + 56);
  v63 = v16;
  v60 = (a2 + 56);
  v61 = a2;
  v64 = v15;
  v18 = (v15 - 8);
  v52 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v57 = v14 + 1;
    v63(i, v56 + v62 * v14, v4);
    v19 = *(a2 + 40);
    v54 = sub_25EAFD940(&qword_27FD11BD8);
    v20 = sub_25EB6E228();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v60[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v57;
    if (v57 == v53)
    {
      goto LABEL_29;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v63(v11, *(v61 + 48) + v22 * v62, v4);
    sub_25EAFD940(&qword_27FD11F30);
    v26 = sub_25EB6E248();
    v27 = *v18;
    (*v18)(v11, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v60[v22 >> 6]) == 0)
    {
      a2 = v61;
      goto LABEL_10;
    }
  }

  v28 = v57;
  v65[1] = v57;
  v29 = (v27)(i, v4);
  v30 = v61;
  v31 = *(v61 + 32);
  v51[0] = ((1 << v31) + 63) >> 6;
  v32 = 8 * v51[0];
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_33;
  }

  while (2)
  {
    v51[1] = v51;
    MEMORY[0x28223BE20](v29);
    v22 = v51 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v22, v60, v33);
    v34 = *(v30 + 16);
    *(v22 + 8 * v23) &= ~v24;
    v52 = v22;
    v53 = (v34 - 1);
    v35 = *(v55 + 16);
    for (i = v35; ; v35 = i)
    {
      if (v28 == v35)
      {
        a2 = sub_25EB08984(v52, v51[0], v53, v30);
        goto LABEL_29;
      }

      if (v28 >= *(v55 + 16))
      {
        break;
      }

      v57 = v28;
      v63(v59, v56 + v28 * v62, v4);
      v37 = *(v30 + 40);
      v38 = sub_25EB6E228();
      v39 = -1 << *(v30 + 32);
      v22 = v38 & ~v39;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v60[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v63(v11, *(v61 + 48) + v22 * v62, v4);
      v40 = sub_25EB6E248();
      v27(v11, v4);
      if ((v40 & 1) == 0)
      {
        v41 = ~v39;
        while (1)
        {
          v22 = (v22 + 1) & v41;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v60[v22 >> 6]) == 0)
          {
            break;
          }

          v63(v11, *(v61 + 48) + v22 * v62, v4);
          v42 = sub_25EB6E248();
          v27(v11, v4);
          if (v42)
          {
            goto LABEL_24;
          }
        }

LABEL_15:
        v27(v59, v4);
        v30 = v61;
        v36 = v57;
        goto LABEL_16;
      }

LABEL_24:
      v27(v59, v4);
      v43 = v52[v24];
      v52[v24] = v43 & ~v23;
      v30 = v61;
      v36 = v57;
      if ((v43 & v23) != 0)
      {
        v44 = v53 - 1;
        if (__OFSUB__(v53, 1))
        {
          goto LABEL_32;
        }

        --v53;
        if (!v44)
        {

          a2 = MEMORY[0x277D84FA0];
          goto LABEL_29;
        }
      }

LABEL_16:
      v28 = v36 + 1;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v47 = v32;

    v48 = v47;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v49 = v61;

      v30 = v49;
      v28 = v57;
      continue;
    }

    break;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v60, v48);
  a2 = sub_25EB08318(v50, v51[0], v61, v22, v65);

  MEMORY[0x25F8C9C00](v50, -1, -1);
LABEL_29:

LABEL_30:
  v45 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_25EB07BF8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v85 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v4 = MEMORY[0x277D84FA0];
    goto LABEL_63;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_25EB6E5B8();
    type metadata accessor for PSSGGraphID(0);
    sub_25EB0D618(&unk_27FD11DF0, type metadata accessor for PSSGGraphID);
    sub_25EB6E478();
    v5 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
    v10 = v84;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v75 = v5;
  v76 = v7;
  v77 = v8;
  v78 = v9;
  v66 = v8;
  v14 = (v8 + 64) >> 6;
  v72 = (v4 + 56);
  v79 = v10;
  v69 = v5;
  v70 = v14;
  v68 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_25EB6E638();
      if (!v22)
      {
        goto LABEL_62;
      }

      v73 = v22;
      type metadata accessor for PSSGGraphID(0);
      swift_dynamicCast();
      v20 = v74;
      v18 = v9;
      v2 = v10;
      if (!v74)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        v17 = v14 <= v9 + 1 ? v9 + 1 : v14;
        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_66;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v75 = v5;
      v76 = v7;
      v77 = v66;
      v78 = v18;
      v79 = v2;
      if (!v20)
      {
        goto LABEL_62;
      }
    }

    v23 = *(v4 + 40);
    v24 = v20;
    v25 = sub_25EB6E508();
    v26 = -1 << *(v4 + 32);
    v7 = v25 & ~v26;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v72[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v68;
    v5 = v69;
    v14 = v70;
  }

  v3 = ~v26;
  v27 = type metadata accessor for PSSGGraphID(0);
  v28 = *(*(v4 + 48) + 8 * v7);
  v71 = v27;
  while (1)
  {
    v29 = sub_25EB6E518();

    if (v29)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v72[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v28 = *(*(v4 + 48) + 8 * v7);
  }

  v31 = *(v4 + 32);
  v63 = ((1 << v31) + 63) >> 6;
  v6 = 8 * v63;
  v3 = v70;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v64 = &v62;
    MEMORY[0x28223BE20](v30);
    v33 = &v62 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v72, v32);
    v34 = *&v33[8 * v5] & ~v16;
    v35 = *(v4 + 16);
    v65 = v33;
    *&v33[8 * v5] = v34;
    v5 = v35 - 1;
    v37 = v68;
    v36 = v69;
LABEL_33:
    v67 = v5;
    while (v36 < 0)
    {
      v38 = sub_25EB6E638();
      if (!v38)
      {
        goto LABEL_61;
      }

      v73 = v38;
      swift_dynamicCast();
      v39 = v74;
      if (!v74)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = *(v4 + 40);
      v45 = sub_25EB6E508();
      v46 = v4;
      v47 = -1 << *(v4 + 32);
      v7 = v45 & ~v47;
      v48 = v7 >> 6;
      v49 = 1 << v7;
      if (((1 << v7) & v72[v7 >> 6]) != 0)
      {
        v50 = ~v47;
        while (1)
        {
          v51 = *(*(v46 + 48) + 8 * v7);
          v52 = sub_25EB6E518();

          if (v52)
          {
            break;
          }

          v7 = (v7 + 1) & v50;
          v48 = v7 >> 6;
          v49 = 1 << v7;
          if (((1 << v7) & v72[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v70;

        v53 = v65[v48];
        v65[v48] = v53 & ~v49;
        v54 = (v53 & v49) == 0;
        v4 = v46;
        v37 = v68;
        v36 = v69;
        v5 = v67;
        if (!v54)
        {
          v5 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            v4 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v46;
        v37 = v68;
        v36 = v69;
        v3 = v70;
        v5 = v67;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v36 + 48) + ((v16 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v16;
LABEL_49:
      v75 = v36;
      v76 = v37;
      v77 = v66;
      v78 = v41;
      v18 = v41;
      v79 = v2;
      if (!v39)
      {
LABEL_61:
        v4 = sub_25EB08FDC(v65, v63, v5, v4, &unk_27FD123B0, qword_25EB78CA0);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v40 = v18 + 1;
    }

    else
    {
      v40 = v3;
    }

    v41 = v40 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v57 = v6;

    v58 = v57;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v59 = swift_slowAlloc();
  memcpy(v59, v72, v58);
  sub_25EB086F0(v59, v63, v4, v7, &v75);
  v61 = v60;

  MEMORY[0x25F8C9C00](v59, -1, -1);
  v4 = v61;
LABEL_62:
  sub_25EB0EC08();
LABEL_63:
  v55 = *MEMORY[0x277D85DE8];
  return v4;
}

unint64_t sub_25EB08294(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_25EB6E508();
  v5 = -1 << *(a2 + 32);
  result = sub_25EB6E598();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_25EB08318(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v44 = &v37 - v16;
  result = MEMORY[0x28223BE20](v15);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    return sub_25EB08984(v38, v37, v39, a3);
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_25EAFD940(&qword_27FD11BD8);
    v27 = sub_25EB6E228();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_6:
      result = (v23)(v50, v9);
      goto LABEL_7;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      v46(v14, *(v32 + 48) + v29 * v47, v9);
      sub_25EAFD940(&qword_27FD11F30);
      v34 = sub_25EB6E248();
      v23 = *v49;
      (*v49)(v14, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_6;
      }
    }

    result = (v23)(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_7:
      v10 = v43;
      goto LABEL_8;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_21;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return MEMORY[0x277D84FA0];
    }

LABEL_8:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_25EB086F0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_25EB6E638())
          {
            goto LABEL_29;
          }

          type metadata accessor for PSSGGraphID(0);
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_25EB08FDC(a1, a2, v31, a3, &unk_27FD123B0, qword_25EB78CA0);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_25EB6E508();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        type metadata accessor for PSSGGraphID(0);
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_25EB6E518();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_25EB6E518();

          if (v28)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:
      v5 = a5;

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_25EB08984(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - v10;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11FA0, &unk_25EB78E00);
  result = sub_25EB6E698();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_25EAFD940(&qword_27FD11BD8);
    result = sub_25EB6E228();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_25EB08CA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_25EB6E138();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F38, &qword_25EB78DA8);
  result = sub_25EB6E698();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_25EB0D618(&unk_27FD11F50, MEMORY[0x277D3E738]);
    result = sub_25EB6E228();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_25EB08FDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_25EB6E698();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_25EB6E508();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_25EB091C8()
{
  v1 = v0;
  v2 = sub_25EB6E138();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F38, &qword_25EB78DA8);
  v7 = *v0;
  v8 = sub_25EB6E668();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_25EB09400()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11FA0, &unk_25EB78E00);
  v7 = *v0;
  v8 = sub_25EB6E668();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_25EB09640()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD12400, &unk_25EB79570);
  v2 = *v0;
  v3 = sub_25EB6E668();
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

void *sub_25EB097B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124A0, &qword_25EB78D40);
  v2 = *v0;
  v3 = sub_25EB6E668();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
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

id sub_25EB09930(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25EB6E668();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_25EB09A70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F08, &qword_25EB795F0);
  v2 = *v0;
  v3 = sub_25EB6E668();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

uint64_t sub_25EB09BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_25EB6E138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25EB0D618(&unk_27FD11F50, MEMORY[0x277D3E738]);
  v35 = a1;
  v13 = sub_25EB6E228();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_25EB0D618(&unk_27FD124E0, MEMORY[0x277D3E738]);
      v22 = sub_25EB6E248();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25EB091C8();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_25EB0A36C(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_25EB09E84(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_25EB6E648();

    if (v7)
    {
      v8 = sub_25EB0A204(v4, v6, sub_25EB26CA4, type metadata accessor for PSSGGraphID);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for PSSGGraphID(0);
  v11 = *(v3 + 40);
  v12 = sub_25EB6E508();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_25EB6E518();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25EB09930(&unk_27FD123B0, qword_25EB78CA0);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_25EB0A674(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_25EB0A044(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_25EB6E648();

    if (v7)
    {
      v8 = sub_25EB0A204(v4, v6, sub_25EB26C7C, type metadata accessor for PSSGResourceID);

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for PSSGResourceID(0);
  v11 = *(v3 + 40);
  v12 = sub_25EB6E508();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_25EB6E518();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25EB09930(&qword_27FD11E00, &unk_25EB79550);
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_25EB0A674(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_25EB0A204(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v8 = *v4;

  v9 = sub_25EB6E5F8();
  v10 = swift_unknownObjectRetain();
  v11 = a3(v10, v9);
  v21 = v11;
  v12 = *(v11 + 40);

  v13 = sub_25EB6E508();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    a4(0);
    while (1)
    {
      v17 = *(*(v11 + 48) + 8 * v15);
      v18 = sub_25EB6E518();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v19 = *(*(v11 + 48) + 8 * v15);
  sub_25EB0A674(v15);
  result = sub_25EB6E518();
  if (result)
  {
    *v7 = v21;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25EB0A36C(int64_t a1)
{
  v3 = sub_25EB6E138();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_25EB6E578();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_25EB0D618(&unk_27FD11F50, MEMORY[0x277D3E738]);
        v27 = sub_25EB6E228();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_25EB0A674(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_25EB6E578();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_25EB6E508();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_25EB0A814(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25EB0C4E8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_25EB6E958();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
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
      v7 = sub_25EB6E408();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25EB0A948(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25EB0A948(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25EB0B088(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_25EB0AE94((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25EB066A8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_25EB066A8((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_25EB0AE94((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_25EB0AE94(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_25EB0B09C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_25EB0B2F0((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_25EB0B260(v12, v6, a2, a1);

    MEMORY[0x25F8C9C00](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_25EB0B260(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_25EB0B2F0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25EB0B2F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v69 = a1;
  v6 = sub_25EB6E138();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v78 = (v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v64 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v79 = (v64 - v15);
  result = MEMORY[0x28223BE20](v14);
  v68 = v64 - v17;
  v18 = *(a3 + 16);
  v19 = *(a4 + 16);
  v80 = v7 + 16;
  v76 = a4;
  v77 = a3;
  v72 = v7;
  if (v19 >= v18)
  {
    v44 = 0;
    v45 = *(a3 + 56);
    v67 = a3 + 56;
    v46 = 1 << *(a3 + 32);
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & v45;
    v49 = (v46 + 63) >> 6;
    v75 = a4 + 56;
    v79 = (v7 + 8);
    j = v49;
    v71 = 0;
    if (v48)
    {
      goto LABEL_30;
    }

LABEL_31:
    v51 = v44;
    while (1)
    {
      v44 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v44 >= v49)
      {
LABEL_44:

        return sub_25EB08CA0(v69, v65, v71, a3);
      }

      v52 = *(v67 + 8 * v44);
      ++v51;
      if (v52)
      {
        v50 = __clz(__rbit64(v52));
        for (i = ((v52 - 1) & v52); ; i = ((v48 - 1) & v48))
        {
          v53 = v50 | (v44 << 6);
          v54 = *(a3 + 48);
          v55 = *(v7 + 72);
          v73 = v53;
          v56 = *(v7 + 16);
          v56(v78, v54 + v55 * v53, v6);
          v57 = *(a4 + 40);
          sub_25EB0D618(&unk_27FD11F50, MEMORY[0x277D3E738]);
          v58 = sub_25EB6E228();
          v59 = -1 << *(a4 + 32);
          v60 = v58 & ~v59;
          if ((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
          {
            v68 = (v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v61 = ~v59;
            while (1)
            {
              v56(v13, *(v76 + 48) + v60 * v55, v6);
              sub_25EB0D618(&unk_27FD124E0, MEMORY[0x277D3E738]);
              v62 = sub_25EB6E248();
              v63 = *v79;
              (*v79)(v13, v6);
              if (v62)
              {
                break;
              }

              v60 = (v60 + 1) & v61;
              if (((*(v75 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
              {
                a4 = v76;
                goto LABEL_42;
              }
            }

            result = (v63)(v78, v6);
            v7 = v72;
            *(v69 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
            v49 = j;
            v28 = __OFADD__(v71++, 1);
            a4 = v76;
            a3 = v77;
            v48 = i;
            if (v28)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v63 = *v79;
LABEL_42:
            result = (v63)(v78, v6);
            a3 = v77;
            v7 = v72;
            v49 = j;
            v48 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v50 = __clz(__rbit64(v48));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v71 = 0;
    v20 = a4;
    v21 = 0;
    v23 = v20 + 56;
    v22 = *(v20 + 56);
    v64[0] = v23;
    v24 = 1 << *(v23 - 24);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    v66 = v7 + 32;
    v67 = v27;
    v73 = a3 + 56;
    v78 = (v7 + 8);
    if (v26)
    {
      goto LABEL_9;
    }

LABEL_10:
    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v27)
      {
        goto LABEL_44;
      }

      v31 = *(v64[0] + 8 * v21);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        for (j = (v31 - 1) & v31; ; j = (v26 - 1) & v26)
        {
          v32 = *(v7 + 72);
          v33 = *(v76 + 48) + v32 * (v29 | (v21 << 6));
          v34 = v68;
          i = *(v7 + 16);
          v75 = v32;
          i(v68, v33, v6);
          (*(v7 + 32))(v79, v34, v6);
          v35 = *(a3 + 40);
          sub_25EB0D618(&unk_27FD11F50, MEMORY[0x277D3E738]);
          v36 = sub_25EB6E228();
          v37 = -1 << *(a3 + 32);
          v38 = v36 & ~v37;
          v39 = v38 >> 6;
          v40 = 1 << v38;
          if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) != 0)
          {
            v64[1] = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v41 = ~v37;
            while (1)
            {
              i(v13, *(v77 + 48) + v38 * v75, v6);
              sub_25EB0D618(&unk_27FD124E0, MEMORY[0x277D3E738]);
              v42 = sub_25EB6E248();
              v43 = *v78;
              (*v78)(v13, v6);
              if (v42)
              {
                break;
              }

              v38 = (v38 + 1) & v41;
              v39 = v38 >> 6;
              v40 = 1 << v38;
              if (((1 << v38) & *(v73 + 8 * (v38 >> 6))) == 0)
              {
                a3 = v77;
                goto LABEL_21;
              }
            }

            result = (v43)(v79, v6);
            v26 = j;
            v69[v39] |= v40;
            v7 = v72;
            v28 = __OFADD__(v71++, 1);
            a3 = v77;
            v27 = v67;
            if (v28)
            {
              goto LABEL_48;
            }

            if (!v26)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v43 = *v78;
LABEL_21:
            result = (v43)(v79, v6);
            v7 = v72;
            v27 = v67;
            v26 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v29 = __clz(__rbit64(v26));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_25EB0B9D8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_25EB062E0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25EB0BB10(uint64_t a1)
{
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF8, &qword_25EB78988);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_25EB062E0(isUniquelyReferenced_nonNull_native, v23, 1, v18);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_25EB0C238(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_25EB0EC08();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_25EB0EDAC(v16, v77, &qword_27FD11BF8, &qword_25EB78988);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_25EB0D660(v39, &qword_27FD11BF8, &qword_25EB78988);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_25EB062E0(v41 > 1, v76 + 1, 1, v18);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_25EB0EDAC(v16, v78, &qword_27FD11BF8, &qword_25EB78988);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_25EB0D660(v45, &qword_27FD11BF8, &qword_25EB78988);
        v76 = v4;
LABEL_33:
        *(v18 + 2) = v4;
        v39 = v77;
        sub_25EB0EDAC(v16, v77, &qword_27FD11BF8, &qword_25EB78988);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          v76 = v72;
          goto LABEL_33;
        }

        sub_25EB0D660(v16, &qword_27FD11BF8, &qword_25EB78988);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 48) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_25EB0EDAC(v16, v78, &qword_27FD11BF8, &qword_25EB78988);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_25EB0D660(v16, &qword_27FD11BF8, &qword_25EB78988);
    sub_25EB0EC08();
    result = sub_25EB0D660(v39, &qword_27FD11BF8, &qword_25EB78988);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB0C238(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s7Polaris12GraphManagerC5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        v17 = *a1;
        if (v3 == v6 && v2 == v5)
        {
          sub_25EB0EE14(v17, v2, 2u);
          sub_25EB0EE14(v3, v2, 2u);
          sub_25EB0EE2C(v3, v2, 2u);
          v8 = v3;
          v9 = v2;
          v10 = 2;
          goto LABEL_41;
        }

        v13 = sub_25EB6E988();
        sub_25EB0EE14(v6, v5, 2u);
        sub_25EB0EE14(v3, v2, 2u);
        sub_25EB0EE2C(v3, v2, 2u);
        v14 = v6;
        v15 = v5;
        v16 = 2;
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v4 == 3)
    {
      if (v7 == 3)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_25EB0EE14(*a1, v2, 3u);
          sub_25EB0EE14(v3, v2, 3u);
          sub_25EB0EE2C(v3, v2, 3u);
          v8 = v3;
          v9 = v2;
          v10 = 3;
LABEL_41:
          sub_25EB0EE2C(v8, v9, v10);
          return 1;
        }

        v22 = *a1;
        v13 = sub_25EB6E988();
        sub_25EB0EE14(v6, v5, 3u);
        sub_25EB0EE14(v3, v2, 3u);
        sub_25EB0EE2C(v3, v2, 3u);
        v14 = v6;
        v15 = v5;
        v16 = 3;
LABEL_38:
        sub_25EB0EE2C(v14, v15, v16);
        return v13 & 1;
      }

      goto LABEL_35;
    }

    if (v3 | v2)
    {
      if (v7 == 4 && v6 == 1 && !v5)
      {
        sub_25EB0EE2C(*a1, v2, 4u);
        v19 = 1;
        sub_25EB0EE2C(1, 0, 4u);
        return v19;
      }
    }

    else if (v7 == 4 && !(v5 | v6))
    {
      sub_25EB0EE2C(*a1, v2, 4u);
      v8 = 0;
      v9 = 0;
      v10 = 4;
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v11 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        sub_25EB0EE14(v11, v2, 0);
        sub_25EB0EE14(v3, v2, 0);
        sub_25EB0EE2C(v3, v2, 0);
        v8 = v3;
        v9 = v2;
        v10 = 0;
        goto LABEL_41;
      }

      v13 = sub_25EB6E988();
      sub_25EB0EE14(v6, v5, 0);
      sub_25EB0EE14(v3, v2, 0);
      sub_25EB0EE2C(v3, v2, 0);
      v14 = v6;
      v15 = v5;
      v16 = 0;
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v7 != 1)
  {
LABEL_35:
    sub_25EB0EE14(*a2, *(a2 + 8), v7);
    sub_25EB0EE14(v3, v2, v4);
    sub_25EB0EE2C(v3, v2, v4);
    sub_25EB0EE2C(v6, v5, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    v21 = *a1;
    v13 = sub_25EB6E988();
    sub_25EB0EE14(v6, v5, 1u);
    sub_25EB0EE14(v3, v2, 1u);
    sub_25EB0EE2C(v3, v2, 1u);
    v14 = v6;
    v15 = v5;
    v16 = 1;
    goto LABEL_38;
  }

  v19 = 1;
  sub_25EB0EE14(*a1, v2, 1u);
  sub_25EB0EE14(v3, v2, 1u);
  sub_25EB0EE2C(v3, v2, 1u);
  sub_25EB0EE2C(v3, v2, 1u);
  return v19;
}

uint64_t sub_25EB0C8D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_25EAFD940(&qword_27FD11BD8);
  result = MEMORY[0x25F8C6B20](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_25EB25F60(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_25EB0CA68()
{
  result = qword_27FD11C10;
  if (!qword_27FD11C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11C10);
  }

  return result;
}

void sub_25EB0CADC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_25EB6E5F8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F98, &qword_25EB78DF8);
      v3 = sub_25EB6E698();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_25EB6E5F8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x25F8C6D90](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_25EB6E508();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_25EAFCC70(0, &qword_27FD11C20, 0x277D3E698);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_25EB6E518();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_25EB6E508();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_25EAFCC70(0, &qword_27FD11C20, 0x277D3E698);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_25EB6E518();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_25EB0CDCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8C6B20](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25EB26244(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25EB0CEAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25EB0EC74();
  result = MEMORY[0x25F8C6B20](v2, &type metadata for PSSGResourceIDSwift, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_25EB26618(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_25EB0CFB4(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *, uint64_t (*)(void)))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2(0); ; i = v20(0))
  {
    v12 = i;
    v13 = sub_25EB0D618(a3, a4);
    result = MEMORY[0x25F8C6B20](v10, v12, v13);
    v22 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x25F8C6D90](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      a2 = v16;
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = a2;
    v19 = sub_25EB6E5F8();
    v20 = v18;
    v10 = v19;
  }

  a4 = result;
  a3 = sub_25EB6E5F8();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_25EB0D11C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25EB0EC20();
  result = MEMORY[0x25F8C6B20](v2, &type metadata for PSSGGraphIDSwift, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_25EB26AA4(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

unint64_t sub_25EB0D1DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11F80, &unk_25EB78DE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD123E0, &unk_25EB79560);
    v8 = sub_25EB6E898();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25EB0EDAC(v10, v6, &unk_27FD11F80, &unk_25EB78DE0);
      result = sub_25EAFD040(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_25EB6E138();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25EB0D408(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_25EB6E898();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_25EB0EDAC(v17, v13, a2, v28);
      result = sub_25EAFD040(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25EB0D618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25EB0D660(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25EB0D6C0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_25EAFCC70(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for GraphManager.HashableEndpointServer()
{
  result = qword_27FD11D08;
  if (!qword_27FD11D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25EB0D7A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_25EB0D7F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_25EB0D844@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_25EB0DB64()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11CF8, &qword_25EB78B30);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t get_enum_tag_for_layout_string_7Polaris12GraphManagerC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25EB0DBC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_25EB0DC0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25EB0DC50(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25EB0DC80()
{
  result = sub_25EB6E0E8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25EB0DD78()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11D18, &unk_25EB78C40);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_25EB0DE08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_25EB0DE14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC8, &unk_25EB78D00);
    v3 = sub_25EB6E898();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;

      result = sub_25EAFCB44(v5, v6, v7, v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 32 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v15 = (v3[7] + 24 * result);
      *v15 = v10;
      v15[1] = v9;
      v15[2] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25EB0DF60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC0, &qword_25EB78CF8);
    v3 = sub_25EB6E898();
    v21 = v3 + 64;
    v23 = v3;

    for (i = (a1 + 48); ; i += 9)
    {
      v22 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v10 = i[2];
      v9 = i[3];
      v11 = i[4];
      v12 = i[5];
      v13 = i[6];

      sub_25EB0E880(v10, v9);

      result = sub_25EAFCA88(v5, v6, v8, v7);
      if (v15)
      {
        break;
      }

      *(v21 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v16 = (v23[6] + 32 * result);
      *v16 = v5;
      v16[1] = v6;
      v16[2] = v8;
      v16[3] = v7;
      v17 = (v23[7] + 40 * result);
      *v17 = v10;
      v17[1] = v9;
      v17[2] = v11;
      v17[3] = v12;
      v17[4] = v13;
      v18 = v23[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v23[2] = v20;
      v1 = v22 - 1;
      if (v22 == 1)
      {

        return v23;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25EB0E0E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11EE0, &qword_25EB78D18);
    v3 = sub_25EB6E898();
    v4 = a1 + 32;

    while (1)
    {
      sub_25EB0EDAC(v4, &v13, &qword_27FD120E0, &qword_25EB78D20);
      v5 = v13;
      v6 = v14;
      result = sub_25EAFCBE4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25EB0EC10(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25EB0E264(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_25EB6E898();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25EB0E35C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121C0, &qword_25EB78CF0);
    v3 = sub_25EB6E898();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25EAFCBE4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25EB0E484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EA8, &unk_25EB78CE0);
    v3 = sub_25EB6E898();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_25EAFD1BC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25EB0E590(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25EB6E898();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_25EAFD168(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25EB0E680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E88, &qword_25EB78CC8);
    v3 = sub_25EB6E898();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = sub_25EAFD168(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25EB0E794(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E80, &qword_25EB78CC0);
    v3 = sub_25EB6E898();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_25EAFD168(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25EB0E880(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_25EB0E8EC(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a3;
    v10 = a2;
    v11 = sub_25EB6E5F8();
    a2 = v10;
    a3 = v9;
    if (v11)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v6 = sub_25EB6E698();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_25EB6E5F8();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v12 = v6 + 56;
  v46 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v43 = v4;
    while (1)
    {
      v14 = MEMORY[0x25F8C6D90](v13, v4);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = *(v6 + 40);
      v18 = sub_25EB6E508();
      v19 = -1 << *(v6 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v12 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        a4(0);
        while (1)
        {
          v25 = *(*(v6 + 48) + 8 * v20);
          v26 = sub_25EB6E518();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v12 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v8 = v46;
            v4 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v46;
        v4 = v43;
        if (v13 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v12 + 8 * v21) = v23 | v22;
        *(*(v6 + 48) + 8 * v20) = v16;
        v27 = *(v6 + 16);
        v15 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v15)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v28;
        if (v13 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v44 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v44)
    {
      v30 = *(v6 + 40);
      v31 = *(v4 + 32 + 8 * v29);
      v32 = sub_25EB6E508();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *(v12 + 8 * (v34 >> 6));
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        a4(0);
        while (1)
        {
          v39 = *(*(v6 + 48) + 8 * v34);
          v40 = sub_25EB6E518();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *(v12 + 8 * (v34 >> 6));
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v12 + 8 * v35) = v37 | v36;
        *(*(v6 + 48) + 8 * v34) = v31;
        v41 = *(v6 + 16);
        v15 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v15)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

_OWORD *sub_25EB0EC10(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25EB0EC20()
{
  result = qword_27FD11F00;
  if (!qword_27FD11F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11F00);
  }

  return result;
}

unint64_t sub_25EB0EC74()
{
  result = qword_27FD11F10;
  if (!qword_27FD11F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11F10);
  }

  return result;
}

uint64_t sub_25EB0ECC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25EB0ED2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25EB0ED5C@<X0>(_DWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  result = sub_25EB6E188();
  *a1 = v3;
  return result;
}

uint64_t sub_25EB0EDAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25EB0EE14(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}