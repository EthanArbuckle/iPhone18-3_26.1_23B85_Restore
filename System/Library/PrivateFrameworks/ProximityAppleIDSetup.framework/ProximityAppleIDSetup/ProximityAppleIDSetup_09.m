uint64_t sub_2610765B0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2610765E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_260FA9918(a3, v25 - v11, &unk_27FE65800, &qword_2610BF910);
  v13 = sub_2610BCC94();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_260FA9980(v12, &unk_27FE65800, &qword_2610BF910);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2610BCC84();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2610BCBF4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2610BCA44() + 32;
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

    sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);

    return v23;
  }

LABEL_8:
  sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);
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

id sub_2610768E4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v25[3] = a4;
  v25[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v24[3] = a5;
  v24[4] = a7;
  v16 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a5 - 8) + 32))(v16, a2, a5);
  a3[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_registered] = 0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v17 = sub_2610BC7B4();
  __swift_project_value_buffer(v17, qword_27FE65900);
  v18 = sub_2610BC794();
  v19 = sub_2610BCD54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_260F97000, v18, v19, "PASAnisetteRemoteRequestHandler init", v20, 2u);
    MEMORY[0x2666F8720](v20, -1, -1);
  }

  sub_260FA99E0(v25, &a3[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_messageSessionProvider]);
  sub_260FA99E0(v24, &a3[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController]);
  v23.receiver = a3;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  return v21;
}

id sub_261076AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v14);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_allocWithZone(v22);
  (*(v18 + 16))(v21, a1, a4);
  (*(v12 + 16))(v16, a2, a5);
  return sub_2610768E4(v21, v16, v23, a4, a5, a6, v26);
}

uint64_t sub_261076C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_261071414(a1, a2, a3, v3);
}

uint64_t sub_261076D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_261071670(a1, a2, a3, v3);
}

uint64_t sub_261076E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_2610718FC(a1, a2, a3, v3);
}

uint64_t sub_261076EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_261071BBC(a1, a2, a3, v3);
}

uint64_t sub_261076F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_261071EBC(a1, a2, a3, v3);
}

uint64_t sub_26107701C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_261072130(a1, a2, a3, v3);
}

uint64_t dispatch thunk of PASAnisetteProvisioningProtocol.provision()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF864;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PASAnisetteProvisioningProtocol.sync(withSIMData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_260FBD298;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASAnisetteProvisioningProtocol.erase()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF864;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PASAnisetteProvisioningProtocol.fetch(doProvision:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260FBF864;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PASAnisetteProvisioningProtocol.legacyAnisetteData(forDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_260FBD298;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASAnisetteProvisioningProtocol.fetchPeerAttestationData(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260FBF864;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PASAnisetteRemoteRequestHandlerProtocol.registerForRequests()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return v9(a1, a2);
}

uint64_t sub_261077950(uint64_t a1, uint64_t *a2, void (*a3)(void *__return_ptr, unsigned __int8 *), uint64_t a4, uint64_t a5)
{
  v6 = a1;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v42 = a5;
  if (v10)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v15 = *(*(v6 + 48) + (v14 | (v12 << 6)));
        v49 = v15;
        a3(v48, &v49);
        if (*(a5 + 16))
        {
          v16 = sub_260FA6180(v15);
          if (v17)
          {
            break;
          }
        }

        v30 = *a2;
        v31 = sub_260FA60B4(v48);
        if (v32)
        {
          v33 = v31;
          v34 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = *a2;
          v45 = *a2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_261098DA4();
            v36 = v45;
          }

          sub_260FA9764(*(v36 + 48) + 40 * v33);
          sub_260FA6A84((*(v36 + 56) + 32 * v33), v46);
          sub_2610983D8(v33, v36);
          *a2 = v36;
        }

        else
        {
          memset(v46, 0, sizeof(v46));
        }

        sub_260FA9764(v48);
        sub_260FA9980(v46, &qword_27FE63830, &qword_2610BE8E0);
        a5 = v42;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v18 = v6;
      sub_260FA3F5C(*(a5 + 56) + 32 * v16, v47);
      sub_260FA6A84(v47, v46);
      v19 = *a2;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *a2;
      v23 = sub_260FA60B4(v48);
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((v20 & 1) == 0)
        {
          sub_261098DA4();
        }
      }

      else
      {
        sub_261097330(v26, v20);
        v28 = sub_260FA60B4(v48);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_33;
        }

        v23 = v28;
      }

      v6 = v18;
      if (v27)
      {
        v37 = (v21[7] + 32 * v23);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        sub_260FA6A84(v46, v37);
      }

      else
      {
        v21[(v23 >> 6) + 8] |= 1 << v23;
        sub_260FA9708(v48, v21[6] + 40 * v23);
        sub_260FA6A84(v46, (v21[7] + 32 * v23));
        v38 = v21[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_32;
        }

        v21[2] = v40;
      }

      sub_260FA9764(v48);
      *a2 = v21;
      a5 = v42;
      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_2610BD444();
  __break(1u);
  return result;
}

uint64_t sub_261077C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v10 = *(sub_2610BCC24() - 8);
  v11 = v3 + ((*(v10 + 80) + 40) & ~*(v10 + 80));

  return sub_26106D794(a1, a2, a3, v11, v7, v8);
}

uint64_t sub_261077D48()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260FBF860;

  return sub_26107625C(v2, v3, v4);
}

uint64_t sub_261077DFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_260FBF860;

  return sub_261031B40(v2, v3, v5);
}

uint64_t sub_261077EBC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260FBF860;

  return sub_26104D438(a1, v5);
}

uint64_t sub_261077F74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260FBF860;

  return sub_2610753EC(v2, v3, v4);
}

uint64_t sub_261078028()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260FB6DB4;

  return sub_261074958(v2, v4, v3);
}

uint64_t sub_2610780DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBF860;

  return sub_261073D18(v2, v3);
}

uint64_t objectdestroy_55Tm()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2610781D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260FBF860;

  return sub_2610733C0(v2, v3, v4);
}

uint64_t objectdestroy_110Tm()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2610782C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBF860;

  return sub_261072ACC(v2, v3);
}

uint64_t sub_261078370()
{
  v0 = sub_2610BD154();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2610783BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_2610BC514();
  }

  v3[18] = v4;
  v3[2] = v3;
  v3[7] = v3 + 19;
  v3[3] = sub_2610784FC;
  v5 = swift_continuation_init();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668C0, &qword_2610C4530);
  v3[10] = MEMORY[0x277D85DD0];
  v3[11] = 1107296256;
  v3[12] = sub_2610A0A60;
  v3[13] = &block_descriptor_179;
  v3[14] = v5;
  [v2 syncWithSIMData:v4 completion:v3 + 10];

  return MEMORY[0x282200938](v3 + 2);
}

uint64_t sub_2610784FC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 144);
  if (*(v1 + 48))
  {
    v5 = *(v1 + 48);
    swift_willThrow();

    v6 = *(v3 + 8);
    v7 = 0;
  }

  else
  {
    v8 = *(v2 + 152);

    v6 = *(v3 + 8);
    v7 = v8;
  }

  return v6(v7);
}

uint64_t sub_26107863C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_2610BC9D4();
  }

  else
  {
    v4 = 0;
  }

  v3[19] = v4;
  v3[2] = v3;
  v3[7] = v3 + 18;
  v3[3] = sub_260FFC840;
  v5 = swift_continuation_init();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662C0, &qword_2610CC628);
  v3[10] = MEMORY[0x277D85DD0];
  v3[11] = 1107296256;
  v3[12] = sub_26107B348;
  v3[13] = &block_descriptor_165;
  v3[14] = v5;
  [v2 legacyAnisetteDataForDSID:v4 withCompletion:v3 + 10];

  return MEMORY[0x282200938](v3 + 2);
}

uint64_t sub_261078774(uint64_t a1)
{
  v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66328, &qword_2610CC9A8) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v2[19] = v6;
  sub_260FA9918(a1, v6, &qword_27FE66328, &qword_2610CC9A8);
  v7 = sub_2610BC364();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v9 = sub_2610BC344();
    (*(v8 + 8))(v6, v7);
  }

  v2[20] = v9;
  v2[2] = v2;
  v2[7] = v2 + 18;
  v2[3] = sub_26107897C;
  v10 = swift_continuation_init();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66330, &qword_2610CC9B0);
  v2[10] = MEMORY[0x277D85DD0];
  v2[11] = 1107296256;
  v2[12] = sub_26107B348;
  v2[13] = &block_descriptor_159;
  v2[14] = v10;
  [v3 fetchPeerAttestationDataForRequest:v9 completion:v2 + 10];

  return MEMORY[0x282200938](v2 + 2);
}

uint64_t sub_26107897C()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  if (*(*v0 + 48))
  {
    v4 = *(*v0 + 48);
    swift_willThrow();

    v5 = *(v1 + 8);

    return v5();
  }

  else
  {
    v7 = *(*v0 + 144);

    v8 = *(v1 + 8);

    return v8(v7);
  }
}

uint64_t sub_261078B30()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler handleProvision", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = (v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController);
  v7 = *(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController + 24);
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 24) = v11;
  *v11 = v0;
  v11[1] = sub_26107B360;

  return v13(v7, v8);
}

uint64_t sub_261078D14(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_261078D34, 0, 0);
}

uint64_t sub_261078D34()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler handleSync", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v6 = *(v0 + 72);
  v5 = *(v0 + 80);

  sub_260FA99E0(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController, v0 + 16);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  sub_26106D8C0(v6, 0, (v0 + 56));
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  *(v0 + 88) = v9;
  *(v0 + 96) = v10;
  v11 = *(v8 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_261078F9C;

  return v15(v9, v10, v7, v8);
}

uint64_t sub_261078F9C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_261079138;
  }

  else
  {
    v8 = *(v4 + 88);
    v9 = *(v4 + 96);
    *(v4 + 120) = a1 & 1;
    sub_260FAC458(v8, v9);
    v7 = sub_2610790D0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2610790D0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1(v2);
}

uint64_t sub_261079138()
{
  sub_260FAC458(v0[11], v0[12]);
  v1 = v0[14];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = v0[1];

  return v2(0);
}

uint64_t sub_2610791C8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler handleErase", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = (v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController);
  v7 = *(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController + 24);
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 24) = v11;
  *v11 = v0;
  v11[1] = sub_2610793AC;

  return v13(v7, v8);
}

uint64_t sub_2610793AC(char a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_2610794B4(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261079544, 0, 0);
}

uint64_t sub_261079544()
{
  v15 = *MEMORY[0x277D85DE8];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[5] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler handleFetch", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = sub_26106DB20(v5, 2u);
  v7 = (v0[4] + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v14 = (*(v9 + 32) + **(v9 + 32));
  v10 = *(*(v9 + 32) + 4);
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_2610797D4;
  v12 = *MEMORY[0x277D85DE8];

  return v14(v6 & 1, v8, v9);
}

uint64_t sub_2610797D4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*v2 + 48);
  v4 = *v2;
  *(v4 + 56) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);
    v6 = *MEMORY[0x277D85DE8];

    __asm { BRAA            X1, X16 }
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26107994C, 0, 0);
}

uint64_t sub_26107994C()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = v1;
    v4 = sub_2610BC794();
    v5 = sub_2610BCD54();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v30[0] = v7;
      *v6 = 141558274;
      *(v6 + 4) = 1752392040;
      *(v6 + 12) = 2080;
      v8 = v3;
      v9 = [v8 description];
      v10 = sub_2610BCA04();
      v12 = v11;

      v13 = sub_260FA5970(v10, v12, v30);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler fetch completed with result %{mask.hash}s", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x2666F8720](v7, -1, -1);
      MEMORY[0x2666F8720](v6, -1, -1);
    }

    v14 = objc_opt_self();
    *(v0 + 16) = 0;
    v15 = [v14 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v0 + 16];
    v16 = *(v0 + 16);
    if (v15)
    {
      v17 = sub_2610BC534();
      v19 = v18;

      v20 = *(v0 + 8);
      v21 = *MEMORY[0x277D85DE8];

      return v20(v17, v19);
    }

    v27 = v16;
    sub_2610BC4F4();

    swift_willThrow();
  }

  else
  {
    v23 = sub_2610BC794();
    v24 = sub_2610BCD64();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_260F97000, v23, v24, "PASAnisetteRemoteRequestHandler fetch completed without data", v25, 2u);
      MEMORY[0x2666F8720](v25, -1, -1);
    }

    sub_26107ADF4();
    swift_allocError();
    *v26 = xmmword_2610CC5F0;
    *(v26 + 16) = 0;
    swift_willThrow();
  }

  v28 = *(v0 + 8);
  v29 = *MEMORY[0x277D85DE8];

  return v28();
}

uint64_t sub_261079C90(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261079D20, 0, 0);
}

uint64_t sub_261079D20()
{
  v18 = *MEMORY[0x277D85DE8];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler handleLegacy", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];

  sub_260FA99E0(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v9 = sub_26106DD54(v6, 1u);
  v0[10] = v10;
  v11 = v10;
  v12 = v9;
  v17 = (*(v8 + 40) + **(v8 + 40));
  v13 = *(*(v8 + 40) + 4);
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_261079FC4;
  v15 = *MEMORY[0x277D85DE8];

  return v17(v12, v11, v7, v8);
}

uint64_t sub_261079FC4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 88);
  v10 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = sub_26107A2D4;
  }

  else
  {
    v6 = v3[10];

    v5 = sub_26107A114;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26107A114()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 96);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v2 = objc_opt_self();
    *(v0 + 56) = 0;
    v3 = [v2 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v0 + 56];
    v4 = *(v0 + 56);
    if (v3)
    {
      v5 = sub_2610BC534();
      v7 = v6;

      v8 = *(v0 + 8);
      v9 = *MEMORY[0x277D85DE8];

      return v8(v5, v7);
    }

    v12 = v4;
    sub_2610BC4F4();

    swift_willThrow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    sub_26107ADF4();
    swift_allocError();
    *v11 = xmmword_2610CC600;
    *(v11 + 16) = 0;
    swift_willThrow();
  }

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_26107A2D4()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[10];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = v0[13];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_26107A36C(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66328, &qword_2610CC9A8) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v4 = sub_2610BC364();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26107A4A8, 0, 0);
}

