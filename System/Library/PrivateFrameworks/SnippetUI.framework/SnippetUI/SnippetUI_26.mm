void sub_26A7284EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26A51F940;
  v8[3] = &block_descriptor_34;
  v7 = _Block_copy(v8);

  [v6 requestRemoteViewControllerWithRequestInfo:a1 reply:v7];
  _Block_release(v7);
}

void sub_26A7288C4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = [*(v1 + OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_interaction) intent];
  v5 = [v4 _intentInstanceDescription];

  v36 = sub_26A67C23C(v5, &selRef_name);
  v37 = v6;
  v31 = v5;
  v7 = sub_26A67C23C(v5, &selRef_responseName);
  v9 = v8;
  v10 = 0;
  v40 = MEMORY[0x277D84F90];
  v11 = *(v3 + 16);
  v12 = (v3 + 40);
  v34 = MEMORY[0x277D84F90];
  v35 = v2;
  while (1)
  {
    if (v11 == v10)
    {

      v40 = MEMORY[0x277D84F90];
      v15 = sub_26A73670C(v34);
      v16 = OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_handledParameters;
      swift_beginAccess();
      v17 = 0;
      v18 = v34 & 0xC000000000000001;
      v19 = v16;
      v32 = v16;
      v33 = v15;
      while (1)
      {
        while (1)
        {
LABEL_10:
          if (v17 == v15)
          {

            return;
          }

          if (v18)
          {
            v20 = MEMORY[0x26D6644E0](v17, v34);
          }

          else
          {
            if (v17 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v20 = *(v34 + 32 + 8 * v17);
          }

          v21 = v20;
          if (__OFADD__(v17++, 1))
          {
            goto LABEL_28;
          }

          v23 = *(v2 + v19);
          if ((v23 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (*(v23 + 16))
          {
            sub_26A4EC5B0(0, &qword_2803B10F0);

            v26 = sub_26A851FE8();
            v27 = ~(-1 << *(v23 + 32));
            while (1)
            {
              v28 = v26 & v27;
              if (((*(v23 + 56 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
              {
                break;
              }

              v29 = *(*(v23 + 48) + 8 * v28);
              v30 = sub_26A851FF8();

              v26 = v28 + 1;
              if (v30)
              {

                v2 = v35;
                v19 = v32;
                v15 = v33;
                v18 = v34 & 0xC000000000000001;
                goto LABEL_10;
              }
            }

            v2 = v35;
            v19 = v32;
            v15 = v33;
            v18 = v34 & 0xC000000000000001;
          }

LABEL_24:
          sub_26A8522C8();
          sub_26A852308();
          sub_26A852318();
          sub_26A8522D8();
        }

        v24 = v21;
        v25 = sub_26A852198();

        if ((v25 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    if (v10 >= *(v3 + 16))
    {
      break;
    }

    v13 = *v12;
    v38[0] = *(v12 - 1);
    v38[1] = v13;

    sub_26A729DD8(v38, v36, v37, v2, v7, v9, &v39);

    if (v39)
    {
      MEMORY[0x26D663CE0](v14);
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26A851B08();
      }

      sub_26A851B28();
      v34 = v40;
      v2 = v35;
    }

    v12 += 2;
    ++v10;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_26A728C54(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_26A851618();
  v32 = *(v14 - 8);
  v33 = v14;
  MEMORY[0x28223BE20](v14);
  v30 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_26A851648();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a7;
  v17[8] = a2;
  v18 = objc_opt_self();
  v19 = a2;
  v20 = a1;

  if ([v18 isMainThread])
  {
    sub_26A729004(a1, a3, a4, a5, a6, a7, a2);
  }

  else
  {
    sub_26A4EC5B0(0, &qword_28157D830);
    v22 = sub_26A851F28();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_26A72A77C;
    *(v23 + 24) = v17;
    aBlock[4] = sub_26A4F5E78;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26A4F8A68;
    aBlock[3] = &block_descriptor_4;
    v24 = _Block_copy(aBlock);

    v25 = v28;
    sub_26A851638();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26A72A7A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C60);
    sub_26A655800();
    v26 = v30;
    v27 = v33;
    sub_26A852118();
    MEMORY[0x26D6641A0](0, v25, v26, v24);
    _Block_release(v24);

    (*(v32 + 8))(v26, v27);
    return (*(v29 + 8))(v25, v31);
  }
}

void sub_26A729004(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v12 = Strong;
    v13 = a1;
    v14 = sub_26A851E78();
    LOBYTE(v33) = 2;
    sub_26A7C4314(v14, 1, "SnippetUI/IntentsUIComponentViewModel.swift", 43, 2, 86, "resolveNextSlot(index:)", 23, v33, a3, v34, aBlock, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    sub_26A4EC5B0(0, &qword_2803B60E8);

    sub_26A587AAC(v15);
    v17 = sub_26A729390(v16, 0, 0);
    [v13 setDelegate:v12 completion:0];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a3;
    v19[4] = a5;
    v19[5] = a6;
    v19[6] = v13;
    v39 = sub_26A72A800;
    v40 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_26A729D6C;
    v38 = &block_descriptor_21;
    v20 = _Block_copy(&aBlock);
    v21 = v13;

    [v21 setIdealConfiguration:v17 animated:0 completion:v20];
    _Block_release(v20);
  }

  else
  {
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (!v23)
    {
      return;
    }

    v17 = v23;
    if (a7)
    {
      v24 = a7;
      v25 = sub_26A851E98();
      LOBYTE(v33) = 2;
      sub_26A7C4804(v25, 0, "SnippetUI/IntentsUIComponentViewModel.swift", 43, 2, 115, "resolveNextSlot(index:)", 23, v33, a3, a7);
    }

    else
    {
      v26 = sub_26A851E98();
      LOBYTE(v33) = 2;
      sub_26A7C457C(v26, 1, "SnippetUI/IntentsUIComponentViewModel.swift", 43, 2, 117, "resolveNextSlot(index:)", 23, v33, a3, v34, aBlock, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    }

    swift_getKeyPath();
    swift_getKeyPath();

    v27 = sub_26A84EC08();
    v29 = v28;
    sub_26A72A698(sub_26A7A283C);
    v30 = *(*v29 + 16);
    sub_26A72A724(v30, sub_26A7A283C);
    v31 = *v29;
    *(v31 + 16) = v30 + 1;
    v32 = v31 + 16 * v30;
    *(v32 + 32) = a6;
    *(v32 + 40) = 1;
    v27(&aBlock, 0);

    if (__OFADD__(a3, 1))
    {
      __break(1u);
      return;
    }

    sub_26A7285C4(a3 + 1);
  }
}

id sub_26A729390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_26A4EC5B0(0, &qword_2803B10F0);
  sub_26A72A820(&qword_2803AE0E8, &qword_2803B10F0);
  v6 = sub_26A851CF8();

  v7 = [v5 initWithParameters:v6 interactiveBehavior:a2 hostedViewContext:a3];

  return v7;
}

uint64_t sub_26A72945C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_26A851618();
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26A851648();
  v27 = *(v15 - 8);
  v28 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a6;
  v19 = objc_opt_self();
  v20 = a6;

  v21 = a1;

  if ([v19 isMainThread])
  {
    sub_26A7297E0(a2, a1, a3, a4, a5, v20);
  }

  else
  {
    sub_26A4EC5B0(0, &qword_28157D830);
    v23 = sub_26A851F28();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_26A72A810;
    *(v24 + 24) = v18;
    aBlock[4] = sub_26A72A87C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26A4F8A68;
    aBlock[3] = &block_descriptor_31;
    v25 = _Block_copy(aBlock);

    sub_26A851638();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26A72A7A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C60);
    sub_26A655800();
    v26 = v30;
    sub_26A852118();
    MEMORY[0x26D6641A0](0, v17, v14, v25);
    _Block_release(v25);

    (*(v29 + 8))(v14, v26);
    return (*(v27 + 8))(v17, v28);
  }
}

void sub_26A7297E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2)
    {
      v12 = a2;
      v13 = a2;
      v14 = sub_26A851E98();
      LOBYTE(v35) = 2;
      sub_26A7C4B44(v14, 0, "SnippetUI/IntentsUIComponentViewModel.swift", 43, 2, 99, "resolveNextSlot(index:)", 23, v35, a3, a2);
      swift_getKeyPath();
      swift_getKeyPath();

      v15 = a3;
      v16 = sub_26A84EC08();
      v18 = v17;
      sub_26A72A698(sub_26A7A283C);
      v19 = *(*v18 + 16);
      sub_26A72A724(v19, sub_26A7A283C);
      v20 = *v18;
      *(v20 + 16) = v19 + 1;
      v21 = v20 + 16 * v19;
      *(v21 + 32) = a5;
      *(v21 + 40) = 1;
      v16(&v36, 0);
    }

    else
    {
      v22 = [a6 configuration];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 parameters];

        sub_26A4EC5B0(0, &qword_2803B10F0);
        sub_26A72A820(&qword_2803AE0E8, &qword_2803B10F0);
        v25 = sub_26A851D08();
      }

      else if (sub_26A73670C(MEMORY[0x277D84F90]))
      {
        sub_26A6221EC(MEMORY[0x277D84F90]);
        v25 = v26;
      }

      else
      {
        v25 = MEMORY[0x277D84FA0];
      }

      swift_bridgeObjectRetain_n();
      v27 = sub_26A851E78();
      LOBYTE(v35) = 2;
      sub_26A7C4E7C(v27, 1, "SnippetUI/IntentsUIComponentViewModel.swift", 43, 2, 103, "resolveNextSlot(index:)", 23, v35, a3, v25, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);

      swift_beginAccess();
      sub_26A729B74(v25);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      v28 = a6;
      v29 = sub_26A84EC08();
      v31 = v30;
      v15 = a3;
      sub_26A72A698(sub_26A7A283C);
      v32 = *(*v31 + 16);
      sub_26A72A724(v32, sub_26A7A283C);
      v33 = *v31;
      *(v33 + 16) = v32 + 1;
      v34 = v33 + 16 * v32;
      *(v34 + 32) = a6;
      *(v34 + 40) = 0;
      v29(&v36, 0);
    }

    if (__OFADD__(v15, 1))
    {
      __break(1u);
    }

    else
    {
      sub_26A7285C4(v15 + 1);
    }
  }
}

void sub_26A729B74(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_26A852158();
    sub_26A4EC5B0(0, &qword_2803B10F0);
    sub_26A72A820(&qword_2803AE0E8, &qword_2803B10F0);
    sub_26A851D38();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_26A55E6A0();
      return;
    }

    while (1)
    {
      sub_26A6B9660(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_26A852188())
      {
        sub_26A4EC5B0(0, &qword_2803B10F0);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_26A729D6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_26A729DD8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v9 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v30 = a7;
    sub_26A728000(46, 0xE100000000000000, v7, v8);
    if (v13)
    {
      v15 = 15;
    }

    else
    {
      v15 = sub_26A851868();
    }

    v16 = sub_26A851978();
    v17 = MEMORY[0x26D663A90](v16);
    v19 = v18;

    v20 = sub_26A7280E8(v15, v7, v8);
    MEMORY[0x26D663A90](v20);

    if (a3)
    {
      v21 = v17 == a2 && v19 == a3;
      if (v21 || (sub_26A852598() & 1) != 0)
      {

        sub_26A4EC5B0(0, &qword_2803B10F0);
        v22 = [*(a4 + OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_interaction) intent];
        swift_getObjectType();

        v14 = sub_26A72A0C0();
LABEL_30:
        a7 = v30;
        goto LABEL_31;
      }
    }

    v23 = [*(a4 + OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_interaction) intentResponse];
    if (v23)
    {
      v24 = v23;
      if (a6)
      {
        if (v17 == a5 && v19 == a6)
        {

LABEL_29:
          sub_26A4EC5B0(0, &qword_2803B10F0);
          swift_getObjectType();
          v14 = sub_26A72A0C0();

          goto LABEL_30;
        }

        v26 = sub_26A852598();

        if (v26)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    v27 = sub_26A851E98();
    sub_26A7BB2F0(v27, 0, "SnippetUI/IntentsUIComponentViewModel.swift", 43, 2, 152, "unhandledParameters(for:)", 25, 2, v7, v8, a2, a3);
    v14 = 0;
    goto LABEL_30;
  }

  v14 = 0;
LABEL_31:
  *a7 = v14;
}

id sub_26A72A0C0()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_26A851788();

  v2 = [swift_getObjCClassFromMetadata() parameterForClass:ObjCClassFromMetadata keyPath:v1];

  return v2;
}

uint64_t type metadata accessor for IntentsUIComponentViewModel()
{
  result = qword_2803B6020;
  if (!qword_2803B6020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A72A28C()
{
  sub_26A72A348();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26A72A348()
{
  if (!qword_2803B6030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6038);
    v0 = sub_26A84EC38();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B6030);
    }
  }
}

uint64_t sub_26A72A3AC@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_26A84EB88();
  *a1 = result;
  return result;
}

uint64_t sub_26A72A3EC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  Height = CGRectGetHeight(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B60B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  *(inited + 40) = [objc_opt_self() valueWithCGSize_];
  sub_26A4EC5B0(0, &qword_28157D7D0);
  sub_26A4EC5B0(0, &qword_2803B60A8);
  sub_26A72A820(&qword_2803B60B0, &qword_28157D7D0);
  return sub_26A8516A8();
}

uint64_t sub_26A72A698(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_26A72A724(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26A72A7A8()
{
  result = qword_2803B60D0;
  if (!qword_2803B60D0)
  {
    sub_26A851618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B60D0);
  }

  return result;
}

uint64_t sub_26A72A820(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_26A4EC5B0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t View.smartDialogAnimatable(animationEnabled:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a1;
  v29 = a4;
  v5 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for SmartDialogAnimatableModifier(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v26 - v21;
  sub_26A84ACB8();
  (*(v7 + 16))(v10, v13, v5);
  sub_26A851048();
  (*(v7 + 8))(v13, v5);
  v23 = v27;
  MEMORY[0x26D662ED0](v16, a2, v14, v27);
  sub_26A72D048();
  swift_getKeyPath();
  v32 = v28;
  OUTLINED_FUNCTION_1_83();
  v24 = sub_26A72C02C();
  v30 = v23;
  v31 = v24;
  swift_getWitnessTable();
  sub_26A8509A8();

  return (*(v19 + 8))(v22, v17);
}

uint64_t EnvironmentValues.smartDialogAnimationEnabled.getter()
{
  sub_26A72AC10();
  sub_26A84F998();
  return v1;
}

uint64_t sub_26A72ABB8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.smartDialogAnimationEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_26A72AC10()
{
  result = qword_2803B60F0;
  if (!qword_2803B60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B60F0);
  }

  return result;
}

uint64_t (*EnvironmentValues.smartDialogAnimationEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_26A72AC10();
  sub_26A84F998();
  *(a1 + 16) = *(a1 + 17);
  return sub_26A72AD08;
}

void sub_26A72AD98()
{
  sub_26A72AF10(319, &qword_2803B6108, type metadata accessor for CGRect, MEMORY[0x277CE10C0]);
  if (v0 <= 0x3F)
  {
    sub_26A84ACC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A72AE74()
{
  sub_26A72AF10(319, &qword_2803B6128, MEMORY[0x277CC95F0], MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26A72AF10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26A72AF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B61F8);
  MEMORY[0x28223BE20](v3);
  v5 = &v53 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6200);
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6208);
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v53 - v10;
  v11 = sub_26A84F988();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  if (*(v2 + 8) == 1)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_26A851EA8();
    v16 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v15, 0);
    (*(v12 + 8))(v14, v11);
    if (v61 != 1)
    {
LABEL_7:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6210);
      (*(*(v18 - 8) + 16))(v5, v58, v18);
      swift_storeEnumTagMultiPayload();
      v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6218);
      v20 = sub_26A4D7DCC();
      v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6228);
      v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6230);
      v23 = sub_26A84F658();
      v24 = sub_26A72C02C();
      v61 = v23;
      v62 = v24;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v61 = v22;
      v62 = OpaqueTypeConformance2;
      v26 = swift_getOpaqueTypeConformance2();
      v61 = v21;
      v62 = v26;
      v27 = swift_getOpaqueTypeConformance2();
      v61 = v18;
      v62 = v19;
      v63 = v20;
      v64 = v27;
      swift_getOpaqueTypeConformance2();
      return sub_26A84FDF8();
    }
  }

  v17 = *(v2 + 16);
  if (*(v2 + 24) == 1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_26A851EA8();
    v29 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v17, 0);
    (*(v12 + 8))(v14, v11);
    if (v61 != 1)
    {
      goto LABEL_7;
    }
  }

  v30 = *(v2 + 32);
  if (v30)
  {
    v31 = *(type metadata accessor for SmartDialogAnimatableAnimationModifer(0) + 28);
    v32 = OBJC_IVAR____TtC9SnippetUI21SmartDialogAnimations_animations;
    swift_beginAccess();
    v33 = *(v30 + v32);

    v34 = v2 + v31;
    v35 = v57;
    sub_26A507BDC(v34, v33);
    swift_endAccess();

    v36 = v35;
    v37 = v54;
    sub_26A72CED4(v36, v54);
    v38 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v39 = swift_allocObject();
    sub_26A72CF44(v37, v39 + v38);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6210);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6218);
    v42 = sub_26A4D7DCC();
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6228);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6230);
    v45 = sub_26A84F658();
    v46 = sub_26A72C02C();
    v61 = v45;
    v62 = v46;
    v47 = swift_getOpaqueTypeConformance2();
    v61 = v44;
    v62 = v47;
    v48 = swift_getOpaqueTypeConformance2();
    v61 = v43;
    v62 = v48;
    v49 = swift_getOpaqueTypeConformance2();
    v50 = v55;
    MEMORY[0x26D662CC0](sub_26A72CFB4, v39, v40, v41, v42, v49);

    v51 = v56;
    v52 = v59;
    (*(v56 + 16))(v5, v50, v59);
    swift_storeEnumTagMultiPayload();
    v61 = v40;
    v62 = v41;
    v63 = v42;
    v64 = v49;
    swift_getOpaqueTypeConformance2();
    sub_26A84FDF8();
    (*(v51 + 8))(v50, v52);
    return sub_26A54A088();
  }

  else
  {
    type metadata accessor for SmartDialogAnimations(0);
    sub_26A72C02C();
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A72B820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30[1] = a1;
  v33 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6208);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6230);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6228);
  v31 = *(v17 - 8);
  v32 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = v30 - v18;
  v34 = a2;
  sub_26A72CED4(a2, v12);
  v20 = type metadata accessor for SmartDialogAnimation(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v20) == 1)
  {
    sub_26A54A088();
    v21 = 0.0;
  }

  else
  {
    v22 = v12[*(v20 + 28)];
    LOBYTE(v35) = 1;
    sub_26A5D5CF0(&v35, v22, &v36);
    v35 = v36;
    v21 = sub_26A5D5E84(&v35);
    sub_26A72D048();
  }

  v23 = sub_26A84F658();
  v24 = sub_26A72C02C();
  MEMORY[0x26D661270](v23, v24, 0.0, v21);
  sub_26A72CED4(v34, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v20) == 1)
  {
    sub_26A54A088();
  }

  else
  {
    v25 = v9[*(v20 + 28)];
    LOBYTE(v35) = 0;
    sub_26A5D5CF0(&v35, v25, &v36);
    v35 = v36;
    sub_26A5D5E84(&v35);
    sub_26A72D048();
  }

  *&v36 = v23;
  *(&v36 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26A84F018();
  (*(v14 + 8))(v16, v13);
  sub_26A72CED4(v34, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v20) == 1)
  {
    sub_26A54A088();
  }

  else
  {
    v27 = v6[*(v20 + 28)];
    LOBYTE(v35) = 2;
    sub_26A5D5CF0(&v35, v27, &v36);
    v35 = v36;
    sub_26A5D5E84(&v35);
    sub_26A72D048();
  }

  *&v36 = v13;
  *(&v36 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v32;
  sub_26A84EFF8();
  return (*(v31 + 8))(v19, v28);
}

uint64_t sub_26A72BCDC()
{
  type metadata accessor for CGRect();
  OUTLINED_FUNCTION_2_79();
  sub_26A72C02C();
  if ((sub_26A8510B8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SmartDialogAnimatableRect(0);

  return sub_26A84AC98();
}

uint64_t sub_26A72BD9C()
{
  type metadata accessor for CGRect();
  OUTLINED_FUNCTION_2_79();
  sub_26A72C02C();
  sub_26A8510A8();
  type metadata accessor for SmartDialogAnimatableRect(0);
  sub_26A84ACC8();
  sub_26A72C02C();
  return sub_26A8516F8();
}

uint64_t sub_26A72BE6C()
{
  type metadata accessor for SmartDialogAnimatableRect(0);
  sub_26A72C02C();

  return sub_26A8516E8();
}

uint64_t sub_26A72BEF0()
{
  sub_26A8526B8();
  type metadata accessor for CGRect();
  sub_26A72C02C();
  sub_26A8510A8();
  sub_26A84ACC8();
  sub_26A72C02C();
  sub_26A8516F8();
  return sub_26A8526F8();
}

unint64_t sub_26A72C02C()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A72C0E4@<X0>(void *a1@<X8>)
{
  if (qword_2803A8DE8 != -1)
  {
    swift_once();
  }

  *a1 = qword_2803D2370;
}

uint64_t sub_26A72C154(uint64_t a1, uint64_t a2)
{
  v17[1] = a2;
  v3 = sub_26A850798();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v11 = sub_26A8507A8();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = *(v8 + 44);
  sub_26A72C02C();
  sub_26A851D88();
  v13 = (v4 + 16);
  for (i = (v4 + 8); ; (*i)(v6, v3))
  {
    sub_26A851DD8();
    if (*&v10[v12] == v18[0])
    {
      break;
    }

    v15 = sub_26A851E18();
    (*v13)(v6);
    v15(v18, 0);
    sub_26A851DE8();
    sub_26A84F418();
  }

  return sub_26A54A088();
}

void (*sub_26A72C3CC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

uint64_t sub_26A72C440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SmartDialogAnimatableModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6138);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6140) + 36));
  *v10 = sub_26A72C694;
  v10[1] = 0;
  v11 = sub_26A851098();
  sub_26A72C870(v2, v8);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_26A72C8D4(v8, v13 + v12);
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6148) + 36));
  *v14 = v11;
  v14[1] = sub_26A72C938;
  v14[2] = v13;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6150) + 36);
  type metadata accessor for SmartDialogAnimatableAnimationModifer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110);
  sub_26A851058();
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *(v15 + 16) = swift_getKeyPath();
  *(v15 + 24) = 0;
  type metadata accessor for SmartDialogAnimations(0);
  sub_26A72C02C();
  result = sub_26A84F678();
  *(v15 + 32) = result;
  *(v15 + 40) = v17;
  return result;
}

uint64_t sub_26A72C694(void *a1)
{

  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_26A72C6C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26A84ACC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6158);
  v8 = (type metadata accessor for SmartDialogAnimatableRect(0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26A8570D0;
  v11 = (v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110);
  sub_26A851058();
  *v11 = a1;
  (*(v5 + 32))(&v11[v8[7]], v7, v4);
  *a2 = v10;
}

uint64_t sub_26A72C870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartDialogAnimatableModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A72C8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartDialogAnimatableModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A72C938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SmartDialogAnimatableModifier(0);

  return sub_26A72C6C8(a1, a2);
}

