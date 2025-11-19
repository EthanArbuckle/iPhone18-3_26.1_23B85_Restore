id DownloadableURLOptions.__allocating_init(_:nonAppInitiated:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString];
  *v8 = a1;
  v8[1] = a2;
  v7[OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id DownloadableURLOptions.init(_:nonAppInitiated:)(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_urlRawString];
  *v8 = a1;
  v8[1] = a2;
  v3[OBJC_IVAR____TtC18PodcastsFoundation22DownloadableURLOptions_nonAppInitiated] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id DownloadableURLOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DownloadableURLOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Sequence.cartesianProduct<A>(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = a2;
  v69 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v68 = &v55 - v10;
  v11 = sub_1D91791BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v55 - v13;
  v61 = *(a3 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a3;
  v71 = a5;
  v18 = swift_getAssociatedTypeWitness();
  v58 = *(v18 - 8);
  v19 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - v20;
  v79 = AssociatedTypeWitness;
  v74 = *(AssociatedTypeWitness - 8);
  v22 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v80 = &v55 - v24;
  v25 = sub_1D91791BC();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v55 - v27;
  v29 = v76;
  v30 = *(v76 - 1);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = swift_getAssociatedTypeWitness();
  v56 = *(v75 - 8);
  v35 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v37 = &v55 - v36;
  v81 = sub_1D917866C();
  (*(v30 + 16))(v34, v77, v29);
  sub_1D91783FC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v72 = v37;
  v66 = AssociatedConformanceWitness;
  sub_1D91791DC();
  v39 = v74;
  v40 = v79;
  v64 = *(v74 + 48);
  v65 = v74 + 48;
  if (v64(v28, 1, v79) != 1)
  {
    v43 = *(v39 + 32);
    v42 = v39 + 32;
    v61 += 16;
    v62 = v43;
    v60 = v8 - 8;
    v59 = (v42 - 16);
    v58 += 8;
    v74 = v42;
    v57 = (v42 - 24);
    v63 = v28;
    v78 = v18;
    v43(v80, v28, v40);
    while (1)
    {
      (*v61)(v67, v69, v70);
      sub_1D91783FC();
      v77 = swift_getAssociatedConformanceWitness();
      sub_1D91791DC();
      v47 = *(v8 - 8);
      v76 = *(v47 + 48);
      v48 = (v76)(v14, 1, v8);
      v49 = TupleTypeMetadata2;
      v50 = v21;
      v51 = v68;
      if (v48 != 1)
      {
        v52 = *v59;
        v53 = (v47 + 32);
        do
        {
          v54 = *(v49 + 48);
          v52(v51, v80, v79);
          (*v53)(&v51[v54], v14, v8);
          sub_1D91786FC();
          sub_1D91786BC();
          sub_1D91791DC();
        }

        while ((v76)(v14, 1, v8) != 1);
      }

      v21 = v50;
      (*v58)(v50, v78);
      v45 = v79;
      v44 = v80;
      (*v57)(v80, v79);
      v46 = v63;
      sub_1D91791DC();
      if (v64(v46, 1, v45) == 1)
      {
        break;
      }

      v62(v44, v46, v45);
    }
  }

  (*(v56 + 8))(v72, v75);
  return v81;
}

uint64_t Sequence.sorted<A, B>(by:using:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a2;
  v31 = Sequence.uniqued<A>(by:)(a2, a3, a5, a7);
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a2;
  v14 = (v13 + *MEMORY[0x1E69E77B0]);
  v15 = *v14;
  v16 = sub_1D91786FC();
  v17 = v14[1];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1D8D175AC(sub_1D8F42970, v24, v16, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v20);

  v31 = v21;
  sub_1D91786FC();
  swift_getWitnessTable();
  sub_1D917808C();
  v22 = sub_1D917843C();

  return v22;
}

uint64_t sub_1D8F4289C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*a2 + *MEMORY[0x1E69E77B0]);
  v7 = *v5;
  v6 = v5[1];
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  swift_getAtKeyPath();
  return (*(*(v7 - 8) + 16))(a3 + v8, a1, v7);
}

uint64_t sub_1D8F42970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  return sub_1D8F4289C(a1, *(v2 + 56), a2);
}

uint64_t sub_1D8F42998()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[7];
  v4 = v0[8];
  swift_getAssociatedTypeWitness();
  return sub_1D91780FC();
}

uint64_t static NSThread.performOnMain(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_1D9177E0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177E9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([swift_getObjCClassFromMetadata() isMainThread])
  {
    return a1();
  }

  sub_1D8CFD888();
  v15 = sub_1D9178E1C();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  aBlock[4] = sub_1D8D244E0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_36;
  v17 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v8, v17);
  _Block_release(v17);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D8F42CE4(uint64_t a1)
{
  result = sub_1D917734C();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = sub_1D91791BC();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D8F42DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1D91791BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-1] - v9;
  v11 = sub_1D9176E3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s29SynchronizedEventSubscriptionCMa();
  (*(v12 + 16))(v15, v3, v11);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1D8F43094(v15);
  v20 = *(a2 - 8);
  (*(v20 + 16))(v10, a1, a2);
  (*(v20 + 56))(v10, 0, 1, a2);
  v21 = *(*v19 + 120);
  swift_beginAccess();
  (*(v7 + 40))(v19 + v21, v10, v6);
  swift_endAccess();
  v24[3] = v16;
  v24[4] = swift_getWitnessTable();
  v24[0] = v19;
  sub_1D917779C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

uint64_t *sub_1D8F43054(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1D8F43094(a1);
}

uint64_t *sub_1D8F43094(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D917734C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = qword_1EDCD08A8;
  if (qword_1EDCD11B8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D917739C();
  __swift_project_value_buffer(v13, qword_1EDCD11C0);
  sub_1D917737C();
  sub_1D917731C();
  *(v1 + qword_1EDCD0898) = 0;
  (*(*(*(v4 + 80) - 8) + 56))(v1 + *(*v1 + 120), 1, 1);
  v14 = *(v6 + 16);
  v14(v11, v1 + v12, v5);
  v15 = sub_1D917737C();
  v16 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v17 = swift_slowAlloc();
    v27 = a1;
    v18 = v17;
    *v17 = 0;
    v19 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v15, v16, v19, "SynchronizedEventSubscription", "", v18, 2u);
    v20 = v18;
    a1 = v27;
    MEMORY[0x1DA72CB90](v20, -1, -1);
  }

  v14(v28, v11, v5);
  v21 = sub_1D91773FC();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_1D91773EC();
  (*(v6 + 8))(v11, v5);
  *(v2 + qword_1EDCD08A0) = v24;
  sub_1D8F4379C(a1);
  v25 = sub_1D9176E3C();
  (*(*(v25 - 8) + 8))(a1, v25);
  return v2;
}

void sub_1D8F433AC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D91773AC();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D917734C();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 80);
  v12 = sub_1D91791BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v29 - v16;
  v18 = qword_1EDCD0898;
  [*&v1[qword_1EDCD0898] invalidate];
  (*(*(v11 - 8) + 56))(v17, 1, 1, v11);
  v19 = *(*v1 + 120);
  swift_beginAccess();
  (*(v13 + 40))(&v1[v19], v17, v12);
  swift_endAccess();
  if (*&v1[v18])
  {
    if (qword_1EDCD11B8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917739C();
    __swift_project_value_buffer(v20, qword_1EDCD11C0);
    v21 = *&v1[qword_1EDCD08A0];

    v22 = sub_1D917737C();
    sub_1D91773DC();
    v23 = sub_1D9178F4C();
    if (sub_1D917918C())
    {

      sub_1D917740C();

      v24 = v30;
      if ((*(v30 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v24 + 8))(v6, v3);
        v25 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v22, v23, v27, "SynchronizedEventSubscription", v25, v26, 2u);
      MEMORY[0x1DA72CB90](v26, -1, -1);
    }

    (*(v7 + 8))(v10, v31);
    v28 = *&v1[v18];
    *&v1[v18] = 0;
  }
}

void sub_1D8F4379C(void *a1)
{
  v133 = a1;
  v2 = *v1;
  v120 = sub_1D91773AC();
  v129 = *(v120 - 8);
  v3 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v118 = &v110 - v6;
  v7 = sub_1D917734C();
  v130 = *(v7 - 8);
  v131 = v7;
  v8 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v123 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v119 = &v110 - v11;
  v12 = *(v2 + 88);
  v13 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v113 = AssociatedTypeWitness;
  v115 = sub_1D91777CC();
  v114 = *(v115 - 8);
  v15 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v110 - v16;
  v127 = *(v13 - 8);
  v17 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v111 = &v110 - v19;
  v20 = sub_1D91791BC();
  v125 = *(v20 - 8);
  v126 = v20;
  v21 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v117 = &v110 - v24;
  v25 = sub_1D9176E3C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v124 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v132 = &v110 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v110 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v110 - v35;
  v135 = qword_1EDCD0898;
  [*&v1[qword_1EDCD0898] invalidate];
  sub_1D9176E2C();
  v37 = swift_allocObject();
  v134 = v1;
  swift_weakInit();
  v38 = v133;
  (*(v26 + 16))(v32, v133, v25);
  v39 = (*(v26 + 80) + 40) & ~*(v26 + 80);
  v40 = swift_allocObject();
  v128 = v13;
  *(v40 + 2) = v13;
  *(v40 + 3) = v12;
  v116 = v12;
  *(v40 + 4) = v37;
  (*(v26 + 32))(&v40[v39], v32, v25);

  v41 = sub_1D8F44D00(v38, v36, 0, sub_1D8F44C10, v40);
  if (v41)
  {
    v42 = [objc_opt_self() currentRunLoop];
    [v42 addTimer:v41 forMode:*MEMORY[0x1E695DA28]];

    v43 = v41;
  }

  else
  {

    v43 = 0;
  }

  v44 = *(v26 + 8);
  v44(v36, v25);

  v45 = v134;
  v46 = *&v134[v135];
  *&v134[v135] = v41;
  v47 = v43;

  if (!v41)
  {
    v55 = *(*v45 + 120);
    swift_beginAccess();
    v57 = v125;
    v56 = v126;
    v58 = v121;
    (*(v125 + 16))(v121, &v45[v55], v126);
    v60 = v127;
    v59 = v128;
    if ((*(v127 + 48))(v58, 1, v128))
    {
      (*(v57 + 8))(v58, v56);
    }

    else
    {
      v89 = v111;
      (*(v60 + 16))(v111, v58, v59);
      (*(v57 + 8))(v58, v56);
      v90 = v112;
      (*(*(v113 - 8) + 56))(v112, 1, 1);
      sub_1D917778C();
      (*(v114 + 8))(v90, v115);
      (*(v60 + 8))(v89, v59);
    }

    v91 = v129;
    v92 = v122;
    v80 = v123;
    if (qword_1EDCD11B8 != -1)
    {
      swift_once();
    }

    v93 = sub_1D917739C();
    __swift_project_value_buffer(v93, qword_1EDCD11C0);
    v94 = *&v45[qword_1EDCD08A0];

    v95 = sub_1D917737C();
    sub_1D91773DC();
    v96 = sub_1D9178F4C();
    if (sub_1D917918C())
    {

      sub_1D917740C();

      v97 = v120;
      if ((*(v91 + 88))(v92, v120) == *MEMORY[0x1E69E93E8])
      {
        v98 = "[Error] Interval already ended";
      }

      else
      {
        (*(v91 + 8))(v92, v97);
        v98 = "";
      }

      v106 = swift_slowAlloc();
      *v106 = 0;
      v107 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v95, v96, v107, "SynchronizedEventSubscription", v98, v106, 2u);
      MEMORY[0x1DA72CB90](v106, -1, -1);
    }

    goto LABEL_32;
  }

  v48 = [v47 fireDate];
  v49 = v132;
  sub_1D9176DFC();

  sub_1D9176CCC();
  v51 = v50;
  v44(v49, v25);
  v52 = v124;
  sub_1D9176E2C();
  sub_1D9176CCC();
  v54 = v53;
  v44(v52, v25);
  if (v51 > v54)
  {

    return;
  }

  if (qword_1EDCD1028 != -1)
  {
    swift_once();
  }

  v61 = sub_1D917744C();
  __swift_project_value_buffer(v61, qword_1EDCD1030);
  v62 = v47;
  v63 = sub_1D917741C();
  v64 = sub_1D9178CFC();

  v65 = os_log_type_enabled(v63, v64);
  v133 = v62;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v136[0] = v124;
    *v66 = 136315394;
    v67 = [v62 fireDate];
    LODWORD(v123) = v64;
    v68 = v67;
    v69 = v132;
    sub_1D9176DFC();

    sub_1D8F45634();
    v70 = sub_1D9179A4C();
    v72 = v71;
    v44(v69, v25);
    v73 = sub_1D8CFA924(v70, v72, v136);

    *(v66 + 4) = v73;
    *(v66 + 12) = 2080;
    sub_1D9176E2C();
    v74 = sub_1D9179A4C();
    v76 = v75;
    v44(v69, v25);
    v77 = sub_1D8CFA924(v74, v76, v136);

    *(v66 + 14) = v77;
    v62 = v133;
    _os_log_impl(&dword_1D8CEC000, v63, v123, "Scheduled a timer with a fire date (%s in the past! Current date: %s", v66, 0x16u);
    v78 = v124;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v78, -1, -1);
    MEMORY[0x1DA72CB90](v66, -1, -1);
  }

  v79 = v129;
  v80 = v119;
  v81 = v118;
  [v62 invalidate];
  v82 = *&v45[v135];
  *&v45[v135] = 0;

  v83 = *(*v45 + 120);
  swift_beginAccess();
  v85 = v125;
  v84 = v126;
  v86 = v117;
  (*(v125 + 16))(v117, &v45[v83], v126);
  v88 = v127;
  v87 = v128;
  if ((*(v127 + 48))(v86, 1, v128))
  {
    (*(v85 + 8))(v86, v84);
  }

  else
  {
    v99 = v111;
    (*(v88 + 16))(v111, v86, v87);
    (*(v85 + 8))(v86, v84);
    v100 = v112;
    (*(*(v113 - 8) + 56))(v112, 1, 1);
    sub_1D917778C();
    (*(v114 + 8))(v100, v115);
    (*(v88 + 8))(v99, v87);
  }

  if (qword_1EDCD11B8 != -1)
  {
    swift_once();
  }

  v101 = sub_1D917739C();
  __swift_project_value_buffer(v101, qword_1EDCD11C0);
  v102 = *&v45[qword_1EDCD08A0];

  v95 = sub_1D917737C();
  sub_1D91773DC();
  v103 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    v104 = v120;
    if ((*(v79 + 88))(v81, v120) == *MEMORY[0x1E69E93E8])
    {
      v105 = "[Error] Interval already ended";
    }

    else
    {
      (*(v79 + 8))(v81, v104);
      v105 = "";
    }

    v108 = swift_slowAlloc();
    *v108 = 0;
    v109 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v95, v103, v109, "SynchronizedEventSubscription", v105, v108, 2u);
    MEMORY[0x1DA72CB90](v108, -1, -1);

LABEL_32:

    goto LABEL_33;
  }

LABEL_33:
  (*(v130 + 8))(v80, v131);
}

