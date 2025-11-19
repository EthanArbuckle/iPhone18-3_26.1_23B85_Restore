void *PayerDisambiguationStrategy.__allocating_init()()
{
  v48 = implicit closure #1 in PayerDisambiguationStrategy.init();
  v49 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v53 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v55 = partial apply for closure #1 in OSLogArguments.append(_:);
  v57 = partial apply for closure #1 in OSLogArguments.append(_:);
  v60 = partial apply for closure #1 in OSLogArguments.append(_:);
  v78 = 0;
  v73 = 0;
  v26 = 0;
  v40 = 0;
  v46 = type metadata accessor for Logger();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v27 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v42 = v17 - v27;
  v28 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v29 = v17 - v28;
  v36 = type metadata accessor for RequestPaymentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v38 = CATWrapper.__allocating_init(options:globals:)();
  v78 = v38;
  v34 = type metadata accessor for Globals();
  v30 = v77;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v77);
  v31 = &v76;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v32 = &v75;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v33 = &v74;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v35 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v30, v31, v32, v33);
  v73 = v35;

  v39 = v72;
  v72[3] = v34;
  v72[4] = &protocol witness table for Globals;
  v72[0] = v35;
  v37 = type metadata accessor for INRequestPaymentIntent();
  type metadata accessor for INRequestPaymentIntentResponse();
  v41 = v71;
  default argument 3 of ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:)(v71);
  v0 = PayeeDisambiguationStrategy.__allocating_init(catFamily:globals:mockGlobals:contactResolver:)(v38, v39, v40, v41);
  v1 = v42;
  v43 = v0;

  v79 = v43;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v44 + 16))(v1, v2, v46);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  v47 = 17;
  v51 = 7;
  v56 = swift_allocObject();
  *(v56 + 16) = 32;
  v58 = swift_allocObject();
  *(v58 + 16) = 8;
  v50 = 32;
  v3 = swift_allocObject();
  v52 = v3;
  *(v3 + 16) = v48;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  v5 = v52;
  v54 = v4;
  *(v4 + 16) = v49;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v54;
  v61 = v6;
  *(v6 + 16) = v53;
  *(v6 + 24) = v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v59 = _allocateUninitializedArray<A>(_:)();
  v62 = v8;

  v9 = v56;
  v10 = v62;
  *v62 = v55;
  v10[1] = v9;

  v11 = v58;
  v12 = v62;
  v62[2] = v57;
  v12[3] = v11;

  v13 = v61;
  v14 = v62;
  v62[4] = v60;
  v14[5] = v13;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v64, v65))
  {
    v15 = v26;
    v19 = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0);
    v21 = createStorage<A>(capacity:type:)(1);
    v22 = &v70;
    v70 = v19;
    v23 = &v69;
    v69 = v20;
    v24 = &v68;
    v68 = v21;
    serialize(_:at:)(2, &v70);
    serialize(_:at:)(1, v22);
    v66 = v55;
    v67 = v56;
    closure #1 in osLogInternal(_:log:type:)(&v66, v22, v23, v24);
    v25 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v66 = v57;
      v67 = v58;
      closure #1 in osLogInternal(_:log:type:)(&v66, &v70, &v69, &v68);
      v17[1] = 0;
      v66 = v60;
      v67 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v66, &v70, &v69, &v68);
      _os_log_impl(&dword_2686B1000, v64, v65, "#ContactDisambiguationStrategy<%s> init", v19, 0xCu);
      destroyStorage<A>(_:count:)(v20, 0, v18);
      destroyStorage<A>(_:count:)(v21, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v19, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v64);
  (*(v44 + 8))(v42, v46);

  return v43;
}

uint64_t ContactDisambiguationStrategy.catFamily.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t ContactDisambiguationStrategy.mockGlobals.getter()
{
  v2 = *(v0 + 64);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t default argument 3 of ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SiriKitContactResolver();
  a1[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return SiriKitContactResolver.init()();
}

void *ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v47 = a1;
  v46 = a2;
  v44 = a3;
  v45 = a4;
  v59 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v61 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v65 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v67 = partial apply for closure #1 in OSLogArguments.append(_:);
  v69 = partial apply for closure #1 in OSLogArguments.append(_:);
  v72 = partial apply for closure #1 in OSLogArguments.append(_:);
  v92 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v43 = 0;
  v57 = *v4;
  v53 = type metadata accessor for Logger();
  v51 = *(v53 - 8);
  v52 = v53 - 8;
  v48 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v31 - v48;
  v50 = &v31 - v48;
  v92 = MEMORY[0x28223BE20](v47);
  v56 = v57[12];
  v91 = v56;
  v90 = v6;
  v89 = v7;
  v88 = v8;
  v87 = v49;
  v54 = v57[10];
  v86 = v54;
  v55 = v57[11];
  v85 = v55;
  v9 = Logger.payments.unsafeMutableAddressor();
  (*(v51 + 16))(v5, v9, v53);
  v63 = 7;
  v10 = swift_allocObject();
  v11 = v55;
  v12 = v56;
  v13 = v57;
  v60 = v10;
  v10[2] = v54;
  v10[3] = v11;
  v10[4] = v12;
  v10[5] = v13[13];
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();
  v58 = 17;
  v68 = swift_allocObject();
  *(v68 + 16) = 32;
  v70 = swift_allocObject();
  *(v70 + 16) = 8;
  v62 = 32;
  v14 = swift_allocObject();
  v15 = v60;
  v64 = v14;
  *(v14 + 16) = v59;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v64;
  v66 = v16;
  *(v16 + 16) = v61;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v66;
  v73 = v18;
  *(v18 + 16) = v65;
  *(v18 + 24) = v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v71 = _allocateUninitializedArray<A>(_:)();
  v74 = v20;

  v21 = v68;
  v22 = v74;
  *v74 = v67;
  v22[1] = v21;

  v23 = v70;
  v24 = v74;
  v74[2] = v69;
  v24[3] = v23;

  v25 = v73;
  v26 = v74;
  v74[4] = v72;
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v76, v77))
  {
    v27 = v43;
    v36 = static UnsafeMutablePointer.allocate(capacity:)();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v37 = createStorage<A>(capacity:type:)(0);
    v38 = createStorage<A>(capacity:type:)(1);
    v39 = &v82;
    v82 = v36;
    v40 = &v81;
    v81 = v37;
    v41 = &v80;
    v80 = v38;
    serialize(_:at:)(2, &v82);
    serialize(_:at:)(1, v39);
    v78 = v67;
    v79 = v68;
    closure #1 in osLogInternal(_:log:type:)(&v78, v39, v40, v41);
    v42 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v78 = v69;
      v79 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v78, &v82, &v81, &v80);
      v34 = 0;
      v78 = v72;
      v79 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v78, &v82, &v81, &v80);
      _os_log_impl(&dword_2686B1000, v76, v77, "#ContactDisambiguationStrategy<%s> init", v36, 0xCu);
      destroyStorage<A>(_:count:)(v37, 0, v35);
      destroyStorage<A>(_:count:)(v38, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v36, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v76);
  (*(v51 + 8))(v50, v53);

  v28 = v46;
  v49[2] = v47;
  v32 = v84;
  outlined init with copy of GlobalsProviding(v28, v84);
  outlined init with take of CommonLabelsProviding(v32, v49 + 3);
  MEMORY[0x277D82BE0](v44);
  v29 = v45;
  v49[8] = v44;
  v33 = v83;
  outlined init with copy of GlobalsProviding(v29, v83);
  outlined init with take of CommonLabelsProviding(v33, v49 + 9);
  __swift_destroy_boxed_opaque_existential_0(v45);
  MEMORY[0x277D82BD8](v44);
  __swift_destroy_boxed_opaque_existential_0(v46);

  return v49;
}

uint64_t ContactDisambiguationStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v55 = a1;
  v54 = a2;
  v68 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v70 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v74 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v76 = partial apply for closure #1 in OSLogArguments.append(_:);
  v78 = partial apply for closure #1 in OSLogArguments.append(_:);
  v81 = partial apply for closure #1 in OSLogArguments.append(_:);
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v92 = 0;
  v40 = 0;
  v65 = *v3;
  v48 = 0;
  v41 = type metadata accessor for Parse();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](0);
  v45 = v30 - v44;
  v46 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v47 = v30 - v46;
  v49 = type metadata accessor for USOParse();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v53 = v30 - v52;
  v96 = v30 - v52;
  v61 = type metadata accessor for Logger();
  v59 = *(v61 - 8);
  v60 = v61 - 8;
  v56 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v55);
  v7 = v30 - v56;
  v58 = v30 - v56;
  v95 = v6;
  v94 = v8;
  v62 = v65[10];
  v93 = v62;
  v92 = v57;
  v63 = v65[11];
  v91[2] = v63;
  v64 = v65[12];
  v91[1] = v64;
  v9 = Logger.payments.unsafeMutableAddressor();
  (*(v59 + 16))(v7, v9, v61);
  v72 = 7;
  v10 = swift_allocObject();
  v11 = v63;
  v12 = v64;
  v13 = v65;
  v69 = v10;
  v10[2] = v62;
  v10[3] = v11;
  v10[4] = v12;
  v66 = v13[13];
  v10[5] = v66;
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.debug.getter();
  v67 = 17;
  v77 = swift_allocObject();
  *(v77 + 16) = 32;
  v79 = swift_allocObject();
  *(v79 + 16) = 8;
  v71 = 32;
  v14 = swift_allocObject();
  v15 = v69;
  v73 = v14;
  *(v14 + 16) = v68;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v73;
  v75 = v16;
  *(v16 + 16) = v70;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v75;
  v82 = v18;
  *(v18 + 16) = v74;
  *(v18 + 24) = v19;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v80 = _allocateUninitializedArray<A>(_:)();
  v83 = v20;

  v21 = v77;
  v22 = v83;
  *v83 = v76;
  v22[1] = v21;

  v23 = v79;
  v24 = v83;
  v83[2] = v78;
  v24[3] = v23;

  v25 = v82;
  v26 = v83;
  v83[4] = v81;
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v85, v86))
  {
    v27 = v40;
    v32 = static UnsafeMutablePointer.allocate(capacity:)();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(0);
    v34 = createStorage<A>(capacity:type:)(1);
    v35 = v91;
    v91[0] = v32;
    v36 = &v90;
    v90 = v33;
    v37 = &v89;
    v89 = v34;
    serialize(_:at:)(2, v91);
    serialize(_:at:)(1, v35);
    v87 = v76;
    v88 = v77;
    closure #1 in osLogInternal(_:log:type:)(&v87, v35, v36, v37);
    v38 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v87 = v78;
      v88 = v79;
      closure #1 in osLogInternal(_:log:type:)(&v87, v91, &v90, &v89);
      v30[1] = 0;
      v87 = v81;
      v88 = v82;
      closure #1 in osLogInternal(_:log:type:)(&v87, v91, &v90, &v89);
      _os_log_impl(&dword_2686B1000, v85, v86, "#ContactDisambiguationStrategy<%s> actionForInput", v32, 0xCu);
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v34, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v32, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v85);
  (*(v59 + 8))(v58, v61);
  Input.parse.getter();
  if ((*(v42 + 88))(v47, v41) == *MEMORY[0x277D5C160])
  {
    v28 = v53;
    (*(v42 + 96))(v47, v41);
    (*(v50 + 32))(v28, v47, v49);
    if (USOParse.isOrdinalDisambiguation.getter())
    {
      static ActionForInput.handle()();
      return (*(v50 + 8))(v53, v49);
    }

    (*(v50 + 8))(v53, v49);
  }

  else
  {
    (*(v42 + 8))(v47, v41);
  }

  Input.parse.getter();
  static FlowUtil.actionForInput(parse:intentType:)(v45, v62, *(v66 + 8), v39);
  return (*(v42 + 8))(v45, v41);
}

uint64_t ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1)
{
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v13 = *v1;
  v2[8] = *v1;
  v2[9] = v13[10];
  v3 = type metadata accessor for ParameterResolutionRecord();
  v2[10] = v3;
  v8 = *(v3 - 8);
  v2[11] = v8;
  v2[12] = *(v8 + 64);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[14] = v4;
  v9 = *(v4 - 8);
  v2[15] = v9;
  v10 = *(v9 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v5 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v11;
  v2[19] = v13[11];
  v2[20] = v13[12];
  v6 = v2[2];

  return MEMORY[0x2822009F8](ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:), 0);
}

uint64_t ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  v101 = v0;
  v71 = v0[20];
  v70 = v0[19];
  v62 = v0[18];
  v1 = v0[17];
  v63 = v0[15];
  v64 = v0[14];
  v75 = v0[13];
  v68 = v0[12];
  v73 = v0[11];
  v76 = v0[10];
  v69 = v0[9];
  v66 = v0[8];
  v67 = v0[7];
  v0[2] = v0;
  v2 = SignpostName.makeDisambiguationItemContainer.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v62);
  v3 = Logger.payments.unsafeMutableAddressor();
  v65 = *(v63 + 16);
  v65(v1, v3, v64);
  v77 = swift_allocObject();
  v77[2] = v69;
  v77[3] = v70;
  v77[4] = v71;
  v72 = *(v66 + 104);
  v77[5] = v72;
  (*(v73 + 16))(v75, v67, v76);
  v74 = (*(v73 + 80) + 48) & ~*(v73 + 80);
  v80 = swift_allocObject();
  *(v80 + 2) = v69;
  *(v80 + 3) = v70;
  *(v80 + 4) = v71;
  *(v80 + 5) = v72;
  (*(v73 + 32))(&v80[v74], v75, v76);
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.debug.getter();
  v82 = swift_allocObject();
  *(v82 + 16) = 32;
  v83 = swift_allocObject();
  *(v83 + 16) = 8;
  v78 = swift_allocObject();
  *(v78 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v78 + 24) = v77;
  v79 = swift_allocObject();
  *(v79 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v79 + 24) = v78;
  v84 = swift_allocObject();
  *(v84 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v84 + 24) = v79;
  v85 = swift_allocObject();
  *(v85 + 16) = 64;
  v86 = swift_allocObject();
  *(v86 + 16) = 8;
  v81 = swift_allocObject();
  *(v81 + 16) = partial apply for implicit closure #2 in ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:);
  *(v81 + 24) = v80;
  v87 = swift_allocObject();
  *(v87 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v87 + 24) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v88 = v4;

  *v88 = partial apply for closure #1 in OSLogArguments.append(_:);
  v88[1] = v82;

  v88[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v88[3] = v83;

  v88[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v88[5] = v84;

  v88[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v88[7] = v85;

  v88[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v88[9] = v86;

  v88[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v88[11] = v87;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v89, v90))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v59 = createStorage<A>(capacity:type:)(1);
    v60 = createStorage<A>(capacity:type:)(1);
    v96 = buf;
    v97 = v59;
    v98 = v60;
    serialize(_:at:)(2, &v96);
    serialize(_:at:)(2, &v96);
    v99 = partial apply for closure #1 in OSLogArguments.append(_:);
    v100 = v82;
    closure #1 in osLogInternal(_:log:type:)(&v99, &v96, &v97, &v98);
    v99 = partial apply for closure #1 in OSLogArguments.append(_:);
    v100 = v83;
    closure #1 in osLogInternal(_:log:type:)(&v99, &v96, &v97, &v98);
    v99 = partial apply for closure #1 in OSLogArguments.append(_:);
    v100 = v84;
    closure #1 in osLogInternal(_:log:type:)(&v99, &v96, &v97, &v98);
    v99 = partial apply for closure #1 in OSLogArguments.append(_:);
    v100 = v85;
    closure #1 in osLogInternal(_:log:type:)(&v99, &v96, &v97, &v98);
    v99 = partial apply for closure #1 in OSLogArguments.append(_:);
    v100 = v86;
    closure #1 in osLogInternal(_:log:type:)(&v99, &v96, &v97, &v98);
    v99 = partial apply for closure #1 in OSLogArguments.append(_:);
    v100 = v87;
    closure #1 in osLogInternal(_:log:type:)(&v99, &v96, &v97, &v98);
    _os_log_impl(&dword_2686B1000, v89, v90, "#ContactDisambiguationStrategy<%s> Intent resolution result: %@", buf, 0x16u);
    destroyStorage<A>(_:count:)(v59, 1, v57);
    destroyStorage<A>(_:count:)(v60, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v50 = v61[17];
  v51 = v61[14];
  v53 = v61[10];
  v5 = v61[7];
  v49 = v61[15];
  MEMORY[0x277D82BD8](v89);
  v52 = *(v49 + 8);
  v52(v50, v51);
  v55 = ParameterResolutionRecord.result.getter();
  v54 = [v55 disambiguationItems];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v55);
  type metadata accessor for INPerson();
  v56 = _arrayConditionalCast<A, B>(_:)();
  if (v56)
  {
    v33 = v61[20];
    v32 = v61[19];
    v6 = v61[16];
    v30 = v61[14];
    v31 = v61[9];
    v61[5] = v56;

    MEMORY[0x277D82BD8](v54);
    v7 = Logger.payments.unsafeMutableAddressor();
    v65(v6, v7, v30);
    v35 = swift_allocObject();
    v35[2] = v31;
    v35[3] = v32;
    v35[4] = v33;
    v35[5] = v72;

    v34 = swift_allocObject();
    *(v34 + 16) = v56;

    v38 = swift_allocObject();
    *(v38 + 16) = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    *(v38 + 24) = v34;

    oslog = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    v40 = swift_allocObject();
    *(v40 + 16) = 32;
    v41 = swift_allocObject();
    *(v41 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
    *(v36 + 24) = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v37 + 24) = v36;
    v42 = swift_allocObject();
    *(v42 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v42 + 24) = v37;
    v43 = swift_allocObject();
    *(v43 + 16) = 32;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v39 = swift_allocObject();
    *(v39 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2;
    *(v39 + 24) = v38;
    v45 = swift_allocObject();
    *(v45 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v45 + 24) = v39;
    _allocateUninitializedArray<A>(_:)();
    v46 = v8;

    *v46 = partial apply for closure #1 in OSLogArguments.append(_:);
    v46[1] = v40;

    v46[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v46[3] = v41;

    v46[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v46[5] = v42;

    v46[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v46[7] = v43;

    v46[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v46[9] = v44;

    v46[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v46[11] = v45;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v48))
    {
      v27 = static UnsafeMutablePointer.allocate(capacity:)();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v28 = createStorage<A>(capacity:type:)(0);
      v29 = createStorage<A>(capacity:type:)(2);
      v91 = v27;
      v92 = v28;
      v93 = v29;
      serialize(_:at:)(2, &v91);
      serialize(_:at:)(2, &v91);
      v94 = partial apply for closure #1 in OSLogArguments.append(_:);
      v95 = v40;
      closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
      v94 = partial apply for closure #1 in OSLogArguments.append(_:);
      v95 = v41;
      closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
      v94 = partial apply for closure #1 in OSLogArguments.append(_:);
      v95 = v42;
      closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
      v94 = partial apply for closure #1 in OSLogArguments.append(_:);
      v95 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
      v94 = partial apply for closure #1 in OSLogArguments.append(_:);
      v95 = v44;
      closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
      v94 = partial apply for closure #1 in OSLogArguments.append(_:);
      v95 = v45;
      closure #1 in osLogInternal(_:log:type:)(&v94, &v91, &v92, &v93);
      _os_log_impl(&dword_2686B1000, oslog, v48, "#ContactDisambiguationStrategy<%s> INPersons retrieved from disambiguation items: %s", v27, 0x16u);
      destroyStorage<A>(_:count:)(v28, 0, v26);
      destroyStorage<A>(_:count:)(v29, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v27, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v24 = v61[16];
    v25 = v61[14];
    MEMORY[0x277D82BD8](oslog);
    v52(v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8INPersonCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8INPersonCGMR);
    v61[6] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    lazy protocol witness table accessor for type [INPerson] and conformance [A]();
    Sequence.sorted(by:)();
    v19 = v61[18];
    v20 = v61[17];
    v21 = v61[16];
    v22 = v61[13];
    v23 = BasicDisambiguationItemContainer.__allocating_init(_:_:)();

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v19);

    v9 = *(v61[2] + 8);
    v10 = v61[2];

    return v9(v23);
  }

  else
  {
    v15 = v61[18];
    v16 = v61[17];
    v17 = v61[16];
    v18 = v61[13];

    MEMORY[0x277D82BD8](v54);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 48) = 17;
    swift_willThrow();
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v15);

    v13 = *(v61[2] + 8);
    v14 = v61[2];

    return v13();
  }
}

uint64_t closure #1 in ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)(id *a1, id *a2)
{
  v5 = *a2;
  v9 = [*a1 0x1FB359778];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v2;
  v7 = [v5 0x1FB359778];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = MEMORY[0x26D620720](v6, v8, v3);

  MEMORY[0x277D82BD8](v7);

  MEMORY[0x277D82BD8](v9);
  return v10 & 1;
}

uint64_t ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[60] = v4;
  v5[59] = a4;
  v5[58] = a3;
  v5[57] = a2;
  v5[56] = a1;
  v5[33] = v5;
  v5[34] = 0;
  v5[35] = 0;
  v5[36] = 0;
  v5[37] = 0;
  v5[38] = 0;
  v5[40] = 0;
  v5[43] = 0;
  v5[44] = 0;
  v5[47] = 0;
  v5[49] = 0;
  v5[50] = 0;
  v5[51] = 0;
  v5[53] = 0;
  v5[54] = 0;
  v5[31] = 0;
  v5[32] = 0;
  v5[55] = 0;
  v34 = *v4;
  v5[61] = *v4;
  v5[62] = v34[10];
  v6 = type metadata accessor for IntentPromptAnswer();
  v5[63] = v6;
  v20 = *(v6 - 8);
  v5[64] = v20;
  v7 = *(v20 + 64) + 15;
  v5[65] = swift_task_alloc();
  v8 = type metadata accessor for ParameterIdentifier();
  v5[66] = v8;
  v21 = *(v8 - 8);
  v5[67] = v21;
  v9 = *(v21 + 64) + 15;
  v5[68] = swift_task_alloc();
  v10 = type metadata accessor for PersonNameComponents();
  v5[69] = v10;
  v22 = *(v10 - 8);
  v5[70] = v22;
  v11 = *(v22 + 64) + 15;
  v5[71] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR) - 8) + 64);
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v5[75] = v12;
  v24 = *(v12 - 8);
  v5[76] = v24;
  v5[77] = *(v24 + 64);
  v5[78] = swift_task_alloc();
  v13 = type metadata accessor for Parse.DirectInvocation();
  v5[79] = v13;
  v25 = *(v13 - 8);
  v5[80] = v25;
  v14 = *(v25 + 64) + 15;
  v5[81] = swift_task_alloc();
  v15 = type metadata accessor for Parse();
  v5[82] = v15;
  v26 = *(v15 - 8);
  v5[83] = v26;
  v27 = *(v26 + 64);
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v5[87] = v16;
  v28 = *(v16 - 8);
  v5[88] = v28;
  v29 = *(v28 + 64);
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v5[98] = swift_task_alloc();
  v17 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v5[99] = swift_task_alloc();
  v5[34] = a2;
  v5[35] = a3;
  v5[36] = a4;
  v5[37] = v33;
  v5[100] = v34[11];
  v5[101] = v34[12];
  v18 = v5[33];

  return MEMORY[0x2822009F8](ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:), 0);
}