void sub_26A72CA00()
{
  sub_26A5923A4();
  if (v0 <= 0x3F)
  {
    sub_26A72CA9C();
    if (v1 <= 0x3F)
    {
      sub_26A84ACC8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A72CA9C()
{
  if (!qword_2803B6180)
  {
    type metadata accessor for SmartDialogAnimations(255);
    sub_26A72C02C();
    v0 = sub_26A84F688();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B6180);
    }
  }
}

unint64_t sub_26A72CB50()
{
  result = qword_2803B6188;
  if (!qword_2803B6188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6150);
    sub_26A72CC0C();
    sub_26A72C02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6188);
  }

  return result;
}

unint64_t sub_26A72CC0C()
{
  result = qword_2803B6190;
  if (!qword_2803B6190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6148);
    sub_26A72CCC4();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6190);
  }

  return result;
}

unint64_t sub_26A72CCC4()
{
  result = qword_2803B6198;
  if (!qword_2803B6198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6140);
    sub_26A72CD7C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6198);
  }

  return result;
}

unint64_t sub_26A72CD7C()
{
  result = qword_2803B61A0;
  if (!qword_2803B61A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B61A8);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B61A0);
  }

  return result;
}

unint64_t sub_26A72CE64()
{
  result = qword_2803B61F0;
  if (!qword_2803B61F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B61F0);
  }

  return result;
}

uint64_t sub_26A72CED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A72CF44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6208);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A72CFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6208) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26A72B820(a1, v6, a2);
}

uint64_t sub_26A72D048()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A72D098()
{
  result = qword_2803B6240;
  if (!qword_2803B6240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6218);
    sub_26A4D7DCC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6230);
    sub_26A84F658();
    sub_26A72C02C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6240);
  }

  return result;
}

uint64_t sub_26A72D2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = sub_26A84FBF8();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6250);
  return sub_26A72D360(a1, a2, a3 & 1, a4 + *(v8 + 44));
}

uint64_t sub_26A72D360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  HIDWORD(v74) = a3;
  v81 = a4;
  v6 = sub_26A84FF88();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v72 - v9;
  v11 = sub_26A84F988();
  v73 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v82 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26A850F68();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6258);
  MEMORY[0x28223BE20](v76);
  v77 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v75 = a1;
  sub_26A84FF78();
  (*(v14 + 104))(v16, *MEMORY[0x277CE1020], v13);
  KeyPath = swift_getKeyPath();
  v22 = v20;
  v23 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C50) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3678) + 28);
  (*(v14 + 32))(v23 + v24, v16, v13);
  v25 = BYTE4(v74);
  v26 = v23 + v24;
  v27 = v11;
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v13);
  *v23 = KeyPath;
  v28 = v73;
  v29 = a2;
  if ((v25 & 1) == 0)
  {

    sub_26A851EA8();
    v30 = sub_26A8501F8();
    sub_26A84EA78();

    v31 = v82;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a2, 0);
    (*(v28 + 8))(v31, v11);
    v29 = v89;
  }

  if ((v29 - 1) >= 8)
  {
    v32 = sub_26A851E98();
    LOBYTE(v71) = 2;
    sub_26A7AEFE4(v32, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v71, v29, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  }

  v33 = v22;
  v34 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v34);
  v35 = sub_26A8503E8();
  sub_26A4E2544(v10, &qword_2803AB208);
  v36 = swift_getKeyPath();
  v37 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C58) + 36)];
  *v37 = v36;
  v37[1] = v35;
  v38 = a2;
  v39 = v82;
  if ((v25 & 1) == 0)
  {

    sub_26A851EA8();
    v40 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a2, 0);
    (*(v28 + 8))(v39, v27);
    v38 = v89;
  }

  if ((v38 - 1) >= 8)
  {
    v42 = sub_26A851E98();
    LOBYTE(v71) = 2;
    sub_26A7AEFE4(v42, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v71, v38, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
    v41 = 0x4032000000000000;
  }

  else
  {
    v41 = qword_26A87D508[v38 - 1];
  }

  v43 = a2;
  if ((v25 & 1) == 0)
  {

    sub_26A851EA8();
    v44 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a2, 0);
    (*(v28 + 8))(v39, v27);
    v43 = v89;
  }

  if ((v43 - 1) >= 8)
  {
    v46 = sub_26A851E98();
    LOBYTE(v71) = 2;
    sub_26A7AEFE4(v46, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v71, v43, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
    v45 = 0x4032000000000000;
  }

  else
  {
    v45 = qword_26A87D508[v43 - 1];
  }

  v47 = swift_getKeyPath();
  v48 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C60) + 36);
  *v48 = v47;
  *(v48 + 8) = v41;
  *(v48 + 16) = 0;
  v49 = swift_getKeyPath();
  v50 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C48) + 36);
  *v50 = v49;
  *(v50 + 8) = v45;
  *(v50 + 16) = 0;
  v51 = a2;
  if ((v25 & 1) == 0)
  {

    sub_26A851EA8();
    v52 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a2, 0);
    (*(v28 + 8))(v39, v27);
    v51 = v89;
  }

  if ((v51 - 1) >= 8)
  {
    v53 = sub_26A851E98();
    LOBYTE(v71) = 2;
    sub_26A7AEFE4(v53, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v71, v51, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
    if (v25)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ((v25 & 1) == 0)
  {
LABEL_21:

    sub_26A851EA8();
    v54 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a2, 0);
    (*(v28 + 8))(v39, v27);
    a2 = v89;
  }

LABEL_22:
  if ((a2 - 1) >= 8)
  {
    v55 = sub_26A851E98();
    LOBYTE(v71) = 2;
    sub_26A7AEFE4(v55, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v71, a2, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  }

  sub_26A851448();
  sub_26A84F028();
  v56 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6260) + 36));
  v57 = v90;
  *v56 = v89;
  v56[1] = v57;
  v56[2] = v91;
  v58 = sub_26A84FE98();
  v59 = sub_26A850248();
  v60 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6268) + 36);
  *v60 = v58;
  *(v60 + 4) = v59;
  *(v33 + *(v76 + 36)) = 256;
  v61 = v78;
  sub_26A84FF98();
  v62 = sub_26A850488();
  v63 = sub_26A84FED8();
  v87 = MEMORY[0x277CE04F8];
  v88 = MEMORY[0x277CE04E8];
  LODWORD(v84) = v63;
  v83 = v62;
  sub_26A607E38();
  v65 = v64;
  sub_26A57E57C(&v83);
  (*(v79 + 8))(v61, v80);
  v66 = swift_getKeyPath();
  v67 = v77;
  sub_26A72DE18(v33, v77);
  v68 = v81;
  sub_26A72DE18(v67, v81);
  v69 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6270) + 48);
  *v69 = v65;
  *(v69 + 8) = v66;
  *(v69 + 16) = 1;

  sub_26A4E2544(v33, &qword_2803B6258);

  return sub_26A4E2544(v67, &qword_2803B6258);
}

uint64_t sub_26A72DE18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A72DE88()
{
  result = qword_2803B6278;
  if (!qword_2803B6278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6278);
  }

  return result;
}

void View.imageFixedSize(horizontal:vertical:)()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7_50();
  swift_getKeyPath();
  sub_26A8509A8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_3_11();
  sub_26A506A30();
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A8509A8();

  v1 = OUTLINED_FUNCTION_33_11();
  v2(v1);
  OUTLINED_FUNCTION_27_0();
}

uint64_t RFImageView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_26A84B718();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  sub_26A5E9128(a2);
  v5 = type metadata accessor for RFImageView();
  OUTLINED_FUNCTION_3_73(a2 + v5[5]);
  v7 = *(v6 + 32);
  sub_26A851048();
  *(a2 + v7) = v14;
  sub_26A84E2E8();
  v8 = sub_26A84B2D8();
  sub_26A84E338();
  OUTLINED_FUNCTION_46();
  (*(v9 + 8))(a1);
  v10 = OUTLINED_FUNCTION_33_11();
  result = v11(v10);
  *(a2 + v5[6]) = v8;
  v13 = (a2 + v5[7]);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

{
  sub_26A5E9128(a2);
  v4 = type metadata accessor for RFImageView();
  OUTLINED_FUNCTION_3_73(a2 + v4[5]);
  v6 = *(v5 + 32);
  sub_26A851048();
  *(a2 + v6) = v11;
  v7 = sub_26A84B2D8();
  sub_26A84B718();
  OUTLINED_FUNCTION_46();
  result = (*(v8 + 8))(a1);
  *(a2 + v4[6]) = v7;
  v10 = (a2 + v4[7]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t View.imageAspectRatio(width:height:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  OUTLINED_FUNCTION_79(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v1);
  swift_getKeyPath();
  sub_26A84B268();
  sub_26A84B2B8();
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  sub_26A8509A8();

  return sub_26A505D1C();
}

void View.imageFixedSize()()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0);
  v2 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = v9 - v6;
  swift_getKeyPath();
  v10 = 1;
  sub_26A8509A8();

  swift_getKeyPath();
  v10 = 1;
  OUTLINED_FUNCTION_3_11();
  v8 = sub_26A506A30();
  v9[1] = v1;
  v9[2] = v8;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A8509A8();

  (*(v4 + 8))(v7, v2);
  OUTLINED_FUNCTION_27_0();
}

uint64_t View.imageContentMode(_:)()
{
  swift_getKeyPath();
  sub_26A8509A8();
}

uint64_t RFImageView.AsyncImagePhase.image.getter(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  else
  {
    return 0;
  }
}

void RFImageView.init<A>(_:content:)()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v25 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_26A84B718();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  sub_26A5E9128(v10);
  v18 = type metadata accessor for RFImageView();
  OUTLINED_FUNCTION_3_73(v10 + v18[5]);
  v20 = *(v19 + 32);
  sub_26A851048();
  *(v10 + v20) = v26;
  sub_26A84E2E8();
  v21 = sub_26A84B2D8();
  sub_26A84E338();
  OUTLINED_FUNCTION_46();
  (*(v22 + 8))(v8);
  (*(v13 + 8))(v17, v11);
  *(v10 + v18[6]) = v21;
  v23 = swift_allocObject();
  *(v23 + 2) = v3;
  *(v23 + 3) = v1;
  *(v23 + 4) = v6;
  *(v23 + 5) = v25;
  v24 = (v10 + v18[7]);
  *v24 = sub_26A731A7C;
  v24[1] = v23;
  OUTLINED_FUNCTION_27_0();
}

void sub_26A72E6EC()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8);
  OUTLINED_FUNCTION_79(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_50();
  sub_26A4EF6D0();
  v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v2) + 36);
  v8 = type metadata accessor for ImageSizeableModifier(0);
  v9 = v7 + v8[5];
  sub_26A6AEE74(v22);
  memcpy(v9, v22, 0xBFuLL);
  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v10 = qword_2815889C0;
  if (qword_2803A8B88 != -1)
  {
    OUTLINED_FUNCTION_22_1();
  }

  v11 = byte_2803D1D8A;
  if (qword_28157FAE8 != -1)
  {
    OUTLINED_FUNCTION_21_0();
  }

  v12 = byte_2815889D0;
  if (qword_2803A8B80 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  v13 = byte_2803D1D89;
  *(v9 + 192) = v10;
  *(v9 + 200) = v11;
  *(v9 + 208) = 1;
  *(v9 + 216) = v12;
  *(v9 + 217) = 0;
  *(v9 + 218) = v13;
  *(v9 + 219) = 0;
  v14 = v8[6];
  *(v7 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(KeyPath);
  v16 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v16);
  v17 = v7 + v8[9];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v7 + v8[10];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = v8[11];
  *(v7 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E8);
  swift_storeEnumTagMultiPayload();
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v21);
  sub_26A5F3AB0(v0, v7);
  sub_26A505D1C();
  sub_26A4EF6D0();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A72E9D8()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-v8];
  sub_26A4EF6D0();
  v10 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v1) + 36);
  v11 = type metadata accessor for ImageSizeableModifier(0);
  v12 = v10 + v11[5];
  sub_26A6AEE74(v25);
  memcpy(v12, v25, 0xBFuLL);
  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v13 = qword_2815889C0;
  if (qword_2803A8B88 != -1)
  {
    OUTLINED_FUNCTION_22_1();
  }

  v14 = byte_2803D1D8A;
  if (qword_28157FAE8 != -1)
  {
    OUTLINED_FUNCTION_21_0();
  }

  v15 = byte_2815889D0;
  if (qword_2803A8B80 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  v16 = byte_2803D1D89;
  *(v12 + 192) = v13;
  *(v12 + 200) = v14;
  *(v12 + 208) = 1;
  *(v12 + 216) = v15;
  *(v12 + 217) = 0;
  *(v12 + 218) = v16;
  *(v12 + 219) = 0;
  v17 = v11[6];
  *(v10 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0);
  swift_storeEnumTagMultiPayload();
  v18 = v10 + v11[7];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = v10 + v11[8];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = v10 + v11[9];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v10 + v11[10];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = v11[11];
  *(v10 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E8);
  swift_storeEnumTagMultiPayload();
  v23 = v10 + v11[12];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = v10 + v11[13];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  sub_26A5F3AB0(v9, v10);
  sub_26A505D1C();
  *v5 = v3;
  *(v5 + 4) = BYTE4(v3) & 1;
  *(v5 + 5) = BYTE5(v3) & 1;
  OUTLINED_FUNCTION_27_0();
}

void View.imageFrame(width:height:)()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5C08);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7_50();
  swift_getKeyPath();
  sub_26A8509A8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_3_11();
  sub_26A506A30();
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A8509A8();

  v1 = OUTLINED_FUNCTION_33_11();
  v2(v1);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A72EE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v26);
  OUTLINED_FUNCTION_79(v27);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  swift_getKeyPath();
  v31 = v23(0);
  OUTLINED_FUNCTION_46();
  (*(v32 + 16))(v30, v25, v31);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v31);
  sub_26A8509A8();

  sub_26A505D1C();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A72EFA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A84B258();
  sub_26A7329BC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A4EF6D0();

  sub_26A84EC28();
  return sub_26A505D1C();
}

uint64_t sub_26A72F0F0()
{
  sub_26A84B258();
  sub_26A7329BC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A72F1BC()
{
  sub_26A84B258();
  sub_26A7329BC();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26A84EC28();
}

void sub_26A72F28C()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v73 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6308);
  v12 = OUTLINED_FUNCTION_79(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v68 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v70 = &v66 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D38);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28);
  OUTLINED_FUNCTION_79(v24);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  v27 = &v66 - v26;
  if (sub_26A72F0F0() && (v28 = sub_26A75750C(), , (v28 & 1) != 0))
  {
    type metadata accessor for ImageSourceModel();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_27_0();

    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  }

  else
  {
    v67 = v10;
    v69 = v6;
    type metadata accessor for ImageSourceModel();
    v71 = v27;
    OUTLINED_FUNCTION_81();
    v66 = v34;
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
    v38 = 0;
    v72 = v4;
    v39 = *(v4 + 16);
    v40 = *(*v1 + 120);
    v41 = *(*v1 + 128);
    do
    {
      if (v39 == v38)
      {
        v47 = v39;
        goto LABEL_13;
      }

      sub_26A84B258();
      v42 = v38 + 1;
      sub_26A50429C(v1 + v40, v74);
      sub_26A681C5C(v73, v74, (v1 + v41), v23);
      __swift_destroy_boxed_opaque_existential_1(v74);
      sub_26A4EF020();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      ++v38;
    }

    while (EnumCaseMultiPayload == 2);
    if (!EnumCaseMultiPayload)
    {
      sub_26A505D1C();
      sub_26A727B6C(v20, v69);
      OUTLINED_FUNCTION_22_0();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v66);
      goto LABEL_19;
    }

    sub_26A505D1C();
    sub_26A4EF020();
    v47 = v42 - 1;
LABEL_13:
    v48 = *(*v1 + 112);
    swift_beginAccess();
    v49 = v70;
    sub_26A4EF6D0();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FD8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v50);
    sub_26A505D1C();
    if (EnumTagSinglePayload == 1 && v47 < v39)
    {
      v53 = v68;
      sub_26A732754();
      v54 = v72;
      *v53 = v47;
      v53[1] = v54;
      OUTLINED_FUNCTION_22_0();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v50);
      swift_beginAccess();

      sub_26A732630(v53, v1 + v48);
      swift_endAccess();
      sub_26A851C18();
      v58 = v67;
      OUTLINED_FUNCTION_81();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
      sub_26A851BD8();

      v63 = sub_26A851BC8();
      v64 = swift_allocObject();
      v65 = MEMORY[0x277D85700];
      v64[2] = v63;
      v64[3] = v65;
      v64[4] = v1;
      sub_26A601D48(0, 0, v58, &unk_26A87D9C8, v64);
    }

    sub_26A4EF020();
LABEL_19:
    OUTLINED_FUNCTION_27_0();
  }
}

uint64_t sub_26A72F7EC()
{
  v0[2] = sub_26A851BD8();
  v0[3] = sub_26A851BC8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26A72F8B0;

  return sub_26A72FA40();
}

uint64_t sub_26A72F8B0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  v4 = sub_26A851B78();

  return MEMORY[0x2822009F8](sub_26A72F9E4, v4, v3);
}

uint64_t sub_26A72F9E4()
{

  OUTLINED_FUNCTION_2_9();

  return v0();
}

uint64_t sub_26A72FA40()
{
  v1[16] = v0;
  v2 = sub_26A84B258();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for ImageSourceModel();
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6308);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FD8);
  v1[27] = swift_task_alloc();
  sub_26A851BD8();
  v1[28] = sub_26A851BC8();
  v4 = sub_26A851B78();
  v1[29] = v4;
  v1[30] = v3;

  return MEMORY[0x2822009F8](sub_26A72FC28, v4, v3);
}

uint64_t sub_26A72FC28()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  *(v0 + 248) = *(**(v0 + 128) + 112);
  swift_beginAccess();
  sub_26A4EF6D0();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {

LABEL_6:
    sub_26A505D1C();
    OUTLINED_FUNCTION_26_15();

    OUTLINED_FUNCTION_2_9();

    return v18();
  }

  v3 = *(v0 + 216);
  result = sub_26A4EF020();
  v5 = *v3;
  *(v0 + 256) = *v3;
  v6 = v3[1];
  *(v0 + 264) = v6;
  v7 = *(v6 + 16);
  *(v0 + 272) = v7;
  if (v7 < v5)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 144);
  v10 = *(v0 + 128);
  v11 = *v10;
  v12 = *(*v10 + 120);
  *(v0 + 280) = v12;
  *(v0 + 288) = *(v11 + 128);
  *(v0 + 296) = v5;
  if (v5 == v7)
  {
    v13 = *(v0 + 248);
    v14 = *(v0 + 192);

    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v8);
    OUTLINED_FUNCTION_34_11();
    sub_26A732630(v14, v10 + v13);
    swift_endAccess();

    sub_26A72F1BC();
    goto LABEL_6;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (v5 >= *(v6 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  (*(v9 + 16))(*(v0 + 152), v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5, *(v0 + 136));
  sub_26A50429C(v10 + v12, v0 + 16);
  v19 = swift_task_alloc();
  *(v0 + 304) = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_5_66(v19);

  return sub_26A685678();
}

uint64_t sub_26A72FEFC()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v3 = v2;
  v4 = v1[19];
  v5 = v1[18];
  v6 = v1[17];
  *v3 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 2));
  (*(v5 + 8))(v4, v6);
  v7 = v1[30];
  v8 = v1[29];

  return MEMORY[0x2822009F8](sub_26A73007C, v8, v7);
}

uint64_t sub_26A73007C()
{
  v1 = v0[22];
  if (__swift_getEnumTagSinglePayload(v0[21], 1, v1) != 1)
  {
    v11 = v0[31];
    v12 = v0[26];
    v13 = v0[24];
    v14 = v0[16];

    v15 = OUTLINED_FUNCTION_33_11();
    sub_26A727B6C(v15, v16);
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
    swift_beginAccess();
    sub_26A732630(v13, v14 + v11);
    swift_endAccess();
    sub_26A732754();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v1);
    sub_26A72EFA0();
    sub_26A7325DC();
    goto LABEL_5;
  }

  result = sub_26A505D1C();
  v3 = v0[37] + 1;
  v0[37] = v3;
  if (v3 == v0[34])
  {
    v4 = v0[31];
    v5 = v0[26];
    v6 = v0[24];
    v7 = v0[16];

    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
    OUTLINED_FUNCTION_34_11();
    sub_26A732630(v6, v7 + v4);
    swift_endAccess();

    sub_26A72F1BC();
LABEL_5:
    sub_26A505D1C();
    OUTLINED_FUNCTION_26_15();

    OUTLINED_FUNCTION_2_9();

    return v23();
  }

  if ((v0[32] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v0[33];
  if (v3 >= *(v24 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v25 = v0[35];
  v26 = v0[16];
  (*(v0[18] + 16))(v0[19], v24 + ((*(v0[18] + 80) + 32) & ~*(v0[18] + 80)) + *(v0[18] + 72) * v3, v0[17]);
  sub_26A50429C(v26 + v25, (v0 + 2));
  v27 = swift_task_alloc();
  v0[38] = v27;
  *v27 = v0;
  OUTLINED_FUNCTION_5_66();

  return sub_26A685678();
}

uint64_t sub_26A730364()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.imageElementFixedWidth.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A7303B0()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.imageElementFixedHeight.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t type metadata accessor for RFImageView()
{
  result = qword_2803B6288;
  if (!qword_2803B6288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A7304E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_26A4EF6D0();
  return a7(v11);
}

uint64_t sub_26A730674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v6);
  v10 = View.eraseToAnyView()(a4);
  (*(v5 + 8))(v8, a4);
  return v10;
}

void RFImageView.body.getter()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_26A84F9E8();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0CF0);
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - v19;
  sub_26A7309CC(v1, &v29);
  v28 = v29;
  v26 = BYTE1(v30);
  v27 = v30;
  KeyPath = swift_getKeyPath();
  sub_26A84F9D8();
  sub_26A8514B8();
  v21 = sub_26A7329BC();
  sub_26A84EE38();

  (*(v6 + 8))(v10, v4);
  (*(v13 + 16))(v17, v20, v11);
  v29 = v4;
  v30 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = sub_26A84F058();
  (*(v13 + 8))(v20, v11);
  *v3 = v28;
  v23 = v26;
  *(v3 + 8) = v27;
  *(v3 + 9) = v23;
  *(v3 + 16) = KeyPath;
  *(v3 + 24) = 1;
  *(v3 + 32) = v22;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7309CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A730D18();
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + *(type metadata accessor for RFImageView() + 28));
    if (v6)
    {
      v6(v5);
    }

    else
    {
    }

    sub_26A84FDF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0);
    sub_26A6D1B70();
    sub_26A84FDF8();