uint64_t sub_26107A4A8()
{
  v39 = v0;
  v38 = *MEMORY[0x277D85DE8];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler handleAttestationData", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 24);

  sub_26106DF94(v5, 3u, &v37);
  v6 = v37;
  *(v0 + 88) = v37;
  sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
  sub_260FA9AB4(0, &qword_27FE66340, 0x277CCAB70);
  v7 = sub_2610BCD94();
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = *(v9 + 56);
  v12 = v7;
  v11(v10, 1, 1, v8);
  sub_26107AE48();
  sub_2610BD144();

  if ((*(v9 + 48))(v10, 1, v8) != 1)
  {
    v21 = *(v0 + 72);
    v22 = *(v0 + 80);
    v23 = *(v0 + 56);
    v24 = *(v0 + 64);
    v25 = *(v0 + 40);
    v26 = *(v0 + 32);
    v36 = v11;
    v27 = *(v24 + 32);
    v27(v21, *(v0 + 48), v23);
    v27(v22, v21, v23);
    v28 = (v26 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController);
    v29 = *(v26 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController + 24);
    v30 = v28[4];
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v24 + 16))(v25, v22, v23);
    v36(v25, 0, 1, v23);
    v35 = (*(v30 + 48) + **(v30 + 48));
    v31 = *(*(v30 + 48) + 4);
    v32 = swift_task_alloc();
    *(v0 + 104) = v32;
    *v32 = v0;
    v32[1] = sub_26107A900;
    v33 = *(v0 + 40);
    v34 = *MEMORY[0x277D85DE8];

    return v35(v33, v29, v30);
  }

  else
  {
LABEL_7:
    sub_26107ADF4();
    swift_allocError();
    *v13 = xmmword_2610CC610;
    *(v13 + 16) = 1;
    swift_willThrow();
    sub_260FAC46C(v6, *(&v6 + 1));
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);

    v18 = *(v0 + 8);
    v19 = *MEMORY[0x277D85DE8];

    return v18();
  }
}

uint64_t sub_26107A900(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  sub_260FA9980(*(v3 + 40), &qword_27FE66328, &qword_2610CC9A8);
  if (v1)
  {
    v7 = sub_26107AD10;
  }

  else
  {
    v7 = sub_26107AA78;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26107AA78()
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = objc_opt_self();
    *(v0 + 16) = 0;
    v3 = [v2 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v0 + 16];
    v4 = *(v0 + 16);
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 80);
    if (v3)
    {
      v8 = *(v0 + 64);
      v9 = *(v0 + 72);
      v10 = *(v0 + 48);
      v11 = *(v0 + 56);
      v34 = *(v0 + 40);
      v12 = sub_2610BC534();
      v32 = v13;
      v33 = v12;
      sub_260FAC46C(v6, v5);

      (*(v8 + 8))(v7, v11);

      v14 = *(v0 + 8);
      v15 = *MEMORY[0x277D85DE8];

      return v14(v33, v32);
    }

    v23 = *(v0 + 56);
    v24 = *(v0 + 64);
    v25 = v4;
    sub_2610BC4F4();

    swift_willThrow();
    sub_260FAC46C(v6, v5);

    (*(v24 + 8))(v7, v23);
  }

  else
  {
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v19 = *(v0 + 80);
    v20 = *(v0 + 56);
    v21 = *(v0 + 64);
    sub_26107ADF4();
    swift_allocError();
    *v22 = xmmword_2610CC610;
    *(v22 + 16) = 0;
    swift_willThrow();
    sub_260FAC46C(v18, v17);
    (*(v21 + 8))(v19, v20);
  }

  v27 = *(v0 + 72);
  v26 = *(v0 + 80);
  v29 = *(v0 + 40);
  v28 = *(v0 + 48);

  v30 = *(v0 + 8);
  v31 = *MEMORY[0x277D85DE8];

  return v30();
}

uint64_t sub_26107AD10()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  sub_260FAC46C(v0[11], v0[12]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[15];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[5];
  v7 = v0[6];

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

unint64_t sub_26107ADF4()
{
  result = qword_27FE66348;
  if (!qword_27FE66348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66348);
  }

  return result;
}

unint64_t sub_26107AE48()
{
  result = qword_27FE66350;
  if (!qword_27FE66350)
  {
    sub_2610BC364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66350);
  }

  return result;
}

uint64_t sub_26107AEA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_260FAC458(a1, a2);
  }

  return a1;
}

uint64_t sub_26107AEE4(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v15 = v1[2];
  v14 = v1[3];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  v11 = v1[12];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_260FBF860;

  return sub_26106CD68(a1, v15, v14, v6, v7, v8, v9, v10);
}

uint64_t sub_26107AFDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_260FB6DB4;

  return sub_260FAE9F8(a1, v7, v8, v9, v10);
}

uint64_t sub_26107B0C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26107B10C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_26107B180()
{
  result = qword_27FE66368;
  if (!qword_27FE66368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66368);
  }

  return result;
}

unint64_t sub_26107B1D4(void *a1)
{
  a1[1] = sub_26107B20C();
  a1[2] = sub_26107B260();
  result = sub_26107B2B4();
  a1[3] = result;
  return result;
}

unint64_t sub_26107B20C()
{
  result = qword_27FE66370;
  if (!qword_27FE66370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66370);
  }

  return result;
}

unint64_t sub_26107B260()
{
  result = qword_27FE66378;
  if (!qword_27FE66378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66378);
  }

  return result;
}

unint64_t sub_26107B2B4()
{
  result = qword_27FE66380[0];
  if (!qword_27FE66380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE66380);
  }

  return result;
}

uint64_t AnyTransport.availableRoutes.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t AnyTransport.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t AnyTransport.send(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = *a3;
  *(v5 + 72) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_26107B45C, 0, 0);
}

uint64_t sub_26107B45C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = v1[3];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *v5 = v0;
  v5[1] = sub_2610094C0;
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + 72);

  return sub_26107B528(v10, v4, v11, v8, v9, v12, v6, v3);
}

uint64_t sub_26107B528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 96) = v16;
  *(v8 + 33) = a6;
  *(v8 + 72) = a5;
  *(v8 + 80) = a7;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  v9 = *(a7 - 8);
  *(v8 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 120) = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  *(v8 + 128) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26107B678, 0, 0);
}

uint64_t sub_26107B678()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v16 = *(v0 + 96);
  v3 = *(v0 + 33);
  v4 = *(v0 + 72);
  v5 = *(v0 + 64);
  (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 56), *(v0 + 80));
  swift_dynamicCast();
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
  v6 = *(v16 + 32);
  v15 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_26107B800;
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 48);

  return v15(v9, v10, v0 + 16, v11, v12);
}

uint64_t sub_26107B800()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_26107B9C4;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v4 = sub_26107B92C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26107B92C()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[10];
  v6 = v0[5];
  swift_dynamicCast();

  v7 = v0[1];

  return v7();
}

uint64_t sub_26107B9C4()
{
  v1 = v0[18];
  v2 = v0[14];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_26107BA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FB6DB4;

  return AnyTransport.send(_:using:)(a1, a2, a3, a4);
}

uint64_t Transport.into()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 32);

  return v6(boxed_opaque_existential_1, v3, a1);
}

uint64_t TransportBuilding.buildAny()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v15 - v10;
  result = (*(v6 + 16))(a1, v6);
  if (!v3)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    a3[3] = AssociatedTypeWitness;
    a3[4] = AssociatedConformanceWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v8 + 32))(boxed_opaque_existential_1, v11, AssociatedTypeWitness);
  }

  return result;
}

uint64_t dispatch thunk of Transport.send(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_260FB6DB4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_26107BE5C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26107BE98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26107BEE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PASFlowStepAllSet.__allocating_init(delegate:authResults:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_26107E380(a1, a2, a3);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_26107BFA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63C70, &unk_2610C0780);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63C70, &unk_2610C0780);
  swift_endAccess();
}

uint64_t sub_26107C0E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountStore);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE65000, &qword_2610BEE60);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE65000, &qword_2610BEE60);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9DC50(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE65000, &qword_2610BEE60);
  swift_endAccess();
}

uint64_t sub_26107C21C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__extensionCache);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260FA2288();
    v4 = *(v1 + 16);
    *(v1 + 16) = v2;
  }

  return v2;
}

uint64_t PASFlowStepAllSet.init(delegate:authResults:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_26107E380(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_26107C31C()
{
  sub_26107BFA4(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 8))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_26107C390()
{
  sub_26107BFA4(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 16))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_26107C404()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = sub_2610BCC74();
  v1[5] = sub_2610BCC64();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_26107C4EC;

  return sub_26104582C();
}

uint64_t sub_26107C4EC()
{
  v2 = v0;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v10 = *v1;
  *(*v1 + 56) = v2;

  v7 = sub_2610BCBF4();
  if (v2)
  {
    v8 = sub_26107C774;
  }

  else
  {
    v8 = sub_26107C648;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_26107C648()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v5 = sub_2610BCC94();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);

  v6 = sub_2610BCC64();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  v9 = sub_261042434(0, 0, v3, &unk_2610CCDE8, v7);
  v10 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_notifyExtensionsAboutFlowCompletionTask);
  *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_notifyExtensionsAboutFlowCompletionTask) = v9;

  v11 = v0[1];

  return v11();
}

uint64_t sub_26107C774()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_26107C7E4()
{
  v0[2] = sub_2610BCC74();
  v0[3] = sub_2610BCC64();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261025394;

  return sub_26107C890();
}

uint64_t sub_26107C8B0()
{
  sub_2610BCC74();
  *(v0 + 120) = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26107C944, v2, v1);
}

uint64_t sub_26107C944()
{
  v2 = v0[14];
  v1 = v0[15];

  sub_26107BFA4((v0 + 7));
  v3 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v3);
  (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  return MEMORY[0x2822009F8](sub_26107C9F8, 0, 0);
}

uint64_t sub_26107C9F8()
{
  v1 = v0[5];
  if (!v1)
  {
    sub_260FA9980((v0 + 2), &unk_27FE656B0, &unk_2610BFCE0);
LABEL_7:
    v8 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = (*(v2 + 48))(v1, v2);
  v5 = v4;
  v0[16] = v3;
  v0[17] = v4;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v0[14];
  v7 = sub_26107C21C();
  v0[18] = v7;

  return MEMORY[0x2822009F8](sub_26107CB04, v7, 0);
}

uint64_t sub_26107CB04()
{
  v1 = v0[18];
  v2 = sub_261037C94();
  v0[19] = v2;
  v3 = *(MEMORY[0x277D857E0] + 4);
  v4 = swift_task_alloc();
  v0[20] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
  *v4 = v0;
  v4[1] = sub_26107CBC8;

  return MEMORY[0x282200460](v0 + 12, v2, v5);
}

uint64_t sub_26107CBC8()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_26107CCF4, v3, 0);
}

uint64_t sub_26107CCF4()
{
  v1 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_26107CD5C, 0, 0);
}

uint64_t sub_26107CD5C()
{
  v1 = *(v0 + 96);
  *(v0 + 168) = v1;
  v2 = *(v0 + 136);
  if (v1)
  {
    v3 = *(v1 + 56);
    v4 = swift_task_alloc();
    *(v0 + 184) = v4;
    *v4 = v0;
    v4[1] = sub_26107CE48;
    v5 = *(v0 + 128);

    return sub_26101A998(v5, v2);
  }

  else
  {
    v7 = *(v0 + 136);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_26107CE48()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_26107CFD8;
  }

  else
  {
    v4 = sub_26107CF78;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26107CF78()
{
  sub_2610389C0(*(v0 + 168), *(v0 + 176));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26107CFD8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepAllSet notifyExtensionsAboutFlowCompletion failed to notify extension of successful sign-in: %{public}@", v10, 0xCu);
    sub_260FA9980(v11, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v11, -1, -1);
    MEMORY[0x2666F8720](v10, -1, -1);

    sub_2610389C0(v9, v8);
  }

  else
  {

    sub_2610389C0(v9, v8);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_26107D1A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  v7 = sub_2610BC794();
  v8 = sub_2610BCD54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_260F97000, v7, v8, "PASFlowStepAllSet doneButtonTapped", v9, 2u);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  sub_26107BFA4(&v18);
  v10 = *(&v19 + 1);
  v11 = v20;
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  (*(v11 + 8))(v21, v10, v11);
  __swift_destroy_boxed_opaque_existential_0Tm(&v18);
  v21[5] = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_authResults);
  v12 = sub_2610BCC94();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_26107E53C(v21, &v18);
  sub_2610BCC74();

  v13 = sub_2610BCC64();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v1;
  v16 = v19;
  *(v14 + 40) = v18;
  *(v14 + 56) = v16;
  *(v14 + 72) = v20;
  sub_261042434(0, 0, v5, &unk_2610CCDF8, v14);

  return sub_261029488(v21);
}

uint64_t sub_26107D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = sub_2610BCC74();
  v5[15] = sub_2610BCC64();
  v6 = swift_task_alloc();
  v5[16] = v6;
  *v6 = v5;
  v6[1] = sub_26107D4C0;

  return sub_26107DC5C();
}

uint64_t sub_26107D4C0()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v8 = *v0;

  v6 = sub_2610BCBF4();
  *(v1 + 136) = v6;
  *(v1 + 144) = v5;

  return MEMORY[0x2822009F8](sub_26107D604, v6, v5);
}

uint64_t sub_26107D604()
{
  v1 = *(v0 + 96) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 152) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 104);
    v4 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    sub_26107E53C(v3, v0 + 16);
    *(v0 + 64) = 0;
    v6 = *(v4 + 16);
    v16 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_26107D864;

    return v16(v0 + 16, ObjectType, v4);
  }

  else
  {
    v10 = *(*(v0 + 96) + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_notifyExtensionsAboutFlowCompletionTask);
    *(v0 + 168) = v10;
    if (v10)
    {
      v11 = *(MEMORY[0x277D857E0] + 4);

      v12 = swift_task_alloc();
      *(v0 + 176) = v12;
      *v12 = v0;
      v12[1] = sub_26107DAB8;
      v13 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200460](v12, v10, v13);
    }

    else
    {
      v14 = *(v0 + 120);

      v15 = *(v0 + 8);

      return v15();
    }
  }
}

uint64_t sub_26107D864()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v7 = *v0;

  swift_unknownObjectRelease();
  sub_260FA9980(v1 + 16, &unk_27FE656D0, &unk_2610C0550);
  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_26107D9BC, v5, v4);
}

uint64_t sub_26107D9BC()
{
  v1 = *(v0[12] + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_notifyExtensionsAboutFlowCompletionTask);
  v0[21] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x277D857E0] + 4);

    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_26107DAB8;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v3, v1, v4);
  }

  else
  {
    v5 = v0[15];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_26107DAB8()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_26107DBFC, v5, v4);
}

