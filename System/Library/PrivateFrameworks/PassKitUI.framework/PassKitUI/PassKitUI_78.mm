id sub_1BD8745D8(uint64_t a1)
{
  result = [objc_allocWithZone(PKPaymentSetupDockView) initWithFrame:*(v1 + 8) context:{0.0, 0.0, 0.0, 0.0}];
  if (result)
  {
    v4 = result;
    sub_1BD873E54(result, a1);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD874650(void *a1)
{
  objc_allocWithZone(type metadata accessor for JPKIInternalClientWrapper());
  v3 = a1;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD87470C;

  return JPKIInternalClientWrapper.init(_:)(v3);
}

uint64_t sub_1BD87470C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t JPKIInternalClientWrapper.__allocating_init(_:)(uint64_t a1)
{
  objc_allocWithZone(v1);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BD87633C;

  return JPKIInternalClientWrapper.init(_:)(a1);
}

uint64_t type metadata accessor for JPKIInternalClientWrapper()
{
  result = qword_1EBD56388;
  if (!qword_1EBD56388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD874A78(void *a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  objc_allocWithZone(type metadata accessor for JPKIInternalClientWrapper());
  v4 = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1BD874B40;

  return JPKIInternalClientWrapper.init(_:)(v4);
}

uint64_t sub_1BD874B40(void *a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t JPKIInternalClientWrapper.init(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1BE052184();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_1BE052164();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_1BE04D214();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56358);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56360);
  v2[20] = swift_task_alloc();
  v6 = sub_1BE052134();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD874EF0, 0, 0);
}

uint64_t sub_1BD874EF0()
{
  v1 = [*(v0 + 32) secureElementPass];
  *(v0 + 208) = v1;
  if (v1)
  {
    v2 = v1;
    if ([v1 isDevicePrimaryPaymentApplicationPersonalized])
    {
      v3 = [v2 devicePrimaryPaymentApplication];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 paymentNetworkIdentifier];

        v6 = *(v0 + 32);
        if (v5 == 138)
        {
          v7 = [*(v0 + 32) uniqueID];
          if (v7)
          {
            v8 = *(v0 + 40);
            v9 = v7;
            sub_1BE052434();

            sub_1BE0521B4();
            swift_allocObject();
            v10 = sub_1BE052194();
            v11 = OBJC_IVAR____PKJPKIInternalClientWrapper_internalClient;
            *(v0 + 216) = v10;
            *(v0 + 224) = v11;
            *(v8 + v11) = v10;
            sub_1BE048964();
            v12 = swift_task_alloc();
            *(v0 + 232) = v12;
            *v12 = v0;
            v12[1] = sub_1BD8751C0;
            v13 = *(v0 + 160);

            return MEMORY[0x1EEE32E00](v13);
          }

          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v0 + 32);
      }

      goto LABEL_13;
    }

LABEL_10:

    v6 = v2;
    goto LABEL_13;
  }

  v6 = *(v0 + 32);
LABEL_13:

  type metadata accessor for JPKIInternalClientWrapper();
  swift_deallocPartialClassInstance();

  v14 = *(v0 + 8);

  return v14(0);
}

uint64_t sub_1BD8751C0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD8752D8, 0, 0);
}

uint64_t sub_1BD8752D8()
{
  receiver = v0[10].receiver;
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    v22 = *receiver;
    v64 = *receiver;
    v66 = *(*receiver + 16);
    if (v66)
    {
      v23 = 0;
      super_class = v0[5].super_class;
      v25 = v0[3].super_class;
      log = *MEMORY[0x1E69C8668];
      v57 = (v25 + 104);
      v26 = (v25 + 8);
      while (v23 < *(v22 + 16))
      {
        v27 = v0[4].super_class;
        v28 = v0[4].receiver;
        v29 = v0[3].receiver;
        (*(super_class + 2))(v0[6].super_class, v22 + ((*(super_class + 80) + 32) & ~*(super_class + 80)) + *(super_class + 9) * v23, v0[5].receiver);
        sub_1BE052154();
        (*v57)(v28, log, v29);
        v30 = sub_1BE052174();
        v31 = *v26;
        (*v26)(v28, v29);
        v31(v27, v29);
        if (v30)
        {
          (*(v0[5].super_class + 4))(v0[9].receiver, v0[6].super_class, v0[5].receiver);
          v32 = 0;
          v22 = v64;
          goto LABEL_13;
        }

        ++v23;
        result = (*(super_class + 1))(v0[6].super_class, v0[5].receiver);
        v22 = v64;
        if (v66 == v23)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:
      v32 = 1;
LABEL_13:
      v35 = v0[9].receiver;
      v36 = v0[2].super_class;
      v56 = *(v0[5].super_class + 7);
      v56(v35, v32, 1, v0[5].receiver);
      result = sub_1BD875E08(v35, v36 + OBJC_IVAR____PKJPKIInternalClientWrapper_userCertificateInfo);
      if (!v66)
      {
LABEL_18:

        v46 = 1;
LABEL_20:
        v51 = v0[8].super_class;
        v53 = v0[2].receiver;
        v52 = v0[2].super_class;
        v56(v51, v46, 1, v0[5].receiver);
        sub_1BD875E08(v51, v52 + OBJC_IVAR____PKJPKIInternalClientWrapper_signingCertificateInfo);
        v54 = type metadata accessor for JPKIInternalClientWrapper();
        v0[1].receiver = v52;
        v0[1].super_class = v54;
        v67 = objc_msgSendSuper2(v0 + 1, sel_init);

        goto LABEL_21;
      }

      v37 = 0;
      v38 = v0[5].super_class;
      v39 = v0[3].super_class;
      loga = *MEMORY[0x1E69C8670];
      v58 = (v39 + 104);
      v40 = (v39 + 8);
      while (v37 < *(v22 + 16))
      {
        v41 = v0[4].super_class;
        v42 = v0[4].receiver;
        v43 = v0[3].receiver;
        (*(v38 + 2))(v0[6].receiver, v22 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 9) * v37, v0[5].receiver);
        sub_1BE052154();
        (*v58)(v42, loga, v43);
        v44 = sub_1BE052174();
        v45 = *v40;
        (*v40)(v42, v43);
        v45(v41, v43);
        if (v44)
        {
          v47 = v0[8].super_class;
          v48 = v0[5].super_class;
          v49 = v0[6].receiver;
          v50 = v0[5].receiver;

          (*(v48 + 4))(v47, v49, v50);
          v46 = 0;
          goto LABEL_20;
        }

        ++v37;
        result = (*(v38 + 1))(v0[6].receiver, v0[5].receiver);
        v22 = v64;
        if (v66 == v37)
        {
          goto LABEL_18;
        }
      }
    }

    __break(1u);
    return result;
  }

  v4 = v0[12].receiver;
  v3 = v0[12].super_class;
  v6 = v0[11].receiver;
  v5 = v0[11].super_class;
  v7 = v0[10].super_class;
  v8 = v6[4];
  v8(v3, receiver, v7);
  sub_1BD875DB0();
  swift_willThrowTypedImpl();
  v8(v4, v3, v7);
  sub_1BE04D1E4();
  v9 = v6[2];
  v9(v5, v4, v7);
  v10 = sub_1BE04D204();
  v11 = sub_1BE052C54();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[11].receiver;
  v13 = v0[11].super_class;
  v15 = v0[10].super_class;
  v16 = v0[2].receiver;
  if (v12)
  {
    v63 = v0[13].receiver;
    v62 = v11;
    v17 = swift_slowAlloc();
    logb = v10;
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    swift_allocError();
    v65 = v16;
    v9(v19, v13, v15);
    v20 = _swift_stdlib_bridgeErrorToNSError();
    v21 = v14[1];
    v21(v13, v15);
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1BD026000, logb, v62, "JPKIInternalClientWrapper failed to retrieve installed certificates: %@", v17, 0xCu);
    sub_1BD0DE53C(v18, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v18, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);
  }

  else
  {

    v21 = v14[1];
    v21(v13, v15);
  }

  v33 = v0[12].receiver;
  v34 = v0[10].super_class;
  (*(v0[7].super_class + 1))(v0[8].receiver, v0[7].receiver);
  v21(v33, v34);

  type metadata accessor for JPKIInternalClientWrapper();
  swift_deallocPartialClassInstance();
  v67 = 0;
LABEL_21:

  v55 = v0->super_class;

  return v55(v67);
}

uint64_t sub_1BD8759F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56358);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  sub_1BD875E78(v1 + *a1, &v11 - v5);
  v7 = sub_1BE052164();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BD0DE53C(v6, &qword_1EBD56358);
    return 0;
  }

  else
  {
    v10 = sub_1BE052144();
    (*(v8 + 8))(v6, v7);
    return v10;
  }
}

uint64_t sub_1BD875B2C(void *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56358);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  sub_1BD875E78(a1 + *a3, &v14 - v7);
  v9 = sub_1BE052164();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD56358);
    return 0;
  }

  else
  {
    v12 = a1;
    v11 = sub_1BE052144();

    (*(v10 + 8))(v8, v9);
  }

  return v11;
}

id JPKIInternalClientWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JPKIInternalClientWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JPKIInternalClientWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD875DB0()
{
  result = qword_1EBD56370;
  if (!qword_1EBD56370)
  {
    sub_1BE052134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56370);
  }

  return result;
}