LABEL_14:

    goto LABEL_15;
  }

  v7 = type metadata accessor for RFImageView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F08);
  sub_26A506A30();
  sub_26A84EEF8();
  v8 = sub_26A72F0F0();

  if (!v8 || (, v9 = sub_26A75750C(), , , (v9 & 1) == 0))
  {
    v11 = *(a1 + *(v7 + 28));
    if (v11)
    {
      v11(0);
    }

    else
    {
      sub_26A731130();
    }

    sub_26A84FDF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0);
    sub_26A6D1B70();
    sub_26A84FDF8();
    goto LABEL_14;
  }

  v10 = *(a1 + *(v7 + 28));
  if (v10)
  {
    v10(1);
  }

  else
  {
    sub_26A731130();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0);
  sub_26A6D1B70();
  result = sub_26A84FDF8();
LABEL_15:
  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 9) = v15;
  return result;
}

uint64_t sub_26A730D18()
{
  v0 = type metadata accessor for RFImageView();
  MEMORY[0x28223BE20](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - v5;
  MEMORY[0x28223BE20](v7);
  v14[0] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F08);
  sub_26A506A30();
  sub_26A84EEF8();
  v8 = sub_26A84B258();
  v14[4] = v8;
  v9 = sub_26A7329BC();
  v14[5] = v9;
  swift_getKeyPath();
  v14[2] = v8;
  v14[3] = v9;
  swift_getKeyPath();
  sub_26A84EC18();

  sub_26A732754();
  sub_26A4EF6D0();
  v10 = type metadata accessor for ImageSourceModel();
  if (__swift_getEnumTagSinglePayload(v3, 1, v10) == 1)
  {
    sub_26A84EEF8();
    type metadata accessor for EnvironmentImagePreferences(0);
    sub_26A72F28C();

    sub_26A7325DC();
    if (__swift_getEnumTagSinglePayload(v3, 1, v10) != 1)
    {
      sub_26A505D1C();
    }
  }

  else
  {
    sub_26A7325DC();
    sub_26A727B6C(v3, v6);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  }

  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_26A505D1C();
    sub_26A505D1C();
    return 0;
  }

  else
  {
    sub_26A68A2F0();
    v11 = v12;
    sub_26A505D1C();
    sub_26A7325DC();
  }

  return v11;
}

uint64_t sub_26A731130()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B62D8);
  MEMORY[0x28223BE20](v1);
  v56 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B62E0);
  MEMORY[0x28223BE20](v51);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = &v45 - v10;
  v11 = sub_26A84B2F8();
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = sub_26A84B408();
  v54 = *(v23 - 8);
  v55 = v23;
  MEMORY[0x28223BE20](v23);
  v53 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(type metadata accessor for RFImageView() + 24);
  v48 = v0;
  v26 = *(v0 + v25);
  sub_26A7DBBF8(v26, v22);
  v27 = sub_26A84B258();
  if (__swift_getEnumTagSinglePayload(v22, 1, v27) == 1)
  {
    sub_26A505D1C();
LABEL_11:
    sub_26A84FE98();
    sub_26A7DBBF8(v26, v19);
    sub_26A72E9D8();
    sub_26A505D1C();
    v40 = &v5[*(v1 + 36)];
    v41 = type metadata accessor for VibrancyModifier();
    v42 = *(v41 + 20);
    *&v40[v42] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
    swift_storeEnumTagMultiPayload();
    v43 = &v40[*(v41 + 24)];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    *v40 = 2;
    sub_26A4EF6D0();
    sub_26A731FD8(&qword_28157FD98, &qword_2803B62D8, &unk_26A87D828, sub_26A732078);
    v36 = sub_26A851248();
    sub_26A505D1C();
    return v36;
  }

  v46 = v1;
  v28 = *(v27 - 8);
  if ((*(v28 + 88))(v22, v27) != *MEMORY[0x277D62C68])
  {
    (*(v28 + 8))(v22, v27);
    v1 = v46;
    goto LABEL_11;
  }

  (*(v28 + 96))(v22, v27);
  (*(v54 + 32))(v53, v22, v55);
  sub_26A84B3D8();
  v29 = v52;
  (*(v52 + 104))(v13, *MEMORY[0x277D62D20], v11);
  sub_26A7329BC();
  sub_26A851A48();
  sub_26A851A48();
  v30 = *(v29 + 8);
  v30(v13, v11);
  v30(v16, v11);
  v1 = v46;
  if (v58 != v57)
  {
    type metadata accessor for EnvironmentImagePreferences(0);
    v37 = v47;
    sub_26A4EF6D0();
    v38 = sub_26A84B1D8();
    if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
    {
      sub_26A505D1C();
    }

    else
    {
      v39 = ImageElement.ImageStyle.isContactStyle.getter();
      (*(*(v38 - 8) + 8))(v37, v38);
      if (v39)
      {
        goto LABEL_5;
      }
    }

    (*(v54 + 8))(v53, v55);
    goto LABEL_11;
  }

LABEL_5:
  sub_26A84FE98();
  sub_26A7DBBF8(v26, v19);
  v31 = v50;
  sub_26A72E9D8();
  sub_26A505D1C();
  v32 = &v31[*(v51 + 36)];
  v33 = type metadata accessor for VibrancyModifier();
  v34 = *(v33 + 20);
  *&v32[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v35 = &v32[*(v33 + 24)];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  *v32 = 2;
  sub_26A4EF6D0();
  sub_26A731FD8(&qword_2803B62F0, &qword_2803B62E0, &unk_26A87D830, sub_26A732160);
  v36 = sub_26A851248();
  sub_26A505D1C();
  (*(v54 + 8))(v53, v55);
  return v36;
}

uint64_t sub_26A7319B4()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A731994();
  *v0 = result;
  return result;
}

uint64_t sub_26A731A34(void (*a1)(void))
{
  a1();
  sub_26A84F998();
  return v2;
}

void sub_26A731ACC()
{
  type metadata accessor for EnvironmentImagePreferences(319);
  if (v0 <= 0x3F)
  {
    sub_26A727444();
    if (v1 <= 0x3F)
    {
      sub_26A7274E8();
      if (v2 <= 0x3F)
      {
        sub_26A586908();
        if (v3 <= 0x3F)
        {
          sub_26A731B98();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A731B98()
{
  if (!qword_2803B6298)
  {
    v0 = sub_26A851088();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B6298);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9SnippetUI11RFImageViewV15AsyncImagePhaseO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A731C00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A731C54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26A731CC0()
{
  result = qword_2803B62A0;
  if (!qword_2803B62A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B62A8);
    sub_26A731D78();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B62A0);
  }

  return result;
}

unint64_t sub_26A731D78()
{
  result = qword_2803B62B0;
  if (!qword_2803B62B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B62B8);
    sub_26A6D1A60();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B62B0);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy10SnippetKit12ImageElementV0L5StyleOSgGGAaBHPxAaBHD1__AmA0cI0HPyHCHCTm(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_50_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v2);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_3_11();
  sub_26A506A30();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyADyxAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAKGAaBHPAlaBHPxAaBHD1__AkA0cI0HPyHCHC_AkaNHPyHCHCTm(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_50_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v2);
  sub_26A84F4F8();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_3_11();
  sub_26A506A30();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_26A731F84()
{
  result = qword_28157FD38;
  if (!qword_28157FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD38);
  }

  return result;
}

uint64_t sub_26A731FD8(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    sub_26A7329BC();
    OUTLINED_FUNCTION_58();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A732078()
{
  result = qword_28157FE08;
  if (!qword_28157FE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B62E8);
    sub_26A506A30();
    sub_26A7329BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE08);
  }

  return result;
}

unint64_t sub_26A732160()
{
  result = qword_2803B62F8;
  if (!qword_2803B62F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6300);
    sub_26A506A30();
    sub_26A7329BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B62F8);
  }

  return result;
}

uint64_t sub_26A7322B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B16E0);
  __swift_allocate_value_buffer(v0, qword_2803D2378);
  v1 = __swift_project_value_buffer(v0, qword_2803D2378);
  v2 = sub_26A84E288();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_26A73232C()
{
  if (qword_2803A8DF0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B16E0);
  __swift_project_value_buffer(v0, qword_2803D2378);
  return sub_26A4EF6D0();
}

uint64_t sub_26A7323BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A732908();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A732420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A732830();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A732484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A68165C();
  *a1 = result;
  return result;
}

uint64_t sub_26A732500(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_26A852068();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  return sub_26A6814F8();
}

uint64_t sub_26A7325DC()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A732630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6308);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7326A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26A6E0E04;

  return sub_26A72F7EC();
}

uint64_t sub_26A732754()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

unint64_t sub_26A7327AC()
{
  result = qword_28157FD28;
  if (!qword_28157FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD28);
  }

  return result;
}

unint64_t sub_26A732830()
{
  result = qword_2803B6310;
  if (!qword_2803B6310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0188);
    sub_26A7328B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6310);
  }

  return result;
}

unint64_t sub_26A7328B4()
{
  result = qword_2803B6318;
  if (!qword_2803B6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6318);
  }

  return result;
}

unint64_t sub_26A732908()
{
  result = qword_2803B6320;
  if (!qword_2803B6320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B16E0);
    sub_26A7329BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6320);
  }

  return result;
}

unint64_t sub_26A7329BC()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

void OUTLINED_FUNCTION_3_73(uint64_t a1@<X8>)
{
  *a1 = sub_26A725F68;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_26_15()
{
}

uint64_t OUTLINED_FUNCTION_34_11()
{

  return swift_beginAccess();
}

uint64_t sub_26A732B04()
{
  sub_26A732B34();
  result = sub_26A84FA88();
  qword_2815889D8 = result;
  return result;
}

unint64_t sub_26A732B34()
{
  result = qword_28157FCA0;
  if (!qword_28157FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FCA0);
  }

  return result;
}

uint64_t sub_26A732B88()
{
  sub_26A732CF0();
  result = sub_26A84FA88();
  qword_2803D2390 = result;
  return result;
}

uint64_t sub_26A732BB8()
{
  sub_26A732C9C();
  result = sub_26A84FA88();
  qword_2803D2398 = result;
  return result;
}

uint64_t sub_26A732BE8()
{
  sub_26A732D44();
  result = sub_26A84FA88();
  qword_2815889E0 = result;
  return result;
}

uint64_t sub_26A732C18()
{
  sub_26A732C48();
  result = sub_26A84FA88();
  qword_2803D23A0 = result;
  return result;
}

unint64_t sub_26A732C48()
{
  result = qword_2803B6330;
  if (!qword_2803B6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6330);
  }

  return result;
}

unint64_t sub_26A732C9C()
{
  result = qword_2803B6338;
  if (!qword_2803B6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6338);
  }

  return result;
}

unint64_t sub_26A732CF0()
{
  result = qword_2803B6340;
  if (!qword_2803B6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6340);
  }

  return result;
}

unint64_t sub_26A732D44()
{
  result = qword_28157FCB8;
  if (!qword_28157FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FCB8);
  }

  return result;
}

uint64_t static ButtonStyle<>.siriCircularRegularTitleAndIcon.getter()
{
  OUTLINED_FUNCTION_4_69();
  KeyPath = swift_getKeyPath();
  *v0 = 256;
  return OUTLINED_FUNCTION_2_80(KeyPath);
}

uint64_t static ButtonStyle<>.siriCircularIconOnly.getter()
{
  OUTLINED_FUNCTION_4_69();
  KeyPath = swift_getKeyPath();
  *v0 = 0;
  return OUTLINED_FUNCTION_2_80(KeyPath);
}

uint64_t static ButtonStyle<>.circularSiriButton.getter()
{
  OUTLINED_FUNCTION_4_69();
  *v0 = 0;
  KeyPath = swift_getKeyPath();
  return OUTLINED_FUNCTION_2_80(KeyPath);
}

uint64_t static ButtonStyle<>.siriCircularSmallIconOnly.getter()
{
  OUTLINED_FUNCTION_4_69();
  KeyPath = swift_getKeyPath();
  *v0 = 1;
  return OUTLINED_FUNCTION_2_80(KeyPath);
}

uint64_t CircularSiriButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_26A732F14(a1, &v4);
  *a2 = v4;
  return result;
}

uint64_t sub_26A732F14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_26A84FAD8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6358);
  MEMORY[0x28223BE20](v77);
  v78 = v71 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6360);
  MEMORY[0x28223BE20](v76);
  v79 = v71 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6368);
  MEMORY[0x28223BE20](v83);
  v80 = v71 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6370);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v81 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v71 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6378);
  MEMORY[0x28223BE20](v86);
  v74 = v71 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6380);
  MEMORY[0x28223BE20](v75);
  v72 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v73 = v71 - v22;
  v23 = *(v2 + 1);
  v24 = *(v2 + 8);
  v25 = *(v2 + 16);
  if ((*v2 & 1) == 0)
  {
    LOBYTE(v94) = 0;
    BYTE1(v94) = v23;
    *(&v94 + 1) = v24;
    LOBYTE(v95) = v25;
    sub_26A73395C(v91, v21);
    LOBYTE(v94) = 0;
    BYTE1(v94) = v23;
    *(&v94 + 1) = v24;
    LOBYTE(v95) = v25;
    sub_26A73395C(v92, v59);
    v27 = v92[2];
    LOBYTE(v94) = 0;
    BYTE1(v94) = v23;
    *(&v94 + 1) = v24;
    LOBYTE(v95) = v25;
    sub_26A73395C(&v93, v60);
    if (!v23)
    {
      goto LABEL_3;
    }

LABEL_11:
    v61 = v74;
    sub_26A84FFB8();
    v62 = sub_26A850338();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v62);
    v63 = sub_26A8503E8();
    sub_26A4D6FD8();
    KeyPath = swift_getKeyPath();
    v65 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6388) + 36)];
    *v65 = KeyPath;
    v65[1] = v63;
    v66 = swift_getKeyPath();
    v67 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6390) + 36)];
    *v67 = v66;
    *(v67 + 1) = v27;
    v67[16] = 0;
    v68 = swift_getKeyPath();
    v69 = &v61[*(v86 + 36)];
    *v69 = v68;
    *(v69 + 1) = v27;
    v69[16] = 0;
    *&v94 = swift_getKeyPath();
    BYTE8(v94) = 0;
    sub_26A734158();
    sub_26A7343F4();
    v70 = v73;
    sub_26A850948();

    sub_26A4D6FD8();
    *(v70 + *(v75 + 36)) = 0;
    sub_26A4B4A20(v70, v72);
    sub_26A734448();
    v57 = sub_26A851248();
    result = sub_26A4B4A88();
    goto LABEL_12;
  }

  v71[1] = a1;
  LOBYTE(v94) = 1;
  BYTE1(v94) = v23;
  *(&v94 + 1) = v24;
  LOBYTE(v95) = v25;
  sub_26A73395C(v91, v21);
  LOBYTE(v94) = 1;
  BYTE1(v94) = v23;
  *(&v94 + 1) = v24;
  LOBYTE(v95) = v25;
  sub_26A73395C(v92, v26);
  v27 = v92[3];
  LOBYTE(v94) = 1;
  BYTE1(v94) = v23;
  *(&v94 + 1) = v24;
  LOBYTE(v95) = v25;
  sub_26A73395C(&v93, v28);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_3:
  v29 = v78;
  sub_26A84FFB8();
  v30 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v30);
  v31 = sub_26A8503E8();
  sub_26A4D6FD8();
  v32 = swift_getKeyPath();
  v33 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6388) + 36));
  *v33 = v32;
  v33[1] = v31;
  v34 = swift_getKeyPath();
  v35 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6390) + 36);
  *v35 = v34;
  *(v35 + 8) = v27;
  *(v35 + 16) = 0;
  v36 = swift_getKeyPath();
  v37 = v29 + *(v86 + 36);
  *v37 = v36;
  *(v37 + 8) = v27;
  *(v37 + 16) = 0;
  sub_26A851448();
  sub_26A84F028();
  v38 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6398) + 36));
  v39 = v95;
  *v38 = v94;
  v38[1] = v39;
  v38[2] = v96;
  v40 = sub_26A84FE98();
  LOBYTE(v34) = sub_26A850248();
  v41 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B63A0) + 36);
  *v41 = v40;
  *(v41 + 4) = v34;
  *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B63A8) + 36)) = 256;
  *(v29 + *(v77 + 36)) = 0;
  if (sub_26A84FFC8())
  {
    v42 = 0.5;
  }

  else
  {
    v42 = 0.8;
  }

  v43 = v79;
  sub_26A544EC8(v29, v79, &qword_2803B6358);
  *(v43 + *(v76 + 36)) = v42;
  if (sub_26A84FFC8())
  {
    v44 = 0.98;
  }

  else
  {
    v44 = 1.0;
  }

  sub_26A8515A8();
  v46 = v45;
  v48 = v47;
  v49 = v80;
  sub_26A544EC8(v43, v80, &qword_2803B6360);
  v50 = v83;
  v51 = v49 + *(v83 + 36);
  *v51 = v44;
  *(v51 + 8) = v44;
  *(v51 + 16) = v46;
  *(v51 + 24) = v48;
  sub_26A84FAC8();
  v52 = sub_26A733D8C();
  v53 = sub_26A7343B0();
  v54 = v82;
  sub_26A850948();
  (*(v6 + 8))(v8, v5);
  sub_26A4D6FD8();
  v55 = v84;
  v56 = v85;
  (*(v84 + 16))(v81, v54, v85);
  v87 = v50;
  v88 = v5;
  v89 = v52;
  v90 = v53;
  swift_getOpaqueTypeConformance2();
  v57 = sub_26A851248();
  result = (*(v55 + 8))(v54, v56);
LABEL_12:
  *a2 = v57;
  return result;
}

uint64_t sub_26A733B6C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A733BA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_26A733C04(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A733CE0()
{
  result = qword_2803B6348;
  if (!qword_2803B6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6348);
  }

  return result;
}

unint64_t sub_26A733D38()
{
  result = qword_2803B6350;
  if (!qword_2803B6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6350);
  }

  return result;
}

unint64_t sub_26A733D8C()
{
  result = qword_2803B63B0;
  if (!qword_2803B63B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6368);
    sub_26A733E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63B0);
  }

  return result;
}

unint64_t sub_26A733E18()
{
  result = qword_2803B63B8;
  if (!qword_2803B63B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6360);
    sub_26A733EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63B8);
  }

  return result;
}

unint64_t sub_26A733EA4()
{
  result = qword_2803B63C0;
  if (!qword_2803B63C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6358);
    sub_26A733F5C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63C0);
  }

  return result;
}

unint64_t sub_26A733F5C()
{
  result = qword_2803B63C8;
  if (!qword_2803B63C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B63A8);
    sub_26A734014();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63C8);
  }

  return result;
}

unint64_t sub_26A734014()
{
  result = qword_2803B63D0;
  if (!qword_2803B63D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B63A0);
    sub_26A7340CC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63D0);
  }

  return result;
}

unint64_t sub_26A7340CC()
{
  result = qword_2803B63D8;
  if (!qword_2803B63D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6398);
    sub_26A734158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63D8);
  }

  return result;
}

unint64_t sub_26A734158()
{
  result = qword_2803B63E0;
  if (!qword_2803B63E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6378);
    sub_26A734210();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63E0);
  }

  return result;
}

unint64_t sub_26A734210()
{
  result = qword_2803B63E8;
  if (!qword_2803B63E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6390);
    sub_26A7342C8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63E8);
  }

  return result;
}

unint64_t sub_26A7342C8()
{
  result = qword_2803B63F0;
  if (!qword_2803B63F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6388);
    sub_26A7343B0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63F0);
  }

  return result;
}

unint64_t sub_26A7343B0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A7343F4()
{
  result = qword_2803B6410;
  if (!qword_2803B6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6410);
  }

  return result;
}