uint64_t sub_26107DBFC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26107DC7C()
{
  v1 = v0[7];
  sub_26107C0E0((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_26107DDAC;

  return v8(v2, v3);
}

uint64_t sub_26107DDAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_26107DFF4;
  }

  else
  {
    v5 = sub_26107DEC0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26107DEC0()
{
  v1 = v0[9];
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v2 = sub_2610BC7B4();
    __swift_project_value_buffer(v2, qword_27FE65900);
    v3 = sub_2610BC794();
    v4 = sub_2610BCD64();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepAllSet ensureFlowCompletion local account is nil", v5, 2u);
      MEMORY[0x2666F8720](v5, -1, -1);
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_26107DFF4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepAllSet ensureFlowCompletion unable to check for local account\n%{public}@", v8, 0xCu);
    sub_260FA9980(v9, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_26107E1D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountProvider);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountStore);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__extensionCache);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_authResults);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_notifyExtensionsAboutFlowCompletionTask);
}

uint64_t PASFlowStepAllSet.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountProvider);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountStore);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__extensionCache);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_authResults);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_notifyExtensionsAboutFlowCompletionTask);

  return v0;
}

uint64_t PASFlowStepAllSet.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountProvider);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountStore);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__extensionCache);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_authResults);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_notifyExtensionsAboutFlowCompletionTask);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_26107E380(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v3 + v7) = v8;
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(v3 + v9) = v10;
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__extensionCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64228, &unk_2610CCE80);
  v12 = swift_allocObject();
  *(v3 + v11) = v12;
  *(v12 + 16) = 0;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_notifyExtensionsAboutFlowCompletionTask) = 0;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_authResults) = v6;

  return sub_26104DC44(a1, a2);
}

uint64_t sub_26107E488()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260FBF860;

  return sub_26107C7E4();
}

uint64_t sub_26107E598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_26107D410(a1, v4, v5, v6, (v1 + 5));
}

uint64_t type metadata accessor for PASFlowStepAllSet()
{
  result = qword_27FE66430;
  if (!qword_27FE66430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PASUserPasswordDataSourceError.hashValue.getter()
{
  sub_2610BD514();
  MEMORY[0x2666F7E40](0);
  return sub_2610BD574();
}

unint64_t sub_26107E860()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000027;
  *(inited + 56) = 0x80000002610D5920;
  v3 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v3;
}

uint64_t sub_26107E938(uint64_t a1)
{
  v2 = sub_26107EB3C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26107E974(uint64_t a1)
{
  v2 = sub_26107EB3C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26107E9D0()
{
  sub_26107EA58();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_26107EA58()
{
  result = qword_27FE66440;
  if (!qword_27FE66440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66440);
  }

  return result;
}

unint64_t sub_26107EAB0()
{
  result = qword_27FE66448;
  if (!qword_27FE66448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66448);
  }

  return result;
}

unint64_t sub_26107EB04(void *a1)
{
  a1[1] = sub_26107EB3C();
  a1[2] = sub_26107EB90();
  result = sub_26107EBE4();
  a1[3] = result;
  return result;
}

unint64_t sub_26107EB3C()
{
  result = qword_27FE66450;
  if (!qword_27FE66450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66450);
  }

  return result;
}

unint64_t sub_26107EB90()
{
  result = qword_27FE66458;
  if (!qword_27FE66458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66458);
  }

  return result;
}

unint64_t sub_26107EBE4()
{
  result = qword_27FE66460;
  if (!qword_27FE66460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66460);
  }

  return result;
}

uint64_t dispatch thunk of PASUserPasswordDataSourceProtocol.fetchPassword(forObjectID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_260FBDE14;

  return v13(a1, a2, a3, a4);
}

const char *PASFeatureFlagsKey.feature.getter()
{
  v1 = *v0;
  v2 = "PASSignInForSelf";
  v3 = "PASEnableAllFamilyMembers";
  v4 = "PASAccountPickerExtensions";
  if (v1 != 3)
  {
    v4 = "AgeAttestationPhase1";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "PASEnableEasySignIn";
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

unint64_t sub_26107EE7C()
{
  result = qword_27FE66468;
  if (!qword_27FE66468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66468);
  }

  return result;
}

uint64_t sub_26107EEE8(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for PASFeatureFlagsKey;
  v4[4] = sub_26107EE7C();
  LOBYTE(v4[0]) = v1;
  v2 = sub_2610BC694();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2 & 1;
}

const char *PASFeatureFlagsKey.domain.getter()
{
  if (*v0 == 4)
  {
    return "AuthKit";
  }

  else
  {
    return "ProximityAppleIDSetup";
  }
}

uint64_t PASFeatureFlagsKey.hashValue.getter()
{
  v1 = *v0;
  sub_2610BD514();
  MEMORY[0x2666F7E40](v1);
  return sub_2610BD574();
}

unint64_t sub_26107EFFC()
{
  result = qword_27FE66470;
  if (!qword_27FE66470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66470);
  }

  return result;
}

const char *sub_26107F050()
{
  if (*v0 == 4)
  {
    return "AuthKit";
  }

  else
  {
    return "ProximityAppleIDSetup";
  }
}

const char *sub_26107F080()
{
  v1 = *v0;
  v2 = "PASSignInForSelf";
  v3 = "PASEnableAllFamilyMembers";
  v4 = "PASAccountPickerExtensions";
  if (v1 != 3)
  {
    v4 = "AgeAttestationPhase1";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "PASEnableEasySignIn";
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

uint64_t getEnumTagSinglePayload for PASFeatureFlagsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PASFeatureFlagsKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PASFlowStepSourceError.__allocating_init(delegate:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  *(swift_allocObject() + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepSourceError_error) = a3;
  v9 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v9;
}

void *PASFlowStepSourceError.error.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepSourceError_error);
  v2 = v1;
  return v1;
}

uint64_t PASFlowStepSourceError.init(delegate:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepSourceError_error) = a3;
  v4 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_26107F398()
{
  v1 = *(v0 + 96) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 96);
    v4 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepSourceError_error);
    *(v0 + 16) = v6;
    *(v0 + 64) = 1;
    v7 = *(v4 + 16);
    v8 = v6;
    v13 = (v7 + *v7);
    v9 = v7[1];
    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *v10 = v0;
    v10[1] = sub_26107F55C;

    return v13(v0 + 16, ObjectType, v4);
  }

  else
  {
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_26107F55C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v6 = *v0;

  swift_unknownObjectRelease();
  sub_26107F760(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t PASFlowStepSourceError.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  return v0;
}

uint64_t PASFlowStepSourceError.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26107F760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656D0, &unk_2610C0550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PASFlowStepSourceError()
{
  result = qword_27FE66478;
  if (!qword_27FE66478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

ProximityAppleIDSetup::PASFamilyMemberPickerDataSourceError_optional __swiftcall PASFamilyMemberPickerDataSourceError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2610BD154();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PASFamilyMemberPickerDataSourceError.rawValue.getter()
{
  v1 = 0x446567616D496F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x416C61636F4C6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365757165526F6ELL;
  }
}

uint64_t sub_26107F96C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x446567616D496F6ELL;
  v4 = 0xEB00000000617461;
  if (v2 != 1)
  {
    v3 = 0x416C61636F4C6F6ELL;
    v4 = 0xEE00746E756F6363;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7365757165526F6ELL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  v7 = 0x446567616D496F6ELL;
  v8 = 0xEB00000000617461;
  if (*a2 != 1)
  {
    v7 = 0x416C61636F4C6F6ELL;
    v8 = 0xEE00746E756F6363;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7365757165526F6ELL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000074;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2610BD384();
  }

  return v11 & 1;
}

uint64_t sub_26107FA98()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26107FB54()
{
  *v0;
  *v0;
  sub_2610BCA54();
}

uint64_t sub_26107FBFC()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

void sub_26107FCC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0xEB00000000617461;
  v5 = 0x446567616D496F6ELL;
  if (v2 != 1)
  {
    v5 = 0x416C61636F4C6F6ELL;
    v4 = 0xEE00746E756F6363;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7365757165526F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_26107FD38()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  v5 = sub_2610B4614(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v7;
}

uint64_t sub_26107FE00(uint64_t a1)
{
  v2 = sub_261085CF0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26107FE3C(uint64_t a1)
{
  v2 = sub_261085CF0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASFamilyMemberImageProvider.fetchImage(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB9038;

  return sub_261085428(a1);
}

uint64_t sub_26107FF38(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    if (a2)
    {
      v11 = a2;
      v12 = sub_2610BC534();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    v15 = *(*(v7 + 64) + 40);
    *v15 = v12;
    v15[1] = v14;
    v15[2] = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t PASFamilyMemberImageProvider.fetchImage(for:monogramMaker:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_261080064, 0, 0);
}

uint64_t sub_261080064()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_261080130;
  v4 = v0[2];
  v3 = v0[3];

  return sub_2610846C0(v4, v3, v1);
}

uint64_t sub_261080130()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  if (!v0)
  {

    v5 = *(v4 + 8);

    __asm { BRAA            X3, X16 }
  }

  return MEMORY[0x2822009F8](sub_26108029C, 0, 0);
}

uint64_t sub_26108029C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

uint64_t PASFamilyMemberImageProvider.fetchImage(for:monogramMaker:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF870;

  return sub_2610846C0(a1, a2, a3);
}

uint64_t sub_2610803C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;
    v12 = a2;
    v13 = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_2610804B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FBF870;

  return sub_261085428(a1);
}

uint64_t sub_261080558(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_261080578, 0, 0);
}

uint64_t sub_261080578()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_261080644;
  v4 = v0[2];
  v3 = v0[3];

  return sub_2610846C0(v4, v3, v1);
}

uint64_t sub_261080644()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  if (!v0)
  {

    v5 = *(v4 + 8);

    __asm { BRAA            X3, X16 }
  }

  return MEMORY[0x2822009F8](sub_261086654, 0, 0);
}

id sub_2610807B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  [v0 setCachePolicy_];
  return v0;
}

uint64_t sub_261080818@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE65000, &qword_2610BEE60);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE65000, &qword_2610BEE60);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9DC50(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE65000, &qword_2610BEE60);
  return swift_endAccess();
}

uint64_t sub_26108093C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE664F0, &qword_2610CD6D0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE664F0, &qword_2610CD6D0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260FA0470(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE664F0, &qword_2610CD6D0);
  return swift_endAccess();
}

uint64_t sub_261080A80()
{
  v1 = v0[25];
  sub_26108093C((v0 + 18));
  v2 = v0[21];
  v3 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v2);
  LOBYTE(v1) = (*(v3 + 8))(v2, v3);
  v4 = __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  if (v1)
  {
    v5 = v0[25];
    v6 = *(v5 + 8);
    v7 = (*v5)(v4);
    v0[26] = v7;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_261080CF0;
    v8 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66490, &qword_2610CD2C0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_261081688;
    v0[13] = &block_descriptor_7;
    v0[14] = v8;
    [v7 startRequestWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v9 = sub_2610BC7B4();
    __swift_project_value_buffer(v9, qword_27FE65900);
    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_260F97000, v10, v11, "PASFamilyMemberPickerDataSource fetchFamilyMembers internet is not reachable", v12, 2u);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    v13 = v0[1];
    v14 = MEMORY[0x277D84F90];

    return v13(0, v14);
  }
}

uint64_t sub_261080CF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_261081614;
  }

  else
  {
    v3 = sub_261080E00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261080E00()
{
  v44 = v0;
  v1 = v0[26];
  v2 = v0[23];
  v0[28] = v2;

  v3 = [v2 members];
  sub_261085BC0();
  v4 = sub_2610BCB34();

  v41 = v2;
  v42 = v0;
  v5 = v0;
  v6 = v4;
  v5[24] = v4;
  v7 = v5 + 24;
  *(v7 + 64) = [v2 canAddMembers];
  v8 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_49:
    v9 = sub_2610BD0E4();
  }

  else
  {
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v6 & 0xC000000000000001;

  v11 = 0;
  while (1)
  {
    if (v9 == v11)
    {

      goto LABEL_32;
    }

    v12 = v6 + 8 * v11;
    if (v10)
    {
      v13 = MEMORY[0x2666F78E0](v11, v6);
    }

    else
    {
      if (v11 >= *(v8 + 16))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v13 = *(v12 + 32);
    }

    v14 = v13;
    v15 = [v13 isMe];

    if (v15)
    {
      break;
    }

    if (__OFADD__(v11++, 1))
    {
      goto LABEL_46;
    }
  }

  if (v10)
  {
    v17 = MEMORY[0x2666F78E0](v11, v6);
    goto LABEL_18;
  }

  if (v11 >= *(v8 + 16))
  {
    __break(1u);
    goto LABEL_61;
  }

  v17 = *(v12 + 32);
LABEL_18:
  v18 = v17;
  v19 = [v17 isGuardian];

  if (v19)
  {

    v6 = *v7;
    v20 = *v7 & 0xFFFFFFFFFFFFFF8;
    if (!(*v7 >> 62))
    {
      v21 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        v43 = MEMORY[0x277D84F90];

        goto LABEL_22;
      }

LABEL_56:
      if (qword_27FE63808 == -1)
      {
LABEL_57:
        v39 = sub_2610BC7B4();
        __swift_project_value_buffer(v39, qword_27FE65900);
        v28 = sub_2610BC794();
        v40 = sub_2610BCD84();
        if (os_log_type_enabled(v28, v40))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_260F97000, v28, v40, "PASFamilyMemberPickerDataSource fetchFamilyMembers empty family", v30, 2u);
          v31 = 1;
          goto LABEL_36;
        }

        v31 = 1;
        goto LABEL_38;
      }

LABEL_61:
      swift_once();
      goto LABEL_57;
    }

    if (v6 < 0)
    {
      v38 = *v7;
    }

    else
    {
      v38 = *v7 & 0xFFFFFFFFFFFFFF8;
    }

    if (!sub_2610BD0E4())
    {
      goto LABEL_56;
    }

    v35 = MEMORY[0x277D84F90];
    v43 = MEMORY[0x277D84F90];
    v21 = sub_2610BD0E4();

    if (!v21)
    {
LABEL_42:
      v42[29] = v35;

      v42[24] = v35;

      v36 = swift_task_alloc();
      v42[30] = v36;
      *v36 = v42;
      v36[1] = sub_261081330;
      v37 = v42[25];

      return sub_2610817F0(v35);
    }