uint64_t sub_1BD875E08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56358);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD875E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD875EF0()
{
  sub_1BD876230();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of static JPKIInternalClientWrapper.instantiate(pass:)(uint64_t a1)
{
  v6 = (*(v1 + 104) + **(v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BD87470C;

  return v6(a1);
}

uint64_t dispatch thunk of JPKIInternalClientWrapper.__allocating_init(_:)(uint64_t a1)
{
  v6 = (*(v1 + 112) + **(v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BD87633C;

  return v6(a1);
}

void sub_1BD876230()
{
  if (!qword_1EBD56398)
  {
    sub_1BE052164();
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD56398);
    }
  }
}

uint64_t sub_1BD876288()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD874A78(v2, v3);
}

uint64_t type metadata accessor for IdentityPassVendor()
{
  result = qword_1EBD563A0;
  if (!qword_1EBD563A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD8763B4()
{
  result = type metadata accessor for Passes(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD876420@<X0>(unint64_t a1@<X0>, unint64_t a2@<X5>, void *a3@<X6>, uint64_t a4@<X8>)
{
  v258 = a3;
  v241 = a4;
  v240 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v240, v6);
  v239 = &v238 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v242 = (&v238 - v10);
  v269 = type metadata accessor for UnavailablePass(0);
  v255 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269, v11);
  v270 = &v238 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v238 = &v238 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v245 = &v238 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v243 = &v238 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v244 = &v238 - v24;
  v276 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v276, v25);
  v268 = (&v238 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v28);
  v267 = (&v238 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v271 = &v238 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v238 - v35;
  v284 = type metadata accessor for IdentityCredential(0);
  v288 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284, v37);
  v39 = (&v238 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v40, v41);
  v286 = (&v238 - v42);
  v274 = type metadata accessor for AvailablePass(0);
  v272 = *(v274 - 8);
  MEMORY[0x1EEE9AC00](v274, v43);
  v246 = &v238 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v238 - v47;

  v49 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_134:
    v50 = sub_1BE053704();
  }

  else
  {
    v50 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v287 = a1;
  v273 = a2;
  v279 = v36;
  v277 = v49;
  if (v50)
  {
    v300 = MEMORY[0x1E69E7CC0];
    v285 = v50;
    sub_1BD531B28(0, v50 & ~(v50 >> 63), 0);
    v51 = v285;
    if ((v285 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_136:
      v39 = sub_1BE053704();
      goto LABEL_104;
    }

    v52 = 0;
    v36 = v300;
    v289 = a2 & 0xC000000000000001;
    do
    {
      if (v289)
      {
        v53 = MEMORY[0x1BFB40900](v52, a2);
      }

      else
      {
        v53 = *(a2 + 8 * v52 + 32);
      }

      v54 = v53;
      v55 = [v53 uniqueID];
      if (v55)
      {
        v56 = v55;
        v57 = sub_1BE052434();
        v59 = v58;

        v51 = v285;
      }

      else
      {
        v57 = 0;
        v59 = 0;
      }

      v300 = v36;
      v61 = *(v36 + 16);
      v60 = *(v36 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1BD531B28((v60 > 1), v61 + 1, 1);
        v51 = v285;
        v36 = v300;
      }

      ++v52;
      *(v36 + 16) = v61 + 1;
      v62 = (v36 + 24 * v61);
      v62[4] = v57;
      v62[5] = v59;
      v62[6] = v54;
      a2 = v273;
    }

    while (v51 != v52);
    a1 = v287;
    goto LABEL_17;
  }

  v36 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E20);
    v63 = sub_1BE053A04();
    goto LABEL_18;
  }

  v63 = MEMORY[0x1E69E7CC8];
LABEL_18:
  v300 = v63;
  v49 = 0;
  sub_1BD878520(v36, 1, &v300);
  v64 = v279;
  v65 = v300;
  a2 = *(a1 + 16);
  v289 = a2;
  if (a2)
  {
    v282 = 0;
    v300 = MEMORY[0x1E69E7CC0];
    sub_1BD531A40(0, a2, 0);
    v278 = v300;
    v36 = a1 + ((*(v288 + 80) + 32) & ~*(v288 + 80));
    v281 = (v288 + 56);
    v280 = *(v288 + 72);
    v283 = v65;
    do
    {
      v285 = a2;
      v66 = v286;
      sub_1BD878960(v36, v286, type metadata accessor for IdentityCredential);
      v67 = (v66 + *(v284 + 32));
      v68 = v67[1];
      if (v68 && *(v65 + 16) && (v69 = *v67, sub_1BE048C84(), v70 = sub_1BD149194(v69, v68), v72 = v71, , (v72 & 1) != 0) && (v73 = [*(*(v65 + 56) + 8 * v70) paymentPass]) != 0)
      {
        *v64 = v73;
      }

      else
      {
        v74 = v64;
        v75 = (v286 + *(v284 + 24));
        v77 = *v75;
        v76 = v75[1];
        v78 = *v286;
        v79 = v286[1];
        v80 = qword_1EBD370E8;
        sub_1BE048C84();
        sub_1BE048C84();
        if (v80 != -1)
        {
          swift_once();
        }

        v81 = sub_1BE04CF34();
        v82 = __swift_project_value_buffer(v81, qword_1EBDAB9C0);
        v83 = type metadata accessor for PlaceholderPass(0);
        (*(*(v81 - 8) + 16))(&v74[*(v83 + 28)], v82, v81);
        *v74 = v77;
        *(v74 + 1) = v76;
        *(v74 + 2) = v78;
        *(v74 + 3) = v79;
        v64 = v74;
        *(v74 + 4) = 4;
      }

      swift_storeEnumTagMultiPayload();
      v84 = v271;
      sub_1BD878960(v64, v271, type metadata accessor for WrappedPass);
      v85 = v286;
      sub_1BD878960(v286, v39, type metadata accessor for IdentityCredential);
      sub_1BD878960(v84, v48, type metadata accessor for WrappedPass);
      v86 = v274;
      v87 = *(v274 + 24);
      sub_1BD878960(v39, v48 + v87, type metadata accessor for IdentityCredential);
      (*v281)(v48 + v87, 0, 1, v284);
      v88 = MEMORY[0x1E69E7CC0];
      *(v48 + v86[14]) = MEMORY[0x1E69E7CC0];
      sub_1BD878A30(v39, type metadata accessor for IdentityCredential);
      sub_1BD878A30(v84, type metadata accessor for WrappedPass);
      sub_1BD878A30(v64, type metadata accessor for WrappedPass);
      sub_1BD878A30(v85, type metadata accessor for IdentityCredential);
      *(v48 + v86[15]) = v88;
      *(v48 + v86[5]) = 0;
      v89 = v86[7];
      v90 = type metadata accessor for BalanceInfo(0);
      (*(*(v90 - 8) + 56))(v48 + v89, 1, 1, v90);
      v91 = (v48 + v86[8]);
      *v91 = 0;
      v91[1] = 0;
      *(v48 + v86[9]) = 0;
      v92 = v86[10];
      v93 = type metadata accessor for PassEligibleRewardsInfo();
      (*(*(v93 - 8) + 56))(v48 + v92, 1, 1, v93);
      v94 = (v48 + v86[12]);
      *(v94 + 25) = 0u;
      *v94 = 0u;
      v94[1] = 0u;
      v95 = v48 + v86[13];
      *(v95 + 32) = 0;
      *v95 = 0u;
      *(v95 + 16) = 0u;
      *(v48 + v86[11]) = 2;
      v96 = v278;
      v300 = v278;
      v98 = *(v278 + 16);
      v97 = *(v278 + 24);
      v99 = v285;
      if (v98 >= v97 >> 1)
      {
        sub_1BD531A40(v97 > 1, v98 + 1, 1);
        v96 = v300;
      }

      *(v96 + 16) = v98 + 1;
      v100 = (*(v272 + 80) + 32) & ~*(v272 + 80);
      v278 = v96;
      sub_1BD8789C8(v48, v96 + v100 + *(v272 + 72) * v98, type metadata accessor for AvailablePass);
      v36 += v280;
      a2 = v99 - 1;
      v65 = v283;
    }

    while (a2);

    v101 = v278;
    v49 = v282;
    a2 = v289;
  }

  else
  {

    v101 = MEMORY[0x1E69E7CC0];
  }

  v278 = v101;
  v292 = MEMORY[0x1E69E7CC0];
  if (v277)
  {
    v102 = sub_1BE053704();
  }

  else
  {
    v102 = *((v273 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = v287;
  a1 = MEMORY[0x1E69E7CC0];
  if (v102)
  {
    v104 = 0;
    v250 = v273 & 0xC000000000000001;
    v249 = v273 & 0xFFFFFFFFFFFFFF8;
    v248 = v273 + 32;
    v247 = v102;
    while (1)
    {
      if (v250)
      {
        v154 = v104;
        v106 = MEMORY[0x1BFB40900](v104, v273);
        v107 = __OFADD__(v154, 1);
        a1 = v154 + 1;
        if (v107)
        {
          goto LABEL_96;
        }
      }

      else
      {
        if (v104 >= *(v249 + 16))
        {
          goto LABEL_133;
        }

        v105 = v104;
        v106 = *(v248 + 8 * v104);
        v107 = __OFADD__(v105, 1);
        a1 = v105 + 1;
        if (v107)
        {
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          break;
        }
      }

      v254 = a1;
      v253 = v106;
      v108 = [v106 paymentApplications];
      if (!v108)
      {
        goto LABEL_212;
      }

      v109 = v108;
      v36 = sub_1BD0E5E8C(0, &qword_1EBD43BA0);
      sub_1BD214890(&qword_1EBD43BB0, &qword_1EBD43BA0);
      v48 = sub_1BE052A34();

      v252 = v48;
      if ((v48 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1BE0536B4();
        sub_1BE052A74();
        v48 = v293;
        a1 = v294;
        v110 = v295;
        v111 = v296;
        v112 = v297;
      }

      else
      {
        v113 = -1 << *(v48 + 32);
        a1 = v48 + 56;
        v114 = ~v113;
        v115 = -v113;
        if (v115 < 64)
        {
          v116 = ~(-1 << v115);
        }

        else
        {
          v116 = -1;
        }

        v112 = v116 & *(v48 + 56);
        sub_1BE048C84();
        v110 = v114;
        v111 = 0;
      }

      v251 = v110;
      v117 = (v110 + 64) >> 6;
      v259 = v117;
      v260 = v36;
      v262 = a1;
      v261 = v48;
      if (v48 < 0)
      {
        goto LABEL_51;
      }

LABEL_54:
      v120 = v111;
      v121 = v112;
      v122 = v111;
      if (!v112)
      {
        while (1)
        {
          v122 = v120 + 1;
          if (__OFADD__(v120, 1))
          {
            break;
          }

          if (v122 >= v117)
          {
            goto LABEL_93;
          }

          v121 = *(a1 + 8 * v122);
          ++v120;
          if (v121)
          {
            goto LABEL_58;
          }
        }

LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

LABEL_58:
      v123 = __clz(__rbit64(v121));
      v263 = (v121 - 1) & v121;
      v124 = *(v48 + 48);
      v264 = v122;
      v119 = *(v124 + ((v122 << 9) | (8 * v123)));
      if (!v119)
      {
        goto LABEL_93;
      }

      do
      {
        v285 = v119;
        v125 = [v119 subcredentials];
        if (!v125)
        {
          goto LABEL_211;
        }

        v126 = v125;
        v256 = v111;
        v257 = v112;
        v127 = sub_1BD0E5E8C(0, &qword_1EBD398B8);
        sub_1BD214890(&qword_1EBD474E0, &qword_1EBD398B8);
        v48 = sub_1BE052A34();

        v266 = v48;
        v275 = v127;
        if ((v48 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_1BE0536B4();
          sub_1BE052A74();
          v36 = v298;
          a1 = v299[0];
          v128 = v299[1];
          v129 = v299[2];
          v130 = v299[3];
        }

        else
        {
          v131 = -1 << *(v48 + 32);
          a1 = v48 + 56;
          v132 = ~v131;
          v133 = -v131;
          if (v133 < 64)
          {
            v134 = ~(-1 << v133);
          }

          else
          {
            v134 = -1;
          }

          v135 = v134 & *(v48 + 56);
          sub_1BE048C84();
          v130 = v135;
          v128 = v132;
          v36 = v48;
          v129 = 0;
        }

        v265 = v128;
        v136 = (v128 + 64) >> 6;
        v281 = a1;
        v280 = v36;
        v279 = v136;
        while (1)
        {
          v143 = v130;
          v283 = v129;
          if (v36 < 0)
          {
            break;
          }

          v144 = v129;
          if (!v130)
          {
            while (1)
            {
              v129 = v144 + 1;
              if (__OFADD__(v144, 1))
              {
                break;
              }

              if (v129 >= v136)
              {
                v147 = v285;
                goto LABEL_89;
              }

              v130 = *(a1 + 8 * v129);
              ++v144;
              if (v130)
              {
                goto LABEL_74;
              }
            }

            __break(1u);
            goto LABEL_130;
          }

LABEL_74:
          v286 = ((v130 - 1) & v130);
          v36 = *(*(v36 + 48) + ((v129 << 9) | (8 * __clz(__rbit64(v130)))));
LABEL_77:
          v147 = v285;
          if (!v36)
          {
            goto LABEL_89;
          }

          v277 = v143;
          if (a2)
          {
            v282 = v49;
            v300 = MEMORY[0x1E69E7CC0];
            sub_1BD531B48(0, a2, 0);
            v49 = 0;
            v148 = v300;
            v149 = v103 + ((*(v288 + 80) + 32) & ~*(v288 + 80));
            while (v49 < *(v103 + 16))
            {
              sub_1BD878960(v149 + *(v288 + 72) * v49, v39, type metadata accessor for IdentityCredential);
              v150 = *v39;
              a1 = v39[1];
              sub_1BE048C84();
              sub_1BD878A30(v39, type metadata accessor for IdentityCredential);
              v300 = v148;
              v152 = *(v148 + 16);
              v151 = *(v148 + 24);
              a2 = v152 + 1;
              if (v152 >= v151 >> 1)
              {
                sub_1BD531B48((v151 > 1), v152 + 1, 1);
                v148 = v300;
              }

              ++v49;
              *(v148 + 16) = a2;
              v153 = v148 + 16 * v152;
              *(v153 + 32) = v150;
              *(v153 + 40) = a1;
              v103 = v287;
              if (v289 == v49)
              {
                v49 = v282;
                goto LABEL_86;
              }
            }

            goto LABEL_97;
          }

          v148 = MEMORY[0x1E69E7CC0];
LABEL_86:
          v141 = [v36 identifier];
          if (v141)
          {
            v137 = v141;
            v138 = sub_1BE052434();
            v140 = v139;
          }

          else
          {
            v138 = 0;
            v140 = 0;
          }

          v300 = v138;
          v301 = v140;
          MEMORY[0x1EEE9AC00](v141, v142);
          *(&v238 - 2) = &v300;
          v48 = sub_1BD2FF130(sub_1BD878940, (&v238 - 4), v148);

          a2 = v289;
          a1 = v281;
          v36 = v280;
          v136 = v279;
          v130 = v286;
          if (v48)
          {

            sub_1BD5F0644();

            sub_1BD5F0644();

            goto LABEL_39;
          }
        }

        v145 = v130;
        v146 = sub_1BE053744();
        if (v146)
        {
          v291 = v146;
          swift_dynamicCast();
          v36 = v300;
          v143 = v145;
          v286 = v145;
          goto LABEL_77;
        }

        v147 = v285;
LABEL_89:

        sub_1BD5F0644();

        v111 = v264;
        v112 = v263;
        v36 = v260;
        a1 = v262;
        v48 = v261;
        v117 = v259;
        if ((v261 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

LABEL_51:
        v118 = sub_1BE053744();
        if (!v118)
        {
          break;
        }

        v291 = v118;
        swift_dynamicCast();
        v119 = v300;
        v264 = v111;
        v263 = v112;
      }

      while (v300);
LABEL_93:
      sub_1BD5F0644();

      sub_1BE0538C4();
      a1 = *(v292 + 16);
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
LABEL_39:
      v104 = v254;
      if (v254 == v247)
      {
        v48 = v292;
        a1 = MEMORY[0x1E69E7CC0];
        goto LABEL_101;
      }
    }
  }

  v48 = a1;
LABEL_101:

  v300 = a1;
  v282 = v49;
  if (v48 < 0 || (v48 & 0x4000000000000000) != 0)
  {
    goto LABEL_136;
  }

  v39 = *(v48 + 16);
LABEL_104:
  v155 = 0;
  v49 = v48 & 0xC000000000000001;
  v156 = MEMORY[0x1E69E7CC0];
  a1 = MEMORY[0x1E69E7CC0];
  while (v39 != v155)
  {
    if (v49)
    {
      v157 = MEMORY[0x1BFB40900](v155, v48);
    }

    else
    {
      if (v155 >= *(v48 + 16))
      {
        goto LABEL_132;
      }

      v157 = *(v48 + 8 * v155 + 32);
    }

    a2 = v157;
    v158 = (v155 + 1);
    if (__OFADD__(v155, 1))
    {
      goto LABEL_131;
    }

    v36 = [v157 paymentPass];

    ++v155;
    if (v36)
    {
      MEMORY[0x1BFB3F7A0]();
      if (*((v300 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v300 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      a1 = v300;
      v155 = v158;
    }
  }

  if (a1 >> 62)
  {
    v159 = sub_1BE053704();
    v160 = v274;
    if (v159)
    {
      goto LABEL_117;
    }

LABEL_138:

    v162 = MEMORY[0x1E69E7CC0];
    goto LABEL_139;
  }

  v159 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v160 = v274;
  if (!v159)
  {
    goto LABEL_138;
  }

LABEL_117:
  v300 = v156;
  sub_1BD5319FC(0, v159 & ~(v159 >> 63), 0);
  if (v159 < 0)
  {
    goto LABEL_210;
  }

  v161 = 0;
  v162 = v300;
  v287 = a1 & 0xC000000000000001;
  v289 = a1;
  v163 = v270;
  do
  {
    if (v287)
    {
      v164 = MEMORY[0x1BFB40900](v161, a1);
    }

    else
    {
      v164 = *(a1 + 8 * v161 + 32);
    }

    v165 = v164;
    v166 = v267;
    *v267 = v164;
    swift_storeEnumTagMultiPayload();
    sub_1BD878960(v166, v163, type metadata accessor for WrappedPass);
    v167 = v269;
    v168 = (v163 + *(v269 + 20));
    *v168 = 0;
    v168[1] = 0;
    v169 = v165;
    v170 = v258;
    v171 = sub_1BD49ABC8(v166, v170);
    v172 = v163 + *(v167 + 28);
    *v172 = v171;
    *(v172 + 8) = v173;
    *(v172 + 16) = v174;
    sub_1BD878960(v166, v268, type metadata accessor for WrappedPass);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      sub_1BD878A30(v267, type metadata accessor for WrappedPass);
      v176 = 0;
      v177 = v299;
    }

    else
    {
      v175 = *v268;
      v176 = [*v268 hasAssociatedPeerPaymentAccount];

      v169 = v175;
      v177 = &v298;
    }

    v178 = *(v177 - 32);
    a1 = v289;

    sub_1BD878A30(v178, type metadata accessor for WrappedPass);
    v179 = v270;
    v270[*(v269 + 24)] = v176;
    v300 = v162;
    v181 = *(v162 + 16);
    v180 = *(v162 + 24);
    if (v181 >= v180 >> 1)
    {
      sub_1BD5319FC(v180 > 1, v181 + 1, 1);
      v179 = v270;
      v162 = v300;
    }

    ++v161;
    *(v162 + 16) = v181 + 1;
    sub_1BD8789C8(v179, v162 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v181, type metadata accessor for UnavailablePass);
  }

  while (v159 != v161);

  v160 = v274;
LABEL_139:
  v182 = [v258 pass];
  v183 = v278;
  v184 = *(v278 + 16);
  v185 = v244;
  v186 = v243;
  v187 = v242;
  if (!v182)
  {
    v229 = v272;
    if (v184)
    {
      sub_1BD878960(v278 + ((*(v272 + 80) + 32) & ~*(v272 + 80)), v244, type metadata accessor for AvailablePass);
      (*(v229 + 56))(v185, 0, 1, v160);
    }

    else
    {
      (*(v272 + 56))(v244, 1, 1, v160);
    }

LABEL_202:
    sub_1BD0DE19C(v185, v245, &qword_1EBD520A0);
    v231 = v238;
    sub_1BD0DE19C(v185, v238, &qword_1EBD520A0);
    if ((*(v229 + 48))(v231, 1, v160) == 1)
    {
      sub_1BD0DE53C(v185, &qword_1EBD520A0);

      v232 = 0;
    }

    else
    {
      v233 = v271;
      sub_1BD878960(v231, v271, type metadata accessor for WrappedPass);
      sub_1BD878A30(v231, type metadata accessor for AvailablePass);
      WrappedPass.devicePrimaryPaymentApplication.getter();
      v232 = v234;

      sub_1BD878A30(v233, type metadata accessor for WrappedPass);
      v231 = v185;
    }

    sub_1BD0DE53C(v231, &qword_1EBD520A0);
    v235 = v239;
    sub_1BD49C65C(v245, v239);
    v236 = v240;
    *(v235 + *(v240 + 20)) = v232;
    *(v235 + v236[7]) = v278;
    *(v235 + v236[9]) = v162;
    *(v235 + v236[10]) = 0;
    *(v235 + v236[11]) = 0;
    *(v235 + v236[6]) = 1;
    *(v235 + v236[8]) = 0;
    return sub_1BD8789C8(v235, v241, type metadata accessor for Passes);
  }

  v188 = v182;
  v189 = v272;
  v190 = v246;
  if (!v184)
  {
LABEL_197:

    v230 = 1;
LABEL_200:
    v229 = v272;
    (*(v272 + 56))(v186, v230, 1, v160);
    sub_1BD49C65C(v186, v185);
    goto LABEL_202;
  }

  v191 = 0;
  v283 = v278 + ((*(v272 + 80) + 32) & ~*(v272 + 80));
  v281 = (v288 + 48);
  v285 = MEMORY[0x1E69E7CC0] >> 62;
  v276 = v182;
  v280 = v184;
  while (1)
  {
    if (v191 >= *(v183 + 16))
    {
      goto LABEL_209;
    }

    v192 = *(v189 + 72);
    v286 = v191;
    sub_1BD878960(v283 + v192 * v191, v190, type metadata accessor for AvailablePass);
    sub_1BD0DE19C(v190 + *(v160 + 24), v187, &qword_1EBD3F190);
    if ((*v281)(v187, 1, v284) != 1)
    {
      break;
    }

    sub_1BD878A30(v190, type metadata accessor for AvailablePass);
    sub_1BD0DE53C(v187, &qword_1EBD3F190);
LABEL_143:
    v191 = v286 + 1;
    v189 = v272;
    v190 = v246;
    v183 = v278;
    if ((v286 + 1) == v280)
    {
      goto LABEL_197;
    }
  }

  v193 = v187[1];
  v287 = *v187;
  sub_1BE048C84();
  sub_1BD878A30(v187, type metadata accessor for IdentityCredential);
  v194 = [v188 paymentApplications];
  if (v194)
  {
    v195 = v194;
    sub_1BD0E5E8C(0, &qword_1EBD43BA0);
    sub_1BD214890(&qword_1EBD43BB0, &qword_1EBD43BA0);
    v196 = sub_1BE052A34();
  }

  else
  {
    v197 = MEMORY[0x1E69E7CD0];
    if (v285 && sub_1BE053704())
    {
      sub_1BD111DC0(MEMORY[0x1E69E7CC0]);
      v196 = v228;
    }

    else
    {
      v196 = v197;
    }
  }

  v292 = MEMORY[0x1E69E7CC0];
  v288 = v193;
  v279 = v196;
  if ((v196 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BD0E5E8C(0, &qword_1EBD43BA0);
    sub_1BD214890(&qword_1EBD43BB0, &qword_1EBD43BA0);
    sub_1BE052A74();
    v198 = v301;
    v289 = v300;
    v199 = v302;
    v200 = v303;
    v201 = v304;
  }

  else
  {
    v202 = -1 << *(v196 + 32);
    v198 = v196 + 56;
    v199 = ~v202;
    v203 = -v202;
    if (v203 < 64)
    {
      v204 = ~(-1 << v203);
    }

    else
    {
      v204 = -1;
    }

    v201 = v204 & *(v196 + 56);
    sub_1BE048C84();
    v200 = 0;
    v289 = v196;
  }

  v277 = v199;
  v205 = (v199 + 64) >> 6;
  while ((v289 & 0x8000000000000000) != 0)
  {
    v211 = sub_1BE053744();
    if (!v211 || (v290 = v211, sub_1BD0E5E8C(0, &qword_1EBD43BA0), swift_dynamicCast(), (v208 = v291) == 0))
    {
LABEL_173:
      sub_1BD5F0644();

      v215 = v292;
      if (v292 >> 62)
      {
        v216 = sub_1BE053704();
      }

      else
      {
        v216 = *((v292 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v160 = v274;
      if (v216)
      {
        v217 = 0;
        v289 = v215 & 0xC000000000000001;
        do
        {
          if (v289)
          {
            v218 = MEMORY[0x1BFB40900](v217, v215);
          }

          else
          {
            if (v217 >= *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_208;
            }

            v218 = *(v215 + 8 * v217 + 32);
          }

          v219 = v218;
          v220 = v217 + 1;
          if (__OFADD__(v217, 1))
          {
            goto LABEL_207;
          }

          v221 = [v218 identifier];
          if (v221)
          {
            v222 = v221;
            v223 = sub_1BE052434();
            v225 = v224;

            v226 = v223 == v287 && v225 == v288;
            if (v226)
            {

              goto LABEL_199;
            }

            v227 = sub_1BE053B84();

            if (v227)
            {

LABEL_199:
              v160 = v274;

              v186 = v243;
              sub_1BD8789C8(v246, v243, type metadata accessor for AvailablePass);
              v230 = 0;
              v185 = v244;
              goto LABEL_200;
            }
          }

          else
          {
          }

          ++v217;
          v226 = v220 == v216;
          v160 = v274;
        }

        while (!v226);
      }

      sub_1BD878A30(v246, type metadata accessor for AvailablePass);
      v185 = v244;
      v186 = v243;
      v187 = v242;
      v188 = v276;
      goto LABEL_143;
    }

LABEL_168:
    v212 = [v208 subcredentials];
    if (v212)
    {
      v206 = v212;
      sub_1BD0E5E8C(0, &qword_1EBD398B8);
      sub_1BD214890(&qword_1EBD474E0, &qword_1EBD398B8);
      v207 = sub_1BE052A34();

      v208 = v206;
    }

    else if (v285 && (v213 = MEMORY[0x1E69E7CC0], sub_1BE053704()))
    {
      sub_1BD111DE4(v213);
      v207 = v214;
    }

    else
    {
      v207 = MEMORY[0x1E69E7CD0];
    }

    sub_1BDA7A3D8(v207);
  }

  v209 = v200;
  v210 = v201;
  if (v201)
  {
LABEL_164:
    v201 = (v210 - 1) & v210;
    v208 = *(*(v289 + 48) + ((v200 << 9) | (8 * __clz(__rbit64(v210)))));
    if (!v208)
    {
      goto LABEL_173;
    }

    goto LABEL_168;
  }

  while (1)
  {
    v200 = v209 + 1;
    if (__OFADD__(v209, 1))
    {
      break;
    }

    if (v200 >= v205)
    {
      goto LABEL_173;
    }

    v210 = *(v198 + 8 * v200);
    ++v209;
    if (v210)
    {
      goto LABEL_164;
    }
  }

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
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1BD878520(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;
  sub_1BE048C84();
  v10 = v8;
  v11 = sub_1BD149194(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1BD500648(v16, v5 & 1);
    v11 = sub_1BD149194(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
    v11 = sub_1BE053C14();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1BD5063E4();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD00000000000001BLL, 0x80000001BE13DAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8);
    sub_1BE053974();
    MEMORY[0x1BFB3F610](39, 0xE100000000000000);
    sub_1BE053994();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;
      sub_1BE048C84();
      v10 = v27;
      v29 = sub_1BD149194(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_1BD500648(v33, 1);
        v29 = sub_1BD149194(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

BOOL sub_1BD8788CC(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1BE053B84() & 1;
    }
  }

  return result;
}

uint64_t sub_1BD878960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8789C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD878A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD878AA4()
{
  result = qword_1EBD563B0;
  if (!qword_1EBD563B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD563B0);
  }

  return result;
}

id NearbyPeerPaymentSenderVFXViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t NearbyPeerPaymentSenderVFXViewController.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state;
  swift_beginAccess();
  return sub_1BD113234(v1 + v3, a1);
}

uint64_t NearbyPeerPaymentSenderVFXViewController.animationDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbyPeerPaymentSenderVFXViewController.animationDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BD317324;
}

char *NearbyPeerPaymentSenderVFXViewController.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  *&v0[OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  v4 = *&v3[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_unknownAmountEmitter];
  v5 = v3;
  [v4 removeFromParentNode];
  sub_1BD878D88();

  return v5;
}

void sub_1BD878D88()
{
  v17 = 53;
  v16 = MEMORY[0x1E69E6448];
  v1 = MEMORY[0x1E69E6448];
  LODWORD(v15[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 54;
  v16 = v1;
  LODWORD(v15[0]) = 1032134328;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 2;
  v16 = v1;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 16;
  v2 = objc_opt_self();
  v3 = [v2 valueWithVFXFloat2_];
  v16 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
  v4 = v16;
  v15[0] = v3;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 29;
  v5 = [v2 &selRef_removeCachedPaymentOffers + 3];
  v16 = v4;
  v15[0] = v5;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 39;
  v6 = [v2 &selRef_removeCachedPaymentOffers + 3];
  v16 = v4;
  v15[0] = v6;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 16;
  v7 = [v2 &selRef_removeCachedPaymentOffers + 3];
  v16 = v4;
  v15[0] = v7;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRingParticles);
  v17 = 16;
  v9 = [v2 &selRef_removeCachedPaymentOffers + 3];
  v16 = v4;
  v15[0] = v9;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  [*(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstA) setOpacity_];
  [*(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstB) setOpacity_];
  v10 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRing);
  [v10 setHidden_];
  [v10 setPaused_];
  [v8 setHidden_];
  [v8 setPaused_];
  v17 = 12;
  v11 = MEMORY[0x1E69E6448];
  v16 = MEMORY[0x1E69E6448];
  LODWORD(v15[0]) = 1135869952;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 13;
  v16 = v11;
  LODWORD(v15[0]) = 981668463;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 14;
  v16 = v11;
  LODWORD(v15[0]) = 1048576000;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 52;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 22;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 1;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 48;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 49;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 26;
  v16 = v11;
  LODWORD(v15[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 2;
  v16 = v11;
  LODWORD(v15[0]) = 1117782016;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 37;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 33;
  v16 = v11;
  LODWORD(v15[0]) = 1060320051;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 35;
  v16 = v11;
  LODWORD(v15[0]) = 1045220557;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 28;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 27;
  v16 = v11;
  LODWORD(v15[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 20;
  v12 = [v2 valueWithVFXFloat3_];
  v16 = v4;
  v15[0] = v12;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 5;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 6;
  v16 = v11;
  LODWORD(v15[0]) = 1056964608;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 7;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 38;
  v16 = MEMORY[0x1E69E63B0];
  v15[0] = 0x3FE0000000000000;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 34;
  v16 = v11;
  LODWORD(v15[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 37;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 1;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 51;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 55;
  v16 = v11;
  LODWORD(v15[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 42;
  v13 = [v2 valueWithVFXFloat2_];
  v16 = v4;
  v15[0] = v13;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 40;
  v14 = [v2 valueWithVFXFloat2_];
  v16 = v4;
  v15[0] = v14;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 41;
  v16 = v11;
  LODWORD(v15[0]) = 1073322394;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 50;
  v16 = v11;
  LODWORD(v15[0]) = 1075838976;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  v17 = 56;
  v16 = v11;
  LODWORD(v15[0]) = 1045220557;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, v15);
  sub_1BD0DE53C(v15, &qword_1EBD3EC90);
  NearbyPeerPaymentSenderVFXViewController.restartEmitters()();
}

Swift::Void __swiftcall NearbyPeerPaymentSenderVFXViewController.restartEmitters()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ambientEmitter);
  v3 = [v2 particleEmitter];
  [v3 killParticles];

  v4 = [v2 particleEmitter];
  [v4 restart];

  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_nodeBindings);
  v6 = [v5 particleEmitter];
  [v6 killParticles];

  v7 = [v5 particleEmitter];
  [v7 restart];

  v8 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentStarterTextNodes;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (v9 >> 62)
  {
    v10 = sub_1BE053704();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_31;
  }

  sub_1BE048C84();
  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB40900](v11, v9);
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v14 = [v12 particleEmitter];
    [v14 killParticles];

    v15 = [v13 particleEmitter];
    [v15 restart];
  }

  while (v10 != v11);

LABEL_10:
  v16 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentTransferTextNodes;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (v17 >> 62)
  {
    v18 = sub_1BE053704();
    if (v18)
    {
LABEL_12:
      if (v18 >= 1)
      {
        sub_1BE048C84();
        v19 = 0;
        do
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1BFB40900](v19, v17);
          }

          else
          {
            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          ++v19;
          v22 = [v20 particleEmitter];
          [v22 killParticles];

          v23 = [v21 particleEmitter];
          [v23 restart];
        }

        while (v18 != v19);

        goto LABEL_19;
      }

LABEL_31:
      __break(1u);
      return;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_12;
    }
  }

LABEL_19:
  v32 = 30;
  v24 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDigitModels;
  swift_beginAccess();
  v25 = *(v1 + v24);
  if (v25 >> 62)
  {
    v26 = sub_1BE053704();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = MEMORY[0x1E69E6448];
  v31 = MEMORY[0x1E69E6448];
  v30[0] = 5000.0 / v26;
  VFXNode.setBehaviorGraphValue(key:value:)(&v32, v30);
  sub_1BD0DE53C(v30, &qword_1EBD3EC90);
  v32 = 47;
  v28 = *(v1 + v24);
  if (v28 >> 62)
  {
    v29 = sub_1BE053704();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v27;
  v30[0] = 5000.0 / v29;
  VFXNode.setBehaviorGraphValue(key:value:)(&v32, v30);
  sub_1BD0DE53C(v30, &qword_1EBD3EC90);
}

uint64_t NearbyPeerPaymentSenderVFXViewController.setState(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state;
  swift_beginAccess();
  sub_1BD113234(v3 + v11, v103);
  swift_beginAccess();
  v12 = v3;
  sub_1BD1263C8(a1, v3 + v11);
  swift_endAccess();
  sub_1BE04D094();
  sub_1BD113234(v103, v95);
  v93 = a1;
  sub_1BD113234(a1, v101);
  v13 = sub_1BE04D204();
  v14 = sub_1BE052C54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v91 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v94 = v17;
    *v16 = 136315394;
    v18 = NearbyPeerPaymentSenderState.description.getter();
    v20 = v19;
    sub_1BD11326C(v95);
    v21 = sub_1BD123690(v18, v20, &v94);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = NearbyPeerPaymentSenderState.description.getter();
    v24 = v23;
    sub_1BD11326C(v101);
    v25 = sub_1BD123690(v22, v24, &v94);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1BD026000, v13, v14, "NearbyPeerPayment/VFX: Sender state changed from: %s to: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v17, -1, -1);
    v26 = v16;
    a2 = v91;
    MEMORY[0x1BFB45F20](v26, -1, -1);
  }

  else
  {

    sub_1BD11326C(v101);
    sub_1BD11326C(v95);
  }

  (*(v7 + 8))(v10, v6);
  v27 = v93;
  sub_1BD113234(v93, v101);
  if (v102 > 2)
  {
    if ((v102 - 3) < 3)
    {
      v28 = MEMORY[0x1E69E7CC0];
      goto LABEL_41;
    }

    if (v102 == 6)
    {
      v47 = swift_allocObject();
      *(v47 + 16) = v12;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_1BD87EEC4;
      *(v48 + 24) = v47;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_1BD87EF30;
      *(v49 + 24) = v48;
      v50 = v12;
      v28 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v52 = v28[2];
      v51 = v28[3];
      if (v52 >= v51 >> 1)
      {
        v28 = sub_1BD1D7BB0((v51 > 1), v52 + 1, 1, v28);
      }

      v28[2] = v52 + 1;
      v53 = &v28[2 * v52];
LABEL_29:
      v53[4] = sub_1BD330914;
      v53[5] = v49;
      goto LABEL_41;
    }

    goto LABEL_23;
  }

  if (!v102)
  {
    sub_1BD113234(v103, v95);
    v98 = 0;
    v99 = 0;
    v97 = 0;
    v100 = xmmword_1BE0B8E00;
    if (v96 == 1)
    {
      sub_1BD11326C(v95);
      v28 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1BD0DE53C(v95, &qword_1EBD398E0);
      v65 = swift_allocObject();
      *(v65 + 16) = v12;
      v66 = swift_allocObject();
      *(v66 + 16) = sub_1BD87EFDC;
      *(v66 + 24) = v65;
      v67 = v12;
      v28 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v69 = v28[2];
      v68 = v28[3];
      if (v69 >= v68 >> 1)
      {
        v28 = sub_1BD1D7BB0((v68 > 1), v69 + 1, 1, v28);
      }

      v28[2] = v69 + 1;
      v70 = &v28[2 * v69];
      v70[4] = sub_1BD330914;
      v70[5] = v66;
    }

    sub_1BD113234(v103, v95);
    if (v96 - 2 >= 5 && v96)
    {
      if (v96 == 1)
      {
        v77 = swift_allocObject();
        *(v77 + 16) = v12;
        v49 = swift_allocObject();
        *(v49 + 16) = sub_1BD87F030;
        *(v49 + 24) = v77;
        v78 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1BD1D7BB0(0, v28[2] + 1, 1, v28);
        }

        v80 = v28[2];
        v79 = v28[3];
        if (v80 >= v79 >> 1)
        {
          v28 = sub_1BD1D7BB0((v79 > 1), v80 + 1, 1, v28);
        }

        v28[2] = v80 + 1;
        v53 = &v28[2 * v80];
        goto LABEL_29;
      }

      v81 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE048964();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1BD1D7BB0(0, v28[2] + 1, 1, v28);
      }

      v83 = v28[2];
      v82 = v28[3];
      if (v83 >= v82 >> 1)
      {
        v28 = sub_1BD1D7BB0((v82 > 1), v83 + 1, 1, v28);
      }

      v28[2] = v83 + 1;
      v84 = &v28[2 * v83];
      v84[4] = sub_1BD87F038;
      v84[5] = v81;

      v85 = swift_allocObject();
      *(v85 + 16) = v12;
      v86 = swift_allocObject();
      *(v86 + 16) = sub_1BD87F040;
      *(v86 + 24) = v85;
      v87 = v28[2];
      v88 = v28[3];
      v89 = v12;
      if (v87 >= v88 >> 1)
      {
        v28 = sub_1BD1D7BB0((v88 > 1), v87 + 1, 1, v28);
      }

      v28[2] = v87 + 1;
      v90 = &v28[2 * v87];
      v90[4] = sub_1BD330914;
      v90[5] = v86;
    }

    else
    {
      sub_1BD632BE4();
      v71 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE048964();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1BD1D7BB0(0, v28[2] + 1, 1, v28);
      }

      v73 = v28[2];
      v72 = v28[3];
      if (v73 >= v72 >> 1)
      {
        v28 = sub_1BD1D7BB0((v72 > 1), v73 + 1, 1, v28);
      }

      v28[2] = v73 + 1;
      v74 = &v28[2 * v73];
      v74[4] = sub_1BD87F028;
      v74[5] = v71;
    }

    v60 = v95;
    goto LABEL_40;
  }

  if (v102 == 1)
  {
    v61 = swift_allocObject();
    *(v61 + 16) = v12;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1BD87EFD4;
    *(v49 + 24) = v61;
    v62 = v12;
    v28 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v64 = v28[2];
    v63 = v28[3];
    if (v64 >= v63 >> 1)
    {
      v28 = sub_1BD1D7BB0((v63 > 1), v64 + 1, 1, v28);
    }

    v28[2] = v64 + 1;
    v53 = &v28[2 * v64];
    goto LABEL_29;
  }

  if (v102 != 2)
  {
LABEL_23:
    v54 = swift_allocObject();
    *(v54 + 16) = v12;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_1BD87BEF0;
    *(v55 + 24) = v54;
    v56 = v12;
    v28 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v58 = v28[2];
    v57 = v28[3];
    if (v58 >= v57 >> 1)
    {
      v28 = sub_1BD1D7BB0((v57 > 1), v58 + 1, 1, v28);
    }

    v28[2] = v58 + 1;
    v59 = &v28[2 * v58];
    v59[4] = sub_1BD32E540;
    v59[5] = v55;
    v60 = v101;
LABEL_40:
    sub_1BD11326C(v60);
    goto LABEL_41;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v12;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1BD87EF58;
  *(v30 + 24) = v29;
  v31 = v12;
  v28 = sub_1BD1D7BB0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v33 = v28[2];
  v32 = v28[3];
  v34 = v33 + 1;
  if (v33 >= v32 >> 1)
  {
    v28 = sub_1BD1D7BB0((v32 > 1), v33 + 1, 1, v28);
  }

  v28[2] = v34;
  v35 = &v28[2 * v33];
  v35[4] = sub_1BD330914;
  v35[5] = v30;
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1BD87EF60;
  *(v37 + 24) = v36;
  v38 = v28[3];
  v39 = v31;
  if (v34 >= v38 >> 1)
  {
    v28 = sub_1BD1D7BB0((v38 > 1), v33 + 2, 1, v28);
  }

  v28[2] = v33 + 2;
  v40 = &v28[2 * v34];
  v40[4] = sub_1BD330914;
  v40[5] = v37;
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1BD87EFB0;
  *(v42 + 24) = v41;
  v43 = v28[2];
  v44 = v28[3];
  v45 = v39;
  if (v43 >= v44 >> 1)
  {
    v28 = sub_1BD1D7BB0((v44 > 1), v43 + 1, 1, v28);
  }

  v28[2] = v43 + 1;
  v46 = &v28[2 * v43];
  v46[4] = sub_1BD330914;
  v46[5] = v42;
  v27 = v93;
LABEL_41:
  sub_1BD113234(v27, v95);
  v75 = v96;
  sub_1BD11326C(v95);
  if (v75 >= 7)
  {
    sub_1BD51228C(v28, a2, v92);
  }

  else
  {
    sub_1BD5114BC(v28, a2, v92);
  }

  return sub_1BD11326C(v103);
}

uint64_t sub_1BD87A784(uint64_t (**a1)(void))
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BD878D88();
  }

  return v1();
}

uint64_t sub_1BD87A7F0(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v47 = sub_1BE051F54();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1BE051FA4();
  v48 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - v16;
  v56[0] = 1;
  v53 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(v56, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v42 = sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v18 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v19 = *(v10 + 8);
  v46 = v10 + 8;
  v41 = v19;
  v19(v13, v9);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  v54 = sub_1BD87F13C;
  v55 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1BD126964;
  v53 = &block_descriptor_196;
  v21 = _Block_copy(&aBlock);
  v35 = v2;

  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  v39 = sub_1BD14EC84();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  v40 = sub_1BD14ECDC();
  v22 = v47;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v17, v8, v5, v21);
  _Block_release(v21);

  v23 = *(v49 + 8);
  v49 += 8;
  v37 = v23;
  v23(v5, v22);
  v24 = *(v48 + 8);
  v48 += 8;
  v36 = v24;
  v25 = v43;
  v24(v8, v43);
  v34 = v9;
  v26 = v41;
  v41(v17, v9);
  v27 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v26(v13, v9);
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 16) = v35;
  v54 = sub_1BD87F144;
  v55 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1BD126964;
  v53 = &block_descriptor_98_1;
  v30 = _Block_copy(&aBlock);
  v31 = v29;

  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  v32 = v47;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v17, v8, v5, v30);
  _Block_release(v30);

  v37(v5, v32);
  v36(v8, v25);
  v26(v17, v34);
  sub_1BD87C3EC(v31, v44, v45);
  return sub_1BD87D074(v31);
}

uint64_t sub_1BD87ADB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    (*(v6 + 72))(v11, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1BD11326C(v11);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 24))(a1, a2, v10, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD87AEA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    sub_1BE048964();

    v8 = swift_allocObject();
    v8[2] = sub_1BD1839E0;
    v8[3] = v3;
    v8[4] = v6;
    sub_1BE048964();
    sub_1BD87A7F0(sub_1BD87F1E0, v8);
  }

  else
  {
    sub_1BE048964();
  }
}

void sub_1BD87AFE8(void (*a1)(void))
{
  a1();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD632BE4();
  }
}

uint64_t sub_1BD87B048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    memset(v11, 0, sizeof(v11));
    v12 = xmmword_1BE0B8E00;
    (*(v6 + 72))(v11, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1BD11326C(v11);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 32))(a1, a2, v10, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD87B144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(a1, a2, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD87B1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v32 = a3;
  v33 = a1;
  v34 = a2;
  v6 = sub_1BE051F54();
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FA4();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FC4();
  v31 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v30 - v21;
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v23 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v30 = *(v15 + 8);
  v30(v18, v14);
  v24 = swift_allocObject();
  v25 = v33;
  v26 = v34;
  v24[2] = v5;
  v24[3] = v25;
  v24[4] = v26;
  aBlock[4] = v35;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = v36;
  v27 = _Block_copy(aBlock);
  v28 = v5;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v22, v13, v9, v27);
  _Block_release(v27);

  (*(v39 + 8))(v9, v6);
  (*(v37 + 8))(v13, v38);
  return (v30)(v22, v31);
}

id sub_1BD87B56C(unint64_t a1, unint64_t a2)
{
  v61 = a1;
  v62 = a2;
  v68 = sub_1BE051F54();
  v71 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v3);
  v63 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  v69 = v5;
  v70 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FC4();
  v65 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54 - v16;
  v64 = *&v2[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_nodeBindings];
  v78[0] = 49;
  v75 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(v78, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v18 = objc_opt_self();
  [v18 begin];
  [v18 setAnimationDuration_];
  v78[0] = 22;
  v75 = MEMORY[0x1E69E63B0];
  aBlock = 0x3FB999999999999ALL;
  VFXNode.setBehaviorGraphValue(key:value:)(v78, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  [v18 commit];
  v59 = sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v19 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v20 = *(v10 + 8);
  v66 = v10 + 8;
  v67 = v20;
  v20(v13, v9);
  v21 = swift_allocObject();
  v22 = v61;
  v23 = v62;
  v21[2] = v2;
  v21[3] = v22;
  v21[4] = v23;
  v76 = sub_1BD87F1F8;
  v77 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_1BD126964;
  v75 = &block_descriptor_150_1;
  v24 = _Block_copy(&aBlock);
  v55 = v2;
  sub_1BE048964();

  v25 = v60;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  v61 = sub_1BD14EC84();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  v62 = sub_1BD14ECDC();
  v26 = v63;
  v27 = v68;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v17, v25, v26, v24);
  _Block_release(v24);

  v28 = *(v71 + 8);
  v71 += 8;
  v57 = v28;
  v28(v26, v27);
  v29 = *(v70 + 8);
  v70 += 8;
  v56 = v29;
  v29(v25, v69);
  v30 = v65;
  v31 = v67;
  v67(v17, v65);
  v32 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v31(v13, v30);
  v33 = swift_allocObject();
  v34 = v55;
  *(v33 + 16) = v55;
  v76 = sub_1BD87F224;
  v77 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_1BD126964;
  v75 = &block_descriptor_156;
  v35 = _Block_copy(&aBlock);
  v36 = v34;

  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  v37 = v68;
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v17, v25, v26, v35);
  _Block_release(v35);

  v57(v26, v37);
  v56(v25, v69);
  v67(v17, v65);
  [v18 begin];
  [v18 setAnimationDuration_];
  v38 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v39) = 1051260355;
  LODWORD(v40) = 1.0;
  LODWORD(v41) = 1.0;
  v42 = [v38 initWithControlPoints__:v39 :{0.0, v40, v41}];
  [v18 setAnimationTimingFunction_];

  v43 = swift_allocObject();
  *(v43 + 16) = v36;
  v76 = sub_1BD87F248;
  v77 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_1BD126964;
  v75 = &block_descriptor_162;
  v44 = _Block_copy(&aBlock);
  v45 = v36;

  [v18 setCompletionBlock_];
  _Block_release(v44);
  v78[0] = 48;
  v46 = MEMORY[0x1E69E6448];
  v75 = MEMORY[0x1E69E6448];
  LODWORD(aBlock) = 0x40000000;
  VFXNode.setBehaviorGraphValue(key:value:)(v78, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v78[0] = 2;
  v75 = v46;
  v47 = v46;
  LODWORD(aBlock) = 1110704128;
  VFXNode.setBehaviorGraphValue(key:value:)(v78, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  [v18 commit];
  [v18 begin];
  [v18 setAnimationDuration_];
  v48 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v49) = 1051361018;
  LODWORD(v50) = 1.0;
  LODWORD(v51) = 1.0;
  v52 = [v48 initWithControlPoints__:v49 :{0.0, v50, v51}];
  [v18 setAnimationTimingFunction_];

  v78[0] = 33;
  v75 = v47;
  LODWORD(aBlock) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v78, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v78[0] = 38;
  v75 = MEMORY[0x1E69E63B0];
  aBlock = 0x400C000000000000;
  VFXNode.setBehaviorGraphValue(key:value:)(v78, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  v78[0] = 35;
  v75 = v47;
  LODWORD(aBlock) = 1066192077;
  VFXNode.setBehaviorGraphValue(key:value:)(v78, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  [v18 commit];
  [v18 begin];
  [v18 setAnimationDuration_];
  v78[0] = 37;
  v75 = v47;
  LODWORD(aBlock) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(v78, &aBlock);
  sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
  return [v18 commit];
}

uint64_t sub_1BD87BF14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v19 = 26;
  v7 = MEMORY[0x1E69E6448];
  v16 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v19 = 36;
  v16 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v19 = 37;
  v16 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v19 = 49;
  v16 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v19 = 28;
  v16 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v19 = 5;
  v16 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v19 = 6;
  v16 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v19 = 7;
  v16 = v7;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v19 = 15;
  v16 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v19 = 1;
  v16 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v19 = 1;
  v16 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v19 = 1;
  v16 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v19 = 1;
  v16 = v7;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v19, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v17 = a1;
  v18 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v16 = &block_descriptor_214;
  v8 = _Block_copy(aBlock);
  sub_1BE048964();

  [v6 setCompletionBlock_];
  _Block_release(v8);
  [v6 commit];
  v9 = v3 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(PKEdgeInsetsMake, 0, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v9 + 8);
    v13 = swift_getObjectType();
    (*(v12 + 48))(PKEdgeInsetsMake, 0, v13, v12);
    swift_unknownObjectRelease();
  }

  return sub_1BD87B1E0(PKEdgeInsetsMake, 0, &unk_1F3BC1728, sub_1BD87F2C0, &block_descriptor_220);
}

id sub_1BD87C3EC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v20 = sub_1BD87F154;
  v21 = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v19 = &block_descriptor_110_3;
  v8 = _Block_copy(aBlock);
  v9 = a1;
  sub_1BE048964();

  [v6 setCompletionBlock_];
  _Block_release(v8);
  v17 = 1;
  v10 = MEMORY[0x1E69E6448];
  v19 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  [v6 commit];
  [v6 begin];
  [v6 setAnimationDuration_];
  v17 = 28;
  v19 = v10;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  [v6 commit];
  [v6 begin];
  [v6 setAnimationDuration_];
  v11 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v12) = 1051931443;
  LODWORD(v13) = 0.75;
  LODWORD(v14) = 1.0;
  v15 = [v11 initWithControlPoints__:0.0 :{v12, v13, v14}];
  [v6 setAnimationTimingFunction_];

  v17 = 27;
  v19 = v10;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v17 = 36;
  v19 = v10;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v17, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v6 commit];
}

id sub_1BD87C6CC()
{
  v0 = objc_opt_self();
  [v0 begin];
  v1 = [objc_opt_self() functionWithName_];
  [v0 setAnimationTimingFunction_];

  [v0 setAnimationDuration_];
  v5 = 51;
  v4 = MEMORY[0x1E69E6448];
  v3[0] = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v5, v3);
  sub_1BD0DE53C(v3, &qword_1EBD3EC90);
  return [v0 commit];
}

id sub_1BD87C7DC(void *a1)
{
  v2 = objc_opt_self();
  [v2 begin];
  v3 = [objc_opt_self() functionWithName_];
  [v2 setAnimationTimingFunction_];

  [v2 setAnimationDuration_];
  v12 = 28;
  v9 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v12, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v10 = sub_1BD87F1BC;
  v11 = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v9 = &block_descriptor_131_2;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 setCompletionBlock_];
  _Block_release(v5);
  return [v2 commit];
}

id sub_1BD87C990(uint64_t a1)
{
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setAnimationDuration_];
  v9 = 37;
  v3 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDissipateTextNodes;
  swift_beginAccess();
  v4 = *(a1 + v3);
  if (v4 >> 62)
  {
    v5 = sub_1BE053704();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x1E69E6448];
  v7[0] = (3600.0 / v5) + 130.0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v9, v7);
  sub_1BD0DE53C(v7, &qword_1EBD3EC90);
  v9 = 38;
  v8 = MEMORY[0x1E69E63B0];
  *v7 = 0x3FF0000000000000;
  VFXNode.setBehaviorGraphValue(key:value:)(&v9, v7);
  sub_1BD0DE53C(v7, &qword_1EBD3EC90);
  return [v2 commit];
}