uint64_t sub_1D8F44638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v26 = a1;
  v7 = sub_1D9176E3C();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D91791BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v30 = a3;
    v23 = *(*Strong + 120);
    swift_beginAccess();
    (*(v17 + 16))(v20, v22 + v23, v16);

    if ((*(v11 + 48))(v20, 1, a4))
    {
      (*(v17 + 8))(v20, v16);
    }

    else
    {
      (*(v11 + 16))(v15, v20, a4);
      (*(v17 + 8))(v20, v16);
      v24 = [v26 fireDate];
      sub_1D9176DFC();

      sub_1D91777AC();
      (*(v27 + 8))(v10, v28);
      (*(v11 + 8))(v15, a4);
    }

    a3 = v30;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8F4379C(a3);
  }

  return result;
}

uint64_t *sub_1D8F4497C()
{
  v1 = *v0;
  v2 = qword_1EDCD08A8;
  v3 = sub_1D917734C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_1EDCD08A0);

  v5 = *(*v0 + 120);
  v6 = *(v1 + 80);
  v7 = sub_1D91791BC();
  (*(*(v7 - 8) + 8))(v0 + v5, v7);
  return v0;
}

uint64_t sub_1D8F44A68()
{
  v0 = *sub_1D8F4497C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s26SynchronizedEventPublisherVMa()
{
  result = qword_1EDCD0908;
  if (!qword_1EDCD0908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8F44B48()
{
  result = sub_1D9176E3C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8F44C10(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_1D9176E3C() - 8);
  v6 = v1[4];
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1D8F44638(a1, v6, v7, v3, v4);
}

void sub_1D8F44C98(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1D8F44D00(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v93 = a5;
  v92 = a4;
  LODWORD(v94) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v86 - v9;
  v11 = sub_1D917701C();
  v100 = *(v11 - 8);
  v101 = v11;
  v12 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9176FDC();
  v95 = *(v14 - 8);
  v96 = v14;
  v15 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D91768DC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v86 - v23;
  v24 = sub_1D9176E3C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v86 - v29;
  sub_1D9176CCC();
  v32 = v31;
  v99 = a1;
  sub_1D9176CCC();
  v33 = v24;
  v35 = v34;
  v106 = v25;
  v36 = *(v25 + 16);
  v102 = a2;
  v36(v30, a2, v24);
  v37 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v38.n128_f64[0] = v32 - v35;
  v90 = v10;
  v104 = v19;
  v105 = v18;
  if (v32 - v35 >= 60.0)
  {
    if (v38.n128_f64[0] >= 3600.0)
    {
      if (v38.n128_f64[0] >= 86400.0)
      {
        if (v38.n128_f64[0] >= 604800.0)
        {
          v85 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
          [v37 inSameYearAs_];

          (*(v106 + 8))(v30, v33);
          return 0;
        }

        v39 = 3;
      }

      else
      {
        v39 = 2;
      }
    }

    else
    {
      v39 = 1;
    }

    v91 = v39;
  }

  else
  {
    v91 = 0;
  }

  v40 = *(v106 + 8);
  v89 = v33;
  v87 = v40;
  (v40)(v30, v33, v38);

  aBlock[4] = v92;
  aBlock[5] = v93;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8F44C98;
  aBlock[3] = &block_descriptor_37;
  v41 = _Block_copy(aBlock);
  v42 = objc_opt_self();

  v94 = [v42 timerWithTimeInterval:v94 & 1 repeats:v41 block:1.0];
  _Block_release(v41);

  sub_1D9176F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB72F0, qword_1D9196C50);
  v43 = sub_1D9176FBC();
  v44 = *(v43 - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1D9189060;
  v48 = v47 + v46;
  v49 = *(v44 + 104);
  v49(v48, *MEMORY[0x1E6969A98], v43);
  v49(v48 + v45, *MEMORY[0x1E6969A88], v43);
  v49(v48 + 2 * v45, *MEMORY[0x1E6969A58], v43);
  sub_1D8FB208C(v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v50 = v103;
  sub_1D9176F6C();

  v51 = v96;
  v52 = *(v95 + 8);
  v52(v17, v96);
  sub_1D9176F7C();
  v53 = v97;
  sub_1D917700C();
  v54 = v98;
  sub_1D9176F4C();
  (*(v100 + 8))(v53, v101);
  v52(v17, v51);
  if (v91 >= 2)
  {
    if (v91 != 2)
    {

      v71 = v105;
      v72 = *(v104 + 8);
      v72(v54, v105);
      v72(v50, v71);
      return 0;
    }

    v63 = sub_1D917689C();
    if (v64)
    {
      v65 = 0;
    }

    else
    {
      v65 = v63;
    }

    v66 = sub_1D917689C();
    v62 = v104;
    v61 = v105;
    if (v67)
    {
      v59 = v90;
      if (v65 < 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v59 = v90;
      if (v65 < v66)
      {
        goto LABEL_37;
      }
    }

    v74 = sub_1D917687C();
    if (v75)
    {
      v76 = 0;
    }

    else
    {
      v76 = v74;
    }

    result = (v76 + 1);
    if (__OFADD__(v76, 1))
    {
      goto LABEL_44;
    }

    sub_1D917688C();
LABEL_37:
    sub_1D917689C();
LABEL_38:
    sub_1D91768AC();
    goto LABEL_39;
  }

  v55 = sub_1D917689C();
  if (v56)
  {
    v57 = 0;
  }

  else
  {
    v57 = v55;
  }

  v58 = sub_1D917689C();
  v59 = v90;
  if ((v60 & 1) == 0)
  {
    v62 = v104;
    v61 = v105;
    if (v57 < v58)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v62 = v104;
  v61 = v105;
  if ((v57 & 0x8000000000000000) == 0)
  {
LABEL_26:
    v68 = sub_1D917689C();
    if (v69)
    {
      v70 = 0;
    }

    else
    {
      v70 = v68;
    }

    result = (v70 + 1);
    if (!__OFADD__(v70, 1))
    {
      goto LABEL_38;
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

LABEL_39:
  sub_1D91768BC();
  sub_1D91768CC();
  sub_1D917686C();
  v77 = v106;
  v78 = v89;
  if ((*(v106 + 48))(v59, 1, v89) == 1)
  {
    v79 = *(v62 + 8);
    v79(v54, v61);
    v79(v50, v61);
    sub_1D8CF5EF8(v59);
    return v94;
  }

  else
  {
    v80 = v88;
    (*(v77 + 32))(v88, v59, v78);
    v81 = v78;
    v82 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v83 = v94;
    [v94 setFireDate_];

    v87(v80, v81);
    v84 = *(v62 + 8);
    v84(v54, v61);
    v84(v50, v61);
    return v83;
  }
}

unint64_t sub_1D8F45634()
{
  result = qword_1EDCD5930;
  if (!qword_1EDCD5930)
  {
    sub_1D9176E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5930);
  }

  return result;
}

CGImageRef_optional __swiftcall URL.cgImage()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB4A70, &qword_1D918B320);
  inited = swift_initStackObject();
  v1 = *MEMORY[0x1E696E0A0];
  *(inited + 32) = *MEMORY[0x1E696E0A0];
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  v2 = v1;
  sub_1D8DAE1A4(inited);
  swift_setDeallocating();
  sub_1D8F45FBC(inited + 32);
  v3 = sub_1D9176B1C();
  type metadata accessor for CFString(0);
  sub_1D8F46070(&qword_1EDCD5BB0, type metadata accessor for CFString);
  v4 = sub_1D917802C();
  v5 = CGImageSourceCreateWithURL(v3, v4);

  if (v5)
  {
    if (CGImageSourceGetCount(v5) >= 1)
    {
      v6 = sub_1D917802C();

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, v6);

      return ImageAtIndex;
    }

    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1EDCD5E28);
    v10 = sub_1D917741C();
    v11 = sub_1D9178D0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "Unexpectedly found no indexs in CGImageSource from artwork URL.", v12, 2u);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }
  }

  else
  {
  }

  return 0;
}

void sub_1D8F458E8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D8F46024();
    sub_1D8F46070(&qword_1ECAB72F8, sub_1D8F46024);
    sub_1D9178B3C();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v26 = v17;
        v18 = a1(&v26);

        if (v4)
        {
          break;
        }

        v5 = v20;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_1D917938C())
        {
          break;
        }

        sub_1D8F46024();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
      }

      while (v26);
    }

LABEL_20:
    sub_1D8D1B144();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t URL.fileSize()@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D917697C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AB8, &qword_1D9194688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  v9 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v10 = v9;
  sub_1D8DB9EE8(inited);
  swift_setDeallocating();
  sub_1D8DBA0E0(inited + 32);
  sub_1D9176ADC();

  if (!v1)
  {
    v12 = sub_1D917696C();
    if (v13)
    {
      type metadata accessor for FileError();
      sub_1D8F46070(&qword_1ECAB5920, type metadata accessor for FileError);
      swift_allocError();
      v15 = v14;
      v16 = sub_1D9176C2C();
      (*(*(v16 - 8) + 56))(v15, 1, 2, v16);
      swift_willThrow();
      return (*(v4 + 8))(v7, v3);
    }

    else
    {
      v17 = v12;
      result = (*(v4 + 8))(v7, v3);
      if (v17 < 0)
      {
        __break(1u);
      }

      else
      {
        *a1 = v17;
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall URL.isRemoteAddress()()
{
  sub_1D9176BEC();
  if (!v0)
  {
    return 0;
  }

  v1 = sub_1D917839C();

  if (v1)
  {
    goto LABEL_8;
  }

  v2 = sub_1D917839C();

  if (v2)
  {
    goto LABEL_8;
  }

  v3 = sub_1D917839C();

  if (v3)
  {
    goto LABEL_8;
  }

  v4 = sub_1D917839C();

  if (v4 & 1) != 0 || (, v5 = sub_1D917839C(), , (v5) || (, v6 = sub_1D917839C(), , (v6))
  {
LABEL_8:
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  swift_arrayDestroy();
  return v7;
}

Swift::Bool __swiftcall URL.isMediaLibraryURL()()
{
  v0 = sub_1D9176BEC();
  if (v1)
  {
    if (v0 == 0x62696C2D646F7069 && v1 == 0xEC00000079726172)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1D9179ACC();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1D8F45FBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43B0, &qword_1D9188F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8F46024()
{
  result = qword_1EDCD0790;
  if (!qword_1EDCD0790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD0790);
  }

  return result;
}

uint64_t sub_1D8F46070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OSSignposter.makeSignpostID(hash:)(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1D917737C();

    return sub_1D917731C();
  }

  else
  {

    return MEMORY[0x1EEE6E8A8]();
  }
}

uint64_t GroupedContentIDs.adamIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t GroupedContentIDs.managedObjectIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t GroupedContentIDs.uuids.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t GroupedContentIDs.localIDs.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v23 = MEMORY[0x1E69E7CC0];
    result = sub_1D8E358F8(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v22 = a3;
      v8 = 0;
      v6 = v23;
      a3 = 1;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v9 = sub_1D8F46B74(v8, a2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            v5 = sub_1D917935C();
            goto LABEL_3;
          }

          if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(a2 + 8 * v8 + 32);
        }

        v24 = v6;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          v13 = v9;
          sub_1D8E358F8(v10 > 1, v11 + 1, 1);
          v9 = v13;
          v6 = v24;
        }

        ++v8;
        *(v6 + 16) = v11 + 1;
        v12 = v6 + 24 * v11;
        *(v12 + 32) = v9;
        *(v12 + 40) = 0;
        *(v12 + 48) = 1;
        if (v5 == v8)
        {
          a3 = v22;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v14 = *(a3 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v25 = MEMORY[0x1E69E7CC0];
      sub_1D8E358F8(0, v14, 0);
      v15 = v25;
      v16 = (a3 + 40);
      do
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        v20 = *(v25 + 16);
        v19 = *(v25 + 24);

        if (v20 >= v19 >> 1)
        {
          sub_1D8E358F8(v19 > 1, v20 + 1, 1);
        }

        *(v25 + 16) = v20 + 1;
        v21 = v25 + 24 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v17;
        *(v21 + 48) = 2;
        v16 += 2;
        --v14;
      }

      while (v14);
    }

    sub_1D8E2FF24(v15);
    return v6;
  }

  return result;
}

id sub_1D8F4644C(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v6 = Array<A>.group()(a1);
  v7 = v5;
  v9 = v8;
  v32 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    v10 = sub_1D917935C();
  }

  else
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    v13 = *(v6 + 2);
    if (!v13)
    {
      goto LABEL_7;
    }

LABEL_12:
    v31 = a3;
    sub_1D91795CC();
    v18 = (v6 + 32);
    do
    {
      v19 = *v18++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      sub_1D917959C();
      v20 = *(v11 + 16);
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      --v13;
    }

    while (v13);
    v21 = *a2;
    v22 = objc_opt_self();
    sub_1D8FC0EF8(v11);

    sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
    sub_1D8F46DF8();
    v23 = sub_1D9178A8C();

    v24 = [v22 *v31];

    MEMORY[0x1DA729B90]();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v30 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D917863C();
    }

    sub_1D917869C();
    if (*(v9 + 16))
    {
      goto LABEL_8;
    }

LABEL_17:

    goto LABEL_18;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9189080;
  *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E8, qword_1D91BE010);
  *(v12 + 64) = sub_1D8F3D318();
  *(v12 + 32) = v7;

  sub_1D9178C8C();
  MEMORY[0x1DA729B90]();
  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v28 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D917863C();
  }

  sub_1D917869C();
  v13 = *(v6 + 2);
  if (v13)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (!*(v9 + 16))
  {
    goto LABEL_17;
  }

LABEL_8:
  v14 = objc_opt_self();

  sub_1D8FC0F28(v15);

  swift_bridgeObjectRelease_n();
  v16 = sub_1D9178A8C();

  v17 = [v14 predicateForEpisodeUuids_];

  MEMORY[0x1DA729B90]();
  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v29 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D917863C();
  }

  sub_1D917869C();
LABEL_18:
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v25 = sub_1D91785DC();

  v26 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v26;
}

id Array<A>.playlistPredicate()(uint64_t a1)
{
  Array<A>.group()(a1);
  v2 = v1;
  v4 = v3;
  v15 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    if (sub_1D917935C())
    {
LABEL_3:
      sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1D9189080;
      *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E8, qword_1D91BE010);
      *(v5 + 64) = sub_1D8F3D318();
      *(v5 + 32) = v2;

      sub_1D9178C8C();
      MEMORY[0x1DA729B90]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D917863C();
      }

      sub_1D917869C();
      if (*(v4 + 16))
      {
        goto LABEL_6;
      }

LABEL_11:

      goto LABEL_12;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = objc_opt_self();

  sub_1D8FC0F28(v7);

  swift_bridgeObjectRelease_n();
  v8 = sub_1D9178A8C();

  v9 = [v6 predicateForStationsWithUUIDs_];

  MEMORY[0x1DA729B90]();
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v14 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D917863C();
  }

  sub_1D917869C();
LABEL_12:
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v10 = sub_1D91785DC();

  v11 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v11;
}

uint64_t sub_1D8F46B74(unint64_t a1, unint64_t a2)
{
  sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  if (a2 >> 62)
  {
    v4 = sub_1D917976C();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_1D917946C();
    v6 = 0xD000000000000046;
    v5 = 0x80000001D91CDB40;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_1D917946C();
  v5 = 0x80000001D91CDAF0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x1DA7298F0](v6, v5);
  v8 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v8);

  MEMORY[0x1DA7298F0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v9);

  result = sub_1D91796EC();
  __break(1u);
  return result;
}

uint64_t _s18PodcastsFoundation17GroupedContentIDsV2eeoiySbAC_ACtFZ_0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v9 = result == a4;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_10:
    if (sub_1D8E83A54(a2, a5))
    {

      return sub_1D8E83CA4(a3, a6);
    }

    return 0;
  }

  v10 = (result + 32);
  v11 = (a4 + 32);
  while (v6)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8F46DF8()
{
  result = qword_1EDCD0808;
  if (!qword_1EDCD0808)
  {
    sub_1D8CF2154(255, qword_1EDCD0810, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD0808);
  }

  return result;
}

