uint64_t *XPCServiceClientConnection.init(delegate:)()
{
  sub_1BAC1FB88();
  v1 = *v0;
  sub_1BAC17658();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v7 = 0;
  v4 = type metadata accessor for XPCServiceClientConnection.State();
  v5 = sub_1BAC17788(&v7, v4);
  sub_1BAC1E838(v5);
  swift_unknownObjectRelease();
  v0[3] = 0;
  return v0;
}

uint64_t sub_1BAC17658()
{
  *(v0 + 40) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t sub_1BAC17674()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1BAC176C4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1BAC38904();
  v4 = sub_1BAC388F4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_1BAC17788(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2);
  v8 = sub_1BAC176C4(v7, a2);
  (*(v4 + 8))(a1, a2);
  return v8;
}

void sub_1BAC178A4()
{
  *(v3 - 392) = v2;
  *(v3 - 328) = v1;
  v4 = *v0;
}

void sub_1BAC178C8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1BAC17930@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

uint64_t sub_1BAC179D0()
{
  v2 = *(v0 - 272);
}

uint64_t sub_1BAC17A64()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *BidirectionalXPCServiceClientConnection.init(localObject:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  v3[5] = 0;
  swift_unknownObjectWeakInit();
  sub_1BAC17C74();
  v7 = v6[11];
  v8 = v6[13];
  v9 = (*(v8 + 24))(v7, v8);
  v3[3] = sub_1BAC17CB8(v9, v10, 0);
  LOBYTE(v23[0]) = 0;
  v22 = v6[12];
  v21 = v6[10];
  swift_unknownObjectRetain();
  sub_1BAC17D34(v23, v24);
  *&v12 = v21;
  *&v11 = v22;
  *(&v12 + 1) = v7;
  *(&v11 + 1) = v8;
  v23[0] = v12;
  v23[1] = v11;
  v13 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  v3[2] = sub_1BAC17788(v24, v13);
  v3[5] = a3;
  swift_unknownObjectWeakAssign();
  v14 = v3[2];

  v15 = sub_1BAC17D90();
  v16 = v25;
  sub_1BAC17FE4(v15, v17, v18, v13, v19);
  if (v16)
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

unint64_t sub_1BAC17C74()
{
  result = qword_1ED76BA58[0];
  if (!qword_1ED76BA58[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED76BA58);
  }

  return result;
}

id sub_1BAC17CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1BAC38614();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_1BAC17D34@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BAC17DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAC17DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAC17DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAC17DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAC17DE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAC17DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static XPCService.xpcInterface()()
{
  sub_1BAC1FB88();
  v3 = (*(v2 + 16))();
  v4 = [objc_opt_self() interfaceWithProtocol_];

  v12 = v1;
  v13 = (*(v0 + 40))(v1, v0);
  v5 = *(v13 + 16);
  if (v5)
  {
    v6 = (v13 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 3;

      v10 = sub_1BAC38744();

      [v4 setClasses:v10 forSelector:v7 argumentIndex:v8 ofReply:1];

      --v5;
    }

    while (v5);
  }

  (*(v0 + 56))(v4, v12);
  return v4;
}

void sub_1BAC18014(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_1BAC180B4(unsigned __int8 *a1)
{
  v4 = *v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = v1[5];
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(ObjectType, v5);
    if (v2 || *a1 > 1u)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v25 = a1;
      v7 = v1[3];
      v8 = v4[11];
      v23 = v4[13];
      v9 = static XPCService.xpcInterface()();
      [v7 setRemoteObjectInterface_];

      v10 = v4[10];
      v21 = v4[12];
      v11 = static XPCService.xpcInterface()();
      [v7 setExportedInterface_];

      [v7 setExportedObject_];
      swift_unknownObjectRelease();
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      *&v14 = v10;
      *(&v14 + 1) = v8;
      *&v15 = v21;
      *(&v15 + 1) = v23;
      v22 = v14;
      v24 = v15;
      *(v13 + 16) = v14;
      *(v13 + 32) = v15;
      *(v13 + 48) = v12;
      v30 = sub_1BAC35094;
      v31 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = sub_1BAC1C330;
      v29 = &unk_1F38C9BE0;
      v16 = _Block_copy(&aBlock);

      [v7 setInterruptionHandler_];
      _Block_release(v16);
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v22;
      *(v18 + 32) = v24;
      *(v18 + 48) = v17;
      v30 = sub_1BAC350AC;
      v31 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = sub_1BAC1C330;
      v29 = &unk_1F38C9C30;
      v19 = _Block_copy(&aBlock);

      [v7 setInvalidationHandler_];
      _Block_release(v19);
      (*(v5 + 40))(v7, ObjectType, v5);
      if (!*v25)
      {
        [v7 activate];
      }

      result = swift_unknownObjectRelease();
      *v25 = 2;
    }
  }

  else
  {
    result = sub_1BAC389B4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAC18474()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAC18558()
{

  return swift_once();
}

uint64_t sub_1BAC18578()
{
  result = v0;
  v3 = *(v1 - 336);
  v4 = *(v1 - 344);
  return result;
}

void BidirectionalXPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BAC194C0();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v98 = v29;
  v99 = v28;
  v31 = v30;
  v32 = *v20;
  v100 = sub_1BAC38864();
  sub_1BAC184D0(v100);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v37);
  sub_1BAC18D70();
  v38 = v20[2];
  v101[2] = v27;
  v102 = v20;
  v39 = *(v32 + 80);
  sub_1BAC353D0();
  v41 = *(v40 + 88);
  sub_1BAC353D0();
  v43 = *(v42 + 96);
  v44 = *(v32 + 104);
  v97 = v45;
  v104 = v45;
  v105 = v46;
  v96 = v46;
  v95 = v43;
  v106 = v43;
  v107 = v44;
  v47 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  v48 = sub_1BAC17C74();
  sub_1BAC17E04(sub_1BAC1949C, v101, v38, v47, v48);
  if (!v21)
  {
    v91 = v34;
    v92 = v22;
    v88 = v31;
    v89 = 0;
    v49 = v103;
    sub_1BAC1AE98();
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    v51 = (v50 + 16);
    sub_1BAC1D5B8();
    v52 = swift_allocObject();
    v52[2] = v27;
    v52[3] = v25;
    v52[4] = v50;
    sub_1BAC1940C(v52);
    v105 = 1107296256;
    sub_1BAC19598();
    v106 = v53;
    v107 = &unk_1F38C9788;
    v54 = _Block_copy(&v104);

    v93 = v50;

    v94 = v49;
    v55 = [v49 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v54);
    v56 = swift_allocBox();
    sub_1BAC195CC(v57, v57, &a12);
    sub_1BAC1AE98();
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    v60 = swift_allocObject();
    v61 = v96;
    v60[2] = v97;
    v60[3] = v61;
    v62 = v56;
    v63 = v55;
    v64 = v95;
    v60[4] = v27;
    v60[5] = v64;
    v60[6] = v44;
    v60[7] = v62;
    v60[8] = v58;
    swift_unknownObjectRetain();
    v97 = v62;

    v99(v55, sub_1BAC1EC70, v60);

    sub_1BAC19504();
    v65 = *v51;
    if (*v51)
    {
      v66 = *v51;
      swift_willThrow();
      v67 = v65;
      sub_1BAC23EB0();

      sub_1BAC353F4();
    }

    else
    {
      v59 = (v58 + 16);
      sub_1BAC19504();
      (*(v91 + 16))(v92, v90, v100);
      if (sub_1BAC1DA1C(v92, 1, v27) != 1)
      {
        sub_1BAC23EB0();
        sub_1BAC353F4();
        (*(*(v27 - 8) + 32))(v88, v92, v27);

        goto LABEL_10;
      }

      (*(v91 + 8))(v92, v100);
      sub_1BAC19504();
      v68 = *v59;
      if (*v59)
      {
        v69 = v68;
        v70 = sub_1BAC382E4();
        v71 = NSError.pds_unlaunderSimpleNSError()();

        if (v71)
        {
          swift_willThrow();

          sub_1BAC23EB0();

          sub_1BAC353F4();

          goto LABEL_10;
        }

        swift_willThrow();
        sub_1BAC23EB0();
      }

      else
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v99 = v63;
          v100 = v58;
          v72 = v25[5];
          swift_getObjectType();
          sub_1BAC20C40();
          v96 = v73;
          sub_1BAC19124();
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v98 = &v87;
          sub_1BAC184D0(AssociatedTypeWitness);
          v76 = v75;
          v78 = *(v77 + 64);
          sub_1BAC18C48();
          MEMORY[0x1EEE9AC00](v79);
          sub_1BAC18D70();
          swift_unknownObjectRetain();
          v80 = sub_1BAC1AF2C();
          v96(v80);
          sub_1BAC18DB8();
          swift_getAssociatedConformanceWitness();
          if (sub_1BAC38A34())
          {
            (*(v76 + 8))(v59, AssociatedTypeWitness);
          }

          else
          {
            v83 = sub_1BAC3538C();
            v85 = sub_1BAC1AD10(v83, v84);
            v86(v85);
          }

          v82 = v94;
          sub_1BAC353DC();
        }

        else
        {
          sub_1BAC32604();
          sub_1BAC3538C();
          *v81 = 2;
          v82 = v94;
        }

        swift_willThrow();
      }

      sub_1BAC353F4();
    }
  }

LABEL_10:
  sub_1BAC35364();
}

uint64_t sub_1BAC18C00()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

BOOL sub_1BAC18C54(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1BAC18C6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1BAC1BE14(v4 - 128, v4 - 216, a3, a4);
}

uint64_t sub_1BAC18CA4()
{
  v3 = v0 + *(v1 - 400);

  return swift_allocObject();
}

uint64_t dispatch thunk of BidirectionalServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 56))();
}

{
  return (*(a5 + 48))();
}

__n128 sub_1BAC18D10(uint64_t a1)
{
  result = *(v1 - 216);
  v3 = *(v1 - 200);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  v4 = *(v1 - 72);
  *(a1 + 80) = *(v1 - 184);
  *(a1 + 88) = v4;
  return result;
}

uint64_t sub_1BAC18D2C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1BAC18D58(uint64_t a1)
{

  return sub_1BAC1DA1C(a1, 1, v1);
}

uint64_t sub_1BAC18D90()
{

  return swift_getAssociatedConformanceWitness();
}

void sub_1BAC18DC4()
{
  sub_1BAC194C0();
  sub_1BAC353A4();
  sub_1BAC180B4(v4);
  if (!v1)
  {
    if (*v3 == 3)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v2 + 40);
        swift_getObjectType();
        v6 = *(v5 + 24);
        sub_1BAC19124();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v22[1] = v22;
        sub_1BAC184D0(AssociatedTypeWitness);
        v9 = v8;
        v11 = *(v10 + 64);
        sub_1BAC18C48();
        MEMORY[0x1EEE9AC00](v12);
        sub_1BAC18D70();
        swift_unknownObjectRetain();
        v13 = sub_1BAC1AF2C();
        v6(v13);
        sub_1BAC18DB8();
        swift_getAssociatedConformanceWitness();
        sub_1BAC1FF14();
        if (sub_1BAC38A34())
        {
          v14 = *(v9 + 8);
          v15 = sub_1BAC1FF14();
        }

        else
        {
          v20 = sub_1BAC3538C();
          v15 = sub_1BAC1AD10(v20, v21);
        }

        v16(v15);
        sub_1BAC353DC();
      }

      else
      {
        sub_1BAC32604();
        sub_1BAC3538C();
        *v19 = 1;
      }

      swift_willThrow();
    }

    else
    {
      v17 = *(v2 + 24);
      *v0 = v17;
      v18 = v17;
    }
  }

  sub_1BAC35364();
}