uint64_t ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1)
{
  v516 = v1;
  MEMORY[0x28223BE20](a1);
  v452 = *(v1 + 808);
  v451 = *(v1 + 800);
  v446 = *(v1 + 792);
  v2 = *(v1 + 784);
  v447 = *(v1 + 704);
  v448 = *(v1 + 696);
  v450 = *(v1 + 496);
  v453 = *(v1 + 488);
  *(v1 + 264) = v1;
  v3 = SignpostName.parseDisambiguationResult.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v3, v3[1], *(v3 + 16), v446);
  v4 = Logger.payments.unsafeMutableAddressor();
  v449 = *(v447 + 16);
  v449(v2, v4, v448);
  v455 = swift_allocObject();
  v455[2] = v450;
  v455[3] = v451;
  v455[4] = v452;
  v454 = *(v453 + 104);
  v455[5] = v454;
  oslog = Logger.logObject.getter();
  v463 = static os_log_type_t.debug.getter();
  v458 = swift_allocObject();
  *(v458 + 16) = 32;
  v459 = swift_allocObject();
  *(v459 + 16) = 8;
  v456 = swift_allocObject();
  *(v456 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v456 + 24) = v455;
  v457 = swift_allocObject();
  *(v457 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v457 + 24) = v456;
  v460 = swift_allocObject();
  *(v460 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v460 + 24) = v457;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v461 = v5;

  *v461 = partial apply for closure #1 in OSLogArguments.append(_:);
  v461[1] = v458;

  v461[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v461[3] = v459;

  v461[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v461[5] = v460;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v463))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v444 = createStorage<A>(capacity:type:)(0);
    v445 = createStorage<A>(capacity:type:)(1);
    v511 = buf;
    v512 = v444;
    v513 = v445;
    serialize(_:at:)(2, &v511);
    serialize(_:at:)(1, &v511);
    v514 = partial apply for closure #1 in OSLogArguments.append(_:);
    v515 = v458;
    closure #1 in osLogInternal(_:log:type:)(&v514, &v511, &v512, &v513);
    v514 = partial apply for closure #1 in OSLogArguments.append(_:);
    v515 = v459;
    closure #1 in osLogInternal(_:log:type:)(&v514, &v511, &v512, &v513);
    v514 = partial apply for closure #1 in OSLogArguments.append(_:);
    v515 = v460;
    closure #1 in osLogInternal(_:log:type:)(&v514, &v511, &v512, &v513);
    _os_log_impl(&dword_2686B1000, oslog, v463, "#ContactDisambiguationStrategy<%s> Running parseDisambiguationResult()", buf, 0xCu);
    destroyStorage<A>(_:count:)(v444, 0, v442);
    destroyStorage<A>(_:count:)(v445, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v430 = *(v1 + 784);
  v431 = *(v1 + 696);
  v440 = *(v1 + 688);
  v441 = *(v1 + 656);
  v433 = *(v1 + 600);
  v6 = *(v1 + 464);
  v435 = *(v1 + 456);
  v429 = *(v1 + 704);
  v439 = *(v1 + 664);
  MEMORY[0x277D82BD8](oslog);
  v432 = *(v429 + 8);
  v432(v430, v431);
  v434 = swift_allocObject();
  *(v1 + 304) = v434 + 16;
  *(v434 + 16) = 0;
  *(v434 + 24) = 0;
  *(v1 + 312) = 0;
  v437 = PaginatedItemContainer.items.getter();
  v436 = type metadata accessor for INPerson();
  v438 = MEMORY[0x26D620910](v437);
  *(v1 + 320) = v438;

  Input.parse.getter();
  if ((*(v439 + 88))(v440, v441) != *MEMORY[0x277D5C150])
  {
    v360 = *(v1 + 680);
    v361 = *(v1 + 656);
    v358 = *(v1 + 480);
    v19 = *(v1 + 456);
    v359 = *(v1 + 664);
    Input.parse.getter();
    outlined init with copy of GlobalsProviding(v358 + 24, v1 + 16);
    v357 = *(v1 + 40);
    v356 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v357);
    (*(v356 + 24))(v357);
    outlined init with copy of GlobalsProviding(v358 + 72, v1 + 96);
    v363 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(0, 0, v1 + 56, v1 + 96);
    __swift_destroy_boxed_opaque_existential_0((v1 + 96));
    __swift_destroy_boxed_opaque_existential_0((v1 + 56));
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
    v362 = *(v359 + 8);
    v362(v360, v361);
    if (v363)
    {
      v20 = *(v1 + 496);
      v355 = swift_dynamicCastUnknownClass();
      if (v355)
      {
        v354 = v355;
      }

      else
      {
        MEMORY[0x277D82BD8](v363);
        v354 = 0;
      }

      v353 = v354;
    }

    else
    {
      v353 = 0;
    }

    if (v353)
    {
      v338 = *(v1 + 808);
      v337 = *(v1 + 800);
      v21 = *(v1 + 760);
      v335 = *(v1 + 696);
      v336 = *(v1 + 496);
      *(v1 + 424) = v353;
      v22 = Logger.payments.unsafeMutableAddressor();
      v449(v21, v22, v335);
      v339 = swift_allocObject();
      v339[2] = v336;
      v339[3] = v337;
      v339[4] = v338;
      v339[5] = v454;
      MEMORY[0x277D82BE0](v353);
      v342 = swift_allocObject();
      v342[2] = v336;
      v342[3] = v337;
      v342[4] = v338;
      v342[5] = v454;
      v342[6] = v353;
      v351 = Logger.logObject.getter();
      v352 = static os_log_type_t.debug.getter();
      v344 = swift_allocObject();
      *(v344 + 16) = 32;
      v345 = swift_allocObject();
      *(v345 + 16) = 8;
      v340 = swift_allocObject();
      *(v340 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
      *(v340 + 24) = v339;
      v341 = swift_allocObject();
      *(v341 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v341 + 24) = v340;
      v346 = swift_allocObject();
      *(v346 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v346 + 24) = v341;
      v347 = swift_allocObject();
      *(v347 + 16) = 32;
      v348 = swift_allocObject();
      *(v348 + 16) = 8;
      v343 = swift_allocObject();
      *(v343 + 16) = partial apply for implicit closure #7 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
      *(v343 + 24) = v342;
      v349 = swift_allocObject();
      *(v349 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v349 + 24) = v343;
      _allocateUninitializedArray<A>(_:)();
      v350 = v23;

      *v350 = partial apply for closure #1 in OSLogArguments.append(_:);
      v350[1] = v344;

      v350[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v350[3] = v345;

      v350[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v350[5] = v346;

      v350[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v350[7] = v347;

      v350[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v350[9] = v348;

      v350[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v350[11] = v349;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v351, v352))
      {
        v332 = static UnsafeMutablePointer.allocate(capacity:)();
        v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v333 = createStorage<A>(capacity:type:)(0);
        v334 = createStorage<A>(capacity:type:)(2);
        v496 = v332;
        v497 = v333;
        v498 = v334;
        serialize(_:at:)(2, &v496);
        serialize(_:at:)(2, &v496);
        v499 = partial apply for closure #1 in OSLogArguments.append(_:);
        v500 = v344;
        closure #1 in osLogInternal(_:log:type:)(&v499, &v496, &v497, &v498);
        v499 = partial apply for closure #1 in OSLogArguments.append(_:);
        v500 = v345;
        closure #1 in osLogInternal(_:log:type:)(&v499, &v496, &v497, &v498);
        v499 = partial apply for closure #1 in OSLogArguments.append(_:);
        v500 = v346;
        closure #1 in osLogInternal(_:log:type:)(&v499, &v496, &v497, &v498);
        v499 = partial apply for closure #1 in OSLogArguments.append(_:);
        v500 = v347;
        closure #1 in osLogInternal(_:log:type:)(&v499, &v496, &v497, &v498);
        v499 = partial apply for closure #1 in OSLogArguments.append(_:);
        v500 = v348;
        closure #1 in osLogInternal(_:log:type:)(&v499, &v496, &v497, &v498);
        v499 = partial apply for closure #1 in OSLogArguments.append(_:);
        v500 = v349;
        closure #1 in osLogInternal(_:log:type:)(&v499, &v496, &v497, &v498);
        _os_log_impl(&dword_2686B1000, v351, v352, "#ContactDisambiguationStrategy<%s> parseDisambiguationResult, Intent: %s", v332, 0x16u);
        destroyStorage<A>(_:count:)(v333, 0, v331);
        destroyStorage<A>(_:count:)(v334, 2, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v332, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v328 = *(v1 + 760);
      v329 = *(v1 + 696);
      v330 = *(v1 + 672);
      v24 = *(v1 + 456);
      MEMORY[0x277D82BD8](v351);
      v432(v328, v329);
      Input.parse.getter();
      v26 = Parse.toContactId()();
      v362(*(v1 + 672), *(v1 + 656));
      if (v25)
      {

        v327._countAndFlagsBits = 0;
        v327._object = 0;
      }

      else
      {
        v327 = v26;
      }

      v27 = *(v434 + 24);
      *(v434 + 16) = v327;

      MEMORY[0x277D82BD8](v353);
    }

    v362(*(v1 + 688), *(v1 + 656));
    v364 = 0;
    v365 = 1;
    goto LABEL_33;
  }

  v423 = *(v1 + 688);
  v7 = *(v1 + 656);
  v425 = *(v1 + 648);
  v424 = *(v1 + 632);
  v422 = *(v1 + 640);
  (*(*(v1 + 664) + 96))();
  (*(v422 + 32))(v425, v423, v424);
  *(v1 + 432) = v425;
  v426 = static PaymentsDirectInvocations.from(_:)(v425);
  v427 = v9;
  v428 = v8;
  if (v8 == 255)
  {
    goto LABEL_16;
  }

  if (!v8)
  {
    v389 = *(v1 + 808);
    v388 = *(v1 + 800);
    v13 = *(v1 + 776);
    v386 = *(v1 + 696);
    v387 = *(v1 + 496);
    *(v1 + 440) = v426;
    v14 = Logger.payments.unsafeMutableAddressor();
    v449(v13, v14, v386);
    v390 = swift_allocObject();
    v390[2] = v387;
    v390[3] = v388;
    v390[4] = v389;
    v390[5] = v454;
    v393 = swift_allocObject();
    *(v393 + 16) = v426;
    log = Logger.logObject.getter();
    v403 = static os_log_type_t.debug.getter();
    v395 = swift_allocObject();
    *(v395 + 16) = 32;
    v396 = swift_allocObject();
    *(v396 + 16) = 8;
    v391 = swift_allocObject();
    *(v391 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
    *(v391 + 24) = v390;
    v392 = swift_allocObject();
    *(v392 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v392 + 24) = v391;
    v397 = swift_allocObject();
    *(v397 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v397 + 24) = v392;
    v398 = swift_allocObject();
    *(v398 + 16) = 0;
    v399 = swift_allocObject();
    *(v399 + 16) = 8;
    v394 = swift_allocObject();
    *(v394 + 16) = partial apply for implicit closure #21 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
    *(v394 + 24) = v393;
    v400 = swift_allocObject();
    *(v400 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(v400 + 24) = v394;
    _allocateUninitializedArray<A>(_:)();
    v401 = v15;

    *v401 = partial apply for closure #1 in OSLogArguments.append(_:);
    v401[1] = v395;

    v401[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v401[3] = v396;

    v401[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v401[5] = v397;

    v401[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v401[7] = v398;

    v401[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v401[9] = v399;

    v401[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v401[11] = v400;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v403))
    {
      v383 = static UnsafeMutablePointer.allocate(capacity:)();
      v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v384 = createStorage<A>(capacity:type:)(0);
      v385 = createStorage<A>(capacity:type:)(1);
      v506 = v383;
      v507 = v384;
      v508 = v385;
      serialize(_:at:)(2, &v506);
      serialize(_:at:)(2, &v506);
      v509 = partial apply for closure #1 in OSLogArguments.append(_:);
      v510 = v395;
      closure #1 in osLogInternal(_:log:type:)(&v509, &v506, &v507, &v508);
      v509 = partial apply for closure #1 in OSLogArguments.append(_:);
      v510 = v396;
      closure #1 in osLogInternal(_:log:type:)(&v509, &v506, &v507, &v508);
      v509 = partial apply for closure #1 in OSLogArguments.append(_:);
      v510 = v397;
      closure #1 in osLogInternal(_:log:type:)(&v509, &v506, &v507, &v508);
      v509 = partial apply for closure #1 in OSLogArguments.append(_:);
      v510 = v398;
      closure #1 in osLogInternal(_:log:type:)(&v509, &v506, &v507, &v508);
      v509 = partial apply for closure #1 in OSLogArguments.append(_:);
      v510 = v399;
      closure #1 in osLogInternal(_:log:type:)(&v509, &v506, &v507, &v508);
      v509 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
      v510 = v400;
      closure #1 in osLogInternal(_:log:type:)(&v509, &v506, &v507, &v508);
      _os_log_impl(&dword_2686B1000, log, v403, "#ContactDisambiguationStrategy<%s> parseDisambiguationResult, personDisambiguation DI selected index: %ld", v383, 0x16u);
      destroyStorage<A>(_:count:)(v384, 0, v382);
      destroyStorage<A>(_:count:)(v385, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v383, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v378 = *(v1 + 776);
    v379 = *(v1 + 696);
    MEMORY[0x277D82BD8](log);
    v432(v378, v379);
    outlined consume of PaymentsDirectInvocations?(v426, v427, 0);
    v380 = v426;
    v381 = 0;
    goto LABEL_17;
  }

  if (v8 != 2)
  {
LABEL_16:
    v371 = *(v1 + 792);
    v369 = *(v1 + 648);
    v370 = *(v1 + 632);
    v368 = *(v1 + 640);
    v367 = Parse.DirectInvocation.identifier.getter();
    v366 = v17;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v18 = v367;
    *(v18 + 8) = v366;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    swift_willThrow();
    outlined consume of PaymentsDirectInvocations?(v426, v427, v428);
    (*(v368 + 8))(v369, v370);
    outlined destroy of SFRichText?((v1 + 312));

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v371);
    goto LABEL_105;
  }

  v407 = *(v1 + 808);
  v406 = *(v1 + 800);
  v10 = *(v1 + 768);
  v404 = *(v1 + 696);
  v405 = *(v1 + 496);

  *(v1 + 248) = v426;
  *(v1 + 256) = v427;
  v11 = Logger.payments.unsafeMutableAddressor();
  v449(v10, v11, v404);
  v408 = swift_allocObject();
  v408[2] = v405;
  v408[3] = v406;
  v408[4] = v407;
  v408[5] = v454;

  v411 = swift_allocObject();
  *(v411 + 16) = v426;
  *(v411 + 24) = v427;
  v420 = Logger.logObject.getter();
  v421 = static os_log_type_t.debug.getter();
  v413 = swift_allocObject();
  *(v413 + 16) = 32;
  v414 = swift_allocObject();
  *(v414 + 16) = 8;
  v409 = swift_allocObject();
  *(v409 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v409 + 24) = v408;
  v410 = swift_allocObject();
  *(v410 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v410 + 24) = v409;
  v415 = swift_allocObject();
  *(v415 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v415 + 24) = v410;
  v416 = swift_allocObject();
  *(v416 + 16) = 32;
  v417 = swift_allocObject();
  *(v417 + 16) = 8;
  v412 = swift_allocObject();
  *(v412 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v412 + 24) = v411;
  v418 = swift_allocObject();
  *(v418 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v418 + 24) = v412;
  _allocateUninitializedArray<A>(_:)();
  v419 = v12;

  *v419 = partial apply for closure #1 in OSLogArguments.append(_:);
  v419[1] = v413;

  v419[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v419[3] = v414;

  v419[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v419[5] = v415;

  v419[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v419[7] = v416;

  v419[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v419[9] = v417;

  v419[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v419[11] = v418;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v420, v421))
  {
    v375 = static UnsafeMutablePointer.allocate(capacity:)();
    v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v376 = createStorage<A>(capacity:type:)(0);
    v377 = createStorage<A>(capacity:type:)(2);
    v501 = v375;
    v502 = v376;
    v503 = v377;
    serialize(_:at:)(2, &v501);
    serialize(_:at:)(2, &v501);
    v504 = partial apply for closure #1 in OSLogArguments.append(_:);
    v505 = v413;
    closure #1 in osLogInternal(_:log:type:)(&v504, &v501, &v502, &v503);
    v504 = partial apply for closure #1 in OSLogArguments.append(_:);
    v505 = v414;
    closure #1 in osLogInternal(_:log:type:)(&v504, &v501, &v502, &v503);
    v504 = partial apply for closure #1 in OSLogArguments.append(_:);
    v505 = v415;
    closure #1 in osLogInternal(_:log:type:)(&v504, &v501, &v502, &v503);
    v504 = partial apply for closure #1 in OSLogArguments.append(_:);
    v505 = v416;
    closure #1 in osLogInternal(_:log:type:)(&v504, &v501, &v502, &v503);
    v504 = partial apply for closure #1 in OSLogArguments.append(_:);
    v505 = v417;
    closure #1 in osLogInternal(_:log:type:)(&v504, &v501, &v502, &v503);
    v504 = partial apply for closure #1 in OSLogArguments.append(_:);
    v505 = v418;
    closure #1 in osLogInternal(_:log:type:)(&v504, &v501, &v502, &v503);
    _os_log_impl(&dword_2686B1000, v420, v421, "#ContactDisambiguationStrategy<%s> parseDisambiguationResult, contactPicker DI selected id: %s", v375, 0x16u);
    destroyStorage<A>(_:count:)(v376, 0, v374);
    destroyStorage<A>(_:count:)(v377, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v375, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v372 = *(v1 + 768);
  v373 = *(v1 + 696);
  MEMORY[0x277D82BD8](v420);
  v432(v372, v373);

  v16 = *(v434 + 24);
  *(v434 + 16) = v426;
  *(v434 + 24) = v427;

  outlined consume of PaymentsDirectInvocations?(v426, v427, v428);
  v380 = 0;
  v381 = 1;
LABEL_17:
  (*(*(v1 + 640) + 8))(*(v1 + 648), *(v1 + 632));
  v364 = v380;
  v365 = v381;
LABEL_33:
  v28 = *(v1 + 752);
  v308 = *(v1 + 696);
  v313 = *(v1 + 624);
  v311 = *(v1 + 616);
  v314 = *(v1 + 600);
  v310 = *(v1 + 464);
  v309 = *(v1 + 608);
  v29 = Logger.payments.unsafeMutableAddressor();
  v449(v28, v29, v308);

  (*(v309 + 16))(v313, v310, v314);
  v312 = (*(v309 + 80) + 16) & ~*(v309 + 80);
  v316 = swift_allocObject();
  (*(v309 + 32))(v316 + v312, v313, v314);
  v325 = Logger.logObject.getter();
  v326 = static os_log_type_t.debug.getter();
  v318 = swift_allocObject();
  *(v318 + 16) = 32;
  v319 = swift_allocObject();
  *(v319 + 16) = 8;
  v315 = swift_allocObject();
  *(v315 + 16) = partial apply for implicit closure #8 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
  *(v315 + 24) = v434;
  v320 = swift_allocObject();
  *(v320 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v320 + 24) = v315;
  v321 = swift_allocObject();
  *(v321 + 16) = 32;
  v322 = swift_allocObject();
  *(v322 + 16) = 8;
  v317 = swift_allocObject();
  *(v317 + 16) = partial apply for implicit closure #9 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
  *(v317 + 24) = v316;
  v323 = swift_allocObject();
  *(v323 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v323 + 24) = v317;
  _allocateUninitializedArray<A>(_:)();
  v324 = v30;

  *v324 = partial apply for closure #1 in OSLogArguments.append(_:);
  v324[1] = v318;

  v324[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v324[3] = v319;

  v324[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v324[5] = v320;

  v324[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v324[7] = v321;

  v324[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v324[9] = v322;

  v324[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v324[11] = v323;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v325, v326))
  {
    v305 = static UnsafeMutablePointer.allocate(capacity:)();
    v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v306 = createStorage<A>(capacity:type:)(0);
    v307 = createStorage<A>(capacity:type:)(2);
    v491 = v305;
    v492 = v306;
    v493 = v307;
    serialize(_:at:)(2, &v491);
    serialize(_:at:)(2, &v491);
    v494 = partial apply for closure #1 in OSLogArguments.append(_:);
    v495 = v318;
    closure #1 in osLogInternal(_:log:type:)(&v494, &v491, &v492, &v493);
    v494 = partial apply for closure #1 in OSLogArguments.append(_:);
    v495 = v319;
    closure #1 in osLogInternal(_:log:type:)(&v494, &v491, &v492, &v493);
    v494 = partial apply for closure #1 in OSLogArguments.append(_:);
    v495 = v320;
    closure #1 in osLogInternal(_:log:type:)(&v494, &v491, &v492, &v493);
    v494 = partial apply for closure #1 in OSLogArguments.append(_:);
    v495 = v321;
    closure #1 in osLogInternal(_:log:type:)(&v494, &v491, &v492, &v493);
    v494 = partial apply for closure #1 in OSLogArguments.append(_:);
    v495 = v322;
    closure #1 in osLogInternal(_:log:type:)(&v494, &v491, &v492, &v493);
    v494 = partial apply for closure #1 in OSLogArguments.append(_:);
    v495 = v323;
    closure #1 in osLogInternal(_:log:type:)(&v494, &v491, &v492, &v493);
    _os_log_impl(&dword_2686B1000, v325, v326, "comparing personId %s to paginatedItems: %s", v305, 0x16u);
    destroyStorage<A>(_:count:)(v306, 0, v304);
    destroyStorage<A>(_:count:)(v307, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v305, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v302 = *(v1 + 752);
  v303 = *(v1 + 696);
  MEMORY[0x277D82BD8](v325);
  v432(v302, v303);
  if ((v365 & 1) != 0 || (*(v1 + 408) = v364, v364 < 0) || v364 >= v438)
  {
    v36 = *(v1 + 600);
    v37 = *(v1 + 464);
    *(v1 + 336) = PaginatedItemContainer.items.getter();
    *(swift_task_alloc() + 16) = v434 + 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    lazy protocol witness table accessor for type [INPerson] and conformance [A]();
    Sequence.first(where:)();

    outlined destroy of [SFCardSection]((v1 + 336));
    v275 = *(v1 + 328);
    if (v275)
    {
      v260 = *(v1 + 808);
      v259 = *(v1 + 800);
      v38 = *(v1 + 736);
      v257 = *(v1 + 696);
      v258 = *(v1 + 496);
      *(v1 + 400) = v275;
      MEMORY[0x277D82BE0](v275);
      MEMORY[0x277D82BE0](v275);
      v39 = *(v1 + 312);
      *(v1 + 312) = v275;
      MEMORY[0x277D82BD8](v39);
      v40 = Logger.payments.unsafeMutableAddressor();
      v449(v38, v40, v257);
      v261 = swift_allocObject();
      v261[2] = v258;
      v261[3] = v259;
      v261[4] = v260;
      v261[5] = v454;
      v264 = swift_allocObject();
      *(v264 + 16) = v275;
      v273 = Logger.logObject.getter();
      v274 = static os_log_type_t.debug.getter();
      v266 = swift_allocObject();
      *(v266 + 16) = 32;
      v267 = swift_allocObject();
      *(v267 + 16) = 8;
      v262 = swift_allocObject();
      *(v262 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
      *(v262 + 24) = v261;
      v263 = swift_allocObject();
      *(v263 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v263 + 24) = v262;
      v268 = swift_allocObject();
      *(v268 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v268 + 24) = v263;
      v269 = swift_allocObject();
      *(v269 + 16) = 32;
      v270 = swift_allocObject();
      *(v270 + 16) = 8;
      v265 = swift_allocObject();
      *(v265 + 16) = partial apply for specialized implicit closure #13 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
      *(v265 + 24) = v264;
      v271 = swift_allocObject();
      *(v271 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v271 + 24) = v265;
      _allocateUninitializedArray<A>(_:)();
      v272 = v41;

      *v272 = partial apply for closure #1 in OSLogArguments.append(_:);
      v272[1] = v266;

      v272[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v272[3] = v267;

      v272[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v272[5] = v268;

      v272[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v272[7] = v269;

      v272[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v272[9] = v270;

      v272[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v272[11] = v271;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v273, v274))
      {
        v254 = static UnsafeMutablePointer.allocate(capacity:)();
        v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v255 = createStorage<A>(capacity:type:)(0);
        v256 = createStorage<A>(capacity:type:)(2);
        v481 = v254;
        v482 = v255;
        v483 = v256;
        serialize(_:at:)(2, &v481);
        serialize(_:at:)(2, &v481);
        v484 = partial apply for closure #1 in OSLogArguments.append(_:);
        v485 = v266;
        closure #1 in osLogInternal(_:log:type:)(&v484, &v481, &v482, &v483);
        v484 = partial apply for closure #1 in OSLogArguments.append(_:);
        v485 = v267;
        closure #1 in osLogInternal(_:log:type:)(&v484, &v481, &v482, &v483);
        v484 = partial apply for closure #1 in OSLogArguments.append(_:);
        v485 = v268;
        closure #1 in osLogInternal(_:log:type:)(&v484, &v481, &v482, &v483);
        v484 = partial apply for closure #1 in OSLogArguments.append(_:);
        v485 = v269;
        closure #1 in osLogInternal(_:log:type:)(&v484, &v481, &v482, &v483);
        v484 = partial apply for closure #1 in OSLogArguments.append(_:);
        v485 = v270;
        closure #1 in osLogInternal(_:log:type:)(&v484, &v481, &v482, &v483);
        v484 = partial apply for closure #1 in OSLogArguments.append(_:);
        v485 = v271;
        closure #1 in osLogInternal(_:log:type:)(&v484, &v481, &v482, &v483);
        _os_log_impl(&dword_2686B1000, v273, v274, "#ContactDisambiguationStrategy<%s> parseDisambiguationResult, selected person by ID: %s", v254, 0x16u);
        destroyStorage<A>(_:count:)(v255, 0, v253);
        destroyStorage<A>(_:count:)(v256, 2, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v254, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v251 = *(v1 + 736);
      v252 = *(v1 + 696);
      MEMORY[0x277D82BD8](v273);
      v432(v251, v252);
      MEMORY[0x277D82BD8](v275);
    }
  }

  else
  {
    v286 = *(v1 + 808);
    v285 = *(v1 + 800);
    v282 = *(v1 + 744);
    v283 = *(v1 + 696);
    v31 = *(v1 + 600);
    v284 = *(v1 + 496);
    v32 = *(v1 + 464);
    PaginatedItemContainer.items.getter();
    Array.subscript.getter();
    v287 = *(v1 + 416);

    MEMORY[0x277D82BE0](v287);
    v33 = *(v1 + 312);
    *(v1 + 312) = v287;
    MEMORY[0x277D82BD8](v33);
    v34 = Logger.payments.unsafeMutableAddressor();
    v449(v282, v34, v283);
    v288 = swift_allocObject();
    v288[2] = v284;
    v288[3] = v285;
    v288[4] = v286;
    v288[5] = v454;
    v291 = swift_allocObject();
    *(v291 + 16) = v287;
    v300 = Logger.logObject.getter();
    v301 = static os_log_type_t.debug.getter();
    v293 = swift_allocObject();
    *(v293 + 16) = 32;
    v294 = swift_allocObject();
    *(v294 + 16) = 8;
    v289 = swift_allocObject();
    *(v289 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
    *(v289 + 24) = v288;
    v290 = swift_allocObject();
    *(v290 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v290 + 24) = v289;
    v295 = swift_allocObject();
    *(v295 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v295 + 24) = v290;
    v296 = swift_allocObject();
    *(v296 + 16) = 32;
    v297 = swift_allocObject();
    *(v297 + 16) = 8;
    v292 = swift_allocObject();
    *(v292 + 16) = partial apply for specialized implicit closure #13 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
    *(v292 + 24) = v291;
    v298 = swift_allocObject();
    *(v298 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v298 + 24) = v292;
    _allocateUninitializedArray<A>(_:)();
    v299 = v35;

    *v299 = partial apply for closure #1 in OSLogArguments.append(_:);
    v299[1] = v293;

    v299[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v299[3] = v294;

    v299[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v299[5] = v295;

    v299[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v299[7] = v296;

    v299[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v299[9] = v297;

    v299[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v299[11] = v298;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v300, v301))
    {
      v279 = static UnsafeMutablePointer.allocate(capacity:)();
      v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v280 = createStorage<A>(capacity:type:)(0);
      v281 = createStorage<A>(capacity:type:)(2);
      v486 = v279;
      v487 = v280;
      v488 = v281;
      serialize(_:at:)(2, &v486);
      serialize(_:at:)(2, &v486);
      v489 = partial apply for closure #1 in OSLogArguments.append(_:);
      v490 = v293;
      closure #1 in osLogInternal(_:log:type:)(&v489, &v486, &v487, &v488);
      v489 = partial apply for closure #1 in OSLogArguments.append(_:);
      v490 = v294;
      closure #1 in osLogInternal(_:log:type:)(&v489, &v486, &v487, &v488);
      v489 = partial apply for closure #1 in OSLogArguments.append(_:);
      v490 = v295;
      closure #1 in osLogInternal(_:log:type:)(&v489, &v486, &v487, &v488);
      v489 = partial apply for closure #1 in OSLogArguments.append(_:);
      v490 = v296;
      closure #1 in osLogInternal(_:log:type:)(&v489, &v486, &v487, &v488);
      v489 = partial apply for closure #1 in OSLogArguments.append(_:);
      v490 = v297;
      closure #1 in osLogInternal(_:log:type:)(&v489, &v486, &v487, &v488);
      v489 = partial apply for closure #1 in OSLogArguments.append(_:);
      v490 = v298;
      closure #1 in osLogInternal(_:log:type:)(&v489, &v486, &v487, &v488);
      _os_log_impl(&dword_2686B1000, v300, v301, "#ContactDisambiguationStrategy<%s> parseDisambiguationResult, selected participant ordinally or by direct invocation: %s", v279, 0x16u);
      destroyStorage<A>(_:count:)(v280, 0, v278);
      destroyStorage<A>(_:count:)(v281, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v279, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v276 = *(v1 + 744);
    v277 = *(v1 + 696);
    MEMORY[0x277D82BD8](v300);
    v432(v276, v277);
  }

  swift_beginAccess();
  v250 = *(v1 + 312);
  MEMORY[0x277D82BE0](v250);
  swift_endAccess();
  if (v250)
  {
    MEMORY[0x277D82BE0](v250);
    *(v1 + 344) = v250;
    v249 = [v250 personHandle];
    if (v249)
    {
      *(v1 + 392) = v249;
      MEMORY[0x277D82BD8](v250);
      MEMORY[0x277D82BE0](v249);
      v247 = *(v1 + 344);
      MEMORY[0x277D82BE0](v247);
      MEMORY[0x277D82BE0](v247);
      v248 = [v247 nameComponents];
      if (v248)
      {
        v246 = *(v1 + 592);
        v244 = *(v1 + 568);
        v245 = *(v1 + 552);
        v243 = *(v1 + 560);
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v243 + 32))(v246, v244, v245);
        (*(v243 + 56))(v246, 0, 1, v245);
        MEMORY[0x277D82BD8](v248);
      }

      else
      {
        (*(*(v1 + 560) + 56))(*(v1 + 592), 1, 1, *(v1 + 552));
      }

      MEMORY[0x277D82BD8](v247);
      MEMORY[0x277D82BE0](v247);
      v242 = [v247 nameComponents];
      if (v242)
      {
        v241 = *(v1 + 576);
        v239 = *(v1 + 568);
        v240 = *(v1 + 552);
        v238 = *(v1 + 560);
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v238 + 32))(v241, v239, v240);
        (*(v238 + 56))(v241, 0, 1, v240);
        MEMORY[0x277D82BD8](v242);
      }

      else
      {
        (*(*(v1 + 560) + 56))(*(v1 + 576), 1, 1, *(v1 + 552));
      }

      v237 = *(v1 + 584);
      v236 = *(v1 + 552);
      v235 = *(v1 + 560);
      outlined init with take of PersonNameComponents?(*(v1 + 576), v237);
      if ((*(v235 + 48))(v237, 1, v236))
      {
        outlined destroy of PersonNameComponents?(*(v1 + 584));
        MEMORY[0x277D82BD8](v247);
        v234._countAndFlagsBits = 0;
        v234._object = 0;
      }

      else
      {
        v230 = *(v1 + 584);
        v232 = *(v1 + 568);
        v233 = *(v1 + 552);
        v231 = *(v1 + 560);
        (*(v231 + 16))(v232);
        outlined destroy of PersonNameComponents?(v230);
        MEMORY[0x277D82BD8](v247);
        v42 = PersonNameComponents.formatted()();
        (*(v231 + 8))(v232, v233);
        v234 = v42;
      }

      *(v1 + 232) = v234;
      if (*(v1 + 240))
      {
        v43 = *(v1 + 240);
        *(v1 + 216) = *(v1 + 232);
        *(v1 + 224) = v43;
      }

      else
      {
        v44 = String.EMPTY.unsafeMutableAddressor();
        outlined init with copy of String(v44, (v1 + 216));
        if (*(v1 + 240))
        {
          outlined destroy of String.UTF8View(v1 + 232);
        }
      }

      v226 = *(v1 + 216);
      v227 = *(v1 + 224);
      v228 = [v247 image];
      MEMORY[0x277D82BE0](v247);
      v229 = [v247 contactIdentifier];
      if (v229)
      {
        v222 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v223 = v45;
        MEMORY[0x277D82BD8](v229);
        v224 = v222;
        v225 = v223;
      }

      else
      {
        v224 = 0;
        v225 = 0;
      }

      MEMORY[0x277D82BD8](v247);
      v221 = [v247 customIdentifier];
      if (v221)
      {
        v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v218 = v46;
        MEMORY[0x277D82BD8](v221);
        v219 = v217;
        v220 = v218;
      }

      else
      {
        v219 = 0;
        v220 = 0;
      }

      v216 = *(v1 + 592);
      MEMORY[0x277D82BD8](v247);
      v47 = INPerson.__allocating_init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(v249, v216, v226, v227, v228, v224, v225, v219, v220);
      v48 = *(v1 + 344);
      *(v1 + 344) = v47;
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v249);
    }

    else
    {
      MEMORY[0x277D82BD8](v250);
    }

    v213 = *(v1 + 496);
    v49 = *(v1 + 472);
    type metadata accessor for ParameterResolutionRecord();
    v214 = ParameterResolutionRecord.intent.getter();
    v215 = (*(v454 + 16))(v213);
    MEMORY[0x277D82BD8](v214);
    if (v215)
    {
      v212 = [v215 siriMatches];
      if (v212)
      {
        v210 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        MEMORY[0x277D82BD8](v212);
        v211 = v210;
      }

      else
      {
        v211 = 0;
      }

      MEMORY[0x277D82BD8](v215);
      v209 = v211;
    }

    else
    {
      v209 = 0;
    }

    *(v1 + 360) = v209;
    if (*(v1 + 360))
    {
      v207 = *(v1 + 360);

      *(v1 + 352) = v207;
      v208 = v207;
    }

    else
    {
      v206 = Array.init()();

      *(v1 + 352) = v206;
      if (*(v1 + 360))
      {
        outlined destroy of [SFCardSection]((v1 + 360));
      }

      v208 = v206;
    }

    *(v1 + 368) = v208;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    lazy protocol witness table accessor for type [INPerson] and conformance [A]();
    v205 = Collection.isEmpty.getter();

    if (v205)
    {
      v195 = *(v1 + 808);
      v194 = *(v1 + 800);
      v50 = *(v1 + 728);
      v192 = *(v1 + 696);
      v193 = *(v1 + 496);
      v51 = Logger.payments.unsafeMutableAddressor();
      v449(v50, v51, v192);
      v196 = swift_allocObject();
      v196[2] = v193;
      v196[3] = v194;
      v196[4] = v195;
      v196[5] = v454;
      v203 = Logger.logObject.getter();
      v204 = static os_log_type_t.debug.getter();
      v199 = swift_allocObject();
      *(v199 + 16) = 32;
      v200 = swift_allocObject();
      *(v200 + 16) = 8;
      v197 = swift_allocObject();
      *(v197 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
      *(v197 + 24) = v196;
      v198 = swift_allocObject();
      *(v198 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v198 + 24) = v197;
      v201 = swift_allocObject();
      *(v201 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v201 + 24) = v198;
      _allocateUninitializedArray<A>(_:)();
      v202 = v52;

      *v202 = partial apply for closure #1 in OSLogArguments.append(_:);
      v202[1] = v199;

      v202[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v202[3] = v200;

      v202[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v202[5] = v201;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v203, v204))
      {
        v189 = static UnsafeMutablePointer.allocate(capacity:)();
        v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v190 = createStorage<A>(capacity:type:)(0);
        v191 = createStorage<A>(capacity:type:)(1);
        v476 = v189;
        v477 = v190;
        v478 = v191;
        serialize(_:at:)(2, &v476);
        serialize(_:at:)(1, &v476);
        v479 = partial apply for closure #1 in OSLogArguments.append(_:);
        v480 = v199;
        closure #1 in osLogInternal(_:log:type:)(&v479, &v476, &v477, &v478);
        v479 = partial apply for closure #1 in OSLogArguments.append(_:);
        v480 = v200;
        closure #1 in osLogInternal(_:log:type:)(&v479, &v476, &v477, &v478);
        v479 = partial apply for closure #1 in OSLogArguments.append(_:);
        v480 = v201;
        closure #1 in osLogInternal(_:log:type:)(&v479, &v476, &v477, &v478);
        _os_log_impl(&dword_2686B1000, v203, v204, "#ContactDisambiguationStrategy<%s> appending selectedPerson to empty persons array", v189, 0xCu);
        destroyStorage<A>(_:count:)(v190, 0, v188);
        destroyStorage<A>(_:count:)(v191, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v189, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v185 = *(v1 + 728);
      v186 = *(v1 + 696);
      MEMORY[0x277D82BD8](v203);
      v432(v185, v186);
      v187 = *(v1 + 344);
      MEMORY[0x277D82BE0](v187);
      *(v1 + 384) = v187;
      Array.append(_:)();
    }

    else
    {
      v183 = *(v1 + 544);
      v53 = *(v1 + 472);
      ParameterResolutionRecord.parameter.getter();
      v184 = ParameterIdentifier.multicardinalIndex.getter();
      if (v54)
      {
        (*(*(v1 + 536) + 8))(*(v1 + 544), *(v1 + 528));
      }

      else
      {
        v168 = *(v1 + 808);
        v167 = *(v1 + 800);
        v55 = *(v1 + 720);
        v165 = *(v1 + 696);
        v56 = *(v1 + 544);
        v57 = *(v1 + 536);
        v58 = *(v1 + 528);
        v166 = *(v1 + 496);
        *(v1 + 376) = v184;
        (*(v57 + 8))(v56, v58);
        v59 = Logger.payments.unsafeMutableAddressor();
        v449(v55, v59, v165);
        v169 = swift_allocObject();
        v169[2] = v166;
        v169[3] = v167;
        v169[4] = v168;
        v169[5] = v454;
        v172 = swift_allocObject();
        *(v172 + 16) = v184;
        v181 = Logger.logObject.getter();
        v182 = static os_log_type_t.debug.getter();
        v174 = swift_allocObject();
        *(v174 + 16) = 32;
        v175 = swift_allocObject();
        *(v175 + 16) = 8;
        v170 = swift_allocObject();
        *(v170 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
        *(v170 + 24) = v169;
        v171 = swift_allocObject();
        *(v171 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v171 + 24) = v170;
        v176 = swift_allocObject();
        *(v176 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v176 + 24) = v171;
        v177 = swift_allocObject();
        *(v177 + 16) = 0;
        v178 = swift_allocObject();
        *(v178 + 16) = 8;
        v173 = swift_allocObject();
        *(v173 + 16) = partial apply for implicit closure #21 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
        *(v173 + 24) = v172;
        v179 = swift_allocObject();
        *(v179 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
        *(v179 + 24) = v173;
        _allocateUninitializedArray<A>(_:)();
        v180 = v60;

        *v180 = partial apply for closure #1 in OSLogArguments.append(_:);
        v180[1] = v174;

        v180[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v180[3] = v175;

        v180[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v180[5] = v176;

        v180[6] = partial apply for closure #1 in OSLogArguments.append(_:);
        v180[7] = v177;

        v180[8] = partial apply for closure #1 in OSLogArguments.append(_:);
        v180[9] = v178;

        v180[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
        v180[11] = v179;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v181, v182))
        {
          v162 = static UnsafeMutablePointer.allocate(capacity:)();
          v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v163 = createStorage<A>(capacity:type:)(0);
          v164 = createStorage<A>(capacity:type:)(1);
          v471 = v162;
          v472 = v163;
          v473 = v164;
          serialize(_:at:)(2, &v471);
          serialize(_:at:)(2, &v471);
          v474 = partial apply for closure #1 in OSLogArguments.append(_:);
          v475 = v174;
          closure #1 in osLogInternal(_:log:type:)(&v474, &v471, &v472, &v473);
          v474 = partial apply for closure #1 in OSLogArguments.append(_:);
          v475 = v175;
          closure #1 in osLogInternal(_:log:type:)(&v474, &v471, &v472, &v473);
          v474 = partial apply for closure #1 in OSLogArguments.append(_:);
          v475 = v176;
          closure #1 in osLogInternal(_:log:type:)(&v474, &v471, &v472, &v473);
          v474 = partial apply for closure #1 in OSLogArguments.append(_:);
          v475 = v177;
          closure #1 in osLogInternal(_:log:type:)(&v474, &v471, &v472, &v473);
          v474 = partial apply for closure #1 in OSLogArguments.append(_:);
          v475 = v178;
          closure #1 in osLogInternal(_:log:type:)(&v474, &v471, &v472, &v473);
          v474 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
          v475 = v179;
          closure #1 in osLogInternal(_:log:type:)(&v474, &v471, &v472, &v473);
          _os_log_impl(&dword_2686B1000, v181, v182, "#ContactDisambiguationStrategy<%s> setting selectedPerson to multicardinalValueIndex %ld", v162, 0x16u);
          destroyStorage<A>(_:count:)(v163, 0, v161);
          destroyStorage<A>(_:count:)(v164, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v162, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v157 = *(v1 + 720);
        v158 = *(v1 + 696);
        MEMORY[0x277D82BD8](v181);
        v432(v157, v158);
        v159 = *(v1 + 344);
        MEMORY[0x277D82BE0](v159);
        v160 = Array.subscript.modify();
        v62 = *v61;
        *v61 = v159;
        MEMORY[0x277D82BD8](v62);
        v160();
      }
    }

    v135 = *(v1 + 792);
    v136 = *(v1 + 784);
    v137 = *(v1 + 776);
    v138 = *(v1 + 768);
    v139 = *(v1 + 760);
    v140 = *(v1 + 752);
    v141 = *(v1 + 744);
    v142 = *(v1 + 736);
    v143 = *(v1 + 728);
    v144 = *(v1 + 720);
    v145 = *(v1 + 712);
    v146 = *(v1 + 688);
    v147 = *(v1 + 680);
    v148 = *(v1 + 672);
    v149 = *(v1 + 648);
    v150 = *(v1 + 624);
    v151 = *(v1 + 592);
    v152 = *(v1 + 584);
    v153 = *(v1 + 576);
    v154 = *(v1 + 568);
    v155 = *(v1 + 544);
    v156 = *(v1 + 520);
    v134 = *(v1 + 504);
    v131 = *(v1 + 496);
    v126 = *(v1 + 472);
    v132 = *(v1 + 448);
    v133 = *(v1 + 512);
    v129 = ParameterResolutionRecord.intent.getter();
    v130 = *(v1 + 344);
    MEMORY[0x277D82BE0](v130);
    MEMORY[0x277D82BE0](v130);
    v127 = ParameterResolutionRecord.intent.getter();
    v63 = (*(v454 + 24))(v131);
    v128 = MEMORY[0x26D620690](v63);
    MEMORY[0x277D82BD8](v127);

    [v129 setValue:v130 forKeyPath:v128];
    MEMORY[0x277D82BD8](v128);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v129);
    v470 = v436;
    v469 = v130;
    ParameterResolutionRecord.intent.getter();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();
    static DisambiguationResult.chosenItem(_:)();
    (*(v133 + 8))(v156, v134);
    outlined destroy of [SFCardSection]((v1 + 352));
    MEMORY[0x277D82BD8](*(v1 + 344));
    outlined destroy of SFRichText?((v1 + 312));

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v135);

    v64 = *(*(v1 + 264) + 8);
    v65 = *(v1 + 264);

    return v64();
  }

  v107 = *(v1 + 808);
  v106 = *(v1 + 800);
  v67 = *(v1 + 712);
  v104 = *(v1 + 696);
  v105 = *(v1 + 496);
  v68 = Logger.payments.unsafeMutableAddressor();
  v449(v67, v68, v104);
  v108 = swift_allocObject();
  v108[2] = v105;
  v108[3] = v106;
  v108[4] = v107;
  v108[5] = v454;

  v112 = swift_allocObject();
  *(v112 + 16) = v364;
  *(v112 + 24) = v365 & 1;
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.error.getter();
  v114 = swift_allocObject();
  *(v114 + 16) = 32;
  v115 = swift_allocObject();
  *(v115 + 16) = 8;
  v109 = swift_allocObject();
  *(v109 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v109 + 24) = v108;
  v110 = swift_allocObject();
  *(v110 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v110 + 24) = v109;
  v116 = swift_allocObject();
  *(v116 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v116 + 24) = v110;
  v117 = swift_allocObject();
  *(v117 + 16) = 32;
  v118 = swift_allocObject();
  *(v118 + 16) = 8;
  v111 = swift_allocObject();
  *(v111 + 16) = partial apply for implicit closure #8 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
  *(v111 + 24) = v434;
  v119 = swift_allocObject();
  *(v119 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v119 + 24) = v111;
  v120 = swift_allocObject();
  *(v120 + 16) = 32;
  v121 = swift_allocObject();
  *(v121 + 16) = 8;
  v113 = swift_allocObject();
  *(v113 + 16) = partial apply for specialized implicit closure #16 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
  *(v113 + 24) = v112;
  v122 = swift_allocObject();
  *(v122 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v122 + 24) = v113;
  _allocateUninitializedArray<A>(_:)();
  v123 = v69;

  *v123 = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[1] = v114;

  v123[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[3] = v115;

  v123[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[5] = v116;

  v123[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[7] = v117;

  v123[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[9] = v118;

  v123[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[11] = v119;

  v123[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[13] = v120;

  v123[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[15] = v121;

  v123[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[17] = v122;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v124, v125))
  {
    v101 = static UnsafeMutablePointer.allocate(capacity:)();
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v102 = createStorage<A>(capacity:type:)(0);
    v103 = createStorage<A>(capacity:type:)(3);
    v464 = v101;
    v465 = v102;
    v466 = v103;
    serialize(_:at:)(2, &v464);
    serialize(_:at:)(3, &v464);
    v467 = partial apply for closure #1 in OSLogArguments.append(_:);
    v468 = v114;
    closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
    v467 = partial apply for closure #1 in OSLogArguments.append(_:);
    v468 = v115;
    closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
    v467 = partial apply for closure #1 in OSLogArguments.append(_:);
    v468 = v116;
    closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
    v467 = partial apply for closure #1 in OSLogArguments.append(_:);
    v468 = v117;
    closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
    v467 = partial apply for closure #1 in OSLogArguments.append(_:);
    v468 = v118;
    closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
    v467 = partial apply for closure #1 in OSLogArguments.append(_:);
    v468 = v119;
    closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
    v467 = partial apply for closure #1 in OSLogArguments.append(_:);
    v468 = v120;
    closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
    v467 = partial apply for closure #1 in OSLogArguments.append(_:);
    v468 = v121;
    closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
    v467 = partial apply for closure #1 in OSLogArguments.append(_:);
    v468 = v122;
    closure #1 in osLogInternal(_:log:type:)(&v467, &v464, &v465, &v466);
    _os_log_impl(&dword_2686B1000, v124, v125, "#ContactDisambiguationStrategy<%s> Could not resolve disambiguation selection from id: %s or index: %s", v101, 0x20u);
    destroyStorage<A>(_:count:)(v102, 0, v100);
    destroyStorage<A>(_:count:)(v103, 3, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v101, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v99 = *(v1 + 792);
  v95 = *(v1 + 712);
  v96 = *(v1 + 696);
  MEMORY[0x277D82BD8](v124);
  v432(v95, v96);
  swift_beginAccess();
  v97 = *(v434 + 16);
  v98 = *(v434 + 24);

  swift_endAccess();
  lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
  swift_allocError();
  *v70 = v97;
  *(v70 + 8) = v98;
  *(v70 + 16) = 0;
  *(v70 + 24) = 0;
  *(v70 + 32) = 0;
  *(v70 + 40) = 0;
  *(v70 + 48) = 13;
  swift_willThrow();
  outlined destroy of SFRichText?((v1 + 312));

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v99);
LABEL_105:
  v71 = *(v1 + 792);
  v74 = *(v1 + 784);
  v75 = *(v1 + 776);
  v76 = *(v1 + 768);
  v77 = *(v1 + 760);
  v78 = *(v1 + 752);
  v79 = *(v1 + 744);
  v80 = *(v1 + 736);
  v81 = *(v1 + 728);
  v82 = *(v1 + 720);
  v83 = *(v1 + 712);
  v84 = *(v1 + 688);
  v85 = *(v1 + 680);
  v86 = *(v1 + 672);
  v87 = *(v1 + 648);
  v88 = *(v1 + 624);
  v89 = *(v1 + 592);
  v90 = *(v1 + 584);
  v91 = *(v1 + 576);
  v92 = *(v1 + 568);
  v93 = *(v1 + 544);
  v94 = *(v1 + 520);

  v72 = *(*(v1 + 264) + 8);
  v73 = *(v1 + 264);

  return v72();
}

uint64_t implicit closure #7 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_getWitnessTable();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #8 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #9 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1)
{
  v2[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return String.init<A>(describing:)();
}

uint64_t specialized implicit closure #11 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
  return String.init<A>(describing:)();
}

uint64_t closure #1 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t *a1, _OWORD *a2)
{
  v16 = 0;
  v15 = 0;
  v16 = *a1;
  v15 = a2;
  v7 = INPerson.identifier.getter();
  v8 = v2;

  swift_beginAccess();
  v9 = *a2;

  swift_endAccess();

  v13[0] = v7;
  v13[1] = v8;
  v14 = v9;
  if (!v8)
  {
    if (!*(&v14 + 1))
    {
      outlined destroy of String.UTF8View(v13);
      v5 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  outlined init with copy of String(v13, &v12);
  if (!*(&v14 + 1))
  {
    outlined destroy of String.UTF8View(&v12);
LABEL_8:
    outlined destroy of DIIdentifier(v13);
    v5 = 0;
    goto LABEL_7;
  }

  v11 = v12;
  v10 = v14;
  v4 = MEMORY[0x26D620740](v12, *(&v12 + 1), v14, *(&v14 + 1));
  outlined destroy of String.UTF8View(&v10);
  outlined destroy of String.UTF8View(&v11);
  outlined destroy of String.UTF8View(v13);
  v5 = v4;
LABEL_7:

  return v5 & 1;
}

uint64_t ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 624) = v3;
  *(v4 + 616) = a3;
  *(v4 + 608) = a2;
  *(v4 + 600) = a1;
  *(v4 + 632) = *v3;
  *(v4 + 456) = v4;
  *(v4 + 464) = 0;
  *(v4 + 472) = 0;
  *(v4 + 480) = 0;
  *(v4 + 488) = 0;
  *(v4 + 496) = 0;
  *(v4 + 504) = 0;
  *(v4 + 992) = 0;
  *(v4 + 544) = 0;
  *(v4 + 1000) = 0;
  *(v4 + 552) = 0;
  *(v4 + 560) = 0;
  v28 = *v3;
  *(v4 + 640) = *v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  *(v4 + 648) = swift_task_alloc();
  v6 = type metadata accessor for AceOutput();
  *(v4 + 656) = v6;
  v18 = *(v6 - 8);
  *(v4 + 664) = v18;
  v7 = *(v18 + 64) + 15;
  *(v4 + 672) = swift_task_alloc();
  v8 = type metadata accessor for TemplatingResult();
  *(v4 + 680) = v8;
  v19 = *(v8 - 8);
  *(v4 + 688) = v19;
  v9 = *(v19 + 64) + 15;
  *(v4 + 696) = swift_task_alloc();
  v10 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  *(v4 + 704) = swift_task_alloc();
  v11 = type metadata accessor for OutputGenerationManifest();
  *(v4 + 712) = v11;
  v20 = *(v11 - 8);
  *(v4 + 720) = v20;
  v12 = *(v20 + 64) + 15;
  *(v4 + 728) = swift_task_alloc();
  v13 = type metadata accessor for NLContextUpdate();
  *(v4 + 736) = v13;
  v21 = *(v13 - 8);
  *(v4 + 744) = v21;
  v22 = *(v21 + 64);
  *(v4 + 752) = swift_task_alloc();
  *(v4 + 760) = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  *(v4 + 768) = v14;
  v23 = *(v14 - 8);
  *(v4 + 776) = v23;
  v24 = *(v23 + 64);
  *(v4 + 784) = swift_task_alloc();
  *(v4 + 792) = swift_task_alloc();
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 808) = swift_task_alloc();
  v15 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 464) = a2;
  *(v4 + 472) = a3;
  *(v4 + 824) = v28[10];
  *(v4 + 480) = v27;
  *(v4 + 832) = v28[11];
  *(v4 + 840) = v28[12];
  v16 = *(v4 + 456);

  return MEMORY[0x2822009F8](ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:), 0);
}

uint64_t ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  v127 = v0;
  v109 = v0[105];
  v108 = v0[104];
  v107 = v0[103];
  v103 = v0[102];
  v1 = v0[101];
  v104 = v0[97];
  v105 = v0[96];
  v110 = v0[80];
  v0[57] = v0;
  v2 = SignpostName.makePromptForDisambiguation.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v103);
  v3 = Logger.payments.unsafeMutableAddressor();
  v106 = *(v104 + 16);
  v0[106] = v106;
  v0[107] = (v104 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v106(v1, v3, v105);
  v112 = swift_allocObject();
  v112[2] = v107;
  v112[3] = v108;
  v112[4] = v109;
  v111 = *(v110 + 104);
  v0[108] = v111;
  v112[5] = v111;
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.debug.getter();
  v115 = swift_allocObject();
  *(v115 + 16) = 32;
  v116 = swift_allocObject();
  *(v116 + 16) = 8;
  v113 = swift_allocObject();
  *(v113 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v113 + 24) = v112;
  v114 = swift_allocObject();
  *(v114 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v114 + 24) = v113;
  v117 = swift_allocObject();
  *(v117 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v117 + 24) = v114;
  v0[109] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v118 = v4;

  *v118 = partial apply for closure #1 in OSLogArguments.append(_:);
  v118[1] = v115;

  v118[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v118[3] = v116;

  v118[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v118[5] = v117;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v119, v120))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v100 = createStorage<A>(capacity:type:)(0);
    v101 = createStorage<A>(capacity:type:)(1);
    v122 = buf;
    v123 = v100;
    v124 = v101;
    serialize(_:at:)(2, &v122);
    serialize(_:at:)(1, &v122);
    v125 = partial apply for closure #1 in OSLogArguments.append(_:);
    v126 = v115;
    closure #1 in osLogInternal(_:log:type:)(&v125, &v122, &v123, &v124);
    v125 = partial apply for closure #1 in OSLogArguments.append(_:);
    v126 = v116;
    closure #1 in osLogInternal(_:log:type:)(&v125, &v122, &v123, &v124);
    v125 = partial apply for closure #1 in OSLogArguments.append(_:);
    v126 = v117;
    closure #1 in osLogInternal(_:log:type:)(&v125, &v122, &v123, &v124);
    _os_log_impl(&dword_2686B1000, v119, v120, "#ContactDisambiguationStrategy<%s> Running makePromptForDisambiguation()", buf, 0xCu);
    destroyStorage<A>(_:count:)(v100, 0, v98);
    destroyStorage<A>(_:count:)(v101, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v92 = *(v102 + 808);
  v93 = *(v102 + 768);
  v5 = *(v102 + 608);
  v91 = *(v102 + 776);
  v95 = *(v102 + 632);
  MEMORY[0x277D82BD8](v119);
  v94 = *(v91 + 8);
  *(v102 + 880) = v94;
  *(v102 + 888) = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v94(v92, v93);
  *(v102 + 896) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v96 = PaginatedItemContainer.items.getter();
  v97 = static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(v96);

  if (v97)
  {
    v6 = *(v102 + 608);
    v7 = *(v102 + 632);
    v88 = PaginatedItemContainer.items.getter();
    v89 = static ContactDisambiguationStrategy.handleType(for:)(v88);

    *(v102 + 993) = v89;
    v90 = v89;
  }

  else
  {
    *(v102 + 993) = 4;
    v90 = 4;
  }

  v81 = *(v102 + 824);
  v82 = *(v102 + 624);
  v80 = *(v102 + 616);
  v8 = *(v102 + 608);
  type metadata accessor for DisambiguationViewBuilder();
  v79 = PaginatedItemContainer.items.getter();
  outlined init with copy of GlobalsProviding(v82 + 24, v102 + 16);
  v78 = *(v102 + 40);
  v77 = *(v102 + 48);
  __swift_project_boxed_opaque_existential_1((v102 + 16), v78);
  (*(v77 + 16))(v78);
  v86 = DisambiguationViewBuilder.__allocating_init(contactDisambiguationType:persons:deviceState:)(v90, v79, v121);
  *(v102 + 904) = v86;
  __swift_destroy_boxed_opaque_existential_0((v102 + 16));
  *(v102 + 488) = v86;
  type metadata accessor for ParameterResolutionRecord();
  ParameterResolutionRecord.app.getter();
  outlined init with copy of GlobalsProviding(v82 + 24, v102 + 56);
  v84 = *(v102 + 80);
  v83 = *(v102 + 88);
  __swift_project_boxed_opaque_existential_1((v102 + 56), v84);
  (*(v83 + 16))(v84);
  v85 = *(v102 + 128);
  __swift_project_boxed_opaque_existential_1((v102 + 96), *(v102 + 120));
  dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0((v102 + 96));
  __swift_destroy_boxed_opaque_existential_0((v102 + 56));
  v87 = DisambiguationViewBuilder.makeDisambiguationItems(app:compact:)();
  *(v102 + 912) = v87;

  *(v102 + 496) = v87;
  if (static RFFeatureFlags.ResponseFramework.SMART.getter())
  {
    v9 = *(v102 + 800);
    v73 = *(v102 + 768);
    v10 = Logger.payments.unsafeMutableAddressor();
    v106(v9, v10, v73);
    oslog = Logger.logObject.getter();
    v74 = static os_log_type_t.debug.getter();
    v76 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v74))
    {
      v69 = static UnsafeMutablePointer.allocate(capacity:)();
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v70 = createStorage<A>(capacity:type:)(0);
      v71 = createStorage<A>(capacity:type:)(0);
      *(v102 + 568) = v69;
      *(v102 + 576) = v70;
      *(v102 + 584) = v71;
      serialize(_:at:)(0, (v102 + 568));
      serialize(_:at:)(0, (v102 + 568));
      *(v102 + 592) = v76;
      v72 = swift_task_alloc();
      v72[2] = v102 + 568;
      v72[3] = v102 + 576;
      v72[4] = v102 + 584;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2686B1000, oslog, v74, "SnippetViews for disambiguation using RF 2.0", v69, 2u);
      destroyStorage<A>(_:count:)(v70, 0, v68);
      destroyStorage<A>(_:count:)(v71, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v69, MEMORY[0x277D84B78]);
    }

    v60 = *(v102 + 824);
    v56 = *(v102 + 800);
    v57 = *(v102 + 768);
    v63 = *(v102 + 760);
    v64 = *(v102 + 728);
    v65 = *(v102 + 704);
    v66 = *(v102 + 624);
    v58 = *(v102 + 608);
    MEMORY[0x277D82BD8](oslog);
    v94(v56, v57);
    v59 = PaginatedItemContainer.items.getter();
    *(v102 + 920) = v59;
    *(v102 + 544) = v59;
    v61 = v60 == type metadata accessor for INSendPaymentIntent();
    *(v102 + 1000) = v61;
    v62 = PaginatedItemContainer.items.getter();
    static PaymentsContextProvider.personDisambiguationContextUpdate(persons:isSend:)(v62, v61, v63);

    static DialogPhase.clarification.getter();
    *(swift_task_alloc() + 16) = v63;
    OutputGenerationManifest.init(dialogPhase:_:)();

    v67 = *(v66 + 64);
    MEMORY[0x277D82BE0](v67);
    if (v67)
    {
      *(v102 + 560) = v67;
      type metadata accessor for ContactResolutionSnippetGenerator();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MobileSMS", 0x13uLL, 1);
      MEMORY[0x277D82BE0](v67);
      v54 = ContactResolutionSnippetGenerator.__allocating_init(appBundleId:globals:)();

      *(v102 + 552) = v54;
      MEMORY[0x277D82BD8](v67);
      v55 = v54;
    }

    else
    {
      v50 = *(v102 + 624);
      type metadata accessor for ContactResolutionSnippetGenerator();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MobileSMS", 0x13uLL, 1);
      outlined init with copy of GlobalsProviding(v50 + 24, v102 + 416);
      v52 = *(v102 + 440);
      v51 = *(v102 + 448);
      __swift_project_boxed_opaque_existential_1((v102 + 416), v52);
      (*(v51 + 16))(v52);
      default argument 1 of ContactResolutionSnippetGenerator.init(appBundleId:globals:deviceState:)();
      v53 = ContactResolutionSnippetGenerator.__allocating_init(appBundleId:globals:deviceState:)();
      __swift_destroy_boxed_opaque_existential_0((v102 + 416));

      *(v102 + 552) = v53;
      v55 = v53;
    }

    *(v102 + 928) = v55;
    v48 = PaymentsDirectInvocations.Identifiers.rawValue.getter(0);
    v49 = v11;
    *(v102 + 936) = v11;
    v12 = *(MEMORY[0x277D56570] + 4);
    v13 = swift_task_alloc();
    *(v102 + 944) = v13;
    *v13 = *(v102 + 456);
    v13[1] = ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
    v14 = *(v102 + 728);
    v15 = *(v102 + 600);

    return MEMORY[0x2821B91D0](v15, v59, v48, v49, v14);
  }

  else
  {
    v16 = *(v102 + 792);
    v44 = *(v102 + 768);
    v17 = Logger.payments.unsafeMutableAddressor();
    v106(v16, v17, v44);
    log = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    v47 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v45))
    {
      v40 = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v41 = createStorage<A>(capacity:type:)(0);
      v42 = createStorage<A>(capacity:type:)(0);
      *(v102 + 512) = v40;
      *(v102 + 520) = v41;
      *(v102 + 528) = v42;
      serialize(_:at:)(0, (v102 + 512));
      serialize(_:at:)(0, (v102 + 512));
      *(v102 + 536) = v47;
      v43 = swift_task_alloc();
      v43[2] = v102 + 512;
      v43[3] = v102 + 520;
      v43[4] = v102 + 528;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2686B1000, log, v45, "AceViews for disambiguation", v40, 2u);
      destroyStorage<A>(_:count:)(v41, 0, v39);
      destroyStorage<A>(_:count:)(v42, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v40, MEMORY[0x277D84B78]);
    }

    v34 = *(v102 + 824);
    v25 = *(v102 + 792);
    v26 = *(v102 + 768);
    v36 = *(v102 + 624);
    v30 = *(v102 + 616);
    v27 = *(v102 + 608);
    MEMORY[0x277D82BD8](log);
    v94(v25, v26);
    v32 = ParameterResolutionRecord.app.getter();
    type metadata accessor for SiriKitDisambiguationList();
    PaginatedItemContainer.items.getter();
    type metadata accessor for INPerson();
    _arrayForceCast<A, B>(_:)();

    _swift_stdlib_has_malloc_size();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v31 = SiriKitDisambiguationList.__allocating_init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();

    outlined init with copy of GlobalsProviding(v36 + 24, v102 + 136);
    v29 = *(v102 + 160);
    v28 = *(v102 + 168);
    __swift_project_boxed_opaque_existential_1((v102 + 136), v29);
    (*(v28 + 16))(v29);
    v18 = type metadata accessor for SiriKitDisambiguationSnippetFactory();
    v33 = static AceViewProviding.makeAceViewsForDisambiguation(app:disambiguationList:deviceState:disambiguationSnippetProvider:)(v32, v31, (v102 + 176), v18, &protocol witness table for SiriKitDisambiguationSnippetFactory);
    *(v102 + 960) = v33;
    __swift_destroy_boxed_opaque_existential_0((v102 + 176));
    __swift_destroy_boxed_opaque_existential_0((v102 + 136));

    *(v102 + 504) = v33;
    v35 = ParameterResolutionRecord.intent.getter();
    v37 = (*(v111 + 16))(v34);
    *(v102 + 968) = v37;
    MEMORY[0x277D82BD8](v35);
    v19 = *(*v36 + 184);
    v38 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    *(v102 + 976) = v21;
    *v21 = *(v102 + 456);
    v21[1] = ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
    v22 = *(v102 + 696);
    v23 = *(v102 + 624);

    return v38(v22, v37);
  }
}

{
  v11 = *v1;
  v9 = *v1 + 16;
  v10 = (v11 + 456);
  v2 = *(*v1 + 944);
  *(v11 + 456) = *v1;
  *(v11 + 952) = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  }

  else
  {
    v3 = *(v9 + 920);
    v8 = *(v9 + 912);

    v4 = *v10;
    v5 = ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v12 = v0[115];
  v13 = v0[114];
  v14 = v0[113];
  v15 = v0[102];
  v10 = v0[95];
  v9 = v0[93];
  v11 = v0[92];
  v7 = v0[91];
  v6 = v0[90];
  v8 = v0[89];
  v0[57] = v0;
  v1 = v0[69];

  (*(v6 + 8))(v7, v8);
  (*(v9 + 8))(v10, v11);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v15);
  v2 = v0[102];
  v16 = v0[101];
  v17 = v0[100];
  v18 = v0[99];
  v19 = v0[98];
  v20 = v0[95];
  v21 = v0[94];
  v22 = v0[91];
  v23 = v0[88];
  v24 = v0[87];
  v25 = v0[84];
  v26 = v0[81];

  v3 = *(v0[57] + 8);
  v4 = v0[57];

  return v3();
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 456);
  v2 = *(*v1 + 976);
  *(v9 + 456) = *v1;
  *(v9 + 984) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  }

  else
  {

    v3 = *v8;
    v4 = ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v78 = v0;
  v70 = v0[109];
  v62 = v0[108];
  v57 = v0[107];
  v58 = v0[106];
  v61 = v0[105];
  v60 = v0[104];
  v59 = v0[103];
  v1 = v0[98];
  v56 = v0[96];
  v0[57] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v58(v1, v2, v56);
  v63 = swift_allocObject();
  v63[2] = v59;
  v63[3] = v60;
  v63[4] = v61;
  v63[5] = v62;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v66 = swift_allocObject();
  *(v66 + 16) = 32;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v64 = swift_allocObject();
  *(v64 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v64 + 24) = v63;
  v65 = swift_allocObject();
  *(v65 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v65 + 24) = v64;
  v68 = swift_allocObject();
  *(v68 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v68 + 24) = v65;
  _allocateUninitializedArray<A>(_:)();
  v69 = v3;

  *v69 = partial apply for closure #1 in OSLogArguments.append(_:);
  v69[1] = v66;

  v69[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v69[3] = v67;

  v69[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v69[5] = v68;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v71, v72))
  {
    v4 = *(v55 + 984);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v53 = createStorage<A>(capacity:type:)(0);
    v54 = createStorage<A>(capacity:type:)(1);
    v73 = buf;
    v74 = v53;
    v75 = v54;
    serialize(_:at:)(2, &v73);
    serialize(_:at:)(1, &v73);
    v76 = partial apply for closure #1 in OSLogArguments.append(_:);
    v77 = v66;
    closure #1 in osLogInternal(_:log:type:)(&v76, &v73, &v74, &v75);
    if (v4)
    {
    }

    v76 = partial apply for closure #1 in OSLogArguments.append(_:);
    v77 = v67;
    closure #1 in osLogInternal(_:log:type:)(&v76, &v73, &v74, &v75);
    v76 = partial apply for closure #1 in OSLogArguments.append(_:);
    v77 = v68;
    closure #1 in osLogInternal(_:log:type:)(&v76, &v73, &v74, &v75);
    _os_log_impl(&dword_2686B1000, v71, v72, "#ContactDisambiguationStrategy<%s> Creating SDAs and updating NLContext()", buf, 0xCu);
    destroyStorage<A>(_:count:)(v53, 0, v51);
    destroyStorage<A>(_:count:)(v54, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v36 = *(v55 + 960);
  v37 = *(v55 + 912);
  v38 = *(v55 + 904);
  v16 = *(v55 + 896);
  v13 = *(v55 + 888);
  v14 = *(v55 + 880);
  v15 = *(v55 + 824);
  v39 = *(v55 + 816);
  v11 = *(v55 + 784);
  v12 = *(v55 + 768);
  v31 = *(v55 + 752);
  v32 = *(v55 + 736);
  v34 = *(v55 + 696);
  v35 = *(v55 + 680);
  v30 = *(v55 + 672);
  v29 = *(v55 + 656);
  v26 = *(v55 + 648);
  v21 = *(v55 + 624);
  v6 = *(v55 + 608);
  v27 = *(v55 + 600);
  v25 = *(v55 + 744);
  v33 = *(v55 + 688);
  v28 = *(v55 + 664);
  MEMORY[0x277D82BD8](v71);
  v14(v11, v12);
  v17 = v15 == type metadata accessor for INSendPaymentIntent();
  *(v55 + 992) = v17;
  v18 = PaginatedItemContainer.items.getter();
  static PaymentsContextProvider.personDisambiguationContextUpdate(persons:isSend:)(v18, v17, v31);

  outlined init with copy of GlobalsProviding(v21 + 24, v55 + 216);
  v20 = *(v55 + 240);
  v19 = *(v55 + 248);
  __swift_project_boxed_opaque_existential_1((v55 + 216), v20);
  (*(v19 + 16))(v20);
  outlined init with copy of GlobalsProviding(v21 + 24, v55 + 296);
  v23 = *(v55 + 320);
  v22 = *(v55 + 328);
  __swift_project_boxed_opaque_existential_1((v55 + 296), v23);
  (*(v22 + 16))(v23);
  v24 = *(v55 + 368);
  __swift_project_boxed_opaque_existential_1((v55 + 336), *(v55 + 360));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  (*(v25 + 16))(v26, v31, v32);
  (*(v25 + 56))(v26);
  type metadata accessor for SABaseCommand();
  _allocateUninitializedArray<A>(_:)();
  *(v55 + 376) = 0;
  *(v55 + 384) = 0;
  *(v55 + 392) = 0;
  *(v55 + 400) = 0;
  *(v55 + 408) = 0;
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of FlowActivity?((v55 + 376));

  outlined destroy of NLContextUpdate?(v26);
  __swift_destroy_boxed_opaque_existential_0((v55 + 336));
  __swift_destroy_boxed_opaque_existential_0((v55 + 296));
  __swift_destroy_boxed_opaque_existential_0((v55 + 256));
  __swift_destroy_boxed_opaque_existential_0((v55 + 216));
  v27[3] = v29;
  v27[4] = MEMORY[0x277D5C1D8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(v28 + 16))(boxed_opaque_existential_1, v30, v29);
  (*(v28 + 8))(v30, v29);
  (*(v25 + 8))(v31, v32);
  (*(v33 + 8))(v34, v35);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v39);
  v8 = *(v55 + 816);
  v40 = *(v55 + 808);
  v41 = *(v55 + 800);
  v42 = *(v55 + 792);
  v43 = *(v55 + 784);
  v44 = *(v55 + 760);
  v45 = *(v55 + 752);
  v46 = *(v55 + 728);
  v47 = *(v55 + 704);
  v48 = *(v55 + 696);
  v49 = *(v55 + 672);
  v50 = *(v55 + 648);

  v9 = *(*(v55 + 456) + 8);
  v10 = *(v55 + 456);

  return v9();
}

{
  v1 = v0[117];
  v8 = v0[116];
  v15 = v0[115];
  v16 = v0[114];
  v17 = v0[113];
  v18 = v0[102];
  v13 = v0[95];
  v12 = v0[93];
  v14 = v0[92];
  v10 = v0[91];
  v9 = v0[90];
  v11 = v0[89];
  v0[57] = v0;

  v2 = v0[69];

  (*(v9 + 8))(v10, v11);
  (*(v12 + 8))(v13, v14);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v18);
  v3 = v0[119];
  v4 = v0[102];
  v19 = v0[101];
  v20 = v0[100];
  v21 = v0[99];
  v22 = v0[98];
  v23 = v0[95];
  v24 = v0[94];
  v25 = v0[91];
  v26 = v0[88];
  v27 = v0[87];
  v28 = v0[84];
  v29 = v0[81];

  v5 = *(v0[57] + 8);
  v6 = v0[57];

  return v5();
}

{
  v1 = v0[121];
  v7 = v0[120];
  v8 = v0[114];
  v9 = v0[113];
  v10 = v0[102];
  v0[57] = v0;
  MEMORY[0x277D82BD8](v1);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v10);
  v2 = v0[123];
  v3 = v0[102];
  v11 = v0[101];
  v12 = v0[100];
  v13 = v0[99];
  v14 = v0[98];
  v15 = v0[95];
  v16 = v0[94];
  v17 = v0[91];
  v18 = v0[88];
  v19 = v0[87];
  v20 = v0[84];
  v21 = v0[81];

  v4 = *(v0[57] + 8);
  v5 = v0[57];

  return v4();
}

uint64_t static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(_BYTE *a1)
{
  v298 = a1;
  v296 = 0;
  v376 = 0;
  v375 = 0;
  v297 = 0;
  v368 = 0;
  v366 = 0;
  v365 = 0;
  v360 = 0;
  v351 = 0;
  v350 = 0;
  v346 = 0;
  v345 = 0;
  v311 = type metadata accessor for Logger();
  v299 = v311;
  v300 = *(v311 - 8);
  v310 = v300;
  v301 = v300;
  v303 = *(v300 + 64);
  v1 = MEMORY[0x28223BE20](v298);
  v305 = (v303 + 15) & 0xFFFFFFFFFFFFFFF0;
  v302 = &v105 - v305;
  v2 = MEMORY[0x28223BE20](v1);
  v304 = &v105 - v305;
  v3 = MEMORY[0x28223BE20](v2);
  v4 = &v105 - v305;
  v306 = &v105 - v305;
  v376 = v3;
  v375 = v5;
  v314 = v5[10];
  v307 = v314;
  v374[4] = v314;
  v315 = v5[11];
  v308 = v315;
  v374[3] = v315;
  v316 = v5[12];
  v309 = v316;
  v374[2] = v316;
  v6 = Logger.payments.unsafeMutableAddressor();
  v312 = *(v310 + 16);
  v313 = (v310 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v312(v4, v6, v311);
  v327 = 7;
  v7 = swift_allocObject();
  v8 = v315;
  v9 = v316;
  v10 = v317;
  v325 = v7;
  v7[2] = v314;
  v7[3] = v8;
  v7[4] = v9;
  v318 = *(v10 + 104);
  v7[5] = v318;
  v339 = Logger.logObject.getter();
  v319 = v339;
  v338 = static os_log_type_t.debug.getter();
  v320 = v338;
  v321 = 17;
  v332 = swift_allocObject();
  v322 = v332;
  v323 = 32;
  *(v332 + 16) = 32;
  v11 = swift_allocObject();
  v12 = v323;
  v333 = v11;
  v324 = v11;
  *(v11 + 16) = 8;
  v326 = v12;
  v13 = swift_allocObject();
  v14 = v325;
  v328 = v13;
  *(v13 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v328;
  v329 = v15;
  *(v15 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v329;
  v336 = v17;
  v330 = v17;
  *(v17 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v17 + 24) = v18;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v331 = v337;
  v334 = _allocateUninitializedArray<A>(_:)();
  v335 = v19;

  v20 = v332;
  v21 = v335;
  *v335 = partial apply for closure #1 in OSLogArguments.append(_:);
  v21[1] = v20;

  v22 = v333;
  v23 = v335;
  v335[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v23[3] = v22;

  v24 = v335;
  v25 = v336;
  v335[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v24[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v339, v338))
  {
    v26 = v297;
    v289 = static UnsafeMutablePointer.allocate(capacity:)();
    v286 = v289;
    v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v290 = createStorage<A>(capacity:type:)(0);
    v288 = v290;
    v292 = 1;
    v291 = createStorage<A>(capacity:type:)(1);
    v344[0] = v289;
    v343 = v290;
    v342 = v291;
    v293 = v344;
    serialize(_:at:)(2, v344);
    serialize(_:at:)(v292, v293);
    v340 = partial apply for closure #1 in OSLogArguments.append(_:);
    v341 = v322;
    closure #1 in osLogInternal(_:log:type:)(&v340, v293, &v343, &v342);
    v294 = v26;
    v295 = v26;
    if (v26)
    {
      v284 = 0;

      __break(1u);
    }

    else
    {
      v340 = partial apply for closure #1 in OSLogArguments.append(_:);
      v341 = v324;
      closure #1 in osLogInternal(_:log:type:)(&v340, v344, &v343, &v342);
      v282 = 0;
      v283 = 0;
      v340 = partial apply for closure #1 in OSLogArguments.append(_:);
      v341 = v330;
      closure #1 in osLogInternal(_:log:type:)(&v340, v344, &v343, &v342);
      v280 = 0;
      v281 = 0;
      _os_log_impl(&dword_2686B1000, v319, v320, "#ContactDisambiguationStrategy<%s> allHaveSameIdentifier", v286, 0xCu);
      destroyStorage<A>(_:count:)(v288, 0, v287);
      destroyStorage<A>(_:count:)(v291, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v286, MEMORY[0x277D84B78]);

      v285 = v280;
    }
  }

  else
  {
    v27 = v297;

    v285 = v27;
  }

  v274 = v285;

  v275 = *(v301 + 8);
  v276 = (v301 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v275(v306, v299);
  v374[1] = v298;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v277 = v278;
  v279 = lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  if (Collection.isEmpty.getter())
  {
    v81 = v302;
    v82 = Logger.payments.unsafeMutableAddressor();
    v312(v81, v82, v299);
    v130 = 7;
    v83 = swift_allocObject();
    v84 = v308;
    v85 = v309;
    v86 = v318;
    v128 = v83;
    v83[2] = v307;
    v83[3] = v84;
    v83[4] = v85;
    v83[5] = v86;
    v140 = Logger.logObject.getter();
    v122 = v140;
    v139 = static os_log_type_t.debug.getter();
    v123 = v139;
    v124 = 17;
    v134 = swift_allocObject();
    v125 = v134;
    v126 = 32;
    *(v134 + 16) = 32;
    v87 = swift_allocObject();
    v88 = v126;
    v135 = v87;
    v127 = v87;
    *(v87 + 16) = 8;
    v129 = v88;
    v89 = swift_allocObject();
    v90 = v128;
    v131 = v89;
    *(v89 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
    *(v89 + 24) = v90;
    v91 = swift_allocObject();
    v92 = v131;
    v132 = v91;
    *(v91 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v91 + 24) = v92;
    v93 = swift_allocObject();
    v94 = v132;
    v138 = v93;
    v133 = v93;
    *(v93 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v93 + 24) = v94;
    v136 = _allocateUninitializedArray<A>(_:)();
    v137 = v95;

    v96 = v134;
    v97 = v137;
    *v137 = partial apply for closure #1 in OSLogArguments.append(_:);
    v97[1] = v96;

    v98 = v135;
    v99 = v137;
    v137[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v99[3] = v98;

    v100 = v137;
    v101 = v138;
    v137[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v100[5] = v101;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v140, v139))
    {
      v102 = v274;
      v115 = static UnsafeMutablePointer.allocate(capacity:)();
      v112 = v115;
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v116 = createStorage<A>(capacity:type:)(0);
      v114 = v116;
      v118 = 1;
      v117 = createStorage<A>(capacity:type:)(1);
      v374[0] = v115;
      v373 = v116;
      v372 = v117;
      v119 = v374;
      serialize(_:at:)(2, v374);
      serialize(_:at:)(v118, v119);
      v370 = partial apply for closure #1 in OSLogArguments.append(_:);
      v371 = v125;
      closure #1 in osLogInternal(_:log:type:)(&v370, v119, &v373, &v372);
      v120 = v102;
      v121 = v102;
      if (v102)
      {
        v110 = 0;

        __break(1u);
      }

      else
      {
        v370 = partial apply for closure #1 in OSLogArguments.append(_:);
        v371 = v127;
        closure #1 in osLogInternal(_:log:type:)(&v370, v374, &v373, &v372);
        v108 = 0;
        v109 = 0;
        v370 = partial apply for closure #1 in OSLogArguments.append(_:);
        v371 = v133;
        closure #1 in osLogInternal(_:log:type:)(&v370, v374, &v373, &v372);
        v106 = 0;
        v107 = 0;
        _os_log_impl(&dword_2686B1000, v122, v123, "#ContactDisambiguationStrategy<%s> allHaveSameIdentifier no recipients provided, returning false", v112, 0xCu);
        destroyStorage<A>(_:count:)(v114, 0, v113);
        destroyStorage<A>(_:count:)(v117, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v112, MEMORY[0x277D84B78]);

        v111 = v106;
      }
    }

    else
    {
      v103 = v274;

      v111 = v103;
    }

    v105 = v111;

    v275(v302, v299);
    v142 = 0;
    v143 = v105;
    return v142 & 1;
  }

  v28 = v274;
  v369 = v298;
  v271 = lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  v29 = Sequence.allSatisfy(_:)();
  v272 = v28;
  v273 = v29;
  if (!v28)
  {
    v268 = v273;
    v368 = v273 & 1;
    v367 = v298;
    v30 = Sequence.allSatisfy(_:)();
    v269 = 0;
    v270 = v30;
    v267 = v30;
    v366 = v30 & 1;
    if (v268)
    {
      v348 = v298;
      Collection.first.getter();
      v266 = v347;
      if (v347)
      {
        v265 = v266;
        v263 = v266;
        v264 = [v266 contactIdentifier];
        if (v264)
        {
          v262 = v264;
          v257 = v264;
          v258 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v259 = v31;

          v260 = v258;
          v261 = v259;
        }

        else
        {
          v260 = 0;
          v261 = 0;
        }

        v254 = v261;
        v253 = v260;

        v255 = v253;
        v256 = v254;
      }

      else
      {
        v255 = 0;
        v256 = 0;
      }

      v251 = v256;
      v252 = v255;
      if (v256)
      {
        v249 = v252;
        v250 = v251;
        v32 = v269;
        v244 = v251;
        v246 = v252;
        v345 = v252;
        v346 = v251;
        v344[1] = v298;

        v245 = &v105;
        MEMORY[0x28223BE20](&v105);
        *(&v105 - 2) = v246;
        *(&v105 - 1) = v33;
        v34 = Sequence.allSatisfy(_:)();
        v247 = v32;
        v248 = v34;
        if (!v32)
        {
          v241 = v248;

          v365 = v241 & 1;

          v242 = v241;
          v243 = v247;
LABEL_48:
          v44 = v304;
          v166 = v243;
          v167 = v242;
          v45 = Logger.payments.unsafeMutableAddressor();
          v312(v44, v45, v299);
          v183 = 7;
          v46 = swift_allocObject();
          v47 = v308;
          v48 = v309;
          v49 = v318;
          v173 = v46;
          v46[2] = v307;
          v46[3] = v47;
          v46[4] = v48;
          v46[5] = v49;
          v177 = 17;
          v180 = swift_allocObject();
          *(v180 + 16) = v167 & 1;
          v196 = Logger.logObject.getter();
          v168 = v196;
          v195 = static os_log_type_t.debug.getter();
          v169 = v195;
          v187 = swift_allocObject();
          v170 = v187;
          v171 = 32;
          *(v187 + 16) = 32;
          v50 = swift_allocObject();
          v51 = v171;
          v188 = v50;
          v172 = v50;
          *(v50 + 16) = 8;
          v182 = v51;
          v52 = swift_allocObject();
          v53 = v173;
          v174 = v52;
          *(v52 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
          *(v52 + 24) = v53;
          v54 = swift_allocObject();
          v55 = v174;
          v175 = v54;
          *(v54 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
          *(v54 + 24) = v55;
          v56 = swift_allocObject();
          v57 = v175;
          v189 = v56;
          v176 = v56;
          *(v56 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
          *(v56 + 24) = v57;
          v190 = swift_allocObject();
          v178 = v190;
          *(v190 + 16) = 0;
          v191 = swift_allocObject();
          v179 = v191;
          *(v191 + 16) = 4;
          v58 = swift_allocObject();
          v59 = v180;
          v181 = v58;
          *(v58 + 16) = partial apply for implicit closure #6 in static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:);
          *(v58 + 24) = v59;
          v60 = swift_allocObject();
          v61 = v181;
          v184 = v60;
          *(v60 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
          *(v60 + 24) = v61;
          v62 = swift_allocObject();
          v63 = v184;
          v185 = v62;
          *(v62 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:);
          *(v62 + 24) = v63;
          v64 = swift_allocObject();
          v65 = v185;
          v194 = v64;
          v186 = v64;
          *(v64 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int32);
          *(v64 + 24) = v65;
          v192 = _allocateUninitializedArray<A>(_:)();
          v193 = v66;

          v67 = v187;
          v68 = v193;
          *v193 = partial apply for closure #1 in OSLogArguments.append(_:);
          v68[1] = v67;

          v69 = v188;
          v70 = v193;
          v193[2] = partial apply for closure #1 in OSLogArguments.append(_:);
          v70[3] = v69;

          v71 = v189;
          v72 = v193;
          v193[4] = partial apply for closure #1 in OSLogArguments.append(_:);
          v72[5] = v71;

          v73 = v190;
          v74 = v193;
          v193[6] = partial apply for closure #1 in OSLogArguments.append(_:);
          v74[7] = v73;

          v75 = v191;
          v76 = v193;
          v193[8] = partial apply for closure #1 in OSLogArguments.append(_:);
          v76[9] = v75;

          v77 = v193;
          v78 = v194;
          v193[10] = closure #1 in OSLogArguments.append<A>(_:)partial apply;
          v77[11] = v78;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v196, v195))
          {
            v79 = v166;
            v159 = static UnsafeMutablePointer.allocate(capacity:)();
            v156 = v159;
            v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v160 = createStorage<A>(capacity:type:)(0);
            v158 = v160;
            v161 = createStorage<A>(capacity:type:)(1);
            v359 = v159;
            v358 = v160;
            v357 = v161;
            v162 = 2;
            v163 = &v359;
            serialize(_:at:)(2, &v359);
            serialize(_:at:)(v162, v163);
            v355 = partial apply for closure #1 in OSLogArguments.append(_:);
            v356 = v170;
            closure #1 in osLogInternal(_:log:type:)(&v355, v163, &v358, &v357);
            v164 = v79;
            v165 = v79;
            if (v79)
            {
              v154 = 0;

              __break(1u);
            }

            else
            {
              v355 = partial apply for closure #1 in OSLogArguments.append(_:);
              v356 = v172;
              closure #1 in osLogInternal(_:log:type:)(&v355, &v359, &v358, &v357);
              v152 = 0;
              v153 = 0;
              v355 = partial apply for closure #1 in OSLogArguments.append(_:);
              v356 = v176;
              closure #1 in osLogInternal(_:log:type:)(&v355, &v359, &v358, &v357);
              v150 = 0;
              v151 = 0;
              v355 = partial apply for closure #1 in OSLogArguments.append(_:);
              v356 = v178;
              closure #1 in osLogInternal(_:log:type:)(&v355, &v359, &v358, &v357);
              v148 = 0;
              v149 = 0;
              v355 = partial apply for closure #1 in OSLogArguments.append(_:);
              v356 = v179;
              closure #1 in osLogInternal(_:log:type:)(&v355, &v359, &v358, &v357);
              v146 = 0;
              v147 = 0;
              v355 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
              v356 = v186;
              closure #1 in osLogInternal(_:log:type:)(&v355, &v359, &v358, &v357);
              v144 = 0;
              v145 = 0;
              _os_log_impl(&dword_2686B1000, v168, v169, "#ContactDisambiguationStrategy<%s> allHaveSameIdentifier %{BOOL}d", v156, 0x12u);
              destroyStorage<A>(_:count:)(v158, 0, v157);
              destroyStorage<A>(_:count:)(v161, 1, MEMORY[0x277D84F70] + 8);
              MEMORY[0x26D620BD0](v156, MEMORY[0x277D84B78]);

              v155 = v144;
            }
          }

          else
          {
            v80 = v166;

            v155 = v80;
          }

          v141 = v155;

          v275(v304, v299);
          v142 = v167;
          v143 = v141;
          return v142 & 1;
        }

        goto LABEL_62;
      }
    }

    if (v267)
    {
      v353 = v298;
      Collection.first.getter();
      v240 = v352;
      if (v352)
      {
        v239 = v240;
        v237 = v240;
        v238 = [v240 customIdentifier];
        if (v238)
        {
          v236 = v238;
          v231 = v238;
          v232 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v233 = v35;

          v234 = v232;
          v235 = v233;
        }

        else
        {
          v234 = 0;
          v235 = 0;
        }

        v228 = v235;
        v227 = v234;

        v229 = v227;
        v230 = v228;
      }

      else
      {
        v229 = 0;
        v230 = 0;
      }

      v225 = v230;
      v226 = v229;
      if (v230)
      {
        v223 = v226;
        v224 = v225;
        v36 = v269;
        v218 = v225;
        v220 = v226;
        v350 = v226;
        v351 = v225;
        v349 = v298;

        v219 = &v105;
        MEMORY[0x28223BE20](&v105);
        *(&v105 - 2) = v220;
        *(&v105 - 1) = v37;
        v38 = Sequence.allSatisfy(_:)();
        v221 = v36;
        v222 = v38;
        if (v36)
        {
          goto LABEL_63;
        }

        v215 = v222;

        v365 = v215 & 1;

        v216 = v215;
        v217 = v221;
LABEL_47:
        v242 = v216;
        v243 = v217;
        goto LABEL_48;
      }
    }

    v363 = v298;
    Collection.first.getter();
    v214 = v362;
    if (v362)
    {
      v213 = v214;
      v208 = v214;
      v210 = [v214 displayName];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v209 = v40;
      *&v211 = v39;

      *(&v211 + 1) = v209;
      v212 = v211;
    }

    else
    {
      v212 = 0uLL;
    }

    v361 = v212;
    if (*(&v212 + 1))
    {
      v364 = v361;
    }

    else
    {
      v364 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (v361._object)
      {
        outlined destroy of String.UTF8View(&v361);
      }
    }

    v205 = v364;
    object = v364._object;
    v360 = v364;
    v207 = String.isEmpty.getter();

    if ((v207 & 1) == 0)
    {
      v41 = v269;
      v354 = v298;

      v202 = &v105;
      MEMORY[0x28223BE20](&v105);
      *(&v105 - 2) = v205._countAndFlagsBits;
      *(&v105 - 1) = v42;
      v43 = Sequence.allSatisfy(_:)();
      v203 = v41;
      v204 = v43;
      if (!v41)
      {
        v199 = v204;

        v200 = v199;
        v201 = v203;
LABEL_45:
        v198 = v201;
        v197 = v200;

        v365 = v197 & 1;

        v216 = v197;
        v217 = v198;
        goto LABEL_47;
      }

      __break(1u);
    }

    v200 = 0;
    v201 = v269;
    goto LABEL_45;
  }

  __break(1u);
  __break(1u);
LABEL_62:

  __break(1u);
LABEL_63:

  __break(1u);
  return result;
}

uint64_t static ContactDisambiguationStrategy.handleType(for:)(uint64_t a1)
{
  v199 = a1;
  v220 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v222 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v226 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v228 = partial apply for closure #1 in OSLogArguments.append(_:);
  v230 = partial apply for closure #1 in OSLogArguments.append(_:);
  v233 = partial apply for closure #1 in OSLogArguments.append(_:);
  v178 = closure #1 in static ContactDisambiguationStrategy.handleType(for:);
  v179 = closure #2 in static ContactDisambiguationStrategy.handleType(for:);
  v180 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v181 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v182 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v183 = partial apply for closure #1 in OSLogArguments.append(_:);
  v184 = partial apply for closure #1 in OSLogArguments.append(_:);
  v185 = partial apply for closure #1 in OSLogArguments.append(_:);
  v186 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v187 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v188 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v189 = partial apply for closure #1 in OSLogArguments.append(_:);
  v190 = partial apply for closure #1 in OSLogArguments.append(_:);
  v191 = partial apply for closure #1 in OSLogArguments.append(_:);
  v192 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v193 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v194 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v195 = partial apply for closure #1 in OSLogArguments.append(_:);
  v196 = partial apply for closure #1 in OSLogArguments.append(_:);
  v197 = partial apply for closure #1 in OSLogArguments.append(_:);
  v267 = 0;
  v266 = 0;
  v198 = 0;
  v261 = 0;
  v259 = 0;
  v211 = type metadata accessor for Logger();
  v209 = *(v211 - 8);
  v210 = v211 - 8;
  v205 = v209[8];
  v200 = (v205 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v199);
  v201 = v90 - v200;
  v202 = v200;
  v2 = MEMORY[0x28223BE20](v1);
  v203 = v90 - v202;
  v204 = (v205 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v2);
  v206 = v90 - v204;
  v207 = (v205 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v3);
  v5 = v90 - v207;
  v208 = v90 - v207;
  v267 = v4;
  v266 = v6;
  v214 = v6[10];
  v265 = v214;
  v215 = v6[11];
  v264 = v215;
  v216 = v6[12];
  v263 = v216;
  v7 = Logger.payments.unsafeMutableAddressor();
  v212 = v209[2];
  v213 = v209 + 2;
  v212(v5, v7, v211);
  v224 = 7;
  v8 = swift_allocObject();
  v9 = v215;
  v10 = v216;
  v11 = v217;
  v221 = v8;
  v8[2] = v214;
  v8[3] = v9;
  v8[4] = v10;
  v218 = *(v11 + 104);
  v8[5] = v218;
  v237 = Logger.logObject.getter();
  v238 = static os_log_type_t.debug.getter();
  v219 = 17;
  v229 = swift_allocObject();
  *(v229 + 16) = 32;
  v231 = swift_allocObject();
  *(v231 + 16) = 8;
  v223 = 32;
  v12 = swift_allocObject();
  v13 = v221;
  v225 = v12;
  *(v12 + 16) = v220;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v225;
  v227 = v14;
  *(v14 + 16) = v222;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v227;
  v234 = v16;
  *(v16 + 16) = v226;
  *(v16 + 24) = v17;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v232 = _allocateUninitializedArray<A>(_:)();
  v235 = v18;

  v19 = v229;
  v20 = v235;
  *v235 = v228;
  v20[1] = v19;

  v21 = v231;
  v22 = v235;
  v235[2] = v230;
  v22[3] = v21;

  v23 = v234;
  v24 = v235;
  v235[4] = v233;
  v24[5] = v23;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v237, v238))
  {
    v25 = v198;
    v171 = static UnsafeMutablePointer.allocate(capacity:)();
    v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v172 = createStorage<A>(capacity:type:)(0);
    v173 = createStorage<A>(capacity:type:)(1);
    v174 = &v243;
    v243 = v171;
    v175 = &v242;
    v242 = v172;
    v176 = &v241;
    v241 = v173;
    serialize(_:at:)(2, &v243);
    serialize(_:at:)(1, v174);
    v239 = v228;
    v240 = v229;
    closure #1 in osLogInternal(_:log:type:)(&v239, v174, v175, v176);
    v177 = v25;
    if (v25)
    {

      __break(1u);
    }

    else
    {
      v239 = v230;
      v240 = v231;
      closure #1 in osLogInternal(_:log:type:)(&v239, &v243, &v242, &v241);
      v168 = 0;
      v239 = v233;
      v240 = v234;
      closure #1 in osLogInternal(_:log:type:)(&v239, &v243, &v242, &v241);
      v167 = 0;
      _os_log_impl(&dword_2686B1000, v237, v238, "#ContactDisambiguationStrategy<%s> handleType(for:)", v171, 0xCu);
      destroyStorage<A>(_:count:)(v172, 0, v170);
      destroyStorage<A>(_:count:)(v173, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v171, MEMORY[0x277D84B78]);

      v169 = v167;
    }
  }

  else
  {
    v26 = v198;

    v169 = v26;
  }

  v27 = v169;
  MEMORY[0x277D82BD8](v237);
  v161 = v209[1];
  v162 = v209 + 1;
  v161(v208, v211);
  v262 = v199;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v164 = lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  result = Sequence.allSatisfy(_:)();
  v165 = v27;
  v166 = result;
  if (v27)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v158 = v166;
    v261 = v166 & 1;
    v260 = v199;
    v29 = Sequence.allSatisfy(_:)();
    v159 = 0;
    v160 = v29;
    v157 = v29;
    v259 = v29 & 1;
    if (v158)
    {
      v30 = v206;
      v31 = Logger.payments.unsafeMutableAddressor();
      v212(v30, v31, v211);
      v147 = 7;
      v32 = swift_allocObject();
      v33 = v215;
      v34 = v216;
      v35 = v218;
      v145 = v32;
      v32[2] = v214;
      v32[3] = v33;
      v32[4] = v34;
      v32[5] = v35;
      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.debug.getter();
      v144 = 17;
      v150 = swift_allocObject();
      *(v150 + 16) = 32;
      v151 = swift_allocObject();
      *(v151 + 16) = 8;
      v146 = 32;
      v36 = swift_allocObject();
      v37 = v145;
      v148 = v36;
      *(v36 + 16) = v192;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v148;
      v149 = v38;
      *(v38 + 16) = v193;
      *(v38 + 24) = v39;
      v40 = swift_allocObject();
      v41 = v149;
      v153 = v40;
      *(v40 + 16) = v194;
      *(v40 + 24) = v41;
      v152 = _allocateUninitializedArray<A>(_:)();
      v154 = v42;

      v43 = v150;
      v44 = v154;
      *v154 = v195;
      v44[1] = v43;

      v45 = v151;
      v46 = v154;
      v154[2] = v196;
      v46[3] = v45;

      v47 = v153;
      v48 = v154;
      v154[4] = v197;
      v48[5] = v47;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v155, v156))
      {
        v49 = v159;
        v137 = static UnsafeMutablePointer.allocate(capacity:)();
        v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v138 = createStorage<A>(capacity:type:)(0);
        v139 = createStorage<A>(capacity:type:)(1);
        v140 = &v248;
        v248 = v137;
        v141 = &v247;
        v247 = v138;
        v142 = &v246;
        v246 = v139;
        serialize(_:at:)(2, &v248);
        serialize(_:at:)(1, v140);
        v244 = v195;
        v245 = v150;
        closure #1 in osLogInternal(_:log:type:)(&v244, v140, v141, v142);
        v143 = v49;
        if (v49)
        {

          __break(1u);
        }

        else
        {
          v244 = v196;
          v245 = v151;
          closure #1 in osLogInternal(_:log:type:)(&v244, &v248, &v247, &v246);
          v135 = 0;
          v244 = v197;
          v245 = v153;
          closure #1 in osLogInternal(_:log:type:)(&v244, &v248, &v247, &v246);
          _os_log_impl(&dword_2686B1000, v155, v156, "#ContactDisambiguationStrategy<%s> handleType(for:) found .allEmail", v137, 0xCu);
          destroyStorage<A>(_:count:)(v138, 0, v136);
          destroyStorage<A>(_:count:)(v139, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v137, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v155);
      v161(v206, v211);
      return 1;
    }

    else if (v157)
    {
      v50 = v203;
      v51 = Logger.payments.unsafeMutableAddressor();
      v212(v50, v51, v211);
      v124 = 7;
      v52 = swift_allocObject();
      v53 = v215;
      v54 = v216;
      v55 = v218;
      v122 = v52;
      v52[2] = v214;
      v52[3] = v53;
      v52[4] = v54;
      v52[5] = v55;
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.debug.getter();
      v121 = 17;
      v127 = swift_allocObject();
      *(v127 + 16) = 32;
      v128 = swift_allocObject();
      *(v128 + 16) = 8;
      v123 = 32;
      v56 = swift_allocObject();
      v57 = v122;
      v125 = v56;
      *(v56 + 16) = v186;
      *(v56 + 24) = v57;
      v58 = swift_allocObject();
      v59 = v125;
      v126 = v58;
      *(v58 + 16) = v187;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v126;
      v130 = v60;
      *(v60 + 16) = v188;
      *(v60 + 24) = v61;
      v129 = _allocateUninitializedArray<A>(_:)();
      v131 = v62;

      v63 = v127;
      v64 = v131;
      *v131 = v189;
      v64[1] = v63;

      v65 = v128;
      v66 = v131;
      v131[2] = v190;
      v66[3] = v65;

      v67 = v130;
      v68 = v131;
      v131[4] = v191;
      v68[5] = v67;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v132, v133))
      {
        v69 = v159;
        v114 = static UnsafeMutablePointer.allocate(capacity:)();
        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v115 = createStorage<A>(capacity:type:)(0);
        v116 = createStorage<A>(capacity:type:)(1);
        v117 = &v253;
        v253 = v114;
        v118 = &v252;
        v252 = v115;
        v119 = &v251;
        v251 = v116;
        serialize(_:at:)(2, &v253);
        serialize(_:at:)(1, v117);
        v249 = v189;
        v250 = v127;
        closure #1 in osLogInternal(_:log:type:)(&v249, v117, v118, v119);
        v120 = v69;
        if (v69)
        {

          __break(1u);
        }

        else
        {
          v249 = v190;
          v250 = v128;
          closure #1 in osLogInternal(_:log:type:)(&v249, &v253, &v252, &v251);
          v112 = 0;
          v249 = v191;
          v250 = v130;
          closure #1 in osLogInternal(_:log:type:)(&v249, &v253, &v252, &v251);
          _os_log_impl(&dword_2686B1000, v132, v133, "#ContactDisambiguationStrategy<%s> handleType(for:) found .allPhone", v114, 0xCu);
          destroyStorage<A>(_:count:)(v115, 0, v113);
          destroyStorage<A>(_:count:)(v116, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v114, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v132);
      v161(v203, v211);
      return 0;
    }

    else
    {
      v70 = v201;
      v71 = Logger.payments.unsafeMutableAddressor();
      v212(v70, v71, v211);
      v102 = 7;
      v72 = swift_allocObject();
      v73 = v215;
      v74 = v216;
      v75 = v218;
      v100 = v72;
      v72[2] = v214;
      v72[3] = v73;
      v72[4] = v74;
      v72[5] = v75;
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.debug.getter();
      v99 = 17;
      v105 = swift_allocObject();
      *(v105 + 16) = 32;
      v106 = swift_allocObject();
      *(v106 + 16) = 8;
      v101 = 32;
      v76 = swift_allocObject();
      v77 = v100;
      v103 = v76;
      *(v76 + 16) = v180;
      *(v76 + 24) = v77;
      v78 = swift_allocObject();
      v79 = v103;
      v104 = v78;
      *(v78 + 16) = v181;
      *(v78 + 24) = v79;
      v80 = swift_allocObject();
      v81 = v104;
      v108 = v80;
      *(v80 + 16) = v182;
      *(v80 + 24) = v81;
      v107 = _allocateUninitializedArray<A>(_:)();
      v109 = v82;

      v83 = v105;
      v84 = v109;
      *v109 = v183;
      v84[1] = v83;

      v85 = v106;
      v86 = v109;
      v109[2] = v184;
      v86[3] = v85;

      v87 = v108;
      v88 = v109;
      v109[4] = v185;
      v88[5] = v87;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v110, v111))
      {
        v89 = v159;
        v92 = static UnsafeMutablePointer.allocate(capacity:)();
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v93 = createStorage<A>(capacity:type:)(0);
        v94 = createStorage<A>(capacity:type:)(1);
        v95 = &v258;
        v258 = v92;
        v96 = &v257;
        v257 = v93;
        v97 = &v256;
        v256 = v94;
        serialize(_:at:)(2, &v258);
        serialize(_:at:)(1, v95);
        v254 = v183;
        v255 = v105;
        closure #1 in osLogInternal(_:log:type:)(&v254, v95, v96, v97);
        v98 = v89;
        if (v89)
        {

          __break(1u);
        }

        else
        {
          v254 = v184;
          v255 = v106;
          closure #1 in osLogInternal(_:log:type:)(&v254, &v258, &v257, &v256);
          v90[1] = 0;
          v254 = v185;
          v255 = v108;
          closure #1 in osLogInternal(_:log:type:)(&v254, &v258, &v257, &v256);
          _os_log_impl(&dword_2686B1000, v110, v111, "#ContactDisambiguationStrategy<%s> handleType(for:) found .phoneAndEmail", v92, 0xCu);
          destroyStorage<A>(_:count:)(v93, 0, v91);
          destroyStorage<A>(_:count:)(v94, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v92, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v110);
      v161(v201, v211);
      return 2;
    }
  }

  return result;
}

uint64_t closure #1 in ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v9 = a2;
  v22 = 0;
  v21 = 0;
  v8 = 0;
  v19 = type metadata accessor for ResponseType();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v6 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v20 = &v6 - v6;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v7 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v15 = &v6 - v7;
  v22 = a1;
  v21 = v4;
  v12 = 0;
  v13 = 1;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v14 = type metadata accessor for NLContextUpdate();
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  (*(v10 + 16))(v15, v9);
  (*(v10 + 56))(v15, v12, v13, v14);
  OutputGenerationManifest.nlContextUpdate.setter();
  (*(v17 + 104))(v20, *MEMORY[0x277D5BC50], v19);
  return OutputGenerationManifest.responseType.setter();
}

uint64_t ContactDisambiguationStrategy.disambiguationPromptDialog(person:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  v4 = v3[2];
  return MEMORY[0x2822009F8](ContactDisambiguationStrategy.disambiguationPromptDialog(person:), 0);
}

uint64_t ContactDisambiguationStrategy.disambiguationPromptDialog(person:)()
{
  *(v0 + 16) = v0;
  lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
  swift_allocError();
  *v1 = 11;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 17;
  swift_willThrow();
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2();
}

uint64_t closure #1 in static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(id *a1)
{
  v9 = 0;
  v9 = *a1;
  v6 = [v9 contactIdentifier];
  if (v6)
  {
    v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4._object = v1;
    MEMORY[0x277D82BD8](v6);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5._object)
  {
    v8 = v7;
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  }

  v3 = String.isEmpty.getter();

  return (v3 ^ 1) & 1;
}

uint64_t closure #2 in static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(id *a1)
{
  v9 = 0;
  v9 = *a1;
  v6 = [v9 customIdentifier];
  if (v6)
  {
    v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4._object = v1;
    MEMORY[0x277D82BD8](v6);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5._object)
  {
    v8 = v7;
  }

  else
  {
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  }

  v3 = String.isEmpty.getter();

  return (v3 ^ 1) & 1;
}

uint64_t closure #3 in static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(id *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *a1;
  v17 = a2;
  v18 = a3;

  v11 = [v19 contactIdentifier];
  if (v11)
  {
    *&v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v7 + 1) = v3;
    MEMORY[0x277D82BD8](v11);
    v8 = v7;
  }

  else
  {
    v8 = 0uLL;
  }

  v15[0] = a2;
  v15[1] = a3;
  v16 = v8;
  if (!a3)
  {
    if (!*(&v16 + 1))
    {
      outlined destroy of String.UTF8View(v15);
      v6 = 1;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  outlined init with copy of String(v15, &v14);
  if (!*(&v16 + 1))
  {
    outlined destroy of String.UTF8View(&v14);
LABEL_11:
    outlined destroy of DIIdentifier(v15);
    v6 = 0;
    goto LABEL_10;
  }

  v13 = v14;
  v12 = v16;
  v5 = MEMORY[0x26D620740](v14, *(&v14 + 1), v16, *(&v16 + 1));
  outlined destroy of String.UTF8View(&v12);
  outlined destroy of String.UTF8View(&v13);
  outlined destroy of String.UTF8View(v15);
  v6 = v5;
LABEL_10:

  return v6 & 1;
}

uint64_t closure #4 in static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(id *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *a1;
  v17 = a2;
  v18 = a3;

  v11 = [v19 customIdentifier];
  if (v11)
  {
    *&v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v7 + 1) = v3;
    MEMORY[0x277D82BD8](v11);
    v8 = v7;
  }

  else
  {
    v8 = 0uLL;
  }

  v15[0] = a2;
  v15[1] = a3;
  v16 = v8;
  if (!a3)
  {
    if (!*(&v16 + 1))
    {
      outlined destroy of String.UTF8View(v15);
      v6 = 1;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  outlined init with copy of String(v15, &v14);
  if (!*(&v16 + 1))
  {
    outlined destroy of String.UTF8View(&v14);
LABEL_11:
    outlined destroy of DIIdentifier(v15);
    v6 = 0;
    goto LABEL_10;
  }

  v13 = v14;
  v12 = v16;
  v5 = MEMORY[0x26D620740](v14, *(&v14 + 1), v16, *(&v16 + 1));
  outlined destroy of String.UTF8View(&v12);
  outlined destroy of String.UTF8View(&v13);
  outlined destroy of String.UTF8View(v15);
  v6 = v5;
LABEL_10:

  return v6 & 1;
}

uint64_t closure #5 in implicit closure #4 in static ContactDisambiguationStrategy.allHaveSameIdentifier(recipients:)(id *a1, uint64_t a2, uint64_t a3)
{
  v7 = [*a1 displayName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = MEMORY[0x26D620740](a2, a3, v3);

  MEMORY[0x277D82BD8](v7);
  return v8 & 1;
}

uint64_t closure #1 in static ContactDisambiguationStrategy.handleType(for:)(id *a1)
{
  v10 = 0;
  v10 = *a1;
  v7 = v10;
  v8 = INPerson.hasHandleLabel.getter();
  MEMORY[0x277D82BE0](v10);
  if (v8)
  {
    v6 = 1;
  }

  else
  {
    v6 = INPerson.hasHandleValue.getter();
  }

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BE0](v10);
  if (v6)
  {
    v9 = [v10 personHandle];
    if (v9)
    {
      v4 = v9;
      MEMORY[0x277D82BE0](v9);
      outlined destroy of SFRichText?(&v9);
      [v4 type];
      MEMORY[0x277D82BD8](v4);
      v5 = 0;
    }

    else
    {
      outlined destroy of SFRichText?(&v9);
      v5 = 1;
    }

    if (v5)
    {
      v3 = 0;
    }

    else
    {
      type metadata accessor for INPersonHandleType();
      lazy protocol witness table accessor for type INPersonHandleType and conformance INPersonHandleType();
      v3 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x277D82BD8](v7);
  return v2 & 1;
}

uint64_t closure #2 in static ContactDisambiguationStrategy.handleType(for:)(id *a1)
{
  v10 = 0;
  v10 = *a1;
  v7 = v10;
  v8 = INPerson.hasHandleLabel.getter();
  MEMORY[0x277D82BE0](v10);
  if (v8)
  {
    v6 = 1;
  }

  else
  {
    v6 = INPerson.hasHandleValue.getter();
  }

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BE0](v10);
  if (v6)
  {
    v9 = [v10 personHandle];
    if (v9)
    {
      v4 = v9;
      MEMORY[0x277D82BE0](v9);
      outlined destroy of SFRichText?(&v9);
      [v4 type];
      MEMORY[0x277D82BD8](v4);
      v5 = 0;
    }

    else
    {
      outlined destroy of SFRichText?(&v9);
      v5 = 1;
    }

    if (v5)
    {
      v3 = 0;
    }

    else
    {
      type metadata accessor for INPersonHandleType();
      lazy protocol witness table accessor for type INPersonHandleType and conformance INPersonHandleType();
      v3 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x277D82BD8](v7);
  return v2 & 1;
}

uint64_t ContactDisambiguationStrategy.deinit()
{
  v6 = *(*v0 + 80);
  v5 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  outlined destroy of SFRichText?(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  return v3;
}

uint64_t ContactDisambiguationStrategy.__deallocating_deinit()
{
  v4 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v2 = *(*v0 + 96);
  ContactDisambiguationStrategy.deinit();
  return swift_deallocClassInstance();
}

uint64_t protocol witness for ContactDisambiguationStrategyProviding.catFamily.getter in conformance ContactDisambiguationStrategy<A, B, C>@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = ContactDisambiguationStrategy.catFamily.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2[10];
  v8 = a2[11];
  v9 = a2[12];
  v10 = a2[13];
  v3 = type metadata accessor for ContactDisambiguationStrategy();
  return MEMORY[0x26D61E450](a1, v3, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 24) = a1;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 32) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)(a2);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  *(v3 + 16) = *v2;
  v8 = v3 + 16;
  v9 = v3 + 16;

  if (v1)
  {
    v5 = *(*v9 + 8);
  }

  else
  {
    **(v8 + 8) = a1;
    v5 = *(*v9 + 8);
  }

  return v5();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = *v4;
  v7 = swift_task_alloc();
  *(v9 + 24) = v7;
  *v7 = *(v9 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return ContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v14 = v5;
  v5[6] = v5;
  v6 = *(MEMORY[0x277D5B588] + 4);
  v7 = swift_task_alloc();
  v14[7] = v7;
  v8 = a4[11];
  v9 = a4[12];
  v10 = a4[13];
  v14[2] = a4[10];
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = type metadata accessor for ContactDisambiguationStrategy();
  *v7 = v14[6];
  v7[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9F38](a1, a2, a3, v11, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(v2 + 48) = *v1;
  v6 = v2 + 48;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v14 = v5;
  v5[6] = v5;
  v6 = *(MEMORY[0x277D5B598] + 4);
  v7 = swift_task_alloc();
  v14[7] = v7;
  v8 = a4[11];
  v9 = a4[12];
  v10 = a4[13];
  v14[2] = a4[10];
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = type metadata accessor for ContactDisambiguationStrategy();
  *v7 = v14[6];
  v7[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9F48](a1, a2, a3, v11, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  v4[6] = v4;
  v5 = *(MEMORY[0x277D5B590] + 4);
  v6 = swift_task_alloc();
  v13[7] = v6;
  v7 = a3[11];
  v8 = a3[12];
  v9 = a3[13];
  v13[2] = a3[10];
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v9;
  v10 = type metadata accessor for ContactDisambiguationStrategy();
  *v6 = v13[6];
  v6[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  v4[6] = v4;
  v5 = *(MEMORY[0x277D5B5A0] + 4);
  v6 = swift_task_alloc();
  v13[7] = v6;
  v7 = a3[11];
  v8 = a3[12];
  v9 = a3[13];
  v13[2] = a3[10];
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v9;
  v10 = type metadata accessor for ContactDisambiguationStrategy();
  *v6 = v13[6];
  v6[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, void *a2)
{
  v3 = a2[10];
  v4 = a2[11];
  v5 = a2[12];
  v6 = a2[13];
  type metadata accessor for ContactDisambiguationStrategy();
  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)();
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v15 = v6;
  v6[6] = v6;
  v7 = *(MEMORY[0x277D5C0B0] + 4);
  v8 = swift_task_alloc();
  v15[7] = v8;
  v9 = a5[11];
  v10 = a5[12];
  v11 = a5[13];
  v15[2] = a5[10];
  v15[3] = v9;
  v15[4] = v10;
  v15[5] = v11;
  v12 = type metadata accessor for ContactDisambiguationStrategy();
  *v8 = v15[6];
  v8[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v12, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance ContactDisambiguationStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v16 = v7;
  v7[6] = v7;
  v8 = *(MEMORY[0x277D5C0B8] + 4);
  v9 = swift_task_alloc();
  v16[7] = v9;
  v10 = a6[11];
  v11 = a6[12];
  v12 = a6[13];
  v16[2] = a6[10];
  v16[3] = v10;
  v16[4] = v11;
  v16[5] = v12;
  v13 = type metadata accessor for ContactDisambiguationStrategy();
  *v9 = v16[6];
  v9[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t PayeeDisambiguationStrategy.disambiguationPromptDialog(person:)(uint64_t a1, uint64_t a2)
{
  v3[22] = v2;
  v3[21] = a2;
  v3[20] = a1;
  v3[14] = v3;
  v3[15] = 0;
  v3[16] = 0;
  v3[17] = 0;
  v3[18] = 0;
  v3[19] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(type metadata accessor for Locale() - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[15] = a2;
  v3[16] = v2;
  v6 = v3[14];

  return MEMORY[0x2822009F8](PayeeDisambiguationStrategy.disambiguationPromptDialog(person:), 0);
}

uint64_t PayeeDisambiguationStrategy.disambiguationPromptDialog(person:)()
{
  v36 = *(v0 + 176);
  *(v0 + 112) = v0;

  v37 = *(v36 + 16);

  type metadata accessor for SendPaymentCATs();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v34 = v38;
  }

  else
  {

    v34 = 0;
  }

  v35[25] = v34;
  if (v34)
  {
    v33 = v35[21];
    v35[17] = v34;
    MEMORY[0x277D82BE0](v33);
    if (v33)
    {
      v29 = v35[21];
      v30 = v35[24];
      v31 = v35[23];
      v25 = v35[22];
      v35[18] = v29;
      type metadata accessor for DialogPerson();
      MEMORY[0x277D82BE0](v29);

      outlined init with copy of GlobalsProviding(v25 + 24, (v35 + 2));

      v27 = v35[5];
      v26 = v35[6];
      __swift_project_boxed_opaque_existential_1(v35 + 2, v27);
      (*(v26 + 16))(v27);
      v28 = v35[11];
      __swift_project_boxed_opaque_existential_1(v35 + 7, v35[10]);
      dispatch thunk of DeviceState.siriLocale.getter();
      v32 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
      v35[26] = v32;
      __swift_destroy_boxed_opaque_existential_0(v35 + 7);
      __swift_destroy_boxed_opaque_existential_0(v35 + 2);
      v35[19] = v32;
      SendPaymentSlots.rawValue.getter(0);
      String.toSpeakableString.getter();

      v1 = type metadata accessor for SpeakableString();
      (*(*(v1 - 8) + 56))(v31, 0, 1);

      v2 = swift_task_alloc();
      v35[27] = v2;
      *v2 = v35[14];
      v2[1] = PayeeDisambiguationStrategy.disambiguationPromptDialog(person:);
      v3 = v35[23];
      v4 = v35[20];

      return SendPaymentCATs.disambiguateSlotValue(slot:payee:)(v4, v3, v32);
    }

    v21 = SendPaymentSlots.rawValue.getter(0);
    v22 = v6;
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nil", 3uLL, 1);
    v35[12] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v35[13] = v8;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    type metadata accessor for INSendPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v10);

    v20 = v35[12];
    v19 = v35[13];

    outlined destroy of String.UTF8View((v35 + 12));
    v24 = MEMORY[0x26D620710](v20, v19);
    v23 = v11;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v12 = v21;
    *(v12 + 8) = v22;
    *(v12 + 16) = v7;
    *(v12 + 32) = v24;
    *(v12 + 40) = v23;
    *(v12 + 48) = 9;
    swift_willThrow();
  }

  else
  {
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#DisambiguateSlotValue", 0x21uLL, 1);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v14 = v13;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 6;
    swift_willThrow();
  }

  v15 = v35[24];
  v18 = v35[23];

  v16 = *(v35[14] + 8);
  v17 = v35[14];

  return v16();
}

{
  v9 = *v1;
  v2 = *(*v1 + 216);
  v9[14] = *v1;
  v10 = v9 + 14;
  v9[28] = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = PayeeDisambiguationStrategy.disambiguationPromptDialog(person:);
  }

  else
  {
    v3 = v9[26];
    v8 = v9[23];

    outlined destroy of SpeakableString?(v8);
    v4 = *v10;
    v5 = PayeeDisambiguationStrategy.disambiguationPromptDialog(person:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v1 = v0[26];
  v6 = v0[25];
  v7 = v0[24];
  v8 = v0[23];
  v5 = v0[21];
  v0[14] = v0;

  MEMORY[0x277D82BD8](v5);

  v2 = *(v0[14] + 8);
  v3 = v0[14];

  return v2();
}

{
  v7 = v0[26];
  v9 = v0[25];
  v6 = v0[23];
  v8 = v0[21];
  v0[14] = v0;

  outlined destroy of SpeakableString?(v6);

  MEMORY[0x277D82BD8](v8);

  v1 = v0[28];
  v2 = v0[24];
  v10 = v0[23];

  v3 = *(v0[14] + 8);
  v4 = v0[14];

  return v3();
}

void *PayeeDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v12 = 0;
  v11[8] = a1;
  v11[7] = a2;
  v11[6] = a3;
  v11[5] = a4;

  outlined init with copy of GlobalsProviding(a2, v11);
  MEMORY[0x277D82BE0](a3);
  outlined init with copy of GlobalsProviding(a4, v10);
  v9 = ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:)(a1, v11, a3, v10);

  v12 = v9;
  __swift_destroy_boxed_opaque_existential_0(a4);
  MEMORY[0x277D82BD8](a3);
  __swift_destroy_boxed_opaque_existential_0(a2);

  return v9;
}

uint64_t PayerDisambiguationStrategy.disambiguationPromptDialog(person:)(uint64_t a1, uint64_t a2)
{
  v3[22] = v2;
  v3[21] = a2;
  v3[20] = a1;
  v3[14] = v3;
  v3[15] = 0;
  v3[16] = 0;
  v3[17] = 0;
  v3[18] = 0;
  v3[19] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(type metadata accessor for Locale() - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[15] = a2;
  v3[16] = v2;
  v6 = v3[14];

  return MEMORY[0x2822009F8](PayerDisambiguationStrategy.disambiguationPromptDialog(person:), 0);
}

uint64_t PayerDisambiguationStrategy.disambiguationPromptDialog(person:)()
{
  v36 = *(v0 + 176);
  *(v0 + 112) = v0;

  v37 = *(v36 + 16);

  type metadata accessor for RequestPaymentCATs();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v34 = v38;
  }

  else
  {

    v34 = 0;
  }

  v35[25] = v34;
  if (v34)
  {
    v33 = v35[21];
    v35[17] = v34;
    MEMORY[0x277D82BE0](v33);
    if (v33)
    {
      v29 = v35[21];
      v30 = v35[24];
      v32 = v35[23];
      v25 = v35[22];
      v35[18] = v29;
      type metadata accessor for DialogPerson();
      MEMORY[0x277D82BE0](v29);

      outlined init with copy of GlobalsProviding(v25 + 24, (v35 + 2));

      v27 = v35[5];
      v26 = v35[6];
      __swift_project_boxed_opaque_existential_1(v35 + 2, v27);
      (*(v26 + 16))(v27);
      v28 = v35[11];
      __swift_project_boxed_opaque_existential_1(v35 + 7, v35[10]);
      dispatch thunk of DeviceState.siriLocale.getter();
      v31 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
      v35[26] = v31;
      __swift_destroy_boxed_opaque_existential_0(v35 + 7);
      __swift_destroy_boxed_opaque_existential_0(v35 + 2);
      v35[19] = v31;
      RequestPaymentSlots.rawValue.getter(0);
      String.toSpeakableString.getter();

      v1 = type metadata accessor for SpeakableString();
      (*(*(v1 - 8) + 56))(v32, 0, 1);
      v2 = swift_task_alloc();
      v35[27] = v2;
      *v2 = v35[14];
      v2[1] = PayerDisambiguationStrategy.disambiguationPromptDialog(person:);
      v3 = v35[23];
      v4 = v35[20];

      return RequestPaymentCATs.disambiguateSlotValue(slot:)(v4, v3);
    }

    v21 = RequestPaymentSlots.rawValue.getter(0);
    v22 = v6;
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nil", 3uLL, 1);
    v35[12] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v35[13] = v8;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    type metadata accessor for INRequestPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v10);

    v20 = v35[12];
    v19 = v35[13];

    outlined destroy of String.UTF8View((v35 + 12));
    v24 = MEMORY[0x26D620710](v20, v19);
    v23 = v11;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v12 = v21;
    *(v12 + 8) = v22;
    *(v12 + 16) = v7;
    *(v12 + 32) = v24;
    *(v12 + 40) = v23;
    *(v12 + 48) = 9;
    swift_willThrow();
  }

  else
  {
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#DisambiguateSlotValue", 0x24uLL, 1);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v14 = v13;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 6;
    swift_willThrow();
  }

  v15 = v35[24];
  v18 = v35[23];

  v16 = *(v35[14] + 8);
  v17 = v35[14];

  return v16();
}

{
  v7 = *v1;
  v2 = *(*v1 + 216);
  v7[14] = *v1;
  v8 = v7 + 14;
  v7[28] = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = PayerDisambiguationStrategy.disambiguationPromptDialog(person:);
  }

  else
  {
    outlined destroy of SpeakableString?(v7[23]);
    v3 = *v8;
    v4 = PayeeDisambiguationStrategy.disambiguationPromptDialog(person:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v7 = v0[26];
  v9 = v0[25];
  v1 = v0[23];
  v8 = v0[21];
  v0[14] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v8);

  v2 = v0[28];
  v3 = v0[24];
  v10 = v0[23];

  v4 = *(v0[14] + 8);
  v5 = v0[14];

  return v4();
}

id @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = type metadata accessor for PersonNameComponents();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(a2, 1) == 1)
  {
    v18 = 0;
  }

  else
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(v29 + 8))(a2, v28);
    v18 = isa;
  }

  if (a4)
  {
    v15 = MEMORY[0x26D620690](a3);

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (a7)
  {
    v13 = MEMORY[0x26D620690](a6);

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a9)
  {
    v11 = MEMORY[0x26D620690](a8);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v10 = [v26 initWithPersonHandle:a1 nameComponents:v18 displayName:v16 image:a5 contactIdentifier:v14 customIdentifier:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](a1);
  return v10;
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = MEMORY[0x28223BE20](v23);
    v16 = v29;
    v17 = v11;
    _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in serialize<A>(_:at:), v15, v12, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v13, MEMORY[0x277D84F78]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t _ss27_withUnprotectedUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_2687813BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687813FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26878143C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687814D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268781514()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268781554()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268781594()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

NSJSONWritingOptions partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:)()
{
  v4 = v0[3];
  v3 = v0[4];
  v1 = v0[5];
  return NSJSONWritingOptions.init(rawValue:)(v0[2]);
}

uint64_t sub_268781660()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687816A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687816E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268781720()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_2687817C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268781804()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268781844()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268781884()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_2687818D0()
{
  v7 = *(v0 + 2);
  v6 = *(v0 + 3);
  v5 = *(v0 + 4);
  v3 = *(type metadata accessor for ParameterResolutionRecord() - 8);
  v1 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(&v0[v1]);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  v7 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v1 = type metadata accessor for ParameterResolutionRecord();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));

  return implicit closure #2 in ContactDisambiguationStrategy.makeDisambiguationItemContainer(resolveRecord:)();
}

uint64_t sub_268781AB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268781AF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268781B34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_268781C30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a4();
  v8 = *a1;
  MEMORY[0x277D82BE0](v9);
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  if (v9)
  {
    MEMORY[0x277D82BD8](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (*a2)
  {
    MEMORY[0x277D82BE0](v9);
    *v5 = v9;
    result = MEMORY[0x277D82BD8](v9);
    *a2 = v5 + 1;
  }

  else
  {
    result = MEMORY[0x277D82BD8](v9);
  }

  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268781E00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268781E4C()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268781E98()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_268781ED8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v1 = lazy protocol witness table accessor for type [INPerson] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type [INPerson] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [INPerson] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPerson] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [INPerson] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [INPerson] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPerson] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [INPerson] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [INPerson] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPerson] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [INPerson] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [INPerson] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPerson] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [INPerson] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268782060()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687820A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687820E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782178()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687821B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782280()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268782324()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782364()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687823A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687823E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26878242C()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #9 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #9 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(v2);
}

uint64_t sub_2687825CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26878260C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687826A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687826E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782750()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t partial apply for specialized implicit closure #16 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return specialized implicit closure #16 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)();
}

uint64_t sub_268782830()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782870()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687828B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782948()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782988()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782A20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782A60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782B28()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268782C00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782C40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782C80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782D18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782D64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  v2 = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int and conformance Int);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268782E90()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268782F34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782F74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268782FB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *outlined init with take of PersonNameComponents?(const void *a1, void *a2)
{
  v6 = type metadata accessor for PersonNameComponents();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of PersonNameComponents?(uint64_t a1)
{
  v3 = type metadata accessor for PersonNameComponents();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *outlined init with copy of String(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_268783204()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_2687832F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783338()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783378()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783410()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783450()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783490()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_26878357C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687835BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687835FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783694()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687836D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783714()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268783760()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  MEMORY[0x277D82BD8](v0[6]);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #7 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  v5 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v1 = v0[5];
  return implicit closure #7 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(v0[6]);
}

uint64_t sub_268783844()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783884()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687838C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26878395C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26878399C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined consume of PaymentsDirectInvocations?(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 255)
  {
    return outlined consume of PaymentsDirectInvocations(result, a2, a3);
  }

  return result;
}

uint64_t sub_268783A28()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268783A74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783B0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783B4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783B8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783C24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783C64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783CA4()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268783D74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783DB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783DF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783E8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783ECC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783F0C()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268783FB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268783FF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784030()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784070()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268784114()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784154()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784194()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687841DC()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268784280()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687842C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784300()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784340()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_2687843E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784424()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784464()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687844A4()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268784580()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687845C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784600()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687846EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784760()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2687847E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784834()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t closure #1 in OSLogArguments.append<A>(_:)partial apply(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  v5 = MEMORY[0x277D849A8];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  v2 = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2687849F0()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268784A94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784AD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784B14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784B54()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268784BF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784C38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784C78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784CB8()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268784D5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784D9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784DDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784E1C()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_268784EC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784F00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268784F40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata completion function for ContactDisambiguationStrategy()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for PayeeDisambiguationStrategy()
{
  v1 = type metadata singleton initialization cache for PayeeDisambiguationStrategy;
  if (!type metadata singleton initialization cache for PayeeDisambiguationStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for PayeeDisambiguationStrategy()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for PayerDisambiguationStrategy()
{
  v1 = type metadata singleton initialization cache for PayerDisambiguationStrategy;
  if (!type metadata singleton initialization cache for PayerDisambiguationStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t instantiation function for generic protocol witness table for ContactDisambiguationStrategy<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type BasicDisambiguationItemContainer<INPerson> and conformance BasicDisambiguationItemContainer<A>()
{
  v2 = lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INPerson> and conformance BasicDisambiguationItemContainer<A>;
  if (!lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INPerson> and conformance BasicDisambiguationItemContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8INPersonCGMd, &_s11SiriKitFlow32BasicDisambiguationItemContainerCySo8INPersonCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type BasicDisambiguationItemContainer<INPerson> and conformance BasicDisambiguationItemContainer<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t partial apply for closure #1 in serialize<A>(_:at:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in serialize<A>(_:at:)();
}

uint64_t PaymentsBaseCATs.buttonCancel(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ButtonCancel", 0x19uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.buttonCancel()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](PaymentsBaseCATs.buttonCancel(), 0);
}

uint64_t PaymentsBaseCATs.buttonCancel()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ButtonCancel", 0x19uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ButtonCancel", 0x19uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.buttonYes(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ButtonYes", 0x16uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.buttonYes()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](PaymentsBaseCATs.buttonYes(), 0);
}

uint64_t PaymentsBaseCATs.buttonYes()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ButtonYes", 0x16uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ButtonYes", 0x16uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.confirmApp(app:completion:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ConfirmApp", 0x17uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.confirmApp(app:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  v4 = v3[2];
  return MEMORY[0x2822009F8](PaymentsBaseCATs.confirmApp(app:), 0);
}

uint64_t PaymentsBaseCATs.confirmApp(app:)()
{
  v13 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ConfirmApp", 0x17uLL, 1);
  v0[8] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v12 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v13)
  {
    v10 = v11[6];
    v12[2]._object = type metadata accessor for SirikitApp();
    v12[1]._countAndFlagsBits = v10;
  }

  else
  {
    v12[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = KeyValuePairs.init(dictionaryLiteral:)();
  v11[9] = v8;
  v9 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v3 = *(MEMORY[0x277D55BF0] + 4);
  v4 = swift_task_alloc();
  v11[10] = v4;
  *v4 = v11[2];
  v4[1] = RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:);
  v5 = v11[7];
  v6 = v11[5];

  return v9(v6, v1._countAndFlagsBits, v1._object, v8);
}

uint64_t PaymentsBaseCATs.confirmApp(app:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ConfirmApp", 0x17uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.disambiguateApp(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#DisambiguateApp", 0x1CuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.disambiguateApp()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](PaymentsBaseCATs.disambiguateApp(), 0);
}

uint64_t PaymentsBaseCATs.disambiguateApp()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#DisambiguateApp", 0x1CuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#DisambiguateApp", 0x1CuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:completion:)(const void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v49 = a1;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v42 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v49);
  v43 = v33 - v42;
  v44 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6);
  v51 = v33 - v44;
  v62 = v8;
  v61 = v9;
  v60 = v10;
  v58 = v11;
  v59 = v12;
  v57 = v5;
  v50 = 1;
  v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ErrorWithCode", 0x1AuLL, 1);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v47 = _allocateUninitializedArray<A>(_:)();
  v48 = v13;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, v50 & 1);
  v15 = v49;
  v16 = v51;
  *v48 = v14;
  outlined init with copy of SpeakableString?(v15, v16);
  v52 = type metadata accessor for SpeakableString();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = *(v53 + 48);
  v56 = v53 + 48;
  if (v55(v51, v50) == 1)
  {
    outlined destroy of SpeakableString?(v51);
    v32 = v48;
    v48[1]._countAndFlagsBits = 0;
    v32[1]._object = 0;
    v32[2]._countAndFlagsBits = 0;
    v32[2]._object = 0;
  }

  else
  {
    v17 = v48;
    v48[2]._object = v52;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17[1]._countAndFlagsBits);
    (*(v53 + 32))(boxed_opaque_existential_1, v51, v52);
  }

  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v48[3] = v19;

  if (v38)
  {
    v37 = v38;
    v36 = v38;
    v20 = type metadata accessor for PaymentsDialogConcept();
    v21 = v48;
    v22 = v36;
    v48[5]._object = v20;
    v21[4]._countAndFlagsBits = v22;
  }

  else
  {
    v31 = v48;
    v48[4]._countAndFlagsBits = 0;
    v31[4]._object = 0;
    v31[5]._countAndFlagsBits = 0;
    v31[5]._object = 0;
  }

  v34 = v48 + 7;
  v35 = 1;
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("intentType", 0xAuLL, 1);
  v24 = v39;
  v25 = v43;
  v48[6] = v23;
  outlined init with copy of SpeakableString?(v24, v25);
  if ((v55)(v43, v35, v52) == 1)
  {
    outlined destroy of SpeakableString?(v43);
    v30 = v48;
    v48[7]._countAndFlagsBits = 0;
    v30[7]._object = 0;
    v30[8]._countAndFlagsBits = 0;
    v30[8]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v34->_countAndFlagsBits;
    v48[8]._object = v52;
    v27 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v53 + 32))(v27, v43, v52);
  }

  v28 = v47;
  _finalizeUninitializedArray<A>(_:)();
  v33[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v33[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[10] = a4;
  v5[9] = a3;
  v5[8] = a2;
  v5[7] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = v4;
  v6 = v5[2];

  return MEMORY[0x2822009F8](PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:), 0);
}

uint64_t PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:)()
{
  v21 = v0[13];
  v20 = v0[8];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ErrorWithCode", 0x1AuLL, 1);
  v0[14] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v19 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, 1);
  outlined init with copy of SpeakableString?(v20, v21);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v21, 1) == 1)
  {
    outlined destroy of SpeakableString?(v18[13]);
    v19[1]._countAndFlagsBits = 0;
    v19[1]._object = 0;
    v19[2]._countAndFlagsBits = 0;
    v19[2]._object = 0;
  }

  else
  {
    v17 = v18[13];
    v19[2]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19[1]._countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v17, v22);
  }

  v16 = v18[9];
  v19[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v16)
  {
    v15 = v18[9];
    v19[5]._object = type metadata accessor for PaymentsDialogConcept();
    v19[4]._countAndFlagsBits = v15;
  }

  else
  {
    v19[4]._countAndFlagsBits = 0;
    v19[4]._object = 0;
    v19[5]._countAndFlagsBits = 0;
    v19[5]._object = 0;
  }

  v14 = v18[12];
  v13 = v18[10];
  v19[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("intentType", 0xAuLL, 1);
  outlined init with copy of SpeakableString?(v13, v14);
  if ((v24)(v14, 1, v22) == 1)
  {
    outlined destroy of SpeakableString?(v18[12]);
    v19[7]._countAndFlagsBits = 0;
    v19[7]._object = 0;
    v19[8]._countAndFlagsBits = 0;
    v19[8]._object = 0;
  }

  else
  {
    v12 = v18[12];
    v19[8]._object = v22;
    v4 = __swift_allocate_boxed_opaque_existential_1(&v19[7]._countAndFlagsBits);
    (*(v23 + 32))(v4, v12, v22);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v10 = KeyValuePairs.init(dictionaryLiteral:)();
  v18[15] = v10;
  v11 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v5 = *(MEMORY[0x277D55BF0] + 4);
  v6 = swift_task_alloc();
  v18[16] = v6;
  *v6 = v18[2];
  v6[1] = PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:);
  v7 = v18[11];
  v8 = v18[7];

  return v11(v8, v1._countAndFlagsBits, v1._object, v10);
}

{
  v10 = *v1;
  v2 = *(*v1 + 128);
  v10[2] = *v1;
  v11 = v10 + 2;
  v10[17] = v0;

  if (v0)
  {
    v6 = *v11;

    return MEMORY[0x2822009F8](PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:), 0);
  }

  else
  {
    v3 = v10[15];
    v7 = v10[14];
    v8 = v10[13];
    v9 = v10[12];

    v4 = *(*v11 + 8);

    return v4();
  }
}

{
  v1 = v0[15];
  v7 = v0[14];
  v8 = v0[13];
  v9 = v0[12];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[17];

  return v3();
}

uint64_t PaymentsBaseCATs.errorWithCode(errorCode:paymentsConcept:intentType:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v45 = a1;
  v36 = a2;
  v37 = a3;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v38 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v45);
  v39 = v30 - v38;
  v40 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v47 = v30 - v40;
  v56 = v7;
  v55 = v8;
  v54 = v9;
  v53 = v4;
  v46 = 1;
  v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#ErrorWithCode", 0x1AuLL, 1);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v43 = _allocateUninitializedArray<A>(_:)();
  v44 = v10;
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, v46 & 1);
  v12 = v45;
  v13 = v47;
  *v44 = v11;
  outlined init with copy of SpeakableString?(v12, v13);
  v48 = type metadata accessor for SpeakableString();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = *(v49 + 48);
  v52 = v49 + 48;
  if (v51(v47, v46) == 1)
  {
    outlined destroy of SpeakableString?(v47);
    v29 = v44;
    v44[1]._countAndFlagsBits = 0;
    v29[1]._object = 0;
    v29[2]._countAndFlagsBits = 0;
    v29[2]._object = 0;
  }

  else
  {
    v14 = v44;
    v44[2]._object = v48;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14[1]._countAndFlagsBits);
    (*(v49 + 32))(boxed_opaque_existential_1, v47, v48);
  }

  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v44[3] = v16;

  if (v36)
  {
    v34 = v36;
    v33 = v36;
    v17 = type metadata accessor for PaymentsDialogConcept();
    v18 = v44;
    v19 = v33;
    v44[5]._object = v17;
    v18[4]._countAndFlagsBits = v19;
  }

  else
  {
    v28 = v44;
    v44[4]._countAndFlagsBits = 0;
    v28[4]._object = 0;
    v28[5]._countAndFlagsBits = 0;
    v28[5]._object = 0;
  }

  v31 = v44 + 7;
  v32 = 1;
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("intentType", 0xAuLL, 1);
  v21 = v37;
  v22 = v39;
  v44[6] = v20;
  outlined init with copy of SpeakableString?(v21, v22);
  if ((v51)(v39, v32, v48) == 1)
  {
    outlined destroy of SpeakableString?(v39);
    v27 = v44;
    v44[7]._countAndFlagsBits = 0;
    v27[7]._object = 0;
    v27[8]._countAndFlagsBits = 0;
    v27[8]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v31->_countAndFlagsBits;
    v44[8]._object = v48;
    v24 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v49 + 32))(v24, v39, v48);
  }

  v25 = v43;
  _finalizeUninitializedArray<A>(_:)();
  v30[0] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v30[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.knownIntentResponse(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#KnownIntentResponse", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.knownIntentResponse()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](PaymentsBaseCATs.knownIntentResponse(), 0);
}

uint64_t PaymentsBaseCATs.knownIntentResponse()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#KnownIntentResponse", 0x20uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#KnownIntentResponse", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:completion:)(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v54 = a1;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v54);
  v46 = v36 - v45;
  v47 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6);
  v48 = v36 - v47;
  v49 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v56 = v36 - v49;
  v67 = v10;
  v66 = v11;
  v65 = v12;
  v63 = v13;
  v64 = v14;
  v62 = v5;
  v55 = 1;
  v50 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#LabelForEnum", 0x19uLL, 1);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v52 = _allocateUninitializedArray<A>(_:)();
  v53 = v15;
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, v55 & 1);
  v17 = v54;
  v18 = v56;
  *v53 = v16;
  outlined init with copy of SpeakableString?(v17, v18);
  v57 = type metadata accessor for SpeakableString();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = *(v58 + 48);
  v61 = v58 + 48;
  if (v60(v56, v55) == 1)
  {
    outlined destroy of SpeakableString?(v56);
    v35 = v53;
    v53[1]._countAndFlagsBits = 0;
    v35[1]._object = 0;
    v35[2]._countAndFlagsBits = 0;
    v35[2]._object = 0;
  }

  else
  {
    v19 = v53;
    v53[2]._object = v57;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19[1]._countAndFlagsBits);
    (*(v58 + 32))(boxed_opaque_existential_1, v56, v57);
  }

  v39 = v53 + 4;
  v40 = 1;
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, 1);
  v22 = v41;
  v23 = v48;
  v53[3] = v21;
  outlined init with copy of SpeakableString?(v22, v23);
  if ((v60)(v48, v40, v57) == 1)
  {
    outlined destroy of SpeakableString?(v48);
    v34 = v53;
    v53[4]._countAndFlagsBits = 0;
    v34[4]._object = 0;
    v34[5]._countAndFlagsBits = 0;
    v34[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v39->_countAndFlagsBits;
    v53[5]._object = v57;
    v25 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v58 + 32))(v25, v48, v57);
  }

  v37 = v53 + 7;
  v38 = 1;
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType", 0xBuLL, 1);
  v27 = v42;
  v28 = v46;
  v53[6] = v26;
  outlined init with copy of SpeakableString?(v27, v28);
  if ((v60)(v46, v38, v57) == 1)
  {
    outlined destroy of SpeakableString?(v46);
    v33 = v53;
    v53[7]._countAndFlagsBits = 0;
    v33[7]._object = 0;
    v33[8]._countAndFlagsBits = 0;
    v33[8]._object = 0;
  }

  else
  {
    v29 = &v37->_countAndFlagsBits;
    v53[8]._object = v57;
    v30 = __swift_allocate_boxed_opaque_existential_1(v29);
    (*(v58 + 32))(v30, v46, v57);
  }

  v31 = v52;
  _finalizeUninitializedArray<A>(_:)();
  v36[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v36[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[10] = a4;
  v5[9] = a3;
  v5[8] = a2;
  v5[7] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = v4;
  v6 = v5[2];

  return MEMORY[0x2822009F8](PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:), 0);
}

uint64_t PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:)()
{
  v23 = v0[14];
  v22 = v0[8];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#LabelForEnum", 0x19uLL, 1);
  v0[15] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v21 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
  outlined init with copy of SpeakableString?(v22, v23);
  v24 = type metadata accessor for SpeakableString();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v23, 1) == 1)
  {
    outlined destroy of SpeakableString?(v20[14]);
    v21[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  else
  {
    v19 = v20[14];
    v21[2]._object = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21[1]._countAndFlagsBits);
    (*(v25 + 32))(boxed_opaque_existential_1, v19, v24);
  }

  v18 = v20[13];
  v17 = v20[9];
  v21[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, 1);
  outlined init with copy of SpeakableString?(v17, v18);
  if ((v26)(v18, 1, v24) == 1)
  {
    outlined destroy of SpeakableString?(v20[13]);
    v21[4]._countAndFlagsBits = 0;
    v21[4]._object = 0;
    v21[5]._countAndFlagsBits = 0;
    v21[5]._object = 0;
  }

  else
  {
    v16 = v20[13];
    v21[5]._object = v24;
    v4 = __swift_allocate_boxed_opaque_existential_1(&v21[4]._countAndFlagsBits);
    (*(v25 + 32))(v4, v16, v24);
  }

  v15 = v20[12];
  v14 = v20[10];
  v21[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType", 0xBuLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  if ((v26)(v15, 1, v24) == 1)
  {
    outlined destroy of SpeakableString?(v20[12]);
    v21[7]._countAndFlagsBits = 0;
    v21[7]._object = 0;
    v21[8]._countAndFlagsBits = 0;
    v21[8]._object = 0;
  }

  else
  {
    v13 = v20[12];
    v21[8]._object = v24;
    v5 = __swift_allocate_boxed_opaque_existential_1(&v21[7]._countAndFlagsBits);
    (*(v25 + 32))(v5, v13, v24);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v11 = KeyValuePairs.init(dictionaryLiteral:)();
  v20[16] = v11;
  v12 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v6 = *(MEMORY[0x277D55BF0] + 4);
  v7 = swift_task_alloc();
  v20[17] = v7;
  *v7 = v20[2];
  v7[1] = PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:);
  v8 = v20[11];
  v9 = v20[7];

  return v12(v9, v1._countAndFlagsBits, v1._object, v11);
}

{
  v11 = *v1;
  v2 = *(*v1 + 136);
  v11[2] = *v1;
  v12 = v11 + 2;
  v11[18] = v0;

  if (v0)
  {
    v6 = *v12;

    return MEMORY[0x2822009F8](PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:), 0);
  }

  else
  {
    v3 = v11[16];
    v7 = v11[15];
    v8 = v11[14];
    v9 = v11[13];
    v10 = v11[12];

    v4 = *(*v12 + 8);

    return v4();
  }
}

{
  v1 = v0[16];
  v7 = v0[15];
  v8 = v0[14];
  v9 = v0[13];
  v10 = v0[12];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[18];

  return v3();
}

uint64_t PaymentsBaseCATs.labelForEnum(accountType:amountType:balanceType:)@<X0>(const void *a1@<X0>, const void *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v50 = a1;
  v39 = a2;
  v40 = a3;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v41 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v50);
  v42 = v33 - v41;
  v43 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v44 = v33 - v43;
  v45 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7);
  v52 = v33 - v45;
  v61 = v9;
  v60 = v10;
  v59 = v11;
  v58 = v4;
  v51 = 1;
  v46 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#LabelForEnum", 0x19uLL, 1);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v48 = _allocateUninitializedArray<A>(_:)();
  v49 = v12;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, v51 & 1);
  v14 = v50;
  v15 = v52;
  *v49 = v13;
  outlined init with copy of SpeakableString?(v14, v15);
  v53 = type metadata accessor for SpeakableString();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = *(v54 + 48);
  v57 = v54 + 48;
  if (v56(v52, v51) == 1)
  {
    outlined destroy of SpeakableString?(v52);
    v32 = v49;
    v49[1]._countAndFlagsBits = 0;
    v32[1]._object = 0;
    v32[2]._countAndFlagsBits = 0;
    v32[2]._object = 0;
  }

  else
  {
    v16 = v49;
    v49[2]._object = v53;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16[1]._countAndFlagsBits);
    (*(v54 + 32))(boxed_opaque_existential_1, v52, v53);
  }

  v36 = v49 + 4;
  v37 = 1;
  v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, 1);
  v19 = v39;
  v20 = v44;
  v49[3] = v18;
  outlined init with copy of SpeakableString?(v19, v20);
  if ((v56)(v44, v37, v53) == 1)
  {
    outlined destroy of SpeakableString?(v44);
    v31 = v49;
    v49[4]._countAndFlagsBits = 0;
    v31[4]._object = 0;
    v31[5]._countAndFlagsBits = 0;
    v31[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v36->_countAndFlagsBits;
    v49[5]._object = v53;
    v22 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v54 + 32))(v22, v44, v53);
  }

  v34 = v49 + 7;
  v35 = 1;
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType", 0xBuLL, 1);
  v24 = v40;
  v25 = v42;
  v49[6] = v23;
  outlined init with copy of SpeakableString?(v24, v25);
  if ((v56)(v42, v35, v53) == 1)
  {
    outlined destroy of SpeakableString?(v42);
    v30 = v49;
    v49[7]._countAndFlagsBits = 0;
    v30[7]._object = 0;
    v30[8]._countAndFlagsBits = 0;
    v30[8]._object = 0;
  }

  else
  {
    v26 = &v34->_countAndFlagsBits;
    v49[8]._object = v53;
    v27 = __swift_allocate_boxed_opaque_existential_1(v26);
    (*(v54 + 32))(v27, v42, v53);
  }

  v28 = v48;
  _finalizeUninitializedArray<A>(_:)();
  v33[0] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v33[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.labelForPreferences(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#LabelForPreferences", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.labelForPreferences()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](PaymentsBaseCATs.labelForPreferences(), 0);
}

uint64_t PaymentsBaseCATs.labelForPreferences()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#LabelForPreferences", 0x20uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#LabelForPreferences", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.noAppFoundOnDeviceToSupportIntent(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#NoAppFoundOnDeviceToSupportIntent", 0x2EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.noAppFoundOnDeviceToSupportIntent()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](PaymentsBaseCATs.noAppFoundOnDeviceToSupportIntent(), 0);
}

uint64_t PaymentsBaseCATs.noAppFoundOnDeviceToSupportIntent()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#NoAppFoundOnDeviceToSupportIntent", 0x2EuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#NoAppFoundOnDeviceToSupportIntent", 0x2EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.noResultsResponse(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#NoResultsResponse", 0x1EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.noResultsResponse()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](PaymentsBaseCATs.noResultsResponse(), 0);
}

uint64_t PaymentsBaseCATs.noResultsResponse()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#NoResultsResponse", 0x1EuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#NoResultsResponse", 0x1EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.slotDisplayValue(slotName:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v15[4] = a2;
  v15[5] = a3;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v15 - v16;
  v30 = MEMORY[0x28223BE20](v21);
  v28 = v4;
  v29 = v5;
  v27 = v3;
  v22 = 1;
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#SlotDisplayValue", 0x1DuLL, 1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  v20 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slotName", 8uLL, v22 & 1);
  v8 = v21;
  v9 = v23;
  *v20 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v24 = type metadata accessor for SpeakableString();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  if ((*(v25 + 48))(v23, v22) == 1)
  {
    outlined destroy of SpeakableString?(v23);
    v14 = v20;
    v20[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v20;
    v20[2]._object = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v25 + 32))(boxed_opaque_existential_1, v23, v24);
  }

  v12 = v19;
  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.slotDisplayValue(slotName:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;
  v5 = v3[2];

  return MEMORY[0x2822009F8](PaymentsBaseCATs.slotDisplayValue(slotName:), 0);
}

uint64_t PaymentsBaseCATs.slotDisplayValue(slotName:)()
{
  v15 = v0[8];
  v14 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#SlotDisplayValue", 0x1DuLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slotName", 8uLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of SpeakableString?(v12[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v11 = v12[8];
    p_countAndFlagsBits[5] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v17 + 32))(boxed_opaque_existential_1, v11, v16);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v12[10] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v12[11] = v5;
  *v5 = v12[2];
  v5[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v6 = v12[7];
  v7 = v12[5];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

uint64_t PaymentsBaseCATs.slotDisplayValue(slotName:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v12[2] = a2;
  v18 = a1;
  v25 = 0;
  v24 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v12 - v13;
  v25 = MEMORY[0x28223BE20](v18);
  v24 = v2;
  v19 = 1;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#SlotDisplayValue", 0x1DuLL, 1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v16 = _allocateUninitializedArray<A>(_:)();
  v17 = v3;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slotName", 8uLL, v19 & 1);
  v5 = v18;
  v6 = v20;
  *v17 = v4;
  outlined init with copy of SpeakableString?(v5, v6);
  v21 = type metadata accessor for SpeakableString();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  if ((*(v22 + 48))(v20, v19) == 1)
  {
    outlined destroy of SpeakableString?(v20);
    v11 = v17;
    v17[1]._countAndFlagsBits = 0;
    v11[1]._object = 0;
    v11[2]._countAndFlagsBits = 0;
    v11[2]._object = 0;
  }

  else
  {
    v7 = v17;
    v17[2]._object = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v7[1]._countAndFlagsBits);
    (*(v22 + 32))(boxed_opaque_existential_1, v20, v21);
  }

  v9 = v16;
  _finalizeUninitializedArray<A>(_:)();
  v12[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v12[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsBaseCATs.unsupportedOnWatch(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#UnsupportedOnWatch", 0x1FuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsBaseCATs.unsupportedOnWatch()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](PaymentsBaseCATs.unsupportedOnWatch(), 0);
}

uint64_t PaymentsBaseCATs.unsupportedOnWatch()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#UnsupportedOnWatch", 0x1FuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsBase#UnsupportedOnWatch", 0x1FuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t type metadata accessor for PaymentsBaseCATs()
{
  v1 = type metadata singleton initialization cache for PaymentsBaseCATs;
  if (!type metadata singleton initialization cache for PaymentsBaseCATs)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for PaymentsBaseCATs()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t PaymentsBaseCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return PaymentsBaseCATs.init(templateDir:options:globals:)(a1, a2, a3);
}

uint64_t PaymentsBaseCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v16 = a2;
  v13 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v17 = type metadata accessor for CATOption();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v11 = &v8 - v9;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v18);
  v12 = &v8 - v10;
  v22 = v4;
  v21 = v5;
  v20 = v6;
  v23 = v3;
  outlined init with copy of URL?(v4, &v8 - v10);
  (*(v14 + 16))(v11, v16, v17);
  MEMORY[0x277D82BE0](v13);
  v19 = CATWrapper.init(templateDir:options:globals:)();

  v23 = v19;
  MEMORY[0x277D82BD8](v13);
  (*(v14 + 8))(v16, v17);
  outlined destroy of URL?(v18);

  return v19;
}

uint64_t BaseStrategy.deinit()
{
  v6 = *(*v0 + 80);
  v5 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  return v3;
}

uint64_t BaseStrategy.ttsEnabled.getter()
{
  v13 = 0;
  v2 = *v0;
  v13 = v0;
  v12 = v2[10];
  v11 = v2[11];
  v10 = v2[12];
  outlined init with copy of GlobalsProviding((v0 + 13), v7);
  v4 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v3 + 16))(v4);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v5 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0(v6);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5 & 1;
}

uint64_t BaseStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v42 = a1;
  v55 = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  v57 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v61 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v63 = partial apply for closure #1 in OSLogArguments.append(_:);
  v65 = partial apply for closure #1 in OSLogArguments.append(_:);
  v68 = partial apply for closure #1 in OSLogArguments.append(_:);
  v80 = 0;
  v79 = 0;
  v35 = 0;
  v52 = *v2;
  v36 = 0;
  v37 = type metadata accessor for Parse();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v41 = v25 - v40;
  v48 = type metadata accessor for Logger();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v43 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v42);
  v4 = v25 - v43;
  v45 = v25 - v43;
  v80 = v3;
  v79 = v44;
  v49 = v52[10];
  v78[3] = v49;
  v50 = v52[11];
  v78[2] = v50;
  v51 = v52[12];
  v78[1] = v51;
  v5 = Logger.payments.unsafeMutableAddressor();
  (*(v46 + 16))(v4, v5, v48);
  v59 = 7;
  v6 = swift_allocObject();
  v7 = v50;
  v8 = v51;
  v9 = v52;
  v56 = v6;
  v6[2] = v49;
  v6[3] = v7;
  v6[4] = v8;
  v53 = v9[13];
  v6[5] = v53;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  v54 = 17;
  v64 = swift_allocObject();
  *(v64 + 16) = 32;
  v66 = swift_allocObject();
  *(v66 + 16) = 8;
  v58 = 32;
  v10 = swift_allocObject();
  v11 = v56;
  v60 = v10;
  *(v10 + 16) = v55;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v60;
  v62 = v12;
  *(v12 + 16) = v57;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v62;
  v69 = v14;
  *(v14 + 16) = v61;
  *(v14 + 24) = v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v67 = _allocateUninitializedArray<A>(_:)();
  v70 = v16;

  v17 = v64;
  v18 = v70;
  *v70 = v63;
  v18[1] = v17;

  v19 = v66;
  v20 = v70;
  v70[2] = v65;
  v20[3] = v19;

  v21 = v69;
  v22 = v70;
  v70[4] = v68;
  v22[5] = v21;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v72, v73))
  {
    v23 = v35;
    v27 = static UnsafeMutablePointer.allocate(capacity:)();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v28 = createStorage<A>(capacity:type:)(0);
    v29 = createStorage<A>(capacity:type:)(1);
    v30 = v78;
    v78[0] = v27;
    v31 = &v77;
    v77 = v28;
    v32 = &v76;
    v76 = v29;
    serialize(_:at:)(2, v78);
    serialize(_:at:)(1, v30);
    v74 = v63;
    v75 = v64;
    closure #1 in osLogInternal(_:log:type:)(&v74, v30, v31, v32);
    v33 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v74 = v65;
      v75 = v66;
      closure #1 in osLogInternal(_:log:type:)(&v74, v78, &v77, &v76);
      v25[1] = 0;
      v74 = v68;
      v75 = v69;
      closure #1 in osLogInternal(_:log:type:)(&v74, v78, &v77, &v76);
      _os_log_impl(&dword_2686B1000, v72, v73, "#BaseStrategy<%s> actionForInput", v27, 0xCu);
      destroyStorage<A>(_:count:)(v28, 0, v26);
      destroyStorage<A>(_:count:)(v29, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v27, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v72);
  (*(v46 + 8))(v45, v48);
  Input.parse.getter();
  static FlowUtil.actionForInput(parse:intentType:)(v41, v49, v53, v34);
  return (*(v38 + 8))(v41, v37);
}