uint64_t Array.safelyRemoveFirst()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v2;
  swift_getWitnessTable();
  if (sub_1D9178BEC())
  {
    v5 = 1;
  }

  else
  {
    swift_getWitnessTable();
    sub_1D9178C0C();
    v5 = 0;
  }

  return (*(*(*(a1 + 16) - 8) + 56))(a2, v5, 1);
}

uint64_t AsyncSequence.first()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8F46F74, 0, 0);
}

uint64_t sub_1D8F46F74()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x1E69E8740] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1D8F47040;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return MEMORY[0x1EEE6DB20](v6, &unk_1D9196DB8, v1, v7, v4);
}

uint64_t sub_1D8F47040()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8F4717C, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D8F4717C()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1D8F471FC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D8E24548;

  return sub_1D8F471E0();
}

uint64_t Array<A>.onReceive(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8F472CC, 0, 0);
}

uint64_t sub_1D8F472CC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = *(MEMORY[0x1E69E88A0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1D8F473C0;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1D8F473C0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1D8F474DC;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1D8F471E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D8F474DC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2(0);
}

uint64_t sub_1D8F47544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v10 = *(a6 - 8);
  v7[18] = v10;
  v7[19] = *(v10 + 64);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8F4765C, 0, 0);
}

uint64_t sub_1D8F4765C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  if (sub_1D91786AC())
  {
    v3 = 0;
    v37 = *(v0 + 144);
    v4 = v37;
    v36 = **(v0 + 80);
    v35 = *(v0 + 152);
    do
    {
      v9 = *(v0 + 112);
      v10 = *(v0 + 88);
      v11 = sub_1D917868C();
      sub_1D917862C();
      if (v11)
      {
        (*(v4 + 16))(*(v0 + 168), *(v0 + 88) + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, *(v0 + 112));
        v12 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v28 = *(v0 + 112);
        v29 = *(v0 + 88);
        result = sub_1D91794BC();
        if (v35 != 8)
        {
          __break(1u);
          return result;
        }

        v31 = *(v0 + 168);
        v32 = *(v0 + 112);
        *(v0 + 72) = result;
        (*(v37 + 16))(v31, v0 + 72, v32);
        swift_unknownObjectRelease();
        v12 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      v43 = v12;
      v44 = v3;
      v14 = *(v0 + 160);
      v13 = *(v0 + 168);
      v15 = *(v0 + 136);
      v38 = v14;
      v39 = v15;
      v41 = *(v0 + 104);
      v42 = *(v0 + 128);
      v40 = *(v0 + 96);
      v16 = sub_1D917886C();
      v17 = *(v16 - 8);
      v45 = *(v0 + 112);
      (*(v17 + 56))(v15, 1, 1, v16);
      v18 = *(v4 + 32);
      v18(v14, v13, v45);
      v19 = (*(v4 + 80) + 48) & ~*(v4 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      v21 = (v20 + 16);
      *(v20 + 24) = 0;
      *(v20 + 32) = v45;
      v18(v20 + v19, v38, v45);
      v22 = (v20 + ((v35 + 7 + v19) & 0xFFFFFFFFFFFFFFF8));
      *v22 = v40;
      v22[1] = v41;
      sub_1D8CF5C74(v39, v42);
      LODWORD(v19) = (*(v17 + 48))(v42, 1, v16);

      v23 = *(v0 + 128);
      if (v19 == 1)
      {
        sub_1D8CF5CE4(*(v0 + 128));
        if (!*v21)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1D917885C();
        (*(v17 + 8))(v23, v16);
        if (!*v21)
        {
LABEL_11:
          v25 = 0;
          v27 = 0;
          goto LABEL_12;
        }
      }

      v24 = *(v20 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v25 = sub_1D917874C();
      v27 = v26;
      swift_unknownObjectRelease();
LABEL_12:

      if (v27 | v25)
      {
        v5 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v25;
        *(v0 + 40) = v27;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v0 + 136);
      v7 = *(v0 + 112);
      v8 = *(v0 + 88);
      *(v0 + 48) = 1;
      *(v0 + 56) = v5;
      *(v0 + 64) = v36;
      swift_task_create();

      sub_1D8CF5CE4(v6);
      v3 = v44 + 1;
      v4 = v37;
    }

    while (v43 != sub_1D91786AC());
  }

  v33 = swift_task_alloc();
  *(v0 + 176) = v33;
  *v33 = v0;
  v33[1] = sub_1D8F47AC4;
  v34 = *(v0 + 80);

  return sub_1D8CF5A38(0, 0);
}

uint64_t sub_1D8F47AC4()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 136);
  v5 = *(*v0 + 128);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1D8F47C38(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D8D58924;

  return sub_1D8F47544(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_1D8F47D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[7] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[8] = v11;
  v12 = *(v11 + 64) + 15;
  v8[9] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v8[10] = v13;
  v14 = *(v13 - 8);
  v8[11] = v14;
  v15 = *(v14 + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v16 = *(*(sub_1D91791BC() - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v17 = *(a7 - 8);
  v8[15] = v17;
  v18 = *(v17 + 64) + 15;
  v8[16] = swift_task_alloc();
  v19 = swift_getAssociatedTypeWitness();
  v8[17] = v19;
  v20 = *(v19 - 8);
  v8[18] = v20;
  v21 = *(v20 + 64) + 15;
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8F47F84, 0, 0);
}

uint64_t sub_1D8F47F84()
{
  v1 = v0[19];
  v2 = v0[6];
  (*(v0[15] + 16))(v0[16], v0[2], v0[5]);
  sub_1D91789FC();
  v3 = v0[17];
  v5 = v0[5];
  v4 = v0[6];
  v0[20] = swift_getAssociatedConformanceWitness();
  v6 = *(MEMORY[0x1E69E85B0] + 4);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_1D8F48098;
  v8 = v0[19];
  v9 = v0[17];
  v11 = v0[13];
  v10 = v0[14];

  return MEMORY[0x1EEE6D8D0](v10, 0, 0);
}

uint64_t sub_1D8F48098()
{
  v2 = *(*v1 + 168);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1D8F485B0;
  }

  else
  {
    v3 = sub_1D8F481A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8F481A8()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:
    v5 = v0[16];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[9];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v9 = v0[1];

    return v9();
  }

  (*(v3 + 32))(v0[9], v1, v2);
  if (sub_1D917894C())
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    v4 = v0[14];
    goto LABEL_4;
  }

  v15 = (v0[3] + *v0[3]);
  v11 = *(v0[3] + 4);
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v12[1] = sub_1D8F483B4;
  v13 = v0[9];
  v14 = v0[4];

  return v15(v13);
}

uint64_t sub_1D8F483B4()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1D8F48730;
  }

  else
  {
    v3 = sub_1D8F484C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8F484C8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[17];
  v3 = v0[5];
  v2 = v0[6];
  v0[20] = swift_getAssociatedConformanceWitness();
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1D8F48098;
  v6 = v0[19];
  v7 = v0[17];
  v9 = v0[13];
  v8 = v0[14];

  return MEMORY[0x1EEE6D8D0](v8, 0, 0);
}

uint64_t sub_1D8F485B0()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = *(v0[11] + 32);
  v3(v0[12], v0[13], v0[10]);
  swift_getAssociatedConformanceWitness();
  v4 = sub_1D9179A7C();
  v5 = v0[12];
  if (v4)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  else
  {
    v6 = v0[10];
    swift_allocError();
    v3(v7, v5, v6);
  }

  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v12 = v0[9];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D8F48730()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[23];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[9];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v7 = v0[1];

  return v7();
}

uint64_t AsyncSequence.onNext(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = swift_getAssociatedTypeWitness();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v13 = *(*(sub_1D91791BC() - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v14 = *(a3 - 8);
  v5[15] = v14;
  v15 = *(v14 + 64) + 15;
  v5[16] = swift_task_alloc();
  v16 = swift_getAssociatedTypeWitness();
  v5[17] = v16;
  v17 = *(v16 - 8);
  v5[18] = v17;
  v18 = *(v17 + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D43DF4, 0, 0);
}

uint64_t sub_1D8F48A84()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1D8F48E04;
  }

  else
  {
    v3 = sub_1D8F48B98;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8F48B98()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[17];
  v3 = v0[4];
  v2 = v0[5];
  v0[20] = swift_getAssociatedConformanceWitness();
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1D8D4CB14;
  v6 = v0[19];
  v7 = v0[17];
  v9 = v0[13];
  v8 = v0[14];

  return MEMORY[0x1EEE6D8D0](v8, 0, 0);
}

uint64_t sub_1D8F48C80()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = *(v0[11] + 32);
  v3(v0[12], v0[13], v0[10]);
  swift_getAssociatedConformanceWitness();
  v4 = sub_1D9179A7C();
  v5 = v0[12];
  if (v4)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  else
  {
    v6 = v0[10];
    swift_allocError();
    v3(v7, v5, v6);
  }

  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v12 = v0[9];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_1D8F48E04()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[23];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[9];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_1D8F48EEC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D8D5FF18;

  return sub_1D8F47D10(a1, v7, v8, v1 + v6, v10, v11, v4, v5);
}

uint64_t BinaryInteger.clamped(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 + 32) + 8);
  v10 = a1 + *(sub_1D91781AC() + 36);
  sub_1D9179CCC();
  sub_1D9179CBC();
  return (*(v4 + 8))(v7, a2);
}

uint64_t BinaryInteger.clamped(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 32) + 8);
  return sub_1D9179CBC();
}

{
  v3 = *(*(a3 + 32) + 8);
  return sub_1D9179CCC();
}

uint64_t static CaseIterable<>.cases(excluding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1D917947C();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = sub_1D9178B5C();
  v14 = a1;
  v11 = sub_1D91786FC();
  WitnessTable = swift_getWitnessTable();
  return MEMORY[0x1DA72A090](&v14, v10, a2, v11, a4, WitnessTable);
}

uint64_t sub_1D8F492B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v23 - v11;
  sub_1D8CF5C74(a1, v23 - v11);
  v13 = sub_1D917886C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D8CF5CE4(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_1D917874C();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D917885C();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t Collection<>.concurrentMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8F494B0, 0, 0);
}

uint64_t sub_1D8F494B0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v10 = *(v0 + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  *(v4 + 40) = v1;
  *(v4 + 48) = v5;
  v6 = sub_1D91786FC();
  v7 = *(MEMORY[0x1E69E88A0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_1D8F495F8;

  return MEMORY[0x1EEE6DD58](v0 + 16, TupleTypeMetadata2, v6, 0, 0, &unk_1D9196E00, v4, TupleTypeMetadata2);
}

uint64_t sub_1D8F495F8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1D8F49730;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1D8F49714;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D8F49730()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1D8F49794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v8[13] = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[14] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[15] = v10;
  v8[16] = *(v10 + 64);
  v8[17] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_getTupleTypeMetadata2();
  v12 = *(*(sub_1D91791BC() - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v13 = sub_1D91789DC();
  v8[22] = v13;
  v14 = *(v13 - 8);
  v8[23] = v14;
  v15 = *(v14 + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_getTupleTypeMetadata2();
  v16 = sub_1D91791BC();
  v8[26] = v16;
  v17 = *(v16 - 8);
  v8[27] = v17;
  v18 = *(v17 + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v19 = sub_1D917973C();
  v8[30] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v8[31] = swift_task_alloc();
  v21 = sub_1D917972C();
  v8[32] = v21;
  v22 = *(v21 - 8);
  v8[33] = v22;
  v23 = *(v22 + 64) + 15;
  v8[34] = swift_task_alloc();
  v24 = sub_1D91791BC();
  v8[35] = v24;
  v25 = *(v24 - 8);
  v8[36] = v25;
  v26 = *(v25 + 64) + 15;
  v8[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8F49B40, 0, 0);
}

uint64_t sub_1D8F49B40()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v55 = v0[34];
  v4 = v0[31];
  v53 = v0[30];
  v57 = v0[27];
  v5 = v0[25];
  v6 = v0[15];
  v7 = v0[12];
  v51 = v0[13];
  v8 = v0[10];
  v9 = v0[7];
  v10 = *(v0[11] - 8);
  v0[38] = v10;
  v12 = v10 + 56;
  v11 = *(v10 + 56);
  v0[39] = v11;
  v0[40] = v12 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v2, 1, 1);
  v13 = sub_1D9178B9C();
  v14 = sub_1D8F247DC(v2, v13, v3);
  (*(v1 + 8))(v2, v3);
  v0[2] = v14;
  MEMORY[0x1DA729A10](v8, v51);
  sub_1D917970C();
  v43 = v6;
  v44 = v5;
  v45 = v5 - 8;
  v46 = (v57 + 32);
  while (1)
  {
    v15 = v0[34];
    v16 = v0[32];
    v18 = v0[28];
    v17 = v0[29];
    v20 = v0[25];
    v19 = v0[26];
    sub_1D917971C();
    (*v46)(v17, v18, v19);
    if ((*(*v45 + 48))(v17, 1, v20) == 1)
    {
      break;
    }

    v21 = v0[29];
    v56 = v0[21];
    v22 = v0[18];
    v23 = v0[17];
    v48 = v0[16];
    v24 = v0[14];
    v52 = v0[12];
    v54 = v0[19];
    v25 = v0[9];
    v50 = v0[8];
    v58 = v0[6];
    v49 = *v21;
    v26 = *(v44 + 48);
    v27 = sub_1D917886C();
    v47 = *(v0 + 5);
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = *(v43 + 32);
    v28(v23, &v21[v26], v24);
    v29 = (*(v43 + 80) + 80) & ~*(v43 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *(v30 + 32) = v47;
    *(v30 + 48) = v52;
    *(v30 + 56) = v49;
    *(v30 + 64) = v50;
    *(v30 + 72) = v25;
    v28((v30 + v29), v23, v24);
    v31 = sub_1D91789EC();

    sub_1D8F492B4(v22, &unk_1D9196E30, v30, v31);
    sub_1D8CF5CE4(v22);
  }

  v32 = v0[24];
  v33 = v0[21];
  v34 = v0[19];
  v35 = v0[6];
  (*(v0[33] + 8))(v0[34], v0[32]);
  v36 = *v35;
  sub_1D917899C();
  v37 = *(MEMORY[0x1E69E8710] + 4);
  v38 = swift_task_alloc();
  v0[41] = v38;
  *v38 = v0;
  v38[1] = sub_1D8F49F3C;
  v39 = v0[24];
  v40 = v0[22];
  v41 = v0[20];

  return MEMORY[0x1EEE6DAD8](v41, 0, 0, v40, v0 + 3);
}

uint64_t sub_1D8F49F3C()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_1D8F4A394;
  }

  else
  {
    v5 = sub_1D8F4A058;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D8F4A058()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 336);
    v4 = *(v0 + 280);
    v28 = *(v0 + 296);
    v29 = *(v0 + 272);
    v30 = *(v0 + 248);
    v31 = *(v0 + 232);
    v32 = *(v0 + 224);
    v33 = *(v0 + 144);
    v34 = *(v0 + 136);
    v5 = *(v0 + 80);
    v6 = *(v0 + 40);
    v35 = *(v0 + 88);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    *(v0 + 32) = *(v0 + 16);
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = v35;
    sub_1D91786FC();

    swift_getWitnessTable();
    v8 = sub_1D917843C();
    swift_bridgeObjectRelease_n();

    *v6 = v8;

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    v13 = *(v0 + 296);
    v14 = *(v0 + 280);
    v15 = *(v0 + 288);
    v16 = *(v0 + 88);
    v17 = *v1;
    (*(*(v0 + 304) + 32))(v13, v1 + *(v2 + 48), v16);
    v12(v13, 0, 1, v16);
    v18 = sub_1D91786FC();
    sub_1D917865C();
    v19 = *(v0 + 16);
    sub_1D8F24788(v17, v19);
    (*(v15 + 40))(v19 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v17, v13, v14);
    nullsub_1(v18, v20, v21, v22);
    v23 = *(MEMORY[0x1E69E8710] + 4);
    v24 = swift_task_alloc();
    *(v0 + 328) = v24;
    *v24 = v0;
    v24[1] = sub_1D8F49F3C;
    v25 = *(v0 + 192);
    v26 = *(v0 + 176);
    v27 = *(v0 + 160);

    return MEMORY[0x1EEE6DAD8](v27, 0, 0, v26, v0 + 24);
  }
}

uint64_t sub_1D8F4A394()
{
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[20];
  v7 = v0[18];
  v11 = v0[17];
  (*(v0[23] + 8))(v0[24], v0[22]);
  v8 = v0[3];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D8F4A494(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D8D5FF18;

  return sub_1D8F49794(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_1D8F4A570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D8F4A5A0, 0, 0);
}

uint64_t sub_1D8F4A5A0()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(swift_getTupleTypeMetadata2() + 48);
  *v4 = v2;
  v11 = (v3 + *v3);
  v6 = v3[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1D8F4A6C8;
  v9 = v0[5];
  v8 = v0[6];

  return v11(&v4[v5], v8);
}

uint64_t sub_1D8F4A6C8()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t Collection<>.concurrentMap(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8F4A7E4, 0, 0);
}

uint64_t sub_1D8F4A7E4()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v3;

  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v6 = v0;
  v6[1] = sub_1D8F4A900;
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[4];

  return Collection<>.concurrentMap<A>(_:)(&unk_1D9196E18, v5, v11, AssociatedTypeWitness, v9);
}

