uint64_t sub_1A97E4ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A97E4B74(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v10 = *(a1 + OBJC_IVAR____SFXPCAsyncIterator_iterator);
  v9 = *(a1 + OBJC_IVAR____SFXPCAsyncIterator_iterator + 8);
  if (*(a1 + OBJC_IVAR____SFXPCAsyncIterator_iterator + 16))
  {
    v11 = objc_allocWithZone(type metadata accessor for _SFXPCError());
    _Block_copy(a2);
    sub_1A97E5608(v10, v9, 1);
    v12 = sub_1A99195C8(v10);
    (a2)[2](a2, 0, v12);

    sub_1A97E5618(v10, v9, 1);
  }

  else
  {
    v14 = sub_1A9976C00();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v10;
    v16[5] = v9;
    v16[6] = v15;
    v16[7] = sub_1A97E5600;
    v16[8] = v8;
    _Block_copy(a2);
    sub_1A97E5608(v10, v9, 0);

    v17 = sub_1A97B4F40(0, 0, v7, &unk_1A9994EF8, v16);
    v18 = *(a1 + OBJC_IVAR____SFXPCAsyncIterator_currentTask);
    *(a1 + OBJC_IVAR____SFXPCAsyncIterator_currentTask) = v17;
  }
}

void sub_1A97E4DC8(uint64_t a1, uint64_t a2, void (**a3)(void, void, void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v78 - v10;
  v11 = sub_1A9977460();
  v89 = *(v11 - 8);
  v90 = v11;
  v12 = v89[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v85 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v78 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v78 - v18;
  v20 = sub_1A99762C0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v78 - v25;
  v27 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
  swift_beginAccess();
  v28 = *(a2 + v27);
  if (!*(v28 + 16) || (v29 = sub_1A97BCE34(a1), (v30 & 1) == 0))
  {
    swift_endAccess();
    v48 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v49 = sub_1A99767E0();
    v50 = [v48 initWithDomain:v49 code:0 userInfo:0];

    v51 = *(a2 + OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry);
    v52 = objc_allocWithZone(type metadata accessor for _SFXPCAsyncIterator(0));

    v53 = sub_1A97E4570(v50, 0, 1, v51);

    (a3)[2](a3, v53, 0, 0);
LABEL_10:

    return;
  }

  v79 = v19;
  v84 = a3;
  v31 = *(*(v28 + 56) + 8 * v29);
  swift_endAccess();
  v32 = *(a2 + OBJC_IVAR____SFXPCAsyncSequenceContainer_name);
  v33 = *(a2 + OBJC_IVAR____SFXPCAsyncSequenceContainer_name + 8);
  v34 = *(a2 + OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry);
  v83 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v35 = objc_allocWithZone(v83);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v80 = v31;

  sub_1A99762B0();
  v78 = *(v21 + 16);
  v78(&v35[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v26, v20);
  v36 = &v35[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  v81 = v32;
  v82 = v33;
  *v36 = v32;
  v36[1] = v33;
  v37 = v35;

  *&v35[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v35[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = v34;
  if (v34)
  {
    v38 = sub_1A9976C00();
    v39 = v79;
    (*(*(v38 - 8) + 56))(v79, 1, 1, v38);
    v78(v24, v26, v20);
    v40 = (*(v21 + 80) + 40) & ~*(v21 + 80);
    v41 = (v22 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    *(v42 + 2) = 0;
    *(v42 + 3) = 0;
    *(v42 + 4) = v34;
    (*(v21 + 32))(&v42[v40], v24, v20);
    v43 = &v42[v41];
    v45 = v81;
    v44 = v82;
    *v43 = v81;
    *(v43 + 1) = v44;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v39, &unk_1A9994EE8, v42);

    (*(v21 + 8))(v26, v20);
    v46 = v34;
    v47 = v45;
  }

  else
  {
    (*(v21 + 8))(v26, v20);
    v44 = v82;

    v46 = 0;
    v47 = v81;
  }

  v54 = v83;
  v94.receiver = v37;
  v94.super_class = v83;
  v55 = objc_msgSendSuper2(&v94, sel_init);

  v81 = type metadata accessor for _SFXPCBlockContainer();
  v56 = objc_allocWithZone(v81);
  v79 = sub_1A97BE9E8(v47, v44, v46);
  v82 = v46;

  v57 = sub_1A9975E80();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  v60 = sub_1A9975E70();
  v61 = v88;
  sub_1A9977450();
  v62 = v89;
  v63 = v90;
  v64 = v89[6];
  if (v64(v61, 1, v90) == 1)
  {
    _Block_release(v84);
    __break(1u);
  }

  else
  {
    v65 = v62[4];
    v66 = v86;
    v65(v86, v61, v63);
    v93 = v54;
    v92[0] = v55;
    v89 = v55;
    v67 = sub_1A9975E60();
    sub_1A97DCC4C(v92, v66);
    v67(v91, 0);
    v68 = v87;
    sub_1A9977450();
    if (v64(v68, 1, v63) != 1)
    {
      v69 = v85;
      v65(v85, v68, v63);
      v93 = v81;
      v92[0] = v79;
      v70 = v79;
      v71 = sub_1A9975E60();
      sub_1A97DCC4C(v92, v69);
      v71(v91, 0);
      v72 = *(v80 + 24);
      v73 = (*(v80 + 16))(v60);
      v75 = v74;
      v76 = objc_allocWithZone(type metadata accessor for _SFXPCAsyncIterator(0));

      v53 = sub_1A97E4570(v73, v75, 0, v82);

      v77 = v89;
      (*(v84 + 2))(v84, v53, v89, v70);

      goto LABEL_10;
    }
  }

  _Block_release(v84);
  __break(1u);
}

id sub_1A97E5608(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1A97E5618(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1A97E5628(uint64_t a1)
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
  v11[1] = sub_1A97B2638;

  return sub_1A97E0970(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A97E57D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1A99762C0() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1A97B2988;

  return sub_1A98141C4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1A97E590C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2988;

  return sub_1A97E02C8(a1, v6);
}

uint64_t sub_1A97E59E8(uint64_t a1)
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
  v10[1] = sub_1A97B2988;

  return sub_1A97DF13C(a1, v7, v9, v8, v4, v5, v6);
}

uint64_t sub_1A97E5ABC(uint64_t a1)
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
  v11[1] = sub_1A97B2638;

  return sub_1A97DF560(a1, v7, v8, v9, v10, v4, v5, v6);
}

uint64_t objectdestroy_84Tm()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[6];
  swift_unknownObjectRelease();
  v3 = v0[7];
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A97E5C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v10 = *(sub_1A9976BB0() - 8);
  return sub_1A97DFAE0(a1, a2, a3, v3[5], v3[6], v3[7], v3 + ((*(v10 + 80) + 64) & ~*(v10 + 80)), v7, v8, v9);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A97E5D94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A97E5E54;

  return sub_1A97E24CC(v7, v6, v2, v3, v4, v5);
}

uint64_t sub_1A97E5E54(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1A97E5F60(uint64_t a1)
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
  v10[1] = sub_1A97B2988;

  return sub_1A97DD6AC(a1, v8, v4, v5, v6, v7, v9);
}

uint64_t SFAirDrop.NetworkMetrics.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A9976230();
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v3(a1 + v4[5], 1, 1, v2);
  v3(a1 + v4[6], 1, 1, v2);
  v3(a1 + v4[7], 1, 1, v2);
  v3(a1 + v4[8], 1, 1, v2);
  v3(a1 + v4[9], 1, 1, v2);
  v3(a1 + v4[10], 1, 1, v2);
  result = (v3)(a1 + v4[11], 1, 1, v2);
  *(a1 + v4[12]) = 0;
  *(a1 + v4[13]) = 0;
  *(a1 + v4[14]) = 0;
  v6 = (a1 + v4[15]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v4[16]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t type metadata accessor for SFAirDrop.NetworkMetrics()
{
  result = qword_1EB3AB958;
  if (!qword_1EB3AB958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A97E6230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SFAirDrop.NetworkMetrics.helloSent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics() + 20);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.helloFinish.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics() + 24);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.askStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics() + 28);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.askSent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics() + 32);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.askFinish.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics() + 36);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.uploadStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics() + 40);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.uploadFinish.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics() + 44);

  return sub_1A97E6230(v3, a1);
}

uint64_t SFAirDrop.NetworkMetrics.senderTLSCertDigest.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDrop.NetworkMetrics() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDrop.NetworkMetrics.receiverTLSCertDigest.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDrop.NetworkMetrics() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logStartHello()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v6 - v3;
  sub_1A9976220();
  v5 = sub_1A9976230();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_1A97E6628(v4, v0);
}

uint64_t sub_1A97E6628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logSentHello()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - v3;
  sub_1A9976220();
  v5 = sub_1A9976230();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = type metadata accessor for SFAirDrop.NetworkMetrics();
  sub_1A97E6628(v4, v0 + *(v6 + 20));
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logFinishedHello()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - v3;
  sub_1A9976220();
  v5 = sub_1A9976230();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = type metadata accessor for SFAirDrop.NetworkMetrics();
  sub_1A97E6628(v4, v0 + *(v6 + 24));
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logStartAsk()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - v3;
  sub_1A9976220();
  v5 = sub_1A9976230();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = type metadata accessor for SFAirDrop.NetworkMetrics();
  sub_1A97E6628(v4, v0 + *(v6 + 28));
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logSentAsk()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - v3;
  sub_1A9976220();
  v5 = sub_1A9976230();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = type metadata accessor for SFAirDrop.NetworkMetrics();
  sub_1A97E6628(v4, v0 + *(v6 + 32));
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logFinishedAsk()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - v3;
  sub_1A9976220();
  v5 = sub_1A9976230();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = type metadata accessor for SFAirDrop.NetworkMetrics();
  sub_1A97E6628(v4, v0 + *(v6 + 36));
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logUploadStart(totalBytes:)(Swift::Int totalBytes)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  sub_1A9976220();
  v7 = sub_1A9976230();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = type metadata accessor for SFAirDrop.NetworkMetrics();
  sub_1A97E6628(v6, v1 + *(v8 + 40));
  *(v1 + *(v8 + 48)) = totalBytes;
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.logUploadFinish(urlCount:)(Swift::Int urlCount)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  sub_1A9976220();
  v7 = sub_1A9976230();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = type metadata accessor for SFAirDrop.NetworkMetrics();
  sub_1A97E6628(v6, v1 + *(v8 + 44));
  *(v1 + *(v8 + 52)) = urlCount;
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.log(senderTLSCertDigest:)(Swift::String senderTLSCertDigest)
{
  object = senderTLSCertDigest._object;
  countAndFlagsBits = senderTLSCertDigest._countAndFlagsBits;
  v4 = (v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics() + 60));
  v5 = v4[1];

  *v4 = countAndFlagsBits;
  v4[1] = object;
}

Swift::Void __swiftcall SFAirDrop.NetworkMetrics.log(receiverTLSCertDigest:)(Swift::String receiverTLSCertDigest)
{
  object = receiverTLSCertDigest._object;
  countAndFlagsBits = receiverTLSCertDigest._countAndFlagsBits;
  v4 = (v1 + *(type metadata accessor for SFAirDrop.NetworkMetrics() + 64));
  v5 = v4[1];

  *v4 = countAndFlagsBits;
  v4[1] = object;
}