uint64_t BaseStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v12 = *v2;
  v3[6] = *v2;
  v4 = type metadata accessor for Logger();
  v3[7] = v4;
  v8 = *(v4 - 8);
  v3[8] = v8;
  v5 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[3] = a1;
  v3[4] = a2;
  v3[10] = v12[10];
  v3[5] = v10;
  v3[11] = v12[11];
  v3[12] = v12[12];
  v6 = v3[2];

  return MEMORY[0x2822009F8](BaseStrategy.makeIntentExecutionBehavior(app:intent:), 0);
}

uint64_t BaseStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  v36 = v0;
  v20 = v0[12];
  v19 = v0[11];
  v18 = v0[10];
  v1 = v0[9];
  v16 = v0[8];
  v17 = v0[7];
  v21 = v0[6];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v22[5] = *(v21 + 104);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for implicit closure #1 in ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:);
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v27 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v28 = v3;

  *v28 = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[1] = v25;

  v28[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[3] = v26;

  v28[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v28[5] = v27;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v29, v30))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0);
    v14 = createStorage<A>(capacity:type:)(1);
    v31 = buf;
    v32 = v13;
    v33 = v14;
    serialize(_:at:)(2, &v31);
    serialize(_:at:)(1, &v31);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    v34 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_2686B1000, v29, v30, "#BaseStrategy<%s> makeIntentExecutionBehavior", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 0, v11);
    destroyStorage<A>(_:count:)(v14, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v15[9];
  v8 = v15[7];
  v7 = v15[8];
  MEMORY[0x277D82BD8](v29);
  (*(v7 + 8))(v9, v8);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  v10 = static SiriKitIntentExecutionBehavior.standard()();

  v4 = *(v15[2] + 8);
  v5 = v15[2];

  return v4(v10);
}