id sub_1BD87CAF0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1051361018;
  LODWORD(v9) = 1060001284;
  LODWORD(v10) = 1.0;
  v11 = [v7 initWithControlPoints__:v8 :{0.0, v9, v10}];
  [v6 setAnimationTimingFunction_];

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v18 = sub_1BD87F1A4;
  v19 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v17 = &block_descriptor_116_0;
  v13 = _Block_copy(aBlock);
  a1;
  sub_1BE048964();

  [v6 setCompletionBlock_];
  _Block_release(v13);
  v15 = 3;
  v17 = MEMORY[0x1E69E63B0];
  aBlock[0] = 0x3FE6666666666666;
  VFXNode.setBehaviorGraphValue(key:value:)(&v15, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v6 commit];
}

id sub_1BD87CCD4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1044442094;
  LODWORD(v9) = 1046005731;
  LODWORD(v10) = 1065551187;
  v11 = [v7 initWithControlPoints__:v8 :{0.0, v9, v10}];
  [v6 setAnimationTimingFunction_];

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v18 = sub_1BD87F1B0;
  v19 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v17 = &block_descriptor_122_0;
  v13 = _Block_copy(aBlock);
  a1;
  sub_1BE048964();

  [v6 setCompletionBlock_];
  _Block_release(v13);
  v15 = 3;
  v17 = MEMORY[0x1E69E63B0];
  aBlock[0] = 0xBFB999999999999ALL;
  VFXNode.setBehaviorGraphValue(key:value:)(&v15, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v6 commit];
}

id sub_1BD87CEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  [v5 begin];
  [v5 setAnimationDuration_];
  v6 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v7) = 1046233901;
  LODWORD(v8) = 1039784739;
  LODWORD(v9) = 1047213690;
  LODWORD(v10) = 1.0;
  v11 = [v6 initWithControlPoints__:v7 :{v8, v9, v10}];
  [v5 setAnimationTimingFunction_];

  v18 = 3;
  v15 = MEMORY[0x1E69E63B0];
  aBlock[0] = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v18, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v16 = a2;
  v17 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v15 = &block_descriptor_125_2;
  v12 = _Block_copy(aBlock);
  sub_1BE048964();

  [v5 setCompletionBlock_];
  _Block_release(v12);
  return [v5 commit];
}

uint64_t sub_1BD87D074(void *a1)
{
  v27 = a1;
  v1 = sub_1BE051F54();
  v30 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FC4();
  v26 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v25 - v16;
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v18 = sub_1BE052D54();
  sub_1BE051FB4();
  sub_1BE051FF4();
  v19 = *(v10 + 8);
  v19(v13, v9);
  v20 = swift_allocObject();
  v21 = v27;
  *(v20 + 16) = v27;
  aBlock[4] = sub_1BD87F14C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_104_1;
  v22 = _Block_copy(aBlock);
  v23 = v21;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FD90](v17, v8, v4, v22);
  _Block_release(v22);

  (*(v30 + 8))(v4, v1);
  (*(v28 + 8))(v8, v29);
  return (v19)(v17, v26);
}

id sub_1BD87D3EC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state;
  swift_beginAccess();
  sub_1BD113234(a1 + v2, &v8);
  v6[0] = v8;
  v6[1] = v9;
  v7 = v10;
  v3 = *(&v9 + 1);
  result = sub_1BD11326C(v6);
  if (v3 <= 6)
  {
    v5 = objc_opt_self();
    [v5 begin];
    [v5 setAnimationDuration_];
    LOBYTE(v6[0]) = 1;
    *(&v9 + 1) = MEMORY[0x1E69E6448];
    LODWORD(v8) = 1065353216;
    VFXNode.setBehaviorGraphValue(key:value:)(v6, &v8);
    sub_1BD0DE53C(&v8, &qword_1EBD3EC90);
    return [v5 commit];
  }

  return result;
}

id sub_1BD87D4F8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state;
  swift_beginAccess();
  sub_1BD113234(v2 + v5, &aBlock);
  v30[0] = aBlock;
  v30[1] = v27;
  v31 = v28;
  v6 = *(&v27 + 1);
  result = sub_1BD11326C(v30);
  if (v6 <= 6)
  {
    v25 = a1;
    v8 = *(v2 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstA);
    [v8 setHidden_];
    [v8 setPaused_];
    v9 = *(v2 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstB);
    [v9 setHidden_];
    [v9 setPaused_];
    v10 = [v8 particleEmitter];
    [v10 killParticles];

    v11 = [v8 particleEmitter];
    [v11 restart];

    v12 = [v9 particleEmitter];
    [v12 killParticles];

    v13 = [v9 particleEmitter];
    [v13 restart];

    LODWORD(v14) = 1.0;
    [v8 setOpacity_];
    LODWORD(v15) = 1.0;
    [v9 setOpacity_];
    v16 = *(v2 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferStatusParticles);
    [v16 setHidden_];
    [v16 setPaused_];
    v17 = [v16 particleEmitter];
    [v17 killParticles];

    v18 = [v16 particleEmitter];
    [v18 restart];

    LOBYTE(v30[0]) = 4;
    v19 = MEMORY[0x1E69E6448];
    *(&v27 + 1) = MEMORY[0x1E69E6448];
    LODWORD(aBlock) = 0;
    VFXNode.setBehaviorGraphValue(key:value:)(v30, &aBlock);
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
    v20 = objc_opt_self();
    [v20 begin];
    [v20 setAnimationDuration_];
    v21 = [objc_opt_self() functionWithName_];
    [v20 setAnimationTimingFunction_];

    LOBYTE(v30[0]) = 22;
    *(&v27 + 1) = v19;
    LODWORD(aBlock) = 1043878380;
    VFXNode.setBehaviorGraphValue(key:value:)(v30, &aBlock);
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
    LOBYTE(v30[0]) = 1;
    *(&v27 + 1) = v19;
    LODWORD(aBlock) = 1065353216;
    VFXNode.setBehaviorGraphValue(key:value:)(v30, &aBlock);
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
    LOBYTE(v30[0]) = 2;
    *(&v27 + 1) = v19;
    LODWORD(aBlock) = 1125515264;
    VFXNode.setBehaviorGraphValue(key:value:)(v30, &aBlock);
    sub_1BD0DE53C(&aBlock, &qword_1EBD3EC90);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v25;
    v23[4] = a2;
    v28 = sub_1BD87F26C;
    v29 = v23;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v27 = sub_1BD126964;
    *(&v27 + 1) = &block_descriptor_169_1;
    v24 = _Block_copy(&aBlock);
    sub_1BE048964();

    [v20 setCompletionBlock_];
    _Block_release(v24);
    return [v20 commit];
  }

  return result;
}