uint64_t sub_1BAC18F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8[24];
  v11 = v8[22];
  v12 = v8[17];
  v14 = v8[14];
  v13 = v8[15];
  v16 = v8[12];
  v15 = v8[13];
  v17 = v8[11];
  v18 = v8[18];
  v19 = v8[19];

  return sub_1BAC27D80(v12, v18, v19, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAC18FBC()
{

  return swift_once();
}

uint64_t sub_1BAC18FDC()
{

  return swift_dynamicCast();
}

void sub_1BAC1900C()
{

  JUMPOUT(0x1BFAFF600);
}

uint64_t sub_1BAC1905C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_1BAC190D4()
{

  JUMPOUT(0x1BFAFE990);
}

void sub_1BAC190EC()
{
  sub_1BAC1905C(*(v0 - 136));

  JUMPOUT(0x1BFAFF600);
}

uint64_t sub_1BAC1914C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BAC192CC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1BAC19210(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1BAC1905C(v11);
  return v7;
}

uint64_t sub_1BAC19210(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1BAC192CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BAC2BB80(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1BAC38924();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1BAC193D0()
{

  return sub_1BAC27C9C(v6, v5, v4, v3, v2, v1, v0);
}

uint64_t sub_1BAC1940C(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t sub_1BAC19430()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1BAC19458(uint64_t a1)
{
  v3 = *(v2 - 368);
  *(a1 + 16) = *(v2 - 376);
  *(a1 + 24) = v3;
  return a1 + v1;
}

void sub_1BAC19480()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1BAC18DC4();
}

uint64_t sub_1BAC194D8()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1BAC19504()
{

  return swift_beginAccess();
}

uint64_t sub_1BAC19524()
{

  return swift_once();
}

uint64_t sub_1BAC195CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = a2;

  return sub_1BAC1926C(a1, 1, 1, v3);
}

uint64_t sub_1BAC195EC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1BAC1964C(v8, v7);

  return v9 & 1;
}

uint64_t sub_1BAC1964C(uint64_t a1, void *a2)
{
  v195 = a2;
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(sub_1BAC38864() - 8) + 64);
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v8);
  sub_1BAC192BC(&v173 - v9);
  v10 = swift_checkMetadataState();
  v11 = sub_1BAC184D0(v10);
  v181 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1BAC18C90();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v15);
  sub_1BAC192BC(&v173 - v16);
  v177 = sub_1BAC38864();
  sub_1BAC184D0(v177);
  v176 = v17;
  v19 = *(v18 + 64);
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v20);
  sub_1BAC192BC(&v173 - v21);
  v22 = sub_1BAC383E4();
  v23 = sub_1BAC184D0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1BAC18C90();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v28);
  sub_1BAC1AECC();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v29);
  sub_1BAC1AECC();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v30);
  sub_1BAC1AECC();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v31);
  sub_1BAC1AECC();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v32);
  sub_1BAC1AECC();
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v173 - v34;
  v189 = v3;
  v188 = v4;
  v36 = swift_getAssociatedTypeWitness();
  v190 = AssociatedConformanceWitness;
  v191 = v10;
  v175 = swift_getAssociatedConformanceWitness();
  v37 = swift_getAssociatedConformanceWitness();
  v38 = *(v37 + 48);
  v39 = sub_1BAC19134();
  v193 = v40;
  v192 = v41;
  v41(v39, v37);
  v42 = sub_1BAC383D4();
  v43 = sub_1BAC38774();
  v44 = os_log_type_enabled(v42, v43);
  v196 = v37;
  v180 = AssociatedTypeWitness;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = v22;
    v47 = sub_1BAC1AD64();
    *&v205 = v47;
    *v45 = 136446210;
    v48 = *(v37 + 24);
    v49 = sub_1BAC19134();
    v51 = v50(v49, v37);
    v53 = sub_1BAC1914C(v51, v52, &v205);

    *(v45 + 4) = v53;
    _os_log_impl(&dword_1BAC16000, v42, v43, "%{public}s BidirectionalDelegate: Got connection request.", v45, 0xCu);
    sub_1BAC1905C(v47);
    v22 = v46;
    sub_1BAC1ADA8();
    sub_1BAC1ADA8();

    v54 = *(v25 + 8);
    (v54)(v35, v46);
  }

  else
  {

    v54 = *(v25 + 8);
    (v54)(v35, v22);
  }

  swift_beginAccess();
  v55 = off_1ED76B748;
  v56 = v196;
  v57 = v195;
  if (off_1ED76B748)
  {

    v58 = v55(v57, v36, v56);
    sub_1BAC1ADCC(v55);
    if ((v58 & 1) == 0)
    {
      v194 = v22;
      v76 = sub_1BAC18578();
      v77(v76);
      v78 = sub_1BAC383D4();
      v79 = sub_1BAC38774();
      if (sub_1BAC18C54(v79))
      {
        v80 = swift_slowAlloc();
        v81 = sub_1BAC1AD64();
        *&v205 = v81;
        *v80 = 136446210;
        v82 = *(v56 + 24);
        v83 = sub_1BAC1AF40();
        v85 = v84(v83);
        v87 = sub_1BAC1914C(v85, v86, &v205);

        *(v80 + 4) = v87;
        _os_log_impl(&dword_1BAC16000, v78, v79, "%{public}s BidirectionalDelegate: Failed global enablement check. Rejecting connection.", v80, 0xCu);
        sub_1BAC1905C(v81);
        sub_1BAC1ADA8();
        sub_1BAC1ADA8();
      }

      sub_1BAC1AD20();
      v54();
      return 0;
    }
  }

  v59 = sub_1BAC1ADDC();
  v187 = v54;
  if (v59)
  {
    v60 = *(v56 + 24);
    v61 = sub_1BAC1AF40();
    v63 = v62(v61);
    v65 = v64;
    v66 = v22;
    v67 = (*(v56 + 32))(v36, v56);
    v69 = v68;
    v70 = v186;
    sub_1BAC19038();
    v71();
    v72 = v67;
    v22 = v66;
    LOBYTE(v63) = sub_1BAC1AF64(v63, v65, v72, v69);

    v56 = v196;

    v54 = v187;
    (v187)(v70, v66);
    if ((v63 & 1) == 0)
    {
      return 0;
    }
  }

  swift_getAssociatedTypeWitness();
  v73 = v195;
  swift_getAssociatedConformanceWitness();
  v74 = static XPCService.xpcInterface()();
  [v73 setRemoteObjectInterface_];

  v75 = static XPCService.xpcInterface()();
  [v73 setExportedInterface_];

  if ((*(v190 + 64))())
  {
    v209 = 0u;
    v210 = 0u;
  }

  else
  {
    v88 = sub_1BAC38614();
    v89 = [v73 valueForEntitlement_];

    if (v89)
    {
      sub_1BAC38874();
      swift_unknownObjectRelease();
    }

    else
    {
      v205 = 0u;
      v206 = 0u;
    }

    v209 = v205;
    v210 = v206;
  }

  sub_1BAC1B270(&v209, &aBlock);
  if (v202)
  {
    if (swift_dynamicCast())
    {
      v184 = v197;
      v90 = v198;
      v91 = v182;
      v92 = sub_1BAC18578();
      v93(v92);

      v94 = v90;
      v95 = v56;
      v96 = sub_1BAC383D4();
      v97 = sub_1BAC38774();

      v98 = os_log_type_enabled(v96, v97);
      v183 = v94;
      if (v98)
      {
        v99 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        sub_1BAC194E4(v186);
        *v99 = 136446466;
        v100 = *(v95 + 24);
        v101 = v94;
        v102 = sub_1BAC19134();
        v104 = v103(v102, v95);
        v106 = sub_1BAC1914C(v104, v105, &aBlock);

        *(v99 + 4) = v106;
        *(v99 + 12) = 2080;
        *(v99 + 14) = sub_1BAC1914C(v184, v101, &aBlock);
        _os_log_impl(&dword_1BAC16000, v96, v97, "%{public}s BidirectionalDelegate: clientApplicationIdentifier: %s", v99, 0x16u);
        swift_arrayDestroy();
        sub_1BAC1ADA8();
        sub_1BAC1ADA8();

        v107 = v182;
      }

      else
      {

        v107 = v91;
      }

      (v54)(v107, v22);
      v125 = v191;
      sub_1BAC178A4();
      v129 = *((*MEMORY[0x1E69E7D40] & v128) + 0x60);
      sub_1BAC1B2E0();
      v130 = swift_getAssociatedTypeWitness();
      v207 = v130;
      sub_1BAC366E8();
      v208 = swift_getAssociatedConformanceWitness();
      sub_1BAC1DAD4(&v206);
      sub_1BAC1DAC8(v130);
      (*(v131 + 16))();
      *&v205 = v184;
      *(&v205 + 1) = v183;
      v56 = v196;
      goto LABEL_30;
    }
  }

  else
  {
    sub_1BAC1FA18(&aBlock, &unk_1EBC257D0, &qword_1BAC3A350);
  }

  if (sub_1BAC35CD0())
  {
    v108 = v183;
    v109 = sub_1BAC18578();
    v110(v109);
    v111 = sub_1BAC383D4();
    v112 = sub_1BAC38754();
    if (sub_1BAC18C54(v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v194 = v22;
      sub_1BAC194E4(v114);
      *v113 = 136446466;
      v115 = *(v56 + 24);
      v116 = sub_1BAC1AF40();
      v118 = v117(v116);
      v120 = sub_1BAC1914C(v118, v119, &aBlock);

      *(v113 + 4) = v120;
      *(v113 + 12) = 2082;
      *(v113 + 14) = sub_1BAC1914C(0xD000000000000016, 0x80000001BAC3B5F0, &aBlock);
      _os_log_impl(&dword_1BAC16000, v111, v112, "%{public}s BidirectionalDelegate: Client is missing '%{public}s' entitlement. This entitlement is required. Rejecting connection.", v113, 0x16u);
      swift_arrayDestroy();
      sub_1BAC1ADA8();
      sub_1BAC1ADA8();

      sub_1BAC1AD20();
    }

    else
    {

      v121 = v108;
      v122 = v22;
    }

    (v54)(v121, v122);
    sub_1BAC1FA18(&v209, &unk_1EBC257D0, &qword_1BAC3A350);
    return 0;
  }

  sub_1BAC178A4();
  v124 = *((*MEMORY[0x1E69E7D40] & v123) + 0x60);
  sub_1BAC1B2E0();
  v125 = v191;
  v126 = swift_getAssociatedTypeWitness();
  v207 = v126;
  sub_1BAC366E8();
  v208 = swift_getAssociatedConformanceWitness();
  sub_1BAC1DAD4(&v206);
  sub_1BAC1DAC8(v126);
  (*(v127 + 16))();
  v205 = 0uLL;
LABEL_30:
  v132 = swift_allocBox();
  v134 = v133;
  sub_1BAC1DB34(&v205, &aBlock);
  v135 = *(v22 + 40);
  v136 = v195;
  v137 = v185;
  v195 = v136;
  v135(&aBlock);
  if (sub_1BAC1DA1C(v137, 1, v125) == 1)
  {
    (*(v176 + 8))(v137, v177);
    swift_deallocBox();
    v138 = sub_1BAC18578();
    v139(v138);
    v140 = sub_1BAC383D4();
    v141 = sub_1BAC38754();
    if (sub_1BAC18C54(v141))
    {
      v142 = swift_slowAlloc();
      v143 = sub_1BAC1AD64();
      sub_1BAC194E4(v143);
      *v142 = 136446210;
      v144 = *(v56 + 24);
      v145 = sub_1BAC1AF40();
      v147 = v146(v145);
      v149 = sub_1BAC1914C(v147, v148, &aBlock);

      *(v142 + 4) = v149;
      _os_log_impl(&dword_1BAC16000, v140, v141, "%{public}s BidirectionalDelegate: connection rejected by server instance.", v142, 0xCu);
      sub_1BAC1905C(v143);
      sub_1BAC1ADA8();
      sub_1BAC1ADA8();
    }

    sub_1BAC1AD20();
    v187();
    sub_1BAC1FA18(&v209, &unk_1EBC257D0, &qword_1BAC3A350);
    sub_1BAC1FA70(&v205);
    return 0;
  }

  v184 = v132;
  v150 = v181;
  (*(v181 + 32))(v134, v137, v125);
  v151 = *(v150 + 16);
  v185 = v134;
  v183 = v151;
  v151(v178, v134, v125);
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCast())
  {
    v152 = aBlock;
    v153 = v175;
    v154 = *(v175 + 24);
    v155 = v195;
    swift_unknownObjectRetain();
    v156 = v179;
    v157 = v180;
    v154(v155, v152, v180, v153);
    v158 = 1;
    sub_1BAC1926C(v156, 0, 1, v157);
    (*(v190 + 80))(v156, v191);
    v159 = swift_allocObject();
    v160 = v188;
    v161 = v189;
    v159[2] = v188;
    v159[3] = v161;
    v162 = v184;
    v159[4] = v184;
    v203 = sub_1BAC366D4;
    v204 = v159;
    aBlock = MEMORY[0x1E69E9820];
    v200 = 1107296256;
    v201 = sub_1BAC1C330;
    v202 = &unk_1F38C9F80;
    v163 = _Block_copy(&aBlock);

    [v155 setInterruptionHandler_];
    _Block_release(v163);
    v164 = swift_allocObject();
    v164[2] = v160;
    v164[3] = v161;
    v164[4] = v162;
    v203 = sub_1BAC1EE48;
    v204 = v164;
    aBlock = MEMORY[0x1E69E9820];
    v200 = 1107296256;
    v201 = sub_1BAC1C330;
    v202 = &unk_1F38C9FD0;
    v165 = _Block_copy(&aBlock);

    [v155 setInvalidationHandler_];
    _Block_release(v165);
    v166 = v185;
    swift_beginAccess();
    v167 = v174;
    v168 = v166;
    v169 = v191;
    v183(v174, v168, v191);
    v170 = v169;
    v171 = sub_1BAC38A54();
    (*(v181 + 8))(v167, v170);
    [v155 setExportedObject_];
    swift_unknownObjectRelease();
    [v155 activate];
    swift_unknownObjectRelease();
    sub_1BAC1FA18(&v209, &unk_1EBC257D0, &qword_1BAC3A350);
    sub_1BAC1FA70(&v205);

    return v158;
  }

  result = sub_1BAC389B4();
  __break(1u);
  return result;
}

uint64_t sub_1BAC1ABD4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BAC1AC10(uint64_t a1)
{
  v4 = *(v1 - 264);

  return sub_1BAC1926C(v4, 1, 1, a1);
}

uint64_t sub_1BAC1AC94()
{

  return swift_task_create();
}

uint64_t sub_1BAC1ACDC()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1BAC1ACFC()
{
  result = *(v0 - 72);
  v2 = *(v0 - 280);
  return result;
}

uint64_t sub_1BAC1AD10(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 32);
  return result;
}

uint64_t sub_1BAC1AD2C()
{

  return swift_slowAlloc();
}

uint64_t sub_1BAC1AD64()
{

  return swift_slowAlloc();
}

uint64_t sub_1BAC1AD7C()
{
  result = 0;
  v2 = *(v0 - 264);
  return result;
}

void sub_1BAC1ADA8()
{

  JUMPOUT(0x1BFAFF600);
}

uint64_t sub_1BAC1ADCC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BAC1ADDC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = sub_1BAC1ACDC();
  v4 = sub_1BAC17674();
  v5 = sub_1BAC1DAB0(v4);
  if (v6(v5))
  {
    return 0;
  }

  else
  {
    return (*(v1 + 56))(v3, v1) & 1;
  }
}

uint64_t sub_1BAC1AEF0()
{

  return sub_1BAC389B4();
}

uint64_t sub_1BAC1AF10()
{

  return swift_beginAccess();
}

uint64_t sub_1BAC1AF64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_1BAC38614();
  v10 = [v4 valueForEntitlement_];

  if (v10)
  {
    sub_1BAC38874();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast() && (v21 & 1) != 0)
    {
      v11 = v4;

      v12 = sub_1BAC383D4();
      v13 = sub_1BAC38774();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *&v24[0] = v15;
        *v14 = 136446466;
        *(v14 + 4) = sub_1BAC1914C(a1, a2, v24);
        *(v14 + 12) = 1026;
        *(v14 + 14) = [v11 processIdentifier];

        _os_log_impl(&dword_1BAC16000, v12, v13, "%{public}s Delegate: XPC connection for service from %{public}d", v14, 0x12u);
        sub_1BAC1905C(v15);
        sub_1BAC1ADA8();
        sub_1BAC1ADA8();
      }

      else
      {
      }

      return 1;
    }
  }

  else
  {
    sub_1BAC38094(v24);
  }

  v16 = v4;

  v17 = sub_1BAC383D4();
  v18 = sub_1BAC38754();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *&v24[0] = swift_slowAlloc();
    *v19 = 136446722;
    *(v19 + 4) = sub_1BAC1914C(a1, a2, v24);
    *(v19 + 12) = 1026;
    *(v19 + 14) = [v16 processIdentifier];

    *(v19 + 18) = 2082;
    *(v19 + 20) = sub_1BAC1914C(a3, a4, v24);
    _os_log_impl(&dword_1BAC16000, v17, v18, "%{public}s Delegate: Rejecting connection from %{public}d: lacking entitlement '%{public}s'", v19, 0x1Cu);
    swift_arrayDestroy();
    sub_1BAC1ADA8();
    sub_1BAC1ADA8();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1BAC1B270(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&unk_1EBC257D0, &qword_1BAC3A350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAC1B2E0()
{
  result = 0;
  v2 = *(v0 - 360);
  return result;
}

void _s22ProactiveDaemonSupport21ReferenceCountedCacheV11getInstance2of4with7prewarm9keepAlivexxm_24InitializationParametersQzSbs8DurationVt0N5ErrorQzYKAA0deF6MemberRzlF(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = a8;
  v96 = a4;
  v97 = a5;
  v87 = a3;
  v104 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAC184D0(AssociatedTypeWitness);
  v93 = v14;
  v16 = *(v15 + 64);
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v17);
  v92 = &v84 - v18;
  v19 = swift_getAssociatedTypeWitness();
  sub_1BAC184D0(v19);
  v89 = v20;
  v22 = *(v21 + 64);
  sub_1BAC18C48();
  v88 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v91 = &v84 - v25;
  v26 = *(*(sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40) - 8) + 64);
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v27);
  v95 = &v84 - v28;
  sub_1BAC1BE14((v8 + 1), v103, &qword_1EBC25770, &unk_1BAC39910);
  swift_getAssociatedConformanceWitness();
  v90 = v19;
  sub_1BAC389E4();
  v102[0] = a6;
  v29 = *v8;
  v98 = v102;
  os_unfair_lock_lock((v29 + 24));
  sub_1BAC1BF90((v29 + 16), v99);
  if (v9)
  {
    os_unfair_lock_unlock((v29 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v29 + 24));
    v30 = v99[0];
    v31 = *(v99[0] + 16);
    MEMORY[0x1EEE9AC00](v32);
    *(&v84 - 6) = a6;
    *(&v84 - 5) = a7;
    *(&v84 - 4) = v103;
    *(&v84 - 3) = v104;
    *(&v84 - 2) = a2;

    sub_1BAC17FE4(sub_1BAC20054, (&v84 - 8), v31, &unk_1F38C8B98, a6);
    v94 = v30;
    v92 = a6;
    v93 = a2;

    v35 = v99[0];
    v36 = v96;
    v86 = v99[0];
    v85 = a7;
    if (v87)
    {
      sub_1BAC18C6C(v33, v34, &qword_1EBC25770, &unk_1BAC39910);
      if (v100)
      {
        v37 = v101;
        sub_1BAC1C910(v99, v100);
        v38 = *(v37 + 40);
        v39 = sub_1BAC1ACFC();
        v40 = v92;
        v41(v39);
        sub_1BAC1905C(v99);
      }

      else
      {
        sub_1BAC1C8B0(v99, &qword_1EBC25770, &unk_1BAC39910);
        a2 = v93;
        v40 = v92;
      }

      v42 = sub_1BAC38724();
      v43 = sub_1BAC1AC10(v42);
      sub_1BAC18C6C(v43, v44, &qword_1EBC25770, &unk_1BAC39910);
      v45 = v89;
      v46 = v91;
      v47 = a2;
      a2 = v90;
      (*(v89 + 16))(v91, v47, v90);
      sub_1BAC190A8(*(v45 + 80));
      v49 = v48 & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      v50[2] = 0;
      v50[3] = 0;
      v51 = v85;
      v50[4] = v40;
      v50[5] = v51;
      v52 = sub_1BAC18D10(v50);
      (*(v45 + 32))(v53 + v36, v46, a2, v52);
      v35 = v86;
      *(v50 + v49) = v86;
      swift_unknownObjectRetain();
      v54 = sub_1BAC1AD7C();
      sub_1BAC27408(v54, v55, v56, v57, v50);

      v36 = v96;
    }

    sub_1BAC38BD4();
    v58 = sub_1BAC38BC4();
    if (v58)
    {
      sub_1BAC18C6C(v58, v59, &qword_1EBC25770, &unk_1BAC39910);
      if (v100)
      {
        v60 = v101;
        sub_1BAC1C910(v99, v100);
        v61 = *(v60 + 64);
        v62 = sub_1BAC1ACFC();
        v63 = v92;
        v64(v62);
        sub_1BAC1905C(v99);
      }

      else
      {
        sub_1BAC1C8B0(v99, &qword_1EBC25770, &unk_1BAC39910);
        a2 = v93;
        v63 = v92;
      }

      v100 = v63;
      v99[0] = v35;
      sub_1BAC26FB4(&qword_1EBC25780, &unk_1BAC39920);
      v65 = swift_allocObject();
      v93 = v65;
      *(v65 + 48) = 0;
      sub_1BAC1BE14(v99, v65 + 16, &unk_1EBC257D0, &qword_1BAC3A350);
      swift_unknownObjectRetain();
      sub_1BAC1C8B0(v99, &unk_1EBC257D0, &qword_1BAC3A350);
      v66 = sub_1BAC38724();
      v67 = sub_1BAC1AC10(v66);
      sub_1BAC18C6C(v67, v68, &qword_1EBC25770, &unk_1BAC39910);
      v69 = v89;
      v70 = v90;
      (*(v89 + 16))(v91, a2, v90);
      sub_1BAC190A8(*(v69 + 80));
      v72 = v71 & 0xFFFFFFFFFFFFFFF8;
      v73 = ((v71 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v74 = swift_allocObject();
      v74[2] = 0;
      v74[3] = 0;
      v75 = v85;
      v74[4] = v63;
      v74[5] = v75;
      v76 = sub_1BAC18D10(v74);
      (*(v69 + 32))(v77 + v36, v91, v70, v76);
      v78 = (v74 + v72);
      v79 = v97;
      *v78 = v96;
      v78[1] = v79;
      *(v74 + v73) = v93;
      *(v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8)) = v86;
      swift_unknownObjectRetain();
      v80 = sub_1BAC1AD7C();
      sub_1BAC27408(v80, v81, v82, v83, v74);
    }

    sub_1BAC1C180(v102);
    sub_1BAC1C8B0(v103, &qword_1EBC25770, &unk_1BAC39910);
  }
}

uint64_t sub_1BAC1BB14()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_1BAC1DAA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAC184D0(AssociatedTypeWitness);
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  v9 = v0[2];
  swift_unknownObjectRelease();
  if (v0[9])
  {
    sub_1BAC1905C(v0 + 6);
  }

  sub_1BAC1AEB8();
  v11 = ((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v13, AssociatedTypeWitness);
  v14 = *(v0 + v11);

  v15 = *(v0 + v12);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v6 | 7);
}

uint64_t sub_1BAC1BC08()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_1BAC1DAA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAC184D0(AssociatedTypeWitness);
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  v9 = v0[2];
  swift_unknownObjectRelease();
  if (v0[9])
  {
    sub_1BAC1905C(v0 + 6);
  }

  sub_1BAC1AEB8();
  v11 = v10 & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v12, AssociatedTypeWitness);
  v13 = *(v0 + v11);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v6 | 7);
}

uint64_t _s22ProactiveDaemonSupport21ReferenceCountedCacheV11getInstance2of7prewarm9keepAlivexxm_Sbs8DurationVt19InitializationErrorQzYKAA0deF6MemberRzAA14NullParametersV0nR0RtzlF(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[0] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAC184D0(AssociatedTypeWitness);
  v15 = v14;
  v17 = *(v16 + 64);
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v26 - v19;
  v21 = v26[3];
  _s22ProactiveDaemonSupport21ReferenceCountedCacheV11getInstance2of4with7prewarm9keepAlivexxm_24InitializationParametersQzSbs8DurationVt0N5ErrorQzYKAA0deF6MemberRzlF(a1, v22, a2, a3, a4, a5, a6, v26 - v19);
  v24 = v23;
  if (v21)
  {
    (*(v15 + 32))(v26[0], v20, AssociatedTypeWitness);
  }

  return v24;
}