uint64_t SFAirDrop.NetworkMetrics.helloSentMS.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - v6;
  v8 = sub_1A9976230();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  sub_1A97E6230(v0, v7);
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    v17 = v7;
LABEL_5:
    sub_1A97B06FC(v17, &unk_1EB3B2A30, &unk_1A99983A0);
    return 0;
  }

  v18 = v7;
  v19 = *(v9 + 32);
  v19(v15, v18, v8);
  v20 = type metadata accessor for SFAirDrop.NetworkMetrics();
  sub_1A97E6230(v0 + *(v20 + 20), v5);
  if (v16(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v17 = v5;
    goto LABEL_5;
  }

  v19(v13, v5, v8);
  sub_1A99760D0();
  v23 = v22;
  v24 = *(v9 + 8);
  v24(v13, v8);
  result = (v24)(v15, v8);
  v25 = v23 * 1000.0;
  if (COERCE__INT64(fabs(v23 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v25 < 9.22337204e18)
  {
    return v25;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t SFAirDrop.NetworkMetrics.helloFinishedMS.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - v6;
  v8 = sub_1A9976230();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  sub_1A97E6230(v0, v7);
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    v17 = v7;
LABEL_5:
    sub_1A97B06FC(v17, &unk_1EB3B2A30, &unk_1A99983A0);
    return 0;
  }

  v18 = v7;
  v19 = *(v9 + 32);
  v19(v15, v18, v8);
  v20 = type metadata accessor for SFAirDrop.NetworkMetrics();
  sub_1A97E6230(v0 + *(v20 + 24), v5);
  if (v16(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v17 = v5;
    goto LABEL_5;
  }

  v19(v13, v5, v8);
  sub_1A99760D0();
  v23 = v22;
  v24 = *(v9 + 8);
  v24(v13, v8);
  result = (v24)(v15, v8);
  v25 = v23 * 1000.0;
  if (COERCE__INT64(fabs(v23 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v25 < 9.22337204e18)
  {
    return v25;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t SFAirDrop.NetworkMetrics.askSentMS.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - v5;
  v7 = sub_1A9976230();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = type metadata accessor for SFAirDrop.NetworkMetrics();
  sub_1A97E6230(v0 + *(v15 + 28), v6);
  v16 = *(v8 + 48);
  if (v16(v6, 1, v7) == 1)
  {
    v17 = v6;
LABEL_5:
    sub_1A97B06FC(v17, &unk_1EB3B2A30, &unk_1A99983A0);
    return 0;
  }

  v18 = v6;
  v19 = *(v8 + 32);
  v19(v14, v18, v7);
  v20 = v0 + *(v15 + 32);
  v21 = v28;
  sub_1A97E6230(v20, v28);
  if (v16(v21, 1, v7) == 1)
  {
    (*(v8 + 8))(v14, v7);
    v17 = v21;
    goto LABEL_5;
  }

  v19(v12, v21, v7);
  sub_1A99760D0();
  v24 = v23;
  v25 = *(v8 + 8);
  v25(v12, v7);
  result = (v25)(v14, v7);
  v26 = v24 * 1000.0;
  if (COERCE__INT64(fabs(v24 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v26 < 9.22337204e18)
  {
    return v26;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t SFAirDrop.NetworkMetrics.askFinishedMS.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - v5;
  v7 = sub_1A9976230();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = type metadata accessor for SFAirDrop.NetworkMetrics();
  sub_1A97E6230(v0 + *(v15 + 28), v6);
  v16 = *(v8 + 48);
  if (v16(v6, 1, v7) == 1)
  {
    v17 = v6;
LABEL_5:
    sub_1A97B06FC(v17, &unk_1EB3B2A30, &unk_1A99983A0);
    return 0;
  }

  v18 = v6;
  v19 = *(v8 + 32);
  v19(v14, v18, v7);
  v20 = v0 + *(v15 + 36);
  v21 = v28;
  sub_1A97E6230(v20, v28);
  if (v16(v21, 1, v7) == 1)
  {
    (*(v8 + 8))(v14, v7);
    v17 = v21;
    goto LABEL_5;
  }

  v19(v12, v21, v7);
  sub_1A99760D0();
  v24 = v23;
  v25 = *(v8 + 8);
  v25(v12, v7);
  result = (v25)(v14, v7);
  v26 = v24 * 1000.0;
  if (COERCE__INT64(fabs(v24 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v26 < 9.22337204e18)
  {
    return v26;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t SFAirDrop.NetworkMetrics.payload.getter()
{
  v1 = v0;
  v2 = SFAirDrop.NetworkMetrics.helloSentMS.getter();
  v3 = MEMORY[0x1E69E7CC8];
  if (v2 >= 1)
  {
    SFAirDrop.NetworkMetrics.helloSentMS.getter();
    v4 = sub_1A9976E40();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3190(v4, 0x6E65536F6C6C6568, 0xEB00000000534D74, isUniquelyReferenced_nonNull_native);
  }

  if (SFAirDrop.NetworkMetrics.helloFinishedMS.getter() >= 1)
  {
    SFAirDrop.NetworkMetrics.helloFinishedMS.getter();
    v6 = sub_1A9976E40();
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3190(v6, 0x6E69466F6C6C6568, 0xEF534D6465687369, v7);
  }

  if (SFAirDrop.NetworkMetrics.askSentMS.getter() >= 1)
  {
    SFAirDrop.NetworkMetrics.askSentMS.getter();
    v8 = sub_1A9976E40();
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3190(v8, 0x4D746E65536B7361, 0xE900000000000053, v9);
  }

  if (SFAirDrop.NetworkMetrics.askFinishedMS.getter() >= 1)
  {
    SFAirDrop.NetworkMetrics.askFinishedMS.getter();
    v10 = sub_1A9976E40();
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3190(v10, 0x73696E69466B7361, 0xED0000534D646568, v11);
  }

  v12 = type metadata accessor for SFAirDrop.NetworkMetrics();
  if (*(v0 + v12[14]))
  {
    v13 = sub_1A9976E40();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3190(v13, 1769173874, 0xE400000000000000, v14);
  }

  v15 = (v0 + v12[15]);
  if (v15[1])
  {
    v16 = *v15;
    v17 = v15[1];
  }

  v18 = sub_1A99767E0();

  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A97E3190(v18, 0xD000000000000013, 0x80000001A99E3ED0, v19);
  v20 = v3;
  v21 = (v1 + v12[16]);
  if (v21[1])
  {
    v22 = *v21;
    v23 = v21[1];
  }

  v24 = sub_1A99767E0();

  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A97E3190(v24, 0xD000000000000015, 0x80000001A99E3EF0, v25);
  return v20;
}

uint64_t SFAirDrop.NetworkMetrics.description.getter()
{
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000020, 0x80000001A99E3F10);
  v1 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v14 = *(v0 + v1[14]);
  v2 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v2);

  MEMORY[0x1AC5895B0](0xD000000000000011, 0x80000001A99E3F40);
  SFAirDrop.NetworkMetrics.helloSentMS.getter();
  v3 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v3);

  MEMORY[0x1AC5895B0](0xD000000000000013, 0x80000001A99E3F60);
  SFAirDrop.NetworkMetrics.helloFinishedMS.getter();
  v4 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v4);

  MEMORY[0x1AC5895B0](0x746E65536B736120, 0xED0000202D20534DLL);
  SFAirDrop.NetworkMetrics.askSentMS.getter();
  v5 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v5);

  MEMORY[0x1AC5895B0](0xD000000000000011, 0x80000001A99E3F80);
  SFAirDrop.NetworkMetrics.askFinishedMS.getter();
  v6 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v6);

  MEMORY[0x1AC5895B0](0xD000000000000017, 0x80000001A99E3FA0);
  v7 = (v0 + v1[15]);
  if (v7[1])
  {
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v8 = 0x3E656E6F6E3CLL;
    v9 = 0xE600000000000000;
  }

  MEMORY[0x1AC5895B0](v8, v9);

  MEMORY[0x1AC5895B0](0xD000000000000019, 0x80000001A99E3FC0);
  v10 = (v0 + v1[16]);
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v11 = 0x3E656E6F6E3CLL;
    v12 = 0xE600000000000000;
  }

  MEMORY[0x1AC5895B0](v11, v12);

  MEMORY[0x1AC5895B0](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_1A97E7EC4(char a1)
{
  result = 0x6174536F6C6C6568;
  switch(a1)
  {
    case 1:
      result = 0x6E65536F6C6C6568;
      break;
    case 2:
      result = 0x6E69466F6C6C6568;
      break;
    case 3:
      result = 0x74726174536B7361;
      break;
    case 4:
      result = 0x746E65536B7361;
      break;
    case 5:
      result = 0x73696E69466B7361;
      break;
    case 6:
      result = 0x745364616F6C7075;
      break;
    case 7:
      result = 0x694664616F6C7075;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x525564616F6C7075;
      break;
    case 10:
      result = 1769173874;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A97E806C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A97EA2A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A97E8094(uint64_t a1)
{
  v2 = sub_1A97E9EF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97E80D0(uint64_t a1)
{
  v2 = sub_1A97E9EF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NetworkMetrics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E88, &qword_1A9994FB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97E9EF8();
  sub_1A9977AA0();
  v29[31] = 0;
  sub_1A9976230();
  sub_1A97EA6D8(&qword_1EB3B0C58);
  sub_1A9977680();
  if (!v2)
  {
    v11 = type metadata accessor for SFAirDrop.NetworkMetrics();
    v12 = v11[5];
    v29[30] = 1;
    sub_1A9977680();
    v13 = v11[6];
    v29[29] = 2;
    sub_1A9977680();
    v14 = v11[7];
    v29[28] = 3;
    sub_1A9977680();
    v15 = v11[8];
    v29[27] = 4;
    sub_1A9977680();
    v16 = v11[9];
    v29[26] = 5;
    sub_1A9977680();
    v17 = v11[10];
    v29[25] = 6;
    sub_1A9977680();
    v18 = v11[11];
    v29[24] = 7;
    sub_1A9977680();
    v19 = *(v3 + v11[12]);
    v29[15] = 8;
    sub_1A99776C0();
    v20 = *(v3 + v11[13]);
    v29[14] = 9;
    sub_1A99776C0();
    v21 = *(v3 + v11[14]);
    v29[13] = 10;
    sub_1A99776C0();
    v22 = (v3 + v11[15]);
    v23 = *v22;
    v24 = v22[1];
    v29[12] = 11;
    sub_1A9977650();
    v25 = (v3 + v11[16]);
    v26 = *v25;
    v27 = v25[1];
    v29[11] = 12;
    sub_1A9977650();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDrop.NetworkMetrics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v64 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v66 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v68 = &v58 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v69 = &v58 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v77 = &v58 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v76 = &v58 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v74 = &v58 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v75 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v58 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E98, &qword_1A9994FB8);
  v80 = *(v19 - 8);
  v81 = v19;
  v20 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v58 - v21;
  v22 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v23 = (v22 - 8);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A9976230();
  v28 = *(*(v27 - 8) + 56);
  v28(v26, 1, 1, v27);
  v73 = v23[7];
  v28(&v26[v73], 1, 1, v27);
  v72 = v23[8];
  v28(&v26[v72], 1, 1, v27);
  v71 = v23[9];
  v28(&v26[v71], 1, 1, v27);
  v70 = v23[10];
  v28(&v26[v70], 1, 1, v27);
  v67 = v23[11];
  v28(&v26[v67], 1, 1, v27);
  v65 = v23[12];
  v28(&v26[v65], 1, 1, v27);
  v29 = v23[13];
  v79 = v27;
  v28(&v26[v29], 1, 1, v27);
  v30 = v23[14];
  *&v26[v30] = 0;
  v31 = v23[15];
  *&v26[v31] = 0;
  v32 = v23[16];
  *&v26[v32] = 0;
  v33 = &v26[v23[17]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = v23[18];
  v83 = v26;
  v35 = &v26[v34];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = v85[4];
  __swift_project_boxed_opaque_existential_1(v85, v85[3]);
  sub_1A97E9EF8();
  v37 = v82;
  sub_1A9977A70();
  if (v37)
  {
    v38 = v83;
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
    return sub_1A97E9F4C(v38);
  }

  else
  {
    v39 = v75;
    v82 = v29;
    v63 = v30;
    v40 = v76;
    v62 = v31;
    v61 = v32;
    v41 = v77;
    v60 = v33;
    v59 = v35;
    v98 = 0;
    sub_1A97EA6D8(&qword_1EB3B0CE0);
    v42 = v78;
    sub_1A9977590();
    v43 = v42;
    v44 = v83;
    sub_1A97E6628(v43, v83);
    v97 = 1;
    sub_1A9977590();
    sub_1A97E6628(v39, v44 + v73);
    v96 = 2;
    v45 = v74;
    sub_1A9977590();
    sub_1A97E6628(v45, v44 + v72);
    v95 = 3;
    sub_1A9977590();
    sub_1A97E6628(v40, v44 + v71);
    v94 = 4;
    sub_1A9977590();
    sub_1A97E6628(v41, v44 + v70);
    v93 = 5;
    v46 = v69;
    sub_1A9977590();
    sub_1A97E6628(v46, v44 + v67);
    v92 = 6;
    v47 = v68;
    sub_1A9977590();
    sub_1A97E6628(v47, v44 + v65);
    v91 = 7;
    v48 = v66;
    sub_1A9977590();
    sub_1A97E6628(v48, v44 + v82);
    v90 = 8;
    *(v44 + v63) = sub_1A99775D0();
    v89 = 9;
    *&v83[v62] = sub_1A99775D0();
    v88 = 10;
    *&v83[v61] = sub_1A99775D0();
    v87 = 11;
    v50 = sub_1A9977550();
    v51 = v60;
    *v60 = v50;
    v51[1] = v52;
    v86 = 12;
    v53 = sub_1A9977550();
    v55 = v54;
    (*(v80 + 8))(v84, v81);
    v56 = v59;
    *v59 = v53;
    v56[1] = v55;
    v57 = v83;
    sub_1A97E9FA8(v83, v64);
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
    return sub_1A97E9F4C(v57);
  }
}

BOOL _s7Sharing9SFAirDropO14NetworkMetricsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A9976230();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v160 = &v142[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v145 = &v142[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v147 = &v142[-v13];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v149 = &v142[-v15];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v151 = &v142[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v153 = &v142[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v155 = &v142[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v158 = &v142[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v142[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1EB8, &unk_1A99A5F30);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v146 = &v142[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v148 = &v142[-v31];
  v32 = MEMORY[0x1EEE9AC00](v30);
  v150 = &v142[-v33];
  v34 = MEMORY[0x1EEE9AC00](v32);
  v152 = &v142[-v35];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v154 = &v142[-v37];
  v38 = MEMORY[0x1EEE9AC00](v36);
  v157 = &v142[-v39];
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v142[-v41];
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v142[-v44];
  v161 = v43;
  v46 = *(v43 + 48);
  sub_1A97E6230(a1, &v142[-v44]);
  sub_1A97E6230(a2, &v45[v46]);
  v47 = *(v5 + 48);
  v48 = (v47)(v45, 1, v4);
  v159 = v5 + 48;
  if (v48 == 1)
  {
    if ((v47)(&v45[v46], 1, v4) == 1)
    {
      v144 = v5;
      sub_1A97B06FC(v45, &unk_1EB3B2A30, &unk_1A99983A0);
      v156 = a2;
      goto LABEL_8;
    }

LABEL_6:
    v49 = v45;
LABEL_20:
    sub_1A97B06FC(v49, &qword_1EB3B1EB8, &unk_1A99A5F30);
    return 0;
  }

  sub_1A97E6230(v45, v25);
  if ((v47)(&v45[v46], 1, v4) == 1)
  {
    (*(v5 + 8))(v25, v4);
    goto LABEL_6;
  }

  v50 = &v45[v46];
  v51 = v160;
  (*(v5 + 32))(v160, v50, v4);
  sub_1A97EA6D8(&qword_1EB3B1EC0);
  v143 = sub_1A99767A0();
  v144 = v5;
  v156 = a2;
  v52 = *(v5 + 8);
  v52(v51, v4);
  v52(v25, v4);
  sub_1A97B06FC(v45, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((v143 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v53 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v54 = v53[5];
  v55 = *(v161 + 48);
  sub_1A97E6230(a1 + v54, v42);
  sub_1A97E6230(v156 + v54, v42 + v55);
  if ((v47)(v42, 1, v4) == 1)
  {
    if ((v47)(v42 + v55, 1, v4) != 1)
    {
LABEL_19:
      v49 = v42;
      goto LABEL_20;
    }

    v56 = v47;
    sub_1A97B06FC(v42, &unk_1EB3B2A30, &unk_1A99983A0);
  }

  else
  {
    v57 = v158;
    sub_1A97E6230(v42, v158);
    v58 = (v47)(v42 + v55, 1, v4);
    v59 = v144;
    if (v58 == 1)
    {
LABEL_12:
      (*(v59 + 8))(v57, v4);
      goto LABEL_19;
    }

    v56 = v47;
    v60 = v160;
    (*(v144 + 32))(v160, v42 + v55, v4);
    sub_1A97EA6D8(&qword_1EB3B1EC0);
    v61 = sub_1A99767A0();
    v62 = v60;
    LOBYTE(v60) = v61;
    v63 = *(v59 + 8);
    v63(v62, v4);
    v63(v57, v4);
    sub_1A97B06FC(v42, &unk_1EB3B2A30, &unk_1A99983A0);
    if ((v60 & 1) == 0)
    {
      return 0;
    }
  }

  v64 = v53[6];
  v65 = *(v161 + 48);
  v42 = v157;
  sub_1A97E6230(a1 + v64, v157);
  sub_1A97E6230(v156 + v64, v42 + v65);
  v66 = v56;
  if (v56(v42, 1, v4) == 1)
  {
    if (v56(v42 + v65, 1, v4) != 1)
    {
      goto LABEL_19;
    }

    sub_1A97B06FC(v42, &unk_1EB3B2A30, &unk_1A99983A0);
  }

  else
  {
    v67 = v42;
    v68 = v42;
    v69 = v155;
    sub_1A97E6230(v67, v155);
    v70 = v66(v68 + v65, 1, v4);
    v71 = v144;
    if (v70 == 1)
    {
      goto LABEL_18;
    }

    v73 = *(v144 + 32);
    v158 = v66;
    v74 = v160;
    v73(v160, v68 + v65, v4);
    sub_1A97EA6D8(&qword_1EB3B1EC0);
    v75 = v53;
    v76 = v74;
    v66 = v158;
    v77 = sub_1A99767A0();
    v78 = *(v71 + 8);
    v78(v76, v4);
    v78(v69, v4);
    v53 = v75;
    sub_1A97B06FC(v68, &unk_1EB3B2A30, &unk_1A99983A0);
    if ((v77 & 1) == 0)
    {
      return 0;
    }
  }

  v79 = v53[7];
  v80 = v161;
  v81 = *(v161 + 48);
  v82 = v154;
  sub_1A97E6230(a1 + v79, v154);
  sub_1A97E6230(v156 + v79, &v82[v81]);
  if (v66(v82, 1, v4) == 1)
  {
    if (v66(&v82[v81], 1, v4) == 1)
    {
      sub_1A97B06FC(v82, &unk_1EB3B2A30, &unk_1A99983A0);
      goto LABEL_30;
    }

LABEL_28:
    v49 = v82;
    goto LABEL_20;
  }

  v83 = v153;
  sub_1A97E6230(v82, v153);
  v84 = v66(&v82[v81], 1, v4);
  v85 = v144;
  if (v84 == 1)
  {
    (*(v144 + 8))(v83, v4);
    goto LABEL_28;
  }

  v86 = *(v144 + 32);
  v158 = v66;
  v87 = v160;
  v86(v160, &v82[v81], v4);
  sub_1A97EA6D8(&qword_1EB3B1EC0);
  v157 = v53;
  v88 = v87;
  v66 = v158;
  v80 = v161;
  v89 = sub_1A99767A0();
  v90 = *(v85 + 8);
  v90(v88, v4);
  v90(v83, v4);
  v53 = v157;
  sub_1A97B06FC(v82, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((v89 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v91 = v53[8];
  v92 = *(v80 + 48);
  v42 = v152;
  sub_1A97E6230(a1 + v91, v152);
  sub_1A97E6230(v156 + v91, v42 + v92);
  if (v66(v42, 1, v4) != 1)
  {
    v93 = v42;
    v68 = v42;
    v69 = v151;
    sub_1A97E6230(v93, v151);
    v94 = v66(v68 + v92, 1, v4);
    v71 = v144;
    if (v94 != 1)
    {
      v95 = v68 + v92;
      v96 = v66;
      v97 = v160;
      (*(v144 + 32))(v160, v95, v4);
      sub_1A97EA6D8(&qword_1EB3B1EC0);
      v157 = v53;
      v98 = v97;
      v66 = v96;
      v80 = v161;
      v99 = sub_1A99767A0();
      v100 = *(v71 + 8);
      v100(v98, v4);
      v100(v69, v4);
      v53 = v157;
      sub_1A97B06FC(v152, &unk_1EB3B2A30, &unk_1A99983A0);
      if ((v99 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_35;
    }

LABEL_18:
    (*(v71 + 8))(v69, v4);
    v42 = v68;
    goto LABEL_19;
  }

  if (v66(v42 + v92, 1, v4) != 1)
  {
    goto LABEL_19;
  }

  sub_1A97B06FC(v42, &unk_1EB3B2A30, &unk_1A99983A0);
LABEL_35:
  v101 = v53[9];
  v102 = *(v80 + 48);
  v103 = v150;
  sub_1A97E6230(a1 + v101, v150);
  sub_1A97E6230(v156 + v101, &v103[v102]);
  if (v66(v103, 1, v4) == 1)
  {
    if (v66(&v103[v102], 1, v4) == 1)
    {
      sub_1A97B06FC(v103, &unk_1EB3B2A30, &unk_1A99983A0);
      goto LABEL_42;
    }

LABEL_40:
    v49 = v103;
    goto LABEL_20;
  }

  v104 = v149;
  sub_1A97E6230(v103, v149);
  v105 = v66(&v103[v102], 1, v4);
  v106 = v144;
  if (v105 == 1)
  {
    (*(v144 + 8))(v104, v4);
    goto LABEL_40;
  }

  v107 = *(v144 + 32);
  v158 = v66;
  v108 = v160;
  v107(v160, &v103[v102], v4);
  sub_1A97EA6D8(&qword_1EB3B1EC0);
  v109 = v53;
  v110 = v108;
  v66 = v158;
  v111 = sub_1A99767A0();
  v112 = *(v106 + 8);
  v112(v110, v4);
  v112(v104, v4);
  v53 = v109;
  sub_1A97B06FC(v103, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((v111 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v113 = v53[10];
  v114 = v161;
  v115 = *(v161 + 48);
  v42 = v148;
  sub_1A97E6230(a1 + v113, v148);
  sub_1A97E6230(v156 + v113, v42 + v115);
  if (v66(v42, 1, v4) == 1)
  {
    if (v66(v42 + v115, 1, v4) == 1)
    {
      sub_1A97B06FC(v42, &unk_1EB3B2A30, &unk_1A99983A0);
      goto LABEL_47;
    }

    goto LABEL_19;
  }

  v157 = v53;
  v57 = v147;
  sub_1A97E6230(v42, v147);
  v116 = v66(v42 + v115, 1, v4);
  v59 = v144;
  if (v116 == 1)
  {
    goto LABEL_12;
  }

  v117 = v66;
  v118 = v160;
  (*(v144 + 32))(v160, v42 + v115, v4);
  sub_1A97EA6D8(&qword_1EB3B1EC0);
  v119 = v118;
  v66 = v117;
  v114 = v161;
  v120 = sub_1A99767A0();
  v121 = *(v59 + 8);
  v121(v119, v4);
  v121(v57, v4);
  sub_1A97B06FC(v42, &unk_1EB3B2A30, &unk_1A99983A0);
  v53 = v157;
  if ((v120 & 1) == 0)
  {
    return 0;
  }

LABEL_47:
  v157 = v53;
  v122 = v53[11];
  v123 = *(v114 + 48);
  v124 = v146;
  sub_1A97E6230(a1 + v122, v146);
  sub_1A97E6230(v156 + v122, &v124[v123]);
  if (v66(v124, 1, v4) == 1)
  {
    if (v66(&v124[v123], 1, v4) == 1)
    {
      sub_1A97B06FC(v124, &unk_1EB3B2A30, &unk_1A99983A0);
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  sub_1A97E6230(v124, v145);
  if (v66(&v124[v123], 1, v4) == 1)
  {
    (*(v144 + 8))(v145, v4);
LABEL_52:
    v49 = v124;
    goto LABEL_20;
  }

  v125 = v124;
  v126 = v144;
  v127 = v160;
  (*(v144 + 32))(v160, v125 + v123, v4);
  sub_1A97EA6D8(&qword_1EB3B1EC0);
  v128 = v145;
  v129 = sub_1A99767A0();
  v130 = *(v126 + 8);
  v130(v127, v4);
  v130(v128, v4);
  sub_1A97B06FC(v125, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((v129 & 1) == 0)
  {
    return 0;
  }

LABEL_54:
  if (*(a1 + v157[12]) != *(v156 + v157[12]) || *(a1 + v157[13]) != *(v156 + v157[13]) || *(a1 + v157[14]) != *(v156 + v157[14]))
  {
    return 0;
  }

  v131 = v157[15];
  v132 = (a1 + v131);
  v133 = *(a1 + v131 + 8);
  v134 = v156;
  v135 = (v156 + v131);
  v136 = v135[1];
  if (v133)
  {
    if (!v136 || (*v132 != *v135 || v133 != v136) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v136)
  {
    return 0;
  }

  v137 = v157[16];
  v138 = (a1 + v137);
  v139 = *(a1 + v137 + 8);
  v140 = (v134 + v137);
  v141 = v140[1];
  if (v139)
  {
    return v141 && (*v138 == *v140 && v139 == v141 || (sub_1A99777E0() & 1) != 0);
  }

  return !v141;
}

unint64_t sub_1A97E9EF8()
{
  result = qword_1EB3B1E90;
  if (!qword_1EB3B1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1E90);
  }

  return result;
}

uint64_t sub_1A97E9F4C(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDrop.NetworkMetrics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A97E9FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.NetworkMetrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A97EA034()
{
  sub_1A97EA0E0();
  if (v0 <= 0x3F)
  {
    sub_1A97EA138();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A97EA0E0()
{
  if (!qword_1EB3AC8A0)
  {
    sub_1A9976230();
    v0 = sub_1A99770A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AC8A0);
    }
  }
}

void sub_1A97EA138()
{
  if (!qword_1EB3AB718)
  {
    v0 = sub_1A99770A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AB718);
    }
  }
}

unint64_t sub_1A97EA19C()
{
  result = qword_1EB3B1EA0;
  if (!qword_1EB3B1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EA0);
  }

  return result;
}

unint64_t sub_1A97EA1F4()
{
  result = qword_1EB3B1EA8;
  if (!qword_1EB3B1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EA8);
  }

  return result;
}

unint64_t sub_1A97EA24C()
{
  result = qword_1EB3B1EB0;
  if (!qword_1EB3B1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EB0);
  }

  return result;
}

uint64_t sub_1A97EA2A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174536F6C6C6568 && a2 == 0xEA00000000007472;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65536F6C6C6568 && a2 == 0xE900000000000074 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69466F6C6C6568 && a2 == 0xEB00000000687369 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74726174536B7361 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65536B7361 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73696E69466B7361 && a2 == 0xE900000000000068 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x745364616F6C7075 && a2 == 0xEB00000000747261 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x694664616F6C7075 && a2 == 0xEC0000006873696ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E3FE0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x525564616F6C7075 && a2 == 0xEE00746E756F434CLL || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1769173874 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E3ED0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E3EF0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1A97EA6D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A9976230();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SFBoopController.send<A>(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A97EA760, 0, 0);
}

uint64_t sub_1A97EA760()
{
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1A99767E0();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v4 = v3;
    v5 = sub_1A99767E0();
    v6 = [v4 stringForKey_];

    if (v6)
    {
      v7 = sub_1A9976820();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        v11 = v7 == 0xD000000000000012 && 0x80000001A99E4040 == v9;
        if (v11 || (sub_1A99777E0() & 1) != 0)
        {

          v12 = 1;
LABEL_12:
          sub_1A97EAA08();
          swift_allocError();
          *v13 = v12;
          swift_willThrow();

          v14 = v0[1];
          goto LABEL_16;
        }

        if (v7 == 0x726566736E617274 && v9 == 0xEE0064656C696146 || (sub_1A99777E0() & 1) != 0)
        {

          v12 = 0;
          goto LABEL_12;
        }

        if (v7 == 0x74754F64656D6974 && v9 == 0xE800000000000000)
        {

LABEL_27:
          v12 = 2;
          goto LABEL_12;
        }

        v16 = sub_1A99777E0();

        if (v16)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }
    }
  }

  (*(*(v0[4] - 8) + 16))(v0[2], v0[3]);
  v14 = v0[1];
LABEL_16:

  return v14();
}

unint64_t sub_1A97EAA08()
{
  result = qword_1EB3B1EC8;
  if (!qword_1EB3B1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EC8);
  }

  return result;
}

uint64_t SFBoopController.register<A>(_:type:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  v6 = *(a5 - 8);
  v5[11] = v6;
  v7 = *(v6 + 64) + 15;
  v5[12] = swift_task_alloc();
  v8 = sub_1A99770A0();
  v5[13] = v8;
  v9 = *(v8 - 8);
  v5[14] = v9;
  v10 = *(v9 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97EAB7C, 0, 0);
}

uint64_t sub_1A97EAB7C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  strcpy((v0 + 16), "John Appleseed");
  *(v0 + 31) = -18;
  *(v0 + 32) = xmmword_1A99951F0;
  *(v0 + 48) = 0xD000000000000015;
  *(v0 + 56) = 0x80000001A99E4060;

  sub_1A97B40FC(0, 0xC000000000000000);

  swift_dynamicCast();
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_1A97EAD14;
  v6 = *(v0 + 120);
  v7 = *(v0 + 96);
  v8 = *(v0 + 72);

  return v10(v6, v7);
}

uint64_t sub_1A97EAD14()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v6 = *v1;

  if (v0)
  {

    v4 = sub_1A97EAF28;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v4 = sub_1A97EAE44;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A97EAE44()
{

  sub_1A97B43C4(0, 0xC000000000000000);

  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  (*(v0[11] + 56))(v1, 0, 1, v0[10]);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A97EAF28()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  sub_1A97B43C4(0, 0xC000000000000000);

  (*(v2 + 8))(v1, v3);
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  (*(v0[11] + 56))(v4, 1, 1, v0[10]);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t Contact.init(name:avatar:email:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t Contact.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1A99772B0();

  MEMORY[0x1AC5895B0](v1, v2);
  MEMORY[0x1AC5895B0](0x726174617661202CLL, 0xEA0000000000203ALL);
  v7 = sub_1A9976040();
  MEMORY[0x1AC5895B0](v7);

  MEMORY[0x1AC5895B0](0x3A6C69616D65202CLL, 0xE900000000000020);
  MEMORY[0x1AC5895B0](v5, v6);
  return 0x3A746361746E6F43;
}

uint64_t sub_1A97EB160()
{
  v1 = 0x726174617661;
  if (*v0 != 1)
  {
    v1 = 0x6C69616D65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1A97EB1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A97EBA5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A97EB1D4(uint64_t a1)
{
  v2 = sub_1A97EB420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97EB210(uint64_t a1)
{
  v2 = sub_1A97EB420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Contact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1ED0, &qword_1A9995210);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v16 = v1[3];
  v17 = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97EB420();
  sub_1A9977AA0();
  LOBYTE(v19) = 0;
  v13 = v18;
  sub_1A9977690();
  if (!v13)
  {
    v19 = v17;
    v20 = v16;
    v21 = 1;
    sub_1A97B40FC(v17, v16);
    sub_1A97B4370();
    sub_1A99776E0();
    sub_1A97B43C4(v19, v20);
    LOBYTE(v19) = 2;
    sub_1A9977690();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A97EB420()
{
  result = qword_1EB3B1ED8;
  if (!qword_1EB3B1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1ED8);
  }

  return result;
}

uint64_t Contact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1EE0, &qword_1A9995218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97EB420();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v24) = 0;
  v11 = sub_1A99775A0();
  v23 = v12;
  v26 = 1;
  sub_1A97B446C();
  sub_1A99775F0();
  v21 = v24;
  v22 = v25;
  LOBYTE(v24) = 2;
  v13 = sub_1A99775A0();
  v14 = *(v6 + 8);
  v20 = v15;
  v14(v9, v5);
  v17 = v22;
  v16 = v23;
  *a2 = v11;
  a2[1] = v16;
  v18 = v21;
  a2[2] = v21;
  a2[3] = v17;
  a2[4] = v13;
  a2[5] = v20;

  sub_1A97B40FC(v18, v17);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  sub_1A97B43C4(v18, v17);
}

uint64_t SFBoopControllerErrors.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

unint64_t sub_1A97EB7DC()
{
  result = qword_1EB3B1EE8;
  if (!qword_1EB3B1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EE8);
  }

  return result;
}

uint64_t sub_1A97EB890(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A97EB8D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A97EB958()
{
  result = qword_1EB3B1EF0;
  if (!qword_1EB3B1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EF0);
  }

  return result;
}

unint64_t sub_1A97EB9B0()
{
  result = qword_1EB3B1EF8;
  if (!qword_1EB3B1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1EF8);
  }

  return result;
}

unint64_t sub_1A97EBA08()
{
  result = qword_1EB3B1F00;
  if (!qword_1EB3B1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F00);
  }

  return result;
}

uint64_t sub_1A97EBA5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v8 = *(*(a4 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = *(*(sub_1A99770A0() - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = *(a3 - 8);
  v6[14] = v13;
  v14 = *(v13 + 64) + 15;
  v6[15] = swift_task_alloc();
  v15 = swift_getAssociatedTypeWitness();
  v6[16] = v15;
  v16 = *(v15 - 8);
  v6[17] = v16;
  v17 = *(v16 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97EBD80, 0, 0);
}

uint64_t sub_1A97EBD80()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_1A99766B0();
  (*(v3 + 16))(v2, v4, v7);
  sub_1A99769E0();
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[7];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1A9977160();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[15];
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v19 = v0[2];

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v22 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v28 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[19] = v24;
    *v24 = v0;
    v24[1] = sub_1A97EBFEC;
    v25 = v0[12];
    v26 = v0[9];
    v27 = v0[4];

    return v28(v26, v25);
  }
}

uint64_t sub_1A97EBFEC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_1A97EC360;
  }

  else
  {
    v5 = sub_1A97EC108;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A97EC108()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
  sub_1A9976B60();
  sub_1A9976B40();
  (*(v2 + 8))(v1, v3);
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[7];
  v12 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1A9977160();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v17 = v0[2];

    v18 = v0[1];

    return v18(v17);
  }

  else
  {
    v20 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v26 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_1A97EBFEC;
    v23 = v0[12];
    v24 = v0[9];
    v25 = v0[4];

    return v26(v24, v23);
  }
}

uint64_t sub_1A97EC360()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t Sequence<>.coordinateRead(withSaveToTempDir:options:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 160) = a4;
  *(v5 + 168) = v4;
  *(v5 + 144) = a2;
  *(v5 + 152) = a3;
  *(v5 + 320) = a1;
  v7 = sub_1A9976020();
  *(v5 + 176) = v7;
  v8 = *(v7 - 8);
  *(v5 + 184) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A40, &qword_1A99983B0) - 8) + 64) + 15;
  *(v5 + 232) = swift_task_alloc();
  v11 = *(a3 - 8);
  *(v5 + 240) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 256) = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  *(v5 + 264) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97EC644, 0, 0);
}

uint64_t sub_1A97EC644()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 160);
  (*(*(v0 + 240) + 16))(*(v0 + 248), *(v0 + 168), *(v0 + 152));
  sub_1A99769E0();
  for (i = MEMORY[0x1E69E7CC0]; ; v21(&i[((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17], v18, v22))
  {
    *(v0 + 280) = i;
    v4 = *(v0 + 272);
    v5 = *(v0 + 256);
    v6 = *(v0 + 232);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    swift_getAssociatedConformanceWitness();
    sub_1A9977160();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      break;
    }

    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v15 = *(v14 + 32);
    *(v0 + 288) = v15;
    *(v0 + 296) = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v12, v11, v13);
    if (sub_1A9975F70())
    {
      v32 = *(v0 + 224);
      v33 = *(v0 + 208);
      v34 = *(v0 + 144);
      v35 = *(v0 + 320);
      v36 = sub_1A9975FC0();
      *(v0 + 304) = v36;
      *(v0 + 16) = v0;
      *(v0 + 56) = v33;
      *(v0 + 24) = sub_1A97EC9E0;
      v37 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1F08, &qword_1A9995588);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1A97ED048;
      *(v0 + 104) = &block_descriptor_1;
      *(v0 + 112) = v37;
      [v36 coordinateReadingWithSaveToTempDir:v35 options:v34 completionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 224), *(v0 + 176));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1A97AE958(0, *(i + 2) + 1, 1, i);
    }

    v17 = *(i + 2);
    v16 = *(i + 3);
    if (v17 >= v16 >> 1)
    {
      i = sub_1A97AE958(v16 > 1, v17 + 1, 1, i);
    }

    (*(*(v0 + 184) + 8))(*(v0 + 224), *(v0 + 176));
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v21 = *(v0 + 288);
    v20 = *(v0 + 296);
    v22 = *(v0 + 176);
    *(i + 2) = v17 + 1;
  }

  v23 = *(v0 + 248);
  v25 = *(v0 + 224);
  v24 = *(v0 + 232);
  v27 = *(v0 + 208);
  v26 = *(v0 + 216);
  v29 = *(v0 + 192);
  v28 = *(v0 + 200);
  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

  v30 = *(v0 + 8);

  return v30(i);
}

uint64_t sub_1A97EC9E0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 312) = v3;
  if (v3)
  {
    v4 = *(v1 + 280);

    v5 = sub_1A97ECF2C;
  }

  else
  {
    v5 = sub_1A97ECAF8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A97ECAF8()
{
  v2 = (v0 + 200);
  v1 = *(v0 + 200);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 216);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  (*(v0 + 288))(v6, *(v0 + 208), v7);

  (*(v8 + 16))(v1, v6, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 280);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1A97AE958(0, *(v10 + 2) + 1, 1, *(v0 + 280));
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1A97AE958(v11 > 1, v12 + 1, 1, v10);
  }

  v14 = *(v0 + 224);
  v15 = *(v0 + 176);
  v16 = *(*(v0 + 184) + 8);
  v16(*(v0 + 216), v15);
  v16(v14, v15);
  while (1)
  {
    v17 = *v2;
    v19 = *(v0 + 288);
    v18 = *(v0 + 296);
    v20 = *(v0 + 176);
    v21 = *(v0 + 184);
    *(v10 + 2) = v13;
    v19(&v10[((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v12], v17, v20);
    *(v0 + 280) = v10;
    v22 = *(v0 + 272);
    v23 = *(v0 + 256);
    v24 = *(v0 + 232);
    v25 = *(v0 + 176);
    v26 = *(v0 + 184);
    v28 = *(v0 + 152);
    v27 = *(v0 + 160);
    swift_getAssociatedConformanceWitness();
    sub_1A9977160();
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      break;
    }

    v30 = *(v0 + 224);
    v29 = *(v0 + 232);
    v31 = *(v0 + 176);
    v32 = *(v0 + 184);
    v33 = *(v32 + 32);
    *(v0 + 288) = v33;
    *(v0 + 296) = (v32 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v33(v30, v29, v31);
    if (sub_1A9975F70())
    {
      v44 = *(v0 + 224);
      v45 = *(v0 + 208);
      v46 = *(v0 + 144);
      v47 = *(v0 + 320);
      v48 = sub_1A9975FC0();
      *(v0 + 304) = v48;
      *(v0 + 16) = v0;
      *(v0 + 56) = v45;
      *(v0 + 24) = sub_1A97EC9E0;
      v49 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1F08, &qword_1A9995588);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1A97ED048;
      *(v0 + 104) = &block_descriptor_1;
      *(v0 + 112) = v49;
      [v48 coordinateReadingWithSaveToTempDir:v47 options:v46 completionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 224), *(v0 + 176));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1A97AE958(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v34 = *(v10 + 3);
    v13 = v12 + 1;
    if (v12 >= v34 >> 1)
    {
      v10 = sub_1A97AE958(v34 > 1, v12 + 1, 1, v10);
    }

    (*(*(v0 + 184) + 8))(*(v0 + 224), *(v0 + 176));
    v2 = (v0 + 192);
  }

  v35 = *(v0 + 248);
  v37 = *(v0 + 224);
  v36 = *(v0 + 232);
  v39 = *(v0 + 208);
  v38 = *(v0 + 216);
  v41 = *(v0 + 192);
  v40 = *(v0 + 200);
  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

  v42 = *(v0 + 8);

  return v42(v10);
}

uint64_t sub_1A97ECF2C()
{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  v13 = v0[29];
  v14 = v0[27];
  v15 = v0[26];
  v16 = v0[25];
  v17 = v0[24];
  v9 = v0[22];
  v8 = v0[23];
  swift_willThrow();
  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];
  v11 = v0[39];

  return v10();
}

uint64_t sub_1A97ED048(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A9976020();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    swift_allocError();
    *v11 = a3;
    v12 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_1A9975FE0();
    (*(v6 + 32))(*(*(v10 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1A97ED1D0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1A9976E60();
  if (!v26)
  {
    return sub_1A9976B00();
  }

  v48 = v26;
  v52 = sub_1A99773B0();
  v39 = sub_1A99773C0();
  sub_1A9977370();
  result = sub_1A9976E50();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1A9976F20();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1A99773A0();
      result = sub_1A9976E90();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A97ED5F0()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B1F10);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B1F10);
  if (qword_1EB3ACCA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3ACCB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFSecurityScopedURL.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A9976020();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SFSecurityScopedURL.sandboxToken.getter()
{
  v1 = (v0 + *(type metadata accessor for SFSecurityScopedURL(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFSecurityScopedURL.init(_:readWrite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A9976020();
  v6 = *(v5 - 8);
  (*(v6 + 16))(a2, a1, v5);
  sub_1A97F0064(a1);
  if (v2)
  {
    v9 = *(v6 + 8);
    v9(a1, v5);
    return (v9)(a2, v5);
  }

  else
  {
    v11 = v7;
    v12 = v8;
    (*(v6 + 8))(a1, v5);
    result = type metadata accessor for SFSecurityScopedURL(0);
    v13 = (a2 + *(result + 20));
    *v13 = v11;
    v13[1] = v12;
  }

  return result;
}

uint64_t static SFSecurityScopedURL.consumeSandboxToken(item:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A9976850();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A9975F70())
  {
    v33 = v2;
    v10 = (a1 + *(type metadata accessor for SFSecurityScopedURL(0) + 20));
    v11 = *v10;
    v12 = v10[1];
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1A9977400();
    MEMORY[0x1AC5895B0](0x786F62646E61732ELL, 0xED00006E656B6F54);
    v13 = v36;
    if (v12)
    {
      v34 = 0x80000001A99E40C0;
      v32 = a2;

      v35 = v11;
      v36 = v12;
      sub_1A9976840();
      sub_1A97F0528();
      v14 = sub_1A9977190();
      (*(v6 + 8))(v9, v5);
      v35 = v11;
      v36 = v12;
      MEMORY[0x1AC5895B0](0x676E69727453632ELL, 0xE800000000000000);
      v15 = v36;
      if (v14)
      {

        v16 = sandbox_extension_consume();

        v35 = 0;
        v36 = 0xE000000000000000;
        sub_1A99772B0();

        v35 = 0xD00000000000001ELL;
        v36 = 0x80000001A99E4120;
        v37 = MEMORY[0x1AC589160](v17);
        v18 = sub_1A9977730();
        MEMORY[0x1AC5895B0](v18);

        MEMORY[0x1AC5895B0](125, 0xE100000000000000);
        v19 = v36;
        v20 = v34;
        if ((v16 & 0x8000000000000000) == 0)
        {

          v21 = *(type metadata accessor for SFSandboxTokenURLPair(0) + 20);
          v22 = sub_1A9976020();
          v23 = v32;
          result = (*(*(v22 - 8) + 16))(v32 + v21, a1, v22);
          *v23 = v16;
          return result;
        }

        v30 = v35;
        sub_1A97BCDE0();
        swift_allocError();
        *v26 = v30;
        *(v26 + 8) = v19;
        *(v26 + 16) = xmmword_1A9995590;
        *(v26 + 32) = v20;
        *(v26 + 40) = 49;
        v29 = 0x8000000000000000;
        goto LABEL_10;
      }

      v28 = v35;
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = v28;
      *(v26 + 8) = v15;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = v34;
      v27 = 46;
    }

    else
    {
      v25 = v35;
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = v25;
      *(v26 + 8) = v13;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E40C0;
      v27 = 45;
    }

    *(v26 + 32) = v27;
    v29 = 0x2000000000000000;
LABEL_10:
    *(v26 + 80) = v29;
    return swift_willThrow();
  }

  type metadata accessor for SFAirDropSend.Failure();
  sub_1A97F0AF4(&qword_1EB3B1F28, type metadata accessor for SFAirDropSend.Failure);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t SFSandboxTokenURLPair.init(token:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for SFSandboxTokenURLPair(0) + 20);
  v6 = sub_1A9976020();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t static SFSecurityScopedURL.withAccess<A>(to:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SFSandboxTokenURLPair(0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = sub_1A9976020();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v11 = *(type metadata accessor for SFSecurityScopedURL(0) - 8);
  v4[14] = v11;
  v12 = *(v11 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97EDEFC, 0, 0);
}

uint64_t sub_1A97EDEFC()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v65 = v2;
  if (v2)
  {
    v4 = v0[14];
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = *(v4 + 72);
    v7 = v1 + v5;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A97F0604(v7, v0[18], type metadata accessor for SFSecurityScopedURL);
      v9 = sub_1A9975F70();
      v10 = v0[18];
      if (v9)
      {
        sub_1A97F066C(v10, type metadata accessor for SFSecurityScopedURL);
      }

      else
      {
        sub_1A97F059C(v10, v0[17], type metadata accessor for SFSecurityScopedURL);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A97BDBC0(0, *(v8 + 16) + 1, 1);
        }

        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1A97BDBC0(v11 > 1, v12 + 1, 1);
        }

        v13 = v0[17];
        *(v8 + 16) = v12 + 1;
        sub_1A97F059C(v13, v8 + v5 + v12 * v6, type metadata accessor for SFSecurityScopedURL);
      }

      v7 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = v8;
    v16 = v0[14];
    v17 = v0[11];
    sub_1A97BDB38(0, v14, 0);
    v18 = v3;
    v19 = v15 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v67 = *(v16 + 72);
    do
    {
      v20 = v0[16];
      v21 = v0[13];
      v22 = v0[10];
      sub_1A97F0604(v19, v20, type metadata accessor for SFSecurityScopedURL);
      (*(v17 + 16))(v21, v20, v22);
      sub_1A97F066C(v20, type metadata accessor for SFSecurityScopedURL);
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1A97BDB38(v23 > 1, v24 + 1, 1);
      }

      v25 = v0[13];
      v26 = v0[10];
      *(v18 + 16) = v24 + 1;
      (*(v17 + 32))(v18 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, v25, v26);
      v19 += v67;
      --v14;
    }

    while (v14);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v0[19] = v18;
  v27 = v65;
  if (*(v18 + 16))
  {
    if (qword_1EB3B0AD8 != -1)
    {
      swift_once();
    }

    v28 = sub_1A99764A0();
    __swift_project_value_buffer(v28, qword_1EB3B1F10);
    v29 = sub_1A9976480();
    v30 = sub_1A9976F90();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1A9662000, v29, v30, "Non fileURL detected, skipping sandbox tokens", v31, 2u);
      MEMORY[0x1AC58D2C0](v31, -1, -1);
    }

    v32 = v0[4];

    v68 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    v0[20] = v34;
    *v34 = v0;
    v34[1] = sub_1A97EE6F4;
    v35 = v0[5];
    v36 = v0[2];
    v37 = v18;
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
    if (v65)
    {
      v39 = v0[14];
      v40 = v0[7];
      v41 = v0[3];
      v70 = MEMORY[0x1E69E7CC0];
      sub_1A97BDB7C(0, v65, 0);
      v38 = v70;
      v42 = v41 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v43 = *(v39 + 72);
      do
      {
        v44 = v0[15];
        v45 = v0[9];
        sub_1A97F0604(v42, v44, type metadata accessor for SFSecurityScopedURL);
        static SFSecurityScopedURL.consumeSandboxToken(item:)(v44, v45);
        sub_1A97F066C(v0[15], type metadata accessor for SFSecurityScopedURL);
        v47 = *(v70 + 16);
        v46 = *(v70 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1A97BDB7C(v46 > 1, v47 + 1, 1);
        }

        v48 = v0[9];
        *(v70 + 16) = v47 + 1;
        sub_1A97F059C(v48, v70 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v47, type metadata accessor for SFSandboxTokenURLPair);
        v42 += v43;
        --v27;
      }

      while (v27);
    }

    v0[22] = v38;
    v49 = *(v38 + 16);
    v50 = MEMORY[0x1E69E7CC0];
    if (v49)
    {
      v51 = v0[11];
      v52 = v0[7];
      v69 = v0[6];
      v71 = MEMORY[0x1E69E7CC0];
      sub_1A97BDB38(0, v49, 0);
      v50 = v71;
      v53 = v38 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v66 = *(v52 + 72);
      do
      {
        v54 = v0[12];
        v55 = v0[10];
        v56 = v0[8];
        sub_1A97F0604(v53, v56, type metadata accessor for SFSandboxTokenURLPair);
        (*(v51 + 16))(v54, v56 + *(v69 + 20), v55);
        sub_1A97F066C(v56, type metadata accessor for SFSandboxTokenURLPair);
        v58 = *(v71 + 16);
        v57 = *(v71 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1A97BDB38(v57 > 1, v58 + 1, 1);
        }

        v59 = v0[12];
        v60 = v0[10];
        *(v71 + 16) = v58 + 1;
        (*(v51 + 32))(v71 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v58, v59, v60);
        v53 += v66;
        --v49;
      }

      while (v49);
    }

    v0[23] = v50;
    v68 = (v0[4] + *v0[4]);
    v61 = *(v0[4] + 4);
    v62 = swift_task_alloc();
    v0[24] = v62;
    *v62 = v0;
    v62[1] = sub_1A97EE8D0;
    v63 = v0[5];
    v36 = v0[2];
    v37 = v50;
  }

  return v68(v36, v37);
}

uint64_t sub_1A97EE6F4()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1A97EEAC0;
  }

  else
  {
    v3 = sub_1A97EE808;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A97EE808()
{
  v1 = v0[19];

  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[8];
  v8 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A97EE8D0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1A97EEB88;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1A97EE9EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A97EE9EC()
{
  sub_1A97EEC60(v0[22]);

  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A97EEAC0()
{
  v1 = v0[19];

  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A97EEB88()
{
  v2 = v0[22];
  v1 = v0[23];

  sub_1A97EEC60(v2);

  v3 = v0[25];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[12];
  v8 = v0[13];
  v11 = v0[8];
  v10 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A97EEC60(uint64_t a1)
{
  v2 = type metadata accessor for SFSandboxTokenURLPair(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1A97BDB18(0, v7, 0);
    v8 = v19;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1A97F0604(v9, v6, type metadata accessor for SFSandboxTokenURLPair);
      v11 = *v6;
      sub_1A97F066C(v6, type metadata accessor for SFSandboxTokenURLPair);
      v19 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        sub_1A97BDB18((v12 > 1), v13 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v14;
      *(v8 + 8 * v13 + 32) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v14)
    {
    }
  }

  v15 = 32;
  do
  {
    v16 = *(v8 + v15);
    sandbox_extension_release();
    v15 += 8;
    --v14;
  }

  while (v14);
}

uint64_t static SFSecurityScopedURL.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1A9975FD0())
  {
    v4 = *(type metadata accessor for SFSecurityScopedURL(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_1A99777E0() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1A97EEE8C()
{
  if (*v0)
  {
    result = 0x54786F62646E6173;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_1A97EEEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x54786F62646E6173 && a2 == 0xEC0000006E656B6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97EEFA8(uint64_t a1)
{
  v2 = sub_1A97F06CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97EEFE4(uint64_t a1)
{
  v2 = sub_1A97F06CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFSecurityScopedURL.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1F30, &qword_1A99955A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97F06CC();
  sub_1A9977AA0();
  v15[15] = 0;
  sub_1A9976020();
  sub_1A97F0AF4(&qword_1EB3B1918, MEMORY[0x1E6968FB0]);
  sub_1A99776E0();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for SFSecurityScopedURL(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_1A9977650();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFSecurityScopedURL.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1A9976020();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1F40, &qword_1A99955B0);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for SFSecurityScopedURL(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97F06CC();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_1A97F0AF4(&qword_1EB3B1AB0, MEMORY[0x1E6968FB0]);
  v18 = v30;
  sub_1A99775F0();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_1A9977550();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_1A97F0604(v23, v22, type metadata accessor for SFSecurityScopedURL);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A97F066C(v23, type metadata accessor for SFSecurityScopedURL);
}

uint64_t sub_1A97EF558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1A9975FD0())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_1A99777E0() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t SFSandboxTokenURLPair.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFSandboxTokenURLPair(0) + 20);
  v4 = sub_1A9976020();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static SFSandboxTokenURLPair.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for SFSandboxTokenURLPair(0) + 20);

  return sub_1A9975FD0();
}

uint64_t sub_1A97EF6C8()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 0x6E656B6F74;
  }

  *v0;
  return result;
}

uint64_t sub_1A97EF6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97EF7D0(uint64_t a1)
{
  v2 = sub_1A97F0720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97EF80C(uint64_t a1)
{
  v2 = sub_1A97F0720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFSandboxTokenURLPair.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1F48, &qword_1A99955B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97F0720();
  sub_1A9977AA0();
  v11 = *v3;
  v14[15] = 0;
  sub_1A99776F0();
  if (!v2)
  {
    v12 = *(type metadata accessor for SFSandboxTokenURLPair(0) + 20);
    v14[14] = 1;
    sub_1A9976020();
    sub_1A97F0AF4(&qword_1EB3B1918, MEMORY[0x1E6968FB0]);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFSandboxTokenURLPair.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1A9976020();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1F58, &unk_1A99955C0);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for SFSandboxTokenURLPair(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97F0720();
  sub_1A9977A70();
  if (!v2)
  {
    v23 = v10;
    v16 = v26;
    v15 = v27;
    v30 = 0;
    v17 = v28;
    v18 = sub_1A9977600();
    v22 = v13;
    *v13 = v18;
    v29 = 1;
    sub_1A97F0AF4(&qword_1EB3B1AB0, MEMORY[0x1E6968FB0]);
    sub_1A99775F0();
    (*(v16 + 8))(v9, v17);
    v19 = v22;
    (*(v24 + 32))(v22 + *(v23 + 20), v6, v15);
    sub_1A97F059C(v19, v25, type metadata accessor for SFSandboxTokenURLPair);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A97EFD2C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  return sub_1A9975FD0();
}

uint64_t RandomAccessCollection<>.securityScopedURLs.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFSecurityScopedURL(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  return sub_1A97ED1D0(sub_1A97EFEE0, 0, a1, v4, v5, *(*(a2 + 8) + 8), MEMORY[0x1E69E7288], &v7);
}

uint64_t sub_1A97EFEE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v7 = sub_1A9976020();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v8[2];
  v12(v11, a1, v7);
  v12(a3, v11, v7);
  sub_1A97F0064(v11);
  if (v3)
  {
    v15 = v8[1];
    v15(v11, v7);
    result = (v15)(a3, v7);
    *a2 = v3;
  }

  else
  {
    v17 = v13;
    v18 = v14;
    (v8[1])(v11, v7);
    result = type metadata accessor for SFSecurityScopedURL(0);
    v19 = &a3[*(result + 20)];
    *v19 = v17;
    *(v19 + 1) = v18;
  }

  return result;
}

void sub_1A97F0064(uint64_t a1)
{
  v2 = sub_1A9976020();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1A9975F70())
  {
    v7 = sub_1A9975FC0();
    v8 = CFURLCopyFileSystemPath(v7, kCFURLPOSIXPathStyle);

    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1A99772B0();

    v30 = 0xD000000000000022;
    v31 = 0x80000001A99E4140;
    sub_1A97F0AF4(&qword_1EB3B1FA0, MEMORY[0x1E6968FB0]);
    v9 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v9);

    v10 = v31;
    if (v8)
    {
      v28 = 0x80000001A99E40C0;

      sub_1A9976820();
      sub_1A9976890();
      v32 = v8;

      v11 = sandbox_extension_issue_file();

      v30 = 0;
      v31 = 0xE000000000000000;
      sub_1A99772B0();

      v30 = 0xD000000000000026;
      v31 = 0x80000001A99E41A0;
      v12 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v12);

      v13 = v31;
      v29 = v11;
      if (v11)
      {

        if (qword_1EB3B0AD8 != -1)
        {
          swift_once();
        }

        v14 = sub_1A99764A0();
        __swift_project_value_buffer(v14, qword_1EB3B1F10);
        (*(v3 + 16))(v6, a1, v2);
        v15 = sub_1A9976480();
        v16 = sub_1A9976F90();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v30 = v28;
          *v17 = 136315138;
          v18 = sub_1A9977730();
          v20 = v19;
          (*(v3 + 8))(v6, v2);
          v21 = sub_1A97AF148(v18, v20, &v30);

          *(v17 + 4) = v21;
          _os_log_impl(&dword_1A9662000, v15, v16, "Issued sandbox token for url %s", v17, 0xCu);
          v22 = v28;
          __swift_destroy_boxed_opaque_existential_0Tm(v28);
          MEMORY[0x1AC58D2C0](v22, -1, -1);
          MEMORY[0x1AC58D2C0](v17, -1, -1);
        }

        else
        {

          (*(v3 + 8))(v6, v2);
        }

        v27 = v29;
        sub_1A99767D0();
        free(v27);
      }

      else
      {
        v25 = v30;
        sub_1A97BCDE0();
        swift_allocError();
        *v26 = v25;
        v26[1] = v13;
        v26[2] = 0xD000000000000051;
        v26[3] = v28;
        v26[4] = 36;
        v26[10] = 0x2000000000000000;
        swift_willThrow();
      }
    }

    else
    {
      v23 = v30;
      sub_1A97BCDE0();
      swift_allocError();
      *v24 = v23;
      v24[1] = v10;
      v24[2] = 0xD000000000000051;
      v24[3] = 0x80000001A99E40C0;
      v24[4] = 35;
      v24[10] = 0x2000000000000000;
      swift_willThrow();
    }
  }
}

unint64_t sub_1A97F0528()
{
  result = qword_1EB3AB790;
  if (!qword_1EB3AB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AB790);
  }

  return result;
}

uint64_t sub_1A97F059C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A97F0604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A97F066C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A97F06CC()
{
  result = qword_1EB3B1F38;
  if (!qword_1EB3B1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F38);
  }

  return result;
}

unint64_t sub_1A97F0720()
{
  result = qword_1EB3B1F50;
  if (!qword_1EB3B1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F50);
  }

  return result;
}

void sub_1A97F079C()
{
  sub_1A9976020();
  if (v0 <= 0x3F)
  {
    sub_1A97EA138();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A97F0848()
{
  result = sub_1A9976020();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A97F08E8()
{
  result = qword_1EB3B1F70;
  if (!qword_1EB3B1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F70);
  }

  return result;
}

unint64_t sub_1A97F0940()
{
  result = qword_1EB3B1F78;
  if (!qword_1EB3B1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F78);
  }

  return result;
}

unint64_t sub_1A97F0998()
{
  result = qword_1EB3B1F80;
  if (!qword_1EB3B1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F80);
  }

  return result;
}

unint64_t sub_1A97F09F0()
{
  result = qword_1EB3B1F88;
  if (!qword_1EB3B1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F88);
  }

  return result;
}

unint64_t sub_1A97F0A48()
{
  result = qword_1EB3B1F90;
  if (!qword_1EB3B1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F90);
  }

  return result;
}

unint64_t sub_1A97F0AA0()
{
  result = qword_1EB3B1F98;
  if (!qword_1EB3B1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1F98);
  }

  return result;
}

uint64_t sub_1A97F0AF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A97F0B3C()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B1FA8);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B1FA8);
  if (qword_1EB3B0B18 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3B3638);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t DeviceLockState.description.getter()
{
  if (*v0)
  {
    result = 0x656B636F6C6E752ELL;
  }

  else
  {
    result = 0x64656B636F6C2ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1A97F0C44()
{
  if (*v0)
  {
    result = 0x64656B636F6C6E75;
  }

  else
  {
    result = 0x64656B636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1A97F0C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656B636F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656B636F6C6E75 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A97F0D54(uint64_t a1)
{
  v2 = sub_1A97F116C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97F0D90(uint64_t a1)
{
  v2 = sub_1A97F116C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97F0DCC(uint64_t a1)
{
  v2 = sub_1A97F1214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97F0E08(uint64_t a1)
{
  v2 = sub_1A97F1214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97F0E44(uint64_t a1)
{
  v2 = sub_1A97F11C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97F0E80(uint64_t a1)
{
  v2 = sub_1A97F11C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeviceLockState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1FC0, &qword_1A9995950);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1FC8, &qword_1A9995958);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1FD0, &qword_1A9995960);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97F116C();
  sub_1A9977AA0();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1A97F11C0();
    v18 = v22;
    sub_1A9977640();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1A97F1214();
    sub_1A9977640();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1A97F116C()
{
  result = qword_1EB3B1FD8;
  if (!qword_1EB3B1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1FD8);
  }

  return result;
}

unint64_t sub_1A97F11C0()
{
  result = qword_1EB3B1FE0;
  if (!qword_1EB3B1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1FE0);
  }

  return result;
}

unint64_t sub_1A97F1214()
{
  result = qword_1EB3B1FE8;
  if (!qword_1EB3B1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1FE8);
  }

  return result;
}

uint64_t DeviceLockState.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t DeviceLockState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1FF0, &qword_1A9995968);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1FF8, &qword_1A9995970);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2000, &unk_1A9995978);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97F116C();
  v16 = v36;
  sub_1A9977A70();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1A9977620();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1A97B2970();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1A9977300();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v26 = &type metadata for DeviceLockState;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1A97F11C0();
        sub_1A9977530();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1A97F1214();
        sub_1A9977530();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t sub_1A97F17C8()
{
  if (*v0)
  {
    result = 0x656B636F6C6E752ELL;
  }

  else
  {
    result = 0x64656B636F6C2ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1A97F1808()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1A97F1844(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A97F18A4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A97F1938;
}

void sub_1A97F1938(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t SFLockStateMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  SFLockStateMonitor.init()();
  return v0;
}

uint64_t SFLockStateMonitor.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  v2 = (v0 + 32);
  v3 = sub_1A97BEF14(&unk_1F1D26B58);
  sub_1A97F1C38(&unk_1F1D26B78);
  *(v0 + 40) = v3;
  sub_1A97F1CA0();
  v4 = sub_1A9976FC0();
  v5 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_1A966A21C;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A966A1C8;
  v8[3] = &block_descriptor_2;
  v6 = _Block_copy(v8);

  swift_beginAccess();
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", v2, v4, v6);
  swift_endAccess();
  _Block_release(v6);

  return v1;
}

uint64_t SFLockStateMonitor.deinit()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 32));
  sub_1A97F1D04(v0 + 16);
  v1 = *(v0 + 40);

  return v0;
}

uint64_t SFLockStateMonitor.__deallocating_deinit()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 32));
  sub_1A97F1D04(v0 + 16);
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void *sub_1A97F1BE8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1A97F1C08@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1A97F1C38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2008, &qword_1A9995988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A97F1CA0()
{
  result = qword_1EB3AC8D0;
  if (!qword_1EB3AC8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3AC8D0);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A97F1D30()
{
  result = qword_1EB3B2010;
  if (!qword_1EB3B2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2010);
  }

  return result;
}

unint64_t sub_1A97F1EAC()
{
  result = qword_1EB3B2018;
  if (!qword_1EB3B2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2018);
  }

  return result;
}

unint64_t sub_1A97F1F04()
{
  result = qword_1EB3B2020;
  if (!qword_1EB3B2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2020);
  }

  return result;
}

unint64_t sub_1A97F1F5C()
{
  result = qword_1EB3B2028;
  if (!qword_1EB3B2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2028);
  }

  return result;
}

unint64_t sub_1A97F1FB4()
{
  result = qword_1EB3B2030;
  if (!qword_1EB3B2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2030);
  }

  return result;
}

unint64_t sub_1A97F200C()
{
  result = qword_1EB3B2038;
  if (!qword_1EB3B2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2038);
  }

  return result;
}