uint64_t sub_1BD87D98C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state;
  swift_beginAccess();
  sub_1BD113234(v0 + v1, &v7);
  v5[0] = v7;
  v5[1] = v8;
  v6 = v9;
  v2 = *(&v8 + 1);
  result = sub_1BD11326C(v5);
  if (v2 <= 6)
  {
    [*(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRing) setHidden_];
    [*(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRingParticles) setHidden_];
    LOBYTE(v5[0]) = 1;
    v4 = MEMORY[0x1E69E6448];
    *(&v8 + 1) = MEMORY[0x1E69E6448];
    LODWORD(v7) = 1065353216;
    VFXNode.setBehaviorGraphValue(key:value:)(v5, &v7);
    sub_1BD0DE53C(&v7, &qword_1EBD3EC90);
    LOBYTE(v5[0]) = 1;
    *(&v8 + 1) = MEMORY[0x1E69E63B0];
    *&v7 = 0x3FF0000000000000;
    VFXNode.setBehaviorGraphValue(key:value:)(v5, &v7);
    sub_1BD0DE53C(&v7, &qword_1EBD3EC90);
    LOBYTE(v5[0]) = 11;
    *(&v8 + 1) = v4;
    LODWORD(v7) = 0;
    VFXNode.setBehaviorGraphValue(key:value:)(v5, &v7);
    sub_1BD0DE53C(&v7, &qword_1EBD3EC90);
    LOBYTE(v5[0]) = 15;
    *(&v8 + 1) = v4;
    LODWORD(v7) = 1106247680;
    VFXNode.setBehaviorGraphValue(key:value:)(v5, &v7);
    return sub_1BD0DE53C(&v7, &qword_1EBD3EC90);
  }

  return result;
}

uint64_t sub_1BD87DB2C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = swift_beginAccess();
  v5 = *(a1 + v3);
  if (v5 >> 62)
  {
    result = sub_1BE053704();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_1BE048C84();
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB40900](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = [v8 particleEmitter];
      [v10 killParticles];
    }

    while (v6 != v7);
  }

  return result;
}

void sub_1BD87DC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1BD87DCAC(a2, a3);
  }
}

id sub_1BD87DCAC(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setAnimationDuration_];
  v12 = 22;
  v5 = MEMORY[0x1E69E6448];
  v9 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v12, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v12 = 1;
  v9 = v5;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v12, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v10 = a1;
  v11 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v9 = &block_descriptor_172_0;
  v6 = _Block_copy(aBlock);
  sub_1BE048964();

  [v4 setCompletionBlock_];
  _Block_release(v6);
  return [v4 commit];
}

id sub_1BD87DE38(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1058670851;
  LODWORD(v9) = 1057422626;
  LODWORD(v10) = 1.0;
  v11 = [v7 initWithControlPoints__:v8 :{0.0, v9, v10}];
  [v6 setAnimationTimingFunction_];

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v18 = sub_1BD87F290;
  v19 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v17 = &block_descriptor_190_2;
  v13 = _Block_copy(aBlock);
  sub_1BD0D44B8(a1);
  a3;

  [v6 setCompletionBlock_];
  _Block_release(v13);
  v15 = 17;
  v17 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1066024305;
  VFXNode.setBehaviorGraphValue(key:value:)(&v15, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v6 commit];
}

id sub_1BD87E020(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1058665818;
  LODWORD(v9) = -1130005896;
  LODWORD(v10) = 1057152513;
  LODWORD(v11) = 1065520149;
  v12 = [v7 initWithControlPoints__:v8 :{v9, v10, v11}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v26 = sub_1BD87F29C;
  v27 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v25 = &block_descriptor_196;
  v14 = _Block_copy(aBlock);
  sub_1BD0D44B8(a1);
  v15 = a3;

  [v6 setCompletionBlock_];
  _Block_release(v14);
  [*&v15[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstA] setOpacity_];
  [*&v15[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstB] setOpacity_];
  v23 = 17;
  v16 = MEMORY[0x1E69E6448];
  v25 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1063675494;
  VFXNode.setBehaviorGraphValue(key:value:)(&v23, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v23 = 15;
  v25 = v16;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v23, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v23 = 2;
  v25 = v16;
  LODWORD(aBlock[0]) = 1120403456;
  VFXNode.setBehaviorGraphValue(key:value:)(&v23, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v23 = 5;
  v25 = v16;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v23, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v23 = 6;
  v25 = v16;
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v23, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v23 = 7;
  v25 = v16;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v23, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  [v6 commit];
  [v6 begin];
  [v6 setAnimationDuration_];
  v17 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v18) = 1036831949;
  LODWORD(v19) = 0.25;
  LODWORD(v20) = 1.0;
  v21 = [v17 initWithControlPoints__:v18 :{0.0, v19, v20}];
  [v6 setAnimationTimingFunction_];

  v23 = 4;
  v25 = v16;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v23, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v6 commit];
}

void sub_1BD87E410(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1057328674;
  LODWORD(v9) = -1172485806;
  LODWORD(v10) = 1059521456;
  LODWORD(v11) = 1064153645;
  v12 = [v7 initWithControlPoints__:v8 :{v9, v10, v11}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v19 = sub_1BD87F2A8;
  v20 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v18 = &block_descriptor_202_0;
  v14 = _Block_copy(aBlock);
  sub_1BD0D44B8(a1);
  a3;

  [v6 setCompletionBlock_];
  _Block_release(v14);
  v16 = 1;
  v15 = MEMORY[0x1E69E6448];
  v18 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 0;
  VFXNode.setBehaviorGraphValue(key:value:)(&v16, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  v16 = 17;
  v18 = v15;
  LODWORD(aBlock[0]) = 1065520988;
  VFXNode.setBehaviorGraphValue(key:value:)(&v16, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  [v6 commit];
  [v6 begin];
  [v6 setAnimationDuration_];
  v16 = 52;
  v18 = v15;
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v16, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  [v6 commit];
  AudioServicesPlaySystemSound(0x572u);
}

id sub_1BD87E6C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setAnimationDuration_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1053243421;
  LODWORD(v9) = -1100316934;
  LODWORD(v10) = 1059355361;
  LODWORD(v11) = 1065713926;
  v12 = [v7 initWithControlPoints__:v8 :{v9, v10, v11}];
  [v6 setAnimationTimingFunction_];

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v19 = sub_1BD87F2B4;
  v20 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v18 = &block_descriptor_208;
  v14 = _Block_copy(aBlock);
  sub_1BD0D44B8(a1);
  a3;

  [v6 setCompletionBlock_];
  _Block_release(v14);
  v16 = 17;
  v18 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065302884;
  VFXNode.setBehaviorGraphValue(key:value:)(&v16, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v6 commit];
}

id sub_1BD87E8C0(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setAnimationDuration_];
  v5 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v6) = 1053085716;
  LODWORD(v7) = 1045019230;
  LODWORD(v8) = 1059761370;
  LODWORD(v9) = 1.0;
  v10 = [v5 initWithControlPoints__:v6 :{v7, v8, v9}];
  [v4 setAnimationTimingFunction_];

  if (a1)
  {
    v14 = a1;
    v15 = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    v13 = &block_descriptor_211;
    a1 = _Block_copy(aBlock);
    sub_1BE048964();
  }

  [v4 setCompletionBlock_];
  _Block_release(a1);
  v16 = 17;
  v13 = MEMORY[0x1E69E6448];
  LODWORD(aBlock[0]) = 1065353216;
  VFXNode.setBehaviorGraphValue(key:value:)(&v16, aBlock);
  sub_1BD0DE53C(aBlock, &qword_1EBD3EC90);
  return [v4 commit];
}

uint64_t sub_1BD87EA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    (*(v6 + 72))(v11, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1BD11326C(v11);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 8))(a2, a3, v10, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD87EB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    memset(v11, 0, sizeof(v11));
    v12 = xmmword_1BE0B8DF0;
    (*(v6 + 72))(v11, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1BD11326C(v11);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 40))(a2, a3, v10, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD87EC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    memset(v11, 0, sizeof(v11));
    v12 = xmmword_1BE0B8E10;
    (*(v6 + 72))(v11, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1BD11326C(v11);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 56))(a2, a3, v10, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD87ED64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 64))(a2, a3, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD87EE00()
{
  sub_1BD11326C(v0 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state);
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate;

  return sub_1BD0D4534(v1);
}

id NearbyPeerPaymentSenderVFXViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD87F154()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1BD87C990(v1);

  return sub_1BD87CAF0(v1, v2, v3);
}

id sub_1BD87F37C()
{
  v0 = objc_allocWithZone(type metadata accessor for FundingSourceVerificationController());

  return [v0 init];
}

uint64_t type metadata accessor for SavingsBankVerificationView()
{
  result = qword_1EBD563C8;
  if (!qword_1EBD563C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD87F428()
{
  sub_1BD0E5E8C(319, &qword_1EBD3CCE0);
  if (v0 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD4E090);
    if (v1 <= 0x3F)
    {
      sub_1BD10EE48();
      if (v2 <= 0x3F)
      {
        sub_1BD87F514();
        if (v3 <= 0x3F)
        {
          sub_1BD170C00();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD87F514()
{
  if (!qword_1EBD563D8)
  {
    type metadata accessor for FundingSourceVerificationController();
    sub_1BD881494(&qword_1EBD563E0, type metadata accessor for FundingSourceVerificationController);
    v0 = sub_1BE04E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD563D8);
    }
  }
}

uint64_t sub_1BD87F5C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for SavingsBankVerificationView();
  sub_1BD0DE19C(v1 + *(v12 + 32), v11, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04E664();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

id sub_1BD87F7CC@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_1BE04BD74();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A98);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v44 = &v38 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A88);
  MEMORY[0x1EEE9AC00](v49, v8);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v42 = &v38 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56440);
  MEMORY[0x1EEE9AC00](v48, v13);
  v15 = (&v38 - v14);
  type metadata accessor for FundingSourceVerificationController();
  sub_1BD881494(&qword_1EBD563E0, type metadata accessor for FundingSourceVerificationController);
  v16 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v52)
  {

    v17 = sub_1BE04E3C4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    *v15 = v52;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42280);
    sub_1BD880F44(&qword_1EBD56428, sub_1BD248390);
    sub_1BD3CA07C();
    v18 = v50;
    sub_1BE04F9A4();
LABEL_6:
    v36 = 0;
LABEL_7:
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56420);
    return (*(*(v37 - 8) + 56))(v18, v36, 1, v37);
  }

  v19 = v45;
  v20 = v46;
  v21 = v47;
  v23 = v43;
  v22 = v44;
  v39 = v15;
  v24 = v49;
  v18 = v50;
  v25 = *(v1 + 24);
  LOBYTE(v52) = *(v1 + 16);
  v53 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v51 != 1)
  {
    v36 = 1;
    goto LABEL_7;
  }

  (*(v20 + 104))(v19, *MEMORY[0x1E69B80E0], v21);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6F4();
    v30 = v29;

    (*(v20 + 8))(v19, v21);
    v52 = v28;
    v53 = v30;
    sub_1BD0DDEBC();
    sub_1BE04E504();
    v31 = (v23 + *(v24 + 36));
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0) + 28);
    v33 = *MEMORY[0x1E697DC10];
    v34 = sub_1BE04E364();
    (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
    *v31 = swift_getKeyPath();
    (*(v40 + 32))(v23, v22, v41);
    v35 = v42;
    sub_1BD88121C(v23, v42);
    sub_1BD0DE19C(v35, v39, &qword_1EBD44A88);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42280);
    sub_1BD880F44(&qword_1EBD56428, sub_1BD248390);
    sub_1BD3CA07C();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v35, &qword_1EBD44A88);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD87FE38@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = sub_1BE04E664();
  v76 = *(v2 - 8);
  v77 = v2;
  v75 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v2, v3);
  v74 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v73 = &v63 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v71, v8);
  v70 = &v63 - v9;
  v10 = type metadata accessor for SavingsBankVerificationView();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = v13;
  v15 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD563E8);
  v64 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v63 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD563F0);
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v20);
  v65 = &v63 - v21;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD563F8);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v22);
  v86 = &v63 - v23;
  sub_1BD87F7CC(v19);
  sub_1BD880C28(v1, v15);
  v24 = *(v11 + 80);
  v25 = (v24 + 16) & ~v24;
  v79 = v14;
  v80 = v24;
  v26 = swift_allocObject();
  sub_1BD880C8C(v15, v26 + v25);
  v27 = &v19[*(v16 + 36)];
  *v27 = sub_1BD880CF0;
  v27[1] = v26;
  v27[2] = 0;
  v27[3] = 0;
  v28 = *(v1 + 32);
  v84 = *(v1 + 40);
  v85 = v28;
  v83 = *(v1 + 48);
  v78 = v1;
  v82 = type metadata accessor for FundingSourceVerificationController();
  v81 = sub_1BD881494(&qword_1EBD563E0, type metadata accessor for FundingSourceVerificationController);
  v29 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v30 = v87;
  v63 = v15;
  sub_1BD880C28(v1, v15);
  v31 = swift_allocObject();
  sub_1BD880C8C(v15, v31 + v25);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42280);
  v33 = sub_1BD880D78();
  v34 = sub_1BD880F44(&qword_1EBD56430, sub_1BD2482E0);
  v35 = v65;
  v36 = v64;
  sub_1BE051064();

  sub_1BD0DE53C(v19, &qword_1EBD563E8);
  v37 = v78;
  v38 = *(v78 + 24);
  LOBYTE(v87) = *(v78 + 16);
  v88 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  v39 = v37;
  v40 = v63;
  sub_1BD880C28(v39, v63);
  v41 = swift_allocObject();
  sub_1BD880C8C(v40, v41 + v25);
  v87 = v36;
  v88 = v32;
  v89 = v33;
  v90 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = MEMORY[0x1E69E6388];
  v44 = v66;
  sub_1BE051074();

  (*(v67 + 8))(v35, v44);
  v45 = sub_1BE04E3C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v46 = v70;
  sub_1BE04D8B4();

  sub_1BD880C28(v78, v40);
  v47 = swift_allocObject();
  sub_1BD880C8C(v40, v47 + v25);
  v87 = v44;
  v88 = MEMORY[0x1E69E6370];
  v89 = OpaqueTypeConformance2;
  v90 = v43;
  swift_getOpaqueTypeConformance2();
  sub_1BD2477C0();
  v48 = v72;
  v49 = v46;
  v50 = v68;
  v51 = v86;
  sub_1BE051074();

  sub_1BD0DE53C(v49, &qword_1EBD416C0);
  (*(v69 + 8))(v51, v50);
  v52 = sub_1BE04E3D4();
  swift_getKeyPath();
  v53 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56438) + 36);
  sub_1BE04E974();

  v54 = v73;
  sub_1BD87F5C4(v73);
  v55 = v77;
  v56 = v76 + 32;
  v57 = *(v76 + 32);
  v58 = v74;
  v57(v74, v54, v77);
  v59 = (*(v56 + 48) + 16) & ~*(v56 + 48);
  v60 = swift_allocObject();
  v57((v60 + v59), v58, v55);
  result = type metadata accessor for ErrorAlertModifier(0);
  v62 = (v53 + *(result + 20));
  *v62 = sub_1BD8811C0;
  v62[1] = v60;
  return result;
}

void sub_1BD880724(uint64_t a1, void *a2)
{
  v3 = sub_1BE04E664();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a2)
  {
    sub_1BD87F5C4(v7);
    sub_1BE04E654();
    (*(v4 + 8))(v7, v3);
  }
}

void sub_1BD880804()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v0 == 1)
  {
    sub_1BD880870();
  }
}

void sub_1BD880870()
{
  type metadata accessor for FundingSourceVerificationController();
  sub_1BD881494(&qword_1EBD563E0, type metadata accessor for FundingSourceVerificationController);
  v1 = sub_1BE04E3C4();
  v2 = &v1[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_applicationType];
  *v2 = 6;
  v2[8] = 0;

  v3 = sub_1BE04E3C4();
  v4 = &v3[OBJC_IVAR____TtC9PassKitUI35FundingSourceVerificationController_verificationType];
  *v4 = 2;
  v4[8] = 0;

  v5 = sub_1BE04E3C4();
  v6 = *v0;
  v7 = *&v5[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account];
  *&v5[OBJC_IVAR____TtC9PassKitUI20ApplyControllerModel_account] = *v0;
  v8 = v6;

  v9 = sub_1BE04E3C4();
  v10 = *(v0 + 8);
  v11 = *&v9[OBJC_IVAR____TtC9PassKitUI35FundingSourceVerificationController_fundingSource];
  *&v9[OBJC_IVAR____TtC9PassKitUI35FundingSourceVerificationController_fundingSource] = v10;
  v12 = v10;

  v13 = sub_1BE04E3C4();
  sub_1BD333918();
}

uint64_t sub_1BD880A7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();
}

uint64_t sub_1BD880AF8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  sub_1BD0DE19C(a1, &v15 - v10, &qword_1EBD416C0);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v11, v7, &qword_1EBD416C0);
  v13 = v12;
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v11, &qword_1EBD416C0);
}

uint64_t sub_1BD880C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsBankVerificationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD880C8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavingsBankVerificationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD880CF8(uint64_t a1, void *a2)
{
  type metadata accessor for SavingsBankVerificationView();

  sub_1BD880724(a1, a2);
}

unint64_t sub_1BD880D78()
{
  result = qword_1EBD56400;
  if (!qword_1EBD56400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD563E8);
    sub_1BD880E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56400);
  }

  return result;
}

unint64_t sub_1BD880E04()
{
  result = qword_1EBD56408;
  if (!qword_1EBD56408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56410);
    sub_1BD880E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56408);
  }

  return result;
}

unint64_t sub_1BD880E88()
{
  result = qword_1EBD56418;
  if (!qword_1EBD56418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56420);
    sub_1BD880F44(&qword_1EBD56428, sub_1BD248390);
    sub_1BD3CA07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56418);
  }

  return result;
}

uint64_t sub_1BD880F44(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42280);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BD880FBC()
{
  type metadata accessor for SavingsBankVerificationView();

  sub_1BD880804();
}

uint64_t objectdestroyTm_101()
{
  v1 = (type metadata accessor for SavingsBankVerificationView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1BD035CB4(*(v2 + 32), *(v2 + 40), *(v2 + 48));
  v3 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD88121C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD88128C()
{
  result = qword_1EBD56448;
  if (!qword_1EBD56448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD563F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD563F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD563E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42280);
    sub_1BD880D78();
    sub_1BD880F44(&qword_1EBD56430, sub_1BD2482E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD2477C0();
    swift_getOpaqueTypeConformance2();
    sub_1BD881494(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56448);
  }

  return result;
}

uint64_t sub_1BD881494(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BD8815D8()
{
  v1 = v0;
  v54 = *MEMORY[0x1E69E9840];
  *&v48 = sub_1BE04B8D4();
  v2 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v44 - v8;
  v47 = sub_1BE04B944();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04BAC4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_context);
  sub_1BE04BC34();
  v46 = sub_1BE04B9A4();
  (*(v14 + 8))(v17, v13);
  v19 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_product);
  sub_1BE04BB94();
  sub_1BE04B924();
  (*(v45 + 8))(v12, v47);
  v20 = v48;
  (*(v2 + 104))(v5, *MEMORY[0x1E69B7F80], v48);
  LOBYTE(v17) = sub_1BE04B8C4();
  v21 = *(v2 + 8);
  v21(v5, v20);
  v21(v9, v20);
  v22 = *(v1 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_fieldsModel);
  v23 = objc_allocWithZone(PKProvisioningReaderModeViewController);
  v24 = v1;
  v49 = v1;
  v25 = [v23 initWithContext:v46 product:v19 isWatch:v17 & 1 fieldsModel:v22 delegate:v1];
  sub_1BE052434();
  v50 = v18;
  v26 = sub_1BE04BB74();

  [v25 setReporter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v27 = sub_1BE04C384();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  v48 = xmmword_1BE0B69E0;
  *(v30 + 16) = xmmword_1BE0B69E0;
  *(v30 + v29) = [objc_allocWithZone(MEMORY[0x1E69B91F0]) init];
  (*(v28 + 104))(v30 + v29, *MEMORY[0x1E69B8290], v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0);
  *(swift_allocObject() + 16) = v48;
  sub_1BE04BB94();
  sub_1BE04C3D4();
  swift_allocObject();
  v31 = sub_1BE04C394();
  v32 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
  v33 = objc_allocWithZone(v32);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v53.receiver = v33;
  v53.super_class = v32;
  v34 = v25;
  v35 = objc_msgSendSuper2(&v53, &selRef_initWithCounterpartHandles_transactionSourceCollection_paymentDataProvider_);
  key = 0;
  objc_setAssociatedObject(v34, &key, v35, 1);
  LOBYTE(v12) = *(v24 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_termsAccepted);
  v36 = type metadata accessor for ProvisioningUICoordinator();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v38 = &v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
  v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v50;
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v31;
  swift_unknownObjectWeakAssign();
  *(v38 + 1) = &off_1F3BC1D90;
  swift_unknownObjectWeakAssign();
  v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = v12;
  v39 = v34;
  sub_1BE048964();
  sub_1BE048964();
  *&v37[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
  v51.receiver = v37;
  v51.super_class = v36;
  v40 = objc_msgSendSuper2(&v51, sel_init);

  *&v40[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BC1830;
  v41 = v49;
  swift_unknownObjectWeakAssign();
  v42 = *(v41 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_coordinator);
  *(v41 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_coordinator) = v40;

  return v25;
}

uint64_t sub_1BD881CF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD881D2C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD881D7C(uint64_t a1, void *a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult;
  v5 = *(v3 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult);
  *v4 = a2;
  v6 = *(v4 + 8);
  *(v4 + 8) = a3 & 1;
  sub_1BD585394(v5, v6);

  return a2;
}

uint64_t sub_1BD881DD4(void *a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v6 = sub_1BE04C384();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0B69E0;
  *(v9 + v8) = a2;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x1E69B82A8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0);
  sub_1BE04B944();
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  v10 = a2;
  sub_1BE04BB94();
  sub_1BE04C3D4();
  swift_allocObject();
  v11 = sub_1BE04C394();
  v12 = OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_coordinator;
  v13 = *(v3 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_coordinator);
  if (v13)
  {
    v14 = v13;
    sub_1BD81412C(v11);

    v15 = *(v3 + v12);
    if (v15)
    {
      v16 = v15;
      sub_1BD8145A8(a1);
    }
  }
}

uint64_t sub_1BD882194()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_coordinator);
  if (!v1)
  {
    return 0;
  }

  v2 = *&v1[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  v5 = sub_1BE04BC84();

  return v5;
}

uint64_t sub_1BD882248()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    memset(v5, 0, sizeof(v5));
    v6 = 2;
    sub_1BD865A00(v0, &off_1F3BC1840, v5, ObjectType, v3);
    swift_unknownObjectRelease();
    return sub_1BD12FF7C(v5);
  }

  return result;
}

void sub_1BD8822D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult + 8);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    v2 = v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_delegate;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v0, &off_1F3BC1840, ObjectType, v3);
    goto LABEL_7;
  }

  v5 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_context);
  objc_allocWithZone(type metadata accessor for ProvisioningPassIngestionSection());
  sub_1BE048964();
  sub_1BD8733EC(v5, v1);
  v10 = sub_1BD989980(v6, v5);

  v7 = v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    v9 = swift_getObjectType();
    sub_1BD865948(v0, &off_1F3BC1840, v10, &off_1F3BC8F80, v9, v8);
    sub_1BD585394(v5, v1);

LABEL_7:

    swift_unknownObjectRelease();
    return;
  }

  sub_1BD585394(v5, v1);
}