uint64_t BaseStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  v4 = v3[2];
  return MEMORY[0x2822009F8](BaseStrategy.makeIntentHandledResponse(rchRecord:), 0);
}

uint64_t BaseStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v4 = *(v0 + 40);
  *(v0 + 16) = v0;
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  v1 = *(*(v0 + 16) + 8);
  v2 = *(v0 + 16);

  return v1();
}

uint64_t BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v33 = a6;
  v10 = *v7;
  v32 = a1;
  v31 = a2;
  v30 = v10[12];
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = v7;
  v25 = v10[10];
  v24 = v10[11];
  outlined init with copy of GlobalsProviding(a1, v23);
  outlined init with take of CommonLabelsProviding(v23, v7 + 13);

  v7[2] = a2;
  outlined init with copy of GlobalsProviding(a3, v22);
  outlined init with take of CommonLabelsProviding(v22, v7 + 3);
  outlined init with copy of GlobalsProviding(a4, v21);
  outlined init with take of CommonLabelsProviding(v21, v7 + 8);
  v20[3] = a6;
  v20[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  v12 = *(a6 - 8);
  (*(v12 + 16))(boxed_opaque_existential_1, a5);
  outlined init with take of CommonLabelsProviding(v20, v7 + 18);
  (*(v12 + 8))(a5, a6);
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v19;
}