LABEL_22:
    v22 = 0;
    v8 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v23 = MEMORY[0x2666F78E0](v22, v6);
      }

      else
      {
        if (v22 >= *(v20 + 16))
        {
          goto LABEL_48;
        }

        v23 = *(v6 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_47;
      }

      if ([v23 isChildAccount])
      {
        sub_2610BD024();
        v26 = *(v43 + 16);
        sub_2610BD054();
        sub_2610BD064();
        v7 = &v43;
        sub_2610BD034();
      }

      else
      {
      }

      ++v22;
      if (v25 == v21)
      {
        v35 = v43;
        goto LABEL_42;
      }
    }
  }

LABEL_32:
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v27 = sub_2610BC7B4();
  __swift_project_value_buffer(v27, qword_27FE65900);
  v28 = sub_2610BC794();
  v29 = sub_2610BCD84();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_260F97000, v28, v29, "PASFamilyMemberPickerDataSource fetchFamilyMembers not a guardian", v30, 2u);
    v31 = 0;
LABEL_36:
    MEMORY[0x2666F8720](v30, -1, -1);
    goto LABEL_38;
  }

  v31 = 0;
LABEL_38:

  v32 = v42[1];
  v33 = MEMORY[0x277D84F90];

  return v32(v31, v33);
}

uint64_t sub_261081330(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 248) = a1;

  return MEMORY[0x2822009F8](sub_261081450, 0, 0);
}

uint64_t sub_261081450()
{
  v18 = v0;
  v17 = sub_2610840E8(*(v0 + 248));
  sub_261083488(&v17);
  v1 = v17;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
    {
      v15 = v6;
      v16 = *(v0 + 232);
      v7 = sub_2610BD0E4();
      v6 = v15;
    }

    else
    {
      v7 = *(*(v0 + 232) + 16);
    }

    *(v6 + 4) = v7;
    v8 = v4;
    v9 = v6;
    _os_log_impl(&dword_260F97000, v3, v8, "PASFamilyMemberPickerDataSource fetchFamilyMembers complete with %{public}ld members", v6, 0xCu);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  v11 = *(v0 + 224);
  v10 = *(v0 + 232);

  v12 = *(v0 + 256);
  v13 = *(v0 + 8);

  return v13(v12, v1);
}

uint64_t sub_261081614()
{
  v1 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[27];

  return v3(0);
}

uint64_t sub_261081688(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_261081760(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_261084084(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2610817F0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_261081810, 0, 0);
}

uint64_t sub_261081810()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[3];
    }

    if (sub_2610BD0E4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = type metadata accessor for PASFamilyMember();
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = *(v0 + 3);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664D0, &unk_2610CD678);
    v5 = *(MEMORY[0x277D858E8] + 4);
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_261081A3C;

    return MEMORY[0x282200600](v0 + 2, v2, v4, 0, 0, &unk_2610CD690, v3, v2);
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v8 = sub_2610BC7B4();
  __swift_project_value_buffer(v8, qword_27FE65900);
  v9 = sub_2610BC794();
  v10 = sub_2610BCD84();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_260F97000, v9, v10, "PASFamilyMemberPickerDataSource hydrateFamilyMemberImages members isEmpty", v11, 2u);
    MEMORY[0x2666F8720](v11, -1, -1);
  }

  v12 = v0[1];
  v13 = MEMORY[0x277D84F90];

  return v12(v13);
}

uint64_t sub_261081A3C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_260FF90A8, 0, 0);
}

uint64_t PASFamilyMemberPickerDataSource.fetchLocalAccount(using:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_261081B74, 0, 0);
}

uint64_t sub_261081B74()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[9] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFamilyMemberPickerDataSource fetchLocalAccount", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[8];

  sub_261080818((v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v8 = *(v7 + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_261081D64;

  return v12(v6, v7);
}

uint64_t sub_261081D64(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_261082340;
  }

  else
  {
    v5 = sub_261081E78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261081E78()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0 + 2;
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    v4 = v1;
    v5 = sub_2610BC794();
    v6 = sub_2610BCD54();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[11];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 141558274;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v4;
      *v9 = v7;
      v10 = v4;
      _os_log_impl(&dword_260F97000, v5, v6, "PASFamilyMemberPickerDataSource fetchLocalAccount got local account %{mask.hash}@", v8, 0x16u);
      sub_260FA9980(v9, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v9, -1, -1);
      MEMORY[0x2666F8720](v8, -1, -1);
    }

    v11 = v0[8];

    v12 = v11[5];
    v13 = v11[6];
    __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
    v14 = *(v13 + 16);
    v24 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_261082184;
    v17 = v0[7];

    return v24(v4, v17, v12, v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    v19 = sub_2610BC794();
    v20 = sub_2610BCD64();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_260F97000, v19, v20, "PASFamilyMemberPickerDataSource fetchLocalAccount accountStore returned no account", v21, 2u);
      MEMORY[0x2666F8720](v21, -1, -1);
    }

    sub_261085C0C();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_261082184(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v9 = sub_2610823A4;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v9 = sub_2610822B8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2610822B8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[11];
  type metadata accessor for PASAccountWithImage();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_261082340()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[12];
  v2 = v0[1];

  return v2();
}

uint64_t sub_2610823A4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = v1;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  if (v7)
  {
    v9 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 141558530;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v9;
    *v11 = v9;
    *(v10 + 22) = 2114;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_260F97000, v5, v6, "PASFamilyMemberPickerDataSource fetch image failed for %{mask.hash}@ with error %{public}@", v10, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FF0, &unk_2610BFDA0);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v11, -1, -1);
    MEMORY[0x2666F8720](v10, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 88);
  type metadata accessor for PASAccountWithImage();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = xmmword_2610BF320;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_261082578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664E8, &unk_2610CD698);
  v4[25] = v5;
  v6 = *(v5 - 8);
  v4[26] = v6;
  v7 = *(v6 + 64) + 15;
  v4[27] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26108268C, 0, 0);
}

uint64_t sub_26108268C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 184);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v29 = *(v4 + 184);
    }

    v6 = sub_2610BD0E4();
    if (!v6)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_21;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822002E8](v6, a2, a3, a4);
  }

  v7 = 0;
  v38 = *(v4 + 184) + 32;
  v39 = **(v4 + 176);
  v40 = v5 & 0xC000000000000001;
  v41 = v6;
  do
  {
    v42 = v7;
    if (v40)
    {
      v10 = MEMORY[0x2666F78E0](v7, *(v4 + 184));
    }

    else
    {
      v10 = *(v38 + 8 * v7);
    }

    v11 = v10;
    v13 = *(v4 + 224);
    v12 = *(v4 + 232);
    v14 = *(v4 + 192);
    v15 = sub_2610BCC94();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v12, 1, 1, v15);
    sub_260FDD844(v14, v4 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = (v17 + 16);
    *(v17 + 24) = 0;
    v19 = *(v4 + 64);
    *(v17 + 64) = *(v4 + 48);
    *(v17 + 80) = v19;
    *(v17 + 96) = *(v4 + 80);
    v20 = *(v4 + 32);
    *(v17 + 32) = *(v4 + 16);
    *(v17 + 48) = v20;
    *(v17 + 112) = v11;
    sub_260FA9918(v12, v13, &unk_27FE65800, &qword_2610BF910);
    LODWORD(v12) = (*(v16 + 48))(v13, 1, v15);
    v21 = v11;
    v22 = *(v4 + 224);
    if (v12 == 1)
    {
      sub_260FA9980(*(v4 + 224), &unk_27FE65800, &qword_2610BF910);
    }

    else
    {
      sub_2610BCC84();
      (*(v16 + 8))(v22, v15);
    }

    if (*v18)
    {
      v23 = *(v17 + 24);
      v24 = *v18;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v25 = sub_2610BCBF4();
      v27 = v26;
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v28 = swift_allocObject();
    *(v28 + 16) = &unk_2610CD6B8;
    *(v28 + 24) = v17;
    type metadata accessor for PASFamilyMember();

    if (v27 | v25)
    {
      v8 = v4 + 96;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      *(v4 + 112) = v25;
      *(v4 + 120) = v27;
    }

    else
    {
      v8 = 0;
    }

    ++v7;
    v9 = *(v4 + 232);
    *(v4 + 128) = 1;
    *(v4 + 136) = v8;
    *(v4 + 144) = v39;
    swift_task_create();

    sub_260FA9980(v9, &unk_27FE65800, &qword_2610BF910);
  }

  while (v41 != v42 + 1);
LABEL_21:
  v30 = *(v4 + 216);
  v31 = *(v4 + 176);
  v32 = MEMORY[0x277D84F90];
  *(v4 + 152) = MEMORY[0x277D84F90];
  v33 = *v31;
  type metadata accessor for PASFamilyMember();
  sub_2610BCC44();
  *(v4 + 240) = v32;
  v34 = *(MEMORY[0x277D856B0] + 4);
  v35 = swift_task_alloc();
  *(v4 + 248) = v35;
  *v35 = v4;
  v35[1] = sub_261082A84;
  v36 = *(v4 + 216);
  a4 = *(v4 + 200);
  v6 = v4 + 160;
  a2 = 0;
  a3 = 0;

  return MEMORY[0x2822002E8](v6, a2, a3, a4);
}

uint64_t sub_261082A84()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261082B80, 0, 0);
}

uint64_t sub_261082B80()
{
  if (v0[20])
  {
    v1 = v0 + 19;
    v2 = v0[20];

    MEMORY[0x2666F7430](v3);
    if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2610BCB64();
    }

    sub_2610BCBA4();

    v0[30] = v0[19];
    v4 = *(MEMORY[0x277D856B0] + 4);
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = sub_261082A84;
    v6 = v0[27];
    v7 = v0[25];

    return MEMORY[0x2822002E8](v0 + 20, 0, 0, v7);
  }

  else
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v8 = sub_2610BC7B4();
    __swift_project_value_buffer(v8, qword_27FE65900);
    v9 = sub_2610BC794();
    v10 = sub_2610BCD54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_260F97000, v9, v10, "PASFamilyMemberPickerDataSource hydrateFamilyMemberImages complete", v11, 2u);
      MEMORY[0x2666F8720](v11, -1, -1);
    }

    v12 = v0[29];
    v13 = v0[30];
    v15 = v0[27];
    v14 = v0[28];
    v16 = v0[21];

    *v16 = v13;

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_261082DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_261082DF4, 0, 0);
}

uint64_t sub_261082DF4()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_261082F24;
  v7 = v0[4];

  return v9(v7, v2, v3);
}

uint64_t sub_261082F24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;

  if (v2)
  {

    v9 = sub_2610830FC;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v9 = sub_26108305C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26108305C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[2];
  type metadata accessor for PASFamilyMember();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  *v4 = v5;
  v8 = v0[1];
  v6 = v3;

  return v8();
}

uint64_t sub_2610830FC()
{
  v1 = v0[4];
  v2 = v0[2];
  type metadata accessor for PASFamilyMember();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = xmmword_2610BF320;
  *v2 = v3;
  v6 = v0[1];
  v4 = v1;

  return v6();
}

uint64_t sub_261083198()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_261083224;

  return PASFamilyMemberPickerDataSource.fetchFamilyMembers()();
}

uint64_t sub_261083224(char a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v8 = *(v11 + 8);
  if (v2)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1 & 1;
    v7 = a2;
  }

  return v8(v9, v7);
}

uint64_t sub_26108333C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB6F34;

  return PASFamilyMemberPickerDataSource.fetchLocalAccount(using:)(a1);
}

void *sub_2610833D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664E0, &unk_2610CC230);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_261083458@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_261083488(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2610538C8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_261083504(v6);
  return sub_2610BD034();
}