uint64_t sub_1BAC1BE14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BAC26FB4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BAC1BE7C(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1BAC1BFAC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_1BAC1BECC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  if (sub_1BAC1BE7C(a2, *a1))
  {
  }

  else
  {
    type metadata accessor for ReferenceCountedCache.WeakHolder();
    v7 = swift_allocObject();
    sub_1BAC26E40();
    v8 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    sub_1BAC31014(v7, a2);
    v6 = v10;
    *a1 = v10;
  }

  result = sub_1BAC1BE7C(a2, v6);
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BAC1BFAC(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](*a1);
  sub_1BAC388B4();
  v4 = sub_1BAC38B64();

  return sub_1BAC1C084(a1, v4);
}

unint64_t sub_1BAC1C084(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1 + 1;
    v7 = *a1;
    do
    {
      sub_1BAC1C028(*(v2 + 48) + 48 * v4, &v10);
      if (v10 == v7)
      {
        v8 = MEMORY[0x1BFAFEBD0](&v11, v6);
        sub_1BAC1C180(&v10);
        if (v8)
        {
          return v4;
        }
      }

      else
      {
        sub_1BAC1C180(&v10);
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t *XPCServiceClientConnection.deinit()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1BAC184B4();
  v9[2] = *(v3 + 80);
  sub_1BAC184B4();
  v9[3] = *(v4 + 88);
  v5 = type metadata accessor for XPCServiceClientConnection.State();

  v6 = sub_1BAC26FB4(&qword_1EBC25960, &qword_1BAC3A7A0);
  sub_1BAC17FE4(sub_1BAC1C2DC, v9, v2, v5, v6);

  v7 = v0[2];

  sub_1BAC1C288((v0 + 4));
  return v0;
}

uint64_t XPCServiceClientConnection.__deallocating_deinit()
{
  XPCServiceClientConnection.deinit();
  v0 = sub_1BAC19028();

  return MEMORY[0x1EEE6BDC0](v0);
}

id *sub_1BAC1C2DC@<X0>(id *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    result = [*result invalidate];
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t sub_1BAC1C330(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1BAC1C384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v41 = a3;
  v42 = a2;
  v39 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v12 = *(v36 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v34 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  v34 = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v43[0] = Strong, (swift_dynamicCast() & 1) != 0))
  {
    v22 = v46;
    sub_1BAC1BE14(v42, v43, &qword_1EBC25770, &unk_1BAC39910);
    v23 = v44;
    if (v44)
    {
      v24 = v45;
      sub_1BAC1C910(v43, v44);
      (*(v24 + 8))(v41, a4, a5, a6, v23, v24);
      result = sub_1BAC1905C(v43);
    }

    else
    {
      result = sub_1BAC1C8B0(v43, &qword_1EBC25770, &unk_1BAC39910);
    }

    *v39 = v22;
  }

  else
  {
    v26 = a4;
    v35 = v7;
    sub_1BAC1BE14(v42, v43, &qword_1EBC25770, &unk_1BAC39910);
    v27 = v44;
    if (v44)
    {
      v28 = v45;
      sub_1BAC1C910(v43, v44);
      (*(v28 + 16))(v41, v26, a5, a6, v27, v28);
      sub_1BAC1905C(v43);
    }

    else
    {
      sub_1BAC1C8B0(v43, &qword_1EBC25770, &unk_1BAC39910);
    }

    sub_1BAC1BE14(v42, v43, &qword_1EBC25770, &unk_1BAC39910);
    v29 = v44;
    if (v44)
    {
      v30 = v45;
      sub_1BAC1C910(v43, v44);
      (*(v30 + 24))(v41, v26, a5, a6, v29, v30);
      sub_1BAC1905C(v43);
    }

    else
    {
      sub_1BAC1C8B0(v43, &qword_1EBC25770, &unk_1BAC39910);
    }

    (*(v17 + 16))(v20, v26, v16);
    v31 = v35;
    v32 = v40;
    v33 = (*(a6 + 56))(v20, v40, a5, a6);
    if (v31)
    {
      (*(v36 + 32))(v37, v32, AssociatedTypeWitness);
      return sub_1BAC1C7E4(v42, v41, v26, a5, a6);
    }

    else
    {
      *v39 = v33;
      swift_unknownObjectRetain();
      sub_1BAC1C7E4(v42, v41, v26, a5, a6);
      swift_unknownObjectWeakAssign();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1BAC1C7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BAC1BE14(a1, v12, &qword_1EBC25770, &unk_1BAC39910);
  v9 = v13;
  if (!v13)
  {
    return sub_1BAC1C8B0(v12, &qword_1EBC25770, &unk_1BAC39910);
  }

  v10 = v14;
  sub_1BAC1C910(v12, v13);
  (*(v10 + 32))(a2, a3, a4, a5, v9, v10);
  return sub_1BAC1905C(v12);
}

uint64_t sub_1BAC1C8B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1BAC26FB4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1BAC1C910(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t ConcurrentLRUCache.init(cacheSize:)(uint64_t result)
{
  v2 = *v1;
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v1[2] = result;
    v4 = v2[10];
    v3 = v2[11];
    v5 = v2[12];
    type metadata accessor for ConcurrentLRUCache.Entry();
    swift_getTupleTypeMetadata2();
    sub_1BAC386A4();
    v7 = sub_1BAC38564();
    v6 = sub_1BAC38594();
    v1[3] = sub_1BAC17788(&v7, v6);
    return v1;
  }

  return result;
}

uint64_t sub_1BAC1CA78(uint64_t (*a1)(char *, uint64_t))
{
  v3 = v1;
  v68 = a1;
  v4 = *v1;
  v5 = sub_1BAC383E4();
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - v9;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = v1[5];
    ObjectType = swift_getObjectType();
    (*(v11 + 32))(ObjectType, v11);
    if (v2)
    {
      return swift_unknownObjectRelease();
    }

    v65 = ObjectType;
    if (*v68)
    {
      return swift_unknownObjectRelease();
    }

    v13 = *(v4 + 80);
    v14 = *(v4 + 88);
    v59 = *(v14 + 48);
    v60 = v14 + 48;
    v59(v13, v14);
    v15 = sub_1BAC383D4();
    LODWORD(v61) = sub_1BAC38774();
    v62 = v15;
    v16 = os_log_type_enabled(v15, v61);
    v63 = v13;
    v64 = v14;
    v58 = v5;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v56 = v17;
      v57 = swift_slowAlloc();
      aBlock = v57;
      *v17 = 136446210;
      v18 = (*(v14 + 24))(v13, v14);
      v20 = sub_1BAC1914C(v18, v19, &aBlock);

      v21 = v56;
      *(v56 + 1) = v20;
      v22 = v62;
      _os_log_impl(&dword_1BAC16000, v62, v61, "%{public}s: establishing connection.", v21, 0xCu);
      v23 = v57;
      sub_1BAC1905C(v57);
      MEMORY[0x1BFAFF600](v23, -1, -1);
      MEMORY[0x1BFAFF600](v21, -1, -1);
    }

    else
    {
    }

    v24 = *(v67 + 8);
    v24(v10, v5);
    v25 = v3[3];
    if (v25)
    {
      v26 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
      v27 = v25;
      v62 = [v26 init];
      v28 = v63;
      v61 = *(v64 + 24);
      v61(v63);
      v29 = sub_1BAC38614();

      v30 = [v62 _initWithRemoteService:v27 name:v29 options:0];
    }

    else
    {
      sub_1BAC17C74();
      v28 = v63;
      v61 = *(v64 + 24);
      v31 = (v61)(v63);
      v30 = sub_1BAC17CB8(v31, v32, 0);
    }

    v33 = v30;
    *v68 = v33;
    if (v33)
    {
      v34 = v33;
      v35 = v64;
      v36 = static XPCService.xpcInterface()();
      [v34 setRemoteObjectInterface_];

      v37 = swift_allocObject();
      swift_weakInit();
      v38 = swift_allocObject();
      v38[2] = v28;
      v38[3] = v35;
      v38[4] = v37;
      v73 = sub_1BAC21C0C;
      v74 = v38;
      aBlock = MEMORY[0x1E69E9820];
      v70 = 1107296256;
      v71 = sub_1BAC1C330;
      v72 = &unk_1F38C9D20;
      v39 = _Block_copy(&aBlock);

      [v34 setInterruptionHandler_];
      _Block_release(v39);
      v40 = swift_allocObject();
      swift_weakInit();
      v41 = swift_allocObject();
      v41[2] = v63;
      v41[3] = v35;
      v41[4] = v40;
      v73 = sub_1BAC1C374;
      v74 = v41;
      aBlock = MEMORY[0x1E69E9820];
      v70 = 1107296256;
      v71 = sub_1BAC1C330;
      v72 = &unk_1F38C9D70;
      v42 = _Block_copy(&aBlock);

      [v34 setInvalidationHandler_];
      _Block_release(v42);
      (*(v11 + 40))(v34, v65, v11);
      [v34 activate];

      return swift_unknownObjectRelease();
    }

    v44 = v66;
    v45 = v64;
    v59(v28, v64);
    v46 = sub_1BAC383D4();
    v47 = sub_1BAC38754();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v68 = v24;
      v49 = v48;
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v49 = 136446210;
      v50 = (v61)(v28, v45);
      v52 = v44;
      v53 = sub_1BAC1914C(v50, v51, &aBlock);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_1BAC16000, v46, v47, "%{public}s: did not create connection.", v49, 0xCu);
      v54 = v65;
      sub_1BAC1905C(v65);
      MEMORY[0x1BFAFF600](v54, -1, -1);
      MEMORY[0x1BFAFF600](v49, -1, -1);
      swift_unknownObjectRelease();

      return v68(v52, v58);
    }

    else
    {

      swift_unknownObjectRelease();
      return (v24)(v44, v58);
    }
  }

  else
  {
    result = sub_1BAC389B4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAC1D1E0()
{
  swift_weakDestroy();
  sub_1BAC1AE98();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BAC1D214()
{
  v1 = *(v0 + 32);

  sub_1BAC1D5B8();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void XPCServiceClientConnection.call<A>(_:)()
{
  sub_1BAC194C0();
  v3 = v2;
  v36 = v4;
  v40 = v5;
  v7 = v6;
  v8 = *v0;
  sub_1BAC20CE4(v5, v4, v2);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v0[2];
  v37[2] = v17;
  v38 = v0;
  sub_1BAC184B4();
  v19 = *(v18 + 80);
  sub_1BAC184B4();
  v21 = *(v20 + 88);
  sub_1BAC19124();
  v22 = type metadata accessor for XPCServiceClientConnection.State();
  v23 = sub_1BAC17C74();
  sub_1BAC17E04(sub_1BAC1D59C, v37, v16, v22, v23);
  if (!v1)
  {
    v34 = v7;
    v35 = v10;
    v24 = v39[0];
    sub_1BAC1AE98();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = swift_allocObject();
    v26[2] = v19;
    v26[3] = v3;
    v26[4] = v21;
    v26[5] = v25;
    v39[4] = sub_1BAC3230C;
    v39[5] = v26;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 1107296256;
    sub_1BAC19598();
    v39[2] = v27;
    v39[3] = &unk_1F38C9670;
    v28 = _Block_copy(v39);

    [v24 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v28);
    v29 = swift_unknownObjectRetain();
    v40(v29);
    sub_1BAC19504();
    v30 = *(v25 + 16);
    if (v30)
    {
      v31 = *(v25 + 16);
      swift_willThrow();
      v32 = v30;

      swift_unknownObjectRelease();
      (*(v35 + 8))(v15, v3);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease_n();
      (*(v35 + 32))(v34, v15, v3);
    }
  }

  sub_1BAC35364();
}

uint64_t sub_1BAC1D538()
{
  sub_1BAC1AE98();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BAC1D56C()
{
  v1 = *(v0 + 40);

  v2 = sub_1BAC19028();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void sub_1BAC1D59C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1BAC1D5C4();
}

void sub_1BAC1D5C4()
{
  sub_1BAC194C0();
  sub_1BAC353A4();
  sub_1BAC1CA78(v4);
  if (!v1)
  {
    v5 = *v3;
    if (*v3)
    {
      *v0 = v5;
      v6 = v5;
    }

    else
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v2 + 40);
        swift_getObjectType();
        v8 = *(v7 + 24);
        sub_1BAC19124();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v22[1] = v22;
        sub_1BAC184D0(AssociatedTypeWitness);
        v11 = v10;
        v13 = *(v12 + 64);
        sub_1BAC18C48();
        MEMORY[0x1EEE9AC00](v14);
        sub_1BAC18D70();
        swift_unknownObjectRetain();
        v15 = sub_1BAC1AF2C();
        v8(v15);
        sub_1BAC18DB8();
        swift_getAssociatedConformanceWitness();
        sub_1BAC1FF14();
        if (sub_1BAC38A34())
        {
          v16 = *(v11 + 8);
          v17 = sub_1BAC1FF14();
        }

        else
        {
          v20 = sub_1BAC3538C();
          v17 = sub_1BAC1AD10(v20, v21);
        }

        v18(v17);
        sub_1BAC353DC();
      }

      else
      {
        sub_1BAC32604();
        sub_1BAC3538C();
        *v19 = 0;
      }

      swift_willThrow();
    }
  }

  sub_1BAC35364();
}

uint64_t static Task<>.pds_xpcCallback<A>(priority:callback:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v18 - v13;
  v15 = sub_1BAC38724();
  sub_1BAC1926C(v14, 1, 1, v15);
  v16 = static Task<>.pds_xpcCallback<A>(discardUserInfoForErrors:priority:callback:body:)(0, v14, a2, a3, a4, a5, a6);
  sub_1BAC1DCC4(v14);
  return v16;
}

uint64_t static Task<>.pds_xpcCallback<A>(discardUserInfoForErrors:priority:callback:body:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v20 - v16;
  sub_1BAC1D9AC(a2, &v20 - v16);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = a7;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a3;
  *(v18 + 64) = a4;
  *(v18 + 72) = a1;

  return sub_1BAC27408(0, 0, v17, &unk_1BAC3A760, v18);
}

uint64_t sub_1BAC1D964()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1BAC1D9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAC1DA5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1BAC38634();
  v5 = a3(v4 + 32);

  return v5;
}

uint64_t *sub_1BAC1DAD4(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t *BidirectionalXPCServiceClientConnection.init(existingConnection:localObject:delegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = *v4;
  sub_1BAC17658();
  v4[3] = a1;
  LOBYTE(v16[0]) = 1;
  v10 = a1;
  swift_unknownObjectRetain();
  v14 = *(v9 + 96);
  v15 = *(v9 + 80);
  sub_1BAC17D34(v16, v17);
  v16[0] = v15;
  v16[1] = v14;
  v11 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  v4[2] = sub_1BAC17788(v17, v11);
  v4[5] = a4;
  swift_unknownObjectWeakAssign();
  v12 = v4[2];

  sub_1BAC17FE4(sub_1BAC17FFC, v4, v12, v11, MEMORY[0x1E69E7CA8] + 8);
  if (v6)
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1BAC1DCC4(uint64_t a1)
{
  v2 = sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAC1DD2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1BAC1EF60;

  return sub_1BAC1DE1C(a1, v4, v5, v6, v8, v9, v10, v11);
}

uint64_t sub_1BAC1DE1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v21;
  *(v8 + 128) = a8;
  *(v8 + 48) = a6;
  v10 = sub_1BAC38864();
  *(v8 + 72) = v10;
  v11 = *(v10 - 8);
  *(v8 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v13 = *(v21 - 8);
  *(v8 + 96) = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  *(v8 + 104) = v15;
  v19 = (a4 + *a4);
  v16 = a4[1];
  v17 = swift_task_alloc();
  *(v8 + 112) = v17;
  *v17 = v8;
  v17[1] = sub_1BAC1F058;

  return v19(v15);
}

uint64_t sub_1BAC1DFE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CancellableOSTransaction.init(_:onSIGTERM:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  if (qword_1ED76BA40 != -1)
  {
    sub_1BAC18FBC();
  }

  v11 = qword_1ED76BB68;
  os_unfair_lock_lock((qword_1ED76BB68 + 28));
  sub_1BAC1E218(&v11[4]);
  os_unfair_lock_unlock(v11 + 7);
  sub_1BAC38634();
  v12 = os_transaction_create();

  if (v12)
  {

    type metadata accessor for CancellableOSTransaction.Holder();
    v14 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v14 + 112) = v12;
    *(v4 + 16) = v14;
    v15 = sub_1BAC38724();
    sub_1BAC1926C(v10, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a3;
    v16[5] = a4;
    v16[6] = v14;

    *(v4 + 24) = sub_1BAC2ADC8(0, 0, v10, &unk_1BAC39D50, v16);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAC1E1D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BAC1E218(uint64_t a1)
{
  v3 = sub_1BAC384D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAC384F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 255)
  {
    sub_1BAC2B414(0, &qword_1ED76BA20, 0x1E69E9630);
    aBlock[7] = v1;
    v14 = sub_1BAC387E4();
    swift_getObjectType();
    v17 = v3;
    aBlock[4] = sub_1BAC2AAC4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAC1C330;
    aBlock[3] = &unk_1F38C8EB8;
    v15 = _Block_copy(aBlock);
    sub_1BAC384E4();
    sub_1BAC2AA0C();
    sub_1BAC387F4();
    _Block_release(v15);
    (*(v4 + 8))(v7, v17);
    (*(v9 + 8))(v13, v8);
    result = sub_1BAC38814();
    *a1 = v14;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_1BAC1E49C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1BAC26FB4(a2, a3);
  sub_1BAC19294(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BAC1E4F0()
{
  sub_1BAC1AC34();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1BAC193FC(v3);
  *v4 = v5;
  v6 = sub_1BAC18D2C(v4);

  return v7(v6);
}

uint64_t sub_1BAC1E584(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BAC20B5C;

  return v7(a1);
}

uint64_t sub_1BAC1E67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = *(*(sub_1BAC26FB4(&qword_1EBC257A8, &qword_1BAC39E80) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v8 = sub_1BAC38834();
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v10 = *(v9 + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BAC1E858, 0, 0);
}

uint64_t sub_1BAC1E778(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_1BAC193FC(v8);
  *v9 = v10;
  v9[1] = sub_1BAC20A00;

  return sub_1BAC1E67C(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_1BAC1E838(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 40) = v1;

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BAC1E858()
{
  sub_1BAC1AC34();
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1ED76B808 != -1)
  {
    sub_1BAC19524();
  }

  v2 = v0[9];
  sub_1BAC38844();

  sub_1BAC38824();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1BAC20078;
  v4 = v0[9];
  v5 = v0[6];

  return sub_1BAC1E980(v5, 0, 0);
}

uint64_t sub_1BAC1E980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v5 = sub_1BAC38834();
  v6 = sub_1BAC1DFE0(&qword_1ED76B800, MEMORY[0x1E6969EF8]);
  v7 = *(MEMORY[0x1E69E85A8] + 4);
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1BAC1FCE4;

  return MEMORY[0x1EEE6D8C8](a1, v5, v6);
}

uint64_t BidirectionalXPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  return sub_1BAC17898(sub_1BAC1EABC);
}

uint64_t sub_1BAC1EABC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  *(v0 + 16) = *(v2 + 80);
  *(v0 + 32) = *(v2 + 96);
  v6 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  v7 = sub_1BAC17C74();
  sub_1BAC17E04(sub_1BAC1949C, v5, v4, v6, v7);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v18 = *(v0 + 64);

  v10 = *(v0 + 48);
  *(v0 + 104) = v10;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  *(v11 + 32) = v8;
  *(v11 + 40) = v18;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  sub_1BAC353C4();
  *(v0 + 120) = v13;
  *v13 = v14;
  v13[1] = sub_1BAC207D0;
  v15 = *(v0 + 80);
  v16 = *(v0 + 56);
  sub_1BAC1AC40();

  return MEMORY[0x1EEE6DE38]();
}

void sub_1BAC1EC70(uint64_t a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  sub_1BAC1ECA4(a1, a2, v2[7], v2[8]);
}

void sub_1BAC1ECA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BAC38864();
  v8 = swift_projectBox();
  swift_beginAccess();
  (*(*(v7 - 8) + 24))(v8, a1, v7);
  swift_beginAccess();
  v9 = *(a4 + 16);
  *(a4 + 16) = a2;
  v10 = a2;
}

uint64_t sub_1BAC1ED78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1BAC1D5B8();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t BidirectionalXPCServiceClientConnection.__deallocating_deinit()
{
  BidirectionalXPCServiceClientConnection.deinit();
  v0 = sub_1BAC19028();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t BidirectionalXPCServiceClientConnection.deinit()
{
  [*(v0 + 24) setInterruptionHandler_];
  [*(v0 + 24) setInvalidationHandler_];
  [*(v0 + 24) invalidate];
  v1 = *(v0 + 16);

  sub_1BAC1C288(v0 + 32);
  return v0;
}

uint64_t sub_1BAC1EE48()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1BAC1F16C();
}

uint64_t sub_1BAC1EE54()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  (*(v2 + 16))(v3, v1, v6);
  sub_1BAC1926C(v3, 0, 1, v6);
  v8(v3, 0);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v6);
  v9 = v0[13];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BAC1EF60()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BAC1F058()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1BAC30080;
  }

  else
  {
    v3 = sub_1BAC1EE54;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BAC1F16C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v23 - v3;
  v4 = sub_1BAC383E4();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_projectBox();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  (*(v10 + 48))(v8, v10);
  v11 = sub_1BAC383D4();
  v12 = sub_1BAC38774();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v1;
    v15 = v14;
    v28[0] = v14;
    *v13 = 136446210;
    v16 = (*(v10 + 24))(v8, v10);
    v18 = sub_1BAC1914C(v16, v17, v28);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1BAC16000, v11, v12, "%{public}s BidirectionalDelegate: connection invalidated.", v13, 0xCu);
    sub_1BAC1905C(v15);
    v19 = v15;
    v1 = v23;
    MEMORY[0x1BFAFF600](v19, -1, -1);
    MEMORY[0x1BFAFF600](v13, -1, -1);
  }

  (*(v25 + 8))(v7, v26);
  v20 = v24;
  swift_beginAccess();
  v21 = v27;
  (*(v1 + 16))(v27, v20, AssociatedTypeWitness);
  (*(AssociatedConformanceWitness + 104))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v1 + 8))(v21, AssociatedTypeWitness);
}