uint64_t sub_26878B8C4()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t BaseStrategy.__deallocating_deinit()
{
  v4 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v2 = *(*v0 + 96);
  BaseStrategy.deinit();
  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  v4[6] = v4;
  v5 = *(MEMORY[0x277D5B3C8] + 4);
  v6 = swift_task_alloc();
  v13[7] = v6;
  v7 = a3[11];
  v8 = a3[12];
  v9 = a3[13];
  v13[2] = a3[10];
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v9;
  v10 = type metadata accessor for BaseStrategy();
  *v6 = v13[6];
  v6[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  v4[6] = v4;
  v5 = *(MEMORY[0x277D5B3D0] + 4);
  v6 = swift_task_alloc();
  v13[7] = v6;
  v7 = a3[11];
  v8 = a3[12];
  v9 = a3[13];
  v13[2] = a3[10];
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v9;
  v10 = type metadata accessor for BaseStrategy();
  *v6 = v13[6];
  v6[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v8 = v3;
  *(v3 + 16) = v3;
  v4 = *(**v2 + 208);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v8 = v3;
  *(v3 + 16) = v3;
  v4 = *(**v2 + 184);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v8 = v3;
  *(v3 + 16) = v3;
  v4 = *(**v2 + 192);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = v4;
  v4[6] = v4;
  v5 = *(MEMORY[0x277D5B3B8] + 4);
  v6 = swift_task_alloc();
  v13[7] = v6;
  v7 = a3[11];
  v8 = a3[12];
  v9 = a3[13];
  v13[2] = a3[10];
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v9;
  v10 = type metadata accessor for BaseStrategy();
  *v6 = v13[6];
  v6[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance ContactDisambiguationStrategy<A, B, C>;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v8 = v3;
  *(v3 + 16) = v3;
  v4 = *(**v2 + 200);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance BaseStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v8 = v3;
  *(v3 + 16) = v3;
  v4 = *(**v2 + 176);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>;

  return v10(a1, a2);
}

uint64_t sub_26878C418()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26878C458()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26878C498()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26878C4D8()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_26878C57C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26878C5BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26878C5FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata completion function for BaseStrategy()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t instantiation function for generic protocol witness table for BaseStrategy<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  MEMORY[0x277D82BE0](a1);
  outlined init with copy of GlobalsProviding(a2, v6);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  outlined init with take of CommonLabelsProviding(v6, (v5 + 24));
  type metadata accessor for UsoTask_noVerb_common_Payment();
  type metadata accessor for INSendPaymentIntent();
  return Transformer.init(transform:)();
}

{
  v8 = a1;
  v7 = a2;
  MEMORY[0x277D82BE0](a1);
  outlined init with copy of GlobalsProviding(a2, v6);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  outlined init with take of CommonLabelsProviding(v6, (v5 + 24));
  type metadata accessor for UsoTask_pay_common_Payment();
  type metadata accessor for INSendPaymentIntent();
  return Transformer.init(transform:)();
}

{
  v8 = a1;
  v7 = a2;
  MEMORY[0x277D82BE0](a1);
  outlined init with copy of GlobalsProviding(a2, v6);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  outlined init with take of CommonLabelsProviding(v6, (v5 + 24));
  type metadata accessor for UsoTask_requestMoney_common_Payment();
  type metadata accessor for INRequestPaymentIntent();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v556 = v3;
  v629 = v2;
  v628 = v4;
  v627 = v5;
  v557 = v1;
  v653 = partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v657 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v659 = partial apply for closure #1 in OSLogArguments.append(_:);
  v661 = partial apply for closure #1 in OSLogArguments.append(_:);
  v664 = partial apply for closure #1 in OSLogArguments.append(_:);
  v558 = partial apply for implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v559 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v560 = partial apply for closure #1 in OSLogArguments.append(_:);
  v561 = partial apply for closure #1 in OSLogArguments.append(_:);
  v562 = partial apply for closure #1 in OSLogArguments.append(_:);
  v563 = partial apply for implicit closure #3 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v564 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v565 = partial apply for closure #1 in OSLogArguments.append(_:);
  v566 = partial apply for closure #1 in OSLogArguments.append(_:);
  v567 = partial apply for closure #1 in OSLogArguments.append(_:);
  v568 = partial apply for implicit closure #4 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v569 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v570 = partial apply for closure #1 in OSLogArguments.append(_:);
  v571 = partial apply for closure #1 in OSLogArguments.append(_:);
  v572 = partial apply for closure #1 in OSLogArguments.append(_:);
  v573 = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v574 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v575 = partial apply for closure #1 in OSLogArguments.append(_:);
  v576 = partial apply for closure #1 in OSLogArguments.append(_:);
  v577 = partial apply for closure #1 in OSLogArguments.append(_:);
  v578 = closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v579 = partial apply for implicit closure #7 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v580 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v581 = partial apply for specialized implicit closure #8 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v582 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v583 = partial apply for implicit closure #9 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v584 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v585 = partial apply for closure #1 in OSLogArguments.append(_:);
  v586 = partial apply for closure #1 in OSLogArguments.append(_:);
  v587 = partial apply for closure #1 in OSLogArguments.append(_:);
  v588 = partial apply for closure #1 in OSLogArguments.append(_:);
  v589 = partial apply for closure #1 in OSLogArguments.append(_:);
  v590 = partial apply for closure #1 in OSLogArguments.append(_:);
  v591 = partial apply for closure #1 in OSLogArguments.append(_:);
  v592 = partial apply for closure #1 in OSLogArguments.append(_:);
  v593 = partial apply for closure #1 in OSLogArguments.append(_:);
  v594 = partial apply for implicit closure #10 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v595 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v596 = partial apply for closure #1 in OSLogArguments.append(_:);
  v597 = partial apply for closure #1 in OSLogArguments.append(_:);
  v598 = partial apply for closure #1 in OSLogArguments.append(_:);
  v599 = partial apply for implicit closure #13 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v600 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v601 = partial apply for closure #1 in OSLogArguments.append(_:);
  v602 = partial apply for closure #1 in OSLogArguments.append(_:);
  v603 = partial apply for closure #1 in OSLogArguments.append(_:);
  v746 = 0;
  v745 = 0;
  v744 = 0;
  v743 = 0;
  v742 = 0;
  v741 = 0;
  v735 = 0;
  v730 = 0;
  v718 = 0;
  v715 = 0;
  v716 = 0;
  v714 = 0;
  v712 = 0.0;
  v711._countAndFlagsBits = 0;
  v711._object = 0;
  v709 = 0;
  v710 = 0;
  v697 = 0;
  v681 = 0;
  v680 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v604 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v605 = &v194 - v604;
  v620 = 0;
  v606 = type metadata accessor for ContactResolverConfig();
  v607 = *(v606 - 8);
  v608 = v606 - 8;
  v609 = (*(v607 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v620);
  v610 = &v194 - v609;
  v611 = type metadata accessor for ContactQuery();
  v613 = *(v611 - 8);
  v612 = v611 - 8;
  v614 = v613;
  v615 = *(v613 + 64);
  v616 = (v615 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v611);
  v617 = &v194 - v616;
  v618 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v194 - v616);
  v619 = &v194 - v618;
  v746 = &v194 - v618;
  v621 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v620);
  v622 = &v194 - v621;
  v623 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v624 = &v194 - v623;
  v625 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v626 = &v194 - v625;
  v745 = &v194 - v625;
  v649 = type metadata accessor for Logger();
  v647 = *(v649 - 8);
  v648 = v649 - 8;
  v630 = v647[8];
  v631 = (v630 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v629);
  v632 = &v194 - v631;
  v633 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v12);
  v634 = &v194 - v633;
  v635 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v14);
  v636 = &v194 - v635;
  v637 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20](v16);
  v638 = &v194 - v637;
  v639 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x28223BE20](v18);
  v640 = &v194 - v639;
  v641 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x28223BE20](v20);
  v642 = &v194 - v641;
  v643 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x28223BE20](v22);
  v644 = &v194 - v643;
  v645 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = MEMORY[0x28223BE20](v24);
  v27 = &v194 - v645;
  v646 = &v194 - v645;
  v654 = *v26;
  v744 = v654;
  v743 = v28;
  v742 = v29;
  v30 = Logger.payments.unsafeMutableAddressor();
  v650 = v647[2];
  v651 = v647 + 2;
  v650(v27, v30, v649);

  v668 = Logger.logObject.getter();
  v669 = static os_log_type_t.debug.getter();
  v652 = 17;
  v656 = 7;
  v660 = swift_allocObject();
  *(v660 + 16) = 32;
  v662 = swift_allocObject();
  *(v662 + 16) = 8;
  v655 = 32;
  v31 = swift_allocObject();
  v32 = v654;
  v658 = v31;
  *(v31 + 16) = v653;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v658;
  v665 = v33;
  *(v33 + 16) = v657;
  *(v33 + 24) = v34;
  v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v663 = _allocateUninitializedArray<A>(_:)();
  v666 = v35;

  v36 = v660;
  v37 = v666;
  *v666 = v659;
  v37[1] = v36;

  v38 = v662;
  v39 = v666;
  v666[2] = v661;
  v39[3] = v38;

  v40 = v665;
  v41 = v666;
  v666[4] = v664;
  v41[5] = v40;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v668, v669))
  {
    v549 = static UnsafeMutablePointer.allocate(capacity:)();
    v548 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v550 = createStorage<A>(capacity:type:)(0);
    v551 = createStorage<A>(capacity:type:)(1);
    v552 = &v674;
    v674 = v549;
    v553 = &v673;
    v673 = v550;
    v554 = &v672;
    v672 = v551;
    serialize(_:at:)(2, &v674);
    serialize(_:at:)(1, v552);
    v42 = v557;
    v670 = v659;
    v671 = v660;
    closure #1 in osLogInternal(_:log:type:)(&v670, v552, v553, v554);
    v555 = v42;
    if (v42)
    {

      __break(1u);
    }

    else
    {
      v670 = v661;
      v671 = v662;
      closure #1 in osLogInternal(_:log:type:)(&v670, &v674, &v673, &v672);
      v546 = 0;
      v670 = v664;
      v671 = v665;
      closure #1 in osLogInternal(_:log:type:)(&v670, &v674, &v673, &v672);
      v545 = 0;
      _os_log_impl(&dword_2686B1000, v668, v669, "#Transformer for noVerb_common_Payment task %s", v549, 0xCu);
      destroyStorage<A>(_:count:)(v550, 0, v548);
      destroyStorage<A>(_:count:)(v551, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v549, MEMORY[0x277D84B78]);

      v547 = v545;
    }
  }

  else
  {

    v547 = v557;
  }

  v43 = v644;
  v530 = v547;
  MEMORY[0x277D82BD8](v668);
  v531 = v647[1];
  v532 = v647 + 1;
  v531(v646, v649);
  v44 = Logger.payments.unsafeMutableAddressor();
  v650(v43, v44, v649);
  MEMORY[0x277D82BE0](v628);
  v535 = 7;
  v536 = swift_allocObject();
  *(v536 + 16) = v628;
  v543 = Logger.logObject.getter();
  v544 = static os_log_type_t.debug.getter();
  v533 = 17;
  v538 = swift_allocObject();
  *(v538 + 16) = 32;
  v539 = swift_allocObject();
  *(v539 + 16) = 8;
  v534 = 32;
  v45 = swift_allocObject();
  v46 = v536;
  v537 = v45;
  *(v45 + 16) = v558;
  *(v45 + 24) = v46;
  v47 = swift_allocObject();
  v48 = v537;
  v541 = v47;
  *(v47 + 16) = v559;
  *(v47 + 24) = v48;
  v540 = _allocateUninitializedArray<A>(_:)();
  v542 = v49;

  v50 = v538;
  v51 = v542;
  *v542 = v560;
  v51[1] = v50;

  v52 = v539;
  v53 = v542;
  v542[2] = v561;
  v53[3] = v52;

  v54 = v541;
  v55 = v542;
  v542[4] = v562;
  v55[5] = v54;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v543, v544))
  {
    v523 = static UnsafeMutablePointer.allocate(capacity:)();
    v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v524 = createStorage<A>(capacity:type:)(0);
    v525 = createStorage<A>(capacity:type:)(1);
    v526 = &v679;
    v679 = v523;
    v527 = &v678;
    v678 = v524;
    v528 = &v677;
    v677 = v525;
    serialize(_:at:)(2, &v679);
    serialize(_:at:)(1, v526);
    v56 = v530;
    v675 = v560;
    v676 = v538;
    closure #1 in osLogInternal(_:log:type:)(&v675, v526, v527, v528);
    v529 = v56;
    if (v56)
    {

      __break(1u);
    }

    else
    {
      v675 = v561;
      v676 = v539;
      closure #1 in osLogInternal(_:log:type:)(&v675, &v679, &v678, &v677);
      v520 = 0;
      v675 = v562;
      v676 = v541;
      closure #1 in osLogInternal(_:log:type:)(&v675, &v679, &v678, &v677);
      v519 = 0;
      _os_log_impl(&dword_2686B1000, v543, v544, "#Transformer for noVerb_common_Payment previous intent is %s", v523, 0xCu);
      destroyStorage<A>(_:count:)(v524, 0, v522);
      destroyStorage<A>(_:count:)(v525, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v523, MEMORY[0x277D84B78]);

      v521 = v519;
    }
  }

  else
  {

    v521 = v530;
  }

  v516 = v521;
  MEMORY[0x277D82BD8](v543);
  v531(v644, v649);
  v517 = swift_allocObject();
  v518 = v517 + 16;
  v741 = v517 + 16;
  MEMORY[0x277D82BE0](v628);
  if (v628)
  {
    v515 = v628;
    v514 = v628;
    v57 = [v628 payee];
    v58 = v514;
    *(v517 + 16) = v57;
    MEMORY[0x277D82BD8](v58);
  }

  else
  {
    *(v517 + 16) = 0;
  }

  MEMORY[0x277D82BE0](v628);
  if (v628)
  {
    v513 = v628;
    v512 = v628;
    v740 = [v628 currencyAmount];
    MEMORY[0x277D82BD8](v512);
  }

  else
  {
    v740 = 0;
  }

  MEMORY[0x277D82BE0](v628);
  if (v628)
  {
    v511 = v628;
    v509 = v628;
    v59 = [v628 note];
    v510 = v59;
    if (v59)
    {
      v508 = v510;
      v503 = v510;
      v504 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v505 = v60;
      MEMORY[0x277D82BD8](v503);
      v506 = v504;
      v507 = v505;
    }

    else
    {
      v506 = 0;
      v507 = 0;
    }

    v738 = v506;
    v739 = v507;
    MEMORY[0x277D82BD8](v509);
  }

  else
  {
    v738 = 0;
    v739 = 0;
  }

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  v502 = v737;
  if (v737)
  {
    v501 = v502;
    v496 = v502;
    v718 = v502;

    v497 = *(v613 + 56);
    v498 = v613 + 56;
    v497(v626, 1, 1, v611);
    v61 = dispatch thunk of UsoEntity_common_Payment.payee.getter();
    v499 = v61;
    if (v61 && (v495 = v499, v493 = v499, v494 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter(), , v494))
    {
      v492 = v494;
      v489 = v494;
      v490 = CodeGenBase.entity.getter();

      v491 = v490;
    }

    else
    {
      v491 = 0;
    }

    v487 = v491;
    type metadata accessor for UsoEntity_common_Person();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v488 = v717;
    if (v717)
    {
      v486 = v488;
      v483 = v488;
      v680 = v488;
      UsoEntity_common_Person.toContactQuery()();
      v497(v624, 0, 1, v611);
      outlined assign with take of ContactQuery?(v624, v626);
    }

    else
    {
      v485 = dispatch thunk of UsoEntity_common_Payment.payee.getter();
      if (v485)
      {
        v484 = v485;
        v480 = v485;
        v481 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter();

        v482 = v481;
      }

      else
      {
        v482 = 0;
      }

      v479 = v482;
      if (v482)
      {
        v478 = v479;
        v477 = v479;
        v681 = v479;
        UsoEntity_common_Agent.toContactQuery()();
        v497(v624, 0, 1, v611);
        outlined assign with take of ContactQuery?(v624, v626);
      }
    }

    outlined init with copy of ContactQuery?(v626, v622);
    if ((*(v613 + 48))(v622, 1, v611) == 1)
    {
      outlined destroy of ContactQuery?(v622);
      v476 = v516;
    }

    else
    {
      v62 = v642;
      v460 = v614;
      v463 = *(v613 + 32);
      v462 = v613 + 32;
      v463(v619, v622, v611);
      v63 = Logger.payments.unsafeMutableAddressor();
      v650(v62, v63, v649);
      v458 = *(v613 + 16);
      v459 = v613 + 16;
      v458(v617, v619, v611);
      v461 = (*(v460 + 80) + 16) & ~*(v460 + 80);
      v466 = 7;
      v467 = swift_allocObject();
      v463((v467 + v461), v617, v611);
      v474 = Logger.logObject.getter();
      v475 = static os_log_type_t.debug.getter();
      v464 = 17;
      v469 = swift_allocObject();
      *(v469 + 16) = 32;
      v470 = swift_allocObject();
      *(v470 + 16) = 8;
      v465 = 32;
      v64 = swift_allocObject();
      v65 = v467;
      v468 = v64;
      *(v64 + 16) = v563;
      *(v64 + 24) = v65;
      v66 = swift_allocObject();
      v67 = v468;
      v472 = v66;
      *(v66 + 16) = v564;
      *(v66 + 24) = v67;
      v471 = _allocateUninitializedArray<A>(_:)();
      v473 = v68;

      v69 = v469;
      v70 = v473;
      *v473 = v565;
      v70[1] = v69;

      v71 = v470;
      v72 = v473;
      v473[2] = v566;
      v72[3] = v71;

      v73 = v472;
      v74 = v473;
      v473[4] = v567;
      v74[5] = v73;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v474, v475))
      {
        v451 = static UnsafeMutablePointer.allocate(capacity:)();
        v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v452 = createStorage<A>(capacity:type:)(0);
        v453 = createStorage<A>(capacity:type:)(1);
        v454 = &v686;
        v686 = v451;
        v455 = &v685;
        v685 = v452;
        v456 = &v684;
        v684 = v453;
        serialize(_:at:)(2, &v686);
        serialize(_:at:)(1, v454);
        v75 = v516;
        v682 = v565;
        v683 = v469;
        closure #1 in osLogInternal(_:log:type:)(&v682, v454, v455, v456);
        v457 = v75;
        if (v75)
        {

          __break(1u);
        }

        else
        {
          v682 = v566;
          v683 = v470;
          closure #1 in osLogInternal(_:log:type:)(&v682, &v686, &v685, &v684);
          v448 = 0;
          v682 = v567;
          v683 = v472;
          closure #1 in osLogInternal(_:log:type:)(&v682, &v686, &v685, &v684);
          v447 = 0;
          _os_log_impl(&dword_2686B1000, v474, v475, "#Transformer payee contact in USO parse as ContactQuery is: %s", v451, 0xCu);
          destroyStorage<A>(_:count:)(v452, 0, v450);
          destroyStorage<A>(_:count:)(v453, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v451, MEMORY[0x277D84B78]);

          v449 = v447;
        }
      }

      else
      {

        v449 = v516;
      }

      v441 = v449;
      MEMORY[0x277D82BD8](v474);
      v531(v642, v649);
      v442 = v627[3];
      v443 = v627[4];
      __swift_project_boxed_opaque_existential_1(v627, v442);
      v437 = _allocateUninitializedArray<A>(_:)();
      v458(v76, v619, v611);
      v77 = v437;
      _finalizeUninitializedArray<A>(_:)();
      v440 = v77;
      v438 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
      v439 = &v698;
      swift_beginAccess();
      (*(v607 + 16))(v610, v438, v606);
      swift_endAccess();
      v78 = v441;
      v79 = (*(v443 + 16))(v440, v610, v442);
      v444 = v78;
      v445 = v79;
      v446 = v78;
      if (v78)
      {
        v195 = v446;
        v196 = 0;
        (*(v607 + 8))(v610, v606);

        v435 = 0;
        v436 = v196;
      }

      else
      {
        v434 = v445;
        (*(v607 + 8))(v610, v606);

        v435 = v434;
        v436 = v444;
      }

      v80 = v640;
      v420 = v436;
      v421 = v435;
      v697 = v435;
      v81 = Logger.payments.unsafeMutableAddressor();
      v650(v80, v81, v649);

      v424 = 7;
      v425 = swift_allocObject();
      *(v425 + 16) = v421;
      v432 = Logger.logObject.getter();
      v433 = static os_log_type_t.debug.getter();
      v422 = 17;
      v427 = swift_allocObject();
      *(v427 + 16) = 32;
      v428 = swift_allocObject();
      *(v428 + 16) = 8;
      v423 = 32;
      v82 = swift_allocObject();
      v83 = v425;
      v426 = v82;
      *(v82 + 16) = v568;
      *(v82 + 24) = v83;
      v84 = swift_allocObject();
      v85 = v426;
      v430 = v84;
      *(v84 + 16) = v569;
      *(v84 + 24) = v85;
      v429 = _allocateUninitializedArray<A>(_:)();
      v431 = v86;

      v87 = v427;
      v88 = v431;
      *v431 = v570;
      v88[1] = v87;

      v89 = v428;
      v90 = v431;
      v431[2] = v571;
      v90[3] = v89;

      v91 = v430;
      v92 = v431;
      v431[4] = v572;
      v92[5] = v91;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v432, v433))
      {
        v413 = static UnsafeMutablePointer.allocate(capacity:)();
        v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v414 = createStorage<A>(capacity:type:)(0);
        v415 = createStorage<A>(capacity:type:)(1);
        v416 = v691;
        v691[0] = v413;
        v417 = &v690;
        v690 = v414;
        v418 = &v689;
        v689 = v415;
        serialize(_:at:)(2, v691);
        serialize(_:at:)(1, v416);
        v93 = v420;
        v687 = v570;
        v688 = v427;
        closure #1 in osLogInternal(_:log:type:)(&v687, v416, v417, v418);
        v419 = v93;
        if (v93)
        {

          __break(1u);
        }

        else
        {
          v687 = v571;
          v688 = v428;
          closure #1 in osLogInternal(_:log:type:)(&v687, v691, &v690, &v689);
          v410 = 0;
          v687 = v572;
          v688 = v430;
          closure #1 in osLogInternal(_:log:type:)(&v687, v691, &v690, &v689);
          v409 = 0;
          _os_log_impl(&dword_2686B1000, v432, v433, "#Transformer SiriKitContactResolver found matches for payee in USO parse: %s", v413, 0xCu);
          destroyStorage<A>(_:count:)(v414, 0, v412);
          destroyStorage<A>(_:count:)(v415, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v413, MEMORY[0x277D84B78]);

          v411 = v409;
        }
      }

      else
      {

        v411 = v420;
      }

      v408 = v411;
      MEMORY[0x277D82BD8](v432);
      v531(v640, v649);

      if (v421)
      {
        v407 = v421;
        v404 = v421;
        v691[2] = v421;
        v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
        lazy protocol witness table accessor for type [INPerson] and conformance [A]();
        Collection.first.getter();
        v405 = v691[1];

        v406 = v405;
      }

      else
      {
        v406 = 0;
      }

      v94 = v638;
      v95 = *(v517 + 16);
      *(v517 + 16) = v406;
      MEMORY[0x277D82BD8](v95);
      v96 = Logger.payments.unsafeMutableAddressor();
      v650(v94, v96, v649);

      v401 = Logger.logObject.getter();
      v402 = static os_log_type_t.debug.getter();
      v392 = 17;
      v394 = 7;
      v396 = swift_allocObject();
      *(v396 + 16) = 32;
      v397 = swift_allocObject();
      *(v397 + 16) = 8;
      v393 = 32;
      v97 = swift_allocObject();
      v98 = v517;
      v395 = v97;
      *(v97 + 16) = v573;
      *(v97 + 24) = v98;
      v99 = swift_allocObject();
      v100 = v395;
      v399 = v99;
      *(v99 + 16) = v574;
      *(v99 + 24) = v100;
      v398 = _allocateUninitializedArray<A>(_:)();
      v400 = v101;

      v102 = v396;
      v103 = v400;
      *v400 = v575;
      v103[1] = v102;

      v104 = v397;
      v105 = v400;
      v400[2] = v576;
      v105[3] = v104;

      v106 = v399;
      v107 = v400;
      v400[4] = v577;
      v107[5] = v106;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v401, v402))
      {
        v385 = static UnsafeMutablePointer.allocate(capacity:)();
        v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v386 = createStorage<A>(capacity:type:)(0);
        v387 = createStorage<A>(capacity:type:)(1);
        v388 = &v696;
        v696 = v385;
        v389 = &v695;
        v695 = v386;
        v390 = &v694;
        v694 = v387;
        serialize(_:at:)(2, &v696);
        serialize(_:at:)(1, v388);
        v108 = v408;
        v692 = v575;
        v693 = v396;
        closure #1 in osLogInternal(_:log:type:)(&v692, v388, v389, v390);
        v391 = v108;
        if (v108)
        {

          __break(1u);
        }

        else
        {
          v692 = v576;
          v693 = v397;
          closure #1 in osLogInternal(_:log:type:)(&v692, &v696, &v695, &v694);
          v382 = 0;
          v692 = v577;
          v693 = v399;
          closure #1 in osLogInternal(_:log:type:)(&v692, &v696, &v695, &v694);
          v381 = 0;
          _os_log_impl(&dword_2686B1000, v401, v402, "#Transformer resolved payee from matches as %s", v385, 0xCu);
          destroyStorage<A>(_:count:)(v386, 0, v384);
          destroyStorage<A>(_:count:)(v387, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v385, MEMORY[0x277D84B78]);

          v383 = v381;
        }
      }

      else
      {

        v383 = v408;
      }

      v380 = v383;
      MEMORY[0x277D82BD8](v401);
      v531(v638, v649);

      (*(v613 + 8))(v619, v611);
      v476 = v380;
    }

    v378 = v476;
    v379 = dispatch thunk of UsoEntity_common_Payment.amount.getter();
    if (v379)
    {
      v377 = v379;
      v374 = v379;
      v714 = v379;
      v109 = dispatch thunk of UsoEntity_common_CurrencyAmount.amount.getter();
      v375 = v109;
      if (v109)
      {
        v373 = v375;
        v370 = v375;
        v371 = CodeGenBase.entity.getter();

        v372 = v371;
      }

      else
      {
        v372 = 0;
      }

      v367 = v372;
      v110 = default argument 1 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v366 = *&v110;
      default argument 2 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v364 = v111;
      v365 = default argument 3 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v112 = default argument 4 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v713 = static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(v367, v366, v364, v365, v112);
      v368 = *&v713;
      v369 = BYTE4(v713);

      if ((v369 & 1) == 0)
      {
        v363 = v368;
        v361 = v368;
        v712 = v368;
        v711 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
        v113 = dispatch thunk of UsoEntity_common_CurrencyAmount.currency.getter();
        v362 = v113;
        if (v113)
        {
          v360 = v362;
          v357 = v362;
          object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
          v358 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

          if (v358)
          {
            v355 = v358;
            v699 = v358;
            v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
            lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
            v114 = v378;
            result = Sequence.first(where:)();
            v354 = v114;
            if (v114)
            {
              __break(1u);
              return result;
            }

            outlined destroy of [SFCardSection](&v699);
            v350 = type metadata accessor for UsoIdentifier();
            v351 = *(v350 - 8);
            v352 = v350 - 8;
            if ((*(v351 + 48))(v605, 1) != 1)
            {
              v345 = UsoIdentifier.value.getter();
              v346 = v116;
              (*(v351 + 8))(v605, v350);
              v347 = v345;
              v348 = v346;
              v349 = v354;
LABEL_83:
              v342 = v349;
              v343 = v348;
              v344 = v347;
              v709 = v347;
              v710 = v348;
              v707._countAndFlagsBits = UsoEntity_common_CurrencyAmount.currencyIdentifier.getter();
              v707._object = v117;
              if (v117)
              {
                v708 = v707;
              }

              else
              {
                v708 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
                if (v707._object)
                {
                  outlined destroy of String.UTF8View(&v707);
                }
              }

              v118 = v636;
              v317 = v708;

              v711 = v317;

              v119 = Logger.payments.unsafeMutableAddressor();
              v650(v118, v119, v649);
              v326 = 7;
              v318 = swift_allocObject();
              *(v318 + 16) = v361;

              v325 = 32;
              v120 = swift_allocObject();
              v121 = v317._object;
              v320 = v120;
              *(v120 + 16) = v317._countAndFlagsBits;
              *(v120 + 24) = v121;

              v122 = swift_allocObject();
              v123 = v343;
              v327 = v122;
              *(v122 + 16) = v344;
              *(v122 + 24) = v123;
              v340 = Logger.logObject.getter();
              v341 = static os_log_type_t.debug.getter();
              v323 = 17;
              v329 = swift_allocObject();
              v322 = 32;
              *(v329 + 16) = 32;
              v330 = swift_allocObject();
              v324 = 8;
              *(v330 + 16) = 8;
              v124 = swift_allocObject();
              v125 = v318;
              v319 = v124;
              *(v124 + 16) = v579;
              *(v124 + 24) = v125;
              v126 = swift_allocObject();
              v127 = v319;
              v331 = v126;
              *(v126 + 16) = v580;
              *(v126 + 24) = v127;
              v332 = swift_allocObject();
              *(v332 + 16) = v322;
              v333 = swift_allocObject();
              *(v333 + 16) = v324;
              v128 = swift_allocObject();
              v129 = v320;
              v321 = v128;
              *(v128 + 16) = v581;
              *(v128 + 24) = v129;
              v130 = swift_allocObject();
              v131 = v321;
              v334 = v130;
              *(v130 + 16) = v582;
              *(v130 + 24) = v131;
              v335 = swift_allocObject();
              *(v335 + 16) = v322;
              v336 = swift_allocObject();
              *(v336 + 16) = v324;
              v132 = swift_allocObject();
              v133 = v327;
              v328 = v132;
              *(v132 + 16) = v583;
              *(v132 + 24) = v133;
              v134 = swift_allocObject();
              v135 = v328;
              v338 = v134;
              *(v134 + 16) = v584;
              *(v134 + 24) = v135;
              v337 = _allocateUninitializedArray<A>(_:)();
              v339 = v136;

              v137 = v329;
              v138 = v339;
              *v339 = v585;
              v138[1] = v137;

              v139 = v330;
              v140 = v339;
              v339[2] = v586;
              v140[3] = v139;

              v141 = v331;
              v142 = v339;
              v339[4] = v587;
              v142[5] = v141;

              v143 = v332;
              v144 = v339;
              v339[6] = v588;
              v144[7] = v143;

              v145 = v333;
              v146 = v339;
              v339[8] = v589;
              v146[9] = v145;

              v147 = v334;
              v148 = v339;
              v339[10] = v590;
              v148[11] = v147;

              v149 = v335;
              v150 = v339;
              v339[12] = v591;
              v150[13] = v149;

              v151 = v336;
              v152 = v339;
              v339[14] = v592;
              v152[15] = v151;

              v153 = v338;
              v154 = v339;
              v339[16] = v593;
              v154[17] = v153;
              _finalizeUninitializedArray<A>(_:)();

              if (os_log_type_enabled(v340, v341))
              {
                v310 = static UnsafeMutablePointer.allocate(capacity:)();
                v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v311 = createStorage<A>(capacity:type:)(0);
                v312 = createStorage<A>(capacity:type:)(3);
                v313 = &v704;
                v704 = v310;
                v314 = &v703;
                v703 = v311;
                v315 = &v702;
                v702 = v312;
                serialize(_:at:)(2, &v704);
                serialize(_:at:)(3, v313);
                v155 = v342;
                v700 = v585;
                v701 = v329;
                closure #1 in osLogInternal(_:log:type:)(&v700, v313, v314, v315);
                v316 = v155;
                if (v155)
                {

                  __break(1u);
                }

                else
                {
                  v700 = v586;
                  v701 = v330;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v307 = 0;
                  v700 = v587;
                  v701 = v331;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v306 = 0;
                  v700 = v588;
                  v701 = v332;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v305 = 0;
                  v700 = v589;
                  v701 = v333;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v304 = 0;
                  v700 = v590;
                  v701 = v334;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v303 = 0;
                  v700 = v591;
                  v701 = v335;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v302 = 0;
                  v700 = v592;
                  v701 = v336;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v301 = 0;
                  v700 = v593;
                  v701 = v338;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v300 = 0;
                  _os_log_impl(&dword_2686B1000, v340, v341, "#Transformer found currency, %s %s. Raw usoIdentifier was %s", v310, 0x20u);
                  destroyStorage<A>(_:count:)(v311, 0, v309);
                  destroyStorage<A>(_:count:)(v312, 3, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x26D620BD0](v310, MEMORY[0x277D84B78]);

                  v308 = v300;
                }
              }

              else
              {

                v308 = v342;
              }

              v297 = v308;
              MEMORY[0x277D82BD8](v340);
              v531(v636, v649);
              v298 = &v706;
              swift_beginAccess();
              swift_endAccess();
              v299 = String.isEmpty.getter();

              if ((v299 & 1) == 0)
              {
                v292 = 0;
                v293 = type metadata accessor for INCurrencyAmount();
                type metadata accessor for NSDecimalNumber();
                NSDecimalNumber.__allocating_init(value:)(v156, v361);
                v295 = v157;
                v294 = &v705;
                swift_beginAccess();
                v296 = v711;

                swift_endAccess();
                isa = INCurrencyAmount.__allocating_init(amount:currencyCode:)(v295, v296).super.isa;
                v159 = v740;
                v740 = isa;
                MEMORY[0x277D82BD8](v159);
              }

              outlined destroy of String.UTF8View(&v711);

              v376 = v297;
              goto LABEL_96;
            }

            outlined destroy of UsoIdentifier?(v605);
            v359 = v354;
          }

          else
          {
            v359 = v378;
          }
        }

        else
        {
          v359 = v378;
        }

        v347 = 0;
        v348 = 0;
        v349 = v359;
        goto LABEL_83;
      }

      v376 = v378;
    }

    else
    {
      v376 = v378;
    }