unint64_t sub_1A97F2064()
{
  result = qword_1EB3B2040;
  if (!qword_1EB3B2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2040);
  }

  return result;
}

unint64_t sub_1A97F20BC()
{
  result = qword_1EB3B2048;
  if (!qword_1EB3B2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2048);
  }

  return result;
}

uint64_t sub_1A97F2110(_OWORD *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  result = type metadata accessor for CombineLatestStateMachine.State();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A97F2198(_DWORD *a1, unsigned int a2, void *a3)
{
  v4 = a3[5];
  v5 = *(a3[4] - 8);
  v6 = *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v6;
  }

  v37 = v6 + ((((*(*(a3[2] - 8) + 64) + *(*(a3[3] - 8) + 80)) & ~*(*(a3[3] - 8) + 80)) + *(*(a3[3] - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80));
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 80);
  v9 = a3[6];
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 80);
  v12 = a3[7];
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v13 + 80);
  v16 = v15 | 7;
  v17 = ((v8 + 8) & ~v8) + (v11 | 7) + *(v7 + 64);
  if (!*(v7 + 84))
  {
    ++v17;
  }

  v18 = (v17 + 1) & ~(v11 | 7);
  v19 = ((v11 + 8) & ~v11) + v16 + *(v10 + 64);
  if (!*(v10 + 84))
  {
    ++v19;
  }

  v20 = (v19 + v18 + 1) & ~v16;
  v21 = ((v15 + 8) & ~v15) + *(v13 + 64) + (((v11 | v8 | v15) & 0xF8 ^ 0x1F8) & ((v11 | v8 | v15) + 8));
  if (!*(v14 + 84))
  {
    ++v21;
  }

  v22 = (v21 + v20 + 8) & 0xFFFFFFFFFFFFFFF8;
  v23 = v22 + 8;
  if (v22 + 8 <= v37)
  {
    v23 = v37;
  }

  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v24 <= v23)
  {
    v24 = v23;
  }

  v25 = 8;
  if (v24 > 8)
  {
    v25 = v24;
  }

  v26 = 250 - (1u >> (8 * v25));
  if (v25 > 3)
  {
    v26 = 250;
  }

  if (!a2)
  {
    return 0;
  }

  if (v26 >= a2)
  {
    goto LABEL_41;
  }

  v27 = (v25 & 0xFFFFFFFFFFFFFFF8) + 16;
  v28 = v27 & 0xFFFFFFF8;
  if ((v27 & 0xFFFFFFF8) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = a2 - v26 + 1;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v32 = *(a1 + v27);
      if (v32)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v32 = *(a1 + v27);
      if (v32)
      {
        goto LABEL_37;
      }
    }