uint64_t sub_1BAC1F520(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t, void (*)(), char *), uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a4;
  v34 = a1;
  v35 = a2;
  v9 = *a3;
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  v31 = a6;
  v10 = sub_1BAC386F4();
  v11 = *(v10 - 8);
  v30 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v33 = *(v11 + 16);
  v33(&v26 - v12, a1, v10);
  v14 = *(v11 + 80);
  v15 = swift_allocObject();
  v32 = v9[10];
  *(v15 + 2) = v32;
  v29 = v9[11];
  *(v15 + 3) = v29;
  *(v15 + 4) = a6;
  v28 = v9[12];
  *(v15 + 5) = v28;
  v27 = v9[13];
  *(v15 + 6) = v27;
  *(v15 + 7) = a3;
  v26 = *(v11 + 32);
  v26(&v15[(v14 + 64) & ~v14], v13, v10);
  aBlock[4] = sub_1BAC34F84;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAC3232C;
  aBlock[3] = &unk_1F38C9B40;
  v16 = _Block_copy(aBlock);

  v17 = [v35 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  v33(v13, v34, v10);
  v18 = (v14 + 56) & ~v14;
  v19 = (v30 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v29;
  *(v20 + 2) = v32;
  *(v20 + 3) = v21;
  v22 = v27;
  v23 = v28;
  *(v20 + 4) = v31;
  *(v20 + 5) = v23;
  *(v20 + 6) = v22;
  v26(&v20[v18], v13, v10);
  *&v20[v19] = a3;

  v24 = swift_unknownObjectRetain();
  v37(v24, sub_1BAC1FE5C, v20);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1BAC1F864()
{
  v1 = *(v0 + 32);
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC17634();
  v2 = sub_1BAC386F4();
  sub_1BAC184D0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 64) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v0 + 56);

  (*(v4 + 8))(v0 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v8, v5 | 7);
}

uint64_t sub_1BAC1F940()
{
  v2 = *(v0 + 32);
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC17634();
  v3 = sub_1BAC386F4();
  sub_1BAC19294(v3);
  v5 = *(v4 + 8);
  v4 += 8;
  v6 = *(v4 + 72);
  v7 = *(v4 + 56);
  v8 = sub_1BAC1D278();
  v9(v8);
  v10 = *(v0 + v1);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v6 | 7);
}