LABEL_96:
    v289 = v376;
    v290 = dispatch thunk of UsoEntity_common_Payment.memo.getter();
    v291 = v160;
    if (v160)
    {
      v287 = v290;
      v288 = v291;
      v286 = v291;
      v285 = v290;
      v715 = v290;
      v716 = v291;

      v738 = v285;
      v739 = v286;
    }

    outlined destroy of ContactQuery?(v626);

    v500 = v289;
    goto LABEL_99;
  }

  v500 = v516;
LABEL_99:
  v266 = v500;
  type metadata accessor for INSendPaymentIntent();
  v267 = &v736;
  v274 = 32;
  swift_beginAccess();
  v268 = *(v517 + 16);
  MEMORY[0x277D82BE0](v268);
  swift_endAccess();
  v269 = v740;
  MEMORY[0x277D82BE0](v740);
  v270 = v738;
  v271 = v739;

  v747.value.super.isa = v268;
  v747.is_nil = v269;
  v748.value.super.isa = v270;
  v748.is_nil = v271;
  v162.super.super.isa = INSendPaymentIntent.__allocating_init(payee:currencyAmount:note:)(v747, v748, v161).super.super.isa;
  v163 = v634;
  v272 = v162.super.super.isa;
  v735 = v162.super.super.isa;
  v164 = Logger.payments.unsafeMutableAddressor();
  v650(v163, v164, v649);
  MEMORY[0x277D82BE0](v272);
  v275 = 7;
  v276 = swift_allocObject();
  *(v276 + 16) = v272;
  v283 = Logger.logObject.getter();
  v284 = static os_log_type_t.debug.getter();
  v273 = 17;
  v278 = swift_allocObject();
  *(v278 + 16) = 32;
  v279 = swift_allocObject();
  *(v279 + 16) = 8;
  v165 = swift_allocObject();
  v166 = v276;
  v277 = v165;
  *(v165 + 16) = v594;
  *(v165 + 24) = v166;
  v167 = swift_allocObject();
  v168 = v277;
  v281 = v167;
  *(v167 + 16) = v595;
  *(v167 + 24) = v168;
  v280 = _allocateUninitializedArray<A>(_:)();
  v282 = v169;

  v170 = v278;
  v171 = v282;
  *v282 = v596;
  v171[1] = v170;

  v172 = v279;
  v173 = v282;
  v282[2] = v597;
  v173[3] = v172;

  v174 = v281;
  v175 = v282;
  v282[4] = v598;
  v175[5] = v174;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v283, v284))
  {
    v259 = static UnsafeMutablePointer.allocate(capacity:)();
    v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v260 = createStorage<A>(capacity:type:)(0);
    v261 = createStorage<A>(capacity:type:)(1);
    v262 = &v723;
    v723 = v259;
    v263 = &v722;
    v722 = v260;
    v264 = &v721;
    v721 = v261;
    serialize(_:at:)(2, &v723);
    serialize(_:at:)(1, v262);
    v176 = v266;
    v719 = v596;
    v720 = v278;
    closure #1 in osLogInternal(_:log:type:)(&v719, v262, v263, v264);
    v265 = v176;
    if (v176)
    {

      __break(1u);
    }

    else
    {
      v719 = v597;
      v720 = v279;
      closure #1 in osLogInternal(_:log:type:)(&v719, &v723, &v722, &v721);
      v256 = 0;
      v719 = v598;
      v720 = v281;
      closure #1 in osLogInternal(_:log:type:)(&v719, &v723, &v722, &v721);
      v255 = 0;
      _os_log_impl(&dword_2686B1000, v283, v284, "#Transformer returning intent %s", v259, 0xCu);
      destroyStorage<A>(_:count:)(v260, 0, v258);
      destroyStorage<A>(_:count:)(v261, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v259, MEMORY[0x277D84B78]);

      v257 = v255;
    }
  }

  else
  {

    v257 = v266;
  }

  v253 = v257;
  MEMORY[0x277D82BD8](v283);
  v531(v634, v649);

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  v254 = v733[1];

  if (v254)
  {
    v252 = v254;
    v249 = v254;
    v250 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

    v251 = v250;
  }

  else
  {
    v251 = 0;
  }

  v733[0] = v251;

  if (v733[0])
  {
    v734 = v733[0];
  }

  else
  {

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    v248 = v732[1];

    if (v248 && (v247 = v248, v245 = v248, v246 = dispatch thunk of UsoEntity_common_Payment.payer.getter(), , v246))
    {
      v244 = v246;
      v241 = v246;
      v242 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      v243 = v242;
    }

    else
    {
      v243 = 0;
    }

    v732[0] = v243;

    if (v732[0])
    {
      v734 = v732[0];
    }

    else
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      v240 = v731;

      if (v240 && (v239 = v240, v237 = v240, v238 = dispatch thunk of UsoEntity_common_Payment.payee.getter(), , v238))
      {
        v236 = v238;
        v235 = v238;
        v734 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
      }

      else
      {
        v734 = 0;
      }

      if (v732[0])
      {
        outlined destroy of ContiguousArray<A1>(v732);
      }
    }

    if (v733[0])
    {
      outlined destroy of ContiguousArray<A1>(v733);
    }
  }

  v234 = v734;
  if (v734)
  {
    v233 = v234;
    v228 = v234;
    v730 = v234;
    MEMORY[0x277D82BE0](v272);
    v229 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
    v177 = UsoEntity_common_App.appIdentifier.getter();
    v230 = v177;
    v231 = v178;
    if (v178)
    {
      v226 = v230;
      v227 = v231;
      v223 = v231;
      v224 = MEMORY[0x26D620690](v230);

      v225 = v224;
    }

    else
    {
      v225 = 0;
    }

    v179 = v632;
    v211 = v225;
    v210 = &v729;
    v213 = 32;
    swift_beginAccess();
    objc_setAssociatedObject(v272, v229, v211, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v180 = Logger.payments.unsafeMutableAddressor();
    v650(v179, v180, v649);

    v221 = Logger.logObject.getter();
    v222 = static os_log_type_t.debug.getter();
    v212 = 17;
    v214 = 7;
    v216 = swift_allocObject();
    *(v216 + 16) = 32;
    v217 = swift_allocObject();
    *(v217 + 16) = 8;
    v181 = swift_allocObject();
    v182 = v228;
    v215 = v181;
    *(v181 + 16) = v599;
    *(v181 + 24) = v182;
    v183 = swift_allocObject();
    v184 = v215;
    v219 = v183;
    *(v183 + 16) = v600;
    *(v183 + 24) = v184;
    v218 = _allocateUninitializedArray<A>(_:)();
    v220 = v185;

    v186 = v216;
    v187 = v220;
    *v220 = v601;
    v187[1] = v186;

    v188 = v217;
    v189 = v220;
    v220[2] = v602;
    v189[3] = v188;

    v190 = v219;
    v191 = v220;
    v220[4] = v603;
    v191[5] = v190;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v221, v222))
    {
      v203 = static UnsafeMutablePointer.allocate(capacity:)();
      v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v204 = createStorage<A>(capacity:type:)(0);
      v205 = createStorage<A>(capacity:type:)(1);
      v206 = &v728;
      v728 = v203;
      v207 = &v727;
      v727 = v204;
      v208 = &v726;
      v726 = v205;
      serialize(_:at:)(2, &v728);
      serialize(_:at:)(1, v206);
      v192 = v253;
      v724 = v601;
      v725 = v216;
      closure #1 in osLogInternal(_:log:type:)(&v724, v206, v207, v208);
      v209 = v192;
      if (v192)
      {

        __break(1u);
      }

      else
      {
        v724 = v602;
        v725 = v217;
        closure #1 in osLogInternal(_:log:type:)(&v724, &v728, &v727, &v726);
        v200 = 0;
        v724 = v603;
        v725 = v219;
        closure #1 in osLogInternal(_:log:type:)(&v724, &v728, &v727, &v726);
        v199 = 0;
        _os_log_impl(&dword_2686B1000, v221, v222, "#Transformer found app to use for intent as %s", v203, 0xCu);
        destroyStorage<A>(_:count:)(v204, 0, v202);
        destroyStorage<A>(_:count:)(v205, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v203, MEMORY[0x277D84B78]);

        v201 = v199;
      }
    }

    else
    {

      v201 = v253;
    }

    v198 = v201;
    MEMORY[0x277D82BD8](v221);
    v531(v632, v649);

    v232 = v198;
  }

  else
  {
    v232 = v253;
  }

  v197 = v232;
  MEMORY[0x277D82BE0](v272);
  v193 = v272;
  *v556 = v272;
  MEMORY[0x277D82BD8](v193);
  outlined destroy of String.UTF8View(&v738);
  outlined destroy of SFRichText?(&v740);
}