uint64_t sub_261083504(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2610BD2F4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PASFamilyMember();
        v6 = sub_2610BCB84();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_26108370C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_261083608(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_261083608(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v16 = v7;
    v17 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = *(v8 + 16);

      v11 = [v10 age];
      v12 = [*(v9 + 16) age];

      if (v12 >= v11)
      {
LABEL_4:
        ++v4;
        v6 = v17 + 1;
        v7 = v16 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v13 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v13;
      --v6;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26108370C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2610538B4(v8);
      v8 = result;
    }

    v88 = *(v8 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = v8;
        v8 = (v88 - 1);
        v90 = *&v89[16 * v88];
        v91 = *&v89[16 * v88 + 24];
        sub_261083D98((*a3 + 8 * v90), (*a3 + 8 * *&v89[16 * v88 + 16]), (*a3 + 8 * v91), v7);
        if (v5)
        {
        }

        if (v91 < v90)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_2610538B4(v89);
        }

        if (v88 - 2 >= *(v89 + 2))
        {
          goto LABEL_116;
        }

        v92 = &v89[16 * v88];
        *v92 = v90;
        *(v92 + 1) = v91;
        result = sub_261053828(v88 - 1);
        v8 = v89;
        v88 = *(v89 + 2);
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v98 = v5;
      v94 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*(*a3 + 8 * v7) + 16);

      v103 = [v13 age];
      v101 = [*(v12 + 16) age];

      v96 = v9;
      v14 = v9 + 2;
      while (v6 != v14)
      {
        v15 = *(v11 - 1);
        v16 = *(*v11 + 16);

        v17 = v8;
        v18 = [v16 age];
        v7 = [*(v15 + 16) age];

        v19 = v7 < v18;
        v8 = v17;
        v20 = !v19;
        ++v14;
        ++v11;
        if ((((v101 < v103) ^ v20) & 1) == 0)
        {
          v6 = v14 - 1;
          break;
        }
      }

      v9 = v96;
      v5 = v98;
      v21 = v94;
      if (v101 < v103)
      {
        if (v6 < v96)
        {
          goto LABEL_119;
        }

        if (v96 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v96;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v25 = *(v26 + v21);
              *(v26 + v21) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v21 += 8;
          }

          while (v24 < v23);
        }
      }

      v7 = v6;
    }

    v27 = a3[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v28 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v28)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_260FD1D3C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 2);
    v41 = *(v8 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_260FD1D3C((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v43;
    v44 = &v8[16 * v42];
    *(v44 + 4) = v9;
    *(v44 + 5) = v7;
    v45 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 4);
          v48 = *(v8 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_59:
          if (v50)
          {
            goto LABEL_106;
          }

          v63 = &v8[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_109;
          }

          v69 = &v8[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_113;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v73 = &v8[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_73:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = &v8[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_111;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_80:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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

        v85 = *&v8[16 * v84 + 32];
        v86 = *&v8[16 * v46 + 40];
        sub_261083D98((*a3 + 8 * v85), (*a3 + 8 * *&v8[16 * v46 + 32]), (*a3 + 8 * v86), v45);
        if (v5)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2610538B4(v8);
        }

        if (v84 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v87 = &v8[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_261053828(v46);
        v43 = *(v8 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v8[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_104;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_105;
      }

      v58 = &v8[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_107;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_110;
      }

      if (v62 >= v54)
      {
        v80 = &v8[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_114;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v95 = v8;
  v97 = v9;
  v99 = v5;
  v29 = *a3;
  v30 = *a3 + 8 * v7 - 8;
  v31 = v9 - v7;
  v102 = v28;
LABEL_32:
  v104 = v7;
  v32 = *(v29 + 8 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;
    v36 = *(v32 + 16);

    v37 = [v36 age];
    v38 = [*(v35 + 16) age];

    if (v38 >= v37)
    {
LABEL_31:
      v7 = v104 + 1;
      v30 += 8;
      --v31;
      if ((v104 + 1) != v102)
      {
        goto LABEL_32;
      }

      v7 = v102;
      v9 = v97;
      v5 = v99;
      v8 = v95;
      goto LABEL_39;
    }

    if (!v29)
    {
      break;
    }

    v39 = *v34;
    v32 = v34[1];
    *v34 = v32;
    v34[1] = v39;
    --v34;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_31;
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

uint64_t sub_261083D98(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
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
    if (__src != a2 || &a2[8 * v11] <= __src)
    {
      v22 = a2;
      v23 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v23;
      a2 = v22;
    }

    v38 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v36 = v5;
LABEL_27:
        v37 = a2;
        v24 = a2 - 8;
        v4 -= 8;
        v25 = v14;
        v26 = v14;
        do
        {
          v27 = v4 + 8;
          v28 = *(v26 - 1);
          v26 -= 8;
          v29 = v24;
          v30 = *v24;
          v31 = *(v28 + 16);

          v32 = [v31 age];
          v33 = [*(v30 + 16) age];

          if (v33 < v32)
          {
            v34 = v29;
            if (v27 != v37)
            {
              *v4 = *v29;
            }

            v13 = v38;
            v14 = v25;
            if (v25 <= v38 || (a2 = v34, v34 <= v36))
            {
              a2 = v34;
              goto LABEL_39;
            }

            goto LABEL_27;
          }

          if (v27 != v25)
          {
            *v4 = *v26;
          }

          v4 -= 8;
          v25 = v26;
          v13 = v38;
          v24 = v29;
        }

        while (v26 > v38);
        v14 = v26;
        a2 = v37;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[8 * v8];
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v13;
        v17 = *(*v15 + 16);

        v18 = [v17 age];
        v19 = [*(v16 + 16) age];

        if (v19 >= v18)
        {
          break;
        }

        v20 = v15;
        v21 = v5 == v15;
        v15 += 8;
        if (!v21)
        {
          goto LABEL_17;
        }

LABEL_18:
        v5 += 8;
        if (v13 >= v14 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v20 = v13;
      v21 = v5 == v13;
      v13 += 8;
      if (v21)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v20;
      goto LABEL_18;
    }

LABEL_20:
    a2 = v5;
  }

LABEL_39:
  if (a2 != v13 || a2 >= &v13[(v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v13, 8 * ((v14 - v13) / 8));
  }

  return 1;
}

uint64_t sub_261084084(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2610BD0E4();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2610BCFD4();
}

uint64_t sub_2610840E8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_2610BD0E4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2610833D0(v3, 0);
  sub_26108417C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26108417C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2610BD0E4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2610BD0E4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2610865EC(&qword_27FE664D8, &qword_27FE664D0, &unk_2610CD678);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664D0, &unk_2610CD678);
            v9 = sub_260FDC4C0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PASFamilyMember();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26108430C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2610BD0E4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2610BD0E4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2610865EC(&unk_27FE66520, &qword_27FE66110, &qword_2610CC1C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66110, &qword_2610CC1C0);
            v9 = sub_260FDC548(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PASPickerPresentable();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26108449C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_261084590;

  return v6(v2 + 16);
}

uint64_t sub_261084590()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2610846C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261084754, 0, 0);
}

uint64_t sub_261084754()
{
  v53 = *MEMORY[0x277D85DE8];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_2610BC7B4();
  *(v0 + 184) = __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 141558274;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFamilyMemberImageProvider fetchImage for %{mask.hash}@", v7, 0x16u);
    sub_260FA9980(v8, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v10 = *(v0 + 160);

  if ([v10 isEnabledForDataclass_])
  {
    v11 = *(v0 + 176);
    v12 = *MEMORY[0x277CBD158];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664E0, &unk_2610CC230);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2610C23D0;
    *(v13 + 32) = v12;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66508, &qword_2610CD6F0);
    v15 = sub_2610BCB24();

    *(v0 + 80) = 0;
    v16 = [v11 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

    v17 = *(v0 + 80);
    if (v16)
    {
      v18 = v17;
      v19 = v16;
      v20 = sub_2610BC794();
      v21 = sub_2610BCD54();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 141558274;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2112;
        *(v22 + 14) = v19;
        *v23 = v16;
        v24 = v19;
        _os_log_impl(&dword_260F97000, v20, v21, "PASFamilyMemberPickerDataSource fetchImage got contact %{mask.hash}@", v22, 0x16u);
        sub_260FA9980(v23, &qword_27FE63FF0, &unk_2610BFDA0);
        MEMORY[0x2666F8720](v23, -1, -1);
        MEMORY[0x2666F8720](v22, -1, -1);
      }

      v25 = [v19 thumbnailImageData];
      if (v25)
      {
        v26 = v25;
        v27 = sub_2610BC534();
        v29 = v28;

        v30 = *(v0 + 8);
        v31 = *MEMORY[0x277D85DE8];

        return v30(v27, v29);
      }
    }

    else
    {
      v33 = v17;
      v34 = sub_2610BC4F4();

      swift_willThrow();
    }
  }

  v35 = sub_2610BC794();
  v36 = sub_2610BCD64();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_260F97000, v35, v36, "PASFamilyMemberImageProvider fetchImage no contact image. Fallback to AAMyPhotoRequest", v37, 2u);
    MEMORY[0x2666F8720](v37, -1, -1);
  }

  v38 = *(v0 + 160);

  v39 = [objc_allocWithZone(MEMORY[0x277CEC820]) initWithAccount_];
  *(v0 + 192) = v39;
  if (v39)
  {
    v40 = v39;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_261084E58;
    v41 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664F8, &qword_2610CD6D8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2610803C0;
    *(v0 + 104) = &block_descriptor_42;
    *(v0 + 112) = v41;
    [v40 performRequestWithHandler_];
    v42 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v43 = *(v0 + 160);
    v44 = sub_2610BC794();
    v45 = sub_2610BCD64();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 160);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 141558274;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2112;
      *(v47 + 14) = v46;
      *v48 = v38;
      v49 = v46;
      _os_log_impl(&dword_260F97000, v44, v45, "PASFamilyMemberImageProvider failed to fetchImage for account %{mask.hash}@. A request could not be made.", v47, 0x16u);
      sub_260FA9980(v48, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v48, -1, -1);
      MEMORY[0x2666F8720](v47, -1, -1);
    }

    sub_261085C0C();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
    v51 = *(v0 + 8);
    v52 = *MEMORY[0x277D85DE8];

    return v51();
  }
}

uint64_t sub_261084E58()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_26108538C;
  }

  else
  {
    v3 = sub_261084F94;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261084F94()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v2 = v0[18];
  v1 = v0[19];
  if (v1 && (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    v4 = v3;
    v5 = v1;
    v6 = [v4 photoData];
    if (v6)
    {
      v7 = v6;
      v8 = v0[24];
      v9 = sub_2610BC534();
      v11 = v10;
    }

    else
    {
      v33 = v0[23];
      v34 = sub_2610BC794();
      v35 = sub_2610BCD64();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_260F97000, v34, v35, "PASFamilyMemberImageProvider fetchImage no photo data in AAPhotoResponse. Fallback to monogram", v36, 2u);
        MEMORY[0x2666F8720](v36, -1, -1);
      }

      v7 = v0[24];
      v38 = v0[20];
      v37 = v0[21];

      v39 = v37[3];
      v40 = v37[4];
      __swift_project_boxed_opaque_existential_1(v37, v39);
      v9 = (*(v40 + 8))(v38, v39, v40);
      v11 = v41;
      v8 = v5;
    }

    v42 = v0[1];
    v43 = *MEMORY[0x277D85DE8];

    return v42(v9, v11);
  }

  else
  {
    v12 = v0[23];
    v13 = v0[20];
    v14 = v2;
    v15 = v13;
    v16 = v1;
    v17 = sub_2610BC794();
    v18 = sub_2610BCD64();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[20];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44[0] = v22;
      *v20 = 141558786;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v19;
      *v21 = v19;
      *(v20 + 22) = 2160;
      *(v20 + 24) = 1752392040;
      *(v20 + 32) = 2080;
      v0[10] = v1;
      v23 = v19;
      v24 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66500, &unk_2610CD6E0);
      v25 = sub_2610BCA34();
      v27 = sub_260FA5970(v25, v26, v44);

      *(v20 + 34) = v27;
      _os_log_impl(&dword_260F97000, v17, v18, "PASFamilyMemberImageProvider failed to fetchImage for account %{mask.hash}@. the response was not in the correct format: %{mask.hash}s", v20, 0x2Au);
      sub_260FA9980(v21, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x2666F8720](v22, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    v28 = v0[24];
    sub_261085C0C();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();

    v30 = v0[1];
    v31 = *MEMORY[0x277D85DE8];

    return v30();
  }
}

uint64_t sub_26108538C()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  v3 = v0[25];
  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_261085448()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = sub_2610BC7B4();
  *(v0 + 176) = __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 141558274;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFamilyMemberImageProvider fetchImage for %{mask.hash}@", v7, 0x16u);
    sub_260FA9980(v8, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v10 = *(v0 + 168);

  v11 = [v10 hashedDSID];
  v12 = [objc_allocWithZone(MEMORY[0x277D08290]) initWithFamilyMemberHashedDSID:v11 size:1 localFallback:1];
  *(v0 + 184) = v12;

  if (v12)
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_261085834;
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66510, &qword_2610CD6F8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_26107FF38;
    *(v0 + 104) = &block_descriptor_46;
    *(v0 + 112) = v13;
    [v12 startRequestWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v14 = *(v0 + 168);
    v15 = sub_2610BC794();
    v16 = sub_2610BCD64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 168);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 141558274;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&dword_260F97000, v15, v16, "PASFamilyMemberImageProvider failed to fetchImage for family member%{mask.hash}@. A request could not be made.", v18, 0x16u);
      sub_260FA9980(v19, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v19, -1, -1);
      MEMORY[0x2666F8720](v18, -1, -1);
    }

    sub_261085C0C();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_261085834()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_261085B24;
  }

  else
  {
    v3 = sub_261085944;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261085944()
{
  v1 = *(v0 + 152);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 168);
    v4 = sub_2610BC794();
    v5 = sub_2610BCD64();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 168);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 141558274;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2112;
      *(v7 + 14) = v6;
      *v8 = v6;
      v9 = v6;
      _os_log_impl(&dword_260F97000, v4, v5, "PASFamilyMemberPickerDataSource failed to fetchImage for %{mask.hash}@. no image data was returned.", v7, 0x16u);
      sub_260FA9980(v8, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v8, -1, -1);
      MEMORY[0x2666F8720](v7, -1, -1);
    }

    v10 = *(v0 + 184);

    sub_261085C0C();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 144);

    v15 = *(v0 + 8);

    return v15(v14, v1);
  }
}

uint64_t sub_261085B24()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[24];
  v4 = v0[1];

  return v4();
}

unint64_t sub_261085BC0()
{
  result = qword_27FE64000;
  if (!qword_27FE64000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE64000);
  }

  return result;
}

unint64_t sub_261085C0C()
{
  result = qword_27FE664A0;
  if (!qword_27FE664A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE664A0);
  }

  return result;
}

unint64_t sub_261085C64()
{
  result = qword_27FE664B0;
  if (!qword_27FE664B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE664B0);
  }

  return result;
}

unint64_t sub_261085CB8(void *a1)
{
  a1[1] = sub_261085CF0();
  a1[2] = sub_261085D44();
  result = sub_261085D98();
  a1[3] = result;
  return result;
}

unint64_t sub_261085CF0()
{
  result = qword_27FE664B8;
  if (!qword_27FE664B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE664B8);
  }

  return result;
}

unint64_t sub_261085D44()
{
  result = qword_27FE664C0;
  if (!qword_27FE664C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE664C0);
  }

  return result;
}

unint64_t sub_261085D98()
{
  result = qword_27FE664C8;
  if (!qword_27FE664C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE664C8);
  }

  return result;
}