LABEL_41:
    v35 = *(a1 + v25);
    if (v26 <= (v35 ^ 0xFFu))
    {
      return 0;
    }

    else
    {
      return (256 - v35);
    }
  }

  if (!v31)
  {
    goto LABEL_41;
  }

  v32 = *(a1 + v27);
  if (!v32)
  {
    goto LABEL_41;
  }

LABEL_37:
  v34 = v32 - 1;
  if (v28)
  {
    v34 = 0;
    LODWORD(v28) = *a1;
  }

  return v26 + (v28 | v34) + 1;
}

void sub_1A97F2588(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[5];
  v6 = *(a4[4] - 8);
  v7 = *(v6 + 64);
  if (!*(v6 + 84))
  {
    ++v7;
  }

  v35 = v7 + ((((*(*(a4[2] - 8) + 64) + *(*(a4[3] - 8) + 80)) & ~*(*(a4[3] - 8) + 80)) + *(*(a4[3] - 8) + 64) + *(v6 + 80)) & ~*(v6 + 80));
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = a4[6];
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 80);
  v13 = a4[7];
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = v16 | 7;
  v18 = ((v9 + 8) & ~v9) + (v12 | 7) + *(v8 + 64);
  if (!*(v8 + 84))
  {
    ++v18;
  }

  v19 = (v18 + 1) & ~(v12 | 7);
  v20 = ((v12 + 8) & ~v12) + v17 + *(v11 + 64);
  if (!*(v11 + 84))
  {
    ++v20;
  }

  v21 = (v20 + v19 + 1) & ~v17;
  v22 = ((v16 + 8) & ~v16) + *(v14 + 64) + (((v12 | v9 | v16) & 0xF8 ^ 0x1F8) & ((v12 | v9 | v16) + 8));
  if (!*(v15 + 84))
  {
    ++v22;
  }

  v23 = (v22 + v21 + 8) & 0xFFFFFFFFFFFFFFF8;
  v24 = v23 + 8;
  if (v23 + 8 <= v35)
  {
    v24 = v35;
  }

  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v25 <= v24)
  {
    v25 = v24;
  }

  if (v25 <= 8)
  {
    v25 = 8;
  }

  v26 = 250 - (1u >> (8 * v25));
  if (v25 > 3)
  {
    v26 = 250;
  }

  v27 = (v25 & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v25 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v28 = a3 - v26 + 1;
  }

  else
  {
    v28 = 2;
  }

  if (v28 >= 0x10000)
  {
    v29 = 4;
  }

  else
  {
    v29 = 2;
  }

  if (v28 < 0x100)
  {
    v29 = 1;
  }

  if (v28 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v26 < a3)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (a2 <= v26)
  {
    if (v31 > 1)
    {
      v34 = a1;
      if (v31 != 2)
      {
        *(a1 + v27) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_49;
      }

      *(a1 + v27) = 0;
    }

    else
    {
      v34 = a1;
      if (v31)
      {
        *(a1 + v27) = 0;
        if (!a2)
        {
          return;
        }

LABEL_49:
        *(v34 + v25) = -a2;
        return;
      }
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_49;
  }

  if ((v25 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v32 = a2 - v26;
  }

  else
  {
    v32 = 1;
  }

  if ((v25 & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v33 = ~v26 + a2;
    bzero(a1, v27);
    *a1 = v33;
  }

  if (v31 > 1)
  {
    if (v31 == 2)
    {
      *(a1 + v27) = v32;
    }

    else
    {
      *(a1 + v27) = v32;
    }
  }

  else if (v31)
  {
    *(a1 + v27) = v32;
  }
}

void sub_1A97F29CC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  sub_1A99770A0();
  swift_getTupleTypeMetadata3();
  if (v5 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    v6 = a1[5];
    swift_getAssociatedTypeWitness();
    v7 = a1[6];
    v8 = a1[7];
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    swift_getAssociatedTypeWitness();
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    swift_getAssociatedTypeWitness();
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    swift_getTupleTypeMetadata3();
    sub_1A99770A0();
    swift_getTupleTypeMetadata3();
    type metadata accessor for Deque();
    v10 = v9;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (v12 <= 0x3F)
    {
      MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
      sub_1A99770A0();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A9977A20();
      sub_1A9976CE0();
      swift_getTupleTypeMetadata();
      if (v13 <= 0x3F && v10 <= 0x3F)
      {
        sub_1A97F360C();
        if (v14 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A97F2D1C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[5];
  v5 = *(a3[4] - 8);
  v6 = *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v6;
  }

  v35 = v6 + ((((*(*(a3[2] - 8) + 64) + *(*(a3[3] - 8) + 80)) & ~*(*(a3[3] - 8) + 80)) + *(*(a3[3] - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80));
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 80);
  v9 = a3[6];
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 80);
  v12 = a3[7];
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v13 + 80);
  v16 = v15 | 7;
  v17 = ((v8 + 8) & ~v8) + (v11 | 7) + *(v7 + 64);
  if (!*(v7 + 84))
  {
    ++v17;
  }

  v18 = (v17 + 1) & ~(v11 | 7);
  v19 = ((v11 + 8) & ~v11) + v16 + *(v10 + 64);
  if (!*(v10 + 84))
  {
    ++v19;
  }

  v20 = (v19 + v18 + 1) & ~v16;
  v21 = ((v15 + 8) & ~v15) + *(v13 + 64) + (((v11 | v8 | v15) & 0xF8 ^ 0x1F8) & ((v11 | v8 | v15) + 8));
  if (!*(v14 + 84))
  {
    ++v21;
  }

  v22 = (v21 + v20 + 8) & 0xFFFFFFFFFFFFFFF8;
  v23 = v22 + 8;
  if (v22 + 8 <= v35)
  {
    v23 = v35;
  }

  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v24 <= v23)
  {
    v24 = v23;
  }

  v25 = 8;
  if (v24 > 8)
  {
    v25 = v24;
  }

  v26 = 250 - (1u >> (8 * v25));
  if (v25 > 3)
  {
    v26 = 250;
  }

  if (!a2)
  {
    return 0;
  }

  if (v26 >= a2)
  {
    goto LABEL_39;
  }

  v27 = v25 + 1;
  v28 = 8 * (v25 + 1);
  if ((v25 + 1) <= 3)
  {
    v31 = ((~(-1 << v28) + a2 - v26) >> v28) + 1;
    if (HIWORD(v31))
    {
      v29 = *(a1 + v27);
      if (!v29)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v31 > 0xFF)
    {
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v31 < 2)
    {
LABEL_39:
      v33 = *(a1 + v25);
      if (v26 <= (v33 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v33);
      }
    }
  }

  v29 = *(a1 + v27);
  if (!*(a1 + v27))
  {
    goto LABEL_39;
  }

LABEL_28:
  v32 = (v29 - 1) << v28;
  if (v27 > 3)
  {
    v32 = 0;
  }

  if (v27)
  {
    if (v27 > 3)
    {
      LODWORD(v27) = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        LODWORD(v27) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v27) = *a1;
      }
    }

    else if (v27 == 1)
    {
      LODWORD(v27) = *a1;
    }

    else
    {
      LODWORD(v27) = *a1;
    }
  }

  return v26 + (v27 | v32) + 1;
}