uint64_t MachIdentityToken.__deallocating_deinit()
{
  MachIdentityToken.deinit();
  v0 = sub_1BAC18FFC();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1BAC1FA18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1BAC26FB4(a2, a3);
  sub_1BAC178BC();
  sub_1BAC1DAC8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BAC1FAA0(uint64_t a1)
{
  v2 = sub_1BAC26FB4(&qword_1EBC25870, &qword_1BAC3A3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall Watchdog.complete()()
{
  v1 = (v0 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline));
  v2 = *(sub_1BAC26FB4(&qword_1EBC25878, &qword_1BAC3A3C8) + 28);
  sub_1BAC1FAA0(v1 + v2);
  v3 = sub_1BAC38514();
  sub_1BAC1926C(v1 + v2, 1, 1, v3);

  os_unfair_lock_unlock(v1);
}

uint64_t MachIdentityToken.deinit()
{
  if (!mach_port_deallocate(*MEMORY[0x1E69E9A60], *(v0 + 16)))
  {
    return v0;
  }

  sub_1BAC1957C();
  sub_1BAC388D4();

  sub_1BAC1853C();
  sub_1BAC38A24();
  sub_1BAC190D4();

  sub_1BAC18D4C();
  result = sub_1BAC1AEF0();
  __break(1u);
  return result;
}

uint64_t CancellableOSTransaction.__deallocating_deinit()
{
  CancellableOSTransaction.deinit();
  v0 = sub_1BAC190C4();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t CancellableOSTransaction.deinit()
{
  v1 = *(v0 + 24);

  sub_1BAC38734();

  v2 = *(v0 + 16);

  v3 = *(v0 + 24);

  return v0;
}

uint64_t sub_1BAC1FCE4()
{
  sub_1BAC1AC34();
  sub_1BAC194B4();
  v3 = v2;
  v4 = v2[5];
  v5 = v2[3];
  v6 = *v1;
  sub_1BAC184E4();
  *v7 = v6;
  v3[6] = v0;

  if (v0)
  {
    if (v5)
    {
      v8 = v3[3];
      v9 = v3[4];
      swift_getObjectType();
      v10 = sub_1BAC386C4();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v16 = sub_1BAC2AD28;
  }

  else
  {
    if (v5)
    {
      v13 = v3[3];
      v14 = v3[4];
      swift_getObjectType();
      v10 = sub_1BAC386C4();
      v12 = v15;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v16 = sub_1BAC1FF20;
  }

  return MEMORY[0x1EEE6DFA0](v16, v10, v12);
}

void sub_1BAC1FE5C()
{
  sub_1BAC1FB88();
  v1 = *(v0 + 32);
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  v2 = *(sub_1BAC386F4() - 8);
  sub_1BAC17870();
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  v9 = sub_1BAC35340(v7);

  sub_1BAC20178(v9, v10, v11, v12, v13);
}

uint64_t static MachIdentityToken.newTokenForCurrentProcess()()
{
  v4 = *MEMORY[0x1E69E9840];
  token = 0;
  if (task_create_identity_token(*MEMORY[0x1E69E9A60], &token))
  {
    sub_1BAC1957C();
    sub_1BAC388D4();

    sub_1BAC38A24();
    sub_1BAC190D4();

    sub_1BAC18D4C();
    result = sub_1BAC1AEF0();
    __break(1u);
  }

  else
  {
    v0 = token;
    sub_1BAC18FFC();
    result = swift_allocObject();
    if (!v0)
    {
      __break(1u);
    }

    *(result + 16) = v0;
    v2 = *MEMORY[0x1E69E9840];
  }

  return result;
}

__n128 sub_1BAC20044(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BAC20078()
{
  sub_1BAC1AEE4();
  sub_1BAC194B4();
  v3 = *(v2 + 80);
  v4 = *v1;
  sub_1BAC184E4();
  *v5 = v4;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BAC208DC, 0, 0);
  }

  return result;
}

void sub_1BAC20178(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38[2] = a3;
  v9 = sub_1BAC38864();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v38 - v13;
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v38 - v20;
  if (a2)
  {
    v22 = a2;
    v23 = sub_1BAC382E4();
    v24 = NSError.pds_unlaunderSimpleNSError()();

    if (v24)
    {
      v39 = v24;
      v25 = v24;
      sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
      sub_1BAC386F4();
      sub_1BAC386D4();

      return;
    }

    v39 = a2;
  }

  else
  {
    (*(v10 + 16))(v14, a1, v9);
    if (sub_1BAC1DA1C(v14, 1, a5) != 1)
    {
      (*(v15 + 32))(v21, v14, a5);
      (*(v15 + 16))(v19, v21, a5);
      sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
      sub_1BAC386F4();
      sub_1BAC386E4();
      (*(v15 + 8))(v21, a5);
      return;
    }

    (*(v10 + 8))(v14, v9);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(a4 + 40);
      ObjectType = swift_getObjectType();
      LOBYTE(v39) = 2;
      v28 = *(v26 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v38[1] = v38;
      v30 = *(AssociatedTypeWitness - 8);
      v31 = *(v30 + 64);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v33 = v38 - v32;
      swift_unknownObjectRetain();
      v28(&v39, ObjectType, v26);
      swift_getAssociatedConformanceWitness();
      v34 = sub_1BAC38A34();
      if (v34)
      {
        v35 = v34;
        (*(v30 + 8))(v33, AssociatedTypeWitness);
      }

      else
      {
        v35 = swift_allocError();
        (*(v30 + 32))(v37, v33, AssociatedTypeWitness);
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_1BAC32604();
      v35 = swift_allocError();
      *v36 = 2;
    }

    v39 = v35;
  }

  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC386F4();
  sub_1BAC386D4();
}

uint64_t AuditToken.encode(to:)(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v24 = a5;
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v21 = HIDWORD(a2);
  v22 = HIDWORD(a3);
  v27 = *MEMORY[0x1E69E9840];
  v23 = HIDWORD(a4);
  v25 = HIDWORD(a5);
  v9 = sub_1BAC26FB4(&qword_1EBC25898, &qword_1BAC3A438);
  v10 = sub_1BAC184D0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v20 - v15;
  v17 = a1[4];
  sub_1BAC1C910(a1, a1[3]);
  sub_1BAC20C90();
  sub_1BAC38BA4();
  v26[0] = v7;
  v26[1] = v21;
  v26[2] = v6;
  v26[3] = v22;
  v26[4] = v5;
  v26[5] = v23;
  v26[6] = v24;
  v26[7] = v25;
  sub_1BAC20CF8(v26);
  result = (*(v12 + 8))(v16, v9);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BAC207D0()
{
  sub_1BAC1AEE4();
  sub_1BAC194B4();
  v3 = v2;
  v4 = *(v2 + 120);
  v5 = *v1;
  sub_1BAC184E4();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    v7 = sub_1BAC33F18;
  }

  else
  {
    v8 = *(v3 + 112);

    v7 = sub_1BAC20B00;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BAC208DC()
{
  sub_1BAC1AEE4();
  v1 = *(v0 + 48);
  v2 = sub_1BAC382D4();
  if (sub_1BAC1DA1C(v1, 1, v2) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_5:
    v5 = *(v0 + 72);
    v6 = *(v0 + 48);

    sub_1BAC194D8();

    return v7();
  }

  v3 = *(v0 + 32);
  (*(v0 + 24))();
  if (*(v0 + 88))
  {
    v4 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    sub_1BAC1E49C(v4, &qword_1EBC257A8, &qword_1BAC39E80);
    goto LABEL_5;
  }

  v9 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1BAC2AC28, v9, 0);
}

uint64_t sub_1BAC20A00()
{
  sub_1BAC1AEE4();
  sub_1BAC194B4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1BAC184E4();
  *v4 = v3;

  sub_1BAC194D8();

  return v5();
}

uint64_t sub_1BAC20B00()
{
  sub_1BAC1AEE4();

  sub_1BAC194D8();

  return v1();
}

uint64_t sub_1BAC20B5C()
{
  sub_1BAC1AEE4();
  sub_1BAC194B4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1BAC184E4();
  *v4 = v3;

  sub_1BAC194D8();

  return v5();
}

uint64_t sub_1BAC20C58()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1BAC20C90()
{
  result = qword_1EBC254A0;
  if (!qword_1EBC254A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC254A0);
  }

  return result;
}

uint64_t sub_1BAC20CF8(uint64_t a1)
{
  v3 = sub_1BAC20D84(a1, a1 + 32);
  v4 = v1;
  sub_1BAC26FB4(&qword_1EBC25898, &qword_1BAC3A438);
  sub_1BAC20E40();
  sub_1BAC38A14();
  return sub_1BAC20F70(v3, v4);
}

uint64_t sub_1BAC20D84(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1BAC1C910(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1BAC38304();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x1BFAFE640]();
    }

    else
    {
      v6 = MEMORY[0x1BFAFE650]();
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1BAC1905C(v8);
  return v6;
}

unint64_t sub_1BAC20E40()
{
  result = qword_1EBC25358[0];
  if (!qword_1EBC25358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBC25358);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AuditToken.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1BAC20F34);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BAC20F70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_1BAC20FC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = AuditToken.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void *AuditToken.init(from:)(uint64_t *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = sub_1BAC26FB4(&qword_1EBC25890, &qword_1BAC3A430);
  v4 = sub_1BAC184D0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v17 - v9;
  v11 = a1[4];
  v12 = sub_1BAC1C910(a1, a1[3]);
  sub_1BAC20C90();
  sub_1BAC38B84();
  if (!v1)
  {
    sub_1BAC21208();
    sub_1BAC38A04();
    v15 = v20;
    v16 = v21;
    memset(v17, 0, sizeof(v17));
    v18 = v20;
    v19 = v21;
    sub_1BAC2125C();
    sub_1BAC382C4();
    (*(v6 + 8))(v10, v3);
    sub_1BAC20F70(v15, v16);
    v12 = *&v17[0];
  }

  sub_1BAC1905C(a1);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

unint64_t sub_1BAC21208()
{
  result = qword_1EBC25350;
  if (!qword_1EBC25350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25350);
  }

  return result;
}

unint64_t sub_1BAC2125C()
{
  result = qword_1EBC25348;
  if (!qword_1EBC25348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25348);
  }

  return result;
}

uint64_t Watchdog.init(name:duration:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v7 = sub_1BAC26FB4(&qword_1EBC25870, &qword_1BAC3A3C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v34 - v9;
  v10 = sub_1BAC26FB4(&qword_1EBC25878, &qword_1BAC3A3C8);
  v11 = v10 - 8;
  v37 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v34 - v12);
  v14 = sub_1BAC38514();
  v15 = sub_1BAC184D0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v34 - v23;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v25 = OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_logger;
  v26 = sub_1BAC383E4();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v4 + v25, v38, v26);
  sub_1BAC38504();
  MEMORY[0x1BFAFE850](v22, v39);
  v35 = *(v17 + 8);
  v35(v22, v14);
  v28 = v36;
  (*(v17 + 16))(v36, v24, v14);
  sub_1BAC1926C(v28, 0, 1, v14);
  *v13 = 0;
  v29 = *(v11 + 36);
  v30 = sub_1BAC26FB4(&qword_1EBC25880, &qword_1BAC3A3D0);
  bzero(v13 + v29, *(*(v30 - 8) + 64));
  sub_1BAC21608(v28, v13 + v29);
  memcpy((v4 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline), v13, v37);
  sub_1BAC21678(v24);
  (*(v27 + 8))(v38, v26);
  v31 = sub_1BAC384C4();
  sub_1BAC19294(v31);
  (*(v32 + 8))(v39);
  v35(v24, v14);
  return v4;
}

uint64_t sub_1BAC21608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC25870, &qword_1BAC3A3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAC21678(uint64_t a1)
{
  v2 = sub_1BAC384D4();
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BAC384F4();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAC38514();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBC25230 != -1)
  {
    swift_once();
  }

  v19[1] = qword_1EBC25238;
  (*(v11 + 16))(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = *(v11 + 80);
  v19[0] = a1;
  v15 = (v14 + 24) & ~v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = sub_1BAC2F16C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAC1C330;
  aBlock[3] = &unk_1F38C93C8;
  v17 = _Block_copy(aBlock);

  sub_1BAC384E4();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1BAC21B20(&qword_1ED76BA38, MEMORY[0x1E69E7F60]);
  sub_1BAC26FB4(&unk_1EBC257B0, &qword_1BAC39E98);
  sub_1BAC21B68(&qword_1ED76BA28, &unk_1EBC257B0, &qword_1BAC39E98);
  sub_1BAC38884();
  MEMORY[0x1BFAFEAD0](v19[0], v9, v5, v17);
  _Block_release(v17);
  (*(v20 + 8))(v5, v2);
  (*(v6 + 8))(v9, v22);
}

uint64_t sub_1BAC21A38()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1BAC26FB4(&qword_1EBC25878, &qword_1BAC3A3C8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BAC21A68()
{
  v1 = sub_1BAC38514();
  sub_1BAC184D0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BAC21B20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BAC21B68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BAC2B39C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAC21BBC(uint64_t a1)
{
  v5 = a1;
  sub_1BAC19564();
  v6 = v1;
  v7 = v2;
  return v3(&v5);
}

uint64_t sub_1BAC21C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BAC383E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 48))(a2, a3);
  v11 = sub_1BAC383D4();
  v12 = sub_1BAC38754();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21[0] = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v21[1] = v3;
    v16 = v15;
    v22 = v15;
    *v14 = 136446210;
    v17 = (*(a3 + 24))(a2, a3);
    v19 = sub_1BAC1914C(v17, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1BAC16000, v11, v12, "%{public}s: Connection to XPC Server interrupted.", v14, 0xCu);
    sub_1BAC1905C(v16);
    MEMORY[0x1BFAFF600](v16, -1, -1);
    MEMORY[0x1BFAFF600](v14, -1, -1);

    return (*(v7 + 8))(v10, v21[0]);
  }

  else
  {

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1BAC21E48(uint64_t a1, void *a2)
{
  v173 = a2;
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v155 = sub_1BAC38864();
  v6 = sub_1BAC184D0(v155);
  v154 = v7;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v162 = &v151 - v11;
  v172 = AssociatedTypeWitness;
  v158 = *(AssociatedTypeWitness - 8);
  v12 = *(v158 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v157 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v165 = &v151 - v15;
  v168 = sub_1BAC383E4();
  v16 = sub_1BAC184D0(v168);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1BAC18D80();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v151 - v23;
  MEMORY[0x1EEE9AC00](v22);
  sub_1BAC18D80();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v151 - v27;
  MEMORY[0x1EEE9AC00](v26);
  sub_1BAC18D80();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v151 - v30;
  v32 = swift_getAssociatedTypeWitness();
  v167 = v3;
  v166 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = *(AssociatedConformanceWitness + 48);
  v35 = sub_1BAC19140();
  v170 = v36;
  v169 = v37;
  v37(v35, AssociatedConformanceWitness);
  v38 = sub_1BAC383D4();
  v39 = sub_1BAC38774();
  v40 = os_log_type_enabled(v38, v39);
  v156 = v24;
  v159 = v28;
  if (v40)
  {
    swift_slowAlloc();
    v41 = sub_1BAC1AD2C();
    *&v182 = v41;
    *v3 = 136446210;
    v42 = sub_1BAC1AF50(AssociatedConformanceWitness);
    v44 = v43(v42, AssociatedConformanceWitness);
    v46 = v32;
    v47 = AssociatedConformanceWitness;
    v48 = v18;
    v49 = sub_1BAC1914C(v44, v45, &v182);

    *(v3 + 4) = v49;
    v18 = v48;
    AssociatedConformanceWitness = v47;
    v32 = v46;
    _os_log_impl(&dword_1BAC16000, v38, v39, "%{public}s Delegate: Got connection request.", v3, 0xCu);
    sub_1BAC1905C(v41);
    sub_1BAC1ADA8();
    sub_1BAC1ADA8();
  }

  v50 = *(v18 + 8);
  v51 = v31;
  v52 = v168;
  v50(v51, v168);
  swift_beginAccess();
  v53 = off_1ED76B748;
  v54 = v172;
  v55 = v173;
  if (off_1ED76B748)
  {

    v56 = (v53)(v55, v32, AssociatedConformanceWitness);
    sub_1BAC1ADCC(v53);
    if ((v56 & 1) == 0)
    {
      v71 = v161;
      sub_1BAC19140();
      sub_1BAC195B8();
      v72();
      v73 = sub_1BAC383D4();
      v74 = sub_1BAC38774();
      if (os_log_type_enabled(v73, v74))
      {
        swift_slowAlloc();
        v75 = sub_1BAC1AD2C();
        *&v182 = v75;
        *v53 = 136446210;
        v76 = sub_1BAC1AF50(AssociatedConformanceWitness);
        v78 = v77(v76);
        v80 = v71;
        v81 = sub_1BAC1914C(v78, v79, &v182);

        *(v53 + 4) = v81;
        _os_log_impl(&dword_1BAC16000, v73, v74, "%{public}s Delegate: Failed global enablement check. Rejecting connection.", v53, 0xCu);
        sub_1BAC1905C(v75);
        sub_1BAC1ADA8();
        sub_1BAC1ADA8();

        v82 = v80;
      }

      else
      {

        v82 = v71;
      }

      v50(v82, v52);
      return 0;
    }
  }

  if (sub_1BAC23650())
  {
    v57 = sub_1BAC1AF50(AssociatedConformanceWitness);
    v58(v57, AssociatedConformanceWitness);
    (*(AssociatedConformanceWitness + 32))(v32, AssociatedConformanceWitness);
    v60 = v59;
    v161 = v50;
    v61 = v52;
    v62 = v164;
    sub_1BAC195B8();
    v63();
    sub_1BAC1ADC0();
    v54 = v172;
    v67 = sub_1BAC1AF64(v64, v65, v66, v60);

    v55 = v173;

    v68 = v62;
    v52 = v61;
    v50 = v161;
    v161(v68, v52);
    if ((v67 & 1) == 0)
    {
      return 0;
    }
  }

  v153 = v18;
  v164 = AssociatedConformanceWitness;
  v69 = static XPCService.xpcInterface()();
  [v55 setExportedInterface_];

  v70 = swift_getAssociatedConformanceWitness();
  if ((*(v70 + 48))(v54, v70))
  {
    v186 = 0u;
    v187 = 0u;
  }

  else
  {
    v83 = sub_1BAC38614();
    v84 = [v55 valueForEntitlement_];

    if (v84)
    {
      sub_1BAC38874();
      swift_unknownObjectRelease();
    }

    else
    {
      v182 = 0u;
      v183 = 0u;
    }

    v186 = v182;
    v187 = v183;
  }

  sub_1BAC1B270(&v186, &aBlock);
  v85 = v171;
  if (v179)
  {
    if (swift_dynamicCast())
    {
      v161 = v174;
      v86 = v175;
      v87 = v159;
      sub_1BAC19140();
      v88 = v164;
      sub_1BAC195B8();
      v89();

      v90 = v86;
      v91 = sub_1BAC383D4();
      v92 = sub_1BAC38774();

      v93 = os_log_type_enabled(v91, v92);
      v160 = v90;
      if (v93)
      {
        v94 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        aBlock = v152;
        *v94 = 136446466;
        v95 = *(v88 + 24);
        v96 = v90;
        v97 = sub_1BAC19140();
        v99 = v98(v97, v88);
        v101 = sub_1BAC1914C(v99, v100, &aBlock);

        *(v94 + 4) = v101;
        *(v94 + 12) = 2082;
        *(v94 + 14) = sub_1BAC1914C(v161, v96, &aBlock);
        _os_log_impl(&dword_1BAC16000, v91, v92, "%{public}s Delegate: clientApplicationIdentifier: %{public}s", v94, 0x16u);
        swift_arrayDestroy();
        sub_1BAC1ADA8();
        sub_1BAC1ADA8();

        sub_1BAC1904C();
        v102 = v159;
      }

      else
      {

        sub_1BAC1904C();
        v102 = v87;
      }

      v52 = v168;
      v50(v102, v168);
      v118 = *((*MEMORY[0x1E69E7D40] & *v85) + 0x60);
      v54 = v172;
      v119 = swift_getAssociatedTypeWitness();
      v184 = v119;
      sub_1BAC1AED8();
      v185 = swift_getAssociatedConformanceWitness();
      sub_1BAC1DAD4(&v183);
      sub_1BAC1DAC8(v119);
      (*(v120 + 16))();
      *&v182 = v161;
      *(&v182 + 1) = v160;
      goto LABEL_30;
    }
  }

  else
  {
    sub_1BAC38094(&aBlock);
  }

  if (sub_1BAC37618())
  {
    v103 = v160;
    sub_1BAC19140();
    v104 = v164;
    sub_1BAC195B8();
    v105();
    v106 = sub_1BAC383D4();
    v107 = sub_1BAC38754();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v108 = 136446466;
      v109 = sub_1BAC1AF50(v104);
      v111 = v110(v109, v104);
      v113 = sub_1BAC1914C(v111, v112, &aBlock);

      *(v108 + 4) = v113;
      *(v108 + 12) = 2082;
      *(v108 + 14) = sub_1BAC1914C(0xD000000000000016, 0x80000001BAC3B5F0, &aBlock);
      _os_log_impl(&dword_1BAC16000, v106, v107, "%{public}s Delegate: Client is missing '%{public}s' entitlement. This entitlement is required. Rejecting connection.", v108, 0x16u);
      swift_arrayDestroy();
      sub_1BAC1ADA8();
      sub_1BAC1ADA8();

      sub_1BAC1904C();
      v114 = v160;
    }

    else
    {

      sub_1BAC1904C();
      v114 = v103;
    }

    v50(v114, v52);
    sub_1BAC38094(&v186);
    return 0;
  }

  v115 = *((*MEMORY[0x1E69E7D40] & *v85) + 0x60);
  v116 = swift_getAssociatedTypeWitness();
  v184 = v116;
  sub_1BAC1AED8();
  v185 = swift_getAssociatedConformanceWitness();
  sub_1BAC1DAD4(&v183);
  sub_1BAC1DAC8(v116);
  (*(v117 + 16))();
  v182 = 0uLL;
LABEL_30:
  sub_1BAC23718(&v182, &aBlock);
  v121 = *(v70 + 24);
  v122 = v173;
  v123 = v162;
  v121(&aBlock, v122, v54, v70);
  if (sub_1BAC1DA1C(v123, 1, v54) == 1)
  {
    (*(v154 + 8))(v123, v155);
    v124 = v156;
    sub_1BAC19140();
    v125 = v164;
    sub_1BAC195B8();
    v126();
    v127 = sub_1BAC383D4();
    v128 = sub_1BAC38754();
    if (os_log_type_enabled(v127, v128))
    {
      swift_slowAlloc();
      v129 = sub_1BAC1AD2C();
      aBlock = v129;
      *v123 = 136446210;
      v130 = sub_1BAC1AF50(v125);
      v132 = v131(v130, v125);
      v134 = sub_1BAC1914C(v132, v133, &aBlock);

      *(v123 + 4) = v134;
      _os_log_impl(&dword_1BAC16000, v127, v128, "%{public}s Delegate: connection rejected by server instance.", v123, 0xCu);
      sub_1BAC1905C(v129);
      sub_1BAC1ADA8();
      sub_1BAC1ADA8();
    }

    sub_1BAC1904C();
    v50(v124, v52);
    sub_1BAC38094(&v186);
    sub_1BAC380FC(&v182);
    return 0;
  }

  v136 = v123;
  v137 = v54;
  v138 = v158;
  v139 = *(v158 + 32);
  v140 = v165;
  v139(v165, v136, v54);
  v141 = v139;
  v172 = v139;
  v173 = *(v138 + 16);
  v142 = v157;
  (v173)(v157, v140, v54);
  v143 = (*(v138 + 80) + 32) & ~*(v138 + 80);
  v144 = sub_1BAC18CA4();
  v145 = sub_1BAC19458(v144);
  v141(v145);
  v180 = sub_1BAC3812C;
  v181 = v140;
  aBlock = MEMORY[0x1E69E9820];
  v177 = 1107296256;
  v178 = sub_1BAC1C330;
  v179 = &unk_1F38CA2C0;
  v146 = _Block_copy(&aBlock);

  [v122 setInterruptionHandler_];
  _Block_release(v146);
  (v173)(v142, v165, v54);
  v147 = sub_1BAC18CA4();
  v148 = sub_1BAC19458(v147);
  v172(v148);
  v180 = sub_1BAC381D8;
  v181 = v146;
  aBlock = MEMORY[0x1E69E9820];
  v177 = 1107296256;
  v178 = sub_1BAC1C330;
  v179 = &unk_1F38CA310;
  v149 = _Block_copy(&aBlock);

  [v122 setInvalidationHandler_];
  _Block_release(v149);
  v150 = v165;
  [v122 setExportedObject_];
  swift_unknownObjectRelease();
  [v122 activate];
  (*(v138 + 8))(v150, v137);
  sub_1BAC38094(&v186);
  sub_1BAC380FC(&v182);
  return 1;
}

uint64_t ConcurrentLRUCache.__deallocating_deinit()
{
  ConcurrentLRUCache.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t ConcurrentLRUCache.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t XPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *v4;
  return sub_1BAC17898(sub_1BAC22FF0);
}

uint64_t sub_1BAC22FF0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v2 + 16);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = type metadata accessor for XPCServiceClientConnection.State();
  v9 = sub_1BAC17C74();
  sub_1BAC17E04(sub_1BAC2318C, v5, v4, v8, v9);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v20 = *(v0 + 32);

  v12 = *(v0 + 16);
  *(v0 + 72) = v12;
  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  *(v13 + 32) = v20;
  *(v13 + 48) = v10;
  v14 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  sub_1BAC353C4();
  *(v0 + 88) = v15;
  *v15 = v16;
  v15[1] = sub_1BAC32658;
  v17 = *(v0 + 48);
  v18 = *(v0 + 24);
  sub_1BAC1AC40();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1BAC231BC(uint64_t a1, void *a2, void (*a3)(id, void (*)(), char *), uint64_t a4, void *a5, uint64_t a6)
{
  v34 = a4;
  v35 = a3;
  v32 = a1;
  v33 = a2;
  v9 = *a5;
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  v29 = a6;
  v10 = sub_1BAC386F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v31 = *(v11 + 16);
  v31(&v26 - v13, a1, v10);
  v15 = *(v11 + 80);
  v27 = ((v15 + 40) & ~v15) + v12;
  v16 = (v15 + 40) & ~v15;
  v17 = swift_allocObject();
  v30 = a5;
  v28 = *(v9 + 80);
  *(v17 + 2) = v28;
  *(v17 + 3) = a6;
  v18 = *(v9 + 88);
  *(v17 + 4) = v18;
  v19 = *(v11 + 32);
  v19(&v17[v16], v14, v10);
  aBlock[4] = sub_1BAC35160;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAC3232C;
  aBlock[3] = &unk_1F38C9C80;
  v20 = _Block_copy(aBlock);

  v21 = [v33 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v31(v14, v32, v10);
  v22 = (v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v29;
  *(v23 + 2) = v28;
  *(v23 + 3) = v24;
  *(v23 + 4) = v18;
  v19(&v23[v16], v14, v10);
  *&v23[v22] = v30;
  swift_unknownObjectRetain();

  v35(v21, sub_1BAC35218, v23);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1BAC234A4()
{
  v1 = *(v0 + 24);
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC17634();
  v2 = sub_1BAC386F4();
  sub_1BAC19294(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1BAC23544()
{
  v2 = *(v0 + 24);
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC17634();
  v3 = sub_1BAC386F4();
  sub_1BAC19294(v3);
  v5 = *(v4 + 8);
  v4 += 8;
  v6 = *(v4 + 72);
  v7 = *(v4 + 56);
  v8 = sub_1BAC1D278();
  v9(v8);
  v10 = *(v0 + v1);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v6 | 7);
}

uint64_t sub_1BAC235F0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1BAC21E48(v8, v7);

  return v9 & 1;
}

uint64_t sub_1BAC23650()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = sub_1BAC1ACDC();
  sub_1BAC1AED8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = sub_1BAC1AC7C(AssociatedConformanceWitness);
  if (v6(v5))
  {
    return 0;
  }

  else
  {
    return (*(v1 + 40))(v3, v1) & 1;
  }
}

void sub_1BAC23750(uint64_t a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_1BAC23760(a1, a2, v2[5], v2[6]);
}

void sub_1BAC23760(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BAC38864();
  v8 = swift_projectBox();
  swift_beginAccess();
  (*(*(v7 - 8) + 24))(v8, a1, v7);
  swift_beginAccess();
  v9 = *(a4 + 16);
  *(a4 + 16) = a2;
  v10 = a2;
}

void XPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BAC194C0();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v89 = v28;
  v90 = v27;
  v30 = v29;
  v31 = *v24;
  v92 = sub_1BAC38864();
  sub_1BAC184D0(v92);
  v33 = v32;
  v35 = *(v34 + 64);
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v83 - v37;
  v39 = v24[2];
  v91 = v26;
  v93[2] = v26;
  v93[3] = v24;
  v40 = *(v31 + 80);
  v41 = *(v31 + 88);
  sub_1BAC17634();
  v42 = type metadata accessor for XPCServiceClientConnection.State();
  v43 = sub_1BAC17C74();
  sub_1BAC17E04(sub_1BAC2318C, v93, v39, v42, v43);
  if (!v21)
  {
    v84 = v33;
    v85 = v38;
    v83[0] = v30;
    v83[1] = 0;
    v44 = v94[0];
    sub_1BAC1AE98();
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    v86 = (v45 + 16);
    v46 = swift_allocObject();
    v47 = v91;
    v46[2] = v40;
    v46[3] = v47;
    v46[4] = v41;
    v46[5] = v45;
    sub_1BAC1940C(v46);
    v94[1] = 1107296256;
    sub_1BAC19598();
    v94[2] = v48;
    v94[3] = &unk_1F38C96C0;
    v49 = _Block_copy(v94);
    v87 = v45;

    v88 = v44;
    v50 = [v44 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v49);
    v51 = swift_allocBox();
    sub_1BAC195CC(v52, v52, &a13);
    sub_1BAC1AE98();
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    v54 = (v53 + 16);
    v55 = swift_allocObject();
    v55[2] = v40;
    v55[3] = v47;
    v55[4] = v41;
    v55[5] = v51;
    v56 = v53;
    v57 = v51;
    v55[6] = v56;
    swift_unknownObjectRetain();

    v90(v50, sub_1BAC23750, v55);

    v58 = v86;
    sub_1BAC19504();
    v59 = *v58;
    if (v59)
    {
      swift_willThrow();
      v60 = v59;

      sub_1BAC179D0();
LABEL_18:
      swift_unknownObjectRelease_n();

      goto LABEL_19;
    }

    v90 = v50;
    v61 = v88;
    v62 = v83[2];
    sub_1BAC19504();
    v63 = v84;
    v64 = v85;
    (*(v84 + 16))(v85, v62, v92);
    if (sub_1BAC1DA1C(v64, 1, v47) == 1)
    {
      (*(v63 + 8))(v64, v92);
      sub_1BAC19504();
      v65 = *v54;
      if (*v54)
      {
        v66 = v65;
        v67 = sub_1BAC382E4();
        v68 = NSError.pds_unlaunderSimpleNSError()();

        swift_willThrow();
        if (v68)
        {
        }

        sub_1BAC179D0();
      }

      else
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v91 = v57;
          v92 = v56;
          v69 = v24[5];
          swift_getObjectType();
          sub_1BAC20C40();
          v86 = v70;
          sub_1BAC19124();
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v89 = v83;
          sub_1BAC184D0(AssociatedTypeWitness);
          v73 = v72;
          v75 = *(v74 + 64);
          sub_1BAC18C48();
          MEMORY[0x1EEE9AC00](v76);
          sub_1BAC18D70();
          swift_unknownObjectRetain();
          v77 = sub_1BAC1AF2C();
          (v86)(v77);
          sub_1BAC18DB8();
          swift_getAssociatedConformanceWitness();
          if (sub_1BAC38A34())
          {
            (*(v73 + 8))(v57, AssociatedTypeWitness);
          }

          else
          {
            v79 = sub_1BAC3538C();
            v81 = sub_1BAC1AD10(v79, v80);
            v82(v81);
          }

          sub_1BAC353DC();
        }

        else
        {
          sub_1BAC32604();
          sub_1BAC3538C();
          *v78 = 2;
        }

        swift_willThrow();
      }

      goto LABEL_18;
    }

    swift_unknownObjectRelease_n();
    (*(*(v47 - 8) + 32))(v83[0], v64, v47);
    sub_1BAC179D0();
  }

LABEL_19:
  sub_1BAC35364();
}

uint64_t sub_1BAC23E6C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1BAC23EB0()
{
  v2 = *(v0 - 280);
}

uint64_t sub_1BAC23EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BAC38394();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1BAC1DA1C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 44));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BAC23F74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BAC38394();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1BAC1926C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BAC24118()
{
  v1 = *(v0 + 24);

  v2 = sub_1BAC190C4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BAC24148()
{
  v1 = sub_1BAC383E4();
  sub_1BAC19294(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BAC24358(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BAC243A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAC24414@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = sub_1BAC38394();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  v8 = v6[10];
  v9 = v6[11];
  v10 = v6[12];
  result = type metadata accessor for ConcurrentLRUCache.Entry();
  *(a3 + *(result + 44)) = a2;
  return result;
}

uint64_t sub_1BAC244D0()
{
  v0 = swift_allocObject();
  sub_1BAC24508();
  return v0;
}

void *sub_1BAC24508()
{
  v1 = *(*v0 + 88);
  v2 = sub_1BAC38864();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1BAC1926C(&v7 - v4, 1, 1, v1);
  v0[2] = sub_1BAC17788(v5, v2);
  return v0;
}

uint64_t sub_1BAC245B8()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1BAC245D8()
{
  sub_1BAC245B8();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t ConcurrentLRUCache.__allocating_init(cacheSize:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ConcurrentLRUCache.init(cacheSize:)(a1);
  return v2;
}

uint64_t ConcurrentLRUCache.getKey(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[3];
  sub_1BAC184B4();
  v6 = *(v5 + 80);
  v20 = v6;
  sub_1BAC184B4();
  v8 = *(v7 + 88);
  v21 = v8;
  sub_1BAC184B4();
  v10 = *(v9 + 96);
  v22 = v10;
  v23 = v11;
  sub_1BAC194F0();
  type metadata accessor for ConcurrentLRUCache.Entry();
  v12 = sub_1BAC38594();
  sub_1BAC194F0();
  type metadata accessor for ConcurrentLRUCache.ValueHolder();
  v13 = sub_1BAC38864();
  sub_1BAC17E04(sub_1BAC259A4, v19, v4, v12, v13);
  if (!v24)
  {
    return sub_1BAC1926C(a1, 1, 1, v8);
  }

  v15 = *(v24 + 16);
  MEMORY[0x1EEE9AC00](v14);
  v18[2] = v6;
  v18[3] = v8;
  v18[4] = v10;
  v16 = sub_1BAC38864();

  sub_1BAC17E04(sub_1BAC259DC, v18, v15, v16, v16);
}

uint64_t sub_1BAC247E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v40 = a5;
  v9 = type metadata accessor for ConcurrentLRUCache.Entry();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v37 = *(a3 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BAC38394();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = MEMORY[0x1EEE9AC00](v16);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  if (!*(*a1 + 16) || (v36 = result, result = sub_1BAC25C94(a2, a3, a4), (v23 & 1) == 0))
  {
    v32 = 0;
    goto LABEL_11;
  }

  v24 = result;
  v35 = *(v22 + 36);
  sub_1BAC38384();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    v41 = v22;
    sub_1BAC389A4();
    result = sub_1BAC38984();
    v22 = v41;
  }

  v25 = v17;
  if (v24 < 0 || v24 >= 1 << *(v22 + 32))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (((*(v22 + 8 * (v24 >> 6) + 64) >> v24) & 1) == 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v35 == *(v22 + 36))
  {
    v26 = *(v22 + 56);
    v27 = a1;
    v28 = v37;
    v34 = a4;
    v29 = v9;
    v30 = v39;
    (*(v25 + 40))(v26 + *(v39 + 72) * v24, v21, v36);
    *v27 = v22;
    v31 = v38;
    sub_1BAC385B4();
    (*(v28 + 8))(v31, a3);
    v32 = *&v13[*(v29 + 44)];
    v33 = *(v30 + 8);

    result = v33(v13, v29);
LABEL_11:
    *v40 = v32;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t ConcurrentLRUCache.setKey(_:to:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[3];
  v19 = a1;
  sub_1BAC184B4();
  v7 = *(v6 + 80);
  sub_1BAC184B4();
  v9 = *(v8 + 88);
  sub_1BAC184B4();
  v11 = *(v10 + 96);
  type metadata accessor for ConcurrentLRUCache.Entry();
  v12 = sub_1BAC38594();
  v13 = type metadata accessor for ConcurrentLRUCache.ValueHolder();
  sub_1BAC17E04(sub_1BAC259FC, v18, v5, v12, v13);
  v14 = *(v20 + 16);
  v17[2] = v7;
  v17[3] = v9;
  v17[4] = v11;
  v17[5] = a2;
  v15 = sub_1BAC38864();

  sub_1BAC17E04(sub_1BAC25A18, v17, v14, v15, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1BAC24CD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v77 = a2;
  v75 = a4;
  v6 = *(*a3 + 80);
  v7 = *(*a3 + 96);
  v76 = *(*a3 + 88);
  v8 = type metadata accessor for ConcurrentLRUCache.Entry();
  v9 = sub_1BAC38864();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v70 = &v62 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_1BAC38864();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v66 = &v62 - v16;
  v67 = TupleTypeMetadata2;
  v65 = *(TupleTypeMetadata2 - 8);
  v17 = *(v65 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v68 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v64 = &v62 - v21;
  v74 = *(v8 - 8);
  v22 = *(v74 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v73 = &v62 - v24;
  v71 = *(v6 - 8);
  v25 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v72 = &v62 - v26;
  v27 = sub_1BAC38394();
  v63 = *(v27 - 8);
  v28 = *(v63 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v69 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v62 - v31;
  v78 = a1;
  v33 = *a1;
  if (*(*a1 + 16))
  {
    v34 = *a1;
    v35 = sub_1BAC25C94(v77, v6, v7);
    if (v36)
    {
      v37 = v35;
      v38 = *(v33 + 36);
      sub_1BAC38384();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v80 = v33;
        sub_1BAC389A4();
        result = sub_1BAC38984();
        v33 = v80;
      }

      if (v37 < 0 || v37 >= 1 << *(v33 + 32))
      {
        __break(1u);
      }

      else if ((*(v33 + 8 * (v37 >> 6) + 64) >> v37))
      {
        if (v38 == *(v33 + 36))
        {
          v40 = v74;
          (*(v63 + 40))(*(v33 + 56) + *(v74 + 72) * v37, v32, v27);
          *v78 = v33;
          v61 = v7;
          v42 = v72;
          v41 = v73;
          v43 = v40;
          sub_1BAC385B4();
          (*(v71 + 8))(v42, v6);
LABEL_15:
          v59 = *(v41 + *(v8 + 44));
          v60 = *(v43 + 8);

          result = v60(v41, v8);
          *v75 = v59;
          return result;
        }

        goto LABEL_18;
      }

      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  v44 = sub_1BAC38574();
  v45 = v6;
  if (a3[2] >= v44)
  {
    v43 = v74;
    v55 = v6;
    v56 = v70;
    v52 = v71;
    goto LABEL_14;
  }

  v80 = v33;
  MEMORY[0x1EEE9AC00](v44);
  v46 = v76;
  *(&v62 - 4) = v6;
  *(&v62 - 3) = v46;
  v61 = v7;
  v63 = v7;
  v47 = sub_1BAC38594();

  swift_getWitnessTable();
  v48 = v66;
  v62 = v47;
  v49 = v79;
  sub_1BAC38694();
  v79 = v49;

  v50 = v67;
  result = sub_1BAC1DA1C(v48, 1, v67);
  if (result != 1)
  {
    v51 = *(v50 + 48);
    v52 = v71;
    v53 = v64;
    (*(v71 + 32))(v64, v48, v45);
    v43 = v74;
    (*(v74 + 32))(&v53[v51], v48 + v51, v8);
    v54 = v65;
    (*(v65 + 16))(v68, v53, v50);
    v66 = *(v50 + 48);
    v55 = v45;
    v56 = v70;
    sub_1BAC1926C(v70, 1, 1, v8);
    sub_1BAC385A4();
    (*(v54 + 8))(v53, v50);
    (*(v43 + 8))(&v68[v66], v8);
LABEL_14:
    v57 = v69;
    sub_1BAC38384();
    type metadata accessor for ConcurrentLRUCache.ValueHolder();
    v58 = sub_1BAC244D0();
    v41 = v73;
    sub_1BAC24414(v57, v58, v73);
    (*(v52 + 16))(v72, v77, v55);
    (*(v43 + 16))(v56, v41, v8);
    sub_1BAC1926C(v56, 0, 1, v8);
    sub_1BAC38594();
    sub_1BAC385A4();
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1BAC25460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v36 = a3;
  v38 = sub_1BAC38394();
  v34 = *(v38 - 8);
  v4 = v34;
  v5 = *(v34 + 64);
  v6 = MEMORY[0x1EEE9AC00](v38);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v33 = &v31 - v8;
  v10 = type metadata accessor for ConcurrentLRUCache.Entry();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v32 = *(v12 + 16);
  v32(&v31 - v17, a1, TupleTypeMetadata2);
  v19 = *(TupleTypeMetadata2 + 48);
  v20 = *(v4 + 16);
  v20(v9, &v18[v19], v38);
  v31 = v10;
  v21 = *(*(v10 - 8) + 8);
  v21(&v18[v19], v10);
  v32(v16, v37, TupleTypeMetadata2);
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = v35;
  v24 = v38;
  v20(v35, &v16[v22], v38);
  v21(&v16[v22], v31);
  v25 = v33;
  v26 = v23;
  LOBYTE(v23) = sub_1BAC38374();
  v27 = *(v34 + 8);
  v27(v26, v24);
  v27(v25, v24);
  v28 = v36;
  v29 = *(*(v36 - 8) + 8);
  v29(v16, v36);
  v29(v18, v28);
  return v23 & 1;
}

uint64_t sub_1BAC25784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BAC38864();
  (*(*(v7 - 8) + 8))(a1, v7);
  (*(*(a4 - 8) + 16))(a1, a2, a4);
  return sub_1BAC1926C(a1, 0, 1, a4);
}

Swift::Void __swiftcall ConcurrentLRUCache.clear()()
{
  v1 = *v0;
  v2 = v0[3];
  sub_1BAC184B4();
  v7[2] = *(v3 + 80);
  sub_1BAC184B4();
  v7[3] = *(v4 + 88);
  sub_1BAC184B4();
  v7[4] = *(v5 + 96);
  type metadata accessor for ConcurrentLRUCache.Entry();
  v6 = sub_1BAC38594();
  sub_1BAC17E04(sub_1BAC25A38, v7, v2, v6, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1BAC25908(uint64_t *a1)
{
  v2 = *a1;

  type metadata accessor for ConcurrentLRUCache.Entry();
  swift_getTupleTypeMetadata2();
  sub_1BAC386A4();
  result = sub_1BAC38564();
  *a1 = result;
  return result;
}

uint64_t sub_1BAC259DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1BAC24B10(a1, a2);
}

uint64_t sub_1BAC25A38(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1BAC25908(a1);
}

uint64_t sub_1BAC25B38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAC25B58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MachIdentityTokenError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MachIdentityTokenError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1BAC25BE0(void *a1)
{
  result = sub_1BAC38394();
  if (v3 <= 0x3F)
  {
    v4 = a1[2];
    v5 = a1[3];
    v6 = a1[4];
    result = type metadata accessor for ConcurrentLRUCache.ValueHolder();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BAC25C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1BAC385C4();

  return sub_1BAC25D14(a1, v9, a2, a3);
}

uint64_t sub_1BAC25CF0(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1BAC25460(a1, a2, v2[2]) & 1;
}

unint64_t sub_1BAC25D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v17 = a4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v4;
  v19 = v4 + 64;
  v10 = ~(-1 << *(v4 + 32));
  for (i = v11 & v10; ((1 << i) & *(v19 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    (*(v6 + 16))(v9, *(v18 + 48) + *(v6 + 72) * i, a3);
    v13 = *(v17 + 8);
    v14 = sub_1BAC385F4();
    (*(v6 + 8))(v9, a3);
    if (v14)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1BAC25E88(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(v1 + 80) - 8) + 32))(v5 + *(*v5 + 88), a1);
  return v5;
}

uint64_t CopyOnWriteBox._Box.__deallocating_deinit()
{
  CopyOnWriteBox._Box.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1BAC25FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + 88);
  swift_beginAccess();
  return (*(*(a2 - 8) + 16))(a3, a1 + v6, a2);
}

uint64_t sub_1BAC2606C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  v7 = *(**a1 + 88);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t sub_1BAC26104(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - v8;
  (*(v6 + 16))(&v18 - v8);
  v10 = type metadata accessor for CopyOnWriteBox._Box();
  if (sub_1BAC38A44())
  {
    v11 = *a2;
    v12 = *(*v11 + 88);
    swift_beginAccess();
    (*(v6 + 40))(v11 + v12, v9, v5);
    return swift_endAccess();
  }

  else
  {
    v14 = *(v10 + 48);
    v15 = *(v10 + 52);
    v16 = swift_allocObject();
    (*(v6 + 32))(v16 + *(*v16 + 88), v9, v5);
    v17 = *a2;

    *a2 = v16;
  }

  return result;
}

uint64_t static CopyOnWriteBox<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BAC184C0();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v23[-v15];
  v17 = *(*v14 + 88);
  sub_1BAC19504();
  v18 = *(v7 + 16);
  v18(v16, a1 + v17, a3);
  v19 = *(*a2 + 88);
  sub_1BAC19504();
  v18(v13, a2 + v19, a3);
  v20 = sub_1BAC385F4();
  v21 = *(v7 + 8);
  v21(v13, a3);
  v21(v16, a3);
  return v20 & 1;
}

uint64_t sub_1BAC26428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v22[-v12];
  v14 = *v11;
  v16 = *v15;
  v17 = *(**v11 + 88);
  swift_beginAccess();
  v18 = v6[2];
  v18(v13, v14 + v17, v5);
  v19 = *(*v16 + 88);
  swift_beginAccess();
  v18(v10, v16 + v19, v5);
  LOBYTE(v4) = sub_1BAC385F4();
  v20 = v6[1];
  v20(v10, v5);
  v20(v13, v5);
  return v4 & 1;
}

uint64_t CopyOnWriteBox<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BAC184C0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v12 + 88);
  sub_1BAC19504();
  (*(v6 + 16))(v11, a2 + v13, a3);
  sub_1BAC385D4();
  return (*(v6 + 8))(v11, a3);
}

uint64_t CopyOnWriteBox<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1BAC184C0();
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v9 + 88);
  sub_1BAC19504();
  (*(v5 + 16))(v11, a1 + v12, a2);
  v13 = sub_1BAC385E4();
  (*(v5 + 8))(v11, a2);
  return v13;
}

uint64_t sub_1BAC26850(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = *(*v9 + 88);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9 + v10, v4);
  v11 = sub_1BAC385E4();
  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t sub_1BAC26974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = *(*v10 + 88);
  swift_beginAccess();
  (*(v6 + 16))(v9, v10 + v11, v5);
  sub_1BAC385D4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BAC26AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BAC38B24();
  v10 = *v3;
  v11 = *(*v10 + 88);
  swift_beginAccess();
  (*(v6 + 16))(v9, v10 + v11, v5);
  sub_1BAC385D4();
  (*(v6 + 8))(v9, v5);
  return sub_1BAC38B64();
}

uint64_t sub_1BAC26BD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BAC26C24(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAC26CFC(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x1BFAFEBD0);
  }

  return 0;
}

uint64_t sub_1BAC26D58()
{
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](*v0);
  sub_1BAC388B4();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC26DB4()
{
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](*v0);
  sub_1BAC388B4();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC26E08()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1BAC26E40()
{
  swift_unknownObjectWeakInit();
  sub_1BAC26FB4(&qword_1EBC25790, &unk_1BAC39B80);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  sub_1BAC28D88(v3, v1 + 16);
  sub_1BAC28DC0(v3);
  *(v0 + 16) = v1;
  return v0;
}

double ReferenceCountedCache.init()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ReferenceCountedCache.WeakHolder();
  sub_1BAC26F60();
  v2 = sub_1BAC38564();
  sub_1BAC26FB4(&qword_1EBC25760, &unk_1BAC39900);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *a1 = v3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

unint64_t sub_1BAC26F60()
{
  result = qword_1EBC254C8;
  if (!qword_1EBC254C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC254C8);
  }

  return result;
}

uint64_t sub_1BAC26FB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t ReferenceCountedCache.init(callbacks:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ReferenceCountedCache.WeakHolder();
  sub_1BAC26F60();
  v4 = sub_1BAC38564();
  sub_1BAC26FB4(&qword_1EBC25760, &unk_1BAC39900);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *a2 = v5;

  return sub_1BAC27098(a1, (a2 + 1));
}

uint64_t sub_1BAC27098(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BAC270B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[8] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BAC271A0, 0, 0);
}

uint64_t sub_1BAC271A0()
{
  v1 = v0[5];
  (*(v0[7] + 64))(v0[11], v0[6]);
  v3 = v0[10];
  v2 = v0[11];
  sub_1BAC2733C(v0[2], v0[3], v0[4], v0[6], v0[7]);

  sub_1BAC194D8();

  return v4();
}

uint64_t sub_1BAC2733C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BAC1BE14(a1, v12, &qword_1EBC25770, &unk_1BAC39910);
  v9 = v13;
  if (!v13)
  {
    return sub_1BAC1C8B0(v12, &qword_1EBC25770, &unk_1BAC39910);
  }

  v10 = v14;
  sub_1BAC1C910(v12, v13);
  (*(v10 + 48))(a2, a3, a4, a5, v9, v10);
  return sub_1BAC1905C(v12);
}