uint64_t sub_1D8F4A900(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8F4AA58, 0, 0);
  }

  else
  {
    v7 = *(v4 + 56);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_1D8F4AA58()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1D8F4AABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8F4AAE4, 0, 0);
}

uint64_t sub_1D8F4AAE4()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(v0[7] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[8] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v0[9] = v7;
  (*(v7 + 16))(v4, v2, AssociatedTypeWitness);
  v13 = (v3 + *v3);
  v8 = v3[1];
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1D8F4AC50;
  v10 = v0[5];
  v11 = v0[2];

  return v13(v11);
}

uint64_t sub_1D8F4AC50()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8F4AD84, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1D8F4AD84()
{
  (*(v0[9] + 8))(v0[2], v0[8]);
  v1 = v0[1];
  v2 = v0[11];

  return v1();
}

uint64_t sub_1D8F4ADF8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D8D58924;

  return sub_1D8F4AABC(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_1D8F4AEC0(uint64_t a1)
{
  v3 = v1[4];
  v14 = v1[5];
  v4 = *(v1[6] + 8);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D8D5FF18;

  return sub_1D8F4A570(a1, v7, v8, v9, v10, v11, v1 + v6);
}

uint64_t Dictionary.init<A>(probablyUniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(&v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v16, v14);
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v17 = sub_1D91780EC();
  (*(v12 + 8))(a1, a4);
  return v17;
}

uint64_t Dictionary.mapKeys<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a1;
  v21 = a2;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a8;
  v13[7] = sub_1D8F4B2FC;
  v13[8] = &v14;
  v8 = sub_1D91780DC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1D8D175AC(sub_1D8F4B380, v13, v8, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  sub_1D91786FC();
  swift_getWitnessTable();
  return sub_1D917808C();
}

uint64_t sub_1D8F4B2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[3];
  v8 = v4[7];
  v9 = v4[8];
  v8(a3);
  v10 = *(*(v7 - 8) + 16);

  return v10(a2, a4, v7);
}

uint64_t sub_1D8F4B380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v9 = v2[7];
  v8 = v2[8];
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v9(a2, a2 + *(TupleTypeMetadata2 + 48), a1, a1 + v10);
}

uint64_t Dictionary.compactMapKeys<A>(_:)()
{
  sub_1D91780DC();
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_1D917843C();
  sub_1D91786FC();
  swift_getWitnessTable();
  return sub_1D917808C();
}

uint64_t sub_1D8F4B564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, double)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v24 = a2;
  v25 = a7;
  v26 = a8;
  v14 = sub_1D91791BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v23 - v18;
  a3(a1, v17);
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = v25;
  v32 = a9;
  v33 = v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1D8D349E4(sub_1D8F4B7E0, v27, MEMORY[0x1E69E73E0], TupleTypeMetadata2, v21, v26);
  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_1D8F4B708(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[7];
  v5 = v1[8];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v6(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1D8F4B778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB7300, &unk_1D91B9190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8F4B7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[7];
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return (*(*(v5 - 8) + 16))(a2 + v8, v7, v5);
}

uint64_t sub_1D8F4BA58(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8F4BAC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1D8F4BC08(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t FloatingPoint.clamped(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 + 24) + 8);
  v10 = a1 + *(sub_1D91781AC() + 36);
  sub_1D9179CCC();
  sub_1D9179CBC();
  return (*(v4 + 8))(v7, a2);
}

uint64_t FloatingPoint.clamped(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) + 8);
  return sub_1D9179CBC();
}

{
  v3 = *(*(a3 + 24) + 8);
  return sub_1D9179CCC();
}

uint64_t static OptionSet.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  (*(v7 + 16))(v10, a2, AssociatedTypeWitness, v12);
  sub_1D917929C();
  return (*(v7 + 8))(v14, AssociatedTypeWitness);
}

uint64_t static OptionSet.-= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  v5 = sub_1D91791BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1D91792AC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t Result.success.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v12 = v11;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v11 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v8, a1);
  }

  else
  {
    v14 = *(a1 + 16);
    (*(v11 + 32))(a2, v8, v10);
    return (*(v12 + 56))(a2, 0, 1, v14);
  }
}

uint64_t Result.failure.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a1 + 24);
  v11 = *(v10 - 8);
  v12 = v11;
  if (EnumCaseMultiPayload == 1)
  {
    v13 = *(a1 + 24);
    (*(v11 + 32))(a2, v8, v10);
    return (*(v12 + 56))(a2, 0, 1, v13);
  }

  else
  {
    (*(v11 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v8, a1);
  }
}

void *Result<>.init(success:error:)(char a1, void *a2)
{
  v4 = sub_1D917744C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    return 0;
  }

  else if (!a2)
  {
    v10 = v7;
    sub_1D917743C();
    v11 = sub_1D917741C();
    v12 = sub_1D9178D0C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D8CEC000, v11, v12, "A failed result was created without an error", v13, 2u);
      MEMORY[0x1DA72CB90](v13, -1, -1);
    }

    (*(v5 + 8))(v9, v10);
    sub_1D8F4C694();
    a2 = swift_allocError();
  }

  return a2;
}

unint64_t sub_1D8F4C694()
{
  result = qword_1ECAB7388;
  if (!qword_1ECAB7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7388);
  }

  return result;
}

BOOL Result<>.successAndError.getter(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1;
  }

  return (a2 & 1) == 0;
}

unint64_t sub_1D8F4C73C()
{
  result = qword_1ECAB7390;
  if (!qword_1ECAB7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7390);
  }

  return result;
}

uint64_t Sequence.staggered()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v18[0] = a2;
  v5 = sub_1D917966C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v10 + 16);
  v16(v15, v3, a1, v13);
  v18[1] = sub_1D91784DC();
  (v16)(v15, v3, a1);
  sub_1D91784EC();
  swift_getAssociatedTypeWitness();
  sub_1D91786FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D9179CDC();
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D8F4C9D8(uint64_t a1, void *a2)
{
  v2 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  swift_getAtKeyPath();
  (*(v3 + 16))(v6, v12, v2);
  sub_1D9178B4C();
  v13 = sub_1D9178B1C();
  v14 = *(v3 + 8);
  v14(v9, v2);
  v14(v12, v2);
  return v13 & 1;
}

uint64_t sub_1D8F4CB80(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  return sub_1D8F4C9D8(a1, *(v1 + 40)) & 1;
}

unint64_t sub_1D8F4CBA8(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v6 = a5 >> 1;
    if ((a5 >> 1) - a4 < result)
    {
      goto LABEL_7;
    }
  }

  v6 = a4 + result;
  if (!__OFADD__(a4, result))
  {
    if (v5 < v6)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_7:
    if (v6 >= a4)
    {
      if (v5 >= a4)
      {
        return a2;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::String __swiftcall String.removingPrefix(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = sub_1D917839C();

  if (v5)
  {
    v6 = sub_1D91782EC();
    v7 = sub_1D8F4CCC0(v6, v4, v3);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v4 = MEMORY[0x1DA729870](v7, v9, v11, v13);
    v3 = v14;
  }

  v15 = v4;
  v16 = v3;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

unint64_t sub_1D8F4CCC0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1D917830C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1D91783EC();
}

BOOL String.containsVisibleText.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D917662C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a1;
  v14[1] = a2;
  sub_1D91765FC();
  sub_1D8D447DC();
  v9 = sub_1D917920C();
  v11 = v10;
  (*(v5 + 8))(v8, v4);

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  return v12 != 0;
}

uint64_t String.init(playedOn:dateString:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9176FDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176FAC();
  v11 = sub_1D9176F3C();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    v13 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v14 = [v13 isLessThanWeekOld];

    if (v14)
    {
      if (qword_1EDCD5F00 == -1)
      {
        goto LABEL_9;
      }
    }

    else if (qword_1EDCD5F00 == -1)
    {
LABEL_9:
      sub_1D917693C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D9189080;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1D8D34978();
      *(v15 + 32) = a2;
      *(v15 + 40) = a3;
      v12 = sub_1D917823C();

      goto LABEL_10;
    }

    swift_once();
    goto LABEL_9;
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917693C();
LABEL_10:
  v16 = sub_1D9176E3C();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v12;
}

uint64_t String.capitalizedFirstLetter.getter(uint64_t a1, unint64_t a2)
{

  sub_1D8F4D338(1);

  sub_1D8E7F724();
  v4 = sub_1D917921C();

  sub_1D8F4CCC0(1uLL, a1, a2);

  sub_1D8F4D3D4();
  sub_1D917831C();

  return v4;
}

uint64_t sub_1D8F4D2A4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1D8F4D338(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D917830C();

    return sub_1D91783EC();
  }

  return result;
}

unint64_t sub_1D8F4D3D4()
{
  result = qword_1ECAB01D0;
  if (!qword_1ECAB01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB01D0);
  }

  return result;
}

uint64_t sub_1D8F4D428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29[-1] - v13;
  v30[0] = a4;
  v30[1] = a5;
  sub_1D8CF5C74(a3, &v29[-1] - v13);
  v15 = sub_1D917886C();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_1D8CF5CE4(v14);
  }

  else
  {
    sub_1D917885C();
    (*(v16 + 8))(v14, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_1D917874C();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = sub_1D917829C();
      v24 = *(v23 + 16);
      sub_1D8F4DD00(v23 + 32, v30, a6, v29);

      v25 = v29[0];
      sub_1D8CF5CE4(a3);

      return v25;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8CF5CE4(a3);
  v26 = swift_allocObject();
  v26[2] = a6;
  v26[3] = a4;
  v26[4] = a5;
  if (v22 | v20)
  {
    v29[1] = 0;
    v29[2] = 0;
    v29[3] = v20;
    v29[4] = v22;
  }

  return swift_task_create();
}

uint64_t sub_1D8F4D698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_1D8CF5C74(a3, &v26[-1] - v11);
  v13 = sub_1D917886C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D8CF5CE4(v12);
  }

  else
  {
    sub_1D917885C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D917874C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D917829C();
      v22 = *(v21 + 16);
      sub_1D8F4DDEC(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_1D8CF5CE4(a3);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8CF5CE4(a3);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D8F4D8DC()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_1D8F4D954()
{
  v1 = *(v0 + 232);
  *(v0 + 16) = v1;
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 216);
  v7 = v0;
  if (v5)
  {
    v7 = (v0 + 192);
    v8 = *(v0 + 192);
    v9 = *(v0 + 64);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    v10 = sub_1D917737C();
    sub_1D91773DC();
    v11 = sub_1D9178F4C();
    result = sub_1D917918C();
    if ((result & 1) == 0)
    {
      goto LABEL_10;
    }

    v13 = *(v0 + 72);
    if (*(v0 + 240))
    {
      if (v13 >> 32)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if ((*(v0 + 72) & 0xFFFFF800) == 0xD800)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v13 >> 16 > 0x10)
      {
        goto LABEL_31;
      }

      v13 = (v0 + 32);
    }

    else if (!v13)
    {
      __break(1u);
      goto LABEL_6;
    }

    v17 = (v0 + 152);
    v16 = *(v0 + 152);
    v18 = *(v0 + 216);
    v20 = *(v0 + 128);
    v19 = *(v0 + 136);

    sub_1D917740C();

    if ((*(v19 + 88))(v16, v20) == *MEMORY[0x1E69E93E8])
    {
LABEL_22:
      v26 = *v7;
      v21 = "[Error] Interval already ended";
LABEL_25:
      v27 = swift_slowAlloc();
      *v27 = 0;
      v44 = v26;
      v28 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v10, v11, v28, v13, v21, v27, 2u);
      MEMORY[0x1DA72CB90](v27, -1, -1);
      goto LABEL_26;
    }

    v21 = "CANCELLED";
LABEL_24:
    v26 = *v7;
    (*(*(v0 + 136) + 8))(*v17, *(v0 + 128));
    goto LABEL_25;
  }