unint64_t sub_26A734448()
{
  result = qword_2803B6418;
  if (!qword_2803B6418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6378);
    sub_26A734158();
    sub_26A7343F4();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6418);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_80(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_26A734574(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26A852168();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void RFTextProperty.asPartialText()(uint64_t a1@<X8>)
{
  v7 = sub_26A7364C8(v1);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  if (!sub_26A734574(v7))
  {
    goto LABEL_20;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_4_70();
LABEL_6:
    OUTLINED_FUNCTION_9_50();
    v11 = sub_26A73662C(v2, &selRef_formatted_text, &qword_28157D850);
    if (!v11)
    {
      goto LABEL_21;
    }

    sub_26A734574(v11);
    OUTLINED_FUNCTION_9_50();
    if (v2 != 1)
    {
      goto LABEL_21;
    }

    v12 = sub_26A7364C8(v1);
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = v12;
    if (!sub_26A734574(v12))
    {
      goto LABEL_20;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_1_84();
    if (!v14)
    {
      __break(1u);
      goto LABEL_65;
    }

    v15 = *(v13 + 32);
    while (1)
    {
      OUTLINED_FUNCTION_9_50();
      v16 = sub_26A73662C(v2, &selRef_formatted_text, &qword_28157D850);
      if (v16)
      {
        v17 = v16;
        if (sub_26A734574(v16))
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
LABEL_65:
            OUTLINED_FUNCTION_4_70();
          }

          else
          {
            OUTLINED_FUNCTION_1_84();
            if (!v18)
            {
              __break(1u);
              return;
            }

            v19 = *(v17 + 32);
          }

          OUTLINED_FUNCTION_9_50();
          v20 = [v2 text_encapsulation];

          if (v20)
          {
            v2 = [v20 style];

            v5 = v2 == 2;
            goto LABEL_22;
          }
        }

        else
        {
LABEL_20:
        }
      }

LABEL_21:
      v5 = 0;
LABEL_22:
      v21 = sub_26A7364C8(v1);
      v8 = v21;
      v4 = &off_279CA3000;
      if (!v21)
      {
        goto LABEL_32;
      }

      if (!sub_26A734574(v21))
      {

LABEL_31:
        LOBYTE(v8) = 0;
        goto LABEL_32;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_4_70();
      }

      else
      {
        OUTLINED_FUNCTION_1_84();
        if (!v22)
        {
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v23 = *(v8 + 32);
      }

      OUTLINED_FUNCTION_9_50();
      v8 = [v2 show_more_on_tap];

      if (v8)
      {
        v24 = [v8 shows_without_truncation];

        if (v24)
        {
          LOBYTE(v8) = [v24 value];

          goto LABEL_32;
        }

        goto LABEL_31;
      }

LABEL_32:
      sub_26A734BFC(0, v67);
      OUTLINED_FUNCTION_10_45(__src);
      v25 = sub_26A7364C8(v1);
      v2 = v25;
      if (!v25)
      {
        goto LABEL_41;
      }

      if (!sub_26A734574(v25))
      {

LABEL_40:
        v2 = 0;
LABEL_41:
        v3 = 1;
        goto LABEL_42;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x26D6644E0](0, v2);
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v26 = *(v2 + 32);
      }

      v27 = v26;

      v28 = [v27 line_limit];

      if (!v28)
      {
        goto LABEL_40;
      }

      v2 = [v28 integerValue];

      v3 = 0;
LABEL_42:
      v29 = sub_26A7364C8(v1);
      if (!v29)
      {
        goto LABEL_50;
      }

      v1 = v29;
      if (!sub_26A734574(v29))
      {

        goto LABEL_50;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        goto LABEL_59;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *(v1 + 32);
        goto LABEL_47;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      OUTLINED_FUNCTION_4_70();
    }
  }

  OUTLINED_FUNCTION_1_84();
  if (v9)
  {
    v10 = *(v8 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_59:
  v30 = MEMORY[0x26D6644E0](0, v1);
LABEL_47:
  v31 = v30;

  v32 = [v31 v4[44]];

  if (v32)
  {
    v33 = sub_26A736538(v32);
    v35 = v34;
  }

  else
  {
LABEL_50:
    v33 = 0;
    v35 = 0;
  }

  KeyPath = swift_getKeyPath();
  v65 = 0;
  v37 = swift_getKeyPath();
  v64 = 0;
  v50 = swift_getKeyPath();
  v63 = 0;
  if (sub_26A7D18DC() < 1)
  {
    sub_26A4F5680(v67, &v52);
    sub_26A7D1500();
    v52 = v45;
    sub_26A4F5A04();
    v44 = sub_26A851248();
  }

  else
  {
    v38 = swift_getKeyPath();
    v58 = swift_getKeyPath();
    v59 = 0;
    swift_unknownObjectWeakInit();
    v49 = KeyPath;
    v39 = v37;
    v40 = v35;
    v41 = v2;
    v42 = v8;
    v8 = objc_allocWithZone(type metadata accessor for PopOverManager());
    sub_26A4F5680(v67, v51);
    [v8 init];
    v52 = swift_getKeyPath();
    v53 = 0;
    v54 = swift_getKeyPath();
    v55 = 0;
    v56 = v38;
    v57 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFC0);
    swift_allocObject();
    v60 = sub_26A84EBA8();
    OUTLINED_FUNCTION_10_45(v61);
    sub_26A51D158();
    LOBYTE(v8) = v42;
    v2 = v41;
    v35 = v40;
    v37 = v39;
    KeyPath = v49;
    v61[15] = sub_26A84F258();
    v61[16] = v43;
    sub_26A4F56DC(&v52, v51);
    sub_26A51D1B0();
    v44 = sub_26A851248();
    sub_26A4F5E34(&v52);
  }

  memcpy(&v62[7], __src, 0x78uLL);
  LOBYTE(v52) = v3;
  v46 = v65;
  v47 = v64;
  v48 = v63;
  *a1 = KeyPath;
  *(a1 + 8) = v46;
  *(a1 + 16) = v37;
  *(a1 + 24) = v47;
  *(a1 + 32) = v50;
  *(a1 + 40) = v48;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v44;
  *(a1 + 88) = 1;
  memcpy((a1 + 89), v62, 0x7FuLL);
  *(a1 + 216) = v2;
  *(a1 + 224) = v3;
  *(a1 + 232) = v33;
  *(a1 + 240) = v35;
  *(a1 + 248) = v5;
  *(a1 + 249) = v8;
}

uint64_t sub_26A734B9C()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A84F958();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

void *sub_26A734BFC@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v4 = sub_26A7364C8(v2);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v47 = sub_26A734574(v6);
  v45 = v6;
  if (v47)
  {
    v7 = 0;
    v8 = 0;
    v46 = v6 & 0xC000000000000001;
    v43 = v6 + 32;
    v44 = v6 & 0xFFFFFFFFFFFFFF8;
    v9 = v5;
    while (1)
    {
      if (v46)
      {
        v10 = MEMORY[0x26D6644E0](v8, v45);
      }

      else
      {
        if (v8 >= *(v44 + 16))
        {
          goto LABEL_67;
        }

        v10 = *(v43 + 8 * v8);
      }

      v11 = v10;
      v12 = __OFADD__(v8, 1);
      v13 = v8 + 1;
      if (v12)
      {
        break;
      }

      v14 = sub_26A589524(v10);
      if (v14)
      {
        v6 = v14;
      }

      else
      {
        v6 = v5;
      }

      if (v6 >> 62)
      {
        v3 = sub_26A852168();
      }

      else
      {
        v3 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v48 = v11;
      v49 = v13;
      if (v3)
      {
        if (v3 < 1)
        {
          goto LABEL_65;
        }

        v15 = 0;
LABEL_19:
        if ((v6 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x26D6644E0](v15, v6);
        }

        else
        {
          v16 = *(v6 + 32 + 8 * v15);
        }

        v17 = v16;
        if (a1)
        {
          v18 = [v16 font];
          if (v18)
          {
            v19 = v18;
            v20 = sub_26A5FA038();

            if (v20)
            {

              [v17 setFont_];
            }
          }

          v21 = [v17 color];
          if (v21)
          {

            [v17 setColor_];
          }
        }

        ++v15;
        v22 = sub_26A7CDD40(v7);
        v5 = v22;
        v23 = *(v22 + 16) + 1;
        v24 = 73;
        while (--v23)
        {
          v25 = *(v22 + v24);
          v24 += 48;
          if (v25 == 1)
          {
            goto LABEL_33;
          }
        }

        if (!sub_26A7D1C0C(v22))
        {
          goto LABEL_34;
        }

LABEL_33:
        v12 = __OFADD__(v7++, 1);
        if (v12)
        {
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          break;
        }

LABEL_34:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_53();
          sub_26A7A12A0();
          v9 = v27;
        }

        Kind = v9[1].Kind;
        if (Kind >= v9[1].Description >> 1)
        {
          sub_26A7A12A0();
          v9 = v28;
        }

        v9[1].Kind = Kind + 1;
        *(&v9[2].Kind + Kind) = v5;
        if (v15 != v3)
        {
          goto LABEL_19;
        }
      }

      v8 = v49;
      v5 = MEMORY[0x277D84F90];
      if (v49 == v47)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v9 = v5;
LABEL_43:

  v29 = 0;
  v30 = v9[1].Kind;
  v6 = MEMORY[0x277D84F90];
  v5 = &type metadata for FormattedTextModel.Run;
  while (v30 != v29)
  {
    if (v29 >= v9[1].Kind)
    {
      goto LABEL_60;
    }

    v31 = *(&v9[2].Kind + v29);
    v3 = *(v31 + 16);
    v32 = *(v6 + 16);
    if (__OFADD__(v32, v3))
    {
      goto LABEL_61;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v32 + v3 > *(v6 + 24) >> 1)
    {
      sub_26A7A1034();
      v6 = v33;
    }

    if (*(v31 + 16))
    {
      if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
      {
        goto LABEL_64;
      }

      swift_arrayInitWithCopy();

      if (v3)
      {
        v34 = *(v6 + 16);
        v12 = __OFADD__(v34, v3);
        v35 = v34 + v3;
        if (v12)
        {
          goto LABEL_66;
        }

        *(v6 + 16) = v35;
      }
    }

    else
    {

      if (v3)
      {
        goto LABEL_62;
      }
    }

    ++v29;
  }

  sub_26A736164();
  v5 = v36;
  v3 = v37;
  if (qword_2803A8BD0 != -1)
  {
LABEL_68:
    swift_once();
  }

  v38 = xmmword_2803B0080;
  v39 = byte_2803B0090;
  v40 = qword_2803B0098;
  sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);

  sub_26A7D193C(v6, v38, *(&v38 + 1), v39, v40, v5, v3, __src);
  return memcpy(a2, __src, 0x78uLL);
}

void sub_26A735084(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_26A734574(a1);
  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  v10 = MEMORY[0x277D84F90];
  while (v7 != v8)
  {
    sub_26A7364A4(v8, v9 == 0, a1);
    if (v9)
    {
      v11 = MEMORY[0x26D6644E0](v8, a1);
    }

    else
    {
      v11 = *(a1 + 8 * v8 + 32);
    }

    v2 = v11;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    sub_26A734BFC(0, __src);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_53();
      sub_26A7A1824();
      v10 = v12;
    }

    v3 = v10[2];
    v2 = v3 + 1;
    if (v3 >= v10[3] >> 1)
    {
      sub_26A7A1824();
      v10 = v13;
    }

    v10[2] = v2;
    memcpy(&v10[15 * v3 + 4], __src, 0x78uLL);
    ++v8;
  }

  v86 = v7;
  v87 = a1 & 0xC000000000000001;
  v88 = a1;
  v85 = a2;
  v14 = v10[2];
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v97[0] = MEMORY[0x277D84F90];
    sub_26A7DCE88(0, v14, 0);
    v15 = v97[0];
    v16 = (v10 + 4);
    v2 = 48;
    do
    {
      memcpy(__dst, v16, 0x78uLL);
      v17 = swift_allocObject();
      memmove((v17 + 16), v16, 0x78uLL);
      sub_26A4F5680(__dst, v89);
      v97[0] = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_26A7DCE88(v18 > 1, v19 + 1, 1);
        v2 = 48;
        v15 = v97[0];
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + 48 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = 0u;
      *(v20 + 56) = 0u;
      *(v20 + 72) = 1024;
      v16 += 120;
      --v14;
    }

    while (v14);
  }

  if (qword_2803A8BE0 != -1)
  {
    swift_once();
  }

  a2 = *(&xmmword_2803B00C0 + 1);
  v3 = xmmword_2803B00C0;
  v21 = byte_2803B00D0;
  v4 = qword_2803B00D8;
  v22 = v10[2];
  sub_26A4EF6C0(xmmword_2803B00C0, *(&xmmword_2803B00C0 + 1), byte_2803B00D0);

  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v25 = 144;
LABEL_20:
  v26 = v25 + 120 * v23;
  while (v22 != v23)
  {
    if (v23 >= v10[2])
    {
      goto LABEL_48;
    }

    v27 = v26 + 120;
    ++v23;
    v2 = *(v10 + v26);
    v26 += 120;
    if (v2)
    {
      v83 = v3;
      v84 = v25;
      v82 = v4;
      v28 = *(v10 + v27 - 128);

      v29 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_53();
        sub_26A7A110C();
        v24 = v32;
      }

      v30 = *(v24 + 16);
      v25 = v84;
      if (v30 >= *(v24 + 24) >> 1)
      {
        sub_26A7A110C();
        v25 = v84;
        v24 = v33;
      }

      *(v24 + 16) = v30 + 1;
      v31 = v24 + 16 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v2;
      v3 = v83;
      a2 = v29;
      v4 = v82;
      goto LABEL_20;
    }
  }

  __dst[0] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6420);
  sub_26A7366A8();
  v2 = sub_26A851718();
  v10 = v34;

  sub_26A7D193C(v15, v3, a2, v21, v4, v2, v10, v97);
  OUTLINED_FUNCTION_10_45(v95);
  v3 = v88;
  if (sub_26A734574(v88) != 1)
  {
    LOBYTE(v23) = 0;
    a2 = v87;
    if (v86)
    {
      goto LABEL_64;
    }

    v43 = 0;
    v44 = 0;
    v87 = 0;
    goto LABEL_46;
  }

  a2 = v87;
  if (!v86)
  {
    v43 = 0;
    v44 = 0;
    v87 = 0;
    LOBYTE(v23) = 0;
LABEL_46:
    LOBYTE(v4) = 1;
    goto LABEL_88;
  }

  if (v87)
  {
    goto LABEL_96;
  }

  OUTLINED_FUNCTION_1_84();
  if (!v35)
  {
    __break(1u);
    goto LABEL_98;
  }

  v36 = *(v88 + 32);
LABEL_34:
  v37 = sub_26A73662C(v36, &selRef_text_elements, &qword_28157D870);
  if (v37)
  {
    v38 = v37;
    if (sub_26A734574(v37))
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        goto LABEL_102;
      }

      OUTLINED_FUNCTION_6_56();
      if (v39)
      {
        v40 = *(v38 + 32);
        goto LABEL_39;
      }

      __break(1u);
      goto LABEL_104;
    }

    goto LABEL_62;
  }

  while (1)
  {
LABEL_63:
    LOBYTE(v23) = 0;
LABEL_64:
    if (a2)
    {
      OUTLINED_FUNCTION_4_70();
    }

    else
    {
      OUTLINED_FUNCTION_1_84();
      if (!v54)
      {
        __break(1u);
        goto LABEL_94;
      }

      v55 = *(v3 + 32);
    }

    v56 = sub_26A73662C(v55, &selRef_text_elements, &qword_28157D870);
    if (!v56)
    {
      goto LABEL_75;
    }

    v57 = v56;
    if (!sub_26A734574(v56))
    {

      goto LABEL_75;
    }

    if ((v57 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_6_56();
      if (v58)
      {
        v59 = *(v57 + 32);
        goto LABEL_72;
      }

      __break(1u);
LABEL_100:
      OUTLINED_FUNCTION_8_54();
LABEL_84:
      OUTLINED_FUNCTION_5_42();
      v67 = [v2 show_more_on_tap];

      if (!v67)
      {
        goto LABEL_87;
      }

      v43 = sub_26A736538(v67);
      v44 = v68;
LABEL_88:
      KeyPath = swift_getKeyPath();
      v94 = 0;
      v70 = swift_getKeyPath();
      v93 = 0;
      v71 = swift_getKeyPath();
      v92 = 0;
      if (sub_26A7D18DC() < 1)
      {
        sub_26A4F5680(v97, __dst);
        sub_26A7D1500();
        __dst[0] = v78;
        sub_26A4F5A04();
        v77 = sub_26A851248();
      }

      else
      {
        v72 = swift_getKeyPath();
        __dst[6] = swift_getKeyPath();
        BYTE1(__dst[7]) = 0;
        swift_unknownObjectWeakInit();
        v73 = KeyPath;
        v74 = v43;
        v75 = v23;
        v23 = objc_allocWithZone(type metadata accessor for PopOverManager());
        sub_26A4F5680(v97, v89);
        [v23 init];
        __dst[0] = swift_getKeyPath();
        LOBYTE(__dst[1]) = 0;
        __dst[2] = swift_getKeyPath();
        LOBYTE(__dst[3]) = 0;
        __dst[4] = v72;
        LOWORD(__dst[5]) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFC0);
        swift_allocObject();
        __dst[9] = sub_26A84EBA8();
        OUTLINED_FUNCTION_10_45(&__dst[10]);
        sub_26A51D158();
        LOBYTE(v23) = v75;
        v43 = v74;
        KeyPath = v73;
        __dst[25] = sub_26A84F258();
        __dst[26] = v76;
        sub_26A4F56DC(__dst, v89);
        sub_26A51D1B0();
        v77 = sub_26A851248();
        sub_26A4F5E34(__dst);
      }

      memcpy(&v91[7], v95, 0x78uLL);
      LOBYTE(__dst[0]) = v4;
      v79 = v94;
      v80 = v93;
      v81 = v92;
      *v85 = KeyPath;
      *(v85 + 8) = v79;
      *(v85 + 16) = v70;
      *(v85 + 24) = v80;
      *(v85 + 32) = v71;
      *(v85 + 40) = v81;
      *(v85 + 48) = 0u;
      *(v85 + 64) = 0u;
      *(v85 + 80) = v77;
      *(v85 + 88) = 1;
      memcpy((v85 + 89), v91, 0x7FuLL);
      *(v85 + 216) = v87;
      *(v85 + 224) = v4;
      *(v85 + 232) = v43;
      *(v85 + 240) = v44;
      *(v85 + 248) = v23;
      *(v85 + 249) = 0;
      return;
    }

LABEL_98:
    OUTLINED_FUNCTION_8_54();
LABEL_72:
    OUTLINED_FUNCTION_5_42();
    v60 = [v2 line_limit];

    if (v60)
    {
      v10 = [v60 integerValue];

      LOBYTE(v4) = 0;
      goto LABEL_76;
    }

LABEL_75:
    v10 = 0;
    LOBYTE(v4) = 1;
LABEL_76:
    if (!a2)
    {
      OUTLINED_FUNCTION_1_84();
      if (v61)
      {
        v62 = *(v3 + 32);
        goto LABEL_79;
      }

      __break(1u);
LABEL_96:
      OUTLINED_FUNCTION_4_70();
      goto LABEL_34;
    }

LABEL_94:
    OUTLINED_FUNCTION_4_70();
LABEL_79:
    v63 = sub_26A73662C(v62, &selRef_text_elements, &qword_28157D870);
    v87 = v10;
    if (!v63)
    {
      goto LABEL_87;
    }

    v64 = v63;
    if (!sub_26A734574(v63))
    {

LABEL_87:
      v43 = 0;
      v44 = 0;
      goto LABEL_88;
    }

    if ((v64 & 0xC000000000000001) != 0)
    {
      goto LABEL_100;
    }

    OUTLINED_FUNCTION_6_56();
    if (v65)
    {
      v66 = *(v64 + 32);
      goto LABEL_84;
    }

    __break(1u);
LABEL_102:
    OUTLINED_FUNCTION_8_54();
LABEL_39:
    OUTLINED_FUNCTION_5_42();
    v41 = sub_26A73662C(v2, &selRef_formatted_text, &qword_28157D850);
    if (v41)
    {
      sub_26A734574(v41);
      OUTLINED_FUNCTION_5_42();
      if (v2 == 1)
      {
        if (a2)
        {
          OUTLINED_FUNCTION_4_70();
        }

        else
        {
LABEL_49:
          v42 = *(v3 + 32);
        }

        v45 = sub_26A73662C(v42, &selRef_text_elements, &qword_28157D870);
        if (v45)
        {
          break;
        }
      }
    }
  }

  v46 = v45;
  if (!sub_26A734574(v45))
  {
    goto LABEL_62;
  }

  if ((v46 & 0xC000000000000001) == 0)
  {
    OUTLINED_FUNCTION_6_56();
    if (v47)
    {
      v48 = *(v46 + 32);
      goto LABEL_55;
    }

    __break(1u);
LABEL_106:
    OUTLINED_FUNCTION_8_54();
LABEL_60:
    OUTLINED_FUNCTION_5_42();
    v53 = [v2 text_encapsulation];

    if (v53)
    {
      v2 = [v53 style];

      LOBYTE(v23) = v2 == 2;
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_104:
  OUTLINED_FUNCTION_8_54();
LABEL_55:
  OUTLINED_FUNCTION_5_42();
  v49 = sub_26A73662C(v2, &selRef_formatted_text, &qword_28157D850);
  if (!v49)
  {
    goto LABEL_63;
  }

  v50 = v49;
  if (!sub_26A734574(v49))
  {
LABEL_62:

    goto LABEL_63;
  }

  if ((v50 & 0xC000000000000001) != 0)
  {
    goto LABEL_106;
  }

  OUTLINED_FUNCTION_6_56();
  if (v51)
  {
    v52 = *(v50 + 32);
    goto LABEL_60;
  }

  __break(1u);
}

uint64_t sub_26A735A38()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A5D7364();
  *v0 = result;
  return result;
}

uint64_t sub_26A735A8C()
{
  v1 = sub_26A7364C8(v0);
  if (!v1)
  {
    goto LABEL_47;
  }

  v2 = v1;
  if (!sub_26A734574(v1))
  {
    goto LABEL_46;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_59:
    OUTLINED_FUNCTION_4_70();
  }

  else
  {
    OUTLINED_FUNCTION_1_84();
    if (!v3)
    {
      __break(1u);
      goto LABEL_61;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  v6 = sub_26A73662C(v5, &selRef_formatted_text, &qword_28157D850);
  if (!v6)
  {
LABEL_47:
    RFTextProperty.asPartialText()(v30);
    sub_26A4EC4B4();
    return sub_26A851248();
  }

  v2 = v6;
  if (sub_26A734574(v6) < 2)
  {
LABEL_46:

    goto LABEL_47;
  }

  v29 = MEMORY[0x277D84F90];
  v7 = sub_26A734574(v2);
  if (!v7)
  {

    v2 = 0;
    v11 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v8 = v7;
  if (v7 < 1)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    sub_26A851B08();
    goto LABEL_51;
  }

  v9 = 0;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26D6644E0](v9, v2);
    }

    else
    {
      v12 = *(v2 + 8 * v9 + 32);
    }

    v13 = v12;
    v14 = sub_26A58945C(v12);
    if (v15)
    {
      if (v14 == 10 && v15 == 0xE100000000000000)
      {

LABEL_34:
        if (!v10)
        {
          goto LABEL_40;
        }

        v26 = v10;
        MEMORY[0x26D663CE0]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26A851B08();
        }

        sub_26A851B28();

        v10 = 0;
        v11 = v29;
        goto LABEL_41;
      }

      v17 = sub_26A852598();

      if (v17)
      {
        goto LABEL_34;
      }
    }

    if (!v10)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D4C178]) init];
      v18 = [objc_allocWithZone(MEMORY[0x277D4C168]) init];
      sub_26A7365A8(MEMORY[0x277D84F90], v18, &qword_28157D850, 0x277D4BFE0, &selRef_setFormatted_text_);
      sub_26A4EC5B0(0, &qword_28157D7D0);
      v19 = sub_26A851FD8();
      [v18 setLine:v19 limit:?];

      if (!v10)
      {
        goto LABEL_39;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE150);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_26A8571A0;
      *(v20 + 32) = v18;
      sub_26A7365A8(v20, v10, &qword_28157D870, 0x277D4C168, &selRef_setText_elements_);
    }

    v21 = sub_26A73662C(v10, &selRef_text_elements, &qword_28157D870);
    if (!v21)
    {
      goto LABEL_40;
    }

    v22 = v21;
    v23 = v21 & 0xFFFFFFFFFFFFFF8;
    if (v21 >> 62)
    {
      if (sub_26A852168())
      {
LABEL_26:
        if ((v22 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x26D6644E0](0, v22);
        }

        else
        {
          if (!*(v23 + 16))
          {
            __break(1u);
            goto LABEL_59;
          }

          v24 = *(v22 + 32);
        }

        v18 = v24;

        v30[0] = sub_26A589524(v18);
        if (!v30[0])
        {
          [v18 setFormatted:0 text:?];
LABEL_39:

          goto LABEL_41;
        }

        v13 = v13;
        MEMORY[0x26D663CE0]();
        if (*((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26A851B08();
        }

        sub_26A851B28();
        sub_26A4EC5B0(0, &qword_28157D850);
        v25 = sub_26A851A88();

        [v18 setFormatted:v25 text:?];

LABEL_40:
        goto LABEL_41;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_41:
    ++v9;
  }

  while (v8 != v9);

  if (!v10)
  {
    v2 = 0;
    goto LABEL_54;
  }

  v2 = v10;
  MEMORY[0x26D663CE0]();
  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_62;
  }

LABEL_51:
  sub_26A851B28();
  v11 = v29;
LABEL_54:
  if (sub_26A734574(v11) < 2)
  {

    RFTextProperty.asPartialText()(v30);
    sub_26A4EC4B4();
  }

  else
  {
    sub_26A51B744(v11, v30);
    sub_26A54AAEC();
    v30[0] = sub_26A851248();
  }

  v27 = sub_26A851248();

  return v27;
}

uint64_t sub_26A73602C()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.sfCommands.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A736080()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A5DA99C();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A7360CC()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A5DA9DC();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A736118()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A6668EC();
  return OUTLINED_FUNCTION_5_7(v0);
}