{
  v2 = MEMORY[0x28223BE20](a1);
  v562 = v3;
  v635 = v2;
  v634 = v4;
  v633 = v5;
  v563 = v1;
  v659 = partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v663 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v665 = partial apply for closure #1 in OSLogArguments.append(_:);
  v667 = partial apply for closure #1 in OSLogArguments.append(_:);
  v670 = partial apply for closure #1 in OSLogArguments.append(_:);
  v564 = partial apply for implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v565 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v566 = partial apply for closure #1 in OSLogArguments.append(_:);
  v567 = partial apply for closure #1 in OSLogArguments.append(_:);
  v568 = partial apply for closure #1 in OSLogArguments.append(_:);
  v569 = partial apply for implicit closure #3 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v570 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v571 = partial apply for closure #1 in OSLogArguments.append(_:);
  v572 = partial apply for closure #1 in OSLogArguments.append(_:);
  v573 = partial apply for closure #1 in OSLogArguments.append(_:);
  v574 = partial apply for implicit closure #4 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v575 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v576 = partial apply for closure #1 in OSLogArguments.append(_:);
  v577 = partial apply for closure #1 in OSLogArguments.append(_:);
  v578 = partial apply for closure #1 in OSLogArguments.append(_:);
  v579 = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v580 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v581 = partial apply for closure #1 in OSLogArguments.append(_:);
  v582 = partial apply for closure #1 in OSLogArguments.append(_:);
  v583 = partial apply for closure #1 in OSLogArguments.append(_:);
  v584 = closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v585 = partial apply for implicit closure #7 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v586 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v587 = partial apply for specialized implicit closure #8 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v588 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v589 = partial apply for implicit closure #9 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v590 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v591 = partial apply for closure #1 in OSLogArguments.append(_:);
  v592 = partial apply for closure #1 in OSLogArguments.append(_:);
  v593 = partial apply for closure #1 in OSLogArguments.append(_:);
  v594 = partial apply for closure #1 in OSLogArguments.append(_:);
  v595 = partial apply for closure #1 in OSLogArguments.append(_:);
  v596 = partial apply for closure #1 in OSLogArguments.append(_:);
  v597 = partial apply for closure #1 in OSLogArguments.append(_:);
  v598 = partial apply for closure #1 in OSLogArguments.append(_:);
  v599 = partial apply for closure #1 in OSLogArguments.append(_:);
  v600 = partial apply for implicit closure #10 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v601 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v602 = partial apply for closure #1 in OSLogArguments.append(_:);
  v603 = partial apply for closure #1 in OSLogArguments.append(_:);
  v604 = partial apply for closure #1 in OSLogArguments.append(_:);
  v605 = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  v606 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v607 = partial apply for closure #1 in OSLogArguments.append(_:);
  v608 = partial apply for closure #1 in OSLogArguments.append(_:);
  v609 = partial apply for closure #1 in OSLogArguments.append(_:);
  v754 = 0;
  v753 = 0;
  v752 = 0;
  v751 = 0;
  v750 = 0;
  v749 = 0;
  v743 = 0;
  v736 = 0uLL;
  v724 = 0;
  v721 = 0;
  v722 = 0;
  v720 = 0;
  v718 = 0.0;
  v717._countAndFlagsBits = 0;
  v717._object = 0;
  v715 = 0;
  v716 = 0;
  v703 = 0;
  v687 = 0;
  v686 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v610 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v611 = &v197 - v610;
  v626 = 0;
  v612 = type metadata accessor for ContactResolverConfig();
  v613 = *(v612 - 8);
  v614 = v612 - 8;
  v615 = (*(v613 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v626);
  v616 = &v197 - v615;
  v617 = type metadata accessor for ContactQuery();
  v619 = *(v617 - 8);
  v618 = v617 - 8;
  v620 = v619;
  v621 = *(v619 + 64);
  v622 = (v621 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v617);
  v623 = &v197 - v622;
  v624 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v197 - v622);
  v625 = &v197 - v624;
  v754 = &v197 - v624;
  v627 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v626);
  v628 = &v197 - v627;
  v629 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v630 = &v197 - v629;
  v631 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v632 = &v197 - v631;
  v753 = &v197 - v631;
  v655 = type metadata accessor for Logger();
  v653 = *(v655 - 8);
  v654 = v655 - 8;
  v636 = v653[8];
  v637 = (v636 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v635);
  v638 = &v197 - v637;
  v639 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v12);
  v640 = &v197 - v639;
  v641 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v14);
  v642 = &v197 - v641;
  v643 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20](v16);
  v644 = &v197 - v643;
  v645 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x28223BE20](v18);
  v646 = &v197 - v645;
  v647 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x28223BE20](v20);
  v648 = &v197 - v647;
  v649 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x28223BE20](v22);
  v650 = &v197 - v649;
  v651 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = MEMORY[0x28223BE20](v24);
  v27 = &v197 - v651;
  v652 = &v197 - v651;
  v660 = *v26;
  v752 = v660;
  v751 = v28;
  v750 = v29;
  v30 = Logger.payments.unsafeMutableAddressor();
  v656 = v653[2];
  v657 = v653 + 2;
  v656(v27, v30, v655);

  v674 = Logger.logObject.getter();
  v675 = static os_log_type_t.debug.getter();
  v658 = 17;
  v662 = 7;
  v666 = swift_allocObject();
  *(v666 + 16) = 32;
  v668 = swift_allocObject();
  *(v668 + 16) = 8;
  v661 = 32;
  v31 = swift_allocObject();
  v32 = v660;
  v664 = v31;
  *(v31 + 16) = v659;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v664;
  v671 = v33;
  *(v33 + 16) = v663;
  *(v33 + 24) = v34;
  v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v669 = _allocateUninitializedArray<A>(_:)();
  v672 = v35;

  v36 = v666;
  v37 = v672;
  *v672 = v665;
  v37[1] = v36;

  v38 = v668;
  v39 = v672;
  v672[2] = v667;
  v39[3] = v38;

  v40 = v671;
  v41 = v672;
  v672[4] = v670;
  v41[5] = v40;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v674, v675))
  {
    v555 = static UnsafeMutablePointer.allocate(capacity:)();
    v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v556 = createStorage<A>(capacity:type:)(0);
    v557 = createStorage<A>(capacity:type:)(1);
    v558 = &v680;
    v680 = v555;
    v559 = &v679;
    v679 = v556;
    v560 = &v678;
    v678 = v557;
    serialize(_:at:)(2, &v680);
    serialize(_:at:)(1, v558);
    v42 = v563;
    v676 = v665;
    v677 = v666;
    closure #1 in osLogInternal(_:log:type:)(&v676, v558, v559, v560);
    v561 = v42;
    if (v42)
    {

      __break(1u);
    }

    else
    {
      v676 = v667;
      v677 = v668;
      closure #1 in osLogInternal(_:log:type:)(&v676, &v680, &v679, &v678);
      v552 = 0;
      v676 = v670;
      v677 = v671;
      closure #1 in osLogInternal(_:log:type:)(&v676, &v680, &v679, &v678);
      v551 = 0;
      _os_log_impl(&dword_2686B1000, v674, v675, "#Transformer for pay_common_Payment task %s", v555, 0xCu);
      destroyStorage<A>(_:count:)(v556, 0, v554);
      destroyStorage<A>(_:count:)(v557, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v555, MEMORY[0x277D84B78]);

      v553 = v551;
    }
  }

  else
  {

    v553 = v563;
  }

  v43 = v650;
  v536 = v553;
  MEMORY[0x277D82BD8](v674);
  v537 = v653[1];
  v538 = v653 + 1;
  v537(v652, v655);
  v44 = Logger.payments.unsafeMutableAddressor();
  v656(v43, v44, v655);
  MEMORY[0x277D82BE0](v634);
  v541 = 7;
  v542 = swift_allocObject();
  *(v542 + 16) = v634;
  v549 = Logger.logObject.getter();
  v550 = static os_log_type_t.debug.getter();
  v539 = 17;
  v544 = swift_allocObject();
  *(v544 + 16) = 32;
  v545 = swift_allocObject();
  *(v545 + 16) = 8;
  v540 = 32;
  v45 = swift_allocObject();
  v46 = v542;
  v543 = v45;
  *(v45 + 16) = v564;
  *(v45 + 24) = v46;
  v47 = swift_allocObject();
  v48 = v543;
  v547 = v47;
  *(v47 + 16) = v565;
  *(v47 + 24) = v48;
  v546 = _allocateUninitializedArray<A>(_:)();
  v548 = v49;

  v50 = v544;
  v51 = v548;
  *v548 = v566;
  v51[1] = v50;

  v52 = v545;
  v53 = v548;
  v548[2] = v567;
  v53[3] = v52;

  v54 = v547;
  v55 = v548;
  v548[4] = v568;
  v55[5] = v54;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v549, v550))
  {
    v529 = static UnsafeMutablePointer.allocate(capacity:)();
    v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v530 = createStorage<A>(capacity:type:)(0);
    v531 = createStorage<A>(capacity:type:)(1);
    v532 = &v685;
    v685 = v529;
    v533 = &v684;
    v684 = v530;
    v534 = &v683;
    v683 = v531;
    serialize(_:at:)(2, &v685);
    serialize(_:at:)(1, v532);
    v56 = v536;
    v681 = v566;
    v682 = v544;
    closure #1 in osLogInternal(_:log:type:)(&v681, v532, v533, v534);
    v535 = v56;
    if (v56)
    {

      __break(1u);
    }

    else
    {
      v681 = v567;
      v682 = v545;
      closure #1 in osLogInternal(_:log:type:)(&v681, &v685, &v684, &v683);
      v526 = 0;
      v681 = v568;
      v682 = v547;
      closure #1 in osLogInternal(_:log:type:)(&v681, &v685, &v684, &v683);
      v525 = 0;
      _os_log_impl(&dword_2686B1000, v549, v550, "#Transformer for pay_common_Payment previous intent is %s", v529, 0xCu);
      destroyStorage<A>(_:count:)(v530, 0, v528);
      destroyStorage<A>(_:count:)(v531, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v529, MEMORY[0x277D84B78]);

      v527 = v525;
    }
  }

  else
  {

    v527 = v536;
  }

  v522 = v527;
  MEMORY[0x277D82BD8](v549);
  v537(v650, v655);
  v523 = swift_allocObject();
  v524 = v523 + 16;
  v749 = v523 + 16;
  MEMORY[0x277D82BE0](v634);
  if (v634)
  {
    v521 = v634;
    v520 = v634;
    v57 = [v634 payee];
    v58 = v520;
    *(v523 + 16) = v57;
    MEMORY[0x277D82BD8](v58);
  }

  else
  {
    *(v523 + 16) = 0;
  }

  MEMORY[0x277D82BE0](v634);
  if (v634)
  {
    v519 = v634;
    v518 = v634;
    v748 = [v634 currencyAmount];
    MEMORY[0x277D82BD8](v518);
  }

  else
  {
    v748 = 0;
  }

  MEMORY[0x277D82BE0](v634);
  if (v634)
  {
    v517 = v634;
    v515 = v634;
    v59 = [v634 note];
    v516 = v59;
    if (v59)
    {
      v514 = v516;
      v509 = v516;
      v510 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v511 = v60;
      MEMORY[0x277D82BD8](v509);
      v512 = v510;
      v513 = v511;
    }

    else
    {
      v512 = 0;
      v513 = 0;
    }

    v746 = v512;
    v747 = v513;
    MEMORY[0x277D82BD8](v515);
  }

  else
  {
    v746 = 0;
    v747 = 0;
  }

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
  v508 = v745;
  if (v745)
  {
    v507 = v508;
    v502 = v508;
    v724 = v508;

    v503 = *(v619 + 56);
    v504 = v619 + 56;
    v503(v632, 1, 1, v617);
    v61 = dispatch thunk of UsoEntity_common_Payment.payee.getter();
    v505 = v61;
    if (v61 && (v501 = v505, v499 = v505, v500 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter(), , v500))
    {
      v498 = v500;
      v495 = v500;
      v496 = CodeGenBase.entity.getter();

      v497 = v496;
    }

    else
    {
      v497 = 0;
    }

    v493 = v497;
    type metadata accessor for UsoEntity_common_Person();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v494 = v723;
    if (v723)
    {
      v492 = v494;
      v489 = v494;
      v686 = v494;
      UsoEntity_common_Person.toContactQuery()();
      v503(v630, 0, 1, v617);
      outlined assign with take of ContactQuery?(v630, v632);
    }

    else
    {
      v491 = dispatch thunk of UsoEntity_common_Payment.payee.getter();
      if (v491)
      {
        v490 = v491;
        v486 = v491;
        v487 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter();

        v488 = v487;
      }

      else
      {
        v488 = 0;
      }

      v485 = v488;
      if (v488)
      {
        v484 = v485;
        v483 = v485;
        v687 = v485;
        UsoEntity_common_Agent.toContactQuery()();
        v503(v630, 0, 1, v617);
        outlined assign with take of ContactQuery?(v630, v632);
      }
    }

    outlined init with copy of ContactQuery?(v632, v628);
    if ((*(v619 + 48))(v628, 1, v617) == 1)
    {
      outlined destroy of ContactQuery?(v628);
      v482 = v522;
    }

    else
    {
      v62 = v648;
      v466 = v620;
      v469 = *(v619 + 32);
      v468 = v619 + 32;
      v469(v625, v628, v617);
      v63 = Logger.payments.unsafeMutableAddressor();
      v656(v62, v63, v655);
      v464 = *(v619 + 16);
      v465 = v619 + 16;
      v464(v623, v625, v617);
      v467 = (*(v466 + 80) + 16) & ~*(v466 + 80);
      v472 = 7;
      v473 = swift_allocObject();
      v469((v473 + v467), v623, v617);
      v480 = Logger.logObject.getter();
      v481 = static os_log_type_t.debug.getter();
      v470 = 17;
      v475 = swift_allocObject();
      *(v475 + 16) = 32;
      v476 = swift_allocObject();
      *(v476 + 16) = 8;
      v471 = 32;
      v64 = swift_allocObject();
      v65 = v473;
      v474 = v64;
      *(v64 + 16) = v569;
      *(v64 + 24) = v65;
      v66 = swift_allocObject();
      v67 = v474;
      v478 = v66;
      *(v66 + 16) = v570;
      *(v66 + 24) = v67;
      v477 = _allocateUninitializedArray<A>(_:)();
      v479 = v68;

      v69 = v475;
      v70 = v479;
      *v479 = v571;
      v70[1] = v69;

      v71 = v476;
      v72 = v479;
      v479[2] = v572;
      v72[3] = v71;

      v73 = v478;
      v74 = v479;
      v479[4] = v573;
      v74[5] = v73;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v480, v481))
      {
        v457 = static UnsafeMutablePointer.allocate(capacity:)();
        v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v458 = createStorage<A>(capacity:type:)(0);
        v459 = createStorage<A>(capacity:type:)(1);
        v460 = &v692;
        v692 = v457;
        v461 = &v691;
        v691 = v458;
        v462 = &v690;
        v690 = v459;
        serialize(_:at:)(2, &v692);
        serialize(_:at:)(1, v460);
        v75 = v522;
        v688 = v571;
        v689 = v475;
        closure #1 in osLogInternal(_:log:type:)(&v688, v460, v461, v462);
        v463 = v75;
        if (v75)
        {

          __break(1u);
        }

        else
        {
          v688 = v572;
          v689 = v476;
          closure #1 in osLogInternal(_:log:type:)(&v688, &v692, &v691, &v690);
          v454 = 0;
          v688 = v573;
          v689 = v478;
          closure #1 in osLogInternal(_:log:type:)(&v688, &v692, &v691, &v690);
          v453 = 0;
          _os_log_impl(&dword_2686B1000, v480, v481, "#Transformer payee contact in USO parse as ContactQuery is: %s", v457, 0xCu);
          destroyStorage<A>(_:count:)(v458, 0, v456);
          destroyStorage<A>(_:count:)(v459, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v457, MEMORY[0x277D84B78]);

          v455 = v453;
        }
      }

      else
      {

        v455 = v522;
      }

      v447 = v455;
      MEMORY[0x277D82BD8](v480);
      v537(v648, v655);
      v448 = v633[3];
      v449 = v633[4];
      __swift_project_boxed_opaque_existential_1(v633, v448);
      v443 = _allocateUninitializedArray<A>(_:)();
      v464(v76, v625, v617);
      v77 = v443;
      _finalizeUninitializedArray<A>(_:)();
      v446 = v77;
      v444 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
      v445 = &v704;
      swift_beginAccess();
      (*(v613 + 16))(v616, v444, v612);
      swift_endAccess();
      v78 = v447;
      v79 = (*(v449 + 16))(v446, v616, v448);
      v450 = v78;
      v451 = v79;
      v452 = v78;
      if (v78)
      {
        v198 = v452;
        v199 = 0;
        (*(v613 + 8))(v616, v612);

        v441 = 0;
        v442 = v199;
      }

      else
      {
        v440 = v451;
        (*(v613 + 8))(v616, v612);

        v441 = v440;
        v442 = v450;
      }

      v80 = v646;
      v426 = v442;
      v427 = v441;
      v703 = v441;
      v81 = Logger.payments.unsafeMutableAddressor();
      v656(v80, v81, v655);

      v430 = 7;
      v431 = swift_allocObject();
      *(v431 + 16) = v427;
      v438 = Logger.logObject.getter();
      v439 = static os_log_type_t.debug.getter();
      v428 = 17;
      v433 = swift_allocObject();
      *(v433 + 16) = 32;
      v434 = swift_allocObject();
      *(v434 + 16) = 8;
      v429 = 32;
      v82 = swift_allocObject();
      v83 = v431;
      v432 = v82;
      *(v82 + 16) = v574;
      *(v82 + 24) = v83;
      v84 = swift_allocObject();
      v85 = v432;
      v436 = v84;
      *(v84 + 16) = v575;
      *(v84 + 24) = v85;
      v435 = _allocateUninitializedArray<A>(_:)();
      v437 = v86;

      v87 = v433;
      v88 = v437;
      *v437 = v576;
      v88[1] = v87;

      v89 = v434;
      v90 = v437;
      v437[2] = v577;
      v90[3] = v89;

      v91 = v436;
      v92 = v437;
      v437[4] = v578;
      v92[5] = v91;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v438, v439))
      {
        v419 = static UnsafeMutablePointer.allocate(capacity:)();
        v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v420 = createStorage<A>(capacity:type:)(0);
        v421 = createStorage<A>(capacity:type:)(1);
        v422 = v697;
        v697[0] = v419;
        v423 = &v696;
        v696 = v420;
        v424 = &v695;
        v695 = v421;
        serialize(_:at:)(2, v697);
        serialize(_:at:)(1, v422);
        v93 = v426;
        v693 = v576;
        v694 = v433;
        closure #1 in osLogInternal(_:log:type:)(&v693, v422, v423, v424);
        v425 = v93;
        if (v93)
        {

          __break(1u);
        }

        else
        {
          v693 = v577;
          v694 = v434;
          closure #1 in osLogInternal(_:log:type:)(&v693, v697, &v696, &v695);
          v416 = 0;
          v693 = v578;
          v694 = v436;
          closure #1 in osLogInternal(_:log:type:)(&v693, v697, &v696, &v695);
          v415 = 0;
          _os_log_impl(&dword_2686B1000, v438, v439, "#Transformer SiriKitContactResolver found matches for payee in USO parse: %s", v419, 0xCu);
          destroyStorage<A>(_:count:)(v420, 0, v418);
          destroyStorage<A>(_:count:)(v421, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v419, MEMORY[0x277D84B78]);

          v417 = v415;
        }
      }

      else
      {

        v417 = v426;
      }

      v414 = v417;
      MEMORY[0x277D82BD8](v438);
      v537(v646, v655);

      if (v427)
      {
        v413 = v427;
        v410 = v427;
        v697[2] = v427;
        v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
        lazy protocol witness table accessor for type [INPerson] and conformance [A]();
        Collection.first.getter();
        v411 = v697[1];

        v412 = v411;
      }

      else
      {
        v412 = 0;
      }

      v94 = v644;
      v95 = *(v523 + 16);
      *(v523 + 16) = v412;
      MEMORY[0x277D82BD8](v95);
      v96 = Logger.payments.unsafeMutableAddressor();
      v656(v94, v96, v655);

      v407 = Logger.logObject.getter();
      v408 = static os_log_type_t.debug.getter();
      v398 = 17;
      v400 = 7;
      v402 = swift_allocObject();
      *(v402 + 16) = 32;
      v403 = swift_allocObject();
      *(v403 + 16) = 8;
      v399 = 32;
      v97 = swift_allocObject();
      v98 = v523;
      v401 = v97;
      *(v97 + 16) = v579;
      *(v97 + 24) = v98;
      v99 = swift_allocObject();
      v100 = v401;
      v405 = v99;
      *(v99 + 16) = v580;
      *(v99 + 24) = v100;
      v404 = _allocateUninitializedArray<A>(_:)();
      v406 = v101;

      v102 = v402;
      v103 = v406;
      *v406 = v581;
      v103[1] = v102;

      v104 = v403;
      v105 = v406;
      v406[2] = v582;
      v105[3] = v104;

      v106 = v405;
      v107 = v406;
      v406[4] = v583;
      v107[5] = v106;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v407, v408))
      {
        v391 = static UnsafeMutablePointer.allocate(capacity:)();
        v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v392 = createStorage<A>(capacity:type:)(0);
        v393 = createStorage<A>(capacity:type:)(1);
        v394 = &v702;
        v702 = v391;
        v395 = &v701;
        v701 = v392;
        v396 = &v700;
        v700 = v393;
        serialize(_:at:)(2, &v702);
        serialize(_:at:)(1, v394);
        v108 = v414;
        v698 = v581;
        v699 = v402;
        closure #1 in osLogInternal(_:log:type:)(&v698, v394, v395, v396);
        v397 = v108;
        if (v108)
        {

          __break(1u);
        }

        else
        {
          v698 = v582;
          v699 = v403;
          closure #1 in osLogInternal(_:log:type:)(&v698, &v702, &v701, &v700);
          v388 = 0;
          v698 = v583;
          v699 = v405;
          closure #1 in osLogInternal(_:log:type:)(&v698, &v702, &v701, &v700);
          v387 = 0;
          _os_log_impl(&dword_2686B1000, v407, v408, "#Transformer resolved payee from matches as %s", v391, 0xCu);
          destroyStorage<A>(_:count:)(v392, 0, v390);
          destroyStorage<A>(_:count:)(v393, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v391, MEMORY[0x277D84B78]);

          v389 = v387;
        }
      }

      else
      {

        v389 = v414;
      }

      v386 = v389;
      MEMORY[0x277D82BD8](v407);
      v537(v644, v655);

      (*(v619 + 8))(v625, v617);
      v482 = v386;
    }

    v384 = v482;
    v385 = dispatch thunk of UsoEntity_common_Payment.amount.getter();
    if (v385)
    {
      v383 = v385;
      v380 = v385;
      v720 = v385;
      v109 = dispatch thunk of UsoEntity_common_CurrencyAmount.amount.getter();
      v381 = v109;
      if (v109)
      {
        v379 = v381;
        v376 = v381;
        v377 = CodeGenBase.entity.getter();

        v378 = v377;
      }

      else
      {
        v378 = 0;
      }

      v373 = v378;
      v110 = default argument 1 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v372 = *&v110;
      default argument 2 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v370 = v111;
      v371 = default argument 3 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v112 = default argument 4 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v719 = static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(v373, v372, v370, v371, v112);
      v374 = *&v719;
      v375 = BYTE4(v719);

      if ((v375 & 1) == 0)
      {
        v369 = v374;
        v367 = v374;
        v718 = v374;
        v717 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
        v113 = dispatch thunk of UsoEntity_common_CurrencyAmount.currency.getter();
        v368 = v113;
        if (v113)
        {
          v366 = v368;
          v363 = v368;
          object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
          v364 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

          if (v364)
          {
            v361 = v364;
            v705 = v364;
            v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
            lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
            v114 = v384;
            result = Sequence.first(where:)();
            v360 = v114;
            if (v114)
            {
              __break(1u);
              return result;
            }

            outlined destroy of [SFCardSection](&v705);
            v356 = type metadata accessor for UsoIdentifier();
            v357 = *(v356 - 8);
            v358 = v356 - 8;
            if ((*(v357 + 48))(v611, 1) != 1)
            {
              v351 = UsoIdentifier.value.getter();
              v352 = v116;
              (*(v357 + 8))(v611, v356);
              v353 = v351;
              v354 = v352;
              v355 = v360;
LABEL_83:
              v348 = v355;
              v349 = v354;
              v350 = v353;
              v715 = v353;
              v716 = v354;
              v713._countAndFlagsBits = UsoEntity_common_CurrencyAmount.currencyIdentifier.getter();
              v713._object = v117;
              if (v117)
              {
                v714 = v713;
              }

              else
              {
                v714 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
                if (v713._object)
                {
                  outlined destroy of String.UTF8View(&v713);
                }
              }

              v118 = v642;
              v323 = v714;

              v717 = v323;

              v119 = Logger.payments.unsafeMutableAddressor();
              v656(v118, v119, v655);
              v332 = 7;
              v324 = swift_allocObject();
              *(v324 + 16) = v367;

              v331 = 32;
              v120 = swift_allocObject();
              v121 = v323._object;
              v326 = v120;
              *(v120 + 16) = v323._countAndFlagsBits;
              *(v120 + 24) = v121;

              v122 = swift_allocObject();
              v123 = v349;
              v333 = v122;
              *(v122 + 16) = v350;
              *(v122 + 24) = v123;
              v346 = Logger.logObject.getter();
              v347 = static os_log_type_t.debug.getter();
              v329 = 17;
              v335 = swift_allocObject();
              v328 = 32;
              *(v335 + 16) = 32;
              v336 = swift_allocObject();
              v330 = 8;
              *(v336 + 16) = 8;
              v124 = swift_allocObject();
              v125 = v324;
              v325 = v124;
              *(v124 + 16) = v585;
              *(v124 + 24) = v125;
              v126 = swift_allocObject();
              v127 = v325;
              v337 = v126;
              *(v126 + 16) = v586;
              *(v126 + 24) = v127;
              v338 = swift_allocObject();
              *(v338 + 16) = v328;
              v339 = swift_allocObject();
              *(v339 + 16) = v330;
              v128 = swift_allocObject();
              v129 = v326;
              v327 = v128;
              *(v128 + 16) = v587;
              *(v128 + 24) = v129;
              v130 = swift_allocObject();
              v131 = v327;
              v340 = v130;
              *(v130 + 16) = v588;
              *(v130 + 24) = v131;
              v341 = swift_allocObject();
              *(v341 + 16) = v328;
              v342 = swift_allocObject();
              *(v342 + 16) = v330;
              v132 = swift_allocObject();
              v133 = v333;
              v334 = v132;
              *(v132 + 16) = v589;
              *(v132 + 24) = v133;
              v134 = swift_allocObject();
              v135 = v334;
              v344 = v134;
              *(v134 + 16) = v590;
              *(v134 + 24) = v135;
              v343 = _allocateUninitializedArray<A>(_:)();
              v345 = v136;

              v137 = v335;
              v138 = v345;
              *v345 = v591;
              v138[1] = v137;

              v139 = v336;
              v140 = v345;
              v345[2] = v592;
              v140[3] = v139;

              v141 = v337;
              v142 = v345;
              v345[4] = v593;
              v142[5] = v141;

              v143 = v338;
              v144 = v345;
              v345[6] = v594;
              v144[7] = v143;

              v145 = v339;
              v146 = v345;
              v345[8] = v595;
              v146[9] = v145;

              v147 = v340;
              v148 = v345;
              v345[10] = v596;
              v148[11] = v147;

              v149 = v341;
              v150 = v345;
              v345[12] = v597;
              v150[13] = v149;

              v151 = v342;
              v152 = v345;
              v345[14] = v598;
              v152[15] = v151;

              v153 = v344;
              v154 = v345;
              v345[16] = v599;
              v154[17] = v153;
              _finalizeUninitializedArray<A>(_:)();

              if (os_log_type_enabled(v346, v347))
              {
                v316 = static UnsafeMutablePointer.allocate(capacity:)();
                v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v317 = createStorage<A>(capacity:type:)(0);
                v318 = createStorage<A>(capacity:type:)(3);
                v319 = &v710;
                v710 = v316;
                v320 = &v709;
                v709 = v317;
                v321 = &v708;
                v708 = v318;
                serialize(_:at:)(2, &v710);
                serialize(_:at:)(3, v319);
                v155 = v348;
                v706 = v591;
                v707 = v335;
                closure #1 in osLogInternal(_:log:type:)(&v706, v319, v320, v321);
                v322 = v155;
                if (v155)
                {

                  __break(1u);
                }

                else
                {
                  v706 = v592;
                  v707 = v336;
                  closure #1 in osLogInternal(_:log:type:)(&v706, &v710, &v709, &v708);
                  v313 = 0;
                  v706 = v593;
                  v707 = v337;
                  closure #1 in osLogInternal(_:log:type:)(&v706, &v710, &v709, &v708);
                  v312 = 0;
                  v706 = v594;
                  v707 = v338;
                  closure #1 in osLogInternal(_:log:type:)(&v706, &v710, &v709, &v708);
                  v311 = 0;
                  v706 = v595;
                  v707 = v339;
                  closure #1 in osLogInternal(_:log:type:)(&v706, &v710, &v709, &v708);
                  v310 = 0;
                  v706 = v596;
                  v707 = v340;
                  closure #1 in osLogInternal(_:log:type:)(&v706, &v710, &v709, &v708);
                  v309 = 0;
                  v706 = v597;
                  v707 = v341;
                  closure #1 in osLogInternal(_:log:type:)(&v706, &v710, &v709, &v708);
                  v308 = 0;
                  v706 = v598;
                  v707 = v342;
                  closure #1 in osLogInternal(_:log:type:)(&v706, &v710, &v709, &v708);
                  v307 = 0;
                  v706 = v599;
                  v707 = v344;
                  closure #1 in osLogInternal(_:log:type:)(&v706, &v710, &v709, &v708);
                  v306 = 0;
                  _os_log_impl(&dword_2686B1000, v346, v347, "#Transformer found currency, %s %s. Raw usoIdentifier was %s", v316, 0x20u);
                  destroyStorage<A>(_:count:)(v317, 0, v315);
                  destroyStorage<A>(_:count:)(v318, 3, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x26D620BD0](v316, MEMORY[0x277D84B78]);

                  v314 = v306;
                }
              }

              else
              {

                v314 = v348;
              }

              v303 = v314;
              MEMORY[0x277D82BD8](v346);
              v537(v642, v655);
              v304 = &v712;
              swift_beginAccess();
              swift_endAccess();
              v305 = String.isEmpty.getter();

              if ((v305 & 1) == 0)
              {
                v298 = 0;
                v299 = type metadata accessor for INCurrencyAmount();
                type metadata accessor for NSDecimalNumber();
                NSDecimalNumber.__allocating_init(value:)(v156, v367);
                v301 = v157;
                v300 = &v711;
                swift_beginAccess();
                v302 = v717;

                swift_endAccess();
                isa = INCurrencyAmount.__allocating_init(amount:currencyCode:)(v301, v302).super.isa;
                v159 = v748;
                v748 = isa;
                MEMORY[0x277D82BD8](v159);
              }

              outlined destroy of String.UTF8View(&v717);

              v382 = v303;
              goto LABEL_96;
            }

            outlined destroy of UsoIdentifier?(v611);
            v365 = v360;
          }

          else
          {
            v365 = v384;
          }
        }

        else
        {
          v365 = v384;
        }

        v353 = 0;
        v354 = 0;
        v355 = v365;
        goto LABEL_83;
      }

      v382 = v384;
    }

    else
    {
      v382 = v384;
    }

LABEL_96:
    v295 = v382;
    v296 = dispatch thunk of UsoEntity_common_Payment.memo.getter();
    v297 = v160;
    if (v160)
    {
      v293 = v296;
      v294 = v297;
      v292 = v297;
      v291 = v296;
      v721 = v296;
      v722 = v297;

      v746 = v291;
      v747 = v292;
    }

    outlined destroy of ContactQuery?(v632);

    v506 = v295;
    goto LABEL_99;
  }

  v506 = v522;
LABEL_99:
  v272 = v506;
  type metadata accessor for INSendPaymentIntent();
  v273 = &v744;
  v280 = 32;
  swift_beginAccess();
  v274 = *(v523 + 16);
  MEMORY[0x277D82BE0](v274);
  swift_endAccess();
  v275 = v748;
  MEMORY[0x277D82BE0](v748);
  v276 = v746;
  v277 = v747;

  v755.value.super.isa = v274;
  v755.is_nil = v275;
  v756.value.super.isa = v276;
  v756.is_nil = v277;
  v162.super.super.isa = INSendPaymentIntent.__allocating_init(payee:currencyAmount:note:)(v755, v756, v161).super.super.isa;
  v163 = v640;
  v278 = v162.super.super.isa;
  v743 = v162.super.super.isa;
  v164 = Logger.payments.unsafeMutableAddressor();
  v656(v163, v164, v655);
  MEMORY[0x277D82BE0](v278);
  v281 = 7;
  v282 = swift_allocObject();
  *(v282 + 16) = v278;
  v289 = Logger.logObject.getter();
  v290 = static os_log_type_t.debug.getter();
  v279 = 17;
  v284 = swift_allocObject();
  *(v284 + 16) = 32;
  v285 = swift_allocObject();
  *(v285 + 16) = 8;
  v165 = swift_allocObject();
  v166 = v282;
  v283 = v165;
  *(v165 + 16) = v600;
  *(v165 + 24) = v166;
  v167 = swift_allocObject();
  v168 = v283;
  v287 = v167;
  *(v167 + 16) = v601;
  *(v167 + 24) = v168;
  v286 = _allocateUninitializedArray<A>(_:)();
  v288 = v169;

  v170 = v284;
  v171 = v288;
  *v288 = v602;
  v171[1] = v170;

  v172 = v285;
  v173 = v288;
  v288[2] = v603;
  v173[3] = v172;

  v174 = v287;
  v175 = v288;
  v288[4] = v604;
  v175[5] = v174;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v289, v290))
  {
    v265 = static UnsafeMutablePointer.allocate(capacity:)();
    v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v266 = createStorage<A>(capacity:type:)(0);
    v267 = createStorage<A>(capacity:type:)(1);
    v268 = &v729;
    v729 = v265;
    v269 = &v728;
    v728 = v266;
    v270 = &v727;
    v727 = v267;
    serialize(_:at:)(2, &v729);
    serialize(_:at:)(1, v268);
    v176 = v272;
    v725 = v602;
    v726 = v284;
    closure #1 in osLogInternal(_:log:type:)(&v725, v268, v269, v270);
    v271 = v176;
    if (v176)
    {

      __break(1u);
    }

    else
    {
      v725 = v603;
      v726 = v285;
      closure #1 in osLogInternal(_:log:type:)(&v725, &v729, &v728, &v727);
      v262 = 0;
      v725 = v604;
      v726 = v287;
      closure #1 in osLogInternal(_:log:type:)(&v725, &v729, &v728, &v727);
      v261 = 0;
      _os_log_impl(&dword_2686B1000, v289, v290, "#Transformer returning intent %s", v265, 0xCu);
      destroyStorage<A>(_:count:)(v266, 0, v264);
      destroyStorage<A>(_:count:)(v267, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v265, MEMORY[0x277D84B78]);

      v263 = v261;
    }
  }

  else
  {

    v263 = v272;
  }

  v259 = v263;
  MEMORY[0x277D82BD8](v289);
  v537(v640, v655);

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
  v260 = v741;

  if (v260 && (v258 = v260, v256 = v260, v257 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter(), , v257))
  {
    v255 = v257;
    v252 = v257;
    *&v253 = UsoEntity_common_App.appIdentifier.getter();
    *(&v253 + 1) = v177;

    v254 = v253;
  }

  else
  {
    v254 = 0uLL;
  }

  v740 = v254;

  if (*(&v740 + 1))
  {
    v742 = v740;
  }

  else
  {

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();
    v251 = v739;

    if (!v251)
    {
      goto LABEL_136;
    }

    v250 = v251;
    v248 = v251;
    v249 = dispatch thunk of UsoEntity_common_Payment.payer.getter();

    if (!v249)
    {
      goto LABEL_136;
    }

    v247 = v249;
    v245 = v249;
    v246 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

    if (v246)
    {
      v244 = v246;
      v241 = v246;
      *&v242 = UsoEntity_common_App.appIdentifier.getter();
      *(&v242 + 1) = v178;

      v243 = v242;
    }

    else
    {
LABEL_136:
      v243 = 0uLL;
    }

    v738 = v243;

    if (*(&v738 + 1))
    {
      v742 = v738;
    }

    else
    {

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
      v240 = v737;

      if (!v240)
      {
        goto LABEL_135;
      }

      v239 = v240;
      v237 = v240;
      v238 = dispatch thunk of UsoEntity_common_Payment.payee.getter();

      if (v238 && (v236 = v238, v234 = v238, v235 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter(), , v235))
      {
        v233 = v235;
        v232 = v235;
        *&v742 = UsoEntity_common_App.appIdentifier.getter();
        *(&v742 + 1) = v179;
      }

      else
      {
LABEL_135:
        v742 = 0uLL;
      }

      if (*(&v738 + 1))
      {
        outlined destroy of String.UTF8View(&v738);
      }
    }

    if (*(&v740 + 1))
    {
      outlined destroy of String.UTF8View(&v740);
    }
  }

  v231 = v742;
  if (*(&v742 + 1))
  {
    v230 = v231;
    v180 = v638;
    v216 = v231;
    v736 = v231;
    MEMORY[0x277D82BE0](v278);
    v213 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();

    v215 = MEMORY[0x26D620690](v216, *(&v216 + 1));

    v214 = &v735;
    v218 = 32;
    swift_beginAccess();
    objc_setAssociatedObject(v278, v213, v215, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v181 = Logger.payments.unsafeMutableAddressor();
    v656(v180, v181, v655);

    v219 = 7;
    v182 = swift_allocObject();
    v183 = *(&v216 + 1);
    v220 = v182;
    *(v182 + 16) = v216;
    *(v182 + 24) = v183;
    v227 = Logger.logObject.getter();
    v228 = static os_log_type_t.debug.getter();
    v217 = 17;
    v222 = swift_allocObject();
    *(v222 + 16) = 32;
    v223 = swift_allocObject();
    *(v223 + 16) = 8;
    v184 = swift_allocObject();
    v185 = v220;
    v221 = v184;
    *(v184 + 16) = v605;
    *(v184 + 24) = v185;
    v186 = swift_allocObject();
    v187 = v221;
    v225 = v186;
    *(v186 + 16) = v606;
    *(v186 + 24) = v187;
    v224 = _allocateUninitializedArray<A>(_:)();
    v226 = v188;

    v189 = v222;
    v190 = v226;
    *v226 = v607;
    v190[1] = v189;

    v191 = v223;
    v192 = v226;
    v226[2] = v608;
    v192[3] = v191;

    v193 = v225;
    v194 = v226;
    v226[4] = v609;
    v194[5] = v193;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v227, v228))
    {
      v206 = static UnsafeMutablePointer.allocate(capacity:)();
      v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v207 = createStorage<A>(capacity:type:)(0);
      v208 = createStorage<A>(capacity:type:)(1);
      v209 = &v734;
      v734 = v206;
      v210 = &v733;
      v733 = v207;
      v211 = &v732;
      v732 = v208;
      serialize(_:at:)(2, &v734);
      serialize(_:at:)(1, v209);
      v195 = v259;
      v730 = v607;
      v731 = v222;
      closure #1 in osLogInternal(_:log:type:)(&v730, v209, v210, v211);
      v212 = v195;
      if (v195)
      {

        __break(1u);
      }

      else
      {
        v730 = v608;
        v731 = v223;
        closure #1 in osLogInternal(_:log:type:)(&v730, &v734, &v733, &v732);
        v203 = 0;
        v730 = v609;
        v731 = v225;
        closure #1 in osLogInternal(_:log:type:)(&v730, &v734, &v733, &v732);
        v202 = 0;
        _os_log_impl(&dword_2686B1000, v227, v228, "#Transformer found appIdentifier to use for intent as %s", v206, 0xCu);
        destroyStorage<A>(_:count:)(v207, 0, v205);
        destroyStorage<A>(_:count:)(v208, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v206, MEMORY[0x277D84B78]);

        v204 = v202;
      }
    }

    else
    {

      v204 = v259;
    }

    v201 = v204;
    MEMORY[0x277D82BD8](v227);
    v537(v638, v655);

    v229 = v201;
  }

  else
  {
    v229 = v259;
  }

  v200 = v229;
  MEMORY[0x277D82BE0](v278);
  v196 = v278;
  *v562 = v278;
  MEMORY[0x277D82BD8](v196);
  outlined destroy of String.UTF8View(&v746);
  outlined destroy of SFRichText?(&v748);
}