void sub_1A97F3154(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[5];
  v6 = *(a4[4] - 8);
  v7 = *(v6 + 64);
  if (!*(v6 + 84))
  {
    ++v7;
  }

  v37 = v7 + ((((*(*(a4[2] - 8) + 64) + *(*(a4[3] - 8) + 80)) & ~*(*(a4[3] - 8) + 80)) + *(*(a4[3] - 8) + 64) + *(v6 + 80)) & ~*(v6 + 80));
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = a4[6];
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 80);
  v13 = a4[7];
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = v16 | 7;
  v18 = ((v9 + 8) & ~v9) + (v12 | 7) + *(v8 + 64);
  if (!*(v8 + 84))
  {
    ++v18;
  }

  v19 = (v18 + 1) & ~(v12 | 7);
  v20 = ((v12 + 8) & ~v12) + v17 + *(v11 + 64);
  if (!*(v11 + 84))
  {
    ++v20;
  }

  v21 = (v20 + v19 + 1) & ~v17;
  v22 = ((v16 + 8) & ~v16) + *(v14 + 64) + (((v12 | v9 | v16) & 0xF8 ^ 0x1F8) & ((v12 | v9 | v16) + 8));
  if (!*(v15 + 84))
  {
    ++v22;
  }

  v23 = (v22 + v21 + 8) & 0xFFFFFFFFFFFFFFF8;
  v24 = v23 + 8;
  if (v23 + 8 <= v37)
  {
    v24 = v37;
  }

  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v25 <= v24)
  {
    v25 = v24;
  }

  if (v25 <= 8)
  {
    v25 = 8;
  }

  v26 = 250 - (1u >> (8 * v25));
  if (v25 > 3)
  {
    v26 = 250;
  }

  v27 = v25 + 1;
  if (v26 >= a3)
  {
    v28 = 0;
  }

  else
  {
    v28 = 1;
    if (v27 <= 3)
    {
      v29 = ((~(-1 << (8 * v27)) + a3 - v26) >> (8 * v27)) + 1;
      v30 = HIWORD(v29);
      if (v29 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v29 >= 2)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      if (v30)
      {
        v28 = 4;
      }

      else
      {
        v28 = v32;
      }
    }
  }

  if (v26 >= a2)
  {
    if (v28 > 1)
    {
      if (v28 != 2)
      {
        *&a1[v27] = 0;
        if (!a2)
        {
          return;
        }

LABEL_45:
        a1[v25] = -a2;
        return;
      }

      *&a1[v27] = 0;
    }

    else if (v28)
    {
      a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  v33 = ~v26 + a2;
  if (v27 >= 4)
  {
    bzero(a1, v27);
    *a1 = v33;
    v34 = 1;
    if (v28 > 1)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v34 = (v33 >> (8 * v27)) + 1;
  if (v25 == -1)
  {
LABEL_49:
    if (v28 > 1)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v35 = v33 & ~(-1 << (8 * v27));
  bzero(a1, v27);
  if (v27 == 3)
  {
    *a1 = v35;
    a1[2] = BYTE2(v35);
    goto LABEL_49;
  }

  if (v27 == 2)
  {
    *a1 = v35;
    if (v28 > 1)
    {
LABEL_53:
      if (v28 == 2)
      {
        *&a1[v27] = v34;
      }

      else
      {
        *&a1[v27] = v34;
      }

      return;
    }
  }

  else
  {
    *a1 = v33;
    if (v28 > 1)
    {
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v28)
  {
    a1[v27] = v34;
  }
}

void sub_1A97F360C()
{
  if (!qword_1EB3AB600)
  {
    v0 = sub_1A97F3654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AB600);
    }
  }
}

unint64_t sub_1A97F3654()
{
  result = qword_1EB3AB5F8;
  if (!qword_1EB3AB5F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB3AB5F8);
  }

  return result;
}

void sub_1A97F36C0(uint64_t a1)
{
  sub_1A97FDCC4(319, &qword_1EB3AB690, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 40);
    sub_1A99770A0();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A97F376C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 40) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_32;
  }

  v11 = v9 + *(*(*(a3 + 40) - 8) + 64) + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_32:
      if (v6 > 0x7FFFFFFE)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        if ((v17 + 1) >= 2)
        {
          return v17;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_32;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1A97F393C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 40) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 40) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = v12 + ((v11 + 8) & ~v11) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 8) & ~v11) != -1)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0x7FFFFFFE)
  {
    v21 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;

      v25(v21, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

uint64_t sub_1A97F3C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v8 = *(v7 + 76);
  v9 = sub_1A99770A0();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  a4[*(v7 + 80)] = a3;
  return result;
}

uint64_t sub_1A97F3D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = sub_1A99770A0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = *(TupleTypeMetadata3 + 48);
  v16 = *(TupleTypeMetadata3 + 64);
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  (*(*(a5 - 8) + 32))(a7 + v15, a2, a5);
  v17 = *(v13 - 8);
  (*(v17 + 16))(a7 + v16, a3, v13);
  type metadata accessor for CombineLatestStateMachine.State();
  swift_storeEnumTagMultiPayload();
  v18 = (*(*(a6 - 8) + 48))(a3, 1, a6);
  (*(v17 + 8))(a3, v13);
  result = type metadata accessor for CombineLatestStateMachine();
  if (v18 == 1)
  {
    v20 = 2;
  }

  else
  {
    v20 = 3;
  }

  *(a7 + *(result + 68)) = v20;
  return result;
}