void sub_26A736164()
{
  v1 = sub_26A7364C8(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_26A734574(v1);
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v7 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_3:
    for (i = v4; ; ++i)
    {
      if (v3 == i)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6420);
        sub_26A7366A8();
        sub_26A851718();

        return;
      }

      if (v5)
      {
        v9 = MEMORY[0x26D6644E0](i, v2);
      }

      else
      {
        if (i >= *(v7 + 16))
        {
          goto LABEL_33;
        }

        v9 = *(v2 + 8 * i + 32);
      }

      v10 = v9;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v11 = sub_26A589524(v9);
      if (v11)
      {
        v12 = v11;
        v32 = v7;
        v33 = v2;
        v34 = v5;
        v35 = v3;
        v13 = sub_26A734574(v11);
        v14 = 0;
        v36 = MEMORY[0x277D84F90];
        while (v13 != v14)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x26D6644E0](v14, v12);
          }

          else
          {
            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_34;
          }

          v18 = sub_26A58945C(v15);
          v20 = v19;

          ++v14;
          if (v20)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_26A7A110C();
              v36 = v23;
            }

            v21 = *(v36 + 16);
            if (v21 >= *(v36 + 24) >> 1)
            {
              sub_26A7A110C();
              v36 = v24;
            }

            *(v36 + 16) = v21 + 1;
            v22 = v36 + 16 * v21;
            *(v22 + 32) = v18;
            *(v22 + 40) = v20;
            v14 = v17;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6420);
        sub_26A7366A8();
        v25 = sub_26A851718();
        v27 = v26;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7A110C();
          v6 = v30;
        }

        v7 = v32;
        v2 = v33;
        v28 = *(v6 + 16);
        if (v28 >= *(v6 + 24) >> 1)
        {
          sub_26A7A110C();
          v6 = v31;
        }

        *(v6 + 16) = v28 + 1;
        v29 = v6 + 16 * v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v27;
        v5 = v34;
        v3 = v35;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

unint64_t sub_26A7364A4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26A7364C8(void *a1)
{
  v1 = [a1 text_elements];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26A4EC5B0(0, &qword_28157D870);
  v3 = sub_26A851A98();

  return v3;
}

uint64_t sub_26A736538(void *a1)
{
  v2 = [a1 affordanceLabel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A8517B8();

  return v3;
}

void sub_26A7365A8(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, SEL *a5)
{
  sub_26A4EC5B0(0, a3);
  v7 = sub_26A851A88();

  [a2 *a5];
}

uint64_t sub_26A73662C(void *a1, SEL *a2, unint64_t *a3)
{
  v5 = [a1 *a2];

  if (!v5)
  {
    return 0;
  }

  sub_26A4EC5B0(0, a3);
  v6 = sub_26A851A98();

  return v6;
}

unint64_t sub_26A7366A8()
{
  result = qword_2803B6428;
  if (!qword_2803B6428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6428);
  }

  return result;
}

void OUTLINED_FUNCTION_4_70()
{

  JUMPOUT(0x26D6644E0);
}

void OUTLINED_FUNCTION_8_54()
{

  JUMPOUT(0x26D6644E0);
}

uint64_t OUTLINED_FUNCTION_9_50()
{
}

void *OUTLINED_FUNCTION_10_45(void *a1)
{

  return memcpy(a1, (v1 - 208), 0x78uLL);
}

uint64_t type metadata accessor for TableRowView()
{
  result = qword_2803B6430;
  if (!qword_2803B6430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A736800()
{
  sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
  if (v0 <= 0x3F)
  {
    sub_26A54950C();
    if (v1 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ActionHandler(319);
        if (v3 <= 0x3F)
        {
          sub_26A6260E8();
          if (v4 <= 0x3F)
          {
            sub_26A84E4B8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void *sub_26A736938@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t *)@<X2>, uint64_t a4@<X4>, char a5@<W5>, void *a6@<X8>)
{
  v14 = a4;
  v15 = a5 & 1;
  if (a2)
  {
    v12 = a5 & 1;
    v11 = 1;
    v8 = a4;
    v9 = a5 & 1;
    v10 = 1;
  }

  else
  {
    v13 = a1;
    a3(&v8, &v14, &v13);
    v12 = 0;
    v10 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE10);
  sub_26A549B04();
  sub_26A84FDF8();
  return memcpy(a6, __src, 0x41uLL);
}

uint64_t sub_26A736A00()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  return v8;
}

void sub_26A736B30()
{
  OUTLINED_FUNCTION_28_0();
  v31 = v2;
  v32 = v1;
  v4 = v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B65A0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v27 = &v27 - v6;
  sub_26A84F3A8();
  OUTLINED_FUNCTION_15();
  v28 = v8;
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  v12 = sub_26A84E4A8();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE60);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  if (*(v0 + 16))
  {

    sub_26A531490(v4);
    v23 = v22;

    v24 = *(sub_26A84E468() + 16);

    if (v23 >= v24)
    {
      (*(v14 + 104))(v18, *MEMORY[0x277D63800], v12);
      type metadata accessor for TableRowView();

      goto LABEL_7;
    }

    v25 = sub_26A84E468();
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v25 + 16))
    {
      (*(v14 + 16))(v18, v25 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v23, v12);

      type metadata accessor for TableRowView();
LABEL_7:
      sub_26A72003C(v11);
      v26 = sub_26A736A00();
      sub_26A5314D0(v18, v11, v26, v21);

      (*(v28 + 8))(v11, v29);
      (*(v14 + 8))(v18, v12);
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A549E10();
      sub_26A84FDF8();
      sub_26A5DFFA0(v21, &qword_2803ACE60);
      OUTLINED_FUNCTION_27_0();
      return;
    }

    __break(1u);
  }

  type metadata accessor for TableState();
  sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState);
  sub_26A84F668();
  __break(1u);
}

void sub_26A736EEC()
{
  OUTLINED_FUNCTION_28_0();
  v40 = v1;
  v38 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160);
  v9 = OUTLINED_FUNCTION_79(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for VisualElementView();
  v16 = OUTLINED_FUNCTION_79(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v39 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  OUTLINED_FUNCTION_79(v19);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6440) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v26 = &v37 - v25;
  type metadata accessor for TableRowView();
  sub_26A84E478();
  v42 = v0;
  sub_26A738440(v22, sub_26A739D08, &v41, v26);
  sub_26A5DFFA0(v22, &qword_2803B3800);
  v26[*(v23 + 44)] = 65;
  sub_26A84E438();
  v27 = sub_26A736A00();
  VRXIdiom.idiom.getter(v27, v7);
  sub_26A851AB8();

  (*(v3 + 8))(v7, v38);
  v28 = sub_26A84BA88();
  if (__swift_getEnumTagSinglePayload(v11, 1, v28) == 1)
  {
    OUTLINED_FUNCTION_4_11();
    (*(v29 + 104))(v14);
    if (__swift_getEnumTagSinglePayload(v11, 1, v28) != 1)
    {
      sub_26A5DFFA0(v11, &qword_2803AD160);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_11();
    (*(v30 + 32))(v14, v11, v28);
  }

  __swift_storeEnumTagSinglePayload(v14, 0, 1, v28);
  sub_26A4D7EA8();
  v31 = sub_26A851448();
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6448);
  v35 = v40 + *(v34 + 36);
  sub_26A739D74();
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6450) + 36));
  *v36 = v31;
  v36[1] = v33;
  sub_26A4B4F18();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7372E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26A84FA78();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64F8);
  return sub_26A737338(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_26A737338@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for TableRowView();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6500);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(*(v12 + OBJC_IVAR____TtC9SnippetUI10TableState_columns) + 16);
    v23 = 0;
    v24 = v13;
    swift_getKeyPath();
    sub_26A739D10(a1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    swift_allocObject();
    sub_26A739D74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6508);
    sub_26A4EEF40();
    sub_26A73A660();
    sub_26A8512F8();

    sub_26A52F9CC();
    v15 = v14;

    v16 = *(v6 + 16);
    v16(v8, v11, v5);
    v17 = v22;
    v16(v22, v8, v5);
    v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6568) + 48)];
    *v18 = 0;
    v18[8] = 0;
    v18[9] = (v15 & 1) == 0;
    v19 = *(v6 + 8);
    v19(v11, v5);
    return (v19)(v8, v5);
  }

  else
  {
    type metadata accessor for TableState();
    sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState);
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A7376A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = type metadata accessor for TableRowView();
  v53 = *(v5 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v5);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6530);
  MEMORY[0x28223BE20](v64);
  v62 = v52 - v7;
  v63 = sub_26A84DFD8();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6570);
  MEMORY[0x28223BE20](v56);
  v58 = (v52 - v9);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6578);
  MEMORY[0x28223BE20](v54);
  v11 = v52 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6520);
  MEMORY[0x28223BE20](v57);
  v55 = v52 - v12;
  v13 = sub_26A84E048();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = *a1;
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = *(v18 + OBJC_IVAR____TtC9SnippetUI10TableState_columns);
  if (v19 >= *(v20 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    type metadata accessor for TableState();
    sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState);
    result = sub_26A84F668();
    __break(1u);
    return result;
  }

  (*(v14 + 16))(v17, v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, v13, v15);
  v21 = (*(v14 + 88))(v17, v13);
  if (v21 == *MEMORY[0x277D63670])
  {
    v52[0] = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52[1] = v11;
    (*(v14 + 96))(v17, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE88);
    (*(v61 + 32))();
    v22 = v62;
    sub_26A736B30();

    v23 = sub_26A52F59C();

    if (v19 < *(v23 + 16))
    {

      sub_26A61AE88();
      sub_26A84F028();
      v24 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6540) + 36)];
      v25 = *(&__src[5] + 8);
      *v24 = *(&__src[4] + 8);
      *(v24 + 1) = v25;
      *(v24 + 2) = *(&__src[6] + 8);
      v26 = &v22[*(v64 + 36)];
      sub_26A736B30();
      sub_26A739D10(a2, v52[0]);
      v27 = (v6 + ((*(v53 + 80) + 16) & ~*(v53 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      sub_26A739D74();
      *(v28 + v27) = v19;
      v29 = sub_26A851448();
      v31 = v30;
      v32 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6580) + 36)];
      *v32 = sub_26A8027E0;
      v32[1] = 0;
      v32[2] = v29;
      v32[3] = v31;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_26A73A9A8;
      *(v33 + 24) = v28;
      v34 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6588) + 36)];
      *v34 = sub_26A5BECF0;
      v34[1] = v33;
      *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6590) + 36)] = 0;

      sub_26A52F688();

      sub_26A851448();
      sub_26A84F028();
      v35 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6598) + 36)];
      v36 = __src[1];
      *v35 = __src[0];
      *(v35 + 1) = v36;
      *(v35 + 2) = __src[2];
      v37 = sub_26A851448();
      v39 = v38;
      v40 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6560) + 36)];
      *v40 = v37;
      v40[1] = v39;
      v41 = v62;
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE00);
      sub_26A549A78();
      sub_26A73A798();
      v42 = v55;
      sub_26A84FDF8();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
      sub_26A73A70C();
      sub_26A549EDC(&qword_28157FDC8, &qword_2803ACE68);
      sub_26A84FDF8();
      sub_26A5DFFA0(v42, &qword_2803B6520);
      sub_26A5DFFA0(v41, &qword_2803B6530);
      (*(v61 + 8))(v60, v63);
      v43 = sub_26A84DFB8();
      return (*(*(v43 - 8) + 8))(v17, v43);
    }

    goto LABEL_12;
  }

  if (v21 == *MEMORY[0x277D63678])
  {

    sub_26A52F9CC();
    v46 = v45;
    v48 = v47;

    MEMORY[0x28223BE20](v49);
    v52[-2] = a2;
    sub_26A736938(v46, v48 & 1, sub_26A73AA44, 0, 0, __src);
    memcpy(v11, __src, 0x41uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE00);
    sub_26A549A78();
    sub_26A73A798();
    v50 = v55;
    sub_26A84FDF8();
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
    sub_26A73A70C();
    sub_26A549EDC(&qword_28157FDC8, &qword_2803ACE68);
    sub_26A84FDF8();
    return sub_26A5DFFA0(v50, &qword_2803B6520);
  }

  else
  {
    v51 = v58;
    *v58 = &sub_26A7383F0;
    v51[1] = 0;
    v51[2] = 0;
    v51[3] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
    sub_26A73A70C();
    sub_26A549EDC(&qword_28157FDC8, &qword_2803ACE68);
    sub_26A84FDF8();
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_26A7381F0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16))
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *a2;

    v8 = sub_26A52F59C();

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *(v8 + 16))
    {

      sub_26A851448();
      result = sub_26A84F028();
      *a4 = v5;
      *(a4 + 8) = v6;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = v12;
      *(a4 + 40) = v13;
      *(a4 + 48) = v14;
      return result;
    }

    __break(1u);
  }

  type metadata accessor for TableState();
  sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState);
  result = sub_26A84F668();
  __break(1u);
  return result;
}

uint64_t sub_26A738338(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 16))
  {

    sub_26A530244(a2, a3);
  }

  else
  {
    type metadata accessor for TableState();
    sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState);
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A738440@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a2;
  v65 = a3;
  v62 = a1;
  v72 = a4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6458);
  MEMORY[0x28223BE20](v71);
  v63 = &v48 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6460);
  MEMORY[0x28223BE20](v67);
  v70 = &v48 - v6;
  v69 = sub_26A84F588();
  v60 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v58 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TableRowView();
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v52 = v9;
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6468);
  v55 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v54 = &v48 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6470);
  v59 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v56 = &v48 - v11;
  v12 = sub_26A84B058();
  v61 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v50 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v48 - v24;
  type metadata accessor for ActionHandler(0);
  v57 = v4;
  sub_26A4D7E54();
  v26 = type metadata accessor for StandardActionHandler(0);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    v27 = sub_26A5DFFA0(v25, &qword_2803B3910);
LABEL_7:
    v32 = v63;
    v64(v27);
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    v33 = sub_26A4DBCC8(&qword_2803B6478, &qword_2803B6468);
    v34 = sub_26A73A960(&qword_28157FD68, MEMORY[0x277CDDB18]);
    v73 = v66;
    v74 = v69;
    v75 = v33;
    v76 = v34;
    swift_getOpaqueTypeConformance2();
    sub_26A4DBCC8(&qword_2803B6480, &qword_2803B6458);
    sub_26A84FDF8();
    return sub_26A5DFFA0(v32, &qword_2803B6458);
  }

  v28 = v62;
  sub_26A4D7E54();
  v29 = sub_26A84BAB8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v29) == 1)
  {
    sub_26A5DFFA0(v19, &qword_2803B3800);
    v30 = sub_26A84E278();
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v30);
LABEL_6:
    sub_26A5DFFA0(v22, &qword_2803B38C0);
    v27 = sub_26A592630(v25);
    goto LABEL_7;
  }

  VRXIdiom.idiom.getter(*(v25 + 1), v14);
  sub_26A84BAA8();
  (*(v61 + 8))(v14, v12);
  (*(*(v29 - 8) + 8))(v19, v29);
  v31 = sub_26A84E278();
  if (__swift_getEnumTagSinglePayload(v22, 1, v31) == 1)
  {
    goto LABEL_6;
  }

  sub_26A5DFFA0(v22, &qword_2803B38C0);
  sub_26A592630(v25);
  v36 = v57;
  sub_26A739D10(v57, v53);
  sub_26A4D7E54();
  swift_allocObject();
  sub_26A739D74();
  v37 = sub_26A4D7EA8();
  MEMORY[0x28223BE20](v37);
  *(&v48 - 4) = v36;
  *(&v48 - 3) = v28;
  v38 = v65;
  *(&v48 - 2) = v64;
  *(&v48 - 1) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6488);
  sub_26A739DEC();
  v39 = v54;
  sub_26A8510D8();
  v40 = v58;
  sub_26A84F578();
  v41 = sub_26A4DBCC8(&qword_2803B6478, &qword_2803B6468);
  v42 = sub_26A73A960(&qword_28157FD68, MEMORY[0x277CDDB18]);
  v43 = v56;
  v44 = v66;
  v45 = v69;
  sub_26A850978();
  (*(v60 + 8))(v40, v45);
  (*(v55 + 8))(v39, v44);
  v46 = v59;
  v47 = v68;
  (*(v59 + 16))(v70, v43, v68);
  swift_storeEnumTagMultiPayload();
  v73 = v44;
  v74 = v45;
  v75 = v41;
  v76 = v42;
  swift_getOpaqueTypeConformance2();
  sub_26A4DBCC8(&qword_2803B6480, &qword_2803B6458);
  sub_26A84FDF8();
  return (*(v46 + 8))(v43, v47);
}

uint64_t sub_26A738F08(uint64_t a1, uint64_t a2)
{
  v8[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v8[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for TableRowView();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for ActionTapThrottler();
  sub_26A73A960(&qword_2803B1140, type metadata accessor for ActionTapThrottler);
  sub_26A84EEF8();
  sub_26A739D10(a1, v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26A4D7E54();
  v6 = swift_allocObject();
  sub_26A739D74();
  sub_26A4D7EA8();
  sub_26A80B4C4(sub_26A73A28C, v6);
}

uint64_t sub_26A73917C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5[-v1];
  type metadata accessor for TableRowView();
  type metadata accessor for ActionHandler(0);
  sub_26A4D7E54();
  v3 = type metadata accessor for StandardActionHandler(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_26A5DFFA0(v2, &qword_2803B3910);
  }

  v5[15] = 3;
  StandardActionHandler.perform(_:interactionType:)();
  return sub_26A592630(v2);
}

uint64_t sub_26A739294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_26A84FA78();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64A8);
  sub_26A73932C(a1, a2, a3, a4, a5 + *(v10 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6488);
  *(a5 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26A73932C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v64 = a3;
  v61 = a2;
  v69 = a5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64B0);
  MEMORY[0x28223BE20](v68);
  v62 = &v56 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64B8);
  MEMORY[0x28223BE20](v65);
  v67 = &v56 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64C0);
  MEMORY[0x28223BE20](v66);
  v60 = &v56 - v8;
  v9 = type metadata accessor for TableRowView();
  v58 = *(v9 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6458);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v59 = &v56 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v56 - v20;
  type metadata accessor for ActionHandler(0);
  sub_26A4D7E54();
  v22 = type metadata accessor for StandardActionHandler(0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    v23 = sub_26A5DFFA0(v21, &qword_2803B3910);
  }

  else
  {
    StandardActionHandler.isNavigation(_:)();
    v25 = v24;
    v23 = sub_26A592630(v21);
    if (v25)
    {
      v64(v23);
      v26 = sub_26A850F08();
      v27 = sub_26A850298();
      sub_26A84ED48();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = sub_26A850E88();
      KeyPath = swift_getKeyPath();
      v57 = v18;
      v38 = KeyPath;
      LOBYTE(v85[0]) = 0;
      sub_26A739D10(a1, &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v39 = swift_allocObject();
      sub_26A739D74();
      v40 = sub_26A851448();
      v42 = v41;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_26A739ED0;
      *(v43 + 24) = v39;
      v71[0] = v26;
      LOBYTE(v71[1]) = v27;
      v71[2] = v29;
      v71[3] = v31;
      v71[4] = v33;
      v71[5] = v35;
      LOBYTE(v71[6]) = 0;
      v71[7] = v38;
      v71[8] = v36;
      v71[9] = sub_26A8027E0;
      v71[10] = 0;
      v71[11] = v40;
      v71[12] = v42;
      memcpy(__dst, v71, 0x68uLL);
      v72 = v26;
      v73 = v27;
      v74 = v29;
      v75 = v31;
      v76 = v33;
      v77 = v35;
      v78 = 0;
      v79 = v38;
      v80 = v36;
      v81 = sub_26A8027E0;
      v82 = 0;
      v83 = v40;
      v84 = v42;
      sub_26A4D7E54();
      sub_26A5DFFA0(&v72, &qword_2803B64E0);
      memcpy(v85, __dst, 0x68uLL);
      v85[13] = sub_26A52E998;
      v85[14] = v43;
      v44 = v59;
      sub_26A4D7E54();
      memcpy(v70, v85, sizeof(v70));
      v45 = v60;
      sub_26A4D7E54();
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64E8) + 48);
      memcpy(v86, v70, sizeof(v86));
      memcpy((v45 + v46), v70, 0x78uLL);
      memcpy(__dst, v70, 0x78uLL);
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A5DFFA0(__dst, &qword_2803B64F0);
      sub_26A5DFFA0(v44, &qword_2803B6458);
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A4DBCC8(&qword_2803B64D0, &qword_2803B64C0);
      sub_26A4DBCC8(&qword_2803B64D8, &qword_2803B64B0);
      sub_26A84FDF8();
      sub_26A5DFFA0(v85, &qword_2803B64F0);
      sub_26A5DFFA0(v45, &qword_2803B64C0);
      v47 = v57;
      return sub_26A5DFFA0(v47, &qword_2803B6458);
    }
  }

  v64(v23);
  if (*(a1 + 16))
  {

    sub_26A52F6B0();

    sub_26A851448();
    sub_26A84F028();
    v63 = __dst[0];
    v61 = __dst[2];
    v48 = __dst[4];
    v49 = __dst[5];
    v86[0] = 1;
    LOBYTE(v85[0]) = __dst[1];
    v70[0] = __dst[3];
    sub_26A4D7E54();
    v64 = v13;
    v50 = v86[0];
    v51 = v85[0];
    v52 = v70[0];
    v53 = v62;
    sub_26A4D7E54();
    v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64C8) + 48);
    *v54 = 0;
    *(v54 + 8) = v50;
    *(v54 + 16) = v63;
    *(v54 + 24) = v51;
    *(v54 + 32) = v61;
    *(v54 + 40) = v52;
    *(v54 + 48) = v48;
    *(v54 + 56) = v49;
    sub_26A5DFFA0(v18, &qword_2803B6458);
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4DBCC8(&qword_2803B64D0, &qword_2803B64C0);
    sub_26A4DBCC8(&qword_2803B64D8, &qword_2803B64B0);
    sub_26A84FDF8();
    sub_26A5DFFA0(v53, &qword_2803B64B0);
    v47 = v64;
    return sub_26A5DFFA0(v47, &qword_2803B6458);
  }

  type metadata accessor for TableState();
  sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState);
  result = sub_26A84F668();
  __break(1u);
  return result;
}

uint64_t sub_26A739C54(uint64_t a1)
{
  if (*(a1 + 16))
  {

    sub_26A52F71C();
  }

  else
  {
    type metadata accessor for TableState();
    sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState);
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A739D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A739D74()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A739DEC()
{
  result = qword_2803B6490;
  if (!qword_2803B6490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6488);
    sub_26A4DBCC8(&qword_2803B6498, &qword_2803B64A0);
    sub_26A4DBCC8(&qword_2803AE3F8, &qword_2803AE400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6490);
  }

  return result;
}