void sub_1BD882488()
{
  v1 = sub_1BE04B944();
  MEMORY[0x1EEE9AC00](v1, v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult);
  v8 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult + 8);
  if (v8 != 255)
  {
    v9 = *v7;
    if (v8)
    {
      v29 = *v7;
      sub_1BD8826F8();
      sub_1BD412688();
      swift_willThrowTypedImpl();
      return;
    }

    v24 = (v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_provisioningResult);
    v25 = v9;
    v26 = v8;
    v27 = v4;
    v28 = v3;
    v10 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningReaderModeReadCardFlowItem_context);
    v9;
    v23[1] = v10;
    sub_1BE04BB94();
    v11 = sub_1BE04BD44();
    v12 = v11;
    if (v11 >> 62)
    {
      v13 = sub_1BE053704();
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_6:
        if (v13 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v13; ++i)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1BFB40900](i, v12);
          }

          else
          {
            v15 = *(v12 + 8 * i + 32);
          }

          v16 = v15;
          v17 = sub_1BE04B934();
          if ([v17 respondsToSelector_])
          {
            v18 = sub_1BE04B8E4();
            [v17 paymentWebService:v18 removePass:v16 withCompletionHandler:0];
          }

          swift_unknownObjectRelease();
        }
      }
    }

    v19 = v24;
    v20 = *v24;
    *v24 = 0;
    v21 = *(v19 + 8);
    *(v19 + 8) = -1;
    sub_1BD585394(v20, v21);
    v22 = sub_1BE04BBD4();
    [v22 resetForNewProvisioningForce_];

    sub_1BD585394(v25, v26);
    (*(v27 + 8))(v6, v28);
  }
}

unint64_t sub_1BD8826F8()
{
  result = qword_1EBD45AD0[0];
  if (!qword_1EBD45AD0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EBD45AD0);
  }

  return result;
}

void sub_1BD88278C()
{
  sub_1BD3DE6D8();
  if (v0 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v1 <= 0x3F)
    {
      sub_1BD8828D4(319, &qword_1EBD36A40, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PKPaymentRewardsRedemptionStatus(319);
        if (v3 <= 0x3F)
        {
          sub_1BD8828D4(319, &qword_1EBD56518, sub_1BD3DE6D8);
          if (v4 <= 0x3F)
          {
            sub_1BD8828D4(319, &qword_1EBD45140, MEMORY[0x1E6968FB0]);
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

void sub_1BD8828D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD882970()
{
  result = type metadata accessor for PaymentRewardsDetailItem(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD8829F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1BE050474();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BE04FF64();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56608);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v46 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56610);
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v13);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56618);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16, v18);
  v51 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v46 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56620);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v46 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v46 - v29;
  *v30 = sub_1BE04F7C4();
  *(v30 + 1) = 0;
  v30[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56628);
  sub_1BD882FA4(a1, &v30[*(v31 + 44)]);
  *v12 = sub_1BE04F504();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56630);
  sub_1BD883AA4(a1, &v12[*(v32 + 44)]);
  sub_1BE04FF44();
  v33 = sub_1BD0DE4F4(&qword_1EBD56638, &qword_1EBD56608);
  sub_1BE050D14();
  (*(v48 + 8))(v8, v50);
  sub_1BD0DE53C(v12, &qword_1EBD56608);
  sub_1BE052434();
  v56 = v9;
  v57 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v47;
  sub_1BE050DE4();

  (*(v49 + 8))(v15, v34);
  v36 = v52;
  v35 = v53;
  v37 = v54;
  (*(v53 + 104))(v52, *MEMORY[0x1E6980EF8], v54);
  sub_1BE0503A4();
  v38 = sub_1BE050284();
  (*(v35 + 8))(v36, v37);
  KeyPath = swift_getKeyPath();
  v40 = &v23[*(v17 + 44)];
  *v40 = KeyPath;
  v40[1] = v38;
  v41 = v46;
  sub_1BD0DE19C(v30, v46, &qword_1EBD56620);
  v42 = v51;
  sub_1BD0DE19C(v23, v51, &qword_1EBD56618);
  v43 = v55;
  sub_1BD0DE19C(v41, v55, &qword_1EBD56620);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56640);
  sub_1BD0DE19C(v42, v43 + *(v44 + 48), &qword_1EBD56618);
  sub_1BD0DE53C(v23, &qword_1EBD56618);
  sub_1BD0DE53C(v30, &qword_1EBD56620);
  sub_1BD0DE53C(v42, &qword_1EBD56618);
  return sub_1BD0DE53C(v41, &qword_1EBD56620);
}

uint64_t sub_1BD882FA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v81 = a2;
  v73 = sub_1BE04FF64();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v3);
  v68 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56608);
  MEMORY[0x1EEE9AC00](v70, v5);
  v66 = (&v65 - v6);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56610);
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v7);
  v69 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56670);
  v10 = *(v9 - 8);
  v78 = v9;
  v79 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v67 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56678);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v80 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v76 = &v65 - v18;
  v19 = sub_1BE050474();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56648);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v77 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v82 = &v65 - v29;
  v83 = sub_1BD886824(*a1);
  v84 = v30;
  sub_1BD0DDEBC();
  v31 = sub_1BE0506C4();
  v33 = v32;
  v35 = v34;
  (*(v20 + 104))(v23, *MEMORY[0x1E6980EF8], v19);
  sub_1BE0503A4();
  sub_1BE050284();
  (*(v20 + 8))(v23, v19);
  v36 = sub_1BE0505F4();
  v38 = v37;
  LOBYTE(v19) = v39;
  v41 = v40;

  sub_1BD0DDF10(v31, v33, v35 & 1);

  v83 = v36;
  v84 = v38;
  v85 = v19 & 1;
  v42 = 1;
  v86 = v41;
  v87 = 1;
  v88 = 0x3FE0000000000000;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56650);
  sub_1BD886744();
  v43 = v75;
  sub_1BE050DE4();

  sub_1BD0DDF10(v36, v38, v19 & 1);

  v44 = *(v43 + 32);
  if (v44)
  {
    v45 = *(v43 + 24);
    v46 = sub_1BE04F504();
    v47 = v66;
    *v66 = v46;
    *(v47 + 8) = 0;
    *(v47 + 16) = 1;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56630);
    sub_1BD883730(v43, v45, v44, v47 + *(v48 + 44));
    v49 = v68;
    sub_1BE04FF44();
    v50 = sub_1BD0DE4F4(&qword_1EBD56638, &qword_1EBD56608);
    v52 = v69;
    v51 = v70;
    sub_1BE050D14();
    (*(v71 + 8))(v49, v73);
    sub_1BD0DE53C(v47, &qword_1EBD56608);
    sub_1BE052434();
    v83 = v51;
    v84 = v50;
    swift_getOpaqueTypeConformance2();
    v53 = v67;
    v54 = v74;
    sub_1BE050DE4();

    (*(v72 + 8))(v52, v54);
    v55 = sub_1BE04FC94();
    v56 = v78;
    *(v53 + *(v78 + 36)) = v55;
    v57 = v76;
    sub_1BD0BD04C(v53, v76);
    v42 = 0;
    v58 = v56;
  }

  else
  {
    v58 = v78;
    v57 = v76;
  }

  (*(v79 + 56))(v57, v42, 1, v58);
  v59 = v82;
  v60 = v77;
  sub_1BD0DE19C(v82, v77, &qword_1EBD56648);
  v61 = v80;
  sub_1BD0DE19C(v57, v80, &qword_1EBD56678);
  v62 = v81;
  sub_1BD0DE19C(v60, v81, &qword_1EBD56648);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56680);
  sub_1BD0DE19C(v61, v62 + *(v63 + 48), &qword_1EBD56678);
  sub_1BD0DE53C(v57, &qword_1EBD56678);
  sub_1BD0DE53C(v59, &qword_1EBD56648);
  sub_1BD0DE53C(v61, &qword_1EBD56678);
  return sub_1BD0DE53C(v60, &qword_1EBD56648);
}

uint64_t sub_1BD883730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a3;
  v44 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v41 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56648);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - v16;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v45 = v18;
  v46 = v19;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v20 = sub_1BE0506C4();
  v22 = v21;
  v45 = v20;
  v46 = v21;
  v24 = v23 & 1;
  v47 = v23 & 1;
  v48 = v25;
  v49 = 1;
  v50 = 0x3FE0000000000000;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56650);
  sub_1BD886744();
  sub_1BE050DE4();

  sub_1BD0DDF10(v20, v22, v24);

  v45 = v39;
  v46 = v40;
  sub_1BE048C84();
  v26 = sub_1BE0506C4();
  v28 = v27;
  v45 = v26;
  v46 = v27;
  v30 = v29 & 1;
  v47 = v29 & 1;
  v48 = v31;
  sub_1BE052434();
  v32 = v41;
  sub_1BE050DE4();

  sub_1BD0DDF10(v26, v28, v30);

  v33 = v42;
  sub_1BD0DE19C(v17, v42, &qword_1EBD56648);
  v34 = v43;
  sub_1BD0DE19C(v32, v43, &qword_1EBD452C0);
  v35 = v44;
  sub_1BD0DE19C(v33, v44, &qword_1EBD56648);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56668);
  v37 = v35 + *(v36 + 48);
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_1BD0DE19C(v34, v35 + *(v36 + 64), &qword_1EBD452C0);
  sub_1BD0DE53C(v32, &qword_1EBD452C0);
  sub_1BD0DE53C(v17, &qword_1EBD56648);
  sub_1BD0DE53C(v34, &qword_1EBD452C0);
  return sub_1BD0DE53C(v33, &qword_1EBD56648);
}

id sub_1BD883AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v62 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v61 = &v59 - v7;
  v8 = sub_1BE050474();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56648);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v60 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v65 = &v59 - v24;
  (*(v14 + 104))(v17, *MEMORY[0x1E69B8088], v13, v23);
  result = PKPassKitBundle();
  if (result)
  {
    v26 = result;
    v27 = sub_1BE04B6F4();
    v29 = v28;

    (*(v14 + 8))(v17, v13);
    v66 = v27;
    v67 = v29;
    sub_1BD0DDEBC();
    v30 = sub_1BE0506C4();
    v32 = v31;
    v34 = v33;
    (*(v9 + 104))(v12, *MEMORY[0x1E6980EF8], v8);
    sub_1BE0503A4();
    sub_1BE050284();
    (*(v9 + 8))(v12, v8);
    v35 = sub_1BE0505F4();
    v37 = v36;
    v39 = v38;
    v41 = v40;

    sub_1BD0DDF10(v30, v32, v34 & 1);

    v66 = v35;
    v67 = v37;
    v68 = v39 & 1;
    v69 = v41;
    v70 = 1;
    v71 = 0x3FE0000000000000;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56650);
    sub_1BD886744();
    sub_1BE050DE4();

    sub_1BD0DDF10(v35, v37, v39 & 1);

    result = [*(v64 + 40) formattedStringValue];
    if (result)
    {
      v42 = result;
      v43 = sub_1BE052434();
      v45 = v44;

      v66 = v43;
      v67 = v45;
      v46 = sub_1BE0506C4();
      v48 = v47;
      v66 = v46;
      v67 = v47;
      v50 = v49 & 1;
      v68 = v49 & 1;
      v69 = v51;
      sub_1BE052434();
      v52 = v61;
      sub_1BE050DE4();

      sub_1BD0DDF10(v46, v48, v50);

      v53 = v65;
      v54 = v60;
      sub_1BD0DE19C(v65, v60, &qword_1EBD56648);
      v55 = v63;
      sub_1BD0DE19C(v52, v63, &qword_1EBD452C0);
      v56 = v62;
      sub_1BD0DE19C(v54, v62, &qword_1EBD56648);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56668);
      v58 = v56 + *(v57 + 48);
      *v58 = 0;
      *(v58 + 8) = 1;
      sub_1BD0DE19C(v55, v56 + *(v57 + 64), &qword_1EBD452C0);
      sub_1BD0DE53C(v52, &qword_1EBD452C0);
      sub_1BD0DE53C(v53, &qword_1EBD56648);
      sub_1BD0DE53C(v55, &qword_1EBD452C0);
      return sub_1BD0DE53C(v54, &qword_1EBD56648);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD884058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565F8);
  sub_1BD0DE4F4(&qword_1EBD56600, &qword_1EBD565F8);
  return sub_1BE0504E4();
}

id sub_1BD884110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  v2 = type metadata accessor for RedemptionStatusLinkButton(0);
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v10 = *(v25 - 8);
  v12 = MEMORY[0x1EEE9AC00](v25, v11);
  v14 = &v23 - v13;
  (*(v6 + 104))(v9, *MEMORY[0x1E69B8088], v5, v12);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v6 + 8))(v9, v5);
    v27 = v17;
    v28 = v19;
    sub_1BD886380(v24, &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v21 = swift_allocObject();
    sub_1BD886CA4(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    sub_1BD0DDEBC();
    sub_1BE051744();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    v22 = v25;
    sub_1BE050DE4();

    return (*(v10 + 8))(v14, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD884444(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15 - v4;
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v5, &unk_1EBD3CF70);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1BD0DE53C(v5, &unk_1EBD3CF70);
  }

  (*(v7 + 32))(v10, v5, v6);
  v12 = [objc_opt_self() sharedApplication];
  v13 = sub_1BE04A9C4();
  sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD6A6C48(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey);
  v14 = sub_1BE052224();

  [v12 openURL:v13 options:v14 completionHandler:0];

  return (*(v7 + 8))(v10, v6);
}

id sub_1BD8846A8@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v38 - v3;
  v5 = sub_1BE050474();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v15, *MEMORY[0x1E69B8088], v10, v13);
  result = PKPassKitBundle();
  if (result)
  {
    v17 = result;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    (*(v11 + 8))(v15, v10);
    v40 = v18;
    v41 = v20;
    sub_1BD0DDEBC();
    v21 = sub_1BE0506C4();
    v23 = v22;
    LOBYTE(v18) = v24;
    (*(v6 + 104))(v9, *MEMORY[0x1E6980F30], v5);
    v25 = sub_1BE050354();
    (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
    sub_1BE0503C4();
    sub_1BD0DE53C(v4, &qword_1EBD49130);
    (*(v6 + 8))(v9, v5);
    v26 = sub_1BE0505F4();
    v28 = v27;
    v30 = v29;

    sub_1BD0DDF10(v21, v23, v18 & 1);

    v40 = sub_1BE051494();
    v31 = sub_1BE050574();
    v33 = v32;
    LOBYTE(v18) = v34;
    v36 = v35;
    sub_1BD0DDF10(v26, v28, v30 & 1);

    v37 = v39;
    *v39 = v31;
    v37[1] = v33;
    *(v37 + 16) = v18 & 1;
    v37[3] = v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD884A50()
{
  sub_1BD8846A8(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
  sub_1BD35CEE0();
  return sub_1BE051A54();
}

uint64_t sub_1BD884ADC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_1BE04FF64();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04F434();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56530);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56538);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56540);
  v21 = *(v20 - 8);
  v34 = v20;
  v35 = v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v32 - v23;
  *v14 = sub_1BE04F7B4();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56548);
  sub_1BD884F30(v2, &v14[*(v25 + 44)]);
  (*(v7 + 104))(v10, *MEMORY[0x1E697C438], v6);
  v26 = sub_1BD0DE4F4(&qword_1EBD56550, &qword_1EBD56530);
  sub_1BE050E84();
  (*(v7 + 8))(v10, v6);
  sub_1BD0DE53C(v14, &qword_1EBD56530);
  v27 = v36;
  sub_1BE04FF54();
  v40 = v11;
  v41 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v32;
  sub_1BE050D14();
  (*(v37 + 8))(v27, v38);
  (*(v33 + 8))(v19, v29);
  sub_1BE052434();
  v40 = v29;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = v34;
  sub_1BE050DE4();

  return (*(v35 + 8))(v24, v30);
}

uint64_t sub_1BD884F30@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56558);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v3);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v51 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56560);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56568);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56570);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v48 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v48 - v28;
  *v11 = sub_1BE04F7B4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56578);
  sub_1BD885424(a1, &v11[*(v30 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v11, v16, &qword_1EBD56560);
  v31 = &v16[*(v13 + 44)];
  v32 = v60;
  *(v31 + 4) = v59;
  *(v31 + 5) = v32;
  *(v31 + 6) = v61;
  v33 = v56;
  *v31 = v55;
  *(v31 + 1) = v33;
  v34 = v58;
  *(v31 + 2) = v57;
  *(v31 + 3) = v34;
  v35 = [objc_opt_self() systemGroupedBackgroundColor];
  v36 = sub_1BE0511C4();
  LOBYTE(v13) = sub_1BE0501D4();
  sub_1BD0DE204(v16, v25, &qword_1EBD56568);
  v37 = &v25[*(v18 + 44)];
  *v37 = v36;
  v37[8] = v13;
  v48 = v29;
  sub_1BD0DE204(v25, v29, &qword_1EBD56570);
  v54 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56580);
  sub_1BD0DE4F4(&qword_1EBD56588, &qword_1EBD56580);
  v38 = v51;
  sub_1BE0504A4();
  v39 = v21;
  sub_1BD0DE19C(v29, v21, &qword_1EBD56570);
  v40 = v49;
  v41 = *(v49 + 16);
  v42 = v52;
  v43 = v50;
  v41(v52, v38, v50);
  v44 = v53;
  sub_1BD0DE19C(v39, v53, &qword_1EBD56570);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56590);
  v41((v44 + *(v45 + 48)), v42, v43);
  v46 = *(v40 + 8);
  v46(v38, v43);
  sub_1BD0DE53C(v48, &qword_1EBD56570);
  v46(v42, v43);
  return sub_1BD0DE53C(v39, &qword_1EBD56570);
}

id sub_1BD885424@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565C0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v48 - v19;
  result = [*a1 formattedStringValue];
  if (result)
  {
    v22 = result;
    v49 = a1;
    v50 = v4;
    v51 = v20;
    v52 = v15;
    v53 = a2;
    v54 = v7;
    v23 = sub_1BE052434();
    v25 = v24;

    v55 = v23;
    v56 = v25;
    sub_1BD0DDEBC();
    v26 = sub_1BE0506C4();
    v28 = v27;
    v30 = v29;
    result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], 2, 0, *MEMORY[0x1E69DB980]);
    if (result)
    {
      v31 = result;
      v32 = [result fontWithSize_];

      sub_1BE050484();
      v33 = sub_1BE0505F4();
      v35 = v34;
      v37 = v36;
      v39 = v38;

      sub_1BD0DDF10(v26, v28, v30 & 1);

      v55 = v33;
      v56 = v35;
      v57 = v37 & 1;
      v58 = v39;
      sub_1BE052434();
      v40 = v51;
      sub_1BE050DE4();

      sub_1BD0DDF10(v33, v35, v37 & 1);

      sub_1BD885814(v49, v11);
      v41 = sub_1BE050324();
      KeyPath = swift_getKeyPath();
      v43 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565C8) + 36)];
      *v43 = KeyPath;
      v43[1] = v41;
      *&v11[*(v50 + 36)] = sub_1BE04FC94();
      v44 = v52;
      sub_1BD0DE19C(v40, v52, &qword_1EBD452C0);
      v45 = v54;
      sub_1BD0DE19C(v11, v54, &qword_1EBD565C0);
      v46 = v53;
      sub_1BD0DE19C(v44, v53, &qword_1EBD452C0);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565D0);
      sub_1BD0DE19C(v45, v46 + *(v47 + 48), &qword_1EBD565C0);
      sub_1BD0DE53C(v11, &qword_1EBD565C0);
      sub_1BD0DE53C(v40, &qword_1EBD452C0);
      sub_1BD0DE53C(v45, &qword_1EBD565C0);
      return sub_1BD0DE53C(v44, &qword_1EBD452C0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD885814(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v58 - v5;
  v7 = sub_1BE04AF64();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v65 = &v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v61 = *(v16 - 8);
  v62 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v64 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v59 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v58 - v24;
  v26 = type metadata accessor for PaymentRewardsDetailItem(0);
  v27 = (a1 + *(v26 + 40));
  v28 = v27[1];
  v70 = *v27;
  v71 = v28;
  v29 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v58 = v29;
  v30 = sub_1BE0506C4();
  v32 = v31;
  v70 = v30;
  v71 = v31;
  v34 = v33 & 1;
  v72 = v33 & 1;
  v73 = v35;
  sub_1BE052434();
  v63 = v25;
  sub_1BE050DE4();

  sub_1BD0DDF10(v30, v32, v34);
  v36 = v68;
  v37 = v69;

  sub_1BD0DE19C(a1 + *(v26 + 24), v6, &unk_1EBD39970);
  if ((*(v36 + 48))(v6, 1, v37) == 1)
  {
    sub_1BD0DE53C(v6, &unk_1EBD39970);
    v38 = 1;
    v39 = v65;
LABEL_5:
    (*(v61 + 56))(v39, v38, 1, v62);
    v53 = v63;
    v54 = v64;
    sub_1BD0DE19C(v63, v64, &qword_1EBD452C0);
    v55 = v66;
    sub_1BD0DE19C(v39, v66, &unk_1EBD5BB60);
    v56 = v67;
    sub_1BD0DE19C(v54, v67, &qword_1EBD452C0);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47228);
    sub_1BD0DE19C(v55, v56 + *(v57 + 48), &unk_1EBD5BB60);
    sub_1BD0DE53C(v39, &unk_1EBD5BB60);
    sub_1BD0DE53C(v53, &qword_1EBD452C0);
    sub_1BD0DE53C(v55, &unk_1EBD5BB60);
    sub_1BD0DE53C(v54, &qword_1EBD452C0);
    return;
  }

  v40 = v60;
  (*(v36 + 32))(v60, v6, v37);
  v41 = sub_1BE04AE64();
  v42 = PKShortDateString();

  if (v42)
  {
    v43 = sub_1BE052434();
    v45 = v44;

    v70 = v43;
    v71 = v45;
    v46 = sub_1BE0506C4();
    v48 = v47;
    v70 = v46;
    v71 = v47;
    v50 = v49 & 1;
    v72 = v49 & 1;
    v73 = v51;
    sub_1BE052434();
    v52 = v59;
    sub_1BE050DE4();

    sub_1BD0DDF10(v46, v48, v50);

    (*(v36 + 8))(v40, v37);
    v39 = v65;
    sub_1BD0DE204(v52, v65, &qword_1EBD452C0);
    v38 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1BD885D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v45 = a2;
  v3 = type metadata accessor for RedemptionStatusLinkButton(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v43 = &v40 - v8;
  v9 = sub_1BE04F5B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56598);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v42 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v40 - v20;
  v46 = a1;
  sub_1BD182C40();
  sub_1BD886208();
  sub_1BE051A24();
  sub_1BE04F594();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565A8) + 36);
  (*(v10 + 16))(&v21[v22], v13, v9);
  v23 = *(v10 + 56);
  v23(&v21[v22], 0, 1, v9);
  KeyPath = swift_getKeyPath();
  v25 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565B0) + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580) + 28);
  (*(v10 + 32))(v25 + v26, v13, v9);
  v23(v25 + v26, 0, 1, v9);
  *v25 = KeyPath;
  v27 = &v21[*(v15 + 44)];
  __asm { FMOV            V0.2D, #16.0 }

  *v27 = _Q0;
  *(v27 + 1) = _Q0;
  v27[32] = 0;
  v33 = type metadata accessor for PaymentRewardsDetailItem(0);
  v34 = v43;
  sub_1BD0DE19C(v41 + *(v33 + 36), v43, &unk_1EBD3CF70);
  v35 = v42;
  sub_1BD0DE19C(v21, v42, &qword_1EBD56598);
  v36 = v44;
  sub_1BD886380(v34, v44);
  v37 = v45;
  sub_1BD0DE19C(v35, v45, &qword_1EBD56598);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD565B8);
  sub_1BD886380(v36, v37 + *(v38 + 48));
  sub_1BD8863E4(v34);
  sub_1BD0DE53C(v21, &qword_1EBD56598);
  sub_1BD8863E4(v36);
  return sub_1BD0DE53C(v35, &qword_1EBD56598);
}