uint64_t dispatch thunk of PASFamilyMemberImageProviderProtocol.fetchImage(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260FBDE14;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PASFamilyMemberImageProviderProtocol.fetchImage(for:monogramMaker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2610378A8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASFamilyMemberPickerDataSourceProtocol.fetchFamilyMembers()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBDE14;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PASFamilyMemberPickerDataSourceProtocol.fetchLocalAccount(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260FBD298;

  return v11(a1, a2, a3);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_261086314(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26108635C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2610863C0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260FBF860;

  return sub_261082578(a1, a2, v7, v6);
}

uint64_t sub_261086474(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_261082DD0(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_261086534(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260FB6DB4;

  return sub_26108449C(a1, v5);
}

uint64_t sub_2610865EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261086680@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults__messageSessionProvider);
  swift_beginAccess();
  sub_260FF518C(v3 + 16, &v6);
  if (v7)
  {
    return sub_260FA9F80(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E15C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260FA9F80(&v6, v5);
  swift_beginAccess();
  sub_260FF51FC(v5, v3 + 16);
  swift_endAccess();
}

uint64_t PASFlowStepSendSignInResults.prepareForPresentation()()
{
  v1[32] = v0;
  v1[33] = sub_2610BCC74();
  v1[34] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[35] = v2;
  *v2 = v1;
  v2[1] = sub_26108684C;

  return sub_26104582C();
}

uint64_t sub_26108684C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = *v1;
  v3[36] = v0;

  v6 = v3[34];
  v7 = v3[33];
  v8 = sub_2610BCBF4();
  if (v2)
  {
    v10 = sub_261087474;
  }

  else
  {
    v3[37] = v8;
    v3[38] = v9;
    v10 = sub_2610869B0;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_2610869B0()
{
  v1 = v0[32];
  sub_261086680((v0 + 18));
  v2 = v0[21];
  v3 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_261086AE8;

  return (v8)(v0 + 23, v2, v3);
}

uint64_t sub_261086AE8()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 304);
  v6 = *(v2 + 296);
  if (v0)
  {
    v7 = sub_2610874D8;
  }

  else
  {
    v7 = sub_261086C24;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261086C24()
{
  v1 = v0[32];
  v2 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66540, &unk_2610C4040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 2;
  v4 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
  *(inited + 40) = v4;

  v5 = sub_260FA8D08(inited);
  v0[41] = v5;
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &qword_27FE63C20, &unk_2610BEDF0);
  v6 = swift_task_alloc();
  v0[42] = v6;
  *v6 = v0;
  v6[1] = sub_261086DA4;
  v7 = MEMORY[0x277D839B0];

  return sub_260FAECF0(v0 + 137, 3, 0, 0, 1, v5, v2, v7);
}

uint64_t sub_261086DA4()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = v2[37];
    v5 = v2[38];
    v6 = sub_261087888;
  }

  else
  {
    v7 = v2[41];

    v4 = v2[37];
    v5 = v2[38];
    v6 = sub_261086EC0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261086EC0()
{
  v1 = *(v0 + 137);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 184));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));
  if (v1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v2 = sub_2610BC7B4();
    __swift_project_value_buffer(v2, qword_27FE65900);
    v3 = sub_2610BC794();
    v4 = sub_2610BCD84();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "PASFlowStepSendSignInResults sent results to source device";
LABEL_10:
      _os_log_impl(&dword_260F97000, v3, v4, v6, v5, 2u);
      MEMORY[0x2666F8720](v5, -1, -1);
    }
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v3 = sub_2610BC794();
    v4 = sub_2610BCD64();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "PASFlowStepSendSignInResults failed to send to source device";
      goto LABEL_10;
    }
  }

  v8 = *(v0 + 256) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (Strong)
  {
    v10 = *(v0 + 256);
    v11 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    sub_260FA99E0(v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account, v0 + 88);
    *(v0 + 128) = *(v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults);
    *(v0 + 136) = 0;
    v13 = *(v11 + 24);

    v20 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 360) = v15;
    *v15 = v0;
    v15[1] = sub_261087250;

    return v20(v0 + 88, ObjectType, v11);
  }

  else
  {
    v17 = *(v0 + 272);

    v18 = *(v0 + 256);
    sub_260FC3450();
    swift_allocError();
    *v19 = xmmword_2610CD700;
    *(v19 + 16) = &unk_2610CD728;
    *(v19 + 24) = v18;
    *(v19 + 32) = 0;
    swift_willThrow();
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_261087250()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 352);
  v7 = *v0;

  swift_unknownObjectRelease();
  sub_260FA9980(v1 + 88, &qword_27FE65690, qword_2610C7520);
  v4 = *(v1 + 304);
  v5 = *(v1 + 296);

  return MEMORY[0x2822009F8](sub_2610873A8, v5, v4);
}

uint64_t sub_2610873A8()
{
  v1 = v0[34];

  v2 = v0[32];
  sub_260FC3450();
  swift_allocError();
  *v3 = xmmword_2610CD700;
  *(v3 + 16) = &unk_2610CD728;
  *(v3 + 24) = v2;
  *(v3 + 32) = 0;
  swift_willThrow();
  v5 = v0[1];

  return v5();
}

uint64_t sub_261087474()
{
  v1 = v0[34];

  v2 = v0[36];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2610874D8()
{
  v27 = v0;
  v1 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136446210;
    *(v0 + 248) = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v26);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepSendSignInResults failed to send to source\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 256) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (Strong)
  {
    v14 = *(v0 + 256);
    v15 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    sub_260FA99E0(v14 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account, v0 + 88);
    *(v0 + 128) = *(v14 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults);
    *(v0 + 136) = 0;
    v17 = *(v15 + 24);

    v24 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v0 + 360) = v19;
    *v19 = v0;
    v19[1] = sub_261087250;

    return v24(v0 + 88, ObjectType, v15);
  }

  else
  {
    v21 = *(v0 + 272);

    v22 = *(v0 + 256);
    sub_260FC3450();
    swift_allocError();
    *v23 = xmmword_2610CD700;
    *(v23 + 16) = &unk_2610CD728;
    *(v23 + 24) = v22;
    *(v23 + 32) = 0;
    swift_willThrow();
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_261087888()
{
  v28 = v0;
  v1 = *(v0 + 328);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 184));
  v2 = *(v0 + 344);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = sub_2610BC7B4();
  __swift_project_value_buffer(v3, qword_27FE65900);
  v4 = v2;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136446210;
    *(v0 + 248) = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, &v27);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepSendSignInResults failed to send to source\n%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 256) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (Strong)
  {
    v15 = *(v0 + 256);
    v16 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    sub_260FA99E0(v15 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account, v0 + 88);
    *(v0 + 128) = *(v15 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults);
    *(v0 + 136) = 0;
    v18 = *(v16 + 24);

    v25 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v0 + 360) = v20;
    *v20 = v0;
    v20[1] = sub_261087250;

    return v25(v0 + 88, ObjectType, v16);
  }

  else
  {
    v22 = *(v0 + 272);

    v23 = *(v0 + 256);
    sub_260FC3450();
    swift_allocError();
    *v24 = xmmword_2610CD700;
    *(v24 + 16) = &unk_2610CD728;
    *(v24 + 24) = v23;
    *(v24 + 32) = 0;
    swift_willThrow();
    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_261087C48()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_260FC77D0(v0);
}

uint64_t sub_261087D08()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account));
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults__messageSessionProvider);
}

uint64_t PASFlowStepSendSignInResults.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_cancellables);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__baseStepAnalyticsProvider);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account));
  v7 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults);

  v8 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults__messageSessionProvider);

  return v0;
}

uint64_t PASFlowStepSendSignInResults.__deallocating_deinit()
{
  PASFlowStepSendSignInResults.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for PASFlowStepSendSignInResults()
{
  result = qword_27FE66560;
  if (!qword_27FE66560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PASFlowStepConnectPeer.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v8 + v9) = v10;
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  *(v8 + v11) = v12;
  v13 = v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
  *v13 = 0;
  *(v13 + 8) = -1;
  v14 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_261088064()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__deviceProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = qword_27FE637E0;

    if (v4 != -1)
    {
      swift_once();
    }

    v3 = sub_260F9D764();
    v5 = *(v1 + 16);
    *(v1 + 16) = v3;
    *(v1 + 24) = v6;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_26108813C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__accountProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63C70, &unk_2610C0780);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC8FEC(v5, v3 + 16);
  swift_endAccess();
}

uint64_t sub_261088268()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_2610882EC()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_261088348@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2610BD154();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_2610883C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x676E697473697865, 0xEF746E756F636341);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v4;
}

uint64_t sub_2610884C8()
{
  v1 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x676E697473697865, 0xEF746E756F636341);
  return v1;
}

uint64_t sub_261088534(uint64_t a1)
{
  v2 = sub_26108A894();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261088570(uint64_t a1)
{
  v2 = sub_26108A894();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASFlowStepConnectPeer.prepareForPresentation()()
{
  v1[27] = v0;
  v1[28] = sub_2610BCC74();
  v1[29] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[30] = v2;
  *v2 = v1;
  v2[1] = sub_26108865C;

  return sub_26104582C();
}

uint64_t sub_26108865C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  v6 = *(v3 + 232);
  v7 = *(v3 + 224);
  v9 = sub_2610BCBF4();
  if (v2)
  {
    v10 = sub_261088C54;
  }

  else
  {
    v10 = sub_2610887B4;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2610887B4()
{
  v35 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);

  sub_26108813C(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
  (*(v4 + 8))(v3, v4);
  if (*(v0 + 120))
  {
    sub_260F98E14((v0 + 96), v0 + 16);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v5 = sub_2610BC7B4();
    __swift_project_value_buffer(v5, qword_27FE65900);
    sub_260FA99E0(v0 + 16, v0 + 136);
    v6 = sub_2610BC794();
    v7 = sub_2610BCD54();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34[0] = v9;
      *v8 = 141558274;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2080;
      v10 = *(v0 + 160);
      v11 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v10);
      v12 = (*(v11 + 32))(v10, v11);
      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
      v16 = sub_260FA5970(v14, v15, v34);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_260F97000, v6, v7, "PASFlowStepConnectPeer prepareForPresentation targetAccount %{mask.hash}s exists", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x2666F8720](v9, -1, -1);
      MEMORY[0x2666F8720](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    }

    sub_260FA99E0(v0 + 16, v0 + 176);
    v19 = sub_2610BC794();
    v20 = sub_2610BCD54();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34[0] = v22;
      *v21 = 141558274;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2080;
      v23 = *(v0 + 200);
      v24 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v23);
      v25 = (*(v24 + 56))(v23, v24);
      if (v26)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0;
      }

      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0xE000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
      v29 = sub_260FA5970(v27, v28, v34);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_260F97000, v19, v20, "PASFlowStepConnectPeer prepareForPresentation targetAccount %{mask.hash}s already exists", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x2666F8720](v22, -1, -1);
      MEMORY[0x2666F8720](v21, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
    }

    v30 = *(v0 + 216);
    sub_260FC3450();
    swift_allocError();
    *v31 = 0xD000000000000015;
    *(v31 + 8) = 0x80000002610D5BE0;
    *(v31 + 16) = &unk_2610CD7C8;
    *(v31 + 24) = v30;
    *(v31 + 32) = 0;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    v17 = *(v0 + 216);
    sub_260FA9980(v0 + 96, &unk_27FE656B0, &unk_2610BFCE0);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    sub_260FC3450();
    swift_allocError();
    *v18 = 0xD00000000000002CLL;
    *(v18 + 8) = 0x80000002610D5BB0;
    *(v18 + 16) = &unk_2610CD7B8;
    *(v18 + 24) = v17;
    *(v18 + 32) = 0;
    swift_willThrow();
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_261088C54()
{
  v1 = v0[29];

  v2 = v0[31];
  v3 = v0[1];

  return v3();
}

uint64_t sub_261088CB8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2610BCC74();
  *(v1 + 24) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261088D50, v3, v2);
}

uint64_t sub_261088D50()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_26108A4E4();
  v3 = swift_allocError();
  v4 = v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
  v5 = *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result);
  *v4 = v3;
  v6 = *(v4 + 8);
  *(v4 + 8) = 1;
  sub_260FEBBC8(v5, v6);
  sub_2610439BC();
  v7 = v0[1];

  return v7();
}

uint64_t sub_261088DF8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2610BCC74();
  *(v1 + 24) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261088E90, v3, v2);
}

uint64_t sub_261088E90()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_261088EF4();
  v3 = v0[1];

  return v3();
}

uint64_t sub_261088EF4()
{
  v1 = v0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE665A8, &unk_2610CD850);
  v2 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C8, &qword_2610C24F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE665B0, &unk_2610CD860);
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_2610BCC94();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;
  v14[5] = 60;
  v14[6] = &unk_2610CD878;
  v14[7] = v1;
  swift_retain_n();
  v15 = sub_261042D5C(0, 0, v12, &unk_2610CD880, v14);
  sub_261088064();
  v17 = v16;
  ObjectType = swift_getObjectType();
  (*(v17 + 48))(ObjectType, v17);
  swift_unknownObjectRelease();
  sub_26108813C(v28);
  v20 = v29;
  v19 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v19 + 32))(v20, v19);
  sub_260FDD378(&qword_27FE646E0, &qword_27FE646C8, &qword_2610C24F0);
  sub_260FDD378(&qword_27FE665B8, &qword_27FE665A8, &unk_2610CD850);
  sub_2610BC7C4();
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v1;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26108A6A4;
  *(v22 + 24) = v21;
  sub_260FDD378(&qword_27FE665C0, &qword_27FE665B0, &unk_2610CD860);

  v23 = v27;
  sub_2610BC8A4();

  (*(v5 + 8))(v8, v23);
  swift_beginAccess();
  sub_2610BC7D4();
  swift_endAccess();
}

uint64_t sub_261089374(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261089410, 0, 0);
}

uint64_t sub_261089410()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepConnectPeer waitForPeerToBecomeReady timeout.\n%{public}@", v7, 0xCu);
    sub_260FA9980(v8, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v12 = v0[3];
  v11 = v0[4];

  v13 = sub_2610BCC94();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_2610BCC74();

  v14 = sub_2610BCC64();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  sub_261042434(0, 0, v11, &unk_2610CD8A8, v15);

  v17 = v0[1];

  return v17();
}

uint64_t sub_261089654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a4;
  sub_2610BCC74();
  *(v4 + 104) = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610896EC, v6, v5);
}

uint64_t sub_2610896EC()
{
  v2 = v0[12];
  v1 = v0[13];

  sub_261088064();
  v4 = v3;
  ObjectType = swift_getObjectType();
  (*(v4 + 16))(ObjectType, v4);
  swift_unknownObjectRelease();
  v6 = v0[5];
  sub_260FA9980((v0 + 2), &qword_27FE63850, qword_2610CC240);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v0[12];
  sub_26108813C((v0 + 2));
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  (*(v9 + 16))(v8, v9);
  v10 = v0[10];
  sub_260FA9980((v0 + 7), &unk_27FE641F0, qword_2610C0210);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v10)
  {
    v11 = v0[12] + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
    v12 = *v11;
    *v11 = 1;
    v13 = *(v11 + 8);
    *(v11 + 8) = 0;
    sub_260FEBBC8(v12, v13);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v14 = sub_2610BC7B4();
    __swift_project_value_buffer(v14, qword_27FE65900);
    v15 = sub_2610BC794();
    v16 = sub_2610BCD64();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_260F97000, v15, v16, "PASFlowStepConnectPeer waitForPeerToBecomeReady timer failed BUT the device and account contexts were present. This is unexpected, but we can continue.", v17, 2u);
      MEMORY[0x2666F8720](v17, -1, -1);
    }
  }

  else
  {
LABEL_8:
    v18 = v0[12];
    sub_260FC3450();
    v19 = swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 4;
    v21 = v18 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
    v22 = *(v18 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result);
    *v21 = v19;
    LOBYTE(v20) = *(v21 + 8);
    *(v21 + 8) = 1;
    sub_260FEBBC8(v22, v20);
  }

  v23 = v0[12];
  sub_2610439BC();
  v24 = v0[1];

  return v24();
}