uint64_t sub_26A739ED0()
{
  v1 = type metadata accessor for TableRowView();
  OUTLINED_FUNCTION_79(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_26A739C54(v3);
}

uint64_t objectdestroyTm_26()
{
  type metadata accessor for TableRowView();
  OUTLINED_FUNCTION_37_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  OUTLINED_FUNCTION_2_5(v6);
  v8 = *(v7 + 80);
  v9 = v1 + v3;
  sub_26A49035C(*(v1 + v3), *(v1 + v3 + 8));

  v10 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_1_4();
    (*(v11 + 8))(v9 + v10);
  }

  else
  {
  }

  v12 = v3 + v5;
  v13 = v9 + *(v0 + 28);
  v14 = OUTLINED_FUNCTION_8_55();
  v15 = *(v14 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v13 + v15, 1, v5))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v16 + 8))(v13 + v15, v5);
    }
  }

  else
  {
  }

  v17 = v12 + v8;
  OUTLINED_FUNCTION_2_81();
  if (v18)
  {
    if ((*(v5 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v5);
    }
  }

  else
  {
  }

  v19 = v17 & ~v8;
  MEMORY[0x26D665710](v5 + 16);
  v20 = OUTLINED_FUNCTION_14_37();
  if (!OUTLINED_FUNCTION_25_6(v20))
  {
    MEMORY[0x26D665710](v14);
    v21 = *(v5 + 24);
    v22 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v14 + v21, 1, v22))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v23 + 8))(v14 + v21, v22);
    }

    OUTLINED_FUNCTION_13_36();

    OUTLINED_FUNCTION_13_36();
  }

  OUTLINED_FUNCTION_11_43();
  OUTLINED_FUNCTION_1_4();
  (*(v24 + 8))(v9 + v0);
  v25 = sub_26A84BAB8();
  if (!__swift_getEnumTagSinglePayload(v1 + v19, 1, v25))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v26 + 8))(v1 + v19, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_26A73A2A4(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = type metadata accessor for TableRowView();
  OUTLINED_FUNCTION_2_5(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  OUTLINED_FUNCTION_79(v7);
  v9 = v1 + ((v6 + *(v8 + 80)) & ~*(v8 + 80));

  return a1(v1 + v4, v9);
}

uint64_t objectdestroy_4Tm_0()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for TableRowView();
  OUTLINED_FUNCTION_37_0();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_26A49035C(*v4, *(v4 + 8));

  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_1_4();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = v4 + *(v0 + 28);
  v8 = OUTLINED_FUNCTION_8_55();
  v9 = *(v8 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_21_26(v10))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v11 + 8))(v7 + v9, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_81();
  if (v12)
  {
    if ((*(v2 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v2);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v2 + 16);
  v13 = OUTLINED_FUNCTION_14_37();
  if (!OUTLINED_FUNCTION_25_6(v13))
  {
    MEMORY[0x26D665710](v8);
    v14 = *(v2 + 24);
    v15 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_20_27(v15))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v16 + 8))(v8 + v14, v7);
    }

    OUTLINED_FUNCTION_13_36();

    OUTLINED_FUNCTION_13_36();
  }

  OUTLINED_FUNCTION_11_43();
  OUTLINED_FUNCTION_1_4();
  (*(v17 + 8))(v4 + v0);
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A73A5E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TableRowView();
  OUTLINED_FUNCTION_79(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_26A7376A4(a1, v7, a2);
}

unint64_t sub_26A73A660()
{
  result = qword_2803B6510;
  if (!qword_2803B6510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6508);
    sub_26A73A70C();
    sub_26A549EDC(&qword_28157FDC8, &qword_2803ACE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6510);
  }

  return result;
}

unint64_t sub_26A73A70C()
{
  result = qword_2803B6518;
  if (!qword_2803B6518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6520);
    sub_26A549A78();
    sub_26A73A798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6518);
  }

  return result;
}

unint64_t sub_26A73A798()
{
  result = qword_2803B6528;
  if (!qword_2803B6528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6530);
    sub_26A73A850();
    sub_26A4DBCC8(&qword_2803B6558, &qword_2803B6560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6528);
  }

  return result;
}

unint64_t sub_26A73A850()
{
  result = qword_2803B6538;
  if (!qword_2803B6538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6540);
    sub_26A73A8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6538);
  }

  return result;
}

unint64_t sub_26A73A8DC()
{
  result = qword_2803B6548;
  if (!qword_2803B6548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6550);
    sub_26A549E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6548);
  }

  return result;
}

uint64_t sub_26A73A960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A73A9A8(double a1)
{
  v3 = type metadata accessor for TableRowView();
  OUTLINED_FUNCTION_2_5(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26A738338(v1 + v8, v9, a1);
}

unint64_t sub_26A73AA4C()
{
  result = qword_2803B65A8;
  if (!qword_2803B65A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6448);
    sub_26A73AB04();
    sub_26A4DBCC8(&qword_2803B65C8, &qword_2803B6450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B65A8);
  }

  return result;
}

unint64_t sub_26A73AB04()
{
  result = qword_2803B65B0;
  if (!qword_2803B65B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6440);
    sub_26A73AB90();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B65B0);
  }

  return result;
}

unint64_t sub_26A73AB90()
{
  result = qword_2803B65B8;
  if (!qword_2803B65B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B65C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6468);
    sub_26A84F588();
    sub_26A4DBCC8(&qword_2803B6478, &qword_2803B6468);
    sub_26A73A960(&qword_28157FD68, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_26A4DBCC8(&qword_2803B6480, &qword_2803B6458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B65B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_81()
{
  sub_26A556DF4(*(v1 + v0[7]), *(v1 + v0[7] + 8), *(v1 + v0[7] + 16));
  sub_26A49035C(*(v1 + v0[8]), *(v1 + v0[8] + 8));
  return sub_26A49035C(*(v1 + v0[9]), *(v1 + v0[9] + 8));
}

uint64_t OUTLINED_FUNCTION_8_55()
{
  sub_26A556DF4(*v0, *(v0 + 8), *(v0 + 16));
  sub_26A49035C(*(v0 + 24), *(v0 + 32));

  return type metadata accessor for ActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_11_43()
{
  sub_26A492280();

  return sub_26A84E4B8();
}

uint64_t OUTLINED_FUNCTION_13_36()
{
}

uint64_t OUTLINED_FUNCTION_14_37()
{

  return type metadata accessor for StandardActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_20_27(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_21_26(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t sub_26A73AE44(size_t index)
{
  v2 = CGImageSourceCopyPropertiesAtIndex(v1, index, 0);
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, *MEMORY[0x277CD3410]);

    if (Value)
    {
      v5 = Value;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_26A851D68();
      }
    }
  }

  return 8;
}

uint64_t sub_26A73AF0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();
}

uint64_t sub_26A73AF84(uint64_t a1)
{
  v3 = type metadata accessor for ResolvedTableLayout();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2_82();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A73BB90(a1, v1);

  sub_26A84EC28();
  return sub_26A73BBF4(a1);
}

char *sub_26A73B03C(_OWORD *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B65E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = type metadata accessor for ResolvedTableLayout();
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = OBJC_IVAR____TtC9SnippetUI18TableLayoutManager__resolvedLayout;
  sub_26A84ACB8();
  v14 = &v12[*(v7 + 20)];
  *v14 = MEMORY[0x277D84F90];
  v14[8] = 0;
  v12[*(v7 + 24)] = 0;
  sub_26A73BB90(v12, v9);
  sub_26A84EBD8();
  sub_26A73BBF4(v12);
  (*(v4 + 32))(&v1[v13], v6, v3);
  v15 = &v1[OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_currentSize];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_currentIdealWidths] = 0;
  v16 = OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_preCalculationMaxHeights;
  *&v1[v16] = sub_26A8516A8();
  v1[OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_disableTruncation] = 0;
  *&v1[OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_longestCells] = 0;
  v17 = OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_constants;
  if (qword_2803A8B30 != -1)
  {
    swift_once();
  }

  v18 = qword_2803D1CC0;
  if (qword_2803A8B38 != -1)
  {
    swift_once();
  }

  v19 = &v1[v17];
  v20 = qword_2803D1CE8;
  *v19 = v18;
  v19[1] = v20;
  v19[2] = 0x3FD0000000000000;
  v21 = &v1[OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_idealWidths];
  v22 = OUTLINED_FUNCTION_0_81();
  v23 = OUTLINED_FUNCTION_0_81();
  v24 = OUTLINED_FUNCTION_0_81();
  v25 = OUTLINED_FUNCTION_0_81();
  *v21 = v22;
  v21[1] = v23;
  v21[2] = v24;
  v21[3] = v25;
  v26 = a1[3];
  *(v1 + 3) = a1[2];
  *(v1 + 4) = v26;
  v27 = a1[1];
  *(v1 + 1) = *a1;
  *(v1 + 2) = v27;
  return v1;
}

uint64_t sub_26A73B330(double a1, double a2)
{
  v4 = v2;
  v7 = type metadata accessor for ResolvedTableLayout();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_2_82();
  v8 = (v2 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_idealWidths);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[2];

  v11 = sub_26A69620C(v9, v10);

  v12 = (v4 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_currentSize);
  v13 = vabdd_f64(*(v4 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_currentSize), a1);
  v14 = OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_currentIdealWidths;
  v15 = *(v4 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_currentIdealWidths);
  if (!v15)
  {
    if (v13 >= 0.01)
    {
      sub_26A851E78();
      LOBYTE(v36) = 2;
      OUTLINED_FUNCTION_9_28();
      sub_26A7B6070(v18, v19, v20, v21, v22, 78, v23, 25, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
    }

    goto LABEL_8;
  }

  v16 = sub_26A696814(v15, v11);

  if (v13 < 0.01)
  {
    if (v16)
    {
    }

    goto LABEL_8;
  }

  sub_26A851E78();
  LOBYTE(v36) = 2;
  OUTLINED_FUNCTION_9_28();
  sub_26A7B6070(v24, v25, v26, v27, v28, 78, v29, 25, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  if ((v16 & 1) == 0)
  {
LABEL_8:
    sub_26A851E78();
    LOBYTE(v36) = 2;
    OUTLINED_FUNCTION_9_28();
    sub_26A7B6244(v30, v31, v32, v33, v34, 81, v35, 25, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  }

  *v12 = a1;
  v12[1] = a2;
  *(v4 + v14) = v11;

  sub_26A73B6B8(&v41);
  sub_26A65F7AC(*(v4 + 64), v3, a1);
  sub_26A73BC50(&v41);
  return sub_26A73AF84(v3);
}

void sub_26A73B598(double a1, double a2)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v4 = a1;
  v5 = OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_preCalculationMaxHeights;
  swift_beginAccess();
  v6 = COERCE_DOUBLE(sub_26A507558(v4, *(v2 + v5)));
  if (v7)
  {
    v6 = 0.0;
  }

  if (v6 >= a2)
  {
    a2 = v6;
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v5);
  sub_26A654AF8(v4, a2);
  *(v2 + v5) = v8;
  swift_endAccess();
  sub_26A507558(v4, v8);
}

uint64_t sub_26A73B6B8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = (v1 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_idealWidths);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v8 = v4[2];
  v7 = v4[3];
  v9 = sub_26A73B798(v3);
  v10 = v1 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_constants;
  v11 = 8;
  if (!v9)
  {
    v11 = 0;
  }

  v12 = *(v10 + v11);
  v13 = 0;
  if ((*(v1 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_disableTruncation) & 1) == 0)
  {
    v13 = *(v10 + 16);
  }

  *a1 = v3;
  a1[1] = v6;
  a1[2] = v5;
  a1[3] = v8;
  a1[4] = v7;
  a1[5] = v12;
  a1[6] = v13;
}

BOOL sub_26A73B798(_BOOL8 result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = (result + 56);
  while (1)
  {
    v5 = *v3;
    v3 += 6;
    v4 = v5;
    if ((v5 & 0xFF00) == 0x200)
    {
      break;
    }

    v7 = v4 & 1;
    v6 = __OFADD__(v2, v7);
    v2 += v7;
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (!--v1)
    {
      return v2 > 11;
    }
  }

  v6 = __OFADD__(v2++, 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_26A73B7F4()
{

  v1 = OBJC_IVAR____TtC9SnippetUI18TableLayoutManager__resolvedLayout;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B65E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_26A73B90C()
{
  sub_26A73B7F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TableLayoutManager()
{
  result = qword_281580770;
  if (!qword_281580770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A73B9B8()
{
  sub_26A73BA94();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26A73BA94()
{
  if (!qword_281580AA0)
  {
    type metadata accessor for ResolvedTableLayout();
    v0 = sub_26A84EC38();
    if (!v1)
    {
      atomic_store(v0, &qword_281580AA0);
    }
  }
}

uint64_t sub_26A73BAFC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TableLayoutManager();
  result = sub_26A84EB88();
  *a1 = result;
  return result;
}

BOOL sub_26A73BB3C(_BOOL8 result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = (result + 56);
  while (1)
  {
    v4 = *v3;
    v3 += 6;
    v5 = (v4 & 0x100) == 0;
    if ((v4 & 0xFF00) == 0x200)
    {
      v5 = 0;
    }

    v6 = __OFADD__(v2, v5);
    v2 += v5;
    if (v6)
    {
      break;
    }

    if (!--v1)
    {
      return v2 > 11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A73BB90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedTableLayout();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A73BBF4(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedTableLayout();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_81()
{

  return sub_26A8516A8();
}

BOOL sub_26A73BD04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50);
  return v5 != 0;
}

id sub_26A73BDEC@<X0>(char *a1@<X8>)
{
  v3 = v1;
  v5 = [v1 number];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v1 text_1];
  if (!v7)
  {

LABEL_6:
    sub_26A4E353C();
    swift_allocError();
    *v11 = v1;
    *(v11 + 8) = &unk_287B139D8;
    *(v11 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v8 = v7;
  v144 = v2;
  RFTextProperty.asPartialText()(v142);
  v78 = v8;
  RFTextProperty.asPartialText()(v141);
  v9 = sub_26A54AB40(v1, &selRef_text_2);
  if (v9)
  {
    v10 = v9;
    *(&v139 + 1) = &type metadata for PartialText;
    v140 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v138 = swift_allocObject();
    sub_26A735084(v10, v138 + 16);
  }

  else
  {
    v140 = 0;
    v139 = 0u;
    v138 = 0u;
  }

  v13 = sub_26A54AB40(v3, &selRef_text_3);
  if (v13)
  {
    v14 = v13;
    *(&v136 + 1) = &type metadata for PartialText;
    v137 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v135 = swift_allocObject();
    sub_26A735084(v14, v135 + 16);
  }

  else
  {
    v137 = 0;
    v135 = 0u;
    v136 = 0u;
  }

  v15 = [v3 text_4];
  if (v15)
  {
    v16 = v15;
    *(&v133 + 1) = &type metadata for PartialText;
    v134 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v132 = swift_allocObject();
    RFTextProperty.asPartialText()(v132 + 16);
  }

  else
  {
    v134 = 0;
    v132 = 0u;
    v133 = 0u;
  }

  v17 = [v3 unit];
  if (v17)
  {
    v18 = v17;
    *(&v130 + 1) = &type metadata for PartialText;
    v131 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v129 = swift_allocObject();
    RFTextProperty.asPartialText()(v129 + 16);
  }

  else
  {
    v131 = 0;
    v129 = 0u;
    v130 = 0u;
  }

  v19 = [v3 thumbnail];
  if (v19)
  {
    v20 = v19;
    *(&v127 + 1) = sub_26A84BD28();
    v128 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(&v126);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v128 = 0;
    v126 = 0u;
    v127 = 0u;
  }

  if (qword_2803A8A80 != -1)
  {
    swift_once();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
  v22 = __swift_project_value_buffer(v21, qword_2803D1A70);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v24 = &a1[*(v23 + 32)];
  sub_26A4EA070(v22, v24, &qword_2803AB6F0);
  sub_26A6AEE74(__src);
  memcpy(a1, __src, 0xBFuLL);
  sub_26A60E54C(v24 + *(v21 + 36), &a1[*(v23 + 28)]);
  v25 = type metadata accessor for FactItemShortHeroNumberView();
  v26 = &a1[v25[5]];
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v118[0] = xmmword_281588758[0];
  v118[1] = unk_281588768;
  v118[2] = xmmword_281588778;
  v118[3] = xmmword_281588788;
  v119 = xmmword_281588758[0];
  v120 = unk_281588768;
  v121 = xmmword_281588778;
  v122 = xmmword_281588788;
  *v76 = xmmword_281588788;
  v77 = xmmword_281588778;
  sub_26A4EA070(v118, v125, &qword_2803A91B0);
  sub_26A6AEE74(v123);
  memcpy(v26, v123, 0xC0uLL);
  *(v26 + 12) = v77;
  *(v26 + 13) = *v76;
  v27 = v120;
  *(v26 + 14) = v119;
  *(v26 + 15) = v27;
  v28 = v122;
  *(v26 + 16) = v121;
  *(v26 + 17) = v28;
  v29 = v25[6];
  *&a1[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v30 = v25[7];
  *&a1[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v31 = &a1[v25[8]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  OUTLINED_FUNCTION_6_57(v124);
  OUTLINED_FUNCTION_6_57(v125);
  sub_26A4EC458(v124, v116);
  v32 = sub_26A4EC4B4();
  *&a1[v25[9]] = sub_26A851248();
  OUTLINED_FUNCTION_5_67(v125);
  OUTLINED_FUNCTION_5_67(v116);
  sub_26A4EC458(v125, &v84);
  *&a1[v25[10]] = sub_26A851248();
  sub_26A4EA070(&v138, v116, &qword_2803A91B8);
  if (v117)
  {
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v33 = OUTLINED_FUNCTION_0_11();
    v35 = v34(v33);
    OUTLINED_FUNCTION_4_52(v35, v36, v37, v38, v39, v40, v41, v42, v76[0], v76[1], v77, *(&v77 + 1), v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116[0]);
  }

  else
  {
    sub_26A4E2544(v116, &qword_2803A91B8);
    v32 = 0;
  }

  *&a1[v25[11]] = v32;
  sub_26A4EA070(&v135, v116, &qword_2803A91B8);
  if (v117)
  {
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v43 = OUTLINED_FUNCTION_0_11();
    v45 = v44(v43);
    OUTLINED_FUNCTION_4_52(v45, v46, v47, v48, v49, v50, v51, v52, v76[0], v76[1], v77, *(&v77 + 1), v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116[0]);
  }

  else
  {
    sub_26A4E2544(v116, &qword_2803A91B8);
    v32 = 0;
  }

  *&a1[v25[12]] = v32;
  sub_26A4EA070(&v132, v116, &qword_2803A91B8);
  if (v117)
  {
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v53 = OUTLINED_FUNCTION_0_11();
    v55 = v54(v53);
    OUTLINED_FUNCTION_4_52(v55, v56, v57, v58, v59, v60, v61, v62, v76[0], v76[1], v77, *(&v77 + 1), v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116[0]);
  }

  else
  {
    sub_26A4E2544(v116, &qword_2803A91B8);
    v32 = 0;
  }

  *&a1[v25[13]] = v32;
  sub_26A4EA070(&v129, v116, &qword_2803A91B8);
  if (v117)
  {
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v63 = OUTLINED_FUNCTION_0_11();
    v65 = v64(v63);
    OUTLINED_FUNCTION_4_52(v65, v66, v67, v68, v69, v70, v71, v72, v76[0], v76[1], v77, *(&v77 + 1), v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116[0]);
  }

  else
  {
    sub_26A4E2544(v116, &qword_2803A91B8);
    v32 = 0;
  }

  *&a1[v25[14]] = v32;
  sub_26A4EA070(&v126, &v79, &qword_2803A91B8);
  if (v82)
  {
    __swift_project_boxed_opaque_existential_1(&v79, v82);
    v73 = OUTLINED_FUNCTION_0_11();
    v75 = v74(v73);

    OUTLINED_FUNCTION_5_67(&v84);
    sub_26A4EC508(&v84);
    OUTLINED_FUNCTION_6_57(v116);
    sub_26A4EC508(v116);
    OUTLINED_FUNCTION_3_7(&v126);
    OUTLINED_FUNCTION_3_7(&v129);
    OUTLINED_FUNCTION_3_7(&v132);
    OUTLINED_FUNCTION_3_7(&v135);
    OUTLINED_FUNCTION_3_7(&v138);
    result = __swift_destroy_boxed_opaque_existential_1(&v79);
  }

  else
  {

    OUTLINED_FUNCTION_5_67(&v84);
    sub_26A4EC508(&v84);
    OUTLINED_FUNCTION_6_57(v116);
    sub_26A4EC508(v116);
    OUTLINED_FUNCTION_2_8(&v126);
    OUTLINED_FUNCTION_2_8(&v129);
    OUTLINED_FUNCTION_2_8(&v132);
    OUTLINED_FUNCTION_2_8(&v135);
    OUTLINED_FUNCTION_2_8(&v138);
    result = OUTLINED_FUNCTION_2_8(&v79);
    v75 = 0;
  }

  *&a1[v25[15]] = v75;
  return result;
}

unint64_t sub_26A73C68C()
{
  result = qword_2803B65F0;
  if (!qword_2803B65F0)
  {
    type metadata accessor for FactItemShortHeroNumberView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B65F0);
  }

  return result;
}

void *OUTLINED_FUNCTION_5_67(void *a1)
{

  return memcpy(a1, &STACK[0x680], 0xFAuLL);
}

void *OUTLINED_FUNCTION_6_57(void *a1)
{

  return memcpy(a1, &STACK[0x780], 0xFAuLL);
}

uint64_t type metadata accessor for SummaryItemConstants()
{
  result = qword_28157E5C8;
  if (!qword_28157E5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A73C788()
{
  result = sub_26A84B1D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A73C81C()
{
  v0 = type metadata accessor for SummaryItemConstants();
  MEMORY[0x28223BE20](v0);
  v115 = &v111 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_allocate_value_buffer(v2, qword_281588798);
  v114 = __swift_project_value_buffer(v2, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B65F8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6600);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v122 = *(*(v3 - 8) + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26A8570C0;
  v113 = v5;
  v6 = (v5 + v4);
  v123 = v3;
  v7 = v6 + *(v3 + 48);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v119 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v9 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v10 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v9, v10);
  sub_26A621A9C(inited);
  *v6 = v11;
  v12 = sub_26A851448();
  *&v112 = v13;
  v14 = v0[9];
  v15 = *MEMORY[0x277D62B38];
  v16 = sub_26A84B1D8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 104);
  v19 = v17 + 104;
  v18(&v7[v14], v15, v16);
  v20 = &v7[v0[10]];
  v118 = v15;
  v116 = v16;
  v117 = v19;
  v120 = v18;
  v18(v20, v15, v16);
  *v7 = 0x4030000000000000;
  *(v7 + 1) = v12;
  *(v7 + 2) = v112;
  *(v7 + 24) = xmmword_26A85AB50;
  *(v7 + 5) = 0x402C000000000000;
  OUTLINED_FUNCTION_0_82();
  v121 = v6;
  v21 = v122;
  v22 = v6 + v122 + *(v123 + 48);
  v23 = swift_initStackObject();
  OUTLINED_FUNCTION_8_56(v23);
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v24 = OUTLINED_FUNCTION_7_57(&qword_281588938);
  *(v12 + 40) = v25;
  sub_26A4E324C(v24, v25);
  sub_26A621A9C(v12);
  v26 = v121;
  *(v121 + v21) = v27;
  *&v112 = sub_26A851458();
  v29 = v28;
  v30 = OUTLINED_FUNCTION_9_51(v0[9]);
  (v18)(v30);
  v31 = OUTLINED_FUNCTION_6_58(v0[10]);
  (v18)(v31);
  v32 = v112;
  *v22 = 0x4020000000000000;
  *(v22 + 1) = v32;
  *(v22 + 2) = v29;
  *(v22 + 24) = xmmword_26A85E060;
  *(v22 + 5) = 0x4033000000000000;
  OUTLINED_FUNCTION_0_82();
  v33 = (v26 + 2 * v21);
  v34 = v33 + *(v123 + 48);
  v35 = swift_initStackObject();
  OUTLINED_FUNCTION_8_56(v35);
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v36 = OUTLINED_FUNCTION_7_57(&qword_281588998);
  *(v29 + 40) = v37;
  sub_26A4E324C(v36, v37);
  sub_26A621A9C(v29);
  *v33 = v38;
  sub_26A851448();
  OUTLINED_FUNCTION_3_74();
  v40 = OUTLINED_FUNCTION_9_51(v39);
  (v18)(v40);
  v41 = OUTLINED_FUNCTION_6_58(v0[10]);
  (v18)(v41);
  *v34 = 0x403C000000000000;
  *(v34 + 1) = v21;
  *(v34 + 2) = v29;
  *(v34 + 24) = xmmword_26A85AB60;
  *(v34 + 5) = 0x4030000000000000;
  OUTLINED_FUNCTION_0_82();
  v42 = v121;
  v43 = (v121 + 3 * v21);
  v44 = v43 + *(v123 + 48);
  v45 = swift_initStackObject();
  v119 = xmmword_26A8570F0;
  *(v45 + 16) = xmmword_26A8570F0;
  v46 = OUTLINED_FUNCTION_2_83(&qword_281588998);
  *(v45 + 56) = 5;
  sub_26A4E324C(v46, v47);
  sub_26A621A9C(v45);
  *v43 = v48;
  sub_26A851448();
  OUTLINED_FUNCTION_3_74();
  v50 = OUTLINED_FUNCTION_6_58(v49);
  (v18)(v50);
  v51 = OUTLINED_FUNCTION_6_58(v0[10]);
  (v18)(v51);
  *v44 = 0x403C000000000000;
  *(v44 + 1) = v45;
  *(v44 + 2) = v43;
  v112 = xmmword_26A87E5E0;
  *(v44 + 24) = xmmword_26A87E5E0;
  *(v44 + 5) = 0x4020000000000000;
  OUTLINED_FUNCTION_0_82();
  v52 = v123;
  v53 = (v42 + 4 * v122);
  v54 = v53 + *(v123 + 48);
  v55 = swift_initStackObject();
  OUTLINED_FUNCTION_8_56(v55);
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v56 = OUTLINED_FUNCTION_7_57(&qword_281588988);
  OUTLINED_FUNCTION_11_44(v56, v57);
  *v53 = v58;
  sub_26A851448();
  OUTLINED_FUNCTION_3_74();
  v18(&v54[v59], v118, v116);
  OUTLINED_FUNCTION_4_71();
  (v18)();
  *v54 = 0x4020000000000000;
  *(v54 + 1) = v53;
  *(v54 + 2) = v43;
  *(v54 + 3) = 0;
  *(v54 + 4) = 0;
  *(v54 + 5) = 0x4024000000000000;
  OUTLINED_FUNCTION_0_82();
  v60 = *(v52 + 48);
  v61 = swift_initStackObject();
  OUTLINED_FUNCTION_8_56(v61);
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v62 = v121 + 5 * v122;
  v63 = OUTLINED_FUNCTION_7_57(&qword_281588978);
  v64 = &v62[v60];
  OUTLINED_FUNCTION_11_44(v63, v65);
  *v62 = v66;
  sub_26A851448();
  OUTLINED_FUNCTION_3_74();
  OUTLINED_FUNCTION_4_71();
  (v18)();
  OUTLINED_FUNCTION_4_71();
  (v18)();
  *v64 = 0x402C000000000000;
  *(v64 + 1) = v60;
  *(v64 + 2) = v43;
  *(v64 + 3) = 0;
  *(v64 + 4) = 0;
  *(v64 + 5) = 0x4024000000000000;
  OUTLINED_FUNCTION_0_82();
  v67 = v121;
  v68 = (v121 + 6 * v122);
  OUTLINED_FUNCTION_10_46();
  v69 = swift_initStackObject();
  v111 = xmmword_26A857110;
  *(v69 + 16) = xmmword_26A857110;
  v70 = OUTLINED_FUNCTION_2_83(&qword_281588978);
  *(v69 + 56) = 3;
  *(v69 + 64) = 0;
  *(v69 + 72) = v71;
  sub_26A4E324C(v70, v72);
  sub_26A621A9C(v69);
  *v68 = v73;
  sub_26A851448();
  OUTLINED_FUNCTION_3_74();
  v75 = OUTLINED_FUNCTION_1_85(v74);
  v76 = v120;
  v120(v75);
  v77 = OUTLINED_FUNCTION_1_85(v0[10]);
  v76(v77);
  *v62 = 0x402C000000000000;
  *(v62 + 1) = v69;
  *(v62 + 2) = v43;
  *(v62 + 24) = xmmword_26A87E5F0;
  *(v62 + 5) = 0x4024000000000000;
  *&v62[v0[11]] = 0x4028000000000000;
  OUTLINED_FUNCTION_5_68();
  *&v62[v78] = v79;
  v80 = (v67 + 7 * v122);
  OUTLINED_FUNCTION_10_46();
  v81 = swift_initStackObject();
  *(v81 + 16) = v119;
  v82 = OUTLINED_FUNCTION_2_83(&qword_281588968);
  *(v81 + 56) = 3;
  sub_26A4E324C(v82, v83);
  sub_26A621A9C(v81);
  *v80 = v84;
  sub_26A851448();
  OUTLINED_FUNCTION_3_74();
  v86 = OUTLINED_FUNCTION_1_85(v85);
  v87 = v120;
  v120(v86);
  v88 = OUTLINED_FUNCTION_1_85(v0[10]);
  (v87)(v88);
  *v62 = 0x4030000000000000;
  *(v62 + 1) = v81;
  *(v62 + 2) = v43;
  *(v62 + 3) = 0;
  *(v62 + 4) = 0;
  *(v62 + 5) = 0x402C000000000000;
  *&v62[v0[11]] = 0x4028000000000000;
  OUTLINED_FUNCTION_5_68();
  *&v62[v89] = v90;
  v91 = &v121[v122];
  OUTLINED_FUNCTION_10_46();
  v92 = swift_initStackObject();
  *(v92 + 16) = v111;
  v93 = qword_281588968;
  *(v92 + 32) = qword_281588968;
  v94 = byte_281588970;
  *(v92 + 40) = byte_281588970;
  *(v92 + 48) = 3;
  *(v92 + 56) = 1;
  *(v92 + 64) = 1;
  *(v92 + 72) = 5;
  sub_26A4E324C(v93, v94);
  sub_26A621A9C(v92);
  *v91 = v95;
  v96 = sub_26A851448();
  v98 = v97;
  v99 = OUTLINED_FUNCTION_1_85(v0[9]);
  (v87)(v99);
  v100 = OUTLINED_FUNCTION_1_85(v0[10]);
  (v87)(v100);
  *v62 = 0x4020000000000000;
  *(v62 + 1) = v96;
  *(v62 + 2) = v98;
  *(v62 + 3) = 0;
  *(v62 + 4) = 0;
  *(v62 + 5) = 0x402C000000000000;
  *&v62[v0[11]] = 0x4028000000000000;
  OUTLINED_FUNCTION_5_68();
  *&v62[v101] = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v103 = sub_26A8516A8();
  v104 = sub_26A851438();
  v106 = v105;
  v107 = v115;
  OUTLINED_FUNCTION_4_71();
  v87();
  OUTLINED_FUNCTION_4_71();
  v87();
  *v107 = 0x402E000000000000;
  *(v107 + 1) = v104;
  *(v107 + 2) = v106;
  *(v107 + 24) = v112;
  *(v107 + 5) = 0x4030000000000000;
  *&v107[v0[11]] = 0x4028000000000000;
  OUTLINED_FUNCTION_5_68();
  *&v107[v108] = v109;
  return sub_26A80D40C(v103, v107);
}

uint64_t OUTLINED_FUNCTION_2_83@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  *(v1 + 48) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_57@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  return result;
}

__n128 OUTLINED_FUNCTION_8_56(__n128 *a1)
{
  result = v1[5];
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_11_44(uint64_t a1, char a2)
{
  *(v2 + 40) = a2;
  *(v2 + 48) = 1;
  *(v2 + 56) = 3;
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

uint64_t sub_26A73D268()
{
  sub_26A73E028();
  sub_26A84F998();
  return v1;
}

uint64_t Array<A>.asExpandedContentStack()(uint64_t a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6608);
  v2 = MEMORY[0x28223BE20](v27);
  v28 = &KeyPath - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &KeyPath - v4;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0x4020000000000000;
  KeyPath = swift_getKeyPath();
  v33 = 0;
  v7 = swift_getKeyPath();
  v32 = 0;
  v29 = 0;

  sub_26A851048();
  v8 = v30;
  v9 = v31;
  v10 = v33;
  v11 = v32;
  v12 = swift_getKeyPath();
  v30 = 0;
  v13 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6610) + 36)];
  sub_26A8513E8();
  v14 = sub_26A850248();
  v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440) + 36)] = v14;
  *v5 = KeyPath;
  v5[8] = v10;
  *(v5 + 2) = v7;
  v5[24] = v11;
  v5[32] = v8;
  *(v5 + 5) = v9;
  *(v5 + 6) = sub_26A73D7D8;
  *(v5 + 7) = v6;
  *(v5 + 8) = v12;
  *(v5 + 9) = 0x4020000000000000;
  v5[80] = 0;
  v15 = &v5[*(v27 + 36)];
  v16 = *(sub_26A84F5F8() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_26A84FB88();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #10.0 }

  *v15 = _Q0;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
  sub_26A73D7E4(v5, v28);
  sub_26A73D854();
  v24 = sub_26A851248();
  sub_26A73DAA8(v5);
  return v24;
}

uint64_t sub_26A73D570@<X0>(uint64_t a1@<X8>)
{
  result = sub_26A5D769C();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_26A73D5F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A5D77B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A73D64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A73E33C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A73D6B0(double a1)
{
  swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_26A73E07C;
  *(v3 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6668);
  sub_26A73E0B4();
  sub_26A73E164();
  return sub_26A8512F8();
}

uint64_t sub_26A73D7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6608);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A73D854()
{
  result = qword_2803B6618;
  if (!qword_2803B6618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6608);
    sub_26A73D90C();
    sub_26A4DBCC8(&qword_28157FEA0, &qword_2803A9E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6618);
  }

  return result;
}

unint64_t sub_26A73D90C()
{
  result = qword_2803B6620;
  if (!qword_2803B6620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6610);
    sub_26A73D9C4();
    sub_26A4DBCC8(&qword_2803AF468, &qword_2803AF440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6620);
  }

  return result;
}

unint64_t sub_26A73D9C4()
{
  result = qword_2803B6628;
  if (!qword_2803B6628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6630);
    sub_26A4DBCC8(&qword_2803B6638, &qword_2803B6640);
    sub_26A4DBCC8(&qword_2803B31D0, &qword_2803AA240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6628);
  }

  return result;
}

uint64_t sub_26A73DAA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A73DB48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  *a2 = a1;
  *(a2 + 8) = a3;
  *(a2 + 16) = a3;
  *(a2 + 24) = 1;
  *(a2 + 32) = v7;
  *(a2 + 40) = 0;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0;
  *(a2 + 80) = v10;
  *(a2 + 88) = 0;
  *(a2 + 96) = KeyPath;
  *(a2 + 104) = 0;
}

uint64_t sub_26A73DC48@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6648);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4];
  v6 = *(v1 + 40);
  if (v6)
  {
    sub_26A73DFDC(v1, v17);
    v7 = swift_allocObject();
    sub_26A4EC2A8(v17, v7 + 16);
    KeyPath = swift_getKeyPath();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6650);
    v10 = (v5 + *(v9 + 36));
    v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    *v11 = sub_26A73E020;
    *(v11 + 8) = v7;
    *(v11 + 16) = 0;
    v12 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    *v10 = KeyPath;
    *v5 = v6;
    v13 = v5;
    v14 = 0;
    v15 = v9;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6650);
    v13 = v5;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
  sub_26A73DF6C(v5, a1);
}

void sub_26A73DDF8(uint64_t a1)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 24);
  if (*(a1 + 32) != 1)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A73E014(v6, 0);
    (*(v3 + 8))(v5, v2);
    v6 = v10;
    if (!v10)
    {
      return;
    }

    goto LABEL_5;
  }

  v7 = v6;
  if (v6)
  {
LABEL_5:
    InteractionDelegateWrapper.perform(sfCommand:)();
  }
}

uint64_t sub_26A73DF6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26A73E014(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_26A73E028()
{
  result = qword_2803B6658;
  if (!qword_2803B6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6658);
  }

  return result;
}

unint64_t sub_26A73E0B4()
{
  result = qword_2803B6670;
  if (!qword_2803B6670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6660);
    sub_26A4DBCC8(&qword_2803B6678, &qword_2803B6680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6670);
  }

  return result;
}