uint64_t sub_1A97F3F28(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a1[6];
  v7 = a1[7];
  v87 = AssociatedTypeWitness;
  v9 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v86 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v94 = v3;
  v95 = v2;
  v96 = v4;
  v97 = swift_getAssociatedTypeWitness();
  v85 = v97;
  v98 = v5;
  v99 = v8;
  v100 = v7;
  v92 = v9;
  v88 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v89 = v10;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v90 = *(TupleTypeMetadata3 - 8);
  v91 = TupleTypeMetadata3;
  v12 = *(v90 + 64);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v15 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v75 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v75 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v75 - v22;
  v94 = v3;
  v95 = v2;
  v96 = v4;
  v97 = v5;
  v98 = v8;
  v99 = v7;
  v24 = type metadata accessor for CombineLatestStateMachine.State();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v75 - v27;
  (*(v25 + 16))(v75 - v27, v93, v24);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v81 = v15;
    v82 = v18;
    v83 = v21;
    v84 = v23;
    v31 = v92;
    if (!result)
    {
LABEL_13:
      v68 = sub_1A99770A0();
      v69 = swift_getTupleTypeMetadata3();
      v70 = *(v69 + 48);
      (*(*(v68 - 8) + 8))(&v28[*(v69 + 64)], v68);
      (*(*(v2 - 8) + 8))(&v28[v70], v2);
      (*(*(v3 - 8) + 8))(v28, v3);
      return 0;
    }

    if (result != 1)
    {
      __break(1u);
      return result;
    }

    v80 = *v28;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    sub_1A99770A0();
    swift_getTupleTypeMetadata3();
    type metadata accessor for Deque();
    v32 = v91;
    v33 = swift_getTupleTypeMetadata3();
    v34 = *(v33 + 48);
    v35 = *&v28[*(v33 + 64)];

    v36 = v90;
    v37 = v84;
    (*(v90 + 32))(v84, &v28[v34], v32);
    (*(v25 + 8))(v93, v24);
    swift_storeEnumTagMultiPayload();
    v38 = *(v36 + 16);
    v39 = v83;
    v38(v83, v37, v32);
    v40 = *(v32 + 48);
    v85 = *(v32 + 64);
    v86 = *v39;
    v87 = v40;
    v41 = *(v31 - 8);
    v77 = *(v41 + 8);
    v78 = v41 + 8;
    v42 = v39;
    v43 = v31;
    v77(v42, v31);
    v44 = v82;
    v38(v82, v37, v32);
    v45 = *(v32 + 48);
    v76 = *(v32 + 64);
    v93 = *&v44[v45];
    v46 = v89;
    v47 = *(v89 - 8);
    v48 = *(v47 + 8);
    v75[1] = v47 + 8;
    v48(&v44[v45], v89);
    v49 = v81;
    v38(v81, v37, v32);
    v50 = *(v32 + 48);
    v51 = *(v32 + 64);
    v79 = *&v49[v51];
    v52 = v88;
    v53 = *(*(v88 - 8) + 8);
    v53(&v49[v51], v88);
    v48(&v49[v50], v46);
    v54 = v49;
    v55 = v77;
    v77(v54, v43);
    v53(&v44[v76], v52);
    v55(v44, v43);
    v56 = v83;
    v53(v83 + v85, v52);
    v57 = v46;
    v58 = v86;
    v48(v56 + v87, v57);
    if (v58)
    {
      v59 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v61 = *(v59 + 2);
      v60 = *(v59 + 3);
      if (v61 >= v60 >> 1)
      {
        v59 = sub_1A97AE980((v60 > 1), v61 + 1, 1, v59);
      }

      v63 = v90;
      v62 = v91;
      v64 = v84;
      v65 = v93;
      v66 = v79;
      *(v59 + 2) = v61 + 1;
      *&v59[8 * v61 + 32] = v58;
      if (!v65)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v59 = MEMORY[0x1E69E7CC0];
      v63 = v90;
      v62 = v91;
      v64 = v84;
      v65 = v93;
      v66 = v79;
      if (!v93)
      {
LABEL_21:
        if (v66)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_1A97AE980(0, *(v59 + 2) + 1, 1, v59);
          }

          v74 = *(v59 + 2);
          v73 = *(v59 + 3);
          if (v74 >= v73 >> 1)
          {
            v59 = sub_1A97AE980((v73 > 1), v74 + 1, 1, v59);
          }

          *(v59 + 2) = v74 + 1;
          *&v59[8 * v74 + 32] = v66;
        }

        (*(v63 + 8))(v64, v62);
        return v80;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_1A97AE980(0, *(v59 + 2) + 1, 1, v59);
    }

    v72 = *(v59 + 2);
    v71 = *(v59 + 3);
    if (v72 >= v71 >> 1)
    {
      v59 = sub_1A97AE980((v71 > 1), v72 + 1, 1, v59);
    }

    *(v59 + 2) = v72 + 1;
    *&v59[8 * v72 + 32] = v65;
    goto LABEL_21;
  }

  if ((result - 3) < 2)
  {
    v30 = *(v25 + 8);
    v30(v28, v24);
    v30(v93, v24);
    swift_storeEnumTagMultiPayload();
    return 0;
  }

  v67 = result == 5;
  result = 0;
  if (!v67)
  {
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1A97F479C(uint64_t *a1, uint64_t a2, void *a3)
{
  v88 = a2;
  v94 = a1;
  v5 = a3[7];
  v6 = a3[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = sub_1A99770A0();
  v7 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v87 = &v74 - v8;
  v9 = a3[6];
  v10 = a3[3];
  v97 = swift_getAssociatedTypeWitness();
  v11 = sub_1A99770A0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v86 = &v74 - v13;
  v14 = a3[5];
  v15 = a3[2];
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_1A99770A0();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v85 = &v74 - v19;
  *&v20 = v15;
  *(&v20 + 1) = v10;
  *&v21 = v6;
  *(&v21 + 1) = v14;
  v102 = v20;
  v103 = v21;
  v104 = v9;
  v105 = v5;
  v22 = type metadata accessor for CombineLatestStateMachine.State();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v93 = (&v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v74 - v26;
  v89 = v3;
  v90 = v28;
  (*(v28 + 16))(&v74 - v26, v3, v22);
  v91 = v22;
  v92 = v27;
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v82 = sub_1A99770A0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v81 = &v74;
    v84 = *(TupleTypeMetadata3 + 48);
    v83 = *(TupleTypeMetadata3 + 64);
    MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
    v80 = &v74 - 8;
    strcpy(&v74 - 64, "task upstreams downstreamContinuation buffer ");
    v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    *&v102 = v15;
    *(&v102 + 1) = v10;
    *&v103 = v6;
    *(&v103 + 1) = v16;
    v104 = v14;
    v105 = v9;
    v106 = v5;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    v31 = v9;
    *&v102 = v15;
    *(&v102 + 1) = v10;
    *&v103 = v6;
    *(&v103 + 1) = v97;
    v104 = v14;
    v105 = v9;
    v106 = v5;
    v79 = v5;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    *&v102 = v15;
    *(&v102 + 1) = v10;
    *&v103 = v6;
    *(&v103 + 1) = AssociatedTypeWitness;
    v104 = v14;
    v105 = v9;
    v106 = v5;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    v99 = swift_getTupleTypeMetadata3();
    swift_getTupleTypeMetadata3();
    sub_1A99770A0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A9977A20();
    v100 = sub_1A9976CE0();
    v101 = type metadata accessor for Deque();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v78 = v93 + TupleTypeMetadata[12];
    v80 = TupleTypeMetadata[16];
    v81 = TupleTypeMetadata[20];
    *v93 = v94;
    *&v102 = v15;
    *(&v102 + 1) = v10;
    v33 = v10;
    *&v103 = v6;
    *(&v103 + 1) = v16;
    v104 = v14;
    v105 = v9;
    v34 = v79;
    v106 = v79;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    *&v102 = v15;
    *(&v102 + 1) = v10;
    *&v103 = v6;
    *(&v103 + 1) = v97;
    v104 = v14;
    v105 = v9;
    v106 = v34;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    *&v102 = v15;
    *(&v102 + 1) = v10;
    *&v103 = v6;
    *(&v103 + 1) = AssociatedTypeWitness;
    v104 = v14;
    v105 = v9;
    v106 = v34;
    v35 = v34;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    v36 = swift_getTupleTypeMetadata3();
    v75 = *(v36 + 48);
    v77 = *(v36 + 64);
    v37 = *(*(v16 - 8) + 56);
    v38 = v85;
    v76 = v16;
    v37(v85, 1, 1, v16);
    v72 = v9;
    v73 = v34;
    v39 = v78;
    v40 = v15;
    sub_1A97F3C48(0, v38, 0, v78);
    v41 = v86;
    (*(*(v97 - 8) + 56))(v86, 1, 1, v97);
    v72 = v31;
    v73 = v35;
    v42 = v39;
    sub_1A97F3C48(0, v41, 0, &v39[v75]);
    v43 = v87;
    (*(*(AssociatedTypeWitness - 8) + 56))(v87, 1, 1, AssociatedTypeWitness);
    v72 = v31;
    v73 = v35;
    v44 = v33;
    sub_1A97F3C48(0, v43, 0, &v42[v77]);
    v45 = v93;
    *(v80 + v93) = v88;

    v46 = swift_getTupleTypeMetadata3();
    v47 = Deque.init()(v46);
    *(v81 + v45) = v47;
    v48 = v91;
    swift_storeEnumTagMultiPayload();
    (*(v90 + 40))(v89, v45, v48);
    v49 = v92;
    (*(*(v82 - 8) + 8))(&v92[v83]);
    (*(*(v44 - 8) + 8))(&v49[v84], v44);
    return (*(*(v40 - 8) + 8))(v49, v40);
  }

  v51 = v90;
  v50 = v91;
  v52 = v14;
  v53 = v9;
  v54 = v97;
  v55 = v92;
  if (result > 3)
  {
    if (result != 4)
    {
      if (result == 5)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

LABEL_10:
    result = (*(v51 + 8))(v55, v50);
    goto LABEL_12;
  }

  v56 = v16;
  if (result == 1)
  {
    v66 = *v92;

    v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    *&v102 = v15;
    *(&v102 + 1) = v10;
    *&v103 = v6;
    *(&v103 + 1) = v16;
    v104 = v52;
    v105 = v53;
    v106 = v5;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    *&v102 = v15;
    *(&v102 + 1) = v10;
    *&v103 = v6;
    *(&v103 + 1) = v54;
    v104 = v52;
    v105 = v53;
    v106 = v5;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    *&v102 = v15;
    *(&v102 + 1) = v10;
    *&v103 = v6;
    *(&v103 + 1) = AssociatedTypeWitness;
    v104 = v52;
    v105 = v53;
    v106 = v5;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    v67 = swift_getTupleTypeMetadata3();
    swift_getTupleTypeMetadata3();
    type metadata accessor for Deque();
    v68 = swift_getTupleTypeMetadata3();
    v69 = *(v68 + 48);
    v70 = v92;
    v71 = *&v92[*(v68 + 64)];

    result = (*(*(v67 - 8) + 8))(&v70[v69], v67);
    goto LABEL_12;
  }

  if (result != 2)
  {
    goto LABEL_10;
  }

  v57 = *v92;

  v94 = &v74;
  MEMORY[0x1EEE9AC00](v58);
  v93 = &v74 - 8;
  strcpy(&v74 - 64, "task upstreams downstreamContinuation buffer ");
  v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
  *&v102 = v15;
  *(&v102 + 1) = v10;
  v59 = v10;
  *&v103 = v6;
  *(&v103 + 1) = v56;
  v104 = v52;
  v105 = v53;
  v60 = v53;
  v106 = v5;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v102 = v15;
  *(&v102 + 1) = v59;
  v61 = v59;
  *&v103 = v6;
  *(&v103 + 1) = v54;
  v104 = v52;
  v105 = v60;
  v106 = v5;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v102 = v15;
  *(&v102 + 1) = v59;
  *&v103 = v6;
  *(&v103 + 1) = AssociatedTypeWitness;
  v104 = v52;
  v105 = v60;
  v106 = v5;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v99 = swift_getTupleTypeMetadata3();
  swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9977A20();
  v100 = sub_1A9976CE0();
  v101 = type metadata accessor for Deque();
  v62 = swift_getTupleTypeMetadata();
  v95 = *(v62 + 48);
  v63 = v92;
  v64 = *&v92[*(v62 + 80)];

  *&v102 = v15;
  *(&v102 + 1) = v61;
  *&v103 = v6;
  *(&v103 + 1) = v56;
  v104 = v52;
  v105 = v60;
  v106 = v5;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v102 = v15;
  *(&v102 + 1) = v61;
  *&v103 = v6;
  *(&v103 + 1) = v54;
  v104 = v52;
  v105 = v60;
  v106 = v5;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v102 = v15;
  *(&v102 + 1) = v61;
  *&v103 = v6;
  *(&v103 + 1) = AssociatedTypeWitness;
  v104 = v52;
  v105 = v60;
  v106 = v5;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v65 = swift_getTupleTypeMetadata3();
  result = (*(*(v65 - 8) + 8))(&v63[v95], v65);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1A97F5454(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = a2;
  v38 = a1;
  v4 = a3[2];
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = a3[6];
  v9 = a3[7];
  v40 = AssociatedTypeWitness;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v39 = swift_getAssociatedTypeWitness();
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v44 = v4;
  v45 = v5;
  v46 = v6;
  v47 = swift_getAssociatedTypeWitness();
  v48 = v7;
  v49 = v10;
  v50 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = *(TupleTypeMetadata3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v14 = &v37 - v13;
  v44 = v4;
  v45 = v5;
  v46 = v6;
  v47 = v7;
  v48 = v10;
  v49 = v9;
  v15 = type metadata accessor for CombineLatestStateMachine.State();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = v43;
  (*(v16 + 16))(&v37 - v18);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result > 4)
    {
      if (result == 5)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

    if (result == 4)
    {
      (*(v16 + 8))(v19, v15);
LABEL_9:
      sub_1A9976BC0();
      sub_1A97FC63C();
      swift_allocError();
      sub_1A99766C0();
      return v42;
    }

    goto LABEL_19;
  }

  if (result != 1)
  {
    if (result == 2)
    {
      v22 = *v19;

      MEMORY[0x1EEE9AC00](v23);
      strcpy(&v37 - 64, "task upstreams downstreamContinuation buffer ");
      v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
      v25 = TupleTypeMetadata3;
      v44 = v24;
      v45 = TupleTypeMetadata3;
      sub_1A99770A0();
      swift_getTupleTypeMetadata3();
      sub_1A99770A0();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A9977A20();
      v46 = sub_1A9976CE0();
      v47 = type metadata accessor for Deque();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v27 = *(TupleTypeMetadata + 48);
      v28 = *&v19[*(TupleTypeMetadata + 80)];

      (*(v11 + 8))(&v19[v27], v25);
      return v42;
    }

    goto LABEL_20;
  }

  v37 = *v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
  sub_1A99770A0();
  swift_getTupleTypeMetadata3();
  type metadata accessor for Deque();
  v29 = TupleTypeMetadata3;
  v30 = swift_getTupleTypeMetadata3();
  v31 = *&v19[*(v30 + 64)];
  v32 = *(v11 + 32);
  v32(v14, &v19[*(v30 + 48)], v29);
  v33 = *(v16 + 8);
  v33(v20, v15);
  result = swift_storeEnumTagMultiPayload();
  switch(v38)
  {
    case 0:
      *v14 = v42;
LABEL_17:
      v33(v20, v15);
      v35 = *(v30 + 48);
      v36 = *(v30 + 64);
      *v20 = v37;
      v32(&v20[v35], v14, v29);
      *&v20[v36] = v31;
      swift_storeEnumTagMultiPayload();
      return 0xF00000000000000FLL;
    case 1:
      v34 = *(v29 + 48);
LABEL_16:
      *&v14[v34] = v42;
      goto LABEL_17;
    case 2:
      v34 = *(v29 + 64);
      goto LABEL_16;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1A97F5A20@<X0>(char *a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v367 = a3;
  v364 = a1;
  v365 = a2;
  v357 = a5;
  v6 = a4[7];
  v7 = a4[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v371 = AssociatedTypeWitness;
  v373 = sub_1A99770A0();
  v361 = *(v373 - 8);
  v9 = *(v361 + 64);
  v10 = MEMORY[0x1EEE9AC00](v373);
  v309 = &v304 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v333 = &v304 - v13;
  v346 = *(AssociatedTypeWitness - 8);
  v14 = *(v346 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v308 = &v304 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v322 = &v304 - v17;
  v18 = a4[6];
  v19 = a4[3];
  v20 = swift_getAssociatedTypeWitness();
  v358 = *(v20 - 8);
  v21 = *(v358 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v315 = &v304 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v316 = &v304 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v320 = &v304 - v26;
  v27 = a4[5];
  v307 = a4;
  v28 = a4[2];
  v29 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v334 = *(TupleTypeMetadata3 - 8);
  v30 = *(v334 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v329 = &v304 - v31;
  v374 = sub_1A99770A0();
  v369 = *(v374 - 1);
  v32 = *(v369 + 64);
  v33 = MEMORY[0x1EEE9AC00](v374);
  v323 = &v304 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v326 = &v304 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v318 = &v304 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v310 = &v304 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v313 = &v304 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v314 = &v304 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v330 = &v304 - v46;
  v353 = *(v29 - 8);
  v47 = *(v353 + 64);
  v48 = MEMORY[0x1EEE9AC00](v45);
  v317 = &v304 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v321 = &v304 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v319 = (&v304 - v53);
  MEMORY[0x1EEE9AC00](v52);
  v331 = &v304 - v54;
  v55 = sub_1A99770A0();
  v368 = *(v55 - 8);
  v56 = *(v368 + 64);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v324 = &v304 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v325 = &v304 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v327 = &v304 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v328 = &v304 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v312 = &v304 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v311 = &v304 - v68;
  MEMORY[0x1EEE9AC00](v67);
  v339 = &v304 - v69;
  *&v376 = v28;
  *(&v376 + 1) = v19;
  *&v377 = v7;
  *(&v377 + 1) = v29;
  v360 = v29;
  v378 = v27;
  v379 = v18;
  v380 = v6;
  v70 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v376 = v28;
  *(&v376 + 1) = v19;
  *&v377 = v7;
  *(&v377 + 1) = v20;
  v366 = v20;
  v378 = v27;
  v379 = v18;
  v380 = v6;
  v71 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v376 = v28;
  *(&v376 + 1) = v19;
  *&v377 = v7;
  *(&v377 + 1) = v371;
  v378 = v27;
  v379 = v18;
  v380 = v6;
  v72 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v345 = v70;
  v347 = v71;
  v343 = v72;
  v370 = swift_getTupleTypeMetadata3();
  v356 = *(v370 - 8);
  v73 = *(v356 + 64);
  v74 = MEMORY[0x1EEE9AC00](v370);
  v348 = &v304 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v344 = &v304 - v76;
  v335 = v28;
  *&v77 = v28;
  v337 = v19;
  *(&v77 + 1) = v19;
  v338 = v7;
  *&v78 = v7;
  v336 = v27;
  *(&v78 + 1) = v27;
  v354 = v78;
  v376 = v77;
  v377 = v78;
  v355 = v77;
  v362 = v18;
  v363 = v6;
  v378 = v18;
  v379 = v6;
  v79 = type metadata accessor for CombineLatestStateMachine.State();
  v80 = *(v79 - 1);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v83 = &v304 - v82;
  v84 = v373;
  v85 = v374;
  v86 = swift_getTupleTypeMetadata3();
  v87 = *(v86 - 8);
  v88 = *(v87 + 64);
  v89 = MEMORY[0x1EEE9AC00](v86);
  v332 = &v304 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x1EEE9AC00](v89);
  v342 = &v304 - v92;
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v304 - v93;
  v95 = *(v368 + 16);
  v350 = v55;
  v96 = v55;
  v97 = v80;
  v359 = v368 + 16;
  v95(&v304 - v93, v364, v96);
  v98 = *(v369 + 16);
  v341 = *(v86 + 48);
  v99 = v365;
  v364 = v98;
  v365 = (v369 + 16);
  (v98)(&v341[v94], v99, v85);
  v100 = v86;
  v101 = *(v86 + 64);
  v102 = *(v361 + 16);
  v352 = (v361 + 16);
  v351 = v102;
  v102(&v94[v101], v367, v84);
  (*(v97 + 16))(v83, v372, v79);
  v367 = v79;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        (*(v87 + 8))(v94, v100);
        goto LABEL_14;
      }

      goto LABEL_54;
    }

    if (EnumCaseMultiPayload == 4)
    {
      (*(v87 + 8))(v94, v100);
      (*(v97 + 8))(v83, v367);
LABEL_14:
      v376 = v355;
      v377 = v354;
      v378 = v362;
      v379 = v363;
      v134 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
      return (*(*(v134 - 8) + 56))(v357, 1, 1, v134);
    }

    goto LABEL_52;
  }

  v306 = v87;
  if (EnumCaseMultiPayload == 1)
  {
    v338 = *v83;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    v348 = v101;
    v135 = v95;
    v136 = type metadata accessor for Deque();
    v137 = v370;
    v332 = v136;
    v138 = swift_getTupleTypeMetadata3();
    v139 = *(v138 + 48);
    v337 = v138;
    v140 = *&v83[*(v138 + 64)];
    (*(v356 + 32))(v344, &v83[v139], v137);
    v375 = v140;
    v336 = *(v97 + 8);
    v340 = v97 + 8;
    v336(v372, v367);
    swift_storeEnumTagMultiPayload();
    v141 = v100;
    v142 = *(v100 + 48);
    v143 = *(v100 + 64);
    v144 = v342;
    v145 = v350;
    v146 = v135;
    (v135)(v342, v94, v350);
    (v364)(&v144[v142], &v341[v94], v374);
    v147 = v143;
    v351(&v144[v143], &v348[v94], v373);
    v101 = v353 + 48;
    v148 = *(v353 + 48);
    v149 = v148(v144, 1, v360);
    v335 = v142;
    v305 = v141;
    if (v149 == 1)
    {
      v348 = v148;
      v339 = v146;
      v150 = *(v358 + 48);
      v151 = v150(&v144[v142], 1, v366);
      v152 = v346;
      if (v151 == 1)
      {
        v352 = v150;
        v153 = v371;
        if ((*(v346 + 48))(&v144[v147], 1, v371) == 1)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v154 = *(v152 + 32);
        v351 = (v152 + 32);
        v341 = v154;
        (v154)(v322, &v144[v147], v153);
        v155 = v344;
        v156 = v312;
        (v339)(v312, &v344[*(v345 + 76)], v350);
        v157 = (v348)(v156, 1, v360);
        v158 = v366;
        if (v157 == 1)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v101 = v370;
        v159 = v313;
        (v364)(v313, &v155[*(v370 + 48) + *(v347 + 76)], v374);
        if (v352(v159, 1, v158) == 1)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v160 = v333;
        (*(v152 + 16))(v333, v322, v153);
        v161 = *(v152 + 56);
        v346 = v152 + 56;
        v365 = v161;
        (v161)(v160, 0, 1, v153);
        v162 = TupleTypeMetadata3;
        v163 = *(TupleTypeMetadata3 + 48);
        v164 = *(TupleTypeMetadata3 + 64);
        v165 = v329;
        (*(v353 + 32))(v329, v156, v360);
        (*(v358 + 32))(v165 + v163, v159, v366);
        v166 = v361;
        v167 = v165 + v164;
        v168 = v373;
        (*(v361 + 32))(v167, v160, v373);
        Deque.append(_:)(v165, v332);
        (*(v334 + 8))(v165, v162);
        (*(v306 + 8))(v94, v305);
        v169 = *(v101 + 64) + *(v343 + 76);
        v170 = v344;
        (*(v166 + 8))(&v344[v169], v168);
        v171 = v371;
        (v341)(&v170[v169], v322, v371);
        (v365)(&v170[v169], 0, 1, v171);
        v172 = v374;
        v174 = v368;
        v173 = v369;
        v175 = v350;
      }

      else
      {
        v79 = v314;
        (v364)(v314, &v144[v142], v374);
        v198 = (*(v152 + 48))(&v144[v147], 1, v371);
        v104 = &v381;
        if (v198 != 1)
        {
LABEL_56:
          v353 = *(v104 - 32);
          v360 = v366;
          v339 = v79;
LABEL_57:
          (*(v353 + 8))(v339, v360);
          goto LABEL_58;
        }

        v199 = v358;
        v200 = *(v358 + 32);
        v371 = (v358 + 32);
        v365 = v200;
        (v200)(v320, v79, v366);
        v201 = v311;
        (v339)(v311, &v344[*(v345 + 76)], v350);
        v202 = v360;
        if ((v348)(v201, 1, v360) == 1)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v101 = v370;
        v364 = (*(v370 + 64) + *(v343 + 76));
        v203 = TupleTypeMetadata3;
        v204 = *(TupleTypeMetadata3 + 48);
        v205 = *(TupleTypeMetadata3 + 64);
        v206 = v329;
        (*(v353 + 32))(v329, v201, v202);
        v207 = v206 + v204;
        v208 = v320;
        v209 = v366;
        (*(v199 + 16))(v207, v320, v366);
        v170 = v344;
        v351((v206 + v205), &v364[v344], v373);
        Deque.append(_:)(v206, v332);
        (*(v334 + 8))(v206, v203);
        (*(v306 + 8))(v94, v305);
        v210 = *(v101 + 48) + *(v347 + 76);
        v173 = v369;
        v211 = v374;
        (*(v369 + 8))(&v170[v210], v374);
        (v365)(&v170[v210], v208, v209);
        (*(v199 + 56))(&v170[v210], 0, 1, v209);
        v172 = v211;
        v175 = v350;
        v174 = v368;
      }
    }

    else
    {
      v176 = v358;
      (v146)(v339, v144, v145);
      v178 = *(v176 + 48);
      v101 = v176 + 48;
      v177 = v178;
      if (v178(&v144[v142], 1, v366) != 1)
      {
        goto LABEL_57;
      }

      v179 = (*(v346 + 48))(&v144[v147], 1, v371);
      v79 = v331;
      v180 = v330;
      if (v179 != 1)
      {
        goto LABEL_57;
      }

      v181 = v353;
      v182 = v360;
      v371 = *(v353 + 32);
      v371(v331, v339, v360);
      v183 = *(v181 + 16);
      v184 = v319;
      v183(v319, v79, v182);
      v185 = v370;
      v170 = v344;
      (v364)(v180, &v344[*(v370 + 48) + *(v347 + 76)], v374);
      v186 = v180;
      v187 = v366;
      if (v177(v186, 1, v366) == 1)
      {
        goto LABEL_55;
      }

      v365 = (*(v185 + 64) + *(v343 + 76));
      v188 = TupleTypeMetadata3;
      v189 = *(TupleTypeMetadata3 + 48);
      v190 = *(TupleTypeMetadata3 + 64);
      v191 = v329;
      v192 = v184;
      v193 = v371;
      v371(v329, v192, v182);
      (*(v358 + 32))(v191 + v189, v330, v187);
      v351((v191 + v190), &v365[v170], v373);
      Deque.append(_:)(v191, v332);
      (*(v334 + 8))(v191, v188);
      (*(v306 + 8))(v94, v305);
      v194 = *(v345 + 76);
      v174 = v368;
      v175 = v350;
      (*(v368 + 8))(&v170[v194], v350);
      v193(&v170[v194], v331, v182);
      (*(v353 + 56))(&v170[v194], 0, 1, v182);
      v173 = v369;
      v101 = v370;
      v172 = v374;
    }

    v212 = v342;
    (*(v173 + 8))(&v342[v335], v172);
    (*(v174 + 8))(v212, v175);
    v213 = v372;
    v336(v372, v367);
    v214 = *(v337 + 48);
    v215 = *(v337 + 64);
    *v213 = v338;
    v216 = v356;
    (*(v356 + 16))(&v213[v214], v170, v101);
    *&v213[v215] = v375;
    swift_storeEnumTagMultiPayload();
    v376 = v355;
    v377 = v354;
    v378 = v362;
    v379 = v363;
    v217 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
    (*(*(v217 - 8) + 56))(v357, 1, 1, v217);
    return (*(v216 + 8))(v170, v101);
  }

  v339 = v95;
  v104 = &v370;
  v340 = v97;
  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_53;
  }

  v105 = v100;
  v330 = *v83;
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  strcpy(&v304 - 64, "task upstreams downstreamContinuation buffer ");
  v106 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
  v107 = v370;
  *&v376 = v106;
  *(&v376 + 1) = v370;
  v108 = sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v313 = v108;
  sub_1A9977A20();
  *&v377 = sub_1A9976CE0();
  *(&v377 + 1) = type metadata accessor for Deque();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v110 = TupleTypeMetadata[12];
  v331 = *&v83[TupleTypeMetadata[16]];
  v319 = TupleTypeMetadata;
  v111 = *&v83[TupleTypeMetadata[20]];
  (*(v356 + 32))(v348, &v83[v110], v107);
  v329 = v111;
  *&v376 = v111;
  v112 = type metadata accessor for Deque();
  swift_getWitnessTable();
  v79 = &v376;
  v113 = sub_1A9976EF0();
  v114 = v350;
  v104 = &v362;
  v115 = v332;
  if ((v113 & 1) == 0)
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v312 = v112;
  v116 = *(v340 + 8);
  v340 += 8;
  v322 = v116;
  (v116)(v372, v367);
  swift_storeEnumTagMultiPayload();
  v117 = *(v100 + 48);
  v118 = *(v100 + 64);
  v119 = v339;
  (v339)(v115, v94, v114);
  (v364)(v115 + v117, &v341[v94], v374);
  v351((v115 + v118), &v94[v101], v373);
  v120 = v353;
  v121 = *(v353 + 48);
  v122 = v360;
  v344 = (v353 + 48);
  v342 = v121;
  if ((v121)(v115, 1, v360) == 1)
  {
    v320 = *(v358 + 48);
    if ((v320)(v115 + v117, 1, v366) == 1)
    {
      v123 = v346;
      v124 = v371;
      v314 = *(v346 + 48);
      result = (v314)(v115 + v118, 1, v371);
      if (result == 1)
      {
LABEL_64:
        __break(1u);
        return result;
      }

      (*(v306 + 8))(v94, v105);
      v126 = *(v370 + 64) + *(v343 + 76);
      v127 = v348;
      (*(v361 + 8))(&v348[v126], v373);
      (*(v123 + 32))(v127 + v126, v115 + v118, v124);
      v128 = v127 + v126;
      v129 = v127;
      (*(v123 + 56))(v128, 0, 1, v124);
      v122 = v360;
      v130 = v374;
      v131 = v368;
      v132 = v369;
      v133 = v345;
    }

    else
    {
      v101 = v310;
      v130 = v374;
      (v364)(v310, v115 + v117, v374);
      v314 = *(v346 + 48);
      if ((v314)(v115 + v118, 1, v371) != 1)
      {
LABEL_62:
        v353 = v358;
        v360 = v366;
        v328 = v101;
LABEL_63:
        result = (*(v353 + 8))(v328, v360);
        goto LABEL_64;
      }

      (*(v306 + 8))(v94, v105);
      v132 = v369;
      v218 = *(v370 + 48) + *(v347 + 76);
      v219 = v348;
      (*(v369 + 8))(&v348[v218], v130);
      v220 = v358;
      v221 = v101;
      v222 = v366;
      (*(v358 + 32))(v219 + v218, v221, v366);
      v223 = v219 + v218;
      v129 = v219;
      (*(v220 + 56))(v223, 0, 1, v222);
      v131 = v368;
      v133 = v345;
      v120 = v353;
    }
  }

  else
  {
    (v119)(v328, v115, v114);
    v320 = *(v358 + 48);
    if ((v320)(v115 + v117, 1, v366) != 1)
    {
      goto LABEL_63;
    }

    v314 = *(v346 + 48);
    if ((v314)(v115 + v118, 1, v371) != 1)
    {
      goto LABEL_63;
    }

    (*(v306 + 8))(v94, v105);
    v133 = v345;
    v195 = *(v345 + 76);
    v131 = v368;
    v196 = v348;
    (*(v368 + 8))(&v348[v195], v114);
    (*(v120 + 32))(v196 + v195, v328, v122);
    v197 = v196 + v195;
    v129 = v196;
    (*(v120 + 56))(v197, 0, 1, v122);
    v132 = v369;
    v130 = v374;
  }

  v225 = *(v132 + 8);
  v224 = v132 + 8;
  v328 = v225;
  (v225)(v115 + v117, v130);
  v228 = *(v131 + 8);
  v226 = v131 + 8;
  v227 = v228;
  v228(v115, v114);
  v341 = *(v133 + 76);
  v229 = v327;
  (v339)(v327, &v341[v129], v114);
  if ((v342)(v229, 1, v122) == 1)
  {
    v227(v229, v114);
  }

  else
  {
    v368 = v226;
    v230 = *(v120 + 32);
    v231 = v321;
    v332 = v120 + 32;
    v327 = v230;
    (v230)(v321, v229, v122);
    v232 = v318;
    (v364)(v318, v129 + *(v370 + 48) + *(v347 + 76), v130);
    v233 = v358;
    v234 = v366;
    if ((v320)(v232, 1, v366) == 1)
    {
      (*(v120 + 8))(v231, v122);
      (v328)(v232, v130);
    }

    else
    {
      v369 = v224;
      v235 = *(v233 + 32);
      v236 = v316;
      v318 = (v233 + 32);
      v311 = v235;
      (v235)(v316, v232, v234);
      v237 = v309;
      v238 = v373;
      v351(v309, &v348[*(v370 + 64) + *(v343 + 76)], v373);
      v239 = v346;
      v240 = v371;
      if ((v314)(v237, 1) != 1)
      {
        v374 = *(v239 + 32);
        v267 = v240;
        (v374)(v308, v237, v240);
        v268 = v372;
        (v322)(v372, v367);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
        v269 = v370;
        v270 = swift_getTupleTypeMetadata3();
        v271 = *(v270 + 48);
        v272 = *(v270 + 64);
        *v268 = v330;
        v273 = v356;
        (*(v356 + 16))(&v268[v271], v348, v269);
        *&v268[v272] = v329;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
        sub_1A9977A20();
        sub_1A9976CE0();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v275 = v357;
        v276 = v357 + *(TupleTypeMetadata2 + 48);
        *v357 = v331;
        v277 = TupleTypeMetadata3;
        v278 = *(TupleTypeMetadata3 + 48);
        v279 = *(TupleTypeMetadata3 + 64);
        (v327)(v276, v321, v360);
        (v311)(&v276[v278], v316, v366);
        (v374)(&v276[v279], v308, v267);
        (*(v239 + 56))(&v276[v279], 0, 1, v267);
        (*(v334 + 56))(v276, 0, 1, v277);
        swift_storeEnumTagMultiPayload();
        v376 = v355;
        v377 = v354;
        v378 = v362;
        v379 = v363;
        v280 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
        (*(*(v280 - 8) + 56))(v275, 0, 1, v280);
        return (*(v273 + 8))(v348, v370);
      }

      (*(v233 + 8))(v236, v234);
      v241 = v237;
      v120 = v353;
      (*(v353 + 8))(v321, v122);
      (*(v361 + 8))(v241, v238);
      v224 = v369;
      v114 = v350;
    }

    v129 = v348;
  }

  v242 = v325;
  (v339)(v325, &v341[v129], v114);
  v243 = (v342)(v242, 1, v122);
  v244 = v326;
  if (v243 == 1)
  {
    v227(v242, v114);
    v245 = v372;
    v246 = v370;
    v247 = v324;
  }

  else
  {
    v369 = v224;
    v248 = v317;
    v368 = *(v120 + 32);
    (v368)(v317, v242, v122);
    v249 = v374;
    (v364)(v244, v129 + *(v370 + 48) + *(v347 + 76), v374);
    v250 = v358;
    v251 = v366;
    if ((v320)(v244, 1, v366) == 1)
    {
      (*(v120 + 8))(v248, v122);
      (v328)(v244, v249);
      v245 = v372;
    }

    else
    {
      v252 = *(v250 + 32);
      v253 = v315;
      v252(v315, v244, v251);
      v245 = v372;
      if (*&v372[*(v307 + 17)] == 2)
      {
        v374 = v252;
        (v322)(v372, v367);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
        v254 = v370;
        v255 = swift_getTupleTypeMetadata3();
        v256 = *(v255 + 48);
        v257 = v248;
        v258 = *(v255 + 64);
        *v245 = v330;
        v259 = v356;
        (*(v356 + 16))(&v245[v256], v348, v254);
        *&v245[v258] = v329;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
        sub_1A9977A20();
        sub_1A9976CE0();
        v260 = swift_getTupleTypeMetadata2();
        v261 = v357;
        v262 = v357 + *(v260 + 48);
        *v357 = v331;
        v263 = TupleTypeMetadata3;
        v264 = *(TupleTypeMetadata3 + 48);
        v265 = *(TupleTypeMetadata3 + 64);
        (v368)(v262, v257, v360);
        (v374)(&v262[v264], v315, v366);
        (*(v346 + 56))(&v262[v265], 1, 1, v371);
        (*(v334 + 56))(v262, 0, 1, v263);
        swift_storeEnumTagMultiPayload();
        v376 = v355;
        v377 = v354;
        v378 = v362;
        v379 = v363;
        v266 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
        (*(*(v266 - 8) + 56))(v261, 0, 1, v266);
        return (*(v259 + 8))(v348, v370);
      }

      (*(v250 + 8))(v253, v251);
      (*(v353 + 8))(v248, v360);
      v129 = v348;
    }

    v247 = v324;
    v246 = v370;
  }

  (v322)(v245, v367);
  v281 = v245;
  v282 = &v245[v319[12]];
  v372 = v319[16];
  v369 = v319[20];
  *v281 = v330;
  v361 = *(v246 + 48);
  v368 = *(v246 + 64);
  v283 = v129;
  v284 = *v129;
  (v339)(v247, &v341[v283], v114);
  v285 = *(v283 + *(v345 + 80));
  v286 = v363;
  v303 = v363;
  v287 = v246;
  v288 = v362;
  v302 = v362;
  sub_1A97F3C48(v284, v247, v285, v282);
  v289 = v287;
  v290 = (v283 + *(v287 + 48));
  v360 = *v290;
  v291 = v347;
  v292 = v323;
  (v364)(v323, v290 + *(v347 + 76), v374);
  v293 = *(v290 + *(v291 + 80));
  v302 = v288;
  v303 = v286;
  sub_1A97F3C48(v360, v292, v293, &v282[v361]);
  v294 = (v283 + *(v289 + 64));
  v295 = *v294;
  v296 = v343;
  v297 = v333;
  v351(v333, v294 + *(v343 + 76), v373);
  v298 = *(v294 + *(v296 + 80));
  v299 = v363;
  v303 = v363;
  v300 = v362;
  v302 = v362;
  sub_1A97F3C48(v295, v297, v298, &v282[v368]);
  *&v372[v281] = v331;
  *(v281 + v369) = v329;
  swift_storeEnumTagMultiPayload();
  v376 = v355;
  v377 = v354;
  v378 = v300;
  v379 = v299;
  v301 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
  (*(*(v301 - 8) + 56))(v357, 1, 1, v301);
  return (*(v356 + 8))(v283, v370);
}

unint64_t sub_1A97F868C(unint64_t a1, void *a2)
{
  v168 = a1;
  v3 = a2[7];
  v4 = a2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v172 = sub_1A99770A0();
  v156 = *(v172 - 8);
  v6 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v155 = &v149 - v7;
  v8 = a2[6];
  v9 = a2[3];
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1A99770A0();
  v162 = *(v11 - 8);
  v163 = v11;
  v12 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v161 = &v149 - v13;
  v14 = a2[5];
  v154 = a2;
  v15 = a2[2];
  v16 = swift_getAssociatedTypeWitness();
  v160 = sub_1A99770A0();
  v159 = *(v160 - 8);
  v17 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v149 - v18;
  *&v175 = v15;
  *(&v175 + 1) = v9;
  *&v176 = v4;
  *(&v176 + 1) = v16;
  v170 = v16;
  v177 = v14;
  v178 = v8;
  v179 = v3;
  v19 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v175 = v15;
  *(&v175 + 1) = v9;
  *&v176 = v4;
  *(&v176 + 1) = v10;
  v171 = v10;
  v177 = v14;
  v178 = v8;
  v179 = v3;
  v20 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v175 = v15;
  *(&v175 + 1) = v9;
  *&v176 = v4;
  *(&v176 + 1) = AssociatedTypeWitness;
  v157 = AssociatedTypeWitness;
  v177 = v14;
  v178 = v8;
  v179 = v3;
  v21 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v166 = v20;
  v167 = v19;
  v164 = v21;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v22 = *(TupleTypeMetadata3 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v169 = (&v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v165 = (&v149 - v26);
  *&v27 = v15;
  *(&v27 + 1) = v9;
  *&v28 = v4;
  *(&v28 + 1) = v14;
  v175 = v27;
  v176 = v28;
  v177 = v8;
  v178 = v3;
  v29 = type metadata accessor for CombineLatestStateMachine.State();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = (&v149 - v32);
  (*(v30 + 16))(&v149 - v32, v174, v29);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v153 = v22;
    if (result == 1)
    {
LABEL_13:
      v169 = *v33;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
      v59 = v22;
      swift_getTupleTypeMetadata3();
      v43 = type metadata accessor for Deque();
      v60 = TupleTypeMetadata3;
      v40 = swift_getTupleTypeMetadata3();
      v61 = *(v40 + 48);
      v172 = *(v33 + *(v40 + 64));
      v62 = *(v59 + 32);
      v42 = v59 + 32;
      v57 = v62;
      v63 = v165;
      (v62)(v165, v33 + v61, v60);
      v64 = *(v30 + 8);
      v44 = v174;
      v64(v174, v29);
      v45 = swift_storeEnumTagMultiPayload();
      v65 = v63;
      v66 = v167;
      v46 = v167;
      v67 = v63;
      switch(v168)
      {
        case 0uLL:
          goto LABEL_20;
        case 1uLL:
          v68 = 48;
          v46 = v166;
LABEL_19:
          v67 = v63 + *(TupleTypeMetadata3 + v68);
LABEL_20:
          v67[*(v46 + 80)] = 1;
          if (*(v63 + *(v66 + 80)) == 1)
          {
            v76 = (v63 + *(TupleTypeMetadata3 + 48));
            if (*(v76 + *(v166 + 80)) == 1)
            {
              v77 = (v65 + *(TupleTypeMetadata3 + 64));
              if (*(v77 + *(v164 + 80)) == 1)
              {
                v78 = v172;
                *&v175 = v172;
                swift_getWitnessTable();
                v79 = v44;
                v80 = sub_1A9976EF0();
                v64(v79, v29);
                if (v80)
                {
                  swift_storeEnumTagMultiPayload();
                }

                else
                {
                  *v79 = v78;
                  swift_storeEnumTagMultiPayload();
                }

                v111 = *v165;
                v112 = *v76;
                v113 = *v77;
                if (*v165)
                {
                  v114 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
                  v116 = *(v114 + 2);
                  v115 = *(v114 + 3);
                  if (v116 >= v115 >> 1)
                  {
                    v114 = sub_1A97AE980((v115 > 1), v116 + 1, 1, v114);
                  }

                  *(v114 + 2) = v116 + 1;
                  *&v114[8 * v116 + 32] = v111;
                }

                else
                {
                  v114 = MEMORY[0x1E69E7CC0];
                }

                if (v112)
                {
                  v125 = v114;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v125 = sub_1A97AE980(0, *(v125 + 2) + 1, 1, v125);
                  }

                  v114 = v125;
                  v127 = *(v125 + 2);
                  v126 = *(v125 + 3);
                  if (v127 >= v126 >> 1)
                  {
                    v114 = sub_1A97AE980((v126 > 1), v127 + 1, 1, v125);
                  }

                  *(v114 + 2) = v127 + 1;
                  *&v114[8 * v127 + 32] = v112;
                }

                if (!v113)
                {
                  goto LABEL_95;
                }

                goto LABEL_77;
              }

              if (*(v44 + *(v154 + 17)) == 2)
              {
                v104 = v172;
                *&v175 = v172;
                swift_getWitnessTable();
                v105 = v44;
                v106 = sub_1A9976EF0();
                v64(v105, v29);
                if (v106)
                {
                  swift_storeEnumTagMultiPayload();
                }

                else
                {
                  *v105 = v104;
                  swift_storeEnumTagMultiPayload();
                }

                v132 = *v165;
                v133 = *v76;
                v113 = *v77;
                if (*v165)
                {
                  v114 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
                  v135 = *(v114 + 2);
                  v134 = *(v114 + 3);
                  if (v135 >= v134 >> 1)
                  {
                    v114 = sub_1A97AE980((v134 > 1), v135 + 1, 1, v114);
                  }

                  *(v114 + 2) = v135 + 1;
                  *&v114[8 * v135 + 32] = v132;
                }

                else
                {
                  v114 = MEMORY[0x1E69E7CC0];
                }

                if (v133)
                {
                  v136 = v114;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v136 = sub_1A97AE980(0, *(v136 + 2) + 1, 1, v136);
                  }

                  v114 = v136;
                  v138 = *(v136 + 2);
                  v137 = *(v136 + 3);
                  if (v138 >= v137 >> 1)
                  {
                    v114 = sub_1A97AE980((v137 > 1), v138 + 1, 1, v136);
                  }

                  *(v114 + 2) = v138 + 1;
                  *&v114[8 * v138 + 32] = v133;
                }

                if (!v113)
                {
                  goto LABEL_95;
                }

LABEL_77:
                v128 = v114;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v128 = sub_1A97AE980(0, *(v128 + 2) + 1, 1, v128);
                }

                v129 = v128;
                v131 = *(v128 + 2);
                v130 = *(v128 + 3);
                if (v131 >= v130 >> 1)
                {
                  v129 = sub_1A97AE980((v130 > 1), v131 + 1, 1, v128);
                }

                *(v129 + 2) = v131 + 1;
                *&v129[8 * v131 + 32] = v113;
LABEL_95:

                (*(v153 + 8))(v165, TupleTypeMetadata3);
                return v169;
              }
            }
          }

          v107 = v65;
          v64(v44, v29);
          v108 = *(v40 + 48);
          v109 = v44;
          v110 = *(v40 + 64);
          *v109 = v169;
          (v57)(v109 + v108, v107, TupleTypeMetadata3);
          *(v109 + v110) = v172;
LABEL_67:
          swift_storeEnumTagMultiPayload();
          return 0xF000000000000007;
        case 2uLL:
          v68 = 64;
          v46 = v164;
          goto LABEL_19;
      }

      __break(1u);
      goto LABEL_119;
    }

    v35 = v170;
    AssociatedTypeWitness = v171;
    if (result != 2)
    {
      goto LABEL_121;
    }

    v165 = *v33;
    MEMORY[0x1EEE9AC00](result);
    strcpy(&v149 - 64, "task upstreams downstreamContinuation buffer ");
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    v37 = TupleTypeMetadata3;
    *&v175 = v36;
    *(&v175 + 1) = TupleTypeMetadata3;
    swift_getTupleTypeMetadata3();
    sub_1A99770A0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A9977A20();
    *&v176 = sub_1A9976CE0();
    *(&v176 + 1) = type metadata accessor for Deque();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v39 = TupleTypeMetadata[12];
    v40 = *(v33 + TupleTypeMetadata[16]);
    v151 = TupleTypeMetadata;
    v41 = *(v33 + TupleTypeMetadata[20]);
    v42 = v153 + 32;
    v150 = *(v153 + 32);
    v150(v169, v33 + v39, v37);
    v43 = *(v30 + 8);
    v44 = v174;
    v43(v174, v29);
    v45 = swift_storeEnumTagMultiPayload();
    v46 = v168;
    v152 = v43;
    if (v168)
    {
      if (v168 == 1)
      {
        v47 = v169;
        v48 = v169 + *(TupleTypeMetadata3 + 48);
        v49 = v166;
        v48[*(v166 + 80)] = 1;
        v50 = *(v49 + 76);
        v172 = v41;
        v52 = v161;
        v51 = v162;
        v53 = v40;
        v54 = v163;
        (*(v162 + 16))(v161, &v48[v50], v163);
        v55 = (*(*(AssociatedTypeWitness - 8) + 48))(v52, 1, AssociatedTypeWitness);
        v56 = v52;
        v57 = v47;
        v58 = v54;
        v40 = v53;
        (*(v51 + 8))(v56, v58);
        v41 = v172;
      }

      else
      {
        v57 = v169;
        if (v168 != 2)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        v81 = v41;
        v82 = v40;
        v83 = v172;
        v84 = v169 + *(TupleTypeMetadata3 + 64);
        v85 = v164;
        v84[*(v164 + 80)] = 1;
        v86 = v156;
        v87 = v155;
        (*(v156 + 16))(v155, &v84[*(v85 + 76)], v83);
        v55 = (*(*(v157 - 8) + 48))(v87, 1);
        (*(v86 + 8))(v87, v83);
        v40 = v82;
        v41 = v81;
      }
    }

    else
    {
      v69 = v167;
      v70 = v169;
      *(v169 + *(v167 + 80)) = 1;
      v71 = v159;
      v72 = v158;
      v73 = v160;
      (*(v159 + 16))(v158, v70 + *(v69 + 76), v160);
      v74 = *(*(v35 - 8) + 48);
      v75 = v35;
      v57 = v70;
      v55 = v74(v72, 1, v75);
      (*(v71 + 8))(v72, v73);
    }

    if (v55 == 1)
    {
      v152(v174, v29);
      swift_storeEnumTagMultiPayload();
      AssociatedTypeWitness = *v57;
      v43 = *(v57 + *(TupleTypeMetadata3 + 48));
      v42 = *(v57 + *(TupleTypeMetadata3 + 64));
      if (!*v57)
      {
        v45 = MEMORY[0x1E69E7CC0];
        if (!v43)
        {
          goto LABEL_45;
        }

        goto LABEL_40;
      }

      v45 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v29 = *(v45 + 16);
      v46 = *(v45 + 24);
      v44 = v29 + 1;
      if (v29 < v46 >> 1)
      {
LABEL_30:
        *(v45 + 16) = v44;
        *(v45 + 8 * v29 + 32) = AssociatedTypeWitness;
        if (!v43)
        {
LABEL_45:
          if (v42)
          {
            v100 = v45;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v100 = sub_1A97AE980(0, *(v100 + 2) + 1, 1, v100);
            }

            v101 = v100;
            v103 = *(v100 + 2);
            v102 = *(v100 + 3);
            if (v103 >= v102 >> 1)
            {
              v101 = sub_1A97AE980((v102 > 1), v103 + 1, 1, v100);
            }

            *(v101 + 2) = v103 + 1;
            *&v101[8 * v103 + 32] = v42;
          }

LABEL_51:
          (*(v153 + 8))(v57, TupleTypeMetadata3);

          return v40 | 0x8000000000000000;
        }

LABEL_40:
        v97 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1A97AE980(0, *(v97 + 2) + 1, 1, v97);
        }

        v45 = v97;
        v99 = *(v97 + 2);
        v98 = *(v97 + 3);
        if (v99 >= v98 >> 1)
        {
          v45 = sub_1A97AE980((v98 > 1), v99 + 1, 1, v97);
        }

        *(v45 + 16) = v99 + 1;
        *(v45 + 8 * v99 + 32) = v43;
        goto LABEL_45;
      }

LABEL_120:
      v45 = sub_1A97AE980((v46 > 1), v44, 1, v45);
      goto LABEL_30;
    }

    v172 = v40;
    v88 = v41;
    if (*(v57 + *(v167 + 80)) == 1)
    {
      v89 = (v57 + *(TupleTypeMetadata3 + 48));
      if (*(v89 + *(v166 + 80)) == 1)
      {
        v90 = (v57 + *(TupleTypeMetadata3 + 64));
        if (*(v90 + *(v164 + 80)) == 1)
        {
          v152(v174, v29);
          swift_storeEnumTagMultiPayload();
          v91 = *v57;
          v92 = *v89;
          v93 = *v90;
          if (*v57)
          {
            v94 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v96 = *(v94 + 2);
            v95 = *(v94 + 3);
            if (v96 >= v95 >> 1)
            {
              v94 = sub_1A97AE980((v95 > 1), v96 + 1, 1, v94);
            }

            v40 = v172;
            *(v94 + 2) = v96 + 1;
            *&v94[8 * v96 + 32] = v91;
          }

          else
          {
            v94 = MEMORY[0x1E69E7CC0];
            v40 = v172;
          }

          if (v92)
          {
            v139 = v94;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v139 = sub_1A97AE980(0, *(v139 + 2) + 1, 1, v139);
            }

            v94 = v139;
            v141 = *(v139 + 2);
            v140 = *(v139 + 3);
            if (v141 >= v140 >> 1)
            {
              v94 = sub_1A97AE980((v140 > 1), v141 + 1, 1, v139);
            }

            *(v94 + 2) = v141 + 1;
            *&v94[8 * v141 + 32] = v92;
          }

          if (!v93)
          {
            goto LABEL_51;
          }

          goto LABEL_104;
        }

        if (*(v174 + *(v154 + 17)) == 2)
        {
          v152(v174, v29);
          swift_storeEnumTagMultiPayload();
          v117 = *v57;
          v118 = *v89;
          v93 = *v90;
          if (*v57)
          {
            v94 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v120 = *(v94 + 2);
            v119 = *(v94 + 3);
            if (v120 >= v119 >> 1)
            {
              v94 = sub_1A97AE980((v119 > 1), v120 + 1, 1, v94);
            }

            *(v94 + 2) = v120 + 1;
            *&v94[8 * v120 + 32] = v117;
          }

          else
          {
            v94 = MEMORY[0x1E69E7CC0];
          }

          v40 = v172;
          if (v118)
          {
            v146 = v94;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v146 = sub_1A97AE980(0, *(v146 + 2) + 1, 1, v146);
            }

            v94 = v146;
            v148 = *(v146 + 2);
            v147 = *(v146 + 3);
            if (v148 >= v147 >> 1)
            {
              v94 = sub_1A97AE980((v147 > 1), v148 + 1, 1, v146);
            }

            *(v94 + 2) = v148 + 1;
            *&v94[8 * v148 + 32] = v118;
          }

          if (!v93)
          {
            goto LABEL_51;
          }

LABEL_104:
          v142 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = sub_1A97AE980(0, *(v142 + 2) + 1, 1, v142);
          }

          v143 = v142;
          v145 = *(v142 + 2);
          v144 = *(v142 + 3);
          if (v145 >= v144 >> 1)
          {
            v143 = sub_1A97AE980((v144 > 1), v145 + 1, 1, v142);
          }

          *(v143 + 2) = v145 + 1;
          *&v143[8 * v145 + 32] = v93;
          goto LABEL_51;
        }
      }
    }

    v121 = v174;
    v152(v174, v29);
    v122 = v151[12];
    v123 = v151[16];
    v124 = v151[20];
    *v121 = v165;
    v150((v121 + v122), v57, TupleTypeMetadata3);
    *(v121 + v123) = v172;
    *(v121 + v124) = v88;
    goto LABEL_67;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      return 0xF000000000000007;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (result == 4)
  {
    (*(v30 + 8))(v33, v29);
    return 0xF000000000000007;
  }

  __break(1u);