uint64_t sub_1BAC27408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40) - 8) + 64);
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  sub_1BAC1BE14(a3, v23 - v10, &qword_1EBC25768, &qword_1BAC39D40);
  v12 = sub_1BAC38724();
  v13 = sub_1BAC1DA1C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1BAC1C8B0(v11, &qword_1EBC25768, &qword_1BAC39D40);
  }

  else
  {
    sub_1BAC38714();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BAC386C4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BAC38634() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = sub_1BAC1AC94();

      sub_1BAC1C8B0(a3, &qword_1EBC25768, &qword_1BAC39D40);

      return v21;
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

  sub_1BAC1C8B0(a3, &qword_1EBC25768, &qword_1BAC39D40);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return sub_1BAC1AC94();
}

uint64_t sub_1BAC27674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v15;
  *(v8 + 152) = v16;
  *(v8 + 128) = v14;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  v9 = sub_1BAC38944();
  *(v8 + 160) = v9;
  v10 = *(v9 - 8);
  *(v8 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BAC27750, 0, 0);
}

uint64_t sub_1BAC27750()
{
  sub_1BAC1BE14(v0[11], (v0 + 2), &qword_1EBC25770, &unk_1BAC39910);
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[18];
    v2 = v0[19];
    v5 = v0[14];
    v4 = v0[15];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[6];
    sub_1BAC1C910(v0 + 2, v0[5]);
    v9 = (*(v8 + 56))(v7, v6, v5, v4, v3, v2, v1, v8);
    v11 = v10;
    sub_1BAC1905C(v0 + 2);
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1BAC1C8B0((v0 + 2), &qword_1EBC25770, &unk_1BAC39910);
  }

  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[12];
  sub_1BAC388D4();

  v15 = sub_1BAC38C04();
  MEMORY[0x1BFAFE990](v15);

  MEMORY[0x1BFAFE990](0x20726F6620, 0xE500000000000000);
  v16 = sub_1BAC38BB4();
  MEMORY[0x1BFAFE990](v16);

  v9 = 0xD000000000000011;
  v11 = 0x80000001BAC3B000;