unint64_t sub_26A73E164()
{
  result = qword_2803B6688;
  if (!qword_2803B6688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6668);
    sub_26A69C384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6688);
  }

  return result;
}

unint64_t sub_26A73E200()
{
  result = qword_2803B6690;
  if (!qword_2803B6690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6648);
    sub_26A73E284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6690);
  }

  return result;
}

unint64_t sub_26A73E284()
{
  result = qword_2803B6698;
  if (!qword_2803B6698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6650);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6698);
  }

  return result;
}

unint64_t sub_26A73E33C()
{
  result = qword_2803B66A0;
  if (!qword_2803B66A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B66A8);
    sub_26A73E3C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B66A0);
  }

  return result;
}

unint64_t sub_26A73E3C0()
{
  result = qword_2803AFA50;
  if (!qword_2803AFA50)
  {
    sub_26A73E418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA50);
  }

  return result;
}

unint64_t sub_26A73E418()
{
  result = qword_2803AB078;
  if (!qword_2803AB078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803AB078);
  }

  return result;
}

uint64_t type metadata accessor for SummaryItemStandardTextLayout()
{
  result = qword_28157DEC8;
  if (!qword_28157DEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A73E4D0()
{
  sub_26A4E20C4(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26A4E20C4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26A573614(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_26A4E20C4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_26A73E6CC();
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_26A573614(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_26A73E6CC()
{
  if (!qword_2803B67A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA470);
    v0 = sub_26A851088();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B67A0);
    }
  }
}

uint64_t sub_26A73E7AC(void (*a1)(void))
{
  a1();
  sub_26A84F998();
  return v2;
}

uint64_t sub_26A73E85C()
{
  sub_26A73E920(v0);
  v5 = sub_26A84FBD8();
  v6 = sub_26A48F9E4;
  v7 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B67B0);
  OUTLINED_FUNCTION_3_75();
  sub_26A744454(v1, &qword_2803B67B0, &unk_26A87EA38, v2);
  sub_26A850AF8();
  return sub_26A4DBD10(v4, &qword_2803B67B0);
}

uint64_t sub_26A73E920(uint64_t a1)
{
  v2 = sub_26A84F3A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SummaryItemStandardTextLayout();
  sub_26A72003C(v5);
  v6 = sub_26A84F388();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v9[0] = sub_26A84FC08();
    v9[1] = 0;
    v10 = 1;
    sub_26A742C60(a1, &v11);
    sub_26A51D0F8(v9, v12, &qword_2803B67E8);
    v13 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B67E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B67F8);
    sub_26A4DBCC8(&qword_2803B67E0, &qword_2803B67E8);
    sub_26A743410();
    sub_26A84FDF8();
    return sub_26A4DBD10(v9, &qword_2803B67E8);
  }

  else
  {
    sub_26A73EBA0(v12);
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B67E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B67F8);
    sub_26A4DBCC8(&qword_2803B67E0, &qword_2803B67E8);
    sub_26A743410();
    return sub_26A84FDF8();
  }
}

uint64_t sub_26A73EBA0@<X0>(uint64_t *a1@<X8>)
{
  v56 = a1;
  v2 = type metadata accessor for SummaryItemStandardTextLayout();
  v53 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v54 = v3;
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6808);
  MEMORY[0x28223BE20](v52);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v9 = sub_26A84F988();
  v59 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v2;
  v12 = v1 + *(v2 + 20);
  v13 = *v12;
  v14 = *v12;
  v58 = *(v12 + 8);
  if ((v58 & 1) == 0)
  {

    sub_26A851EA8();
    v15 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v13, 0);
    (*(v59 + 8))(v11, v9);
    v14 = v63;
  }

  if (sub_26A61B05C(v14, &unk_287B13B08))
  {
    v16 = v1 + v57[7];
    v17 = *v16;
    if (*(v16 + 8) == 1)
    {
      if ((v17 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_13:
      sub_26A73F75C(v8);
      sub_26A51D0F8(v8, v5, &qword_2803B6808);
      sub_26A7448CC();
      v25 = sub_26A851248();
      sub_26A4DBD10(v8, &qword_2803B6808);
      v60 = v25;
      LOBYTE(v61) = 0;

      sub_26A84FDF8();
      v60 = v63;
      v61 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0);
      sub_26A6D1B70();
      sub_26A84FDF8();
LABEL_23:

      goto LABEL_30;
    }

    sub_26A851EA8();
    v24 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v17, 0);
    (*(v59 + 8))(v11, v9);
    if (v63 == 1)
    {
      goto LABEL_13;
    }
  }

LABEL_6:
  v18 = v1;
  v19 = v13;
  v20 = v9;
  if ((v58 & 1) == 0)
  {

    sub_26A851EA8();
    v21 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v13, 0);
    (*(v59 + 8))(v11, v20);
    v19 = v63;
  }

  if (!sub_26A61B05C(v19, &unk_287B131A0))
  {
    goto LABEL_24;
  }

  v22 = v1 + v57[6];
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  sub_26A851EA8();
  v26 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v23, 0);
  (*(v59 + 8))(v11, v20);
  if (v63 == 1)
  {
LABEL_15:
    v52 = 0x6867696C746F7053;
    sub_26A4D7E10();
    switch(sub_26A63CD18())
    {
      case 1u:
      case 2u:
      case 3u:
        v27 = sub_26A852598();

        if (v27)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      case 4u:
LABEL_17:
        switch(sub_26A63CD18())
        {
          case 1u:
            v52 = 1769105747;
            break;
          case 2u:
            v52 = 0xD000000000000010;
            break;
          case 3u:
            goto LABEL_19;
          case 4u:
            goto LABEL_24;
          default:
            break;
        }

        v28 = sub_26A852598();

        if (v28)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      default:
LABEL_19:

LABEL_22:
        v63 = sub_26A84FC08();
        v64 = 0;
        v65 = 0;
        sub_26A7408F4(v18);
        sub_26A51D0F8(&v63, &v60, &qword_2803B6870);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6870);
        sub_26A4DBCC8(&qword_2803B6878, &qword_2803B6870);
        v29 = sub_26A851248();
        sub_26A4DBD10(&v63, &qword_2803B6870);
        v60 = v29;
        LOBYTE(v61) = 1;

        sub_26A84FDF8();
        v60 = v63;
        v61 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0);
        sub_26A6D1B70();
        sub_26A84FDF8();
        break;
    }

    goto LABEL_23;
  }

LABEL_24:
  if ((v58 & 1) == 0)
  {

    sub_26A851EA8();
    v31 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v13, 0);
    (*(v59 + 8))(v11, v20);
    v13 = v63;
  }

  if (sub_26A61B05C(v13, &unk_287B13068))
  {
    v63 = sub_26A84FC08();
    v64 = 0;
    v65 = 0;
    sub_26A73FD18(v18, v66);
    v32 = v55;
    sub_26A7444D8(v18, v55);
    v33 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v34 = swift_allocObject();
    sub_26A74453C(v32, v34 + v33);
    v35 = sub_26A851448();
    v66[118] = sub_26A8027E0;
    v66[119] = 0;
    v66[120] = v35;
    v66[121] = v36;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_26A7445A0;
    *(v37 + 24) = v34;
    v66[122] = sub_26A52E998;
    v66[123] = v37;
    v38 = v18 + v57[10];
    v39 = *v38;
    v40 = *(v38 + 8);
    v41 = *(v38 + 16);
    v60 = v39;
    LOBYTE(v61) = v40;
    v62 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55E0);
    sub_26A851058();
    sub_26A851448();
    sub_26A84F028();
    LOBYTE(v34) = sub_26A8502A8();
    sub_26A84ED48();
    v67 = v34;
    v68 = v42;
    v69 = v43;
    v70 = v44;
    v71 = v45;
    v72 = 0;
    sub_26A51D0F8(&v63, &v60, &qword_2803B6820);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6820);
    sub_26A744618();
    v46 = sub_26A851248();
    sub_26A4DBD10(&v63, &qword_2803B6820);
    v60 = v46;
    LOBYTE(v61) = 0;
  }

  else
  {
    v63 = sub_26A84FC08();
    v64 = 0;
    v65 = 1;
    sub_26A740414(v18, v66);
    sub_26A51D0F8(&v63, &v60, &qword_2803B6810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6810);
    sub_26A4DBCC8(&qword_2803B6818, &qword_2803B6810);
    v47 = sub_26A851248();
    sub_26A4DBD10(&v63, &qword_2803B6810);
    v60 = v47;
    LOBYTE(v61) = 1;
  }

  sub_26A84FDF8();
  v60 = v63;
  LOBYTE(v61) = v64;
  HIBYTE(v61) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0);
  sub_26A6D1B70();
  result = sub_26A84FDF8();
LABEL_30:
  v48 = v64;
  v49 = BYTE1(v64);
  v50 = v56;
  *v56 = v63;
  *(v50 + 8) = v48;
  *(v50 + 9) = v49;
  return result;
}

void *sub_26A73F75C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6890);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_26A84F988();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SummaryItemStandardTextLayout();
  v8 = *(v1 + *(v7 + 48));
  if (qword_2803A8E40 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803B6750, &v39, &qword_2803AA880);
  sub_26A51D0F8(&v39, v43, &qword_2803AA880);
  sub_26A6AEE74(v44);
  sub_26A4DBD10(&v39, &qword_2803AA880);
  memcpy(&v42[1], v44, 0xBFuLL);
  v43[11] = 0;
  v43[10] = sub_26A80A810;
  v42[0] = v8;
  v9 = qword_28157FC98;

  if (v9 != -1)
  {
    swift_once();
  }

  v43[12] = qword_2815889D8;
  v43[13] = sub_26A4C2508;
  v43[14] = 0;
  sub_26A51D0F8(v42, &v39, &qword_2803ADBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0);
  sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
  v10 = sub_26A851248();
  sub_26A4DBD10(v42, &qword_2803ADBA0);
  KeyPath = swift_getKeyPath();
  sub_26A51D0F8(&unk_2803B6750, v42, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v12 = swift_allocObject();
  v33 = xmmword_26A8570D0;
  *(v12 + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE000);
  v13 = swift_allocObject();
  *(v13 + 16) = v33;
  v14 = v1 + *(v7 + 20);
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  v34 = v1;
  if ((v14 & 1) == 0)
  {

    sub_26A851EA8();
    v16 = sub_26A8501F8();
    sub_26A84EA78();

    v17 = v30;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v15, 0);
    (*(v31 + 8))(v17, v32);
    v15 = v39;
  }

  *(v13 + 32) = v15;
  sub_26A621958(v13);
  *(v12 + 32) = v18;
  *(v12 + 40) = 0;

  sub_26A58787C(v19);
  sub_26A5075B0();

  if (v36)
  {
    v39 = v36;
    v40 = v37;
    v41 = v38;
  }

  else
  {
    sub_26A4F20CC(&v42[4], &v39);
  }

  sub_26A4DBD10(v42, &qword_2803AA880);
  v20 = v39;

  sub_26A57E57C(&v39);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  v22 = v34;
  v23 = *(v34 + *(v21 + 28) + 32);
  v24 = sub_26A84FC08();
  *&v39 = v10;
  *(&v39 + 1) = KeyPath;
  *&v40 = 2;
  BYTE8(v40) = 0;
  *v4 = v24;
  *(v4 + 1) = 0;
  v4[16] = 0;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6898) + 44);

  sub_26A7422F0(v22, v20, &v39, &v4[v25], v23);

  sub_26A851448();
  sub_26A84F628();

  v26 = v35;
  sub_26A744984(v4, v35);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6808);
  return memcpy((v26 + *(v27 + 36)), v42, 0x70uLL);
}