LABEL_121:
  __break(1u);
  return result;
}

uint64_t sub_1A97F9A20(void *a1, void *a2)
{
  v128 = a1;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a2[6];
  v9 = a2[7];
  v129 = AssociatedTypeWitness;
  v10 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v124 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v134 = v3;
  v135 = v4;
  v136 = v5;
  v137 = swift_getAssociatedTypeWitness();
  v123 = v137;
  v138 = v6;
  v139 = v8;
  v140 = v9;
  v130 = v10;
  v126 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v127 = v11;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v131 = *(TupleTypeMetadata3 - 8);
  v132 = TupleTypeMetadata3;
  v13 = *(v131 + 64);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v125 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v114 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v114 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v114 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v114 - v25;
  v134 = v3;
  v135 = v4;
  v136 = v5;
  v137 = v6;
  v138 = v8;
  v139 = v9;
  v27 = type metadata accessor for CombineLatestStateMachine.State();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v114 - v30;
  (*(v28 + 16))(&v114 - v30, v133, v27);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v33 = v132;
    v120 = v26;
    v121 = v18;
    v122 = v21;
    v119 = v24;
    if (result != 1)
    {
      v34 = v133;
      if (result != 2)
      {
        goto LABEL_46;
      }

      v35 = v24;
      v36 = v132;
      v120 = *v31;
      MEMORY[0x1EEE9AC00](result);
      strcpy(&v114 - 64, "task upstreams downstreamContinuation buffer ");
      v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
      v135 = v33;
      sub_1A99770A0();
      swift_getTupleTypeMetadata3();
      sub_1A99770A0();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A9977A20();
      v136 = sub_1A9976CE0();
      v137 = type metadata accessor for Deque();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v38 = TupleTypeMetadata[12];
      v118 = *&v31[TupleTypeMetadata[16]];
      v39 = *&v31[TupleTypeMetadata[20]];

      v40 = v131;
      v41 = &v31[v38];
      v42 = v125;
      (*(v131 + 32))(v125, v41, v36);
      (*(v28 + 8))(v34, v27);
      swift_storeEnumTagMultiPayload();
      v43 = v36;
      v44 = *(v40 + 16);
      v44(v35, v42, v43);
      v123 = *(v43 + 48);
      v117 = *(v43 + 64);
      v124 = *v35;
      v45 = v35;
      v46 = v130;
      v47 = *(v130 - 8);
      v115 = *(v47 + 8);
      v116 = v47 + 8;
      v115(v45, v130);
      v48 = v122;
      v44(v122, v42, v43);
      v49 = *(v43 + 48);
      v114 = *(v43 + 64);
      v129 = *&v48[v49];
      v50 = v127;
      v51 = *(*(v127 - 8) + 8);
      v51(&v48[v49], v127);
      v52 = v121;
      v44(v121, v42, v43);
      v53 = *(v43 + 48);
      v54 = *(v43 + 64);
      v133 = *&v52[v54];
      v55 = v126;
      v56 = *(*(v126 - 8) + 8);
      v56(&v52[v54], v126);
      v51(&v52[v53], v50);
      v57 = v52;
      v58 = v115;
      v115(v57, v46);
      v56(&v48[v114], v55);
      v58(v48, v46);
      v59 = v119;
      v56(&v117[v119], v55);
      v51(&v59[v123], v50);
      if (v124)
      {
        v60 = v124;
        v61 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        v64 = v128;
        if (v63 >= v62 >> 1)
        {
          v61 = sub_1A97AE980((v62 > 1), v63 + 1, 1, v61);
        }

        v65 = v131;
        v66 = v118;
        v67 = v125;
        v68 = v133;
        v69 = v129;
        *(v61 + 2) = v63 + 1;
        *&v61[8 * v63 + 32] = v60;
        if (!v69)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v61 = MEMORY[0x1E69E7CC0];
        v64 = v128;
        v69 = v129;
        v65 = v131;
        v66 = v118;
        v67 = v125;
        v68 = v133;
        if (!v129)
        {
LABEL_37:
          if (v68)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = sub_1A97AE980(0, *(v61 + 2) + 1, 1, v61);
            }

            v112 = *(v61 + 2);
            v111 = *(v61 + 3);
            if (v112 >= v111 >> 1)
            {
              v61 = sub_1A97AE980((v111 > 1), v112 + 1, 1, v61);
            }

            *(v61 + 2) = v112 + 1;
            *&v61[8 * v112 + 32] = v68;
          }

          (*(v65 + 8))(v67, v132);
          v113 = v64;
          return v66;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_1A97AE980(0, *(v61 + 2) + 1, 1, v61);
      }

      v110 = *(v61 + 2);
      v109 = *(v61 + 3);
      if (v110 >= v109 >> 1)
      {
        v61 = sub_1A97AE980((v109 > 1), v110 + 1, 1, v61);
      }

      *(v61 + 2) = v110 + 1;
      *&v61[8 * v110 + 32] = v69;
      goto LABEL_37;
    }

    v118 = *v31;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    sub_1A99770A0();
    swift_getTupleTypeMetadata3();
    type metadata accessor for Deque();
    v70 = v33;
    v71 = swift_getTupleTypeMetadata3();
    v72 = *(v71 + 48);
    v73 = *&v31[*(v71 + 64)];

    v74 = v131;
    v75 = v120;
    (*(v131 + 32))(v120, &v31[v72], v70);
    v76 = v133;
    (*(v28 + 8))(v133, v27);
    v77 = v128;
    *v76 = v128;
    swift_storeEnumTagMultiPayload();
    v78 = *(v74 + 16);
    v78(v24, v75, v70);
    v129 = *(v70 + 48);
    v79 = *(v70 + 64);
    v124 = *v24;
    v125 = v79;
    v80 = v77;
    v81 = *(v130 - 8);
    v117 = *(v81 + 8);
    v123 = v81 + 8;
    (v117)(v24);
    v82 = v122;
    v78(v122, v75, v70);
    v83 = *(v70 + 48);
    v116 = *(v70 + 64);
    v133 = *&v82[v83];
    v84 = v127;
    v85 = *(*(v127 - 8) + 8);
    v85(&v82[v83], v127);
    v86 = v121;
    v78(v121, v75, v70);
    v87 = *(v70 + 48);
    v88 = *(v70 + 64);
    v128 = *&v86[v88];
    v89 = v126;
    v90 = *(*(v126 - 8) + 8);
    v90(&v86[v88], v126);
    v85(&v86[v87], v84);
    v91 = v85;
    v92 = v86;
    v93 = v130;
    v94 = v117;
    (v117)(v92, v130);
    v90(&v82[v116], v89);
    v95 = v82;
    v96 = v124;
    v94(v95, v93);
    v97 = v119;
    v90(&v125[v119], v89);
    v91(&v97[v129], v84);
    if (v96)
    {
      v98 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v100 = *(v98 + 2);
      v99 = *(v98 + 3);
      if (v100 >= v99 >> 1)
      {
        v98 = sub_1A97AE980((v99 > 1), v100 + 1, 1, v98);
      }

      v101 = v131;
      v66 = v118;
      v102 = v120;
      v103 = v133;
      v104 = v128;
      *(v98 + 2) = v100 + 1;
      *&v98[8 * v100 + 32] = v96;
      if (!v103)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v98 = MEMORY[0x1E69E7CC0];
      v101 = v131;
      v66 = v118;
      v102 = v120;
      v103 = v133;
      v104 = v128;
      if (!v133)
      {
LABEL_24:
        if (v104)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_1A97AE980(0, *(v98 + 2) + 1, 1, v98);
          }

          v108 = *(v98 + 2);
          v107 = *(v98 + 3);
          if (v108 >= v107 >> 1)
          {
            v98 = sub_1A97AE980((v107 > 1), v108 + 1, 1, v98);
          }

          *(v98 + 2) = v108 + 1;
          *&v98[8 * v108 + 32] = v104;
        }

        (*(v101 + 8))(v102, v132);
        return v66;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = sub_1A97AE980(0, *(v98 + 2) + 1, 1, v98);
    }

    v106 = *(v98 + 2);
    v105 = *(v98 + 3);
    if (v106 >= v105 >> 1)
    {
      v98 = sub_1A97AE980((v105 > 1), v106 + 1, 1, v98);
    }

    *(v98 + 2) = v106 + 1;
    *&v98[8 * v106 + 32] = v103;
    goto LABEL_24;
  }

  if (result <= 4)
  {
    (*(v28 + 8))(v31, v27);
    return 0xF000000000000007;
  }

  if (result == 5)
  {
    return 0xF000000000000007;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_1A97FA764(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = a1[6];
  v8 = a1[7];
  v117 = AssociatedTypeWitness;
  v9 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v116 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v126 = v2;
  v127 = v3;
  v128 = v5;
  v129 = swift_getAssociatedTypeWitness();
  v130 = v4;
  v131 = v7;
  v132 = v8;
  v121 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v122 = v9;
  v120 = v10;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v123 = *(TupleTypeMetadata3 - 8);
  v124 = TupleTypeMetadata3;
  v12 = *(v123 + 64);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v119 = &v106 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v115 = &v106 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v106 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v106 - v23;
  v126 = v2;
  v127 = v3;
  v128 = v5;
  v129 = v4;
  v130 = v7;
  v131 = v8;
  v24 = type metadata accessor for CombineLatestStateMachine.State();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v106 - v27;
  (*(v25 + 16))(&v106 - v27, v125, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        return 0xF000000000000007;
      }

      __break(1u);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v30 = *(v25 + 8);
      v30(v28, v24);
      v30(v125, v24);
      swift_storeEnumTagMultiPayload();
      return 0xF000000000000007;
    }

    (*(v25 + 8))(v28, v24);
    return 0xF000000000000007;
  }

  if (!EnumCaseMultiPayload)
  {
    v62 = sub_1A99770A0();
    v63 = swift_getTupleTypeMetadata3();
    v64 = *(v63 + 48);
    v65 = *(v63 + 64);
    (*(v25 + 8))(v125, v24);
    swift_storeEnumTagMultiPayload();
    (*(*(v62 - 8) + 8))(&v28[v65], v62);
    (*(*(v3 - 8) + 8))(&v28[v64], v3);
    (*(*(v2 - 8) + 8))(v28, v2);
    return 0xF000000000000007;
  }

  v114 = v22;
  if (EnumCaseMultiPayload == 1)
  {
    v113 = *v28;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    sub_1A99770A0();
    swift_getTupleTypeMetadata3();
    type metadata accessor for Deque();
    v31 = v124;
    v32 = swift_getTupleTypeMetadata3();
    v33 = *(v32 + 48);
    v34 = *&v28[*(v32 + 64)];

    v35 = v123;
    v36 = v118;
    (*(v123 + 32))(v118, &v28[v33], v31);
    (*(v25 + 8))(v125, v24);
    swift_storeEnumTagMultiPayload();
    v37 = *(v35 + 16);
    v37(v22, v36, v31);
    v38 = *(v31 + 48);
    v116 = *(v31 + 64);
    v117 = v38;
    v112 = *v22;
    v39 = v122;
    v40 = *(v122 - 8);
    v110 = *(v40 + 8);
    v111 = v40 + 8;
    (v110)(v22, v122);
    v41 = v115;
    v37(v115, v36, v31);
    v42 = *(v31 + 48);
    v108 = *(v31 + 64);
    v125 = *&v41[v42];
    v43 = v120;
    v44 = *(v120 - 8);
    v45 = *(v44 + 8);
    v107 = v44 + 8;
    v45(&v41[v42], v120);
    v46 = v119;
    v37(v119, v36, v31);
    v47 = *(v31 + 48);
    v48 = *(v31 + 64);
    v109 = *&v46[v48];
    v49 = v121;
    v50 = *(*(v121 - 8) + 8);
    v50(&v46[v48], v121);
    v45(&v46[v47], v43);
    v51 = v46;
    v52 = v110;
    (v110)(v51, v39);
    v50(&v108[v41], v49);
    v53 = v41;
    v54 = v112;
    v52(v53, v39);
    v55 = v114;
    v50(&v114[v116], v49);
    v45(&v55[v117], v43);
    if (v54)
    {
      v56 = v109;
      v57 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v59 = *(v57 + 2);
      v58 = *(v57 + 3);
      if (v59 >= v58 >> 1)
      {
        v57 = sub_1A97AE980((v58 > 1), v59 + 1, 1, v57);
      }

      v60 = v113;
      v61 = v125;
      *(v57 + 2) = v59 + 1;
      *&v57[8 * v59 + 32] = v54;
      if (!v61)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC0];
      v60 = v113;
      v61 = v125;
      v56 = v109;
      if (!v125)
      {
LABEL_28:
        if (v56)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_1A97AE980(0, *(v57 + 2) + 1, 1, v57);
          }

          v101 = *(v57 + 2);
          v100 = *(v57 + 3);
          if (v101 >= v100 >> 1)
          {
            v57 = sub_1A97AE980((v100 > 1), v101 + 1, 1, v57);
          }

          *(v57 + 2) = v101 + 1;
          *&v57[8 * v101 + 32] = v56;
        }

        (*(v123 + 8))(v118, v124);
        return v60 | 0x8000000000000000;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1A97AE980(0, *(v57 + 2) + 1, 1, v57);
    }

    v99 = *(v57 + 2);
    v98 = *(v57 + 3);
    if (v99 >= v98 >> 1)
    {
      v57 = sub_1A97AE980((v98 > 1), v99 + 1, 1, v57);
    }

    *(v57 + 2) = v99 + 1;
    *&v57[8 * v99 + 32] = v61;
    goto LABEL_28;
  }

  v113 = *v28;
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  strcpy(&v106 - 64, "task upstreams downstreamContinuation buffer ");
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
  v68 = v124;
  v126 = v67;
  v127 = v124;
  sub_1A99770A0();
  swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9977A20();
  v128 = sub_1A9976CE0();
  v129 = type metadata accessor for Deque();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v70 = TupleTypeMetadata[12];
  v118 = *&v28[TupleTypeMetadata[16]];
  v71 = *&v28[TupleTypeMetadata[20]];

  v72 = v123;
  (*(v123 + 32))(v15, &v28[v70], v68);
  (*(v25 + 8))(v125, v24);
  swift_storeEnumTagMultiPayload();
  v73 = *(v72 + 16);
  v74 = v15;
  v73(v22, v15, v68);
  v112 = *(v68 + 48);
  v110 = *(v68 + 64);
  v111 = *v22;
  v75 = v122;
  v76 = *(v122 - 8);
  v108 = *(v76 + 8);
  v109 = v76 + 8;
  (v108)(v22, v122);
  v77 = v115;
  v73(v115, v74, v68);
  v78 = *(v68 + 48);
  v107 = *(v68 + 64);
  v116 = *&v77[v78];
  v79 = v120;
  v80 = *(*(v120 - 8) + 8);
  v80(&v77[v78], v120);
  v81 = v80;
  v82 = v119;
  v125 = v74;
  v73(v119, v74, v68);
  v83 = *(v68 + 48);
  v84 = *(v68 + 64);
  v117 = *&v82[v84];
  v85 = v121;
  v86 = *(*(v121 - 8) + 8);
  v86(&v82[v84], v121);
  v81(&v82[v83], v79);
  v87 = v82;
  v88 = v108;
  (v108)(v87, v75);
  v86(&v77[v107], v85);
  v88(v77, v75);
  v89 = v114;
  v86(&v110[v114], v85);
  v90 = v79;
  v91 = v111;
  v81(&v89[v112], v90);
  if (v91)
  {
    v92 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v94 = *(v92 + 2);
    v93 = *(v92 + 3);
    if (v94 >= v93 >> 1)
    {
      v92 = sub_1A97AE980((v93 > 1), v94 + 1, 1, v92);
    }

    v96 = v116;
    v95 = v117;
    *(v92 + 2) = v94 + 1;
    *&v92[8 * v94 + 32] = v91;
    v97 = v125;
    if (!v96)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v92 = MEMORY[0x1E69E7CC0];
  v96 = v116;
  v95 = v117;
  v97 = v125;
  if (v116)
  {
LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = sub_1A97AE980(0, *(v92 + 2) + 1, 1, v92);
    }

    v103 = *(v92 + 2);
    v102 = *(v92 + 3);
    if (v103 >= v102 >> 1)
    {
      v92 = sub_1A97AE980((v102 > 1), v103 + 1, 1, v92);
    }

    *(v92 + 2) = v103 + 1;
    *&v92[8 * v103 + 32] = v96;
    v97 = v125;
  }