void sub_261089950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v12 = sub_2610BC7B4();
  __swift_project_value_buffer(v12, qword_27FE65900);
  sub_260FA9918(a1, v36, &qword_27FE63850, qword_2610CC240);
  sub_260FA9918(a2, v35, &unk_27FE641F0, qword_2610C0210);
  v13 = sub_2610BC794();
  v14 = sub_2610BCD84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136446466;
    v32 = a2;
    v33 = v11;
    v34 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63850, qword_2610CC240);
    v17 = sub_2610BCE54();
    v31 = a1;
    v18 = a3;
    v20 = v19;
    sub_260FA9980(v36, &qword_27FE63850, qword_2610CC240);
    v21 = sub_260FA5970(v17, v20, &v34);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE641F0, qword_2610C0210);
    v22 = sub_2610BCE54();
    v24 = v23;
    v11 = v33;
    sub_260FA9980(v35, &unk_27FE641F0, qword_2610C0210);
    v25 = sub_260FA5970(v22, v24, &v34);
    a3 = v18;
    v26 = v31;

    *(v15 + 14) = v25;
    a2 = v32;
    _os_log_impl(&dword_260F97000, v13, v14, "PASFlowStepConnectPeer waitForPeerToBecomeReady sink got: %{public}s, %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v16, -1, -1);
    MEMORY[0x2666F8720](v15, -1, -1);

    if (!*(v26 + 24))
    {
      return;
    }
  }

  else
  {

    sub_260FA9980(v35, &unk_27FE641F0, qword_2610C0210);
    sub_260FA9980(v36, &qword_27FE63850, qword_2610CC240);
    if (!*(a1 + 24))
    {
      return;
    }
  }

  if (*(a2 + 24))
  {
    v27 = sub_2610BCC94();
    (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
    sub_2610BCC74();

    v28 = sub_2610BCC64();
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    v29[2] = v28;
    v29[3] = v30;
    v29[4] = a3;
    v29[5] = a4;
    sub_261042434(0, 0, v11, &unk_2610CD890, v29);
  }
}

uint64_t sub_261089D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2610BCC74();
  v5[4] = sub_2610BCC64();
  v7 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261089DA0, v7, v6);
}

uint64_t sub_261089DA0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  sub_2610BCCB4();
  v4 = v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
  v5 = *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result);
  *v4 = 1;
  v6 = *(v4 + 8);
  *(v4 + 8) = 0;
  sub_260FEBBC8(v5, v6);
  sub_2610439BC();
  v7 = v0[1];

  return v7();
}

uint64_t PASFlowStepConnectPeer.nextStep()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result + 8);
  if (v1 == 255)
  {
    v9 = 0x80000002610D5C00;
    sub_260FC3450();
    swift_allocError();
    *v12 = 0xD000000000000029;
    *(v12 + 8) = 0x80000002610D5C00;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 1;
    swift_willThrow();
  }

  else
  {
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result);
      v3 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = *(v3 + 8);
      v6 = type metadata accessor for PASFlowStepSourceError();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      *(swift_allocObject() + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepSourceError_error) = v2;
      sub_260FEBBEC(v2, v1);
      v9 = sub_26104DC44(Strong, v5);
      swift_unknownObjectRelease();
      v10 = &qword_27FE657A8;
      v11 = type metadata accessor for PASFlowStepSourceError;
    }

    else
    {
      v13 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      v15 = *(v13 + 8);
      v16 = type metadata accessor for PASFlowStepSelectPicker();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v9 = sub_2610B1410(v14, v15);
      swift_unknownObjectRelease();
      v10 = &unk_27FE66588;
      v11 = type metadata accessor for PASFlowStepSelectPicker;
    }

    sub_26108A3E8(v10, v11);
  }

  return v9;
}

uint64_t PASFlowStepConnectPeer.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v2 + v5) = v6;
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v2 + v7) = v8;
  v9 = v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
  *v9 = 0;
  *(v9 + 8) = -1;
  v10 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v10;
}

void sub_26108A108()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__deviceProvider);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__accountProvider);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result);
  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result + 8);

  sub_260FEBBC8(v3, v4);
}

uint64_t PASFlowStepConnectPeer.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__deviceProvider);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__accountProvider);

  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result + 8));
  return v0;
}

uint64_t PASFlowStepConnectPeer.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__deviceProvider);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__accountProvider);

  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result + 8));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_26108A284()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FBF860;

  return sub_261088DF8(v0);
}

uint64_t sub_26108A314()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FBF860;

  return sub_261088CB8(v0);
}

uint64_t sub_26108A3A4(uint64_t a1)
{
  result = sub_26108A3E8(&qword_27FE64D18, type metadata accessor for PASFlowStepConnectPeer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26108A3E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepConnectPeer()
{
  result = qword_27FE66590;
  if (!qword_27FE66590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26108A4E4()
{
  result = qword_27FE665A0;
  if (!qword_27FE665A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE665A0);
  }

  return result;
}

uint64_t sub_26108A538(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_260FBF860;

  return sub_261089374(a1, v1);
}

uint64_t sub_26108A5D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_260FB6DB4;

  return sub_26104A8D0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_26108A6AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, a1 + 40);
}

uint64_t sub_26108A6D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FB6DB4;

  return sub_261089D08(a1, v4, v5, v7, v6);
}

uint64_t sub_26108A798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_261089654(a1, v4, v5, v6);
}

unint64_t sub_26108A85C(void *a1)
{
  a1[1] = sub_26108A894();
  a1[2] = sub_26108A8E8();
  result = sub_26108A93C();
  a1[3] = result;
  return result;
}

unint64_t sub_26108A894()
{
  result = qword_27FE665C8;
  if (!qword_27FE665C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE665C8);
  }

  return result;
}

unint64_t sub_26108A8E8()
{
  result = qword_27FE665D0;
  if (!qword_27FE665D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE665D0);
  }

  return result;
}

unint64_t sub_26108A93C()
{
  result = qword_27FE665D8;
  if (!qword_27FE665D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE665D8);
  }

  return result;
}

unint64_t sub_26108A994()
{
  result = qword_27FE665E0;
  if (!qword_27FE665E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE665E0);
  }

  return result;
}

uint64_t PASFlowStepSignInResult.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656F0, &qword_2610BFCF0);
  v9 = swift_allocObject();
  *(v7 + v8) = v9;
  *(v9 + 16) = 0;
  v10 = (v7 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
  *v10 = 0;
  v10[1] = 0;
  v11 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_26108AA88()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260FA1D54();
    v4 = *(v1 + 16);
    *(v1 + 16) = v2;
  }

  return v2;
}

uint64_t PASFlowStepSignInResult.prepareForPresentation()()
{
  v1[2] = v0;
  v1[3] = sub_2610BCC74();
  v1[4] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_26108AC04;

  return sub_26104582C();
}

uint64_t sub_26108AC04()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v7 = sub_2610BCBF4();

    return MEMORY[0x2822009F8](sub_260FC97F4, v7, v6);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[7] = v8;
    *v8 = v3;
    v8[1] = sub_260FC9654;
    v9 = v3[2];

    return sub_26108AD88();
  }
}

void sub_26108ADA8()
{
  v1 = v0[7];
  sub_26108AA88();
  PASMessageSessionProvider.getMessageSession()((v0 + 2));
  v2 = v0[7];

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_260FADDAC(3u, 0, &unk_2610CDB40, v5, v3, MEMORY[0x277D839B0], v4);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_26108AA88();
  PASMessageSessionProvider.getMessageSession()((v0 + 2));
  v6 = v0[7];

  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_260FADDAC(6u, 0, &unk_2610CDB50, v9, v7, MEMORY[0x277D839B0], v8);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v10 = v0[1];

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26108B128()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_26108B198, 0, 0);
}

uint64_t sub_26108B198()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26108B1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a1;
  return MEMORY[0x2822009F8](sub_26108B21C, 0, 0);
}

uint64_t sub_26108B21C()
{
  v26 = v0;
  v1 = *(v0 + 80);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (!Strong)
  {
    **(v0 + 64) = 0;
    v4 = *(v0 + 8);
    goto LABEL_4;
  }

  v3 = Strong;
  sub_260FB15A0(*(v0 + 72), 2u, &v25);
  v5 = v25;
  if (!v25)
  {

    sub_260FBE4B4();
    swift_allocError();
    *v23 = xmmword_2610C0790;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;
    swift_willThrow();

    v4 = *(v0 + 8);
LABEL_4:

    __asm { BRAA            X1, X16 }
  }

  v6 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v9 = type metadata accessor for PASFlowStepRepairFamily();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0;
  *(v12 + v13) = v14;
  v15 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0;
  *(v12 + v15) = v16;
  *(v12 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_familyMember) = 0;
  *(v12 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_error) = 0;
  *(v12 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepRepairFamily_authResults) = v5;
  v17 = sub_26104DC44(v7, v8);
  swift_unknownObjectRelease();
  v18 = sub_26108BF10(&qword_27FE66610, type metadata accessor for PASFlowStepRepairFamily);
  v19 = (v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
  v20 = *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
  *v19 = v17;
  v19[1] = v18;
  swift_unknownObjectRelease();
  sub_2610BCC74();
  *(v0 + 96) = sub_2610BCC64();
  v22 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26108B508, v22, v21);
}

uint64_t sub_26108B508()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_26108B574, 0, 0);
}

uint64_t sub_26108B574()
{
  v1 = *(v0 + 88);

  **(v0 + 64) = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26108B5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a1;
  return MEMORY[0x2822009F8](sub_26108B608, 0, 0);
}

uint64_t sub_26108B608()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (!Strong)
  {
    v5 = 0;
LABEL_4:
    **(v0 + 64) = v5;
    v6 = *(v0 + 8);
    goto LABEL_5;
  }

  v3 = Strong;
  v4 = sub_260FB22EC(*(v0 + 72), 6u);
  *(v0 + 96) = v4;
  if (!v4)
  {
    sub_260FBE4B4();
    swift_allocError();
    *v8 = xmmword_2610CDA80;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    swift_willThrow();

    v6 = *(v0 + 8);
LABEL_5:

    __asm { BRAA            X1, X16 }
  }

  v7 = v4;
  if ([v4 integerValue])
  {

    v5 = 1;
    goto LABEL_4;
  }

  v9 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  v11 = *(v9 + 8);
  v12 = type metadata accessor for PASFlowStepConfirmExistingPasscode();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v17 = swift_allocObject();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *(v15 + v16) = v17;
  v18 = OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v19 = swift_allocObject();
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0;
  *(v15 + v18) = v19;
  *(v15 + OBJC_IVAR____TtC21ProximityAppleIDSetup34PASFlowStepConfirmExistingPasscode_authResults) = 0;
  v20 = sub_26104DC44(v10, v11);
  swift_unknownObjectRelease();
  v21 = sub_26108BF10(&qword_27FE66608, type metadata accessor for PASFlowStepConfirmExistingPasscode);
  v22 = (v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
  v23 = *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
  *v22 = v20;
  v22[1] = v21;
  swift_unknownObjectRelease();
  sub_2610BCC74();
  *(v0 + 104) = sub_2610BCC64();
  v25 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26108B8F0, v25, v24);
}

uint64_t sub_26108B8F0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_26108B960, 0, 0);
}

uint64_t sub_26108B960()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  **(v0 + 64) = 1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t PASFlowStepSignInResult.nextStep()()
{
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep))
  {
    v1 = *(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep + 8) + 8);
    return swift_unknownObjectRetain();
  }

  else
  {
    sub_260FC3450();
    swift_allocError();
    *v3 = 0xD000000000000028;
    *(v3 + 8) = 0x80000002610D5C70;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 1;
    return swift_willThrow();
  }
}

uint64_t PASFlowStepSignInResult.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656F0, &qword_2610BFCF0);
  v6 = swift_allocObject();
  *(v2 + v5) = v6;
  *(v6 + 16) = 0;
  v7 = (v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
  *v7 = 0;
  v7[1] = 0;
  v8 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_26108BAF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);

  return swift_unknownObjectRelease();
}

uint64_t PASFlowStepSignInResult.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PASFlowStepSignInResult.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);

  swift_unknownObjectRelease();
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_26108BC14()
{
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep))
  {
    v1 = *(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep + 8) + 8);
    return swift_unknownObjectRetain();
  }

  else
  {
    sub_260FC3450();
    swift_allocError();
    *v3 = 0xD000000000000028;
    *(v3 + 8) = 0x80000002610D5C70;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_26108BCAC(uint64_t a1)
{
  result = sub_26108BF10(&qword_27FE64040, type metadata accessor for PASFlowStepSignInResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for PASFlowStepSignInResult()
{
  result = qword_27FE665F8;
  if (!qword_27FE665F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26108BDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_26108B1F8(a1, a2, a3, v3);
}

uint64_t sub_26108BE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FB6DB4;

  return sub_26108B5E4(a1, a2, a3, v3);
}

uint64_t sub_26108BF10(unint64_t *a1, void (*a2)(uint64_t))
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

void *PASAccountWithImage.__allocating_init(account:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t ACAccount.dsid.getter()
{
  v1 = sub_2610BC9D4();
  v2 = [v0 accountPropertyForKey_];

  if (v2)
  {
    sub_2610BCEA4();
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
    sub_260FA9AB4(0, &qword_27FE63F00, 0x277CCABB0);
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
    sub_260FAC3F0(v7);
    return 0;
  }
}

uint64_t sub_26108C0BC()
{
  if (*v0)
  {
    result = 0x7461446567616D69;
  }

  else
  {
    result = 0x746E756F636361;
  }

  *v0;
  return result;
}

uint64_t sub_26108C0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2610BD384();

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

uint64_t sub_26108C1E0(uint64_t a1)
{
  v2 = sub_26108C730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26108C21C(uint64_t a1)
{
  v2 = sub_26108C730();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static PASAccountWithImage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  return sub_2610BCE24() & 1;
}

uint64_t PASAccountWithImage.imageData.getter()
{
  v1 = *(v0 + 24);
  sub_260FAA174(v1, *(v0 + 32));
  return v1;
}

void *PASAccountWithImage.init(account:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t PASAccountWithImage.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PASAccountWithImage.init(from:)(a1);
  return v2;
}

void *PASAccountWithImage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66618, &qword_2610CDB58);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26108C730();
  sub_2610BD5D4();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v11 = a1;
    v12 = v30;
    v29 = v5;
    v32 = 0;
    sub_260FE4B78();
    sub_2610BD1E4();
    v28 = v6;
    v13 = v31;
    sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
    sub_260FA9AB4(0, &qword_27FE64D80, 0x277CB8F30);
    v14 = sub_2610BCD94();
    v27 = v9;
    if (v14)
    {
      v16 = v1;
    }

    else
    {
      v16 = v1;
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v17 = sub_2610BC7B4();
      __swift_project_value_buffer(v17, qword_27FE65900);
      v18 = sub_2610BC794();
      v19 = sub_2610BCD64();
      v20 = os_log_type_enabled(v18, v19);
      v26 = v11;
      v21 = v18;
      if (v20)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_260F97000, v21, v19, "PASAccountWithImage failed to init from decoder. Account is missing.", v22, 2u);
        MEMORY[0x2666F8720](v22, -1, -1);
      }

      v14 = [objc_allocWithZone(MEMORY[0x277CB8F30]) init];
      a1 = v26;
    }

    v16[2] = v14;
    v32 = 1;
    v23 = v27;
    v24 = v28;
    sub_2610BD194();
    (*(v12 + 8))(v23, v24);
    sub_260FAC46C(v13, *(&v13 + 1));
    *(v16 + 3) = v31;
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v16;
  }

  return v3;
}