uint64_t sub_1BD88615C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PaymentRewardsDetailItem(0);
  v5 = *(a1 + *(v4 + 28));
  v6 = (a1 + *(v4 + 44));
  v7 = *v6;
  v8 = v6[1];
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = *a1;
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v9;
  a2[5] = v11;
  sub_1BE048C84();
  v12 = v11;

  return sub_1BE048C84();
}

unint64_t sub_1BD886208()
{
  result = qword_1EBD565A0;
  if (!qword_1EBD565A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD565A0);
  }

  return result;
}

uint64_t sub_1BD88625C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  KeyPath = swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD566A8);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD566B0) + 36);
  *v9 = KeyPath;
  *(v9 + 8) = v5;
  *(v9 + 16) = 0;
  v10 = swift_getKeyPath();
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD566B8) + 36);
  *v11 = v10;
  *(v11 + 8) = 1;
  v12 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD566C0);
  v14 = (a2 + *(result + 36));
  *v14 = v12;
  v14[1] = v6;
  return result;
}

uint64_t sub_1BD886380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedemptionStatusLinkButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD8863E4(uint64_t a1)
{
  v2 = type metadata accessor for RedemptionStatusLinkButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD886468()
{
  sub_1BD8828D4(319, &qword_1EBD45140, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1BD8864F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD886538(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1BD886594()
{
  result = qword_1EBD565E8;
  if (!qword_1EBD565E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD565F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56530);
    sub_1BD0DE4F4(&qword_1EBD56550, &qword_1EBD56530);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD6A6C48(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD565E8);
  }

  return result;
}

unint64_t sub_1BD886744()
{
  result = qword_1EBD56658;
  if (!qword_1EBD56658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56650);
    sub_1BD8867D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56658);
  }

  return result;
}

unint64_t sub_1BD8867D0()
{
  result = qword_1EBD56660;
  if (!qword_1EBD56660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56660);
  }

  return result;
}

id sub_1BD886824(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v33 - v21;
  v27.n128_f64[0] = MEMORY[0x1EEE9AC00](v23, v24);
  v28 = &v33 - v25;
  v34 = v29;
  if (a1 > 3)
  {
    if ((a1 - 5) >= 2)
    {
      if (a1 == 4)
      {
        (*(v3 + 104))(v14, *MEMORY[0x1E69B8088], v26, v27.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v31 = result;
          v32 = sub_1BE04B6F4();
          v28 = v14;
          goto LABEL_19;
        }

        goto LABEL_23;
      }

      goto LABEL_15;
    }

    (*(v3 + 104))(v10, *MEMORY[0x1E69B8088], v26, v27.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v31 = result;
      v32 = sub_1BE04B6F4();
      v28 = v10;
      goto LABEL_19;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a1 == 1)
  {
    (*(v3 + 104))(&v33 - v25, *MEMORY[0x1E69B8088], v26, v27.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v31 = result;
      v32 = sub_1BE04B6F4();
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      (*(v3 + 104))(v18, *MEMORY[0x1E69B8088], v26, v27.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v31 = result;
        v32 = sub_1BE04B6F4();
        v28 = v18;
LABEL_19:

        (*(v3 + 8))(v28, v34);
        return v32;
      }

      goto LABEL_24;
    }

LABEL_15:
    (*(v3 + 104))(v6, *MEMORY[0x1E69B8088], v26, v27);
    result = PKPassKitBundle();
    if (result)
    {
      v31 = result;
      v32 = sub_1BE04B6F4();
      v28 = v6;
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  (*(v3 + 104))(v22, *MEMORY[0x1E69B8088], v26, v27.n128_f64[0]);
  result = PKPassKitBundle();
  if (result)
  {
    v31 = result;
    v32 = sub_1BE04B6F4();
    v28 = v22;
    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BD886CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedemptionStatusLinkButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD886D08()
{
  v1 = *(type metadata accessor for RedemptionStatusLinkButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD884444(v2);
}

unint64_t sub_1BD886D78()
{
  result = qword_1EBD56698;
  if (!qword_1EBD56698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD566A0);
    sub_1BD35CEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56698);
  }

  return result;
}

unint64_t sub_1BD886E2C()
{
  result = qword_1EBD566C8;
  if (!qword_1EBD566C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD566C0);
    sub_1BD886EE4();
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD566C8);
  }

  return result;
}

unint64_t sub_1BD886EE4()
{
  result = qword_1EBD566D0;
  if (!qword_1EBD566D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD566B8);
    sub_1BD886F9C();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD566D0);
  }

  return result;
}

unint64_t sub_1BD886F9C()
{
  result = qword_1EBD566D8;
  if (!qword_1EBD566D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD566B0);
    sub_1BD0DE4F4(&unk_1EBD566E0, &qword_1EBD566A8);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD566D8);
  }

  return result;
}

void sub_1BD887084(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = [*a1 contactProperty];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v5 contact];

  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = [v7 identifier];
  if (!v8)
  {
    sub_1BE052434();
    v8 = sub_1BE052404();
  }

  sub_1BD8873C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56750);
  v9 = sub_1BE052724();

  v19[0] = 0;
  v10 = [a2 unifiedContactWithIdentifier:v8 keysToFetch:v9 error:v19];

  if (v10)
  {
    v11 = v19[0];
    v12 = v10;
    v13 = sub_1BD2A68F8(v19, v12);

    if ((v13 & 1) == 0)
    {

LABEL_13:
LABEL_14:
      v10 = 0;
      goto LABEL_15;
    }

    v14 = [v12 postalAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
    v15 = sub_1BE052744();

    if (v15 >> 62)
    {
      v16 = sub_1BE053704();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v16)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = v19[0];
    v18 = sub_1BE04A854();

    swift_willThrow();
  }

LABEL_15:
  *a3 = v10;
}

uint64_t static ContactFavorites.requiredKeysForMonogram.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0FF570;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  return v0;
}

uint64_t sub_1BD8873C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0FF580;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 72) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 80) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 88) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 96) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 104) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  return v0;
}

uint64_t sub_1BD8875B0(unint64_t a1, void *a2)
{
  v14 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB40900](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v13 = v7;
      sub_1BD887084(&v13, a2, &v12);
      if (v2)
      {

        return v6;
      }

      if (v12)
      {
        MEMORY[0x1BFB3F7A0]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v6 = v14;
      }

      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t _s9PassKitUI16ContactFavoritesO9favoritesSaySo9CNContactCGyFZ_0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 entries];

  sub_1BD88782C();
  v2 = sub_1BE052744();

  v3 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v4 = sub_1BD8875B0(v2, v3);

  return v4;
}

unint64_t sub_1BD88782C()
{
  result = qword_1EBD4DF60;
  if (!qword_1EBD4DF60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4DF60);
  }

  return result;
}

uint64_t type metadata accessor for AccountLegalDisclosureSheet()
{
  result = qword_1EBD56758;
  if (!qword_1EBD56758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD8878EC()
{
  type metadata accessor for PKFeatureIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_1BD170C00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD88798C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56778);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v48 - v11;
  v49 = sub_1BE04F7B4();
  v51 = 0;
  sub_1BD887D1C(&v66);
  v54 = *&v67[2];
  v55[0] = *&v67[4];
  *(v55 + 9) = *(&v67[5] + 1);
  v52 = v66;
  v53 = *v67;
  v56[2] = *&v67[2];
  v57[0] = *&v67[4];
  *(v57 + 9) = *(&v67[5] + 1);
  v56[0] = v66;
  v56[1] = *v67;
  sub_1BD0DE19C(&v52, &v58, &qword_1EBD40828);
  sub_1BD0DE53C(v56, &qword_1EBD40828);
  *(&v50[1] + 7) = v53;
  *(&v50[2] + 7) = v54;
  *(&v50[3] + 7) = v55[0];
  v50[4] = *(v55 + 9);
  *(v50 + 7) = v52;
  v13 = v51;
  v14 = sub_1BE050234();
  sub_1BE04E1F4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v66) = 0;
  v23 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  *v12 = sub_1BE04F504();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56780);
  sub_1BD887FAC(a1, &v12[*(v32 + 44)]);
  LOBYTE(a1) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v33 = &v12[*(v5 + 44)];
  *v33 = a1;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  sub_1BD0BD338(v12, v8);
  v38 = v49;
  *&v58 = v49;
  *(&v58 + 1) = 0x4032000000000000;
  LOBYTE(v59[0]) = v13;
  *(&v59[4] + 1) = v50[4];
  *(&v59[1] + 1) = v50[1];
  *(&v59[2] + 1) = v50[2];
  *(&v59[3] + 1) = v50[3];
  *(v59 + 1) = v50[0];
  BYTE8(v59[5]) = v14;
  *&v60 = v16;
  *(&v60 + 1) = v18;
  *&v61 = v20;
  *(&v61 + 1) = v22;
  LOBYTE(v62) = 0;
  BYTE8(v62) = v23;
  *&v63 = v25;
  *(&v63 + 1) = v27;
  *&v64 = v29;
  *(&v64 + 1) = v31;
  v65 = 0;
  *(a2 + 192) = 0;
  v39 = v59[2];
  *(a2 + 32) = v59[1];
  *(a2 + 48) = v39;
  v40 = v59[0];
  *a2 = v58;
  *(a2 + 16) = v40;
  v41 = v59[3];
  v42 = v59[4];
  v43 = v60;
  *(a2 + 96) = v59[5];
  *(a2 + 112) = v43;
  *(a2 + 64) = v41;
  *(a2 + 80) = v42;
  v44 = v62;
  *(a2 + 128) = v61;
  *(a2 + 144) = v44;
  v45 = v64;
  *(a2 + 160) = v63;
  *(a2 + 176) = v45;
  *(a2 + 200) = 0;
  *(a2 + 208) = 1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56788);
  sub_1BD0BD338(v8, a2 + *(v46 + 64));
  sub_1BD0DE19C(&v58, &v66, &qword_1EBD56790);
  sub_1BD0BD3A8(v12);
  sub_1BD0BD3A8(v8);
  *(&v67[2] + 1) = v50[1];
  *(&v67[4] + 1) = v50[2];
  *(&v67[6] + 1) = v50[3];
  *(&v67[8] + 1) = v50[4];
  *&v66 = v38;
  *(&v66 + 1) = 0x4032000000000000;
  LOBYTE(v67[0]) = v13;
  *(v67 + 1) = v50[0];
  v68 = v14;
  v69 = v16;
  v70 = v18;
  v71 = v20;
  v72 = v22;
  v73 = 0;
  v74 = v23;
  v75 = v25;
  v76 = v27;
  v77 = v29;
  v78 = v31;
  v79 = 0;
  return sub_1BD0DE53C(&v66, &qword_1EBD56790);
}

void sub_1BD887D1C(uint64_t a1@<X8>)
{
  v2 = sub_1BE052404();
  v3 = PKLocalizedFeatureString();

  if (v3)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    v4 = sub_1BE0506C4();
    v6 = v5;
    v8 = v7;
    sub_1BE050294();
    v9 = sub_1BE0505F4();
    v11 = v10;
    v13 = v12;

    sub_1BD0DDF10(v4, v6, v8 & 1);

    v14 = sub_1BE0505D4();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_1BD0DDF10(v9, v11, v13 & 1);

    v21 = sub_1BE052404();
    v22 = PKLocalizedFeatureString();

    if (v22)
    {
      sub_1BE052434();

      v23 = sub_1BE0506C4();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      KeyPath = swift_getKeyPath();
      *a1 = v14;
      *(a1 + 8) = v16;
      *(a1 + 16) = v18 & 1;
      *(a1 + 24) = v20;
      *(a1 + 32) = v23;
      *(a1 + 40) = v25;
      *(a1 + 48) = v27 & 1;
      *(a1 + 56) = v29;
      *(a1 + 64) = KeyPath;
      *(a1 + 72) = 1;
      sub_1BD0D7F18(v14, v16, v18 & 1);
      sub_1BE048C84();
      sub_1BD0D7F18(v23, v25, v27 & 1);
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BD0DDF10(v23, v25, v27 & 1);

      sub_1BD0DDF10(v14, v16, v18 & 1);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD887FAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = a1;
  v52 = a2;
  v2 = sub_1BE050014();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v49 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccountLegalDisclosureSheet();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v43 = v7;
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56798);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v47 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v41 - v23;
  (*(v9 + 104))(v12, *MEMORY[0x1E69B80F0], v8, v22);
  result = PKPassKitBundle();
  if (result)
  {
    v26 = result;
    v27 = sub_1BE04B6F4();
    v29 = v28;

    (*(v9 + 8))(v12, v8);
    v53 = v27;
    v54 = v29;
    v30 = v44;
    sub_1BD8887FC(v46, v44);
    v31 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v32 = swift_allocObject();
    sub_1BD888860(v30, v32 + v31);
    sub_1BD0DDEBC();
    sub_1BE051744();
    v33 = v49;
    sub_1BE050004();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    sub_1BD888924();
    v34 = v48;
    v35 = v51;
    sub_1BE050894();
    (*(v50 + 8))(v33, v35);
    (*(v45 + 8))(v15, v34);
    v36 = *(v17 + 16);
    v37 = v47;
    v36(v47, v24, v16);
    v38 = v52;
    *v52 = 0;
    *(v38 + 8) = 1;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD567A0);
    v36(v38 + *(v39 + 48), v37, v16);
    v40 = *(v17 + 8);
    v40(v24, v16);
    return (v40)(v37, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8884C0(uint64_t a1)
{
  v19 = sub_1BE04F3D4();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v18 - v8;
  v10 = sub_1BE04E664();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccountLegalDisclosureSheet();
  sub_1BD0DE19C(a1 + *(v15 + 20), v9, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_1BE052C44();
    v16 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_1BE04E654();
  return (*(v11 + 8))(v14, v10);
}

double sub_1BD888748@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BE04F7B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56768);
  sub_1BD88798C(v1, a1 + *(v3 + 44));
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56770) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_1BD8887FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountLegalDisclosureSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD888860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountLegalDisclosureSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD8888C4()
{
  v1 = *(type metadata accessor for AccountLegalDisclosureSheet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD8884C0(v2);
}

unint64_t sub_1BD888924()
{
  result = qword_1EBD366F0;
  if (!qword_1EBD366F0)
  {
    sub_1BE050014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD366F0);
  }

  return result;
}

unint64_t sub_1BD88897C()
{
  result = qword_1EBD567A8;
  if (!qword_1EBD567A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56770);
    sub_1BD0DE4F4(&qword_1EBD567B0, &qword_1EBD567B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD567A8);
  }

  return result;
}

uint64_t sub_1BD888B38()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v60[-v9];
  v11 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_method];
  v12 = [v11 type];
  if (v12 > 7)
  {
    goto LABEL_30;
  }

  if (((1 << v12) & 0xF3) == 0)
  {
    if (v12 == 2)
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        v16 = v11;
        if ([v15 direction] == 1)
        {
          v17 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_reporter];
          if (v17)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1BE0B69E0;
            v19 = *MEMORY[0x1E69BB430];
            *(inited + 32) = *MEMORY[0x1E69BB430];
            v20 = v19;
            v21 = [v16 debugTypeDescription];
            v22 = sub_1BE052434();
            v24 = v23;

            *(inited + 40) = v22;
            *(inited + 48) = v24;
            sub_1BD1AAF50(inited);
            swift_setDeallocating();
            sub_1BD0DE53C(inited + 32, &qword_1EBD3F590);
            type metadata accessor for PKAnalyticsKey(0);
            sub_1BD1F0E18();
            v25 = sub_1BE052224();

            [v17 reportViewAppearedWithContext_];
          }

          [*&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_verificationController] completeVerificationUsingOutboundCall];
        }
      }

      return 2;
    }

    v26 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_verificationController];
    if ([v26 isBankAppInstalled])
    {
      v27 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_reporter];
      if (v27)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
        v28 = swift_initStackObject();
        *(v28 + 16) = xmmword_1BE0B69E0;
        v29 = *MEMORY[0x1E69BB430];
        *(v28 + 32) = *MEMORY[0x1E69BB430];
        v30 = v29;
        v31 = [v11 debugTypeDescription];
        v32 = sub_1BE052434();
        v34 = v33;

        *(v28 + 40) = v32;
        *(v28 + 48) = v34;
        sub_1BD1AAF50(v28);
        swift_setDeallocating();
        sub_1BD0DE53C(v28 + 32, &qword_1EBD3F590);
        type metadata accessor for PKAnalyticsKey(0);
        sub_1BD1F0E18();
        v35 = sub_1BE052224();

        [v27 reportViewAppearedWithContext_];
      }

      [v26 launchBankApp];
      return 2;
    }

    v36 = [v26 bankAppStoreID];
    if (!v36)
    {
      sub_1BE04D0C4();
      v57 = sub_1BE04D204();
      v58 = sub_1BE052C54();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_1BD026000, v57, v58, "No matching app installed and no app matching app found in store. There was possibly a store lookup error.", v59, 2u);
        MEMORY[0x1BFB45F20](v59, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
      return 2;
    }

    v37 = v36;
    v38 = [objc_allocWithZone(PKStoreProductViewPresenter) initWithProductDelegate_];
    [v38 loadProductForItemIdentifier:v37 customProductPageIdentifier:0];
    v39 = &v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_delegate];
    if (!swift_unknownObjectWeakLoadStrong() || (v40 = *(v39 + 1), ObjectType = swift_getObjectType(), v42 = v0, v43 = (*(v40 + 32))(v0, &off_1F3BC1A80, ObjectType, v40), v45 = v44, swift_unknownObjectRelease(), !v43) || (v46 = swift_getObjectType(), v47 = (*(v45 + 56))(v46, v45), swift_unknownObjectRelease(), !v47))
    {
      sub_1BE04D0C4();
      v54 = sub_1BE04D204();
      v55 = sub_1BE052C54();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_1BD026000, v54, v55, "External verification failed to access presenter for App Store.", v56, 2u);
        MEMORY[0x1BFB45F20](v56, -1, -1);
      }

      (*(v2 + 8))(v10, v1);
      return 2;
    }

    v48 = swift_allocObject();
    *(v48 + 16) = v42;
    *(v48 + 24) = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1BD8897A4;
    *(v49 + 24) = v48;
    aBlock[4] = sub_1BD8897AC;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD889468;
    aBlock[3] = &block_descriptor_197;
    v50 = _Block_copy(aBlock);
    v51 = v42;
    v52 = v47;
    sub_1BE048964();

    [v38 presentStoreViewWithBlock_];

    _Block_release(v50);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return 1;
    }

    __break(1u);
LABEL_30:
    result = sub_1BE053994();
    __break(1u);
    return result;
  }

  return 2;
}

void sub_1BD88927C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a4 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_reporter);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v12 = *MEMORY[0x1E69BB430];
    *(inited + 32) = *MEMORY[0x1E69BB430];
    v13 = *(a4 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_method);
    v14 = v12;
    v15 = [v13 debugTypeDescription];
    v16 = sub_1BE052434();
    v18 = v17;

    *(inited + 40) = v16;
    *(inited + 48) = v18;
    sub_1BD1AAF50(inited);
    swift_setDeallocating();
    sub_1BD0DE53C(inited + 32, &qword_1EBD3F590);
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD1F0E18();
    v19 = sub_1BE052224();

    [v9 reportViewAppearedWithContext_];
  }

  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_12_7;
  v20 = _Block_copy(aBlock);
  sub_1BE048964();

  [a5 presentViewController:a1 animated:1 completion:v20];
  _Block_release(v20);
}

void sub_1BD889468(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;
  v6 = a2;
  v4();
}

uint64_t sub_1BD889510()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD88954C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD889598(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_verificationController);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1BD19E0B8;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1BD126964;
  v8[3] = &block_descriptor_18_1;
  v7 = _Block_copy(v8);
  sub_1BE048964();

  [v5 performStoreLookupForBankAppWithCompletion_];
  _Block_release(v7);
}

uint64_t sub_1BD889688(void *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v2 = v1 + OBJC_IVAR____TtC9PassKitUI40ProvisioningExternalVerificationFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    memset(v6, 0, sizeof(v6));
    v7 = 2;
    sub_1BD865A00(v1, &off_1F3BC1A80, v6, ObjectType, v4);
    swift_unknownObjectRelease();
    return sub_1BD0DE53C(v6, &unk_1EBD3F510);
  }

  return result;
}

void sub_1BD889BEC()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 hideActivitySpinner];
  [v0 setHidesBackButton:1 animated:0];
  v8 = [v0 navigationItem];
  v9 = [v8 leftBarButtonItem];

  if (!v9)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41C40);
    sub_1BD0E5E8C(0, &qword_1EBD3ECB0);
    *(swift_allocObject() + 16) = v1;
    v10 = v1;
    sub_1BE0530B4();
    v11 = sub_1BE052C74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BE0B7020;
    *(v12 + 32) = v11;
    v13 = v11;
    v9 = sub_1BE052724();

    [v10 _setLeftBarButtonItems_animated_];
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    (*(v3 + 104))(v7, *MEMORY[0x1E69B80D8], v2);
    sub_1BE04B714();
    (*(v3 + 8))(v7, v2);
    v14 = sub_1BE052404();

    [v1 setPrimaryButtonTitleText_];
  }

  else
  {
    [v1 setShowPrimaryButton_];
    sub_1BD0E5E8C(0, &qword_1EBD41C40);
    sub_1BD0E5E8C(0, &qword_1EBD3ECB0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE0530B4();
    v15 = sub_1BE052C74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BE0B7020;
    *(v16 + 32) = v15;
    v17 = v15;
    v20 = sub_1BE052724();

    [v1 _setRightBarButtonItems_animated_];

    v18 = v20;
  }
}

uint64_t sub_1BD88A058()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong addAutoFillCardCancelled_];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD88A0DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD88A130();
  }
}