LABEL_41:
  if (v95)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = sub_1A97AE980(0, *(v92 + 2) + 1, 1, v92);
    }

    v105 = *(v92 + 2);
    v104 = *(v92 + 3);
    if (v105 >= v104 >> 1)
    {
      v92 = sub_1A97AE980((v104 > 1), v105 + 1, 1, v92);
    }

    *(v92 + 2) = v105 + 1;
    *&v92[8 * v105 + 32] = v95;
    v97 = v125;
  }

  (*(v123 + 8))(v97, v124);
  return v118;
}

uint64_t sub_1A97FB57C@<X0>(char *a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v128 = a1;
  v129 = a3;
  v4 = a2[5];
  v5 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = a2[6];
  v8 = a2[3];
  v9 = swift_getAssociatedTypeWitness();
  v10 = a2[7];
  v11 = a2[4];
  v12 = swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v127 = sub_1A99770A0();
  v115 = *(v127 - 8);
  v14 = *(v115 + 64);
  v15 = MEMORY[0x1EEE9AC00](v127);
  v120 = (&v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v121 = &v111 - v18;
  v122 = TupleTypeMetadata3;
  v124 = *(TupleTypeMetadata3 - 8);
  v19 = *(v124 + 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v113 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v114 = &v111 - v22;
  v137 = v5;
  v138 = v8;
  v139 = v11;
  v140 = AssociatedTypeWitness;
  v141 = v4;
  v142 = v7;
  v143 = v10;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v137 = v5;
  v138 = v8;
  v139 = v11;
  v140 = v9;
  v141 = v4;
  v142 = v7;
  v143 = v10;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v137 = v5;
  v138 = v8;
  v139 = v11;
  v140 = v12;
  v141 = v4;
  v142 = v7;
  v143 = v10;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v23 = swift_getTupleTypeMetadata3();
  v24 = *(v23 - 8);
  v125 = v23;
  v126 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v117 = &v111 - v26;
  v27 = sub_1A99770A0();
  v119 = *(v27 - 8);
  v28 = *(v119 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = (&v111 - v30);
  v118 = *(v8 - 8);
  v32 = *(v118 + 64);
  v33 = MEMORY[0x1EEE9AC00](v29);
  v35 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = *(v5 - 8);
  v36 = *(v123 + 8);
  MEMORY[0x1EEE9AC00](v33);
  v38 = &v111 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v11;
  v131 = v5;
  v137 = v5;
  v138 = v8;
  v39 = v8;
  v139 = v11;
  v140 = v4;
  v133 = v7;
  v134 = v4;
  v141 = v7;
  v142 = v10;
  v132 = v10;
  v40 = v135;
  v41 = type metadata accessor for CombineLatestStateMachine.State();
  v42 = *(v41 - 8);
  v43 = *(v42 + 8);
  MEMORY[0x1EEE9AC00](v41);
  v45 = (&v111 - v44);
  (*(v42 + 2))(&v111 - v44, v40, v41);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v113 = v42;
    v52 = v123;
    v120 = v31;
    v116 = v39;
    v53 = v126;
    if (!result)
    {
      v81 = v116;
      v82 = v131;
      v83 = v27;
      v84 = swift_getTupleTypeMetadata3();
      v85 = *(v84 + 48);
      v127 = *(v84 + 64);
      v135 = *(v52 + 4);
      v112 = v38;
      (v135)(v38, v45, v82);
      v86 = v129;
      v128 = *(v118 + 32);
      v111 = v35;
      (v128)(v35, v45 + v85, v81);
      v87 = *(v119 + 32);
      v88 = v120;
      v87(v120, v45 + v127, v83);
      v89 = swift_getTupleTypeMetadata3();
      v90 = *(v89 + 48);
      v127 = *(v89 + 64);
      (v135)(v86, v112, v82);
      (v128)(v86 + v90, v111, v81);
      v87((v86 + v127), v88, v83);
      v137 = v82;
      v138 = v81;
      v139 = v130;
      v140 = v134;
      v141 = v133;
      v142 = v132;
      type metadata accessor for CombineLatestStateMachine.NextAction();
      return swift_storeEnumTagMultiPayload();
    }

    if (result != 1)
    {
      goto LABEL_37;
    }

    v123 = *v45;
    v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2050, qword_1A9995DE8);
    v55 = v122;
    v56 = type metadata accessor for Deque();
    v118 = v54;
    v57 = v125;
    v58 = swift_getTupleTypeMetadata3();
    v59 = *(v58 + 48);
    v112 = v58;
    v60 = *(v45 + *(v58 + 64));
    v61 = v117;
    v120 = *(v53 + 32);
    (v120)(v117, v45 + v59, v57);
    v136 = v60;
    v62 = *(v113 + 1);
    v62(v40, v41);
    swift_storeEnumTagMultiPayload();
    v119 = v56;
    v63 = v56;
    v64 = v121;
    Deque.popFirst()(v63, v121);
    v65 = v124;
    v66 = v55;
    if ((*(v124 + 6))(v64, 1, v55) != 1)
    {
      v96 = v65[4];
      v96(v114, v64, v55);
      v62(v40, v41);
      v97 = *(v112 + 12);
      v98 = *(v112 + 16);
      *v40 = v123;
      (v120)(v40 + v97, v61, v125);
      *(v40 + v98) = v136;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A9977A20();
      sub_1A9976CE0();
      v99 = *(swift_getTupleTypeMetadata2() + 48);
      v100 = v129;
      *v129 = v128;
      v96(v100 + v99, v114, v66);
      (*(v124 + 7))(v100 + v99, 0, 1, v66);
      goto LABEL_25;
    }

    v124 = v62;
    v126 = v53 + 32;
    (*(v115 + 8))(v64, v127);
    v67 = *v61;
    v122 = *(v125 + 48);
    v68 = *(v61 + v122);
    v121 = *(v125 + 64);
    v115 = *(v61 + v121);
    if (v67)
    {
      v69 = sub_1A97AE980(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v71 = *(v69 + 2);
      v70 = *(v69 + 3);
      if (v71 >= v70 >> 1)
      {
        v69 = sub_1A97AE980((v70 > 1), v71 + 1, 1, v69);
      }

      *(v69 + 2) = v71 + 1;
      *&v69[8 * v71 + 32] = v67;
      v72 = v124;
      if (v68)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v69 = MEMORY[0x1E69E7CC0];
      v72 = v124;
      if (v68)
      {
LABEL_13:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v125;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = sub_1A97AE980(0, *(v69 + 2) + 1, 1, v69);
        }

        v76 = *(v69 + 2);
        v75 = *(v69 + 3);
        if (v76 >= v75 >> 1)
        {
          v69 = sub_1A97AE980((v75 > 1), v76 + 1, 1, v69);
        }

        v77 = v61;
        *(v69 + 2) = v76 + 1;
        *&v69[8 * v76 + 32] = v68;
        v72 = v124;
        goto LABEL_28;
      }
    }

    v77 = v61;
    v74 = v125;
LABEL_28:
    v101 = v115;
    if (v115)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_1A97AE980(0, *(v69 + 2) + 1, 1, v69);
      }

      v103 = *(v69 + 2);
      v102 = *(v69 + 3);
      if (v103 >= v102 >> 1)
      {
        v69 = sub_1A97AE980((v102 > 1), v103 + 1, 1, v69);
      }

      *(v69 + 2) = v103 + 1;
      *&v69[8 * v103 + 32] = v101;
      v72 = v124;
    }

    *v77 = 0;
    *(v77 + v122) = 0;
    *(v77 + v121) = 0;
    v104 = v135;
    v105 = v72(v135, v41);
    MEMORY[0x1EEE9AC00](v105);
    strcpy(&v111 - 64, "task upstreams downstreamContinuation buffer ");
    v137 = v118;
    v138 = v74;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A9977A20();
    v139 = sub_1A9976CE0();
    v140 = v119;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v107 = TupleTypeMetadata[12];
    v108 = v74;
    v109 = TupleTypeMetadata[16];
    v110 = TupleTypeMetadata[20];
    *v104 = v123;
    (v120)(v104 + v107, v77, v108);
    *(v104 + v109) = v128;
    *(v104 + v110) = v136;
    swift_storeEnumTagMultiPayload();
    *v129 = v69;
    v137 = v131;
    v138 = v116;
    v139 = v130;
    v140 = v134;
    v141 = v133;
    v142 = v132;
    type metadata accessor for CombineLatestStateMachine.NextAction();
    return swift_storeEnumTagMultiPayload();
  }

  if (result <= 4)
  {
    if (result != 3)
    {
      v78 = *v45;
      (*(v42 + 1))(v40, v41);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      sub_1A9977A20();
      sub_1A9976CE0();
      v79 = *(swift_getTupleTypeMetadata2() + 48);
      v80 = v129;
      *v129 = v128;
      *(v80 + v79) = v78;
      swift_storeEnumTagMultiPayload();
      v137 = v131;
      v138 = v39;
      v139 = v130;
      v140 = v134;
      v141 = v133;
      v142 = v132;
      type metadata accessor for CombineLatestStateMachine.NextAction();
      return swift_storeEnumTagMultiPayload();
    }

    v116 = v39;
    v136 = *v45;
    v47 = *(v42 + 1);
    v47(v40, v41);
    swift_storeEnumTagMultiPayload();
    v48 = v122;
    v49 = type metadata accessor for Deque();
    v50 = v120;
    Deque.popFirst()(v49, v120);
    v51 = v124;
    if ((*(v124 + 6))(v50, 1, v48) == 1)
    {

      (*(v115 + 8))(v50, v127);
      v47(v40, v41);
      swift_storeEnumTagMultiPayload();
      *v129 = v128;
      v137 = v131;
      v138 = v116;
LABEL_20:
      v139 = v130;
      v140 = v134;
      v141 = v133;
      v142 = v132;
      type metadata accessor for CombineLatestStateMachine.NextAction();
      return swift_storeEnumTagMultiPayload();
    }

    v91 = v51[4];
    v92 = v113;
    v91(v113, v50, v48);
    v47(v40, v41);
    *v40 = v136;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A9977A20();
    sub_1A9976CE0();
    v93 = *(swift_getTupleTypeMetadata2() + 48);
    v94 = v48;
    v95 = v129;
    *v129 = v128;
    v91(v95 + v93, v92, v94);
    (v51[7])(v95 + v93, 0, 1, v94);
LABEL_25:
    swift_storeEnumTagMultiPayload();
    v137 = v131;
    v138 = v116;
    v139 = v130;
    v140 = v134;
    v141 = v133;
    v142 = v132;
    type metadata accessor for CombineLatestStateMachine.NextAction();
    return swift_storeEnumTagMultiPayload();
  }

  if (result == 5)
  {
    *v129 = v128;
    v137 = v131;
    v138 = v39;
    goto LABEL_20;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_1A97FC63C()
{
  result = qword_1EB3B2058[0];
  if (!qword_1EB3B2058[0])
  {
    sub_1A9976BC0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3B2058);
  }

  return result;
}

uint64_t sub_1A97FC6AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A97FC6F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFF);
  }

  v3 = (((*(a1 + 8) >> 49) >> 14) | (2 * ((*(a1 + 8) >> 49) & 0x3800 | ((*(a1 + 8) & 7) << 8) | HIBYTE(*a1) & 0xF0 | *a1 & 0xF))) ^ 0x7FFF;
  if (v3 >= 0x7FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A97FC76C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFE)
  {
    *result = a2 - 0x7FFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3FFF | ((-a2 & 0x7FFF) << 14);
      *result = (v3 | (v3 << 56)) & 0xF00000000000000FLL;
      *(result + 8) = ((v3 >> 8) | (v3 << 49)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1A97FC7E8(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF0uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_1A97FC818()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A97FC880(void *a1)
{
  v2 = a1[5];
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  v4 = a1[6];
  v5 = a1[3];
  swift_getAssociatedTypeWitness();
  v6 = a1[7];
  v7 = a1[4];
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v8 = sub_1A9977A20();
  v10 = v9;
  sub_1A9976CE0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v12 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    if (v10 > 0x3F)
    {
      return v8;
    }

    else
    {
      v13 = *(v8 - 8);
      swift_getTupleTypeLayout2();
      TupleTypeMetadata2 = 0;
      *(*(a1 - 1) + 84) = v15;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1A97FCA60(unsigned __int16 *a1, int a2, void *a3)
{
  v5 = a3[5];
  v6 = a3[2];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = a3[6];
  v10 = a3[3];
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v11 + 84) > v8)
  {
    v8 = *(v11 + 84);
  }

  v12 = a3[7];
  v13 = a3[4];
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  v18 = (v17 | v8) == 0;
  v19 = *(v14 + 64);
  if (!v16)
  {
    ++v18;
  }

  v20 = v18 + v19 + ((((*(v7 + 64) + *(v11 + 80)) & ~*(v11 + 80)) + *(v11 + 64) + v15) & ~v15);
  if (v20 <= 8)
  {
    v20 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  v23 = ((*(v11 + 80) | *(v7 + 80)) | v15) & 0xF8 | 7u;
  v24 = v20 + ((v23 + 8) & ~v23) + 1;
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_16;
  }

  v27 = (a2 - 0x7FFFFFFF + ~(-1 << v25)) >> v25;
  if (v27 > 0xFFFE)
  {
    v26 = *(a1 + v24);
    if (!v26)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  if (v27 <= 0xFE)
  {
    if (!v27)
    {
      goto LABEL_11;
    }

LABEL_16:
    v26 = *(a1 + v24);
    if (!*(a1 + v24))
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
LABEL_11:
    v21 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v21) = -1;
    }

    return (v21 + 1);
  }

LABEL_25:
  v28 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v28 = 0;
  }

  if (v24)
  {
    if (v24 > 3)
    {
      LODWORD(v24) = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        LODWORD(v24) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v24) = *a1;
      }
    }

    else if (v24 == 1)
    {
      LODWORD(v24) = *a1;
    }

    else
    {
      LODWORD(v24) = *a1;
    }
  }

  return (v24 | v28) ^ 0x80000000;
}