LABEL_6:
  v14 = v7[23];
  v7 += 23;
  v15 = *(v7 - 15);
  v10 = sub_1D917737C();
  sub_1D91773DC();
  v11 = sub_1D9178F4C();
  result = sub_1D917918C();
  if (result)
  {
    v13 = *(v0 + 72);
    if ((*(v0 + 240) & 1) == 0)
    {
      if (!v13)
      {
        __break(1u);
        goto LABEL_10;
      }

      goto LABEL_21;
    }

    if (!(v13 >> 32))
    {
      if ((*(v0 + 72) & 0xFFFFF800) == 0xD800)
      {
LABEL_34:
        __break(1u);
        return result;
      }

      if (v13 >> 16 <= 0x10)
      {
        v13 = (v0 + 24);
LABEL_21:
        v17 = (v0 + 144);
        v22 = *(v0 + 144);
        v23 = *(v0 + 216);
        v24 = *(v0 + 128);
        v25 = *(v0 + 136);

        sub_1D917740C();

        if ((*(v25 + 88))(v22, v24) == *MEMORY[0x1E69E93E8])
        {
          goto LABEL_22;
        }

        v21 = "FAILURE";
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    goto LABEL_30;
  }

LABEL_10:
  v44 = *v7;
LABEL_26:
  v29 = v10;
  v30 = *(v0 + 232);
  v32 = *(v0 + 208);
  v31 = *(v0 + 216);
  v34 = *(v0 + 192);
  v33 = *(v0 + 200);
  v35 = *(v0 + 176);
  v36 = *(v0 + 184);
  v37 = *(v0 + 160);
  v38 = *(v0 + 168);
  v41 = *(v0 + 152);
  v42 = *(v0 + 144);
  v43 = *(v0 + 120);

  (*(v35 + 8))(v44, v38);
  swift_willThrow();

  v39 = *(v0 + 8);
  v40 = *(v0 + 232);

  return v39();
}

uint64_t sub_1D8F4DD00@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = v6;

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8F4DDEC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D8F4DEA8@<X0>(uint64_t (*a1)(_BYTE *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      sub_1D8D41388(*(a2 + 48) + 264 * (__clz(__rbit64(v10)) | (v14 << 6)), __src);
      memcpy(__dst, __src, sizeof(__dst));
      v15 = a1(__dst);
      if (v3)
      {
        sub_1D8D58578(__dst);
      }

      if (v15)
      {
        break;
      }

      v10 &= v10 - 1;
      result = sub_1D8D58578(__dst);
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    return memcpy(a3, __dst, 0x108uLL);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        *(a3 + 32) = 0;
        a3[14] = 0u;
        a3[15] = 0u;
        a3[12] = 0u;
        a3[13] = 0u;
        a3[10] = 0u;
        a3[11] = 0u;
        a3[8] = 0u;
        a3[9] = 0u;
        a3[6] = 0u;
        a3[7] = 0u;
        a3[4] = 0u;
        a3[5] = 0u;
        a3[2] = 0u;
        a3[3] = 0u;
        *a3 = 0u;
        a3[1] = 0u;
        return result;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D8F4E034(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA72AA90](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_1D8F4E1A8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v27 = a5;
  v28 = a1;
  v26 = a3(0);
  v29 = *(v26 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;
  v30 = a2;

  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_8:
      sub_1D8F51B70(*(v30 + 48) + *(v29 + 72) * (__clz(__rbit64(v17)) | (v21 << 6)), v13, a4);
      sub_1D8EDC968(v13, v10, a4);
      v22 = v28(v10);
      if (v5)
      {
        sub_1D8F51BD8(v10, a4);
      }

      if (v22)
      {
        break;
      }

      v17 &= v17 - 1;
      result = sub_1D8F51BD8(v10, a4);
      v20 = v21;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    v25 = v27;
    sub_1D8EDC968(v10, v27, a4);
    v24 = v25;
    v23 = 0;
    return (*(v29 + 56))(v24, v23, 1, v26);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        v23 = 1;
        v24 = v27;
        return (*(v29 + 56))(v24, v23, 1, v26);
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8F4E3F4(uint64_t (*a1)(unsigned int *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      v11 = v8;
      result = a1(&v11);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v10 = 0;
        return v7 | (v10 << 32);
      }

      if (!--v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
    v10 = 1;
    return v7 | (v10 << 32);
  }

  return result;
}

void URL.markAsPurgeable(urgency:)(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    sub_1D8F4E764();
  }

  else
  {
    sub_1D8F4E4E8(a1);
  }
}

void URL.isPodcastsPurgeable(with:)(int a1)
{
  sub_1D8F4EC88();
  if (!v1 && a1 < 0)
  {
    __break(1u);
  }
}

void sub_1D8F4E4E8(int a1)
{
  v3 = v1;
  v23[11] = *MEMORY[0x1E69E9840];
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF2154(0, &unk_1EDCD5B80, 0x1E696AC00);
  v10 = *(v6 + 16);
  v10(v9, v3, v5);
  v11 = sub_1D8EFA8D8(v9);
  if (!v2)
  {
    v12 = v11;
    v13 = [v11 fileDescriptor];
    if (a1 < 0)
    {
      __break(1u);
    }

    v23[0] = a1 | 0x10006u;
    v14 = ffsctl(v13, 0xC0084A44uLL, v23, 0);
    if (v14)
    {
      v15 = v14;
      sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D9189080;
      v17 = *MEMORY[0x1E696A998];
      *(inited + 32) = sub_1D917820C();
      *(inited + 40) = v18;
      *(inited + 72) = v5;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      v10(boxed_opaque_existential_0, v3, v5);
      v20 = sub_1D8E2696C(inited);
      swift_setDeallocating();
      sub_1D8F51B08(inited + 32);
      v24.value._rawValue = v20;
      NSError.init(fsctlCode:userInfo:)(v21, v15, v24);
      swift_willThrow();
    }

    [v12 closeFile];
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1D8F4E764()
{
  v2 = v0;
  v21[11] = *MEMORY[0x1E69E9840];
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF2154(0, &unk_1EDCD5B80, 0x1E696AC00);
  v8 = *(v4 + 16);
  v8(v7, v2, v3);
  v9 = sub_1D8EFA8D8(v7);
  if (!v1)
  {
    v10 = v9;
    v11 = [v9 fileDescriptor];
    v21[0] = 0;
    v12 = ffsctl(v11, 0xC0084A44uLL, v21, 0);
    if (v12)
    {
      v13 = v12;
      sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D9189080;
      v15 = *MEMORY[0x1E696A998];
      *(inited + 32) = sub_1D917820C();
      *(inited + 40) = v16;
      *(inited + 72) = v3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      v8(boxed_opaque_existential_0, v2, v3);
      v18 = sub_1D8E2696C(inited);
      swift_setDeallocating();
      sub_1D8F51B08(inited + 32);
      v22.value._rawValue = v18;
      NSError.init(fsctlCode:userInfo:)(v19, v13, v22);
      swift_willThrow();
    }

    [v10 closeFile];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __swiftcall NSError.init(fsctlCode:userInfo:)(NSError *__return_ptr retstr, Swift::Int32 fsctlCode, Swift::OpaquePointer_optional userInfo)
{
  v4 = 0xD00000000000001ALL;
  if (fsctlCode <= 19)
  {
    if (fsctlCode > 12)
    {
      if (fsctlCode == 13)
      {
        v5 = "slating the pathname.";
        v4 = 0xD00000000000003ELL;
        if (!userInfo.value._rawValue)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (fsctlCode == 14)
      {
        v5 = "o the file system";
        v4 = 0xD000000000000029;
        if (!userInfo.value._rawValue)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    else
    {
      if (fsctlCode == 2)
      {
        v5 = "a component of the path prefix";
        v4 = 0xD00000000000001DLL;
        if (!userInfo.value._rawValue)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (fsctlCode == 5)
      {
        v5 = "Request or data is invalid.";
        v4 = 0xD000000000000041;
        if (!userInfo.value._rawValue)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

LABEL_29:
    v5 = "ODAY";
    if (userInfo.value._rawValue)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (fsctlCode <= 61)
  {
    if (fsctlCode == 20)
    {
      v5 = "tal allowable length";
      v4 = 0xD000000000000031;
      if (!userInfo.value._rawValue)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    if (fsctlCode == 22)
    {
      v5 = "An unknown error occurred.";
      v4 = 0xD00000000000001BLL;
      if (!userInfo.value._rawValue)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (fsctlCode != 62)
  {
    if (fsctlCode == 63)
    {
      v5 = "The named file does not exist";
      v4 = 0xD000000000000074;
      if (!userInfo.value._rawValue)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v5 = "nts to an invalid address";
  v4 = 0xD000000000000045;
  if (!userInfo.value._rawValue)
  {
LABEL_27:
    sub_1D8E2696C(MEMORY[0x1E69E7CC0]);
  }

LABEL_28:
  v6 = *MEMORY[0x1E696A588];
  v7 = sub_1D917820C();
  v9 = v8;
  v16 = MEMORY[0x1E69E6158];
  *&v15 = v4;
  *(&v15 + 1) = v5 | 0x8000000000000000;
  sub_1D8D65618(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D8F50858(v14, v7, v9, isUniquelyReferenced_nonNull_native, sub_1D8D33C70, sub_1D8F86F90, sub_1D900C074, sub_1D90BA628);

  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = *MEMORY[0x1E696A798];
  v13 = sub_1D917802C();

  [v11 initWithDomain:v12 code:fsctlCode userInfo:v13];
}

void sub_1D8F4EC88()
{
  v2 = v0;
  v20[11] = *MEMORY[0x1E69E9840];
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = 65542;
  sub_1D8CF2154(0, &unk_1EDCD5B80, 0x1E696AC00);
  v8 = *(v4 + 16);
  v8(v7, v2, v3);
  v9 = sub_1D8EFA8D8(v7);
  if (!v1)
  {
    v10 = v9;
    v11 = ffsctl([v9 fileDescriptor], *"GJ\b@", v20, 0);
    if (v11)
    {
      v12 = v11;
      sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D9189080;
      v14 = *MEMORY[0x1E696A998];
      *(inited + 32) = sub_1D917820C();
      *(inited + 40) = v15;
      *(inited + 72) = v3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      v8(boxed_opaque_existential_0, v2, v3);
      v17 = sub_1D8E2696C(inited);
      swift_setDeallocating();
      sub_1D8F51B08(inited + 32);
      v21.value._rawValue = v17;
      NSError.init(fsctlCode:userInfo:)(v18, v12, v21);
      swift_willThrow();
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

BOOL URL.isPodcastsPurgeable(with:flags:)(_BOOL8 result, int a2)
{
  if (result & 0x80000000)
  {
    __break(1u);
  }

  else
  {
    return (a2 & 6) != 0 && result & a2;
  }

  return result;
}

void URL.podcastsPurgeableLevel()()
{
  sub_1D8F4EC88();
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v2);
    v4[2] = v0;
    v4[3] = v3;
    sub_1D8F4E3F4(sub_1D8F51A20, v4, &unk_1F545DFF0);
  }
}

uint64_t sub_1D8F4EF7C(uint64_t a1, _OWORD *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8F0671C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F81DEC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D9003700(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D8F0671C(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {
    sub_1D90B9BD8(v9, a2, a1, v20);
    return sub_1D8E3AA94(a2, &v24);
  }
}

void *sub_1D8F4F0AC(uint64_t a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8F06844(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D8F81FB4();
      goto LABEL_7;
    }

    sub_1D9003A40(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_1D8F06844(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D8D41388(a2, v23);
      return sub_1D90B9C30(v10, v23, a1, v16);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
}

id sub_1D8F4F1EC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D8F068B0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D8F82144();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D9003D04(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1D8F068B0(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1D8CF2154(0, &qword_1EDCD76D0, 0x1E696AEC0);
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  else
  {
    sub_1D8D1E2A0(v8, a2, a1, v19);

    return a2;
  }
}

void sub_1D8F4F334(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D8F06994(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D8F82428();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D9003F74(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1D8F06994(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for FairPlayAsset();
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  else
  {
    sub_1D8D1E2A0(v8, a2, a1, v19);

    v22 = a2;
  }
}

uint64_t sub_1D8F4F46C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8D33C70(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D8F8258C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D90041E4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D8D33C70(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1D8D41908(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1D8F4F634(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8D490F4(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D8F82724();
      goto LABEL_7;
    }

    sub_1D90044B4(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_1D8D490F4(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1D917653C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1D90B9CAC(v10, a2, a1, v16);
}

uint64_t sub_1D8F4F79C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D917653C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D8F069D8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + 8 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_1D8F8298C();
    goto LABEL_7;
  }

  sub_1D9004800(result, a3 & 1);
  v22 = *v4;
  result = sub_1D8F069D8(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D90B9D58(v15, v12, a1, v21);
}

uint64_t sub_1D8F4F938(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D490F4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F82BFC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D9004BC0(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D8D490F4(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1D8D1E2A0(v9, a2, a1, v20);
  }
}

uint64_t sub_1D8F4FA5C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D9176EAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D8D93AB0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1D8F82C10();
      goto LABEL_7;
    }

    sub_1D9004BD4(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1D8D93AB0(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1D8D940B8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

unint64_t sub_1D8F4FC28(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8F06AAC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D8F82E90();
      goto LABEL_7;
    }

    sub_1D9004FB0(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_1D8F06AAC(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D8EC8C5C(a2, v23);
      return sub_1D90B9E10(v10, v23, a1, v16);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
}

uint64_t sub_1D8F4FD68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTMLRequest();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D8F06B6C(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D8F83038();
      goto LABEL_7;
    }

    sub_1D90052B8(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_1D8F06B6C(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D8F51B70(a2, v11, type metadata accessor for TTMLRequest);
      return sub_1D90B9E70(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1D8F4FF0C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ShazamSignatureRequest();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D8F06B18(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D8F83074();
      goto LABEL_7;
    }

    sub_1D9005930(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_1D8F06B18(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D8F51B70(a2, v11, type metadata accessor for ShazamSignatureRequest);
      return sub_1D90B9E9C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1D8F50170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D8D33C70(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1D8F83318();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1D9005FD0(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1D8D33C70(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_1D90B9F74(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_1D8F50314(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8D490F4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for StoreFeedUpdater.Update(0);
      return sub_1D8F51AA0(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for StoreFeedUpdater.Update);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D8F83A44();
    goto LABEL_7;
  }

  sub_1D9006508(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1D8D490F4(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D90B9FC4(v10, a2, a1, v16);
}

uint64_t sub_1D8F50468(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8D490F4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for StoreFeedUpdater.Retry(0);
      return sub_1D8F51AA0(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for StoreFeedUpdater.Retry);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D8F83A94();
    goto LABEL_7;
  }

  sub_1D9006544(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1D8D490F4(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D90B9FF0(v10, a2, a1, v16);
}

unint64_t sub_1D8F505BC(uint64_t a1, __int16 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8F067D4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F83CFC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D900689C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D8F067D4(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1D90BA0C4(v9, a2, a1, v20);
  }
}

uint64_t sub_1D8F506E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D94734(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F83E6C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D9006FE0(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D8D94734(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1D90BA624(v9, a2, a1, v20);
  }
}

_OWORD *sub_1D8F50858(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void), void (*a7)(uint64_t, void), void (*a8)(uint64_t, uint64_t, uint64_t, _OWORD *, uint64_t))
{
  v12 = v8;
  v17 = *v8;
  v18 = a5(a2, a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 >= v23 && (a4 & 1) == 0)
    {
      v26 = v18;
      a6();
      v18 = v26;
      goto LABEL_8;
    }

    a7(v23, a4 & 1);
    v27 = *v12;
    v18 = a5(a2, a3);
    if ((v24 & 1) != (v28 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v29 = *v12;
  if (v24)
  {
    v30 = (*(v29 + 56) + 32 * v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);

    return sub_1D8D65618(a1, v30);
  }

  else
  {
    a8(v18, a2, a3, a1, v29);
  }
}

_OWORD *sub_1D8F509E8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8D6550C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D8F842F0();
      goto LABEL_7;
    }

    sub_1D90078EC(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1D8D6550C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D8D9A2A4(a2, v22);
      return sub_1D90BA1B8(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_1D8D65618(a1, v17);
}

uint64_t sub_1D8F50B34(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8F06EDC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D8F84638();
      goto LABEL_7;
    }

    sub_1D9007E60(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_1D8F06EDC(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1D9176E3C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1D90BA234(v10, a2, a1, v16);
}

uint64_t sub_1D8F50C9C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D490F4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F848A0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D90081E4(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D8D490F4(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1D8D1E2A0(v9, a2, a1, v20);
  }
}

unint64_t sub_1D8F50DC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8F06F60(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F84C94();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D9008474(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D8F06F60(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1D8D39254(v9, a2, a1, v20);
  }
}

unint64_t sub_1D8F50EE4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8F06F8C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D8F84F78();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D9008C8C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D8F06F8C(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {

    return sub_1D90BA2E0(v11, a3, a1, a2, v22);
  }
}

unint64_t sub_1D8F5101C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8F06F8C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D8F850E4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D900912C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1D8F06F8C(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {

    return sub_1D90BA2E0(v11, a3, a1, a2, v22);
  }
}

uint64_t sub_1D8F51154(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D8F0712C(a2, a3, a4 & 1);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1D8F8566C();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1D9009D7C(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1D8F0712C(a2, a3, a4 & 1);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v13);
    *(v25 + 8 * v13) = a1;
  }

  else
  {
    sub_1D90BA328(v13, a2, a3, a4 & 1, a1, v24);

    return sub_1D8DB5EC8(a2, a3, a4 & 1);
  }
}

uint64_t sub_1D8F512B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D1AC44(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F857E8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D900A06C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D8D1AC44(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1D8D1E2A0(v9, a2, a1, v20);
  }
}

id sub_1D8F513D8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D8D698BC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D8F85984();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D900A080(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1D8D698BC(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  else
  {
    sub_1D8D39254(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_1D8F51520(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D8D1AC44(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1D8F85C98();
      result = v17;
      goto LABEL_8;
    }

    sub_1D900A760(v14, a3 & 1);
    v18 = *v4;
    result = sub_1D8D1AC44(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(v20[7] + result) = a1;
  }

  else
  {

    return sub_1D8D69CB0(result, a2, a1, v20);
  }

  return result;
}

uint64_t sub_1D8F5162C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8D1AC44(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for EpisodePlayState();
      return sub_1D8F51AA0(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for EpisodePlayState);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D8F86124();
    goto LABEL_7;
  }

  sub_1D900A9E0(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1D8D1AC44(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D90BA37C(v10, a2, a1, v16);
}

unint64_t sub_1D8F51780(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8F0726C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F86728();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D900B398(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D8F0726C(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1D90BA108(v9, a2, a1, v20);
  }
}

uint64_t sub_1D8F518A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1D8D33C70(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_1D8F86884();
      v17 = v25;
      goto LABEL_8;
    }

    sub_1D900B648(v22, a7 & 1);
    v26 = *v8;
    v17 = sub_1D8D33C70(a5, a6);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 32 * v17);
    v30 = v29[1];
    v31 = v29[3];
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;
  }

  else
  {
    sub_1D90BA424(v17, a5, a6, a1, a2, a3, a4, v28);
  }
}

_DWORD *sub_1D8F51A20(_DWORD *result)
{
  v2 = *result;
  if ((v2 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result;
    if ((*(v1 + 24) & v2) != 0)
    {
      return ((*(v1 + 24) & 6) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8F51AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8F51B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8F51B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8F51BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8F51C38(uint64_t a1)
{
  v2 = sub_1D9177FDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D75620(&qword_1EDCD5C50, MEMORY[0x1E69666B0]);
  v7 = sub_1D917840C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v3 + 16))(v6, a1, v2);
  result = sub_1D91783FC();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_1D9189080;
      v12 = v34;
      while (v32 != v12)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = MEMORY[0x1E69E7508];
        *(v14 + 64) = MEMORY[0x1E69E7558];
        *(v14 + 32) = v13;
        result = sub_1D917823C();
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          sub_1D8D41BE0((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = result;
        *(v18 + 40) = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_1D9189080;
      while (v12 < v21)
      {
        v22 = *(v20 + 32 + v12);
        v34 = v12 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        *(v23 + 56) = MEMORY[0x1E69E7508];
        *(v23 + 64) = MEMORY[0x1E69E7558];
        *(v23 + 32) = v22;
        result = sub_1D917823C();
        v35 = v8;
        v26 = *(v8 + 16);
        v25 = *(v8 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = result;
          v29 = v24;
          sub_1D8D41BE0((v25 > 1), v26 + 1, 1);
          v24 = v29;
          result = v28;
          v8 = v35;
        }

        *(v8 + 16) = v26 + 1;
        v27 = v8 + 16 * v26;
        *(v27 + 32) = result;
        *(v27 + 40) = v24;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall URL.md5()()
{
  v0 = sub_1D9177FCC();
  v26 = *(v0 - 8);
  v1 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9177FDC();
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D917825C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176BCC();
  sub_1D917824C();
  v13 = sub_1D917821C();
  v15 = v14;

  (*(v9 + 8))(v12, v8);
  v16 = 0;
  v17 = 0;
  if (v15 >> 60 != 15)
  {
    sub_1D8D75620(&unk_1EDCD5C58, MEMORY[0x1E6966688]);
    sub_1D9177F9C();
    sub_1D8D752C4(v13, v15);
    sub_1D8D75318(v13, v15);
    sub_1D8D75668(v13, v15);
    sub_1D9177F8C();
    (*(v26 + 8))(v3, v0);
    v18 = sub_1D8F51C38(v7);
    (*(v24 + 8))(v7, v25);
    v27 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8D72B0C();
    v19 = sub_1D917817C();
    v21 = v20;
    sub_1D8D75668(v13, v15);

    v17 = v21;
    v16 = v19;
  }

  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

Swift::Int_optional __swiftcall URL.volumeAvailableCapacity()()
{
  v0 = sub_1D8DB9BC0(MEMORY[0x1E695DD60], MEMORY[0x1E69688B0]);
  result.value = v0;
  result.is_nil = v1;
  return result;
}

Swift::Int_optional __swiftcall URL.volumeTotalCapacity()()
{
  v0 = sub_1D8DB9BC0(MEMORY[0x1E695DE98], MEMORY[0x1E69688A0]);
  result.value = v0;
  result.is_nil = v1;
  return result;
}

Swift::Bool __swiftcall URL.isVolumeAvailableCapacityForOpportunisticUsageAbove(threshold:)(Swift::Int64_optional threshold)
{
  is_nil = threshold.is_nil;
  value = threshold.value;
  v5 = URL.volumeAvailableCapacityForOpportunisticUsage()();
  if (is_nil)
  {
    v3 = 0;
  }

  else
  {
    v3 = value;
  }

  return v5.is_nil || v3 < v5.value;
}

Swift::Bool __swiftcall URL.isVolumeAvailableCapacityAbove(threshold:)(Swift::Int64_optional threshold)
{
  is_nil = threshold.is_nil;
  value = threshold.value;
  v5 = URL.volumeAvailableCapacity()();
  if (is_nil)
  {
    v3 = 0;
  }

  else
  {
    v3 = value;
  }

  return v5.is_nil || v3 < v5.value;
}

uint64_t URL.hasiPodLibraryScheme.getter()
{
  v0 = sub_1D9176BEC();
  if (v1)
  {
    if (v0 == 0x62696C2D646F7069 && v1 == 0xEC00000079726172)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1D9179ACC();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t URL.contained(within:)()
{
  sub_1D9176BCC();
  sub_1D9176BCC();
  v0 = sub_1D917839C();

  return v0 & 1;
}

uint64_t FilePath.replacingRoot(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = sub_1D917747C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7398, &qword_1D91970A8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB73A0, &qword_1D91970B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v41 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v35[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35[-v22];
  v45 = v2;
  sub_1D917748C();
  v24 = *(v5 + 16);
  v42 = a1;
  v39 = v24;
  v40 = v5 + 16;
  v24(v20, a1, v4);
  v38 = *(v5 + 56);
  v38(v20, 0, 1, v4);
  v25 = *(v9 + 56);
  sub_1D8F52984(v23, v12);
  sub_1D8F52984(v20, &v12[v25]);
  v26 = *(v5 + 48);
  if (v26(v12, 1, v4) == 1)
  {
    sub_1D8D08A50(v20, &qword_1ECAB73A0, &qword_1D91970B0);
    sub_1D8D08A50(v23, &qword_1ECAB73A0, &qword_1D91970B0);
    v27 = v26(&v12[v25], 1, v4);
    v28 = v45;
    if (v27 == 1)
    {
      sub_1D8D08A50(v12, &qword_1ECAB73A0, &qword_1D91970B0);
LABEL_8:
      v32 = v41;
      v39(v41, v42, v4);
      v38(v32, 0, 1, v4);
      sub_1D917749C();
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_1D8F52984(v12, v43);
  if (v26(&v12[v25], 1, v4) == 1)
  {
    sub_1D8D08A50(v20, &qword_1ECAB73A0, &qword_1D91970B0);
    sub_1D8D08A50(v23, &qword_1ECAB73A0, &qword_1D91970B0);
    (*(v5 + 8))(v43, v4);
    v28 = v45;
LABEL_6:
    sub_1D8D08A50(v12, &qword_1ECAB7398, &qword_1D91970A8);
    goto LABEL_9;
  }

  v29 = v37;
  (*(v5 + 32))(v37, &v12[v25], v4);
  sub_1D8F529F4();
  v30 = v43;
  v36 = sub_1D91781BC();
  v31 = *(v5 + 8);
  v31(v29, v4);
  sub_1D8D08A50(v20, &qword_1ECAB73A0, &qword_1D91970B0);
  sub_1D8D08A50(v23, &qword_1ECAB73A0, &qword_1D91970B0);
  v31(v30, v4);
  sub_1D8D08A50(v12, &qword_1ECAB73A0, &qword_1D91970B0);
  v28 = v45;
  if (v36)
  {
    goto LABEL_8;
  }

LABEL_9:
  v33 = sub_1D91774DC();
  return (*(*(v33 - 8) + 32))(v44, v28, v33);
}

uint64_t sub_1D8F52984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB73A0, &qword_1D91970B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8F529F4()
{
  result = qword_1ECAB73A8;
  if (!qword_1ECAB73A8)
  {
    sub_1D917747C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB73A8);
  }

  return result;
}

uint64_t FilePath.removingPrefix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D917746C();
  v5 = sub_1D91774DC();
  v8 = *(v5 - 8);
  (*(v8 + 8))(a1, v5);
  v6 = *(v8 + 32);

  return v6(a2, v2, v5);
}

uint64_t FilePath.fileType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CA8, &qword_1D91949D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_1D917720C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1D91774CC();
  if (v8)
  {
    sub_1D91771FC();
    v9 = sub_1D91772BC();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    return sub_1D917724C();
  }

  else
  {
    v11 = sub_1D91772BC();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

uint64_t FilePath.conforms(to:)()
{
  v0 = sub_1D917720C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CA8, &qword_1D91949D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  sub_1D91774CC();
  if (!v9)
  {
    v13 = sub_1D91772BC();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    goto LABEL_5;
  }

  sub_1D91771FC();
  v10 = sub_1D91772BC();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v5, 1, 1, v10);
  sub_1D917724C();
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
LABEL_5:
    sub_1D8D08A50(v8, &qword_1ECAB6CA8, &qword_1D91949D8);
    v12 = 0;
    return v12 & 1;
  }

  v12 = sub_1D91772AC();
  (*(v11 + 8))(v8, v10);
  return v12 & 1;
}

uint64_t ChannelUpdaterUtil.__allocating_init(contextProvider:)(void *a1)
{
  v2 = swift_allocObject();
  ChannelUpdaterUtil.init(contextProvider:)(a1);
  return v2;
}

void *ChannelUpdaterUtil.init(contextProvider:)(void *a1)
{
  if (qword_1EDCD0990 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDCD0998;
  v1[3] = qword_1EDCD0998;
  v4 = v3;
  v1[2] = [a1 importContext];
  v5 = v1[3];
  v6 = objc_allocWithZone(type metadata accessor for MediaRequestController());
  v7 = v5;
  v8 = [v6 init];
  swift_unknownObjectRelease();
  v9 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v10 = *&v8[v9];
  *&v8[v9] = v7;

  v1[4] = v8;
  return v1;
}

uint64_t sub_1D8F53014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = *(v4 + 24);
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  aBlock[4] = sub_1D8F53404;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_38;
  v19 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v21[1] = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v17, v12, v19);
  _Block_release(v19);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

uint64_t sub_1D8F532A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  v9 = *(a1 + 16);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a2;
  v11[4] = sub_1D8F54E84;
  v11[5] = v8;
  v14[4] = sub_1D8F54E90;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = &block_descriptor_19_0;
  v12 = _Block_copy(v14);

  [v9 performBlock_];
  _Block_release(v12);
}

void sub_1D8F53410(char a1, uint64_t a2, void (*a3)(void *, _BYTE *), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v8 = sub_1D917744C();
    __swift_project_value_buffer(v8, qword_1ECAB0BF8);
    v9 = sub_1D917741C();
    v10 = sub_1D9178D1C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      sub_1D8E40A10();
      v13 = sub_1D9179A4C();
      v15 = sub_1D8CFA924(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D8CEC000, v9, v10, "[ChannelUpdaterUtil] Not fetching channel from Media API with adamID: %s because it is already in the library.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    sub_1D8F54E30();
    v16 = swift_allocError();
    *v17 = 0;
    a3(v16, v17);
  }

  else
  {
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = a4;
    v19[5] = a5;

    sub_1D8F54010(a2, sub_1D8F54EDC, v19);
  }
}

void sub_1D8F53634(void *a1, id a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v10 = a2;
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1ECAB0BF8);
    v12 = a2;
    v13 = sub_1D917741C();
    v14 = sub_1D9178CFC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136315394;
      sub_1D8E40A10();
      v17 = sub_1D9179A4C();
      v19 = sub_1D8CFA924(v17, v18, aBlock);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v20 = sub_1D9179D2C();
      v22 = sub_1D8CFA924(v20, v21, aBlock);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_1D8CEC000, v13, v14, "[ChannelUpdaterUtil] Failure fetching channel with adamID: %s from Media API with error: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v16, -1, -1);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }

    v23 = a2;
    (a4)(a2);
  }

  else if (a1)
  {
    v24 = qword_1ECAB0BF0;
    v25 = a1;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    __swift_project_value_buffer(v26, qword_1ECAB0BF8);
    v27 = sub_1D917741C();
    v28 = sub_1D9178D1C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      sub_1D8E40A10();
      v31 = sub_1D9179A4C();
      v33 = sub_1D8CFA924(v31, v32, aBlock);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1D8CEC000, v27, v28, "[ChannelUpdaterUtil] Ingesting channel with adamID: %s.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1DA72CB90](v30, -1, -1);
      MEMORY[0x1DA72CB90](v29, -1, -1);
    }

    v34 = *(a6 + 16);
    v35 = swift_allocObject();
    v35[2] = v25;
    v35[3] = a6;
    v35[4] = a3;
    v35[5] = a4;
    v35[6] = a5;
    aBlock[4] = sub_1D8F54EE8;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_34;
    v36 = _Block_copy(aBlock);
    v37 = v25;

    [v34 performBlock_];
    _Block_release(v36);
  }

  else
  {
    sub_1D8F54E30();
    v38 = swift_allocError();
    *v39 = 1;
    a4();
  }
}

uint64_t sub_1D8F53AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v6 = sub_1D9177E0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v50 = v12;
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v51 = v11;
    v49 = a4;
    if (v18 && (v19 = v18, v20 = [v18 longLongValue], v19, (v21 = objc_msgSend(*(v17 + 16), sel_channelForStoreId_, v20)) != 0))
    {

      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v22 = sub_1D917744C();
      __swift_project_value_buffer(v22, qword_1ECAB0BF8);
      v23 = sub_1D917741C();
      v24 = sub_1D9178D1C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v48 = v7;
        v26 = v25;
        v27 = swift_slowAlloc();
        v53 = a2;
        aBlock[0] = v27;
        *v26 = 136315138;
        sub_1D8E40A10();
        v28 = sub_1D9179A4C();
        v30 = sub_1D8CFA924(v28, v29, aBlock);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_1D8CEC000, v23, v24, "[ChannelUpdaterUtil] Channel with adamID: %s is already in the library. No need to fetch.", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x1DA72CB90](v27, -1, -1);
        v31 = v26;
        v7 = v48;
        MEMORY[0x1DA72CB90](v31, -1, -1);
      }

      v32 = 1;
    }

    else
    {
      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v33 = sub_1D917744C();
      __swift_project_value_buffer(v33, qword_1ECAB0BF8);
      v34 = sub_1D917741C();
      v35 = sub_1D9178D1C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v48 = v7;
        v37 = v36;
        v38 = swift_slowAlloc();
        v53 = a2;
        aBlock[0] = v38;
        *v37 = 136315138;
        sub_1D8E40A10();
        v39 = sub_1D9179A4C();
        v41 = sub_1D8CFA924(v39, v40, aBlock);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_1D8CEC000, v34, v35, "[ChannelUpdaterUtil] Channel with adamID: %s is not in the library. Fetching channel from Media API.", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x1DA72CB90](v38, -1, -1);
        v42 = v37;
        v7 = v48;
        MEMORY[0x1DA72CB90](v42, -1, -1);
      }

      v32 = 0;
    }

    v43 = *(v17 + 24);
    v44 = swift_allocObject();
    v45 = v49;
    *(v44 + 16) = v52;
    *(v44 + 24) = v45;
    *(v44 + 32) = v32;
    aBlock[4] = sub_1D8E92A40;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_25;
    v46 = _Block_copy(aBlock);

    sub_1D9177E4C();
    v53 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v15, v10, v46);
    _Block_release(v46);
    (*(v7 + 8))(v10, v6);
    (*(v50 + 8))(v15, v51);
  }

  return result;
}

uint64_t sub_1D8F54010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v57 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v42 - v6;
  v52 = &v42 - v6;
  v8 = type metadata accessor for MediaRequest.Params();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D8D946F4(&unk_1F545E048);
  sub_1D8D08A50(&unk_1F545E068, &unk_1ECAB9A50, &unk_1D9197130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D9189080;
  v56 = a1;
  v59 = a1;
  sub_1D8E40D20();
  *(v13 + 32) = sub_1D917927C();
  *(v13 + 40) = v14;
  v15 = sub_1D9176C2C();
  v16 = *(*(v15 - 8) + 56);
  v16(v7, 1, 1, v15);
  v17 = MEMORY[0x1E69E7CC0];
  v51 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v50 = sub_1D8D94DF8(v17);
  v49 = sub_1D8D951E0(v17);
  v48 = sub_1D8D9503C(v17);
  v47 = sub_1D8D9536C(v17);
  v46 = sub_1D8D953C4(v17);
  v44 = sub_1D8D952D8(v17);
  v45 = sub_1D8D95394(v17);
  v18 = sub_1D8D957C4(v17);
  *(v12 + 41) = 263;
  v12[43] = 5;
  v12[152] = 1;
  v12[201] = 1;
  v19 = v9[30];
  v16(&v12[v19], 1, 1, v15);
  v20 = &v12[v9[31]];
  v21 = &v12[v9[33]];
  v22 = v9[35];
  v43 = v9[36];
  v23 = &v12[v22];
  v24 = &v12[v9[37]];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *(v12 + 10) = 83952388;
  v25 = v50;
  *(v12 + 6) = v51;
  *(v12 + 7) = v25;
  v26 = v48;
  *(v12 + 8) = v49;
  *(v12 + 9) = v17;
  v27 = v47;
  *(v12 + 10) = v26;
  *(v12 + 11) = v27;
  v28 = v46;
  *(v12 + 12) = v53;
  *(v12 + 13) = v28;
  v29 = v44;
  *(v12 + 14) = v17;
  *(v12 + 15) = v29;
  *(v12 + 16) = v17;
  *(v12 + 17) = v17;
  *(v12 + 18) = v13;
  v12[152] = 1;
  *(v12 + 20) = 0;
  v12[168] = 1;
  *(v12 + 22) = v45;
  *(v12 + 23) = v18;
  *(v12 + 24) = 0;
  *(v12 + 100) = 257;
  v12[202] = 0;
  sub_1D8E26828(v52, &v12[v19]);
  *v20 = 0;
  *(v20 + 1) = 0;
  v12[v9[32]] = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v12[v9[34]] = v17;
  *v23 = 0;
  *(v23 + 1) = 0;
  v12[v43] = 2;
  *v24 = 0;
  *(v24 + 1) = 0;
  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D917744C();
  __swift_project_value_buffer(v30, qword_1ECAB0BF8);
  v31 = sub_1D917741C();
  v32 = sub_1D9178D1C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 136315138;
    v35 = v56;
    v58 = v56;
    v59 = v34;
    sub_1D8E40A10();
    v36 = sub_1D9179A4C();
    v38 = sub_1D8CFA924(v36, v37, &v59);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_1D8CEC000, v31, v32, "[ChannelUpdaterUtil] Fetching channel with adamID: %s from Media API.", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1DA72CB90](v34, -1, -1);
    MEMORY[0x1DA72CB90](v33, -1, -1);
  }

  else
  {

    v35 = v56;
  }

  v39 = *(v54 + 32);
  v40 = swift_allocObject();
  v40[2] = v55;
  v40[3] = v57;
  v40[4] = v35;

  sub_1D904AD58(v12, 0, sub_1D8F54E24, v40);

  return sub_1D8D90BEC(v12);
}

void sub_1D8F544D0(unint64_t a1, int a2, int a3, int a4, id a5, void (*a6)(id, id))
{
  if (a5)
  {
    v7 = a5;
    v8 = a5;
LABEL_3:
    a6(0, v7);

    return;
  }

  if (a1 && (v9 = sub_1D8FBEEFC(a1)) != 0)
  {
    v10 = v9;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v10 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_12;
    }

LABEL_21:

    sub_1D8F54E30();
    v7 = swift_allocError();
    *v24 = 1;
    goto LABEL_3;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1DA72AA90](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  v13 = qword_1ECAB0BF0;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1ECAB0BF8);
  v16 = sub_1D917741C();
  v17 = sub_1D9178D1C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    sub_1D8E40A10();
    v20 = sub_1D9179A4C();
    v22 = sub_1D8CFA924(v20, v21, &v25);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1D8CEC000, v16, v17, "[ChannelUpdaterUtil] Successfully fetched channel object with adamID: %s from Media API.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1DA72CB90](v19, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  v23 = v14;
  a6(v14, 0);
}

uint64_t sub_1D8F54780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v10 = sub_1D9177E0C();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9177E9C();
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_opt_self();
  v19 = *(a2 + 16);
  v20 = [v18 createOrFindChannelFromFeedChannelItem:a1 personalizedRequest:0 context:v19];
  NSManagedObjectContext.unsafeInterest(forAdamID:)(a3);
  if (v21)
  {
    v22 = v21;
    [v20 setInterest_];
    [v22 setChannel_];
  }

  aBlock = 0;
  v23 = [v19 save_];
  v24 = aBlock;
  if (v23)
  {
    v25 = *(a2 + 24);
    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;
    v58 = sub_1D8F54EF8;
    v59 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = sub_1D8CF5F60;
    v57 = &block_descriptor_46;
    v27 = _Block_copy(&aBlock);
    v28 = v24;

    sub_1D9177E4C();
    v53 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v17, v13, v27);
    _Block_release(v27);
  }

  else
  {
    v49 = a4;
    v29 = aBlock;
    v30 = sub_1D9176A6C();

    swift_willThrow();
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v31 = sub_1D917744C();
    __swift_project_value_buffer(v31, qword_1ECAB0BF8);
    v32 = v30;
    v33 = sub_1D917741C();
    v34 = sub_1D9178CFC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v20;
      v37 = a5;
      v38 = v36;
      *v35 = 138412290;
      v39 = v30;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "Failed to save core data context in ChannelUpdaterUtil with error: %@", v35, 0xCu);
      sub_1D8D08A50(v38, &unk_1ECAB6C70, &unk_1D9188C30);
      v41 = v38;
      a5 = v37;
      v20 = v48;
      MEMORY[0x1DA72CB90](v41, -1, -1);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    v42 = *(a2 + 24);
    v43 = swift_allocObject();
    v43[2] = v49;
    v43[3] = a5;
    v43[4] = v30;
    v58 = sub_1D8E8B4F0;
    v59 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = sub_1D8CF5F60;
    v57 = &block_descriptor_40_2;
    v44 = _Block_copy(&aBlock);

    v45 = v30;
    sub_1D9177E4C();
    v53 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v17, v13, v44);
    _Block_release(v44);
  }

  (*(v52 + 8))(v13, v10);
  (*(v50 + 8))(v17, v51);

  v47 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ChannelUpdaterUtil.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D8F54E24(unint64_t a1, int a2, int a3, int a4, void *a5)
{
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  sub_1D8F544D0(a1, a2, a3, a4, a5, *(v5 + 16));
}

unint64_t sub_1D8F54E30()
{
  result = qword_1ECAB73B0;
  if (!qword_1ECAB73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB73B0);
  }

  return result;
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8F54EF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

unint64_t sub_1D8F54F38()
{
  result = qword_1ECAB73B8;
  if (!qword_1ECAB73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB73B8);
  }

  return result;
}

uint64_t FeedManagerBagConfiguration.backoffIntervals.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedManagerBagConfiguration() + 28));
}

uint64_t static FeedManagerBagConfiguration.getConfiguration(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D8D5A180;
  *(v6 + 24) = v5;
  v9[4] = sub_1D8D597EC;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D8D5960C;
  v9[3] = &block_descriptor_39;
  v7 = _Block_copy(v9);

  [v4 createSnapshotWithCompletion_];
  _Block_release(v7);
}

uint64_t FeedManagerLocalConfiguration.deltaNumberOfEpisodesToRequestPerPage.getter()
{
  result = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_deltaNumberOfEpisodesToRequestPerPage);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_deltaNumberOfEpisodesToRequestPerPage + 8);
  return result;
}

void sub_1D8F55248()
{
  if (qword_1EDCD23E8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDCD23F0;
  v1 = *(qword_1EDCD23F0 + OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_deltaNumberOfEpisodesToRequestPerPage);
  v2 = *(qword_1EDCD23F0 + OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_deltaNumberOfEpisodesToRequestPerPage + 8);
  v3 = type metadata accessor for FeedManagerLocalConfiguration();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_timeoutIntervalForResource] = 0x4072C00000000000;
  v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration__workQueueConcurrent] = 1;
  v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_useBackgroundFetchForFeedDownloads] = 1;
  v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_keepsFeedFileInTempDirAfterDownload] = 0;
  v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration__supportsBatchInsertion] = 1;
  v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_usesCleanEpisodeTitles] = 1;
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_concurrentDeltaUpdateLimit] = 3;
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_concurrentBootstrapUpdateLimit] = 2;
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_concurrentRSSUpdateLimit] = 3;
  if (v1 == 300)
  {
    v5 = 0;
  }

  else
  {
    v5 = v1;
  }

  if (v1 == 300)
  {
    v6 = 1;
  }

  else
  {
    v6 = v2;
  }

  if (v2)
  {
    v5 = v1;
  }

  v7 = &v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_deltaNumberOfEpisodesToRequestPerPage];
  *v7 = v5;
  v7[8] = v6;
  v10.receiver = v4;
  v10.super_class = v3;
  v8 = v0;
  v9 = objc_msgSendSuper2(&v10, sel_init);

  qword_1ECAB73D0 = v9;
}

id static FeedManagerLocalConfiguration.platformSpecificConfiguration.getter()
{
  if ([objc_opt_self() isRunningOnHomepod])
  {
    if (qword_1ECAB34D0 != -1)
    {
      swift_once();
    }

    v0 = &qword_1ECAB73D0;
  }

  else
  {
    if (qword_1EDCD23E8 != -1)
    {
      swift_once();
    }

    v0 = &qword_1EDCD23F0;
  }

  v1 = *v0;

  return v1;
}

id FeedManagerLocalConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedManagerLocalConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedManagerLocalConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FeedUpdateRequest.feedUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedUpdateRequest() + 20);
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedUpdateRequest.triggerBy.getter()
{
  v1 = (v0 + *(type metadata accessor for FeedUpdateRequest() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FeedUpdateRequest.feedDownloadedHook.getter()
{
  v1 = (v0 + *(type metadata accessor for FeedUpdateRequest() + 56));
  v2 = *v1;
  v3 = v1[1];
  sub_1D8D1F93C(*v1);
  return v2;
}

uint64_t FeedUpdateRequest.preProcessFeedHook.getter()
{
  v1 = (v0 + *(type metadata accessor for FeedUpdateRequest() + 60));
  v2 = *v1;
  v3 = v1[1];
  sub_1D8D1F93C(*v1);
  return v2;
}

uint64_t FeedUpdateRequest.postProcessFeedHook.getter()
{
  v1 = (v0 + *(type metadata accessor for FeedUpdateRequest() + 64));
  v2 = *v1;
  v3 = v1[1];
  sub_1D8D1F93C(*v1);
  return v2;
}

uint64_t FeedUpdateRequest.completion.getter()
{
  v1 = (v0 + *(type metadata accessor for FeedUpdateRequest() + 68));
  v2 = *v1;
  v3 = v1[1];
  sub_1D8D1F93C(*v1);
  return v2;
}

void sub_1D8F5589C(void *a1, char a2, void (*a3)(BOOL, void *))
{
  if (a2)
  {
    v5 = a1;
    v6 = a1;
  }

  else
  {
    v5 = 0;
  }

  a3((a2 & 1) == 0, v5);
}

uint64_t FeedUpdateRequest.failRequest(_:)(void *a1)
{
  v3 = sub_1D9177E0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for FeedUpdateRequest();
  v14 = (v1 + *(result + 68));
  v15 = *v14;
  if (*v14)
  {
    v22 = v8;
    v16 = v14[1];
    sub_1D8CFD888();

    v21 = sub_1D9178E1C();
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v16;
    v17[4] = a1;
    aBlock[4] = sub_1D8F55BE0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_40;
    v18 = _Block_copy(aBlock);
    sub_1D8D1F93C(v15);
    v19 = a1;

    sub_1D9177E4C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    v20 = v21;
    MEMORY[0x1DA72A400](0, v12, v7, v18);
    _Block_release(v18);

    sub_1D8D15664(v15);
    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v22);
  }

  return result;
}

uint64_t FeedUpdateRequest.isImplicitActionRequest.getter()
{
  updated = type metadata accessor for FeedUpdateRequest();
  if (*(v0 + *(updated + 36)))
  {
    return 0;
  }

  else
  {
    return *(v0 + *(updated + 44));
  }
}

uint64_t FeedUpdateRequest.copyWithoutCompletion()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v54 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v54 - v9;
  v71 = &v54 - v9;
  v11 = sub_1D9176C2C();
  v69 = *(v11 - 8);
  v12 = v69;
  v70 = v11;
  v13 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v15;
  updated = type metadata accessor for FeedUpdateRequest();
  v17 = updated[5];
  v68 = *(v12 + 16);
  v68(v15, v1 + v17, v11);
  sub_1D8D088B4(v1 + updated[6], v10, &unk_1ECAB5910, &qword_1D9188C90);
  v18 = updated[8];
  v67 = *(v1 + updated[7]);
  v19 = *(v1 + updated[10]);
  v65 = *(v1 + updated[9]);
  v66 = v19;
  v20 = v1 + v18;
  v21 = updated[12];
  v64 = *(v1 + updated[11]);
  v22 = *(v1 + v18);
  v60 = *(v20 + 8);
  v61 = v22;
  v63 = *(v1 + v21);
  v62 = *(v1 + updated[13]);
  v23 = sub_1D9176EAC();
  v24 = *(*(v23 - 8) + 56);
  v58 = v6;
  v24(v6, 1, 1, v23);
  v25 = (v1 + updated[14]);
  v26 = *v25;
  v27 = v25[1];
  v28 = (v1 + updated[15]);
  v30 = *v28;
  v29 = v28[1];
  v55 = v30;
  v54 = v29;
  v31 = (v1 + updated[16]);
  v33 = *v31;
  v32 = v31[1];
  v57 = v33;
  v56 = v32;
  v34 = updated[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7540, &unk_1D9197370);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *(a1 + v34) = v35;
  v36 = updated[19];
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 16) = 0;
  v59 = (v37 + 16);
  *(v37 + 32) = 0;
  v38 = (v37 + 32);
  *(a1 + v36) = v37;
  v39 = updated[20];
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(a1 + v39) = v40;
  sub_1D8D088B4(v6, a1, &qword_1ECAB71E0, &unk_1D9197360);
  v68((a1 + updated[5]), v72, v70);
  sub_1D8D088B4(v71, a1 + updated[6], &unk_1ECAB5910, &qword_1D9188C90);
  *(a1 + updated[7]) = v67;
  v41 = (a1 + updated[8]);
  v42 = v60;
  *v41 = v61;
  v41[1] = v42;
  v43 = v66;
  *(a1 + updated[9]) = v65;
  *(a1 + updated[10]) = v43;
  *(a1 + updated[11]) = v64;
  *(a1 + updated[12]) = v63;
  *(a1 + updated[13]) = v62;
  v44 = (a1 + updated[14]);
  v45 = v26;
  *v44 = v26;
  v44[1] = v27;
  v46 = (a1 + updated[15]);
  v47 = v55;
  v48 = v54;
  *v46 = v55;
  v46[1] = v48;
  v49 = (a1 + updated[16]);
  v50 = v57;
  v51 = v56;
  *v49 = v57;
  v49[1] = v51;
  v52 = (a1 + updated[17]);
  *v52 = 0;
  v52[1] = 0;
  v75 = 23;

  sub_1D8D1F93C(v45);
  sub_1D8D1F93C(v47);
  sub_1D8D1F93C(v50);

  sub_1D8D76684(&v75, v76);
  v73 = v76[0];
  v74 = v76[1];
  os_unfair_lock_lock(v38);
  sub_1D8F56440(v59);
  os_unfair_lock_unlock(v38);

  sub_1D8D08A50(v58, &qword_1ECAB71E0, &unk_1D9197360);
  sub_1D8D08A50(v71, &unk_1ECAB5910, &qword_1D9188C90);
  (*(v69 + 8))(v72, v70);
}

Swift::Void __swiftcall FeedUpdateRequest.startSystemCreation()()
{
  v1 = *(v0 + *(type metadata accessor for FeedUpdateRequest() + 80));
  os_unfair_lock_lock(v1 + 8);
  sub_1D8F561F0(&v1[4]);
  os_unfair_lock_unlock(v1 + 8);
}

double sub_1D8F561F0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 8);

  v7 = 3;
  sub_1D8D76684(&v7, &v6);
  result = *&v6;
  *a1 = v6;
  return result;
}

Swift::Void __swiftcall FeedUpdateRequest.endSystemCreation()()
{
  v1 = *(v0 + *(type metadata accessor for FeedUpdateRequest() + 80));
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 24))
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);

    sub_1D8D7FAB4();

    v2 = *(v1 + 24);
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;

  os_unfair_lock_unlock((v1 + 32));
}

Swift::Void __swiftcall FeedUpdateRequest.startQueueing(position:)(Swift::Int position)
{
  v2 = *(v1 + *(type metadata accessor for FeedUpdateRequest() + 72));
  os_unfair_lock_lock(v2 + 8);
  sub_1D8D85088(&v2[4]);
  os_unfair_lock_unlock(v2 + 8);
}

Swift::Void __swiftcall FeedUpdateRequest.endQueueing()()
{
  v1 = *(v0 + *(type metadata accessor for FeedUpdateRequest() + 72));
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 24))
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);

    sub_1D8D7FAB4();

    v2 = *(v1 + 24);
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;

  os_unfair_lock_unlock((v1 + 32));
}

Swift::Void __swiftcall FeedUpdateRequest.endProcessFirstEpisodesIntervalIfNeeded()()
{
  v1 = *(v0 + *(type metadata accessor for FeedUpdateRequest() + 76));
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 24))
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);

    sub_1D8D7FAB4();

    v2 = *(v1 + 24);
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t FeedUpdateRequest.TelemetryPhase.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t NSManagedObjectContext.performAndWaitWithTelemetry(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  updated = type metadata accessor for FeedUpdateRequest();
  v9 = *(updated - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  LOBYTE(aBlock[0]) = 26;
  sub_1D8D76684(aBlock, &v18);
  sub_1D8D7A3C4(a1, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = &v18;
  sub_1D8D79960(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = (v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D8F567F8;
  *(v14 + 24) = v12;
  aBlock[4] = sub_1D8D24508;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_12_0;
  v15 = _Block_copy(aBlock);

  [v4 performBlockAndWait_];
  _Block_release(v15);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1D8F56728(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a1[1];
  if (v5)
  {
    LOBYTE(v11) = *a1;
    *(&v11 + 1) = v5;

    sub_1D8D7FAB4();
  }

  v10 = 27;
  sub_1D8D76684(&v10, &v11);
  v6 = a1[1];
  *a1 = v11;

  result = a3(v7);
  v9 = a1[1];
  if (v9)
  {
    LOBYTE(v11) = *a1;
    *(&v11 + 1) = v9;

    sub_1D8D7FAB4();
  }

  return result;
}

uint64_t sub_1D8F567F8()
{
  v1 = *(type metadata accessor for FeedUpdateRequest() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1D8F56728(v3, v0 + v2, v5);
}

uint64_t NSManagedObjectContext.performAndWaitWithTelemetry<A>(for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = 26;
  sub_1D8D76684(&v12, &v13);
  v11[2] = a4;
  v11[3] = &v13;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  NSManagedObjectContext.performAndWait<A>(_:)(sub_1D8F56A14, v11, a4, a5);
}

uint64_t sub_1D8F56934(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a1[1];
  if (v5)
  {
    LOBYTE(v11) = *a1;
    *(&v11 + 1) = v5;

    sub_1D8D7FAB4();
  }

  v10 = 27;
  sub_1D8D76684(&v10, &v11);
  v6 = a1[1];
  *a1 = v11;

  result = a3(v7);
  v9 = a1[1];
  if (v9)
  {
    LOBYTE(v11) = *a1;
    *(&v11 + 1) = v9;

    sub_1D8D7FAB4();
  }

  return result;
}

uint64_t sub_1D8F56A14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  return sub_1D8F56934(*(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t sub_1D8F56A24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, unsigned __int8 a5)
{
  swift_beginAccess();
  v8 = *(a1 + 24);
  if (v8)
  {
    v17[0] = *(a1 + 16);
    v18 = v8;

    sub_1D8D7FAB4();
  }

  v17[0] = a5;
  sub_1D8D76684(v17, v16);
  v9 = v16[0];
  v10 = v16[1];
  swift_beginAccess();
  v11 = *(a1 + 24);
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;

  a3(v12);
  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);

    sub_1D8D7FAB4();
  }

  return result;
}

uint64_t sub_1D8F56B38(unsigned __int8 a1)
{
  v3 = *(type metadata accessor for FeedUpdateRequest() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D8F56A24(*(v1 + 16), v1 + v4, *v5, *(v5 + 8), a1);
}

unint64_t sub_1D8F56BD4()
{
  result = qword_1ECAB7430;
  if (!qword_1ECAB7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7430);
  }

  return result;
}

uint64_t _s14TelemetryPhaseOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14TelemetryPhaseOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D8F56D78()
{
  if (*(v0 + 16))
  {
    v1 = 11;
  }

  else
  {
    v1 = 9;
  }

  v4 = v1;
  sub_1D8D76684(&v4, &v5);
  v2 = *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_networkState + 8);
  *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_networkState) = v5;
}

uint64_t sub_1D8F56E34(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingState);
  if (*(v1 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingState + 8))
  {
    v8 = *v3;

    sub_1D8D92750(a1 == 0);

    v4 = v3[1];
  }

  *v3 = 0;
  v3[1] = 0;

  v5 = (v1 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingDiagnosticState);
  if (*(v1 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingDiagnosticState + 8))
  {
    v9 = *v5;

    sub_1D8D92750(a1 == 0);

    v6 = v5[1];
  }

  *v5 = 0;
  v5[1] = 0;
}

uint64_t sub_1D8F56F44()
{
  if (*(v0 + 16))
  {
    v1 = 12;
  }

  else
  {
    v1 = 10;
  }

  v4 = v1;
  sub_1D8D76684(&v4, &v5);
  v2 = *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_parsingState + 8);
  *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_parsingState) = v5;
}

uint64_t sub_1D8F57000()
{
  sub_1D8D7A55C(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_request);
  v1 = *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestBuildingState + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingState + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingDiagnosticState + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_networkState + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_parsingState + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1D8F570E4()
{
  result = qword_1ECAB7438;
  if (!qword_1ECAB7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7438);
  }

  return result;
}

uint64_t sub_1D8F57144()
{
  v1 = *v0;
  v2 = sub_1D9177E0C();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = v0[5];
  v11 = *(v1 + 80);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7440, &qword_1D9197628);
  aBlock[0] = nullsub_1(v10, v11, v12, *(v1 + 88));
  sub_1D917809C();

  swift_getWitnessTable();
  v13 = sub_1D9178B5C();
  v14 = v0[6];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v0;
  aBlock[4] = sub_1D8F58B38;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_7;
  v16 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v9, v5, v16);
  _Block_release(v16);
  (*(v19 + 8))(v5, v2);
  (*(v6 + 8))(v9, v18);
}

uint64_t sub_1D8F574CC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[3];
  sub_1D917791C();
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  v6 = sub_1D9178AEC();

  if ((v6 & 1) == 0)
  {
    return sub_1D917790C();
  }

  return result;
}

uint64_t FeedUpdateRequestCollection.__allocating_init()()
{
  v0 = swift_allocObject();
  FeedUpdateRequestCollection.init()();
  return v0;
}

void *FeedUpdateRequestCollection.init()()
{
  v1 = v0;
  v2 = *v0;
  v19 = sub_1D9178D8C();
  v3 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v18[1] = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9177E9C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1D9178E0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 80);
  v13 = sub_1D917866C();
  if (sub_1D91786AC())
  {
    v14 = sub_1D8F58608(v13, v12, *(v2 + 88));
  }

  else
  {

    v15 = *(v2 + 88);
    v14 = MEMORY[0x1E69E7CD0];
  }

  sub_1D9178B4C();
  sub_1D917793C();
  v20 = v14;
  v1[3] = sub_1D917794C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v1[4] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7440, &qword_1D9197628);
  v1[5] = sub_1D9177FEC();
  sub_1D8CFD888();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8098], v7);
  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  v1[6] = sub_1D9178E4C();
  ReadOnlyCurrentValueSubject.init(_:)(v1[3], &v20);
  v1[2] = v20;

  return v1;
}

uint64_t sub_1D8F57948()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D7D1EC(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1D8F579BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v27 = a4;
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v26 = &v23 - v11;
  updated = type metadata accessor for FeedUpdateRequest();
  v24 = *(updated - 8);
  v13 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = a1[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7440, &qword_1D9197628);
  v17 = *(v7 + 88);
  v25 = a2;
  sub_1D91780FC();

  if (v28)
  {
    v18 = v28;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1D8D7A3C4(a3, v15);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1D8D7CE14(0, v18[2] + 1, 1, v18);
  }

  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1D8D7CE14(v19 > 1, v20 + 1, 1, v18);
  }

  v18[2] = v20 + 1;
  sub_1D8D79960(v15, v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20);
  (*(v9 + 16))(v26, v25, v8);
  v29 = v18;
  swift_beginAccess();
  sub_1D91780DC();

  sub_1D917810C();
  swift_endAccess();
  sub_1D8F57144();
  v21 = v18[2];

  *v27 = v21 == 1;
  return result;
}

uint64_t sub_1D8F57CB0()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8DA3D30(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1D8F57D20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[5];
  v6 = *(v4 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7440, &qword_1D9197628);
  v7 = *(v4 + 88);
  sub_1D91780FC();

  v9 = v10;
  if (!v10)
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v9;
  return result;
}

void sub_1D8F57E00()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8F58A1C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1D8F57E70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[5];
  v6 = *(v4 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7440, &qword_1D9197628);
  v7 = *(v4 + 88);
  sub_1D91780FC();

  if (v14)
  {
    v8 = *(v14 + 16);
    if (v8)
    {
      v9 = v8 - 1;
      updated = type metadata accessor for FeedUpdateRequest();
      v11 = *(updated - 8);
      sub_1D8D7A3C4(v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, a2);

      return (*(v11 + 56))(a2, 0, 1, updated);
    }
  }

  v13 = type metadata accessor for FeedUpdateRequest();
  return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
}

uint64_t sub_1D8F58030(uint64_t a1, void *a2, char a3)
{
  v7 = sub_1D9177E0C();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 32);
  v27 = v3;
  v28 = a1;
  v24 = sub_1D8F58A44;
  v25 = &v26;
  os_unfair_lock_lock(v15 + 4);
  sub_1D8F58B40(aBlock);
  os_unfair_lock_unlock(v15 + 4);
  v16 = aBlock[0];
  sub_1D8CFD888();
  v17 = sub_1D9178E1C();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a2;
  v19 = a3 & 1;
  *(v18 + 32) = a3 & 1;
  aBlock[4] = sub_1D8F58A6C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_42;
  v20 = _Block_copy(aBlock);
  sub_1D8DA4A44(a2, v19);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v10, v20);
  _Block_release(v20);

  (*(v23 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v22);
}

uint64_t sub_1D8F58368@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB7440, &qword_1D9197628);
  v5 = *(v3 + 88);
  sub_1D91780DC();
  sub_1D917807C();
  swift_endAccess();
  result = sub_1D8F57144();
  v7 = v8;
  if (!v8)
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v7;
  return result;
}

void sub_1D8F58458(uint64_t a1, uint64_t a2, char a3)
{
  updated = type metadata accessor for FeedUpdateRequest();
  v7 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = &v11[*(v8 + 68)];
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_1D8D7A3C4(v14, v11);
      v17 = *v13;
      v16 = v13[1];
      sub_1D8D1F93C(*v13);
      sub_1D8D7A55C(v11);
      if (v17)
      {
        v17(a2, a3 & 1);
        sub_1D8E8CDC0(v17);
      }

      v14 += v15;
      --v12;
    }

    while (v12);
  }
}

uint64_t FeedUpdateRequestCollection.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  return v0;
}

uint64_t FeedUpdateRequestCollection.__deallocating_deinit()
{
  FeedUpdateRequestCollection.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F58608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v41 - v11;
  v42 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  if (sub_1D91786AC())
  {
    sub_1D917943C();
    v16 = sub_1D917942C();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  v46 = sub_1D91786AC();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_1D917868C();
    sub_1D917862C();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1D91794BC();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_1D917813C();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v9, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_1D91781BC();
        v35 = *v50;
        (*v50)(v9, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1D8F58A1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1D8F58A60(id a1, char a2)
{
  if (a2)
  {
  }
}

PodcastsFoundation::FeedUpdaterError_optional __swiftcall FeedUpdaterError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}