void sub_1BD88A130()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_fields];
    if (*&v0[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_primaryAccountIdentifier + 8])
    {
      v4 = v3;
      sub_1BE048C84();
      v5 = sub_1BE052404();
    }

    else
    {
      v6 = v3;
      v5 = 0;
    }

    if (*&v0[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_passUniqueIdentifier + 8])
    {
      sub_1BE048C84();
      v7 = sub_1BE052404();
    }

    else
    {
      v7 = 0;
    }

    if (*&v0[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_displayablePaymentCredentialType + 8])
    {
      sub_1BE048C84();
      v8 = sub_1BE052404();
    }

    else
    {
      v8 = 0;
    }

    v12 = PKAutoFillCardDescriptorPairFrom();

    if (v12)
    {
      [v0 showActivitySpinnerWithTitle:0 subtitle:0];
      v9 = [v12 descriptor];
      v10 = [v12 credential];
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        [v11 addAutoFillCardFinishedWith:v9 credential:v10 viewController:v2];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1BD88A73C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(v2 + OBJC_IVAR___PKAddAutoFillCardViewController_fieldsModel);
    sub_1BD9F46CC(a2, v4);

    sub_1BD88AA80();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1BD88A898()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result addAutoFillCardCancelled_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD88A8FC(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result addAutoFillCardCancelled_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD88A964()
{
  v1 = [v0 topViewController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for AutofillManualEntryViewController();
    if (swift_dynamicCastClass())
    {
      sub_1BD889BEC();
    }
  }
}

void sub_1BD88AA80()
{
  v18 = *&v0[OBJC_IVAR___PKAddAutoFillCardViewController_webService];
  v19 = *&v0[OBJC_IVAR___PKAddAutoFillCardViewController_context];
  v1 = *&v0[OBJC_IVAR___PKAddAutoFillCardViewController_fieldsModel];
  v3 = *&v0[OBJC_IVAR___PKAddAutoFillCardViewController_primaryAccountIdentifier];
  v2 = *&v0[OBJC_IVAR___PKAddAutoFillCardViewController_primaryAccountIdentifier + 8];
  v5 = *&v0[OBJC_IVAR___PKAddAutoFillCardViewController_passUniqueIdentifier];
  v4 = *&v0[OBJC_IVAR___PKAddAutoFillCardViewController_passUniqueIdentifier + 8];
  v7 = *&v0[OBJC_IVAR___PKAddAutoFillCardViewController_displayablePaymentCredentialType];
  v6 = *&v0[OBJC_IVAR___PKAddAutoFillCardViewController_displayablePaymentCredentialType + 8];
  v8 = type metadata accessor for AutofillManualEntryViewController();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_manualEntryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v9[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_primaryAccountIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v9[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_passUniqueIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v9[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_displayablePaymentCredentialType];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v9[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_fields] = v1;
  *v10 = v3;
  *(v10 + 1) = v2;
  *v11 = v5;
  *(v11 + 1) = v4;
  *v12 = v7;
  *(v12 + 1) = v6;
  v13 = v1;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v14 = v13;
  v15 = v18;

  v20.receiver = v9;
  v20.super_class = v8;
  v16 = objc_msgSendSuper2(&v20, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v15, v19, 0, v14);
  if (v16)
  {
    v17 = v16;

    *&v17[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_manualEntryDelegate + 8] = &off_1F3BC1BF0;
    swift_unknownObjectWeakAssign();
    [v0 pushViewController:v17 animated:1];
  }

  else
  {
    __break(1u);
  }
}

id AddAutoFillCardViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id AddAutoFillCardViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id AddAutoFillCardViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_1BD88AED4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BD88AFA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = objc_allocWithZone(type metadata accessor for AddAutoFillCardViewController());

  sub_1BD88B048(a1, a2, a3, a4, a5, a6, a7, a8, a9, v18);
}

void sub_1BD88B048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  v13 = OBJC_IVAR___PKAddAutoFillCardViewController_context;
  *&a10[OBJC_IVAR___PKAddAutoFillCardViewController_context] = 0;
  swift_unknownObjectWeakInit();
  v14 = &a10[OBJC_IVAR___PKAddAutoFillCardViewController_primaryAccountIdentifier];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &a10[OBJC_IVAR___PKAddAutoFillCardViewController_passUniqueIdentifier];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &a10[OBJC_IVAR___PKAddAutoFillCardViewController_displayablePaymentCredentialType];
  *v16 = 0;
  *(v16 + 1) = 0;
  swift_unknownObjectWeakAssign();
  *&a10[OBJC_IVAR___PKAddAutoFillCardViewController_webService] = a1;
  v41 = a2;
  *&a10[v13] = a2;
  v17 = a1;
  v18 = sub_1BD88B610();
  sub_1BD3F0574(v18);

  v19 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
  v20 = sub_1BE052724();

  v21 = [v19 initWithPaymentSetupFields_];

  if (v21)
  {
    v22 = OBJC_IVAR___PKAddAutoFillCardViewController_fieldsModel;
    *&a10[OBJC_IVAR___PKAddAutoFillCardViewController_fieldsModel] = v21;
    *v14 = a4;
    *(v14 + 1) = a5;
    sub_1BE048C84();

    *v15 = a6;
    *(v15 + 1) = a7;
    sub_1BE048C84();

    *v16 = a8;
    *(v16 + 1) = a9;
    sub_1BE048C84();

    v23 = objc_allocWithZone(PKPaymentCameraCaptureViewController);
    v24 = v17;
    v25 = [v23 initWithWebService:v24 context:v41];
    if (v25)
    {
      v26 = v25;

      swift_unknownObjectRelease();
      [v26 configureForModalPresentation];
      [v26 setShowTypeCardNumberButton_];
      v42.receiver = a10;
      v42.super_class = type metadata accessor for AddAutoFillCardViewController();
      v27 = objc_msgSendSuper2(&v42, sel_initWithRootViewController_, v26);
      [v26 setFlowItemDelegate_];

LABEL_6:
      return;
    }

    v28 = *&a10[v22];
    v29 = type metadata accessor for AutofillManualEntryViewController();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_manualEntryDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v31 = &v30[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_primaryAccountIdentifier];
    *v31 = 0;
    *(v31 + 1) = 0;
    v32 = &v30[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_passUniqueIdentifier];
    *v32 = 0;
    *(v32 + 1) = 0;
    v33 = &v30[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_displayablePaymentCredentialType];
    *v33 = 0;
    *(v33 + 1) = 0;
    *&v30[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_fields] = v28;
    *v31 = a4;
    *(v31 + 1) = a5;
    *v32 = a6;
    *(v32 + 1) = a7;
    *v33 = a8;
    *(v33 + 1) = a9;
    v34 = v28;
    v35 = v24;
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE048C84();
    v36 = v34;

    v44.receiver = v30;
    v44.super_class = v29;
    v24 = objc_msgSendSuper2(&v44, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v35, v41, 0, v36);

    if (v24)
    {

      swift_unknownObjectRelease();
      v43.receiver = a10;
      v43.super_class = type metadata accessor for AddAutoFillCardViewController();
      objc_msgSendSuper2(&v43, sel_initWithRootViewController_, v24);

      *&v24[OBJC_IVAR____TtC9PassKitUIP33_1468669D2D95B1C429D5ECCF8200656633AutofillManualEntryViewController_manualEntryDelegate + 8] = &off_1F3BC1BF0;
      swift_unknownObjectWeakAssign();
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD88B610()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7CC0];
  v5 = [objc_allocWithZone(MEMORY[0x1E69B8DF8]) init];
  MEMORY[0x1BFB3F7A0]([v5 setOptional_]);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v6 = [objc_allocWithZone(MEMORY[0x1E69B8E18]) init];

  v7 = v6;
  MEMORY[0x1BFB3F7A0]();
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v8 = [objc_allocWithZone(MEMORY[0x1E69B8DE0]) init];

  v9 = v8;
  MEMORY[0x1BFB3F7A0]([v9 setOptional_]);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v10 = [objc_allocWithZone(MEMORY[0x1E69B8DF0]) init];

  v11 = v10;
  MEMORY[0x1BFB3F7A0]([v11 setOptional_]);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  v12 = [objc_allocWithZone(MEMORY[0x1E69B8E08]) init];

  (*(v1 + 104))(v4, *MEMORY[0x1E69B80D8], v0);
  v13 = v12;
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    sub_1BE04B6F4();

    (*(v1 + 8))(v4, v0);
    v16 = sub_1BE052404();

    [v13 setLocalizedDisplayName_];

    MEMORY[0x1BFB3F7A0]([v13 setOptional_]);
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UIProvisioningStep.RadioActivityStep.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

void *sub_1BD88BB00(unsigned __int8 *a1, char a2)
{
  v3 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = v3 - 4;
    if ((v3 - 4) >= 9)
    {
      v5 = 5;
    }

    [result didTransitionTo:v5 loading:a2 & 1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD88BB8C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didUpdateFieldModel];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1BD88BBF0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result showWithProvisioningError_];

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL _s9PassKitUI18UIProvisioningStepO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 7)
  {
    if (*a1 > 5u)
    {
      if (v2 == 6)
      {
        return v3 == 6;
      }

      if (v2 == 7)
      {
        return v3 == 7;
      }
    }

    else
    {
      if (v2 == 4)
      {
        return v3 == 4;
      }

      if (v2 == 5)
      {
        return v3 == 5;
      }
    }
  }

  else if (*a1 <= 9u)
  {
    if (v2 == 8)
    {
      return v3 == 8;
    }

    if (v2 == 9)
    {
      return v3 == 9;
    }
  }

  else
  {
    switch(v2)
    {
      case 0xAu:
        return v3 == 10;
      case 0xBu:
        return v3 == 11;
      case 0xCu:
        return v3 == 12;
    }
  }

  if ((v3 - 4) < 9)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_1BD88BD74()
{
  result = qword_1EBD568E0;
  if (!qword_1EBD568E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD568E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UIProvisioningStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_20;
  }

  v2 = a2 + 12;
  if (a2 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 12;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 12;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0xA)
  {
    return v8 - 9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UIProvisioningStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 12;
  if (a3 + 12 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF4)
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BD88BF20(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1BD88BF34(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t type metadata accessor for AccountInformationView()
{
  result = qword_1EBD568F0;
  if (!qword_1EBD568F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD88C038()
{
  sub_1BD2D63D4();
  if (v0 <= 0x3F)
  {
    sub_1BD3C9E00();
    if (v1 <= 0x3F)
    {
      sub_1BD10EE48();
      if (v2 <= 0x3F)
      {
        sub_1BD7A8880(319, &qword_1EBD3E9B0, &qword_1EBD416C0, &unk_1BE0BC2A0, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1BD7A8880(319, &qword_1EBD449E0, &qword_1EBD449E8, &unk_1BE0FF9D0, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD88C178@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  v12 = type metadata accessor for AccountInformationView();
  sub_1BD0DE19C(v1 + *(v12 + 32), v11, &qword_1EBD3B1A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1BD0DE204(v11, a1, &qword_1EBD449E8);
  }

  sub_1BE052C44();
  v14 = sub_1BE050174();
  sub_1BE04CF84();

  sub_1BE04F3C4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

int *sub_1BD88C360@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v89 = type metadata accessor for AccountInformationView();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v2);
  v92 = v3;
  v85 = v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1BE04F434();
  v4 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v5);
  v7 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56900);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v72 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56908);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v17);
  v75 = v72 - v18;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56910);
  MEMORY[0x1EEE9AC00](v74, v19);
  v80 = v72 - v20;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56918);
  MEMORY[0x1EEE9AC00](v78, v21);
  v73 = v72 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56920);
  MEMORY[0x1EEE9AC00](v82, v23);
  v81 = v72 - v24;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56928);
  MEMORY[0x1EEE9AC00](v84, v25);
  v86 = v72 - v26;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56930);
  MEMORY[0x1EEE9AC00](v83, v27);
  v87 = v72 - v28;
  sub_1BD88CDE4(v16);
  v90 = v1;
  v29 = *(v1 + 24);
  type metadata accessor for AccountUserInfoModel();
  sub_1BD890BDC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
  v30 = sub_1BE04D804();
  v31 = &v16[*(v13 + 36)];
  *v31 = v30;
  v31[1] = v29;
  v32 = v8;
  (*(v9 + 104))(v12, *MEMORY[0x1E69B80E0], v8);
  v72[1] = v29;
  sub_1BE048964();
  result = PKPassKitBundle();
  if (result)
  {
    v34 = result;
    v35 = sub_1BE04B6F4();
    v37 = v36;

    (*(v9 + 8))(v12, v32);
    *&v93 = v35;
    *(&v93 + 1) = v37;
    v38 = v79;
    (*(v4 + 104))(v7, *MEMORY[0x1E697C438], v79);
    sub_1BD88EF78();
    sub_1BD0DDEBC();
    v39 = v75;
    sub_1BE050C94();
    (*(v4 + 8))(v7, v38);

    sub_1BD0DE53C(v16, &qword_1EBD56900);
    sub_1BE051CD4();
    sub_1BE04EE54();
    v40 = v80;
    (*(v76 + 32))(v80, v39, v77);
    v41 = (v40 + *(v74 + 36));
    v42 = v98;
    v41[4] = v97;
    v41[5] = v42;
    v41[6] = v99;
    v43 = v94;
    *v41 = v93;
    v41[1] = v43;
    v44 = v96;
    v41[2] = v95;
    v41[3] = v44;
    v45 = [objc_opt_self() systemGroupedBackgroundColor];
    v46 = sub_1BE0511C4();
    v47 = sub_1BE0501D4();
    v48 = sub_1BE051CD4();
    v50 = v49;
    v51 = v73;
    sub_1BD0DE204(v40, v73, &qword_1EBD56910);
    v52 = v51 + *(v78 + 36);
    *v52 = v46;
    *(v52 + 8) = v47;
    *(v52 + 16) = v48;
    *(v52 + 24) = v50;
    swift_beginAccess();
    v53 = v82;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0);
    v54 = v81;
    sub_1BE04D884();
    swift_endAccess();
    v55 = v90;
    v56 = v85;
    sub_1BD88F1D8(v90, v85);
    v57 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v58 = swift_allocObject();
    v88 = type metadata accessor for AccountInformationView;
    sub_1BD890840(v56, v58 + v57, type metadata accessor for AccountInformationView);
    sub_1BD0DE204(v51, v54, &qword_1EBD56918);
    v59 = (v54 + *(v53 + 56));
    *v59 = sub_1BD890F0C;
    v59[1] = v58;
    swift_beginAccess();
    v60 = v84;
    v61 = v86;
    sub_1BE04D884();
    swift_endAccess();
    sub_1BD88F1D8(v55, v56);
    v62 = swift_allocObject();
    sub_1BD890840(v56, v62 + v57, type metadata accessor for AccountInformationView);
    sub_1BD0DE204(v54, v61, &qword_1EBD56920);
    v63 = (v61 + *(v60 + 56));
    *v63 = sub_1BD88F23C;
    v63[1] = v62;
    v64 = v87;
    v65 = &v87[*(v83 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
    sub_1BE0516C4();
    sub_1BD88F1D8(v55, v56);
    v66 = swift_allocObject();
    v67 = v88;
    sub_1BD890840(v56, v66 + v57, v88);
    sub_1BD0DE204(v61, v64, &qword_1EBD56928);
    v68 = &v65[*(type metadata accessor for ErrorAlertModifier(0) + 20)];
    *v68 = sub_1BD88F2A4;
    v68[1] = v66;
    sub_1BD88F1D8(v55, v56);
    v69 = swift_allocObject();
    sub_1BD890840(v56, v69 + v57, v67);
    v70 = v91;
    sub_1BD0DE204(v64, v91, &qword_1EBD56930);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56980);
    v71 = (v70 + result[9]);
    *v71 = sub_1BD88F508;
    v71[1] = v69;
    v71[2] = 0;
    v71[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD88CDE4@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = sub_1BE04FB94();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56960);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v5);
  v51 = &v49 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56958);
  MEMORY[0x1EEE9AC00](v63, v7);
  v53 = &v49 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56988);
  MEMORY[0x1EEE9AC00](v61, v9);
  v62 = &v49 - v10;
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A98);
  v58 = *(v16 - 8);
  v59 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v49 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A88);
  MEMORY[0x1EEE9AC00](v60, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v49 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v49 - v29;
  v50 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if ((v65 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_1BE04D8B4(), , , v31 = type metadata accessor for FeatureError(0), v32 = (*(*(v31 - 8) + 48))(v30, 1, v31), v33 = sub_1BD0DE53C(v30, &qword_1EBD416C0), v32 != 1))
  {
    (*(v12 + 104))(v15, *MEMORY[0x1E69B80E0], v11);
    result = PKPassKitBundle();
    if (result)
    {
      v41 = result;
      v42 = sub_1BE04B6F4();
      v44 = v43;

      (*(v12 + 8))(v15, v11);
      v65 = v42;
      v66 = v44;
      sub_1BD0DDEBC();
      sub_1BE04E504();
      v45 = &v22[*(v60 + 36)];
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0) + 28);
      v47 = *MEMORY[0x1E697DC10];
      v48 = sub_1BE04E364();
      (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
      *v45 = swift_getKeyPath();
      (*(v58 + 32))(v22, v19, v59);
      sub_1BD0DE204(v22, v26, &qword_1EBD44A88);
      sub_1BD0DE19C(v26, v62, &qword_1EBD44A88);
      swift_storeEnumTagMultiPayload();
      sub_1BD3CA07C();
      sub_1BD88F0BC();
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v26, &qword_1EBD44A88);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v33, v34);
    *(&v49 - 2) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56990);
    sub_1BD0DE4F4(&qword_1EBD56998, &qword_1EBD56990);
    v35 = v51;
    sub_1BE0504E4();
    v36 = v55;
    sub_1BE04FB84();
    sub_1BD0DE4F4(&qword_1EBD56968, &qword_1EBD56960);
    v38 = v53;
    v37 = v54;
    v39 = v57;
    sub_1BE051144();
    (*(v56 + 8))(v36, v39);
    (*(v52 + 8))(v35, v37);
    sub_1BD0BD8FC(v38, v62);
    swift_storeEnumTagMultiPayload();
    sub_1BD3CA07C();
    sub_1BD88F0BC();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v38, &qword_1EBD56958);
  }

  return result;
}

uint64_t sub_1BD88D5E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - v4;
  type metadata accessor for AccountInformationView();
  sub_1BD0DE19C(a1, v5, &qword_1EBD416C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  return sub_1BE0516B4();
}

uint64_t sub_1BD88D6B8(uint64_t a1)
{
  v2 = sub_1BE04ED94();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449E8);
  MEMORY[0x1EEE9AC00](v71, v5);
  v70 = &v69 - v6;
  v7 = type metadata accessor for FeatureError(0);
  v82 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v73 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5D400);
  MEMORY[0x1EEE9AC00](v10, v11);
  v80 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v69 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v69 = (&v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v79 = &v69 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v78 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v74 = &v69 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v75 = &v69 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = (&v69 - v34);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v69 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v69 - v42;
  v44 = *(type metadata accessor for AccountInformationView() + 28);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);
  v77 = v44;
  sub_1BE0516A4();
  v81 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v45 = v10;
  sub_1BE04D8B4();

  v46 = *(v10 + 48);
  v47 = v43;
  v48 = v7;
  sub_1BD0DE204(v47, v16, &qword_1EBD416C0);
  sub_1BD0DE204(v39, &v16[v46], &qword_1EBD416C0);
  v49 = *(v82 + 48);
  if (v49(v16, 1, v7) == 1)
  {
    if (v49(&v16[v46], 1, v7) == 1)
    {
      sub_1BD0DE53C(v16, &qword_1EBD416C0);
LABEL_11:
      v59 = v70;
      sub_1BD88C178(v70);
      MEMORY[0x1BFB3E970](v71);
      sub_1BE04ED84();
      sub_1BE0518F4();
      sub_1BD0DE53C(v59, &qword_1EBD449E8);
      v60 = v75;
      (*(v82 + 56))(v75, 1, 1, v48);
      swift_getKeyPath();
LABEL_17:
      swift_getKeyPath();
      sub_1BD0DE19C(v60, v74, &qword_1EBD416C0);
      sub_1BE048964();
      sub_1BE04D8C4();
      v63 = v60;
      v62 = &qword_1EBD416C0;
      return sub_1BD0DE53C(v63, v62);
    }

    goto LABEL_6;
  }

  sub_1BD0DE19C(v16, v35, &qword_1EBD416C0);
  if (v49(&v16[v46], 1, v7) == 1)
  {
    sub_1BD230994(v35);
LABEL_6:
    sub_1BD0DE53C(v16, &unk_1EBD5D400);
    goto LABEL_8;
  }

  v50 = v73;
  sub_1BD890840(&v16[v46], v73, type metadata accessor for FeatureError);
  v51 = *v35;
  v52 = *v50;
  v53 = v50;
  v45 = v10;
  sub_1BD230994(v53);

  sub_1BD230994(v35);
  sub_1BD0DE53C(v16, &qword_1EBD416C0);
  if (v51 == v52)
  {
    goto LABEL_11;
  }

LABEL_8:
  v54 = v78;
  sub_1BE0516A4();
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v79;
  sub_1BE04D8B4();

  v56 = *(v45 + 48);
  v57 = v54;
  v58 = v80;
  sub_1BD0DE204(v57, v80, &qword_1EBD416C0);
  sub_1BD0DE204(v55, v58 + v56, &qword_1EBD416C0);
  if (v49(v58, 1, v7) == 1)
  {
    if (v49((v58 + v56), 1, v7) == 1)
    {
      sub_1BD0DE53C(v58, &qword_1EBD416C0);
LABEL_16:
      v60 = v75;
      (*(v82 + 56))(v75, 1, 1, v7);
      swift_getKeyPath();
      goto LABEL_17;
    }
  }

  else
  {
    v61 = v69;
    sub_1BD0DE19C(v58, v69, &qword_1EBD416C0);
    if (v49((v58 + v56), 1, v7) != 1)
    {
      v64 = v58 + v56;
      v65 = v73;
      sub_1BD890840(v64, v73, type metadata accessor for FeatureError);
      v66 = *v61;
      v67 = *v65;
      sub_1BD230994(v65);

      sub_1BD230994(v61);
      result = sub_1BD0DE53C(v58, &qword_1EBD416C0);
      if (v66 != v67)
      {
        return result;
      }

      goto LABEL_16;
    }

    sub_1BD230994(v61);
  }

  v62 = &unk_1EBD5D400;
  v63 = v58;
  return sub_1BD0DE53C(v63, v62);
}

void sub_1BD88DED8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v0)
  {
    sub_1BD0D468C(v0);
  }

  else
  {
    sub_1BD2FAF00();
  }
}

uint64_t sub_1BD88DF64@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_1BE04F5B4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569A0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v40 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569A8);
  MEMORY[0x1EEE9AC00](v41, v10);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v43 = &v40 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569B0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v42 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v40 - v24;
  sub_1BD88E3E0(&v40 - v24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v26 = v46;
  if (v46)
  {
    v27 = v46;
  }

  sub_1BD0D468C(v26);
  sub_1BD88E7C8(v26, v9);

  sub_1BE04F594();
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569B8) + 36);
  (*(v2 + 16))(&v15[v28], v5, v1);
  v29 = *(v2 + 56);
  v29(&v15[v28], 0, 1, v1);
  sub_1BD0DE204(v9, v15, &qword_1EBD569A0);
  KeyPath = swift_getKeyPath();
  v31 = &v15[*(v41 + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580) + 28);
  (*(v2 + 32))(v31 + v32, v5, v1);
  v29(v31 + v32, 0, 1, v1);
  *v31 = KeyPath;
  v33 = v15;
  v34 = v43;
  sub_1BD0DE204(v33, v43, &qword_1EBD569A8);
  v35 = v42;
  sub_1BD0DE19C(v25, v42, &qword_1EBD569B0);
  v36 = v44;
  sub_1BD0DE19C(v34, v44, &qword_1EBD569A8);
  v37 = v45;
  sub_1BD0DE19C(v35, v45, &qword_1EBD569B0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569C0);
  sub_1BD0DE19C(v36, v37 + *(v38 + 48), &qword_1EBD569A8);
  sub_1BD0DE53C(v34, &qword_1EBD569A8);
  sub_1BD0DE53C(v25, &qword_1EBD569B0);
  sub_1BD0DE53C(v36, &qword_1EBD569A8);
  return sub_1BD0DE53C(v35, &qword_1EBD569B0);
}