LABEL_6:
  v17 = v0[22];
  v18 = v0[16];
  type metadata accessor for CancellableOSTransaction();
  v0[23] = swift_initStackObject();

  v0[24] = CancellableOSTransaction.init(_:onSIGTERM:)(v9, v11, sub_1BAC28D38, v18);
  sub_1BAC38AD4();
  v19 = swift_task_alloc();
  v0[25] = v19;
  *v19 = v0;
  v19[1] = sub_1BAC279D4;
  v20 = v0[22];
  v22 = v0[14];
  v21 = v0[15];

  return sub_1BAC283A4(v22, v21, 0, 0, 1);
}

uint64_t sub_1BAC279D4()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *v1;
  sub_1BAC184E4();
  *v7 = v6;
  *(v8 + 208) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_1BAC27BC0;
  }

  else
  {
    v9 = sub_1BAC27B3C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1BAC27B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BAC18F88(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_1BAC193D0();

  sub_1BAC194D8();
  sub_1BAC1787C();

  __asm { BRAA            X1, X16 }
}

void sub_1BAC27BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BAC18F88(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_1BAC193D0();

  sub_1BAC194D8();
  v9 = *(v8 + 208);
  sub_1BAC1787C();

  __asm { BRAA            X1, X16 }
}

void sub_1BAC27C44(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 48));
  sub_1BAC1C8B0(a1 + 16, &unk_1EBC257D0, &qword_1BAC3A350);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  os_unfair_lock_unlock((a1 + 48));
  *a2 = 0;
}

uint64_t sub_1BAC27C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1BAC1BE14(a1, v16, &qword_1EBC25770, &unk_1BAC39910);
  v13 = v17;
  if (!v17)
  {
    return sub_1BAC1C8B0(v16, &qword_1EBC25770, &unk_1BAC39910);
  }

  v14 = v18;
  sub_1BAC1C910(v16, v17);
  (*(v14 + 72))(a2, a3, a4, a5, a6, a7, v13, v14);
  return sub_1BAC1905C(v16);
}

uint64_t sub_1BAC27DEC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  sub_1BAC1DAA4();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = v1[2];
  v18 = v1[3];
  v10 = v1[11];
  v11 = (v1 + v8);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v9);
  v15 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1BAC28DF0;

  return sub_1BAC27674(a1, v19, v18, (v1 + 6), v10, v1 + v7, v12, v13);
}

uint64_t sub_1BAC27F74()
{
  v2 = v0[4];
  v3 = v0[5];
  sub_1BAC1DAA4();
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[11];
  v8 = *(v0 + ((*(v4 + 64) + ((*(v4 + 80) + 96) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1BAC280C8;
  sub_1BAC1787C();

  return sub_1BAC270B0(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1BAC280C8()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1BAC184E4();
  *v3 = v2;

  sub_1BAC194D8();

  return v4();
}

Swift::Void __swiftcall ReferenceCountedCache.reset()()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_1BAC26FB4(&qword_1EBC25788, &qword_1BAC39950);
  sub_1BAC38584();

  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1BAC282CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1BAC283A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1BAC38934();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1BAC284A4, 0, 0);
}

uint64_t sub_1BAC284A4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1BAC38944();
  v7 = sub_1BAC28D40(&qword_1EBC25058, MEMORY[0x1E69E8820]);
  sub_1BAC38AB4();
  sub_1BAC28D40(&qword_1EBC25060, MEMORY[0x1E69E87E8]);
  sub_1BAC38954();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1BAC28634;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1BAC28634()
{
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 64);
  v2 = *v1;
  sub_1BAC184E4();
  *v8 = v2;
  v2[15] = v0;

  v5(v6, v7);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BAC287E4, 0, 0);
  }

  else
  {
    v10 = v2[10];
    v9 = v2[11];

    sub_1BAC194D8();

    return v11();
  }
}

uint64_t sub_1BAC287E4()
{
  v2 = v0[10];
  v1 = v0[11];

  sub_1BAC194D8();
  v4 = v0[15];

  return v3();
}

unint64_t sub_1BAC28850()
{
  result = qword_1EBC254D0;
  if (!qword_1EBC254D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC254D0);
  }

  return result;
}

uint64_t destroy for ReferenceCountedCache(uint64_t *a1)
{
  v2 = *a1;

  if (a1[4])
  {

    return sub_1BAC1905C(a1 + 1);
  }

  return result;
}

__n128 initializeWithTake for ReferenceCountedCache(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for ReferenceCountedCache(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  if (a1[4])
  {
    sub_1BAC1905C(a1 + 1);
  }

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  a1[5] = a2[5];
  return a1;
}

uint64_t getEnumTagSinglePayload for ReferenceCountedCache(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ReferenceCountedCache(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NullParameters(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for NullParameters(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BAC28BE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAC28C08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1BAC28C48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAC28C88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BAC28CE4()
{
  result = qword_1EBC254C0;
  if (!qword_1EBC254C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC254C0);
  }

  return result;
}

uint64_t sub_1BAC28D40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BAC28DF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1BAC28E54(uint64_t a1)
{
  result = sub_1BAC291CC();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAC28ECC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1BAC28FF0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_1BAC291CC()
{
  result = qword_1EBC25050;
  if (!qword_1EBC25050)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EBC25050);
  }

  return result;
}

uint64_t sub_1BAC29214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for WeakReference();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t sub_1BAC292CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t MainThreadParkingMode.hashValue.getter()
{
  v1 = *v0;
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](v1);
  return sub_1BAC38B64();
}

uint64_t sub_1BAC293F0()
{
  v1 = *v0;
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](v1);
  return sub_1BAC38B64();
}

void static Daemon.main()(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1BFAFEFA0]();
  sub_1BAC29508(v2, a1, a2);
  objc_autoreleasePoolPop(v5);
  (*(a2 + 48))(&v7, a1, a2);
  if (v7 == 1)
  {
    dispatch_main();
  }

  v6 = [objc_opt_self() mainRunLoop];
  [v6 run];
}

uint64_t sub_1BAC29508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BAC383E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAC2C25C(a2, a3);
  if ((*(a3 + 32))(a2, a3))
  {
    (*(a3 + 8))(a2, a3);
    sub_1BAC29978();
    (*(v6 + 8))(v9, v5);
  }

  (*(a3 + 56))(a2, a3);
  result = (*(a3 + 40))(a2, a3);
  if (result)
  {
    (*(a3 + 8))(a2, a3);
    sub_1BAC29A98(v9);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

unint64_t sub_1BAC296BC()
{
  result = qword_1EBC25798;
  if (!qword_1EBC25798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25798);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MainThreadParkingMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MainThreadParkingMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t CancellableOSTransaction.__allocating_init(_:onSIGTERM:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BAC190C4();
  v8 = swift_allocObject();
  CancellableOSTransaction.init(_:onSIGTERM:)(a1, a2, a3, a4);
  return v8;
}

void sub_1BAC29978()
{
  v0 = sub_1BAC383D4();
  v1 = sub_1BAC38774();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1BAC16000, v0, v1, "DaemonEventHandlers: Disabling standard SIGTERM handler", v2, 2u);
    MEMORY[0x1BFAFF600](v2, -1, -1);
  }

  v3 = sub_1BAC384B4();
  v4 = signal(15, v3);
  if (qword_1ED76BA40 != -1)
  {
    v4 = sub_1BAC18FBC();
  }

  v5 = qword_1ED76BB68;
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v5 + 7);
  sub_1BAC2B3E4(&v5[4]);
  os_unfair_lock_unlock(v5 + 7);
}

void sub_1BAC29A98(uint64_t a1)
{
  v2 = sub_1BAC383E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1BAC383D4();
  v6 = sub_1BAC38774();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BAC16000, v5, v6, "DaemonEventHandlers: registerLaunchEvents called: registering for com.apple.distnoted.matching", v7, 2u);
    MEMORY[0x1BFAFF600](v7, -1, -1);
  }

  sub_1BAC2B414(0, &qword_1EBC254B8, 0x1E69E9610);
  v8 = sub_1BAC387C4();
  (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  aBlock[4] = sub_1BAC2B454;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAC2A5A0;
  aBlock[3] = &unk_1F38C8F30;
  v11 = _Block_copy(aBlock);

  xpc_set_event_stream_handler("com.apple.distnoted.matching", v8, v11);
  _Block_release(v11);
}

uint64_t sub_1BAC29CD0()
{
  sub_1BAC26FB4(&unk_1EBC257C0, &unk_1BAC39EA0);
  result = swift_allocObject();
  *(result + 28) = 0;
  *(result + 16) = 0;
  *(result + 24) = -1;
  qword_1ED76BB68 = result;
  return result;
}

void sub_1BAC29D1C()
{
  v0 = MEMORY[0x1BFAFF7E0]();
  if (v0 == sub_1BAC384A4())
  {
    swift_getObjectType();
    sub_1BAC3025C(v26);
    if (v27)
    {
      sub_1BAC26FB4(&qword_1EBC258D0, &qword_1BAC39EB0);
      if (swift_dynamicCast())
      {
        sub_1BAC38494();
        v3 = sub_1BAC38604();
        if (v4)
        {
          sub_1BAC2D068(v3, v4, v24, v26);

          if (!v27)
          {

            sub_1BAC1E49C(v26, &unk_1EBC257D0, &qword_1BAC3A350);
LABEL_22:
            v15 = sub_1BAC383D4();
            v16 = sub_1BAC38754();
            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              *v17 = 0;
              v18 = "DaemonEventHandlers: Received distributed event with invalid name";
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          if (swift_dynamicCast())
          {
            sub_1BAC2D068(0x6F666E4972657355, 0xE800000000000000, v24, v26);

            if (v27)
            {
              if (swift_dynamicCast())
              {

                v5 = sub_1BAC383D4();
                v6 = sub_1BAC38774();

                if (os_log_type_enabled(v5, v6))
                {
                  v7 = swift_slowAlloc();
                  v8 = swift_slowAlloc();
                  v26[0] = v8;
                  *v7 = 136446466;
                  *(v7 + 4) = sub_1BAC1914C(v24, v25, v26);
                  *(v7 + 12) = 2080;
                  v9 = sub_1BAC38554();
                  v11 = sub_1BAC1914C(v9, v10, v26);

                  *(v7 + 14) = v11;
                  _os_log_impl(&dword_1BAC16000, v5, v6, "Posting notification %{public}s userInfo: %s", v7, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1BFAFF600](v8, -1, -1);
                  MEMORY[0x1BFAFF600](v7, -1, -1);
                }

                v12 = [objc_opt_self() defaultCenter];
                v13 = sub_1BAC38614();

                v14 = sub_1BAC2A2DC(v24);

                sub_1BAC2B4C4(v13, 0, v14, v12);
LABEL_31:

                return;
              }
            }

            else
            {
              sub_1BAC1E49C(v26, &unk_1EBC257D0, &qword_1BAC3A350);
            }

            v19 = sub_1BAC383D4();
            v20 = sub_1BAC38774();

            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              v26[0] = v22;
              *v21 = 136446210;
              *(v21 + 4) = sub_1BAC1914C(v24, v25, v26);
              _os_log_impl(&dword_1BAC16000, v19, v20, "Posting notification %{public}s", v21, 0xCu);
              sub_1BAC1905C(v22);
              MEMORY[0x1BFAFF600](v22, -1, -1);
              MEMORY[0x1BFAFF600](v21, -1, -1);
            }

            v12 = [objc_opt_self() defaultCenter];
            v13 = sub_1BAC38614();

            [v12 postNotificationName:v13 object:0];
            goto LABEL_31;
          }
        }

        goto LABEL_22;
      }
    }

    else
    {
      sub_1BAC1E49C(v26, &unk_1EBC257D0, &qword_1BAC3A350);
    }

    v15 = sub_1BAC383D4();
    v16 = sub_1BAC38754();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "DaemonEventHandlers: Found invalid dictionary in distributed event";
LABEL_24:
      _os_log_impl(&dword_1BAC16000, v15, v16, v18, v17, 2u);
      MEMORY[0x1BFAFF600](v17, -1, -1);
    }

LABEL_25:

    return;
  }

  oslog = sub_1BAC383D4();
  v1 = sub_1BAC38754();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1BAC16000, oslog, v1, "DaemonEventHandlers: Received distributed event with invalid type", v2, 2u);
    MEMORY[0x1BFAFF600](v2, -1, -1);
  }
}

uint64_t sub_1BAC2A2DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BAC26FB4(&qword_1EBC257E0, &qword_1BAC39EB8);
    v2 = sub_1BAC389D4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1BAC19210(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1BAC2B560(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1BAC2B560(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1BAC2B560(v32, v33);
    v15 = *(v2 + 40);
    result = sub_1BAC38894();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_1BAC2B560(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BAC2A5A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BAC2A600(uint64_t a1)
{
  v27 = sub_1BAC384D4();
  v25 = *(v27 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BAC384F4();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  if (v11 != 255)
  {
    if (v11)
    {
      return result;
    }

    v12 = *a1;
    v13 = sub_1BAC383D4();
    v14 = sub_1BAC38774();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v22 = v1;
      v16 = v15;
      *v15 = 0;
      _os_log_impl(&dword_1BAC16000, v13, v14, "DaemonEventHandlers: Upgrading existing SIGTERM DispatchSource", v15, 2u);
      MEMORY[0x1BFAFF600](v16, -1, -1);
    }

    swift_getObjectType();
    sub_1BAC38804();
    sub_1BAC2B400(v12, v11);
  }

  v17 = sub_1BAC383D4();
  v18 = sub_1BAC38774();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1BAC16000, v17, v18, "DaemonEventHandlers: Registering full SIGTERM DispatchSource", v19, 2u);
    MEMORY[0x1BFAFF600](v19, -1, -1);
  }

  sub_1BAC2B414(0, &qword_1ED76BA20, 0x1E69E9630);
  v20 = sub_1BAC387E4();
  swift_getObjectType();
  aBlock[4] = sub_1BAC2A968;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAC1C330;
  aBlock[3] = &unk_1F38C8EE0;
  v21 = _Block_copy(aBlock);
  sub_1BAC384E4();
  sub_1BAC2AA0C();
  sub_1BAC387F4();
  _Block_release(v21);
  (*(v25 + 8))(v5, v27);
  (*(v23 + 8))(v10, v24);
  result = sub_1BAC38814();
  *a1 = v20;
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_1BAC2A968()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_1ED76B808 != -1)
  {
    swift_once();
  }

  [v0 postNotificationName:qword_1ED76B810 object:0 userInfo:0];

  return MEMORY[0x1EEE75030]();
}

uint64_t sub_1BAC2AA0C()
{
  sub_1BAC384D4();
  sub_1BAC1DFE0(&qword_1ED76BA38, MEMORY[0x1E69E7F60]);
  sub_1BAC26FB4(&unk_1EBC257B0, &qword_1BAC39E98);
  sub_1BAC2B338();
  return sub_1BAC38884();
}

void sub_1BAC2AAC4()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_1ED76B808 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_1ED76B810 object:0 userInfo:0];
}