uint64_t sub_26A73FD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A740230(v18);
  v4 = type metadata accessor for SummaryItemStandardTextLayout();
  v5 = *(a1 + v4[12]);
  if (qword_2803A8E40 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803B6750, __dst, &qword_2803AA880);
  sub_26A51D0F8(__dst, &v17[25], &qword_2803AA880);
  sub_26A6AEE74(__src);
  sub_26A4DBD10(__dst, &qword_2803AA880);
  memcpy(&v17[1], __src, 0xBFuLL);
  v17[36] = 0;
  v17[35] = sub_26A80A810;
  v17[0] = v5;
  v6 = qword_28157FC98;

  if (v6 != -1)
  {
    swift_once();
  }

  v17[37] = qword_2815889D8;
  v17[38] = sub_26A4C2508;
  v17[39] = 0;
  sub_26A51D0F8(v17, __dst, &qword_2803ADBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0);
  sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
  v7 = sub_26A851248();
  sub_26A4DBD10(v17, &qword_2803ADBA0);
  KeyPath = swift_getKeyPath();
  v9 = *(a1 + v4[13]);
  if (v9)
  {
    if (qword_2803A8E38 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B6700, __dst, &qword_2803AA880);
    sub_26A51D0F8(__dst, &v17[25], &qword_2803AA880);
    sub_26A6AEE74(v20);
    sub_26A4DBD10(__dst, &qword_2803AA880);
    memcpy(&v17[1], v20, 0xBFuLL);
    v17[36] = 0;
    v17[35] = sub_26A80A810;
    v17[0] = v9;
  }

  else
  {
    bzero(v17, 0x128uLL);
  }

  memcpy(__dst, v17, 0x128uLL);
  v10 = *(a1 + v4[14]);
  if (v10)
  {
    v11 = qword_28157E6D0;

    if (v11 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_28157E6D8, v15, &qword_2803AA880);
    sub_26A51D0F8(v15, &v17[25], &qword_2803AA880);
    sub_26A6AEE74(v21);
    sub_26A4DBD10(v15, &qword_2803AA880);
    memcpy(&v17[1], v21, 0xBFuLL);
    v17[36] = 0;
    v17[35] = sub_26A80A810;
    v17[0] = v10;
  }

  else
  {
    bzero(v17, 0x128uLL);
  }

  memcpy(v15, v17, sizeof(v15));
  sub_26A51D0F8(v18, v17, &qword_2803B2780);
  sub_26A51D0F8(__dst, v14, &qword_2803AA888);
  sub_26A51D0F8(v15, v13, &qword_2803AA888);
  sub_26A51D0F8(v17, a2, &qword_2803B2780);
  *(a2 + 320) = v7;
  *(a2 + 328) = KeyPath;
  *(a2 + 336) = 2;
  *(a2 + 344) = 0;
  *(a2 + 345) = 256;
  sub_26A51D0F8(v14, a2 + 352, &qword_2803AA888);
  sub_26A51D0F8(v13, a2 + 648, &qword_2803AA888);

  sub_26A4DBD10(v15, &qword_2803AA888);
  sub_26A4DBD10(__dst, &qword_2803AA888);
  sub_26A4DBD10(v18, &qword_2803B2780);
  sub_26A4DBD10(v13, &qword_2803AA888);
  sub_26A4DBD10(v14, &qword_2803AA888);

  return sub_26A4DBD10(v17, &qword_2803B2780);
}

void sub_26A740230(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for SummaryItemStandardTextLayout() + 60));
  if (v3)
  {
    if (qword_2803A9028 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803D27B0, &v6[25], &qword_2803AA880);
    sub_26A6AEE74(__src);
    memcpy(&v6[1], __src, 0xBFuLL);
    v6[35] = sub_26A80A810;
    v6[36] = 0;
    v6[0] = v3;
    v4 = qword_2803A8E08;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = qword_2803D2398;
    memcpy(a1, v6, 0x128uLL);
    a1[37] = v5;
    a1[38] = sub_26A4C2508;
    a1[39] = 0;
  }

  else
  {

    bzero(a1, 0x140uLL);
  }
}

uint64_t sub_26A74038C()
{
  type metadata accessor for SummaryItemStandardTextLayout();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55E0);
  return sub_26A851068();
}

uint64_t sub_26A740414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A740230(v17);
  v4 = type metadata accessor for SummaryItemStandardTextLayout();
  v5 = *(a1 + v4[12]);
  if (qword_2803A8E40 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803B6750, __dst, &qword_2803AA880);
  sub_26A51D0F8(__dst, &v16[25], &qword_2803AA880);
  sub_26A6AEE74(__src);
  sub_26A4DBD10(__dst, &qword_2803AA880);
  memcpy(&v16[1], __src, 0xBFuLL);
  v16[36] = 0;
  v16[35] = sub_26A80A810;
  v16[0] = v5;
  v6 = qword_28157FC98;

  if (v6 != -1)
  {
    swift_once();
  }

  v16[37] = qword_2815889D8;
  v16[38] = sub_26A4C2508;
  v16[39] = 0;
  sub_26A51D0F8(v16, __dst, &qword_2803ADBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0);
  sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
  v7 = sub_26A851248();
  sub_26A4DBD10(v16, &qword_2803ADBA0);
  v8 = *(a1 + v4[13]);
  if (v8)
  {
    if (qword_2803A8E38 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B6700, __dst, &qword_2803AA880);
    sub_26A51D0F8(__dst, &v16[25], &qword_2803AA880);
    sub_26A6AEE74(v19);
    sub_26A4DBD10(__dst, &qword_2803AA880);
    memcpy(&v16[1], v19, 0xBFuLL);
    v16[36] = 0;
    v16[35] = sub_26A80A810;
    v16[0] = v8;
  }

  else
  {
    bzero(v16, 0x128uLL);
  }

  memcpy(__dst, v16, 0x128uLL);
  v9 = *(a1 + v4[14]);
  if (v9)
  {
    v10 = qword_28157E6D0;

    if (v10 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_28157E6D8, v14, &qword_2803AA880);
    sub_26A51D0F8(v14, &v16[25], &qword_2803AA880);
    sub_26A6AEE74(v20);
    sub_26A4DBD10(v14, &qword_2803AA880);
    memcpy(&v16[1], v20, 0xBFuLL);
    v16[36] = 0;
    v16[35] = sub_26A80A810;
    v16[0] = v9;
  }

  else
  {
    bzero(v16, 0x128uLL);
  }

  memcpy(v14, v16, sizeof(v14));
  sub_26A51D0F8(v17, v16, &qword_2803B2780);
  sub_26A51D0F8(__dst, v13, &qword_2803AA888);
  sub_26A51D0F8(v14, v12, &qword_2803AA888);
  sub_26A51D0F8(v16, a2, &qword_2803B2780);
  *(a2 + 320) = v7;
  sub_26A51D0F8(v13, a2 + 328, &qword_2803AA888);
  sub_26A51D0F8(v12, a2 + 624, &qword_2803AA888);

  sub_26A4DBD10(v14, &qword_2803AA888);
  sub_26A4DBD10(__dst, &qword_2803AA888);
  sub_26A4DBD10(v17, &qword_2803B2780);
  sub_26A4DBD10(v12, &qword_2803AA888);
  sub_26A4DBD10(v13, &qword_2803AA888);

  return sub_26A4DBD10(v16, &qword_2803B2780);
}

uint64_t sub_26A7408F4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v44 = v3;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SummaryItemStandardTextLayout();
  v9 = v8;
  v10 = *(v2 + v8[13]);
  if (!v10)
  {
    v24 = *(v2 + v8[14]);
    if (v24)
    {
      v25 = *(v2 + v8[12]);
      if (qword_2803A8E40 != -1)
      {
        swift_once();
      }

      sub_26A51D0F8(&unk_2803B6750, v64, &qword_2803AA880);
      sub_26A51D0F8(v64, &v54[25], &qword_2803AA880);
      sub_26A6AEE74(v47);
      sub_26A4DBD10(v64, &qword_2803AA880);
      memcpy(&v54[1], v47, 0xBFuLL);
      v54[36] = 0;
      v54[35] = sub_26A80A810;
      v54[0] = v25;
      v26 = qword_28157FC98;

      if (v26 != -1)
      {
        swift_once();
      }

      v55 = qword_2815889D8;
      v56 = sub_26A4C2508;
      v57 = 0;
      sub_26A51D0F8(v54, v64, &qword_2803ADBA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0);
      sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
      v27 = sub_26A851248();
      sub_26A4DBD10(v54, &qword_2803ADBA0);
      KeyPath = swift_getKeyPath();
      if (qword_28157E6D0 != -1)
      {
        swift_once();
      }

      sub_26A51D0F8(&unk_28157E6D8, v54, &qword_2803AA880);
      sub_26A51D0F8(v54, &v60[25], &qword_2803AA880);
      sub_26A6AEE74(v48);
      sub_26A4DBD10(v54, &qword_2803AA880);
      memcpy(&v60[1], v48, 0xBFuLL);
      v60[36] = 0;
      v60[35] = sub_26A80A810;
      v60[0] = v24;
      v61 = swift_getKeyPath();
      v62 = 1;
      v63 = 0;
      sub_26A51D0F8(v60, v51, &qword_2803B68B8);
      v70 = v27;
      v71 = KeyPath;
      v72 = 1;
      v73 = 0;
      sub_26A51D0F8(v51, v74, &qword_2803B68B8);

      swift_retain_n();
      swift_retain_n();
      sub_26A4DBD10(v51, &qword_2803B68B8);

      sub_26A51D0F8(&v70, v54, &qword_2803B68E8);
      v58 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68F8);
      v43 = v27;
      sub_26A4DBCC8(&qword_2803B68E0, &qword_2803B68E8);
      sub_26A4DBCC8(&qword_2803B68F0, &qword_2803B68F8);
      sub_26A84FDF8();
      sub_26A51D0F8(v64, v54, &qword_2803B68D0);
      v59 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68C8);
      sub_26A744A6C();
      sub_26A4DBCC8(&qword_2803B6900, &qword_2803B68C8);
      sub_26A84FDF8();

      sub_26A4DBD10(v64, &qword_2803B68D0);
      v29 = &v70;
      v30 = &qword_2803B68E8;
LABEL_39:
      sub_26A4DBD10(v29, v30);
      v36 = v60;
      v37 = &qword_2803B68B8;
      return sub_26A4DBD10(v36, v37);
    }
  }

  v11 = v2 + v8[9];
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    sub_26A851EA8();
    v20 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v12, 0);
    (*(v5 + 8))(v7, v4);
    if (LOBYTE(v54[0]) != 1)
    {
      goto LABEL_4;
    }

LABEL_17:
    v21 = *(v2 + v9[12]);
    if (qword_2803A8E40 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B6750, v64, &qword_2803AA880);
    sub_26A51D0F8(v64, &v54[25], &qword_2803AA880);
    sub_26A6AEE74(v77);
    sub_26A4DBD10(v64, &qword_2803AA880);
    memcpy(&v54[1], v77, 0xBFuLL);
    v54[36] = 0;
    v54[35] = sub_26A80A810;
    v54[0] = v21;
    v22 = qword_28157FC98;

    if (v22 != -1)
    {
      swift_once();
    }

    v55 = qword_2815889D8;
    v56 = sub_26A4C2508;
    v57 = 0;
    sub_26A51D0F8(v54, v64, &qword_2803ADBA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0);
    sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
    v43 = sub_26A851248();
    sub_26A4DBD10(v54, &qword_2803ADBA0);
    v23 = swift_getKeyPath();
    if (v10)
    {
      if (qword_2803A8E38 != -1)
      {
        swift_once();
      }

      sub_26A51D0F8(&unk_2803B6700, v64, &qword_2803AA880);
      sub_26A51D0F8(v64, &v54[25], &qword_2803AA880);
      sub_26A6AEE74(v78);
      sub_26A4DBD10(v64, &qword_2803AA880);
      memcpy(&v54[1], v78, 0xBFuLL);
      v54[36] = 0;
      v54[35] = sub_26A80A810;
      v54[0] = v10;
    }

    else
    {
      bzero(v54, 0x128uLL);
    }

    v31 = swift_getKeyPath();
    memcpy(v60, v54, sizeof(v60));
    LOBYTE(v64[0]) = 0;
    v61 = v31;
    v62 = 1;
    v63 = 0;
    v32 = *(v2 + v9[14]);
    v33 = qword_28157E6D0;

    if (v33 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_28157E6D8, v54, &qword_2803AA880);
    sub_26A51D0F8(v54, v52, &qword_2803AA880);
    sub_26A6AEE74(v79);
    sub_26A4DBD10(v54, &qword_2803AA880);
    memcpy(&v51[1], v79, 0xBFuLL);
    v52[11] = 0;
    v52[10] = sub_26A80A810;
    v51[0] = v32;
    v52[12] = swift_getKeyPath();
    v52[13] = 1;
    v53 = 0;
    v34 = *(v2 + v9[15]);
    v35 = qword_2803A8E28;

    if (v35 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B66B0, v54, &qword_2803AA880);
    sub_26A51D0F8(v54, v49, &qword_2803AA880);
    sub_26A6AEE74(v80);
    sub_26A4DBD10(v54, &qword_2803AA880);
    memcpy(&v48[1], v80, 0xBFuLL);
    v49[11] = 0;
    v49[10] = sub_26A80A810;
    v48[0] = v34;
    v49[12] = swift_getKeyPath();
    v49[13] = 1;
    v50 = 0;
    sub_26A51D0F8(v60, v47, &qword_2803B68B8);
    sub_26A51D0F8(v51, v46, &qword_2803B21E8);
    sub_26A51D0F8(v48, v45, &qword_2803B21E8);
    v70 = v43;
    v71 = v23;
    v72 = 1;
    v73 = 0;
    sub_26A51D0F8(v47, v74, &qword_2803B68B8);
    sub_26A51D0F8(v46, &v75, &qword_2803B21E8);
    sub_26A51D0F8(v45, &v76, &qword_2803B21E8);

    swift_retain_n();
    swift_retain_n();
    sub_26A4DBD10(v45, &qword_2803B21E8);
    sub_26A4DBD10(v46, &qword_2803B21E8);
    sub_26A4DBD10(v47, &qword_2803B68B8);

    sub_26A51D0F8(&v70, v54, &qword_2803B68F8);
    v58 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68F8);
    v42 = v23;
    sub_26A4DBCC8(&qword_2803B68E0, &qword_2803B68E8);
    sub_26A4DBCC8(&qword_2803B68F0, &qword_2803B68F8);
    sub_26A84FDF8();
    sub_26A51D0F8(v64, v54, &qword_2803B68D0);
    v59 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68C8);
    sub_26A744A6C();
    sub_26A4DBCC8(&qword_2803B6900, &qword_2803B68C8);
    sub_26A84FDF8();

    sub_26A4DBD10(v64, &qword_2803B68D0);
    sub_26A4DBD10(&v70, &qword_2803B68F8);
    sub_26A4DBD10(v48, &qword_2803B21E8);
    v29 = v51;
    v30 = &qword_2803B21E8;
    goto LABEL_39;
  }

  if (v12)
  {
    goto LABEL_17;
  }

LABEL_4:
  v42 = v5;
  v13 = *(v2 + v9[12]);
  if (qword_2803A8E40 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803B6750, v64, &qword_2803AA880);
  sub_26A51D0F8(v64, &v54[25], &qword_2803AA880);
  sub_26A6AEE74(v51);
  sub_26A4DBD10(v64, &qword_2803AA880);
  memcpy(&v54[1], v51, 0xBFuLL);
  v54[36] = 0;
  v54[35] = sub_26A80A810;
  v54[0] = v13;
  v14 = qword_28157FC98;

  if (v14 != -1)
  {
    swift_once();
  }

  v55 = qword_2815889D8;
  v56 = sub_26A4C2508;
  v57 = 0;
  sub_26A51D0F8(v54, v64, &qword_2803ADBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0);
  sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
  v43 = sub_26A851248();
  sub_26A4DBD10(v54, &qword_2803ADBA0);
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  if (byte_2803B0441 != 1)
  {
    goto LABEL_43;
  }

  v17 = v2 + v9[5];
  v18 = *v17;
  if ((*(v17 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v19 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v18, 0);
    (*(v42 + 8))(v7, v4);
    v18 = v54[0];
  }

  if (!sub_26A61B05C(v18, &unk_287B131A0))
  {
    goto LABEL_43;
  }

  sub_26A4D7E10();
  switch(sub_26A63CD18())
  {
    case 1u:
    case 2u:
    case 3u:
      v38 = sub_26A852598();

      if ((v38 & 1) == 0)
      {
        goto LABEL_43;
      }

      break;
    case 4u:
      goto LABEL_43;
    default:

      break;
  }

  if (*(v2 + v9[11]))
  {
    v39 = 0;
    v40 = 1;
  }

  else
  {
LABEL_43:
    v40 = 0;
    v39 = 1;
  }

  v70 = sub_26A84FA38();
  v71 = 0;
  LOBYTE(v72) = 0;
  sub_26A741C8C(v2);
  sub_26A51D0F8(&v70, v60, &qword_2803B68C0);
  v64[0] = v43;
  v64[1] = v15;
  v65 = 0;
  v64[2] = 1;
  v66 = v16;
  v67 = v40;
  v68 = v39;
  sub_26A51D0F8(v60, &v69, &qword_2803B68C0);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_26A4DBD10(v60, &qword_2803B68C0);

  sub_26A51D0F8(v64, v54, &qword_2803B68C8);
  v59 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68C8);
  sub_26A744A6C();
  sub_26A4DBCC8(&qword_2803B6900, &qword_2803B68C8);
  sub_26A84FDF8();

  sub_26A4DBD10(v64, &qword_2803B68C8);
  v36 = &v70;
  v37 = &qword_2803B68C0;
  return sub_26A4DBD10(v36, v37);
}

uint64_t sub_26A741C8C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  if (qword_2803A8BD8 != -1)
  {
    swift_once();
  }

  v5 = xmmword_2803B00A0;
  v6 = byte_2803B00B0;
  v7 = qword_2803B00B8;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_281588848, v40, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v39, __src, sizeof(v39));
  v40[11] = 0;
  v36 = v5;
  v37 = v6;
  v40[10] = sub_26A80A810;
  v38 = v7;
  v8 = type metadata accessor for SummaryItemStandardTextLayout();
  v9 = *(v2 + v8[13]);
  if (v9)
  {
    sub_26A4EF6C0(v5, *(&v5 + 1), v6);
    v10 = qword_2803A8E38;

    if (v10 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B6700, v26, &qword_2803AA880);
    sub_26A51D0F8(v26, &v31[25], &qword_2803AA880);
    sub_26A6AEE74(v42);
    sub_26A4DBD10(v26, &qword_2803AA880);
    memcpy(&v31[1], v42, 0xBFuLL);
    v31[36] = 0;
    v31[35] = sub_26A80A810;
    v31[0] = v9;
  }

  else
  {
    bzero(v31, 0x128uLL);
    sub_26A4EF6C0(v5, *(&v5 + 1), v6);
  }

  KeyPath = swift_getKeyPath();
  memcpy(__dst, v31, sizeof(__dst));
  v26[0] = 0;
  v33 = KeyPath;
  v34 = 1;
  v35 = 0;
  v12 = *(v2 + v8[14]);
  if (v12)
  {
    sub_26A51D0F8(&v36, v31, &qword_2803B21F0);
  }

  else
  {
    bzero(v31, 0x140uLL);
  }

  v13 = qword_28157E6D0;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_28157E6D8, v26, &qword_2803AA880);
  sub_26A51D0F8(v26, v29, &qword_2803AA880);
  sub_26A6AEE74(v43);
  sub_26A4DBD10(v26, &qword_2803AA880);
  memcpy(v28, v43, sizeof(v28));
  v29[11] = 0;
  v29[10] = sub_26A80A810;
  v27 = v12;
  v29[12] = swift_getKeyPath();
  v29[13] = 1;
  v30 = 0;
  if (v12 && *(v2 + v8[15]))
  {
    sub_26A51D0F8(&v36, v26, &qword_2803B21F0);
  }

  else
  {
    bzero(v26, 0x140uLL);
  }

  v14 = *(v2 + v8[15]);
  v15 = qword_2803A8E28;

  if (v15 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803B66B0, v20, &qword_2803AA880);
  sub_26A51D0F8(v20, v24, &qword_2803AA880);
  sub_26A6AEE74(v44);
  sub_26A4DBD10(v20, &qword_2803AA880);
  memcpy(v23, v44, sizeof(v23));
  v24[11] = 0;
  v24[10] = sub_26A80A810;
  v22 = v14;
  v24[12] = swift_getKeyPath();
  v24[13] = 1;
  v25 = 0;
  sub_26A51D0F8(__dst, v21, &qword_2803B68B8);
  sub_26A51D0F8(v31, v20, &qword_2803AE650);
  sub_26A51D0F8(&v27, v19, &qword_2803B21E8);
  sub_26A51D0F8(v26, v18, &qword_2803AE650);
  sub_26A51D0F8(&v22, &v17, &qword_2803B21E8);
  sub_26A51D0F8(v21, v4, &qword_2803B68B8);
  sub_26A51D0F8(v20, v4 + 320, &qword_2803AE650);
  sub_26A51D0F8(v19, v4 + 640, &qword_2803B21E8);
  sub_26A51D0F8(v18, v4 + 960, &qword_2803AE650);
  sub_26A51D0F8(&v17, v4 + 1280, &qword_2803B21E8);

  sub_26A4DBD10(&v22, &qword_2803B21E8);
  sub_26A4DBD10(v26, &qword_2803AE650);
  sub_26A4DBD10(&v27, &qword_2803B21E8);
  sub_26A4DBD10(v31, &qword_2803AE650);
  sub_26A4DBD10(__dst, &qword_2803B68B8);
  sub_26A4DBD10(&v36, &qword_2803B21F0);
  sub_26A4DBD10(&v17, &qword_2803B21E8);
  sub_26A4DBD10(v18, &qword_2803AE650);
  sub_26A4DBD10(v19, &qword_2803B21E8);
  sub_26A4DBD10(v20, &qword_2803AE650);
  return sub_26A4DBD10(v21, &qword_2803B68B8);
}