{
  v2 = MEMORY[0x28223BE20](a1);
  v556 = v3;
  v629 = v2;
  v628 = v4;
  v627 = v5;
  v557 = v1;
  v653 = partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v657 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v659 = partial apply for closure #1 in OSLogArguments.append(_:);
  v661 = partial apply for closure #1 in OSLogArguments.append(_:);
  v664 = partial apply for closure #1 in OSLogArguments.append(_:);
  v558 = partial apply for implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v559 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v560 = partial apply for closure #1 in OSLogArguments.append(_:);
  v561 = partial apply for closure #1 in OSLogArguments.append(_:);
  v562 = partial apply for closure #1 in OSLogArguments.append(_:);
  v563 = partial apply for implicit closure #3 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v564 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v565 = partial apply for closure #1 in OSLogArguments.append(_:);
  v566 = partial apply for closure #1 in OSLogArguments.append(_:);
  v567 = partial apply for closure #1 in OSLogArguments.append(_:);
  v568 = partial apply for implicit closure #4 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v569 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v570 = partial apply for closure #1 in OSLogArguments.append(_:);
  v571 = partial apply for closure #1 in OSLogArguments.append(_:);
  v572 = partial apply for closure #1 in OSLogArguments.append(_:);
  v573 = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v574 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v575 = partial apply for closure #1 in OSLogArguments.append(_:);
  v576 = partial apply for closure #1 in OSLogArguments.append(_:);
  v577 = partial apply for closure #1 in OSLogArguments.append(_:);
  v578 = closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v579 = partial apply for implicit closure #7 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v580 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v581 = partial apply for specialized implicit closure #8 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v582 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v583 = partial apply for implicit closure #9 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v584 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v585 = partial apply for closure #1 in OSLogArguments.append(_:);
  v586 = partial apply for closure #1 in OSLogArguments.append(_:);
  v587 = partial apply for closure #1 in OSLogArguments.append(_:);
  v588 = partial apply for closure #1 in OSLogArguments.append(_:);
  v589 = partial apply for closure #1 in OSLogArguments.append(_:);
  v590 = partial apply for closure #1 in OSLogArguments.append(_:);
  v591 = partial apply for closure #1 in OSLogArguments.append(_:);
  v592 = partial apply for closure #1 in OSLogArguments.append(_:);
  v593 = partial apply for closure #1 in OSLogArguments.append(_:);
  v594 = partial apply for implicit closure #10 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v595 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v596 = partial apply for closure #1 in OSLogArguments.append(_:);
  v597 = partial apply for closure #1 in OSLogArguments.append(_:);
  v598 = partial apply for closure #1 in OSLogArguments.append(_:);
  v599 = partial apply for implicit closure #13 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v600 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v601 = partial apply for closure #1 in OSLogArguments.append(_:);
  v602 = partial apply for closure #1 in OSLogArguments.append(_:);
  v603 = partial apply for closure #1 in OSLogArguments.append(_:);
  v746 = 0;
  v745 = 0;
  v744 = 0;
  v743 = 0;
  v742 = 0;
  v741 = 0;
  v735 = 0;
  v730 = 0;
  v718 = 0;
  v715 = 0;
  v716 = 0;
  v714 = 0;
  v712 = 0.0;
  v711._countAndFlagsBits = 0;
  v711._object = 0;
  v709 = 0;
  v710 = 0;
  v697 = 0;
  v681 = 0;
  v680 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v604 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v605 = &v194 - v604;
  v620 = 0;
  v606 = type metadata accessor for ContactResolverConfig();
  v607 = *(v606 - 8);
  v608 = v606 - 8;
  v609 = (*(v607 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v620);
  v610 = &v194 - v609;
  v611 = type metadata accessor for ContactQuery();
  v613 = *(v611 - 8);
  v612 = v611 - 8;
  v614 = v613;
  v615 = *(v613 + 64);
  v616 = (v615 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v611);
  v617 = &v194 - v616;
  v618 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v194 - v616);
  v619 = &v194 - v618;
  v746 = &v194 - v618;
  v621 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v620);
  v622 = &v194 - v621;
  v623 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v624 = &v194 - v623;
  v625 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v626 = &v194 - v625;
  v745 = &v194 - v625;
  v649 = type metadata accessor for Logger();
  v647 = *(v649 - 8);
  v648 = v649 - 8;
  v630 = v647[8];
  v631 = (v630 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v629);
  v632 = &v194 - v631;
  v633 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v12);
  v634 = &v194 - v633;
  v635 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v14);
  v636 = &v194 - v635;
  v637 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x28223BE20](v16);
  v638 = &v194 - v637;
  v639 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x28223BE20](v18);
  v640 = &v194 - v639;
  v641 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x28223BE20](v20);
  v642 = &v194 - v641;
  v643 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x28223BE20](v22);
  v644 = &v194 - v643;
  v645 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = MEMORY[0x28223BE20](v24);
  v27 = &v194 - v645;
  v646 = &v194 - v645;
  v654 = *v26;
  v744 = v654;
  v743 = v28;
  v742 = v29;
  v30 = Logger.payments.unsafeMutableAddressor();
  v650 = v647[2];
  v651 = v647 + 2;
  v650(v27, v30, v649);

  v668 = Logger.logObject.getter();
  v669 = static os_log_type_t.debug.getter();
  v652 = 17;
  v656 = 7;
  v660 = swift_allocObject();
  *(v660 + 16) = 32;
  v662 = swift_allocObject();
  *(v662 + 16) = 8;
  v655 = 32;
  v31 = swift_allocObject();
  v32 = v654;
  v658 = v31;
  *(v31 + 16) = v653;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v658;
  v665 = v33;
  *(v33 + 16) = v657;
  *(v33 + 24) = v34;
  v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v663 = _allocateUninitializedArray<A>(_:)();
  v666 = v35;

  v36 = v660;
  v37 = v666;
  *v666 = v659;
  v37[1] = v36;

  v38 = v662;
  v39 = v666;
  v666[2] = v661;
  v39[3] = v38;

  v40 = v665;
  v41 = v666;
  v666[4] = v664;
  v41[5] = v40;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v668, v669))
  {
    v549 = static UnsafeMutablePointer.allocate(capacity:)();
    v548 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v550 = createStorage<A>(capacity:type:)(0);
    v551 = createStorage<A>(capacity:type:)(1);
    v552 = &v674;
    v674 = v549;
    v553 = &v673;
    v673 = v550;
    v554 = &v672;
    v672 = v551;
    serialize(_:at:)(2, &v674);
    serialize(_:at:)(1, v552);
    v42 = v557;
    v670 = v659;
    v671 = v660;
    closure #1 in osLogInternal(_:log:type:)(&v670, v552, v553, v554);
    v555 = v42;
    if (v42)
    {

      __break(1u);
    }

    else
    {
      v670 = v661;
      v671 = v662;
      closure #1 in osLogInternal(_:log:type:)(&v670, &v674, &v673, &v672);
      v546 = 0;
      v670 = v664;
      v671 = v665;
      closure #1 in osLogInternal(_:log:type:)(&v670, &v674, &v673, &v672);
      v545 = 0;
      _os_log_impl(&dword_2686B1000, v668, v669, "#Transformer for requestMoney_common_Payment task %s", v549, 0xCu);
      destroyStorage<A>(_:count:)(v550, 0, v548);
      destroyStorage<A>(_:count:)(v551, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v549, MEMORY[0x277D84B78]);

      v547 = v545;
    }
  }

  else
  {

    v547 = v557;
  }

  v43 = v644;
  v530 = v547;
  MEMORY[0x277D82BD8](v668);
  v531 = v647[1];
  v532 = v647 + 1;
  v531(v646, v649);
  v44 = Logger.payments.unsafeMutableAddressor();
  v650(v43, v44, v649);
  MEMORY[0x277D82BE0](v628);
  v535 = 7;
  v536 = swift_allocObject();
  *(v536 + 16) = v628;
  v543 = Logger.logObject.getter();
  v544 = static os_log_type_t.debug.getter();
  v533 = 17;
  v538 = swift_allocObject();
  *(v538 + 16) = 32;
  v539 = swift_allocObject();
  *(v539 + 16) = 8;
  v534 = 32;
  v45 = swift_allocObject();
  v46 = v536;
  v537 = v45;
  *(v45 + 16) = v558;
  *(v45 + 24) = v46;
  v47 = swift_allocObject();
  v48 = v537;
  v541 = v47;
  *(v47 + 16) = v559;
  *(v47 + 24) = v48;
  v540 = _allocateUninitializedArray<A>(_:)();
  v542 = v49;

  v50 = v538;
  v51 = v542;
  *v542 = v560;
  v51[1] = v50;

  v52 = v539;
  v53 = v542;
  v542[2] = v561;
  v53[3] = v52;

  v54 = v541;
  v55 = v542;
  v542[4] = v562;
  v55[5] = v54;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v543, v544))
  {
    v523 = static UnsafeMutablePointer.allocate(capacity:)();
    v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v524 = createStorage<A>(capacity:type:)(0);
    v525 = createStorage<A>(capacity:type:)(1);
    v526 = &v679;
    v679 = v523;
    v527 = &v678;
    v678 = v524;
    v528 = &v677;
    v677 = v525;
    serialize(_:at:)(2, &v679);
    serialize(_:at:)(1, v526);
    v56 = v530;
    v675 = v560;
    v676 = v538;
    closure #1 in osLogInternal(_:log:type:)(&v675, v526, v527, v528);
    v529 = v56;
    if (v56)
    {

      __break(1u);
    }

    else
    {
      v675 = v561;
      v676 = v539;
      closure #1 in osLogInternal(_:log:type:)(&v675, &v679, &v678, &v677);
      v520 = 0;
      v675 = v562;
      v676 = v541;
      closure #1 in osLogInternal(_:log:type:)(&v675, &v679, &v678, &v677);
      v519 = 0;
      _os_log_impl(&dword_2686B1000, v543, v544, "#Transformer for requestMoney_common_Payment previous intent is %s", v523, 0xCu);
      destroyStorage<A>(_:count:)(v524, 0, v522);
      destroyStorage<A>(_:count:)(v525, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v523, MEMORY[0x277D84B78]);

      v521 = v519;
    }
  }

  else
  {

    v521 = v530;
  }

  v516 = v521;
  MEMORY[0x277D82BD8](v543);
  v531(v644, v649);
  v517 = swift_allocObject();
  v518 = v517 + 16;
  v741 = v517 + 16;
  MEMORY[0x277D82BE0](v628);
  if (v628)
  {
    v515 = v628;
    v514 = v628;
    v57 = [v628 payer];
    v58 = v514;
    *(v517 + 16) = v57;
    MEMORY[0x277D82BD8](v58);
  }

  else
  {
    *(v517 + 16) = 0;
  }

  MEMORY[0x277D82BE0](v628);
  if (v628)
  {
    v513 = v628;
    v512 = v628;
    v740 = [v628 currencyAmount];
    MEMORY[0x277D82BD8](v512);
  }

  else
  {
    v740 = 0;
  }

  MEMORY[0x277D82BE0](v628);
  if (v628)
  {
    v511 = v628;
    v509 = v628;
    v59 = [v628 note];
    v510 = v59;
    if (v59)
    {
      v508 = v510;
      v503 = v510;
      v504 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v505 = v60;
      MEMORY[0x277D82BD8](v503);
      v506 = v504;
      v507 = v505;
    }

    else
    {
      v506 = 0;
      v507 = 0;
    }

    v738 = v506;
    v739 = v507;
    MEMORY[0x277D82BD8](v509);
  }

  else
  {
    v738 = 0;
    v739 = 0;
  }

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
  v502 = v737;
  if (v737)
  {
    v501 = v502;
    v496 = v502;
    v718 = v502;

    v497 = *(v613 + 56);
    v498 = v613 + 56;
    v497(v626, 1, 1, v611);
    v61 = dispatch thunk of UsoEntity_common_Payment.payer.getter();
    v499 = v61;
    if (v61 && (v495 = v499, v493 = v499, v494 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter(), , v494))
    {
      v492 = v494;
      v489 = v494;
      v490 = CodeGenBase.entity.getter();

      v491 = v490;
    }

    else
    {
      v491 = 0;
    }

    v487 = v491;
    type metadata accessor for UsoEntity_common_Person();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v488 = v717;
    if (v717)
    {
      v486 = v488;
      v483 = v488;
      v680 = v488;
      UsoEntity_common_Person.toContactQuery()();
      v497(v624, 0, 1, v611);
      outlined assign with take of ContactQuery?(v624, v626);
    }

    else
    {
      v485 = dispatch thunk of UsoEntity_common_Payment.payer.getter();
      if (v485)
      {
        v484 = v485;
        v480 = v485;
        v481 = dispatch thunk of UsoEntity_common_PaymentAccount.holder.getter();

        v482 = v481;
      }

      else
      {
        v482 = 0;
      }

      v479 = v482;
      if (v482)
      {
        v478 = v479;
        v477 = v479;
        v681 = v479;
        UsoEntity_common_Agent.toContactQuery()();
        v497(v624, 0, 1, v611);
        outlined assign with take of ContactQuery?(v624, v626);
      }
    }

    outlined init with copy of ContactQuery?(v626, v622);
    if ((*(v613 + 48))(v622, 1, v611) == 1)
    {
      outlined destroy of ContactQuery?(v622);
      v476 = v516;
    }

    else
    {
      v62 = v642;
      v460 = v614;
      v463 = *(v613 + 32);
      v462 = v613 + 32;
      v463(v619, v622, v611);
      v63 = Logger.payments.unsafeMutableAddressor();
      v650(v62, v63, v649);
      v458 = *(v613 + 16);
      v459 = v613 + 16;
      v458(v617, v619, v611);
      v461 = (*(v460 + 80) + 16) & ~*(v460 + 80);
      v466 = 7;
      v467 = swift_allocObject();
      v463((v467 + v461), v617, v611);
      v474 = Logger.logObject.getter();
      v475 = static os_log_type_t.debug.getter();
      v464 = 17;
      v469 = swift_allocObject();
      *(v469 + 16) = 32;
      v470 = swift_allocObject();
      *(v470 + 16) = 8;
      v465 = 32;
      v64 = swift_allocObject();
      v65 = v467;
      v468 = v64;
      *(v64 + 16) = v563;
      *(v64 + 24) = v65;
      v66 = swift_allocObject();
      v67 = v468;
      v472 = v66;
      *(v66 + 16) = v564;
      *(v66 + 24) = v67;
      v471 = _allocateUninitializedArray<A>(_:)();
      v473 = v68;

      v69 = v469;
      v70 = v473;
      *v473 = v565;
      v70[1] = v69;

      v71 = v470;
      v72 = v473;
      v473[2] = v566;
      v72[3] = v71;

      v73 = v472;
      v74 = v473;
      v473[4] = v567;
      v74[5] = v73;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v474, v475))
      {
        v451 = static UnsafeMutablePointer.allocate(capacity:)();
        v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v452 = createStorage<A>(capacity:type:)(0);
        v453 = createStorage<A>(capacity:type:)(1);
        v454 = &v686;
        v686 = v451;
        v455 = &v685;
        v685 = v452;
        v456 = &v684;
        v684 = v453;
        serialize(_:at:)(2, &v686);
        serialize(_:at:)(1, v454);
        v75 = v516;
        v682 = v565;
        v683 = v469;
        closure #1 in osLogInternal(_:log:type:)(&v682, v454, v455, v456);
        v457 = v75;
        if (v75)
        {

          __break(1u);
        }

        else
        {
          v682 = v566;
          v683 = v470;
          closure #1 in osLogInternal(_:log:type:)(&v682, &v686, &v685, &v684);
          v448 = 0;
          v682 = v567;
          v683 = v472;
          closure #1 in osLogInternal(_:log:type:)(&v682, &v686, &v685, &v684);
          v447 = 0;
          _os_log_impl(&dword_2686B1000, v474, v475, "#Transformer payee contact in USO parse as ContactQuery is: %s", v451, 0xCu);
          destroyStorage<A>(_:count:)(v452, 0, v450);
          destroyStorage<A>(_:count:)(v453, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v451, MEMORY[0x277D84B78]);

          v449 = v447;
        }
      }

      else
      {

        v449 = v516;
      }

      v441 = v449;
      MEMORY[0x277D82BD8](v474);
      v531(v642, v649);
      v442 = v627[3];
      v443 = v627[4];
      __swift_project_boxed_opaque_existential_1(v627, v442);
      v437 = _allocateUninitializedArray<A>(_:)();
      v458(v76, v619, v611);
      v77 = v437;
      _finalizeUninitializedArray<A>(_:)();
      v440 = v77;
      v438 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
      v439 = &v698;
      swift_beginAccess();
      (*(v607 + 16))(v610, v438, v606);
      swift_endAccess();
      v78 = v441;
      v79 = (*(v443 + 16))(v440, v610, v442);
      v444 = v78;
      v445 = v79;
      v446 = v78;
      if (v78)
      {
        v195 = v446;
        v196 = 0;
        (*(v607 + 8))(v610, v606);

        v435 = 0;
        v436 = v196;
      }

      else
      {
        v434 = v445;
        (*(v607 + 8))(v610, v606);

        v435 = v434;
        v436 = v444;
      }

      v80 = v640;
      v420 = v436;
      v421 = v435;
      v697 = v435;
      v81 = Logger.payments.unsafeMutableAddressor();
      v650(v80, v81, v649);

      v424 = 7;
      v425 = swift_allocObject();
      *(v425 + 16) = v421;
      v432 = Logger.logObject.getter();
      v433 = static os_log_type_t.debug.getter();
      v422 = 17;
      v427 = swift_allocObject();
      *(v427 + 16) = 32;
      v428 = swift_allocObject();
      *(v428 + 16) = 8;
      v423 = 32;
      v82 = swift_allocObject();
      v83 = v425;
      v426 = v82;
      *(v82 + 16) = v568;
      *(v82 + 24) = v83;
      v84 = swift_allocObject();
      v85 = v426;
      v430 = v84;
      *(v84 + 16) = v569;
      *(v84 + 24) = v85;
      v429 = _allocateUninitializedArray<A>(_:)();
      v431 = v86;

      v87 = v427;
      v88 = v431;
      *v431 = v570;
      v88[1] = v87;

      v89 = v428;
      v90 = v431;
      v431[2] = v571;
      v90[3] = v89;

      v91 = v430;
      v92 = v431;
      v431[4] = v572;
      v92[5] = v91;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v432, v433))
      {
        v413 = static UnsafeMutablePointer.allocate(capacity:)();
        v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v414 = createStorage<A>(capacity:type:)(0);
        v415 = createStorage<A>(capacity:type:)(1);
        v416 = v691;
        v691[0] = v413;
        v417 = &v690;
        v690 = v414;
        v418 = &v689;
        v689 = v415;
        serialize(_:at:)(2, v691);
        serialize(_:at:)(1, v416);
        v93 = v420;
        v687 = v570;
        v688 = v427;
        closure #1 in osLogInternal(_:log:type:)(&v687, v416, v417, v418);
        v419 = v93;
        if (v93)
        {

          __break(1u);
        }

        else
        {
          v687 = v571;
          v688 = v428;
          closure #1 in osLogInternal(_:log:type:)(&v687, v691, &v690, &v689);
          v410 = 0;
          v687 = v572;
          v688 = v430;
          closure #1 in osLogInternal(_:log:type:)(&v687, v691, &v690, &v689);
          v409 = 0;
          _os_log_impl(&dword_2686B1000, v432, v433, "#Transformer SiriKitContactResolver found matches for payee in USO parse: %s", v413, 0xCu);
          destroyStorage<A>(_:count:)(v414, 0, v412);
          destroyStorage<A>(_:count:)(v415, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v413, MEMORY[0x277D84B78]);

          v411 = v409;
        }
      }

      else
      {

        v411 = v420;
      }

      v408 = v411;
      MEMORY[0x277D82BD8](v432);
      v531(v640, v649);

      if (v421)
      {
        v407 = v421;
        v404 = v421;
        v691[2] = v421;
        v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
        lazy protocol witness table accessor for type [INPerson] and conformance [A]();
        Collection.first.getter();
        v405 = v691[1];

        v406 = v405;
      }

      else
      {
        v406 = 0;
      }

      v94 = v638;
      v95 = *(v517 + 16);
      *(v517 + 16) = v406;
      MEMORY[0x277D82BD8](v95);
      v96 = Logger.payments.unsafeMutableAddressor();
      v650(v94, v96, v649);

      v401 = Logger.logObject.getter();
      v402 = static os_log_type_t.debug.getter();
      v392 = 17;
      v394 = 7;
      v396 = swift_allocObject();
      *(v396 + 16) = 32;
      v397 = swift_allocObject();
      *(v397 + 16) = 8;
      v393 = 32;
      v97 = swift_allocObject();
      v98 = v517;
      v395 = v97;
      *(v97 + 16) = v573;
      *(v97 + 24) = v98;
      v99 = swift_allocObject();
      v100 = v395;
      v399 = v99;
      *(v99 + 16) = v574;
      *(v99 + 24) = v100;
      v398 = _allocateUninitializedArray<A>(_:)();
      v400 = v101;

      v102 = v396;
      v103 = v400;
      *v400 = v575;
      v103[1] = v102;

      v104 = v397;
      v105 = v400;
      v400[2] = v576;
      v105[3] = v104;

      v106 = v399;
      v107 = v400;
      v400[4] = v577;
      v107[5] = v106;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v401, v402))
      {
        v385 = static UnsafeMutablePointer.allocate(capacity:)();
        v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v386 = createStorage<A>(capacity:type:)(0);
        v387 = createStorage<A>(capacity:type:)(1);
        v388 = &v696;
        v696 = v385;
        v389 = &v695;
        v695 = v386;
        v390 = &v694;
        v694 = v387;
        serialize(_:at:)(2, &v696);
        serialize(_:at:)(1, v388);
        v108 = v408;
        v692 = v575;
        v693 = v396;
        closure #1 in osLogInternal(_:log:type:)(&v692, v388, v389, v390);
        v391 = v108;
        if (v108)
        {

          __break(1u);
        }

        else
        {
          v692 = v576;
          v693 = v397;
          closure #1 in osLogInternal(_:log:type:)(&v692, &v696, &v695, &v694);
          v382 = 0;
          v692 = v577;
          v693 = v399;
          closure #1 in osLogInternal(_:log:type:)(&v692, &v696, &v695, &v694);
          v381 = 0;
          _os_log_impl(&dword_2686B1000, v401, v402, "#Transformer resolved payer from matches as %s", v385, 0xCu);
          destroyStorage<A>(_:count:)(v386, 0, v384);
          destroyStorage<A>(_:count:)(v387, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v385, MEMORY[0x277D84B78]);

          v383 = v381;
        }
      }

      else
      {

        v383 = v408;
      }

      v380 = v383;
      MEMORY[0x277D82BD8](v401);
      v531(v638, v649);

      (*(v613 + 8))(v619, v611);
      v476 = v380;
    }

    v378 = v476;
    v379 = dispatch thunk of UsoEntity_common_Payment.amount.getter();
    if (v379)
    {
      v377 = v379;
      v374 = v379;
      v714 = v379;
      v109 = dispatch thunk of UsoEntity_common_CurrencyAmount.amount.getter();
      v375 = v109;
      if (v109)
      {
        v373 = v375;
        v370 = v375;
        v371 = CodeGenBase.entity.getter();

        v372 = v371;
      }

      else
      {
        v372 = 0;
      }

      v367 = v372;
      v110 = default argument 1 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v366 = *&v110;
      default argument 2 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v364 = v111;
      v365 = default argument 3 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v112 = default argument 4 of static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)();
      v713 = static USOEntityNumberExtractor.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(v367, v366, v364, v365, v112);
      v368 = *&v713;
      v369 = BYTE4(v713);

      if ((v369 & 1) == 0)
      {
        v363 = v368;
        v361 = v368;
        v712 = v368;
        v711 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
        v113 = dispatch thunk of UsoEntity_common_CurrencyAmount.currency.getter();
        v362 = v113;
        if (v113)
        {
          v360 = v362;
          v357 = v362;
          object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
          v358 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

          if (v358)
          {
            v355 = v358;
            v699 = v358;
            v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
            lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
            v114 = v378;
            result = Sequence.first(where:)();
            v354 = v114;
            if (v114)
            {
              __break(1u);
              return result;
            }

            outlined destroy of [SFCardSection](&v699);
            v350 = type metadata accessor for UsoIdentifier();
            v351 = *(v350 - 8);
            v352 = v350 - 8;
            if ((*(v351 + 48))(v605, 1) != 1)
            {
              v345 = UsoIdentifier.value.getter();
              v346 = v116;
              (*(v351 + 8))(v605, v350);
              v347 = v345;
              v348 = v346;
              v349 = v354;
LABEL_83:
              v342 = v349;
              v343 = v348;
              v344 = v347;
              v709 = v347;
              v710 = v348;
              v707._countAndFlagsBits = UsoEntity_common_CurrencyAmount.currencyIdentifier.getter();
              v707._object = v117;
              if (v117)
              {
                v708 = v707;
              }

              else
              {
                v708 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
                if (v707._object)
                {
                  outlined destroy of String.UTF8View(&v707);
                }
              }

              v118 = v636;
              v317 = v708;

              v711 = v317;

              v119 = Logger.payments.unsafeMutableAddressor();
              v650(v118, v119, v649);
              v326 = 7;
              v318 = swift_allocObject();
              *(v318 + 16) = v361;

              v325 = 32;
              v120 = swift_allocObject();
              v121 = v317._object;
              v320 = v120;
              *(v120 + 16) = v317._countAndFlagsBits;
              *(v120 + 24) = v121;

              v122 = swift_allocObject();
              v123 = v343;
              v327 = v122;
              *(v122 + 16) = v344;
              *(v122 + 24) = v123;
              v340 = Logger.logObject.getter();
              v341 = static os_log_type_t.debug.getter();
              v323 = 17;
              v329 = swift_allocObject();
              v322 = 32;
              *(v329 + 16) = 32;
              v330 = swift_allocObject();
              v324 = 8;
              *(v330 + 16) = 8;
              v124 = swift_allocObject();
              v125 = v318;
              v319 = v124;
              *(v124 + 16) = v579;
              *(v124 + 24) = v125;
              v126 = swift_allocObject();
              v127 = v319;
              v331 = v126;
              *(v126 + 16) = v580;
              *(v126 + 24) = v127;
              v332 = swift_allocObject();
              *(v332 + 16) = v322;
              v333 = swift_allocObject();
              *(v333 + 16) = v324;
              v128 = swift_allocObject();
              v129 = v320;
              v321 = v128;
              *(v128 + 16) = v581;
              *(v128 + 24) = v129;
              v130 = swift_allocObject();
              v131 = v321;
              v334 = v130;
              *(v130 + 16) = v582;
              *(v130 + 24) = v131;
              v335 = swift_allocObject();
              *(v335 + 16) = v322;
              v336 = swift_allocObject();
              *(v336 + 16) = v324;
              v132 = swift_allocObject();
              v133 = v327;
              v328 = v132;
              *(v132 + 16) = v583;
              *(v132 + 24) = v133;
              v134 = swift_allocObject();
              v135 = v328;
              v338 = v134;
              *(v134 + 16) = v584;
              *(v134 + 24) = v135;
              v337 = _allocateUninitializedArray<A>(_:)();
              v339 = v136;

              v137 = v329;
              v138 = v339;
              *v339 = v585;
              v138[1] = v137;

              v139 = v330;
              v140 = v339;
              v339[2] = v586;
              v140[3] = v139;

              v141 = v331;
              v142 = v339;
              v339[4] = v587;
              v142[5] = v141;

              v143 = v332;
              v144 = v339;
              v339[6] = v588;
              v144[7] = v143;

              v145 = v333;
              v146 = v339;
              v339[8] = v589;
              v146[9] = v145;

              v147 = v334;
              v148 = v339;
              v339[10] = v590;
              v148[11] = v147;

              v149 = v335;
              v150 = v339;
              v339[12] = v591;
              v150[13] = v149;

              v151 = v336;
              v152 = v339;
              v339[14] = v592;
              v152[15] = v151;

              v153 = v338;
              v154 = v339;
              v339[16] = v593;
              v154[17] = v153;
              _finalizeUninitializedArray<A>(_:)();

              if (os_log_type_enabled(v340, v341))
              {
                v310 = static UnsafeMutablePointer.allocate(capacity:)();
                v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v311 = createStorage<A>(capacity:type:)(0);
                v312 = createStorage<A>(capacity:type:)(3);
                v313 = &v704;
                v704 = v310;
                v314 = &v703;
                v703 = v311;
                v315 = &v702;
                v702 = v312;
                serialize(_:at:)(2, &v704);
                serialize(_:at:)(3, v313);
                v155 = v342;
                v700 = v585;
                v701 = v329;
                closure #1 in osLogInternal(_:log:type:)(&v700, v313, v314, v315);
                v316 = v155;
                if (v155)
                {

                  __break(1u);
                }

                else
                {
                  v700 = v586;
                  v701 = v330;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v307 = 0;
                  v700 = v587;
                  v701 = v331;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v306 = 0;
                  v700 = v588;
                  v701 = v332;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v305 = 0;
                  v700 = v589;
                  v701 = v333;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v304 = 0;
                  v700 = v590;
                  v701 = v334;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v303 = 0;
                  v700 = v591;
                  v701 = v335;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v302 = 0;
                  v700 = v592;
                  v701 = v336;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v301 = 0;
                  v700 = v593;
                  v701 = v338;
                  closure #1 in osLogInternal(_:log:type:)(&v700, &v704, &v703, &v702);
                  v300 = 0;
                  _os_log_impl(&dword_2686B1000, v340, v341, "#Transformer found currency, %s %s. Raw usoIdentifier was %s", v310, 0x20u);
                  destroyStorage<A>(_:count:)(v311, 0, v309);
                  destroyStorage<A>(_:count:)(v312, 3, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x26D620BD0](v310, MEMORY[0x277D84B78]);

                  v308 = v300;
                }
              }

              else
              {

                v308 = v342;
              }

              v297 = v308;
              MEMORY[0x277D82BD8](v340);
              v531(v636, v649);
              v298 = &v706;
              swift_beginAccess();
              swift_endAccess();
              v299 = String.isEmpty.getter();

              if ((v299 & 1) == 0)
              {
                v292 = 0;
                v293 = type metadata accessor for INCurrencyAmount();
                type metadata accessor for NSDecimalNumber();
                NSDecimalNumber.__allocating_init(value:)(v156, v361);
                v295 = v157;
                v294 = &v705;
                swift_beginAccess();
                v296 = v711;

                swift_endAccess();
                isa = INCurrencyAmount.__allocating_init(amount:currencyCode:)(v295, v296).super.isa;
                v159 = v740;
                v740 = isa;
                MEMORY[0x277D82BD8](v159);
              }

              outlined destroy of String.UTF8View(&v711);

              v376 = v297;
              goto LABEL_96;
            }

            outlined destroy of UsoIdentifier?(v605);
            v359 = v354;
          }

          else
          {
            v359 = v378;
          }
        }

        else
        {
          v359 = v378;
        }

        v347 = 0;
        v348 = 0;
        v349 = v359;
        goto LABEL_83;
      }

      v376 = v378;
    }

    else
    {
      v376 = v378;
    }

LABEL_96:
    v289 = v376;
    v290 = dispatch thunk of UsoEntity_common_Payment.memo.getter();
    v291 = v160;
    if (v160)
    {
      v287 = v290;
      v288 = v291;
      v286 = v291;
      v285 = v290;
      v715 = v290;
      v716 = v291;

      v738 = v285;
      v739 = v286;
    }

    outlined destroy of ContactQuery?(v626);

    v500 = v289;
    goto LABEL_99;
  }

  v500 = v516;
LABEL_99:
  v266 = v500;
  type metadata accessor for INRequestPaymentIntent();
  v267 = &v736;
  v274 = 32;
  swift_beginAccess();
  v268 = *(v517 + 16);
  MEMORY[0x277D82BE0](v268);
  swift_endAccess();
  v269 = v740;
  MEMORY[0x277D82BE0](v740);
  v270 = v738;
  v271 = v739;

  v747.value.super.isa = v268;
  v747.is_nil = v269;
  v748.value.super.isa = v270;
  v748.is_nil = v271;
  v162.super.super.isa = INRequestPaymentIntent.__allocating_init(payer:currencyAmount:note:)(v747, v748, v161).super.super.isa;
  v163 = v634;
  v272 = v162.super.super.isa;
  v735 = v162.super.super.isa;
  v164 = Logger.payments.unsafeMutableAddressor();
  v650(v163, v164, v649);
  MEMORY[0x277D82BE0](v272);
  v275 = 7;
  v276 = swift_allocObject();
  *(v276 + 16) = v272;
  v283 = Logger.logObject.getter();
  v284 = static os_log_type_t.debug.getter();
  v273 = 17;
  v278 = swift_allocObject();
  *(v278 + 16) = 32;
  v279 = swift_allocObject();
  *(v279 + 16) = 8;
  v165 = swift_allocObject();
  v166 = v276;
  v277 = v165;
  *(v165 + 16) = v594;
  *(v165 + 24) = v166;
  v167 = swift_allocObject();
  v168 = v277;
  v281 = v167;
  *(v167 + 16) = v595;
  *(v167 + 24) = v168;
  v280 = _allocateUninitializedArray<A>(_:)();
  v282 = v169;

  v170 = v278;
  v171 = v282;
  *v282 = v596;
  v171[1] = v170;

  v172 = v279;
  v173 = v282;
  v282[2] = v597;
  v173[3] = v172;

  v174 = v281;
  v175 = v282;
  v282[4] = v598;
  v175[5] = v174;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v283, v284))
  {
    v259 = static UnsafeMutablePointer.allocate(capacity:)();
    v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v260 = createStorage<A>(capacity:type:)(0);
    v261 = createStorage<A>(capacity:type:)(1);
    v262 = &v723;
    v723 = v259;
    v263 = &v722;
    v722 = v260;
    v264 = &v721;
    v721 = v261;
    serialize(_:at:)(2, &v723);
    serialize(_:at:)(1, v262);
    v176 = v266;
    v719 = v596;
    v720 = v278;
    closure #1 in osLogInternal(_:log:type:)(&v719, v262, v263, v264);
    v265 = v176;
    if (v176)
    {

      __break(1u);
    }

    else
    {
      v719 = v597;
      v720 = v279;
      closure #1 in osLogInternal(_:log:type:)(&v719, &v723, &v722, &v721);
      v256 = 0;
      v719 = v598;
      v720 = v281;
      closure #1 in osLogInternal(_:log:type:)(&v719, &v723, &v722, &v721);
      v255 = 0;
      _os_log_impl(&dword_2686B1000, v283, v284, "#Transformer returned intent %s", v259, 0xCu);
      destroyStorage<A>(_:count:)(v260, 0, v258);
      destroyStorage<A>(_:count:)(v261, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v259, MEMORY[0x277D84B78]);

      v257 = v255;
    }
  }

  else
  {

    v257 = v266;
  }

  v253 = v257;
  MEMORY[0x277D82BD8](v283);
  v531(v634, v649);

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
  v254 = v733[1];

  if (v254)
  {
    v252 = v254;
    v249 = v254;
    v250 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

    v251 = v250;
  }

  else
  {
    v251 = 0;
  }

  v733[0] = v251;

  if (v733[0])
  {
    v734 = v733[0];
  }

  else
  {

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();
    v248 = v732[1];

    if (v248 && (v247 = v248, v245 = v248, v246 = dispatch thunk of UsoEntity_common_Payment.payee.getter(), , v246))
    {
      v244 = v246;
      v241 = v246;
      v242 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      v243 = v242;
    }

    else
    {
      v243 = 0;
    }

    v732[0] = v243;

    if (v732[0])
    {
      v734 = v732[0];
    }

    else
    {

      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
      v240 = v731;

      if (v240 && (v239 = v240, v237 = v240, v238 = dispatch thunk of UsoEntity_common_Payment.payer.getter(), , v238))
      {
        v236 = v238;
        v235 = v238;
        v734 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
      }

      else
      {
        v734 = 0;
      }

      if (v732[0])
      {
        outlined destroy of ContiguousArray<A1>(v732);
      }
    }

    if (v733[0])
    {
      outlined destroy of ContiguousArray<A1>(v733);
    }
  }

  v234 = v734;
  if (v734)
  {
    v233 = v234;
    v228 = v234;
    v730 = v234;
    MEMORY[0x277D82BE0](v272);
    v229 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
    v177 = UsoEntity_common_App.appIdentifier.getter();
    v230 = v177;
    v231 = v178;
    if (v178)
    {
      v226 = v230;
      v227 = v231;
      v223 = v231;
      v224 = MEMORY[0x26D620690](v230);

      v225 = v224;
    }

    else
    {
      v225 = 0;
    }

    v179 = v632;
    v211 = v225;
    v210 = &v729;
    v213 = 32;
    swift_beginAccess();
    objc_setAssociatedObject(v272, v229, v211, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v180 = Logger.payments.unsafeMutableAddressor();
    v650(v179, v180, v649);

    v221 = Logger.logObject.getter();
    v222 = static os_log_type_t.debug.getter();
    v212 = 17;
    v214 = 7;
    v216 = swift_allocObject();
    *(v216 + 16) = 32;
    v217 = swift_allocObject();
    *(v217 + 16) = 8;
    v181 = swift_allocObject();
    v182 = v228;
    v215 = v181;
    *(v181 + 16) = v599;
    *(v181 + 24) = v182;
    v183 = swift_allocObject();
    v184 = v215;
    v219 = v183;
    *(v183 + 16) = v600;
    *(v183 + 24) = v184;
    v218 = _allocateUninitializedArray<A>(_:)();
    v220 = v185;

    v186 = v216;
    v187 = v220;
    *v220 = v601;
    v187[1] = v186;

    v188 = v217;
    v189 = v220;
    v220[2] = v602;
    v189[3] = v188;

    v190 = v219;
    v191 = v220;
    v220[4] = v603;
    v191[5] = v190;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v221, v222))
    {
      v203 = static UnsafeMutablePointer.allocate(capacity:)();
      v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v204 = createStorage<A>(capacity:type:)(0);
      v205 = createStorage<A>(capacity:type:)(1);
      v206 = &v728;
      v728 = v203;
      v207 = &v727;
      v727 = v204;
      v208 = &v726;
      v726 = v205;
      serialize(_:at:)(2, &v728);
      serialize(_:at:)(1, v206);
      v192 = v253;
      v724 = v601;
      v725 = v216;
      closure #1 in osLogInternal(_:log:type:)(&v724, v206, v207, v208);
      v209 = v192;
      if (v192)
      {

        __break(1u);
      }

      else
      {
        v724 = v602;
        v725 = v217;
        closure #1 in osLogInternal(_:log:type:)(&v724, &v728, &v727, &v726);
        v200 = 0;
        v724 = v603;
        v725 = v219;
        closure #1 in osLogInternal(_:log:type:)(&v724, &v728, &v727, &v726);
        v199 = 0;
        _os_log_impl(&dword_2686B1000, v221, v222, "#Transformer found app to use for intent as %s", v203, 0xCu);
        destroyStorage<A>(_:count:)(v204, 0, v202);
        destroyStorage<A>(_:count:)(v205, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v203, MEMORY[0x277D84B78]);

        v201 = v199;
      }
    }

    else
    {

      v201 = v253;
    }

    v198 = v201;
    MEMORY[0x277D82BD8](v221);
    v531(v632, v649);

    v232 = v198;
  }

  else
  {
    v232 = v253;
  }

  v197 = v232;
  MEMORY[0x277D82BE0](v272);
  v193 = v272;
  *v556 = v272;
  MEMORY[0x277D82BD8](v193);
  outlined destroy of String.UTF8View(&v738);
  outlined destroy of SFRichText?(&v740);
}