uint64_t CancellableOSTransaction.ReleaseBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](v1);
  return sub_1BAC38B64();
}

uint64_t sub_1BAC2AC28()
{
  sub_1BAC1AEE4();
  v1 = *(v0 + 40);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1BAC2AC94, 0, 0);
}

uint64_t sub_1BAC2AC94()
{
  sub_1BAC1AEE4();
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);
  sub_1BAC1E49C(v1, &qword_1EBC257A8, &qword_1BAC39E80);
  v2 = v0[9];
  v3 = v0[6];

  sub_1BAC194D8();

  return v4();
}

uint64_t sub_1BAC2AD28()
{
  sub_1BAC1AEE4();
  *(v0 + 16) = *(v0 + 48);
  sub_1BAC26FB4(&qword_1EBC25778, &qword_1BAC39E90);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  sub_1BAC194D8();

  return v1();
}

uint64_t sub_1BAC2ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BAC26FB4(&qword_1EBC25768, &qword_1BAC39D40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  sub_1BAC1D9AC(a3, v26 - v11);
  v13 = sub_1BAC38724();
  v14 = sub_1BAC1DA1C(v12, 1, v13);

  if (v14 == 1)
  {
    sub_1BAC1E49C(v12, &qword_1EBC25768, &qword_1BAC39D40);
  }

  else
  {
    sub_1BAC38714();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BAC386C4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BAC38634() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1BAC1E49C(a3, &qword_1EBC25768, &qword_1BAC39D40);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BAC1E49C(a3, &qword_1EBC25768, &qword_1BAC39D40);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1BAC2B09C()
{
  result = sub_1BAC38614();
  qword_1ED76B810 = result;
  return result;
}

id static NSNotificationName.pds_SIGTERMReceived.getter()
{
  if (qword_1ED76B808 != -1)
  {
    sub_1BAC19524();
  }

  v1 = qword_1ED76B810;

  return v1;
}

unint64_t sub_1BAC2B124()
{
  result = qword_1EBC257A0;
  if (!qword_1EBC257A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC257A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CancellableOSTransaction.ReleaseBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BAC2B2A4()
{
  sub_1BAC1AC34();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1BAC193FC(v3);
  *v4 = v5;
  v6 = sub_1BAC18D2C(v4);

  return v7(v6);
}

unint64_t sub_1BAC2B338()
{
  result = qword_1ED76BA28;
  if (!qword_1ED76BA28)
  {
    sub_1BAC2B39C(&unk_1EBC257B0, &qword_1BAC39E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED76BA28);
  }

  return result;
}

uint64_t sub_1BAC2B39C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BAC2B400(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BAC2B414(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1BAC2B454()
{
  v0 = *(*(sub_1BAC383E4() - 8) + 80);

  sub_1BAC29D1C();
}

void sub_1BAC2B4C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1BAC38534();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

_OWORD *sub_1BAC2B560(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BAC2B58C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1BAC2B5A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAC2B5E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t ExitReason.description.getter()
{
  result = 0x73736563637573;
  switch(*v0)
  {
    case 1:
      sub_1BAC184F4();
      result = v2 + 8;
      break;
    case 2:
      sub_1BAC184F4();
      result = v4 + 20;
      break;
    case 3:
      sub_1BAC184F4();
      result = v5 | 4;
      break;
    case 4:
      sub_1BAC184F4();
      result = v3 | 2;
      break;
    case 5:
      sub_1BAC184F4();
      result = v7 + 13;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      sub_1BAC184F4();
      result = v6 | 1;
      break;
    case 8:
      sub_1BAC184F4();
      result = v8 | 3;
      break;
    default:
      return result;
  }

  return result;
}

ProactiveDaemonSupport::ExitReason_optional __swiftcall ExitReason.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 9)
  {
    v2 = 9;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BAC2B7EC@<X0>(_DWORD *a1@<X8>)
{
  result = ExitReason.rawValue.getter();
  *a1 = result;
  return result;
}

void static Exit.exit(_:logger:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *a1;
  sub_1BAC2BAA8(a2, &v19 - v6);
  v9 = sub_1BAC383E4();
  if (sub_1BAC1DA1C(v7, 1, v9) == 1)
  {
    sub_1BAC2BB18(v7);
  }

  else
  {
    v10 = sub_1BAC383D4();
    v11 = sub_1BAC38774();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136446210;
      v14 = 0xD000000000000020;
      v15 = "rotected container directory";
      v16 = 0xE700000000000000;
      v17 = 0x73736563637573;
      switch(v8)
      {
        case 1:
          goto LABEL_12;
        case 2:
          v15 = "cannot create base directory";
          v14 = 0xD00000000000002CLL;
          goto LABEL_12;
        case 3:
          v15 = "cannot read base directory";
          v14 = 0xD00000000000001CLL;
          goto LABEL_12;
        case 4:
          v15 = "ffixed user directory";
          v14 = 0xD00000000000001ALL;
          goto LABEL_12;
        case 5:
          v15 = "confstr temp dir failure";
          v14 = 0xD000000000000025;
          goto LABEL_12;
        case 6:
          v15 = "confstr cache dir failure";
          v14 = 0xD000000000000018;
          goto LABEL_12;
        case 7:
          v15 = "set user dir suffix failure";
          v14 = 0xD000000000000019;
          goto LABEL_12;
        case 8:
          v15 = "com.apple.distnoted.matching";
          v14 = 0xD00000000000001BLL;
LABEL_12:
          v16 = v15 | 0x8000000000000000;
          v17 = v14;
          break;
        default:
          break;
      }

      v18 = sub_1BAC1914C(v17, v16, &v20);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_1BAC16000, v10, v11, "Exiting with reason: %{public}s", v12, 0xCu);
      sub_1BAC1905C(v13);
      MEMORY[0x1BFAFF600](v13, -1, -1);
      MEMORY[0x1BFAFF600](v12, -1, -1);
    }

    (*(*(v9 - 8) + 8))(v7, v9);
  }

  _exit(v8);
}

uint64_t sub_1BAC2BAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAC2BB18(uint64_t a1)
{
  v2 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAC2BB80(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BAC2BBCC(a1, a2);
  sub_1BAC2BCE4(&unk_1F38C8608);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1BAC2BBCC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1BAC38684())
  {
    result = sub_1BAC2BDC8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1BAC388C4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1BAC38924();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BAC2BCE4(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1BAC2BE38(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BAC2BDC8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BAC26FB4(&qword_1EBC257F8, "j(");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1BAC2BE38(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAC26FB4(&qword_1EBC257F8, "j(");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_1BAC2BF30()
{
  result = qword_1EBC257F0;
  if (!qword_1EBC257F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC257F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExitReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExitReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Exit(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OSVariant(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BAC2C25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - v9;
  v11 = sub_1BAC383E4();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  (*(a2 + 16))(a1, a2);
  sub_1BAC38634();

  v18 = _set_user_dir_suffix();

  if (!v18)
  {
    v32 = *(a2 + 8);
    v33 = sub_1BAC18508();
    v40 = v34;
    v34(v33);
    v35 = sub_1BAC383D4();
    v36 = sub_1BAC38754();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1BAC16000, v35, v36, "Sandbox: _set_user_dir_suffix returned nil", v37, 2u);
      MEMORY[0x1BFAFF600](v37, -1, -1);
    }

    (*(v41 + 8))(v15, v11);
    v43 = 8;
    v38 = sub_1BAC18508();
    v40(v38);
    sub_1BAC1926C(v8, 0, 1, v11);
    v30 = &v43;
    v31 = v8;
LABEL_13:
    static Exit.exit(_:logger:)(v30, v31);
  }

  sub_1BAC2C610(65537);
  if (!v19 || (sub_1BAC2C71C(), v21 = v20, , !v21))
  {
    v23 = *(a2 + 8);
    v24 = sub_1BAC18508();
    v40 = v25;
    v25(v24);
    v26 = sub_1BAC383D4();
    v27 = sub_1BAC38754();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1BAC16000, v26, v27, "Sandbox: confstr(_CS_DARWIN_USER_TEMP_DIR) failed", v28, 2u);
      MEMORY[0x1BFAFF600](v28, -1, -1);
    }

    (*(v41 + 8))(v17, v11);
    v42 = 6;
    v29 = sub_1BAC18508();
    v40(v29);
    sub_1BAC1926C(v10, 0, 1, v11);
    v30 = &v42;
    v31 = v10;
    goto LABEL_13;
  }
}

uint64_t sub_1BAC2C610(int a1)
{
  v2 = sub_1BAC386B4();
  *(v2 + 16) = 1024;
  bzero((v2 + 32), 0x400uLL);
  if (confstr(a1, (v2 + 32), 0x400uLL) >= 1)
  {
    return sub_1BAC2C694(v2);
  }

  return 0;
}

uint64_t sub_1BAC2C694(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
LABEL_6:
      v5 = sub_1BAC38644();

      return v5;
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAC2C71C()
{
  v0 = sub_1BAC38634();
  v1 = realpath_DARWIN_EXTSN((v0 + 32), 0);

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1BAC38674();
  MEMORY[0x1BFAFF600](v1, -1, -1);
  return v2;
}

void *sub_1BAC2C7A8(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_1BAC1C910(a1, a1[3]);
  sub_1BAC38B74();
  if (!v1)
  {
    sub_1BAC1C910(v9, v9[3]);
    sub_1BAC21208();
    sub_1BAC38A74();
    sub_1BAC2B414(0, &qword_1EBC25818, 0x1E696ACD0);
    sub_1BAC2B414(0, &qword_1EBC25820, 0x1E696ABC0);
    v5 = sub_1BAC38784();
    v4 = v5;
    if (v5)
    {
      sub_1BAC20F70(v7, v8);
      sub_1BAC1905C(v9);
      sub_1BAC1905C(a1);
      return v4;
    }

    sub_1BAC2CFFC();
    swift_allocError();
    swift_willThrow();
    sub_1BAC20F70(v7, v8);
    sub_1BAC1905C(v9);
  }

  sub_1BAC1905C(a1);
  return v4;
}

uint64_t sub_1BAC2C920(void *a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v12];
  v4 = v12[0];
  if (v3)
  {
    v5 = sub_1BAC38344();
    v7 = v6;

    v8 = a1[4];
    sub_1BAC1C910(a1, a1[3]);
    sub_1BAC38B94();
    sub_1BAC2CE1C(v12, v12[3]);
    sub_1BAC20E40();
    sub_1BAC38A84();
    sub_1BAC20F70(v5, v7);
    result = sub_1BAC1905C(v12);
  }

  else
  {
    v10 = v4;
    sub_1BAC382F4();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1BAC2CA78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1BAC2C7A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id InterprocessError.error.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BAC2CAF0(*v0);
  return v1;
}

id InterprocessError.nsError.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    return v1;
  }

  else
  {
    v5 = *v0;
    v3 = v1;
    v4 = sub_1BAC382E4();
    sub_1BAC2CB70(v5);
    return v4;
  }
}

uint64_t InterprocessError.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t InterprocessError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_1BAC1C910(a1, a1[3]);
  sub_1BAC38B74();
  if (!v2)
  {
    sub_1BAC1C910(v10, v10[3]);
    sub_1BAC2CC8C();
    sub_1BAC38A74();
    v6 = v9;
    v7 = NSError.pds_unlaunderSimpleNSError()();

    if (v7)
    {

      v6 = v7;
    }

    sub_1BAC1905C(v10);
    *a2 = v6;
    *(a2 + 8) = v7 == 0;
  }

  return sub_1BAC1905C(a1);
}

unint64_t sub_1BAC2CC8C()
{
  result = qword_1EBC25800;
  if (!qword_1EBC25800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25800);
  }

  return result;
}

uint64_t InterprocessError.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = a1[4];
  sub_1BAC1C910(a1, a1[3]);
  sub_1BAC2CAF0(v2);
  sub_1BAC38B94();
  if (v3)
  {
    sub_1BAC2CE1C(v9, v10);
    sub_1BAC2CE6C();
    sub_1BAC38A84();
  }

  else
  {
    swift_getErrorValue();
    Error.pds_launderToSimpleNSError(discardUserInfo:)(v5, 0);
    v7 = v6;
    sub_1BAC2CE1C(v9, v10);
    sub_1BAC2CE6C();
    sub_1BAC38A84();
  }

  sub_1BAC2CB70(v2);
  return sub_1BAC1905C(v9);
}

uint64_t sub_1BAC2CE1C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1BAC2CE6C()
{
  result = qword_1EBC25808;
  if (!qword_1EBC25808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25808);
  }

  return result;
}

uint64_t static InterprocessError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if ((*(a1 + 8) & 1) == 0)
  {
    v8 = v2;
    v5 = sub_1BAC382E4();
    sub_1BAC2CB70(v2);
    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = v3;
    goto LABEL_6;
  }

  v5 = v2;
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = v3;
  v7 = sub_1BAC382E4();
  sub_1BAC2CB70(v3);
LABEL_6:
  sub_1BAC2B414(0, &qword_1EBC25810, 0x1E69E58C0);
  v9 = sub_1BAC38854();

  return v9 & 1;
}

unint64_t sub_1BAC2CFFC()
{
  result = qword_1EBC25828;
  if (!qword_1EBC25828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25828);
  }

  return result;
}

double sub_1BAC2D068@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1BAC2DC1C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1BAC19210(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t NSError.pds_unlaunderSimpleNSError()()
{
  v1 = v0;
  v2 = [v0 userInfo];
  v3 = sub_1BAC38544();

  v4 = sub_1BAC19544();
  sub_1BAC2D068(v4, v5, v3, &v22);

  if (!v23)
  {
    goto LABEL_11;
  }

  sub_1BAC2B560(&v22, v25);
  sub_1BAC19210(v25, &v22);
  if ((sub_1BAC18FDC() & 1) == 0)
  {
LABEL_15:
    sub_1BAC1905C(v25);
    return 0;
  }

  v6 = [v1 userInfo];
  v7 = sub_1BAC38544();

  v8 = sub_1BAC18518();
  sub_1BAC2D068(v8, v9, v7, &v22);

  if (!v23)
  {
    sub_1BAC1905C(v25);

LABEL_11:
    sub_1BAC1C8B0(&v22, &unk_1EBC257D0, &qword_1BAC3A350);
    return 0;
  }

  sub_1BAC2B560(&v22, v24);
  sub_1BAC19210(v24, &v22);
  if ((sub_1BAC18FDC() & 1) == 0)
  {

LABEL_14:
    sub_1BAC1905C(v24);
    goto LABEL_15;
  }

  v10 = v19;
  v11 = sub_1BAC388E4();

  if (!v11 || (v12 = sub_1BAC2D8D4(v11)) == 0)
  {
    sub_1BAC20F70(v19, *(&v19 + 1));
    goto LABEL_14;
  }

  v14 = v12;
  v15 = v13;
  if (qword_1EBC254B0 != -1)
  {
    swift_once();
  }

  v20 = v14;
  v21 = v15;
  sub_1BAC1DAD4(&v19);
  sub_1BAC382A4();
  sub_1BAC20F70(v10, *(&v10 + 1));
  sub_1BAC1905C(v24);
  sub_1BAC1905C(v25);
  sub_1BAC27098(&v19, &v22);
  sub_1BAC27098(&v22, &v19);
  sub_1BAC26FB4(&qword_1EBC25838, &unk_1BAC3A360);
  sub_1BAC26FB4(&qword_1EBC25778, &qword_1BAC39E90);
  v17 = swift_dynamicCast();
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  return v18;
}

uint64_t sub_1BAC2D8D4(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1BAC2D94C(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1BFAFF600);
  }

  return result;
}

uint64_t sub_1BAC2D9D0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1BAC2DA24(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1BAC2E0D8(a1, sub_1BAC2E0A0, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

id sub_1BAC2DAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BAC38614();

  if (a4)
  {
    v8 = sub_1BAC38534();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

_OWORD *sub_1BAC2DB58(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ErrorSupport(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BAC2DC1C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1BAC38B24();
  sub_1BAC38654();
  v6 = sub_1BAC38B64();

  return sub_1BAC2DC94(a1, a2, v6);
}

unint64_t sub_1BAC2DC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1BAC38A64() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1BAC2DD48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1BAC26FB4(&qword_1EBC25860, &qword_1BAC3A3B0);
  v36 = a2;
  result = sub_1BAC389C4();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_1BAC2DFFC(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_1BAC2B560(v23, v37);
    }

    else
    {
      sub_1BAC19210(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_1BAC38B24();
    sub_1BAC38654();
    result = sub_1BAC38B64();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_1BAC2B560(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1BAC2DFFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1BAC3A340;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1BAC2E060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BAC19210(a4, a1);

  return a2;
}

uint64_t sub_1BAC2E0A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BAC2E060((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1BAC2E0D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1BAC2E308(a1, a2, a3, v32);
  v30[2] = v32[0];
  v30[3] = v32[1];
  v30[4] = v32[2];
  v31 = v33;

  while (1)
  {
    sub_1BAC2E344(&v29);
    v7 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      sub_1BAC2E494();
    }

    v8 = v29;
    sub_1BAC2B560(v30, v28);
    v9 = *a5;
    v11 = sub_1BAC2DC1C(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1BAC26FB4(&qword_1EBC25858, &qword_1BAC3A3A8);
        sub_1BAC38984();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1BAC2DD48(v14, a4 & 1);
      v16 = *a5;
      v17 = sub_1BAC2DC1C(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_1BAC19210(v28, v27);
        sub_1BAC1905C(v28);

        v20 = (v19[7] + 32 * v11);
        sub_1BAC1905C(v20);
        sub_1BAC2B560(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    sub_1BAC2B560(v28, (v21[7] + 32 * v11));
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1BAC38AA4();
  __break(1u);
  return result;
}

uint64_t sub_1BAC2E308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}