unint64_t sub_26108C730()
{
  result = qword_27FE66620;
  if (!qword_27FE66620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66620);
  }

  return result;
}

uint64_t PASAccountWithImage.encode(to:)(void *a1)
{
  v3 = v1;
  v28 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66628, &qword_2610CDB60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26108C730();
  sub_2610BD5F4();
  v11 = objc_opt_self();
  v12 = v3[2];
  v26 = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v26];
  v14 = v26;
  if (v13)
  {
    v15 = sub_2610BC534();
    v17 = v16;

    v26 = v15;
    v27 = v17;
    v25 = 0;
    sub_260FE50F4();
    sub_2610BD2A4();
    if (v2 || (v18 = v3[4], v18 >> 60 == 15))
    {
      (*(v6 + 8))(v9, v5);
      result = sub_260FAC46C(v15, v17);
    }

    else
    {
      v21 = v3[3];
      v26 = v21;
      v27 = v18;
      v25 = 1;
      v24 = v18;
      sub_260FAA188(v21, v18);
      sub_2610BD2A4();
      (*(v6 + 8))(v9, v5);
      sub_260FAC46C(v15, v17);
      result = sub_260FAC458(v21, v24);
    }
  }

  else
  {
    v20 = v14;
    sub_2610BC4F4();

    swift_willThrow();
    result = (*(v6 + 8))(v9, v5);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PASAccountWithImage.__deallocating_deinit()
{
  sub_260FAC458(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_26108CA98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = PASAccountWithImage.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t PASAccountWithImage.dsid.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_2610BC9D4();
  v3 = [v1 accountPropertyForKey_];

  if (v3)
  {
    sub_2610BCEA4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_260FA9AB4(0, &qword_27FE63F00, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_260FAC3F0(v8);
    return 0;
  }
}

uint64_t sub_26108CC2C(SEL *a1)
{
  v2 = [*(v1 + 16) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2610BCA04();

  return v4;
}

uint64_t sub_26108CD04(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(*v3 + 16) *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_2610BCA04();

  return v6;
}

uint64_t sub_26108CD6C()
{
  v1 = *(*v0 + 24);
  sub_260FAA174(v1, *(*v0 + 32));
  return v1;
}

uint64_t sub_26108CDD4(SEL *a1)
{
  v2 = [v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2610BCA04();

  return v4;
}

unint64_t sub_26108CE44(uint64_t a1)
{
  result = sub_26108CE6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26108CE6C()
{
  result = qword_27FE66630;
  if (!qword_27FE66630)
  {
    type metadata accessor for PASAccountWithImage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66630);
  }

  return result;
}

unint64_t sub_26108D000()
{
  result = qword_27FE66638;
  if (!qword_27FE66638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66638);
  }

  return result;
}

unint64_t sub_26108D058()
{
  result = qword_27FE66640;
  if (!qword_27FE66640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66640);
  }

  return result;
}

unint64_t sub_26108D0B0()
{
  result = qword_27FE66648;
  if (!qword_27FE66648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66648);
  }

  return result;
}

uint64_t PASExtensionProvidedViewDetails.proxCardSubtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle + 8);

  return v1;
}

uint64_t PASExtensionProvidedViewDetails.biometricsNotEnrolledErrorSubtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle + 8);

  return v1;
}

uint64_t PASExtensionProvidedViewDetails.description.getter()
{
  sub_2610BCF84();
  MEMORY[0x2666F7380](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_2610BD634();
  MEMORY[0x2666F7380](v1);

  MEMORY[0x2666F7380](8250, 0xE200000000000000);
  sub_2610BD0A4();
  MEMORY[0x2666F7380](0xD00000000000001ALL, 0x80000002610D5D40);
  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle);
  v7 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66360, &qword_2610C2E00);
  v2 = sub_2610BCA34();
  MEMORY[0x2666F7380](v2);

  MEMORY[0x2666F7380](0xD00000000000002BLL, 0x80000002610D5D60);
  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle);
  v8 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle + 8);

  v3 = sub_2610BCA34();
  MEMORY[0x2666F7380](v3);

  MEMORY[0x2666F7380](4095264, 0xE300000000000000);
  return 0;
}

uint64_t PASExtensionProvidedViewDetails.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_260FAC380(a1, v13);
  if (!v14)
  {
    sub_260FAC3F0(v13);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle + 8);
  v4 = *&v12[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle + 8];
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle) == *&v12[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle] && v3 == v4;
  if (!v5 && (sub_2610BD384() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v6 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle + 8);
  v7 = *&v12[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle + 8];
  if (!v6)
  {
    v11 = *&v12[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle + 8];

    if (!v7)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v7)
  {
    if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle) != *&v12[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle] || v6 != v7)
    {
      v9 = *&v12[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle + 8];
      LOBYTE(v7) = sub_2610BD384();
      goto LABEL_17;
    }

LABEL_26:
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

LABEL_17:

  return v7 & 1;
}

uint64_t PASExtensionProvidedViewDetails.hash.getter()
{
  sub_2610BD584();
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle);
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle + 8))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle);
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  return sub_2610BD564();
}

uint64_t static PASExtensionProvidedViewDetails.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE66650 = a1;
  return result;
}

Swift::Void __swiftcall PASExtensionProvidedViewDetails.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle + 8))
  {
    v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle);
    v4 = sub_2610BC9D4();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle + 8))
  {
    v6 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle);
    v7 = sub_2610BC9D4();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

id PASExtensionProvidedViewDetails.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_26108DDD4();

  return v4;
}

id PASExtensionProvidedViewDetails.init(coder:)(void *a1)
{
  v2 = sub_26108DDD4();

  return v2;
}

id PASExtensionProvidedViewDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26108DB7C()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup38PASExtensionProvidedViewDetailsBuilder_proxCardSubtitle);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup38PASExtensionProvidedViewDetailsBuilder_biometricsNotEnrolledErrorSubtitle);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = type metadata accessor for PASExtensionProvidedViewDetails();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle];
  *v9 = v3;
  *(v9 + 1) = v2;
  v10 = &v8[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle];
  *v10 = v6;
  *(v10 + 1) = v5;
  v12.receiver = v8;
  v12.super_class = v7;

  return objc_msgSendSuper2(&v12, sel_init);
}

id PASExtensionProvidedViewDetailsBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASExtensionProvidedViewDetailsBuilder.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup38PASExtensionProvidedViewDetailsBuilder_proxCardSubtitle];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup38PASExtensionProvidedViewDetailsBuilder_biometricsNotEnrolledErrorSubtitle];
  v3 = type metadata accessor for PASExtensionProvidedViewDetailsBuilder();
  *v2 = 0;
  *(v2 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PASExtensionProvidedViewDetailsBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASExtensionProvidedViewDetailsBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26108DD84(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + *a3 + 8);

  v7 = *(a1 + *a4 + 8);
}

id sub_26108DDD4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_260FE8484();
  v3 = sub_2610BCE14();
  sub_2610BC9F4();

  v4 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_proxCardSubtitle];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = sub_2610BCE14();
  sub_2610BC9F4();

  v6 = &v1[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails_biometricsNotEnrolledErrorSubtitle];
  *v6 = 0;
  *(v6 + 1) = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init, 0, 0);
}

id PASFamilyMember.dsid.getter()
{
  v1 = [*(v0 + 16) dsid];

  return v1;
}

void *PASFamilyMember.__allocating_init(familyMember:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t PASFamilyMember.memberTypeDescription.getter()
{
  v1 = sub_2610BC634();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_2610BC9B4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v0 + 16);
  if (![v5 isMe])
  {
    [v5 memberType];
  }

  sub_2610BC9C4();
  type metadata accessor for PASSourceFlowController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_2610BC624();
  return sub_2610BCA24();
}

uint64_t PASFamilyMember.formattedUsername.getter()
{
  v1 = objc_opt_self();
  v2 = [*(v0 + 16) appleID];
  v3 = [v1 formattedUsernameFromUsername_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2610BCA04();

  return v4;
}

uint64_t static PASFamilyMember.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  return sub_2610BCE24() & 1;
}

uint64_t sub_26108E5E4()
{
  if (*v0)
  {
    result = 0x7461446567616D69;
  }

  else
  {
    result = 0x654D796C696D6166;
  }

  *v0;
  return result;
}

uint64_t sub_26108E62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654D796C696D6166 && a2 == 0xEC0000007265626DLL;
  if (v6 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2610BD384();

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

uint64_t sub_26108E714(uint64_t a1)
{
  v2 = sub_26108F05C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26108E750(uint64_t a1)
{
  v2 = sub_26108F05C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PASFamilyMember.imageData.getter()
{
  v1 = *(v0 + 24);
  sub_260FAA174(v1, *(v0 + 32));
  return v1;
}

uint64_t PASFamilyMember.dictionary.getter()
{
  v1 = [*(v0 + 16) dictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2610BC914();

  return v3;
}

void *PASFamilyMember.init(familyMember:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t PASFamilyMember.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PASFamilyMember.init(from:)(a1);
  return v2;
}

void *PASFamilyMember.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66678, &qword_2610CDE30);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26108F05C();
  sub_2610BD5D4();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v11 = a1;
    v12 = v30;
    v29 = v5;
    v32 = 0;
    sub_260FE4B78();
    sub_2610BD1E4();
    v28 = v6;
    v13 = v31;
    sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
    sub_260FA9AB4(0, &qword_27FE64000, 0x277D08268);
    v14 = sub_2610BCD94();
    v27 = v9;
    if (v14)
    {
      v16 = v1;
    }

    else
    {
      v16 = v1;
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v17 = sub_2610BC7B4();
      __swift_project_value_buffer(v17, qword_27FE65900);
      v18 = sub_2610BC794();
      v19 = sub_2610BCD64();
      v20 = os_log_type_enabled(v18, v19);
      v26 = v11;
      v21 = v18;
      if (v20)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_260F97000, v21, v19, "PASFamilyMember failed to init from decoder. FamilyMember is missing.", v22, 2u);
        MEMORY[0x2666F8720](v22, -1, -1);
      }

      v14 = [objc_allocWithZone(MEMORY[0x277D08268]) init];
      a1 = v26;
    }

    v16[2] = v14;
    v32 = 1;
    v23 = v27;
    v24 = v28;
    sub_2610BD194();
    (*(v12 + 8))(v23, v24);
    sub_260FAC46C(v13, *(&v13 + 1));
    *(v16 + 3) = v31;
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v16;
  }

  return v3;
}

uint64_t PASFamilyMember.encode(to:)(void *a1)
{
  v3 = v1;
  v28 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66688, &qword_2610CDE38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26108F05C();
  sub_2610BD5F4();
  v11 = objc_opt_self();
  v12 = v3[2];
  v26 = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v26];
  v14 = v26;
  if (v13)
  {
    v15 = sub_2610BC534();
    v17 = v16;

    v26 = v15;
    v27 = v17;
    v25 = 0;
    sub_260FE50F4();
    sub_2610BD2A4();
    if (v2 || (v18 = v3[4], v18 >> 60 == 15))
    {
      (*(v6 + 8))(v9, v5);
      result = sub_260FAC46C(v15, v17);
    }

    else
    {
      v21 = v3[3];
      v26 = v21;
      v27 = v18;
      v25 = 1;
      v24 = v18;
      sub_260FAA188(v21, v18);
      sub_2610BD2A4();
      (*(v6 + 8))(v9, v5);
      sub_260FAC46C(v15, v17);
      result = sub_260FAC458(v21, v24);
    }
  }

  else
  {
    v20 = v14;
    sub_2610BC4F4();

    swift_willThrow();
    result = (*(v6 + 8))(v9, v5);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PASFamilyMember.__deallocating_deinit()
{
  sub_260FAC458(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_26108EF94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = PASFamilyMember.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_26108F05C()
{
  result = qword_27FE66680;
  if (!qword_27FE66680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66680);
  }

  return result;
}

id sub_26108F0B0()
{
  v1 = [*(*v0 + 16) dsid];

  return v1;
}

uint64_t sub_26108F110()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = [*(v1 + 16) appleID];
  v4 = [v2 formattedUsernameFromUsername_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2610BCA04();

  return v5;
}

unint64_t sub_26108F1DC(uint64_t a1)
{
  result = sub_26108F204();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26108F204()
{
  result = qword_27FE66690;
  if (!qword_27FE66690)
  {
    type metadata accessor for PASFamilyMember();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66690);
  }

  return result;
}

unint64_t sub_26108F2E4()
{
  result = qword_27FE66698;
  if (!qword_27FE66698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66698);
  }

  return result;
}

unint64_t sub_26108F33C()
{
  result = qword_27FE666A0;
  if (!qword_27FE666A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666A0);
  }

  return result;
}

unint64_t sub_26108F394()
{
  result = qword_27FE666A8;
  if (!qword_27FE666A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666A8);
  }

  return result;
}

uint64_t Result<>.init(catching:)(uint64_t a1, int *a2)
{
  v2[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v4 = sub_2610BD594();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v2[6] = v9;
  *v9 = v2;
  v9[1] = sub_26108F578;

  return v11(v7);
}

uint64_t sub_26108F578()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_26108F728;
  }

  else
  {
    v3 = sub_26108F68C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26108F68C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26108F728()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = *(v0 + 56);
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}