id sub_1BD88E3E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569F0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v27 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v12 = v29;
  if (!v29)
  {
    goto LABEL_11;
  }

  v13 = v29;
  sub_1BD0D468C(v12);
  v14 = [v13 emailAddresses];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v15 = sub_1BE052744();

  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = sub_1BE053704();
  if (!result)
  {
LABEL_10:

LABEL_11:
    v26 = 1;
    return (*(v8 + 56))(a1, v26, 1, v7);
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1BFB40900](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v17 = *(v15 + 32);
  }

  v18 = v17;
  v28 = a1;

  (*(v3 + 104))(v6, *MEMORY[0x1E69B80E0], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v19 = result;
    v20 = sub_1BE04B6F4();
    v22 = v21;

    (*(v3 + 8))(v6, v2);
    v29 = v20;
    v30 = v22;
    sub_1BD0DDEBC();
    v29 = sub_1BE0506C4();
    v30 = v23;
    v31 = v24 & 1;
    v32 = v25;
    MEMORY[0x1EEE9AC00](v29, v23);
    *(&v27 - 2) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
    sub_1BD1103C8();
    sub_1BE051A54();

    a1 = v28;
    (*(v8 + 32))(v28, v11, v7);
    v26 = 0;
    return (*(v8 + 56))(a1, v26, 1, v7);
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1BD88E7C8@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X8>)
{
  v63 = a1;
  v59 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569C8);
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v64 = &v54 - v7;
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569D0);
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v55 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v65 = &v54 - v23;
  v24 = *MEMORY[0x1E69B80E0];
  v62 = *(v9 + 104);
  v62(v16, v24, v8, v22);
  result = PKPassKitBundle();
  if (result)
  {
    v26 = result;
    v27 = sub_1BE04B6F4();
    v29 = v28;

    v30 = *(v9 + 8);
    v30(v16, v8);
    v66 = v27;
    v67 = v29;
    sub_1BD0DDEBC();
    v66 = sub_1BE0506C4();
    v67 = v31;
    v68 = v32 & 1;
    v69 = v33;
    MEMORY[0x1EEE9AC00](v66, v31);
    *(&v54 - 2) = v63;
    sub_1BD8908B8();
    sub_1BE051A24();
    (v62)(v12, v24, v8);
    result = PKPassKitBundle();
    if (result)
    {
      v34 = result;
      v35 = sub_1BE04B6F4();
      v37 = v36;

      v30(v12, v8);
      v66 = v35;
      v67 = v37;
      v66 = sub_1BE0506C4();
      v67 = v38;
      v68 = v39 & 1;
      v69 = v40;
      sub_1BD89090C();
      v41 = v64;
      sub_1BE051A54();
      v42 = v55;
      v43 = v56;
      v44 = *(v56 + 16);
      v45 = v57;
      v44(v55, v65, v57);
      v46 = v60;
      v63 = *(v60 + 16);
      v47 = v58;
      v48 = v41;
      v49 = v61;
      v63(v58, v48, v61);
      v50 = v59;
      v44(v59, v42, v45);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD569E8);
      v63(&v50[*(v51 + 48)], v47, v49);
      v52 = *(v46 + 8);
      v52(v64, v49);
      v53 = *(v43 + 8);
      v53(v65, v45);
      v52(v47, v49);
      return (v53)(v42, v45);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD88ED18(void *a1)
{
  v1 = [a1 value];
  sub_1BE052434();

  sub_1BD0DDEBC();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5 & 1;
  sub_1BE052434();
  sub_1BE050DE4();

  sub_1BD0DDF10(v2, v4, v6);
}

id sub_1BD88EE08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AccountUserInfoModel();
  sub_1BD890BDC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
  v3 = sub_1BE04EEC4();
  *a2 = a1;
  a2[1] = v3;
  a2[2] = v4;

  return a1;
}

uint64_t sub_1BD88EE9C@<X0>(uint64_t a1@<X8>)
{
  sub_1BE051694();
  sub_1BE051694();
  type metadata accessor for AccountUserInfoModel();
  sub_1BD890BDC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
  result = sub_1BE04EEC4();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

unint64_t sub_1BD88EF78()
{
  result = qword_1EBD56938;
  if (!qword_1EBD56938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56900);
    sub_1BD88F030();
    sub_1BD0DE4F4(&qword_1EBD56970, &qword_1EBD56978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56938);
  }

  return result;
}

unint64_t sub_1BD88F030()
{
  result = qword_1EBD56940;
  if (!qword_1EBD56940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56948);
    sub_1BD3CA07C();
    sub_1BD88F0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56940);
  }

  return result;
}

unint64_t sub_1BD88F0BC()
{
  result = qword_1EBD56950;
  if (!qword_1EBD56950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56960);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD56968, &qword_1EBD56960);
    swift_getOpaqueTypeConformance2();
    sub_1BD18596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56950);
  }

  return result;
}

uint64_t sub_1BD88F1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountInformationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_102()
{
  v1 = type metadata accessor for AccountInformationView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = (v2 + *(v1 + 28));
  v4 = type metadata accessor for FeatureError(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = *(v4 + 20);
    v6 = sub_1BE04B824();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968);

  v8 = v2 + *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449E8) + 32);
    v11 = sub_1BE04ED94();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD88F520(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AccountInformationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD88F594@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = v55 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B2E0);
  MEMORY[0x1EEE9AC00](v61, v10);
  v65 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v55 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v64 = v55 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v60, v19);
  v21 = v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56A18);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v55 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56A20);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v55 - v32;
  if (a1)
  {
    v59 = a4;
    v34 = a1;
    v35 = [v34 pkFormattedContactAddressWithoutName];
    if (v35)
    {
      v36 = v35;
      v56 = v7;
      v57 = v21;
      v37 = sub_1BE052434();
      v39 = v38;

      v40 = sub_1BE052534();
      if (v40 > 0)
      {
        v66 = v37;
        v67 = v39;
        sub_1BD0DDEBC();
        v55[0] = sub_1BE0506C4();
        v55[1] = v41;
        v43 = v42;
        v66 = v55[0];
        v67 = v42;
        v45 = v44 & 1;
        v68 = v44 & 1;
        v69 = v41;
        sub_1BE052434();
        sub_1BE050DE4();

        sub_1BD0DDF10(v55[0], v43, v45);

        v46 = v57;
        sub_1BD0DE19C(v57, v25, &qword_1EBD452C0);
        swift_storeEnumTagMultiPayload();
        sub_1BD1103C8();
        sub_1BD890C5C();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v46, &qword_1EBD452C0);
        a4 = v59;
        v7 = v56;
        goto LABEL_8;
      }

      a4 = v59;
      v7 = v56;
    }

    else
    {

      a4 = v59;
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1BD1103C8();
  sub_1BD890C5C();
  sub_1BE04F9A4();
LABEL_8:
  v47 = v62;
  sub_1BE04E4F4();
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4();

    v48 = v66;
    (*(v63 + 32))(v15, v47, v7);
    v15[*(v61 + 36)] = (v48 & 1) == 0;
    v49 = v15;
    v50 = v64;
    sub_1BD0DE204(v49, v64, &qword_1EBD3B2E0);
    sub_1BD0DE19C(v33, v29, &qword_1EBD56A20);
    v51 = v65;
    sub_1BD0DE19C(v50, v65, &qword_1EBD3B2E0);
    sub_1BD0DE19C(v29, a4, &qword_1EBD56A20);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56A30);
    v53 = a4 + *(v52 + 48);
    *v53 = 0;
    *(v53 + 8) = 1;
    sub_1BD0DE19C(v51, a4 + *(v52 + 64), &qword_1EBD3B2E0);
    sub_1BD0DE53C(v50, &qword_1EBD3B2E0);
    sub_1BD0DE53C(v33, &qword_1EBD56A20);
    sub_1BD0DE53C(v51, &qword_1EBD3B2E0);
    return sub_1BD0DE53C(v29, &qword_1EBD56A20);
  }

  else
  {
    type metadata accessor for AccountUserInfoModel();
    sub_1BD890BDC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD88FBC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56A10);
  return sub_1BD88F594(v3, v4, v5, a1 + *(v6 + 44));
}

uint64_t sub_1BD88FC2C@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v10[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DF8);
  MEMORY[0x1EEE9AC00](v10[0], v2);
  v4 = v10 - v3;
  *v4 = sub_1BE04F504();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55E10);
  sub_1BD88FEA4(v1, &v4[*(v5 + 44)]);
  v13 = *v1;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v6 = v1[2];
  v12 = v1[1];
  v13 = v6;
  v7 = swift_allocObject();
  v8 = v1[1];
  v7[1] = *v1;
  v7[2] = v8;
  v7[3] = v1[2];
  sub_1BD0DE19C(&v14, v11, &qword_1EBD54350);
  sub_1BD0DE19C(&v12, v11, &qword_1EBD54350);
  sub_1BD0DE19C(&v13, v11, &qword_1EBD56A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56A40);
  sub_1BD0DE4F4(&qword_1EBD55E08, &qword_1EBD55DF8);
  sub_1BD890CB8(&qword_1EBD56A48, &qword_1EBD56A40, &unk_1BE0FFE30, sub_1BD890D3C);
  sub_1BE050F64();

  return sub_1BD0DE53C(v4, &qword_1EBD55DF8);
}

id sub_1BD88FEA4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v22 - v12;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B80E0], v3, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v4 + 8))(v7, v3);
    v24 = v16;
    v25 = v18;
    v19 = *a1;
    v27 = a1[1];
    v28 = v19;
    v26 = a1[2];
    v20 = swift_allocObject();
    v21 = a1[1];
    v20[1] = *a1;
    v20[2] = v21;
    v20[3] = a1[2];
    sub_1BD0DE19C(&v28, v23, &qword_1EBD54350);
    sub_1BD0DE19C(&v27, v23, &qword_1EBD54350);
    sub_1BD0DE19C(&v26, v23, &qword_1EBD56A38);
    sub_1BD0DDEBC();
    sub_1BE051744();
    sub_1BE052434();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    sub_1BE050DE4();

    return (*(v9 + 8))(v13, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD8901B4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BD890D90();
  v5 = *a1;
  v13 = a1[1];
  v14 = v5;
  v12 = a1[2];
  v6 = swift_allocObject();
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = a1[2];
  v8 = swift_allocObject();
  v9 = a1[1];
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = a1[2];
  *a2 = 0;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = sub_1BD890E30;
  *(a2 + 32) = v6;
  *(a2 + 40) = sub_1BD890E38;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_1BD0DE19C(&v14, v11, &qword_1EBD54350);
  sub_1BD0DE19C(&v13, v11, &qword_1EBD54350);
  sub_1BD0DE19C(&v12, v11, &qword_1EBD56A38);
  sub_1BD0DE19C(&v14, v11, &qword_1EBD54350);
  sub_1BD0DE19C(&v13, v11, &qword_1EBD54350);
  return sub_1BD0DE19C(&v12, v11, &qword_1EBD56A38);
}

uint64_t sub_1BD890318(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_4;
  }

  if (*(a2 + 32))
  {
    v2 = a1;
    sub_1BE048964();
    sub_1BD2FB688(v2);

LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    return sub_1BE0516B4();
  }

  type metadata accessor for AccountUserInfoModel();
  sub_1BD890BDC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
  v5 = a1;
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD890410(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E69B9178]);
    swift_retain_n();
    v3 = [v2 initWithType_];
    v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager);
    *(v1 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_assessmentManager) = v3;

    v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_paymentWebService);
    if (v5)
    {
      v6 = [*(v1 + OBJC_IVAR____TtC9PassKitUI20AccountUserInfoModel_paymentWebService) targetDevice];
      if (v6)
      {
        v7 = v6;
        if ([v6 respondsToSelector_] & 1) != 0 && (objc_msgSend(v7, sel_respondsToSelector_, sel_paymentWebService_deviceMetadataWithFields_completion_))
        {
          v10[4] = PKEdgeInsetsMake;
          v10[5] = 0;
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 1107296256;
          v10[2] = sub_1BD20815C;
          v10[3] = &block_descriptor_198;
          v8 = _Block_copy(v10);
          swift_unknownObjectRetain();

          [v7 paymentWebService:v5 deviceMetadataWithFields:128 completion:v8];
          _Block_release(v8);

          return swift_unknownObjectRelease_n();
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    type metadata accessor for AccountUserInfoModel();
    sub_1BD890BDC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

id sub_1BD89066C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80E0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v24[2] = v10;
    v24[3] = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v9) = v16;
    sub_1BE051234();
    v17 = sub_1BE050564();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_1BD0DDF10(v13, v15, v9 & 1);

    *a1 = v17;
    *(a1 + 8) = v19;
    *(a1 + 16) = v21 & 1;
    *(a1 + 24) = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD890840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD8908B8()
{
  result = qword_1EBD569D8;
  if (!qword_1EBD569D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD569D8);
  }

  return result;
}

unint64_t sub_1BD89090C()
{
  result = qword_1EBD569E0;
  if (!qword_1EBD569E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD569E0);
  }

  return result;
}

uint64_t sub_1BD890968(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BD8909C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BD890A34(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BD890A90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1BD890AF4()
{
  result = qword_1EBD56A00;
  if (!qword_1EBD56A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56930);
    sub_1BD0DE4F4(&qword_1EBD56A08, &qword_1EBD56928);
    sub_1BD890BDC(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56A00);
  }

  return result;
}

uint64_t sub_1BD890BDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD890C5C()
{
  result = qword_1EBD56A28;
  if (!qword_1EBD56A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56A28);
  }

  return result;
}

uint64_t sub_1BD890CB8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD890D3C()
{
  result = qword_1EBD56A50;
  if (!qword_1EBD56A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56A50);
  }

  return result;
}

uint64_t sub_1BD890D90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0B98E0;
  *(v0 + 32) = sub_1BE052434();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1BE052434();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1BE052434();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1BE052434();
  *(v0 + 88) = v4;
  return v0;
}

uint64_t objectdestroy_58Tm_1()
{

  return swift_deallocObject();
}

uint64_t sub_1BD890FD4()
{
  v113 = sub_1BE04BD74();
  v120 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v1);
  v112 = &v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v111 = &v109 - v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v110 = &v109 - v8;
  v9 = sub_1BE04BAC4();
  v118 = *(v9 - 8);
  v119 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v117 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04D214();
  v115 = *(v12 - 8);
  v116 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v114 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04C384();
  v124 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v121 = &v109 - v21;
  v22 = sub_1BE04B8D4();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v109 - v29;
  v31 = sub_1BE04B944();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v122 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v123 = &v109 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v109 - v40;
  v125 = v0;
  v128 = *&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningDeviceFullFlowItem_context];
  sub_1BE04BB94();
  sub_1BE04B924();
  v42 = *(v32 + 8);
  v126 = v32 + 8;
  v127 = v31;
  v42(v41, v31);
  v43 = v42;
  (*(v23 + 104))(v26, *MEMORY[0x1E69B7F80], v22);
  LOBYTE(v42) = sub_1BE04B8C4();
  v45 = *(v23 + 8);
  v44 = v23 + 8;
  v45(v26, v22);
  v45(v30, v22);
  if ((v42 & 1) == 0)
  {
    v46 = sub_1BE04C3A4();
    if (*(v46 + 16))
    {
      v47 = v124;
      v48 = v121;
      (*(v124 + 2))(v121, v46 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v15);

      v49 = sub_1BE04C304();
      v47[1](v48, v15);
      if (!v49)
      {
        goto LABEL_13;
      }

      v50 = [v49 metadataProviders];
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56E10);
      v51 = sub_1BE052744();

      if (v51 >> 62)
      {
        if (sub_1BE053704())
        {
          goto LABEL_6;
        }
      }

      else if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        if ((v51 & 0xC000000000000001) != 0)
        {
          goto LABEL_69;
        }

        if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_71;
        }

        v52 = *(v51 + 32);
        swift_unknownObjectRetain();
        while (1)
        {

          v53 = [v52 provisioningTarget];
          v54 = [v53 targetDevice];

          swift_unknownObjectRelease();
          if (v54 != 1)
          {
            return 2;
          }

LABEL_13:
          sub_1BE04BB94();
          v55 = v123;
          sub_1BE04BB04();
          sub_1BD892104();
          v56 = v127;
          v57 = sub_1BE052334();
          v43(v55, v56);
          v43(v41, v56);
          if ((v57 & 1) == 0)
          {
            return 2;
          }

          v58 = sub_1BE04C3A4();
          v59 = *(v58 + 2);
          v109 = v43;
          if (v59)
          {
            v41 = 0;
            v60 = v124 + 16;
            v43 = *(v124 + 2);
            v61 = (v124[80] + 32) & ~v124[80];
            v124 = v58;
            v44 = &v58[v61];
            v62 = *(v60 + 7);
            v51 = (v60 - 8);
            while (1)
            {
              (v43)(v18, v44, v15);
              v63 = sub_1BE04C374();
              (*v51)(v18, v15);
              v64 = __OFADD__(v41, v63);
              v41 += v63;
              if (v64)
              {
                break;
              }

              v44 += v62;
              if (!--v59)
              {

                v43 = v109;
                goto LABEL_20;
              }
            }

            __break(1u);
            goto LABEL_64;
          }

          v41 = 0;
LABEL_20:
          v62 = v122;
          sub_1BE04BB94();
          v15 = sub_1BE04B8E4();
          v65 = sub_1BE04B934();
          if (([v65 respondsToSelector_] & 1) == 0)
          {
            break;
          }

          v51 = v15;
          v66 = [v65 paymentWebService:v51 passesOfType:1];
          swift_unknownObjectRelease();
          if (!v66)
          {

            goto LABEL_37;
          }

          sub_1BD0E5E8C(0, &qword_1EBD40650);
          v67 = sub_1BE052744();

          v44 = sub_1BD3FCF30(v67);

          v18 = MEMORY[0x1E69E7CC0];
          if (v44)
          {
            v129 = MEMORY[0x1E69E7CC0];
            v26 = (v44 & 0xFFFFFFFFFFFFFF8);
            if (v44 >> 62)
            {
LABEL_71:
              v62 = sub_1BE053704();
              if (v62)
              {
LABEL_25:
                v123 = v15;
                v15 = 0;
                v18 = v44 & 0xC000000000000001;
                v63 = &selRef_metricsForTextStyle_;
                v124 = (v44 & 0xC000000000000001);
                while (1)
                {
                  if (v18)
                  {
                    v68 = MEMORY[0x1BFB40900](v15, v44);
                  }

                  else
                  {
                    if (v15 >= *(v26 + 2))
                    {
                      goto LABEL_65;
                    }

                    v68 = *(v44 + 8 * v15 + 32);
                  }

                  v51 = v68;
                  v69 = v15 + 1;
                  if (__OFADD__(v15, 1))
                  {
                    break;
                  }

                  if ([v68 passActivationState] == 4)
                  {
                  }

                  else
                  {
                    sub_1BE0538C4();
                    v43 = v44;
                    sub_1BE0538F4();
                    sub_1BE053904();
                    sub_1BE0538D4();
                    v18 = v124;
                  }

                  ++v15;
                  if (v69 == v62)
                  {
                    v18 = v129;
                    v15 = v123;
                    goto LABEL_39;
                  }
                }

LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
                goto LABEL_66;
              }
            }

            else
            {
              v62 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v62)
              {
                goto LABEL_25;
              }
            }

LABEL_39:

            v62 = v122;
            v43 = v109;
          }

LABEL_40:
          v70 = sub_1BE04B934();
          if ([v70 respondsToSelector_])
          {
            v51 = [v70 maximumPaymentCards];
          }

          else
          {
            v51 = 0x7FFFFFFFFFFFFFFFLL;
          }

          swift_unknownObjectRelease();
          LODWORD(v44) = PKPaymentSetupMockInAppProvisioningDeleteUIEnabled();
          if (v41 < 1)
          {
            goto LABEL_49;
          }

          v63 = v18 >> 62;
          if (!(v18 >> 62))
          {
            v71 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v72 = v41 + v71;
            if (!__OFADD__(v41, v71))
            {
              goto LABEL_46;
            }

            goto LABEL_68;
          }

LABEL_66:
          v108 = sub_1BE053704();
          v72 = v41 + v108;
          if (!__OFADD__(v41, v108))
          {
LABEL_46:
            if (v51 >= v72)
            {
LABEL_49:
              v74 = v120;
              if ((v44 & 1) == 0)
              {
                v43(v62, v127);

                return 2;
              }

              v73 = 2;
              goto LABEL_56;
            }

            if (v44)
            {
              v73 = 2;
              v74 = v120;
              goto LABEL_56;
            }

            if (!v63)
            {
              result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v76 = v41 + result;
              if (!__OFADD__(v41, result))
              {
                goto LABEL_55;
              }

LABEL_75:
              __break(1u);
              goto LABEL_76;
            }

            result = sub_1BE053704();
            v76 = v41 + result;
            if (__OFADD__(v41, result))
            {
              goto LABEL_75;
            }

LABEL_55:
            v73 = v76 - v51;
            v74 = v120;
            if (__OFSUB__(v76, v51))
            {
LABEL_76:
              __break(1u);
            }

            else
            {
LABEL_56:
              v77 = v114;
              sub_1BE04D0F4();
              v78 = sub_1BE04D204();
              v79 = sub_1BE052C54();
              if (os_log_type_enabled(v78, v79))
              {
                v80 = swift_slowAlloc();
                *v80 = 134218240;
                *(v80 + 4) = v73;
                *(v80 + 12) = 1024;
                *(v80 + 14) = v44;
                _os_log_impl(&dword_1BD026000, v78, v79, "Prompting user to delete %ld passes. Mocking UI: %{BOOL}d", v80, 0x12u);
                MEMORY[0x1BFB45F20](v80, -1, -1);
              }

              (*(v115 + 8))(v77, v116);
              sub_1BE052434();
              v81 = sub_1BE04BB74();

              v82 = v117;
              sub_1BE04BC34();
              v83 = sub_1BE04B9A4();
              (*(v118 + 8))(v82, v119);
              v84 = objc_allocWithZone(PKPaymentSelectPassesViewController);
              sub_1BD0E5E8C(0, &qword_1EBD456C0);
              v85 = v81;
              v86 = sub_1BE052724();

              v87 = [v84 initWithSecureElementPasses:v86 context:v83 delegate:v125 peerPaymentAccount:0 reporter:v85];

              [v87 setMinimumSelectionCount_];
              if (!v87)
              {
                v109(v62, v127);

                return 0;
              }

              v128 = v73;
              v123 = v15;
              v124 = v85;
              v88 = v87;
              v89 = v110;
              v90 = *MEMORY[0x1E69B80F8];
              v91 = v113;
              v92 = *(v74 + 104);
              v92(v110);
              v125 = v88;
              v93 = v88;
              result = PKPassKitBundle();
              if (result)
              {
                v94 = result;
                sub_1BE04B6F4();

                v121 = *(v74 + 8);
                (v121)(v89, v91);
                v95 = sub_1BE052404();

                [v93 setHeaderTitle_];

                v96 = v111;
                (v92)(v111, v90, v91);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
                v97 = swift_allocObject();
                v98 = MEMORY[0x1E69E6530];
                *(v97 + 16) = xmmword_1BE0B69E0;
                v99 = MEMORY[0x1E69E65A8];
                *(v97 + 56) = v98;
                *(v97 + 64) = v99;
                *(v97 + 32) = v128;
                v100 = v93;
                sub_1BE04B714();

                v101 = v96;
                v102 = v121;
                (v121)(v101, v91);
                v103 = sub_1BE052404();

                [v100 setHeaderSubtitle_];

                v104 = v112;
                (v92)(v112, v90, v91);
                v105 = v100;
                result = PKPassKitBundle();
                if (result)
                {
                  v106 = result;
                  sub_1BE04B6F4();

                  (v102)(v104, v91);
                  v107 = sub_1BE052404();

                  [v105 setButtonText_];

                  [v105 setShowCancelButton_];
                  [v105 setConfirmIntentToDelete_];

                  v109(v122, v127);
                  return v125;
                }

                goto LABEL_78;
              }
            }

            __break(1u);
LABEL_78:
            __break(1u);
            return result;
          }

LABEL_68:
          __break(1u);
LABEL_69:
          v52 = MEMORY[0x1BFB40900](0, v51);
        }

        swift_unknownObjectRelease();
LABEL_37:
        v18 = MEMORY[0x1E69E7CC0];
        goto LABEL_40;
      }
    }

    goto LABEL_13;
  }

  return 2;
}