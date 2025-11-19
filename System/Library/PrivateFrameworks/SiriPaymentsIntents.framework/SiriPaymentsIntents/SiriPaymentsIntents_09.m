uint64_t implicit closure #1 in SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v7 = type metadata accessor for ParameterIdentifier();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v6 = &v2 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v8 = ParameterIdentifier.name.getter();
  v9 = v0;
  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 496) = v3;
  *(v4 + 488) = a3;
  *(v4 + 480) = a2;
  *(v4 + 472) = a1;
  *(v4 + 280) = v4;
  *(v4 + 288) = 0;
  *(v4 + 296) = 0;
  *(v4 + 304) = 0;
  *(v4 + 768) = 0;
  *(v4 + 344) = 0;
  *(v4 + 352) = 0;
  *(v4 + 392) = 0;
  v5 = type metadata accessor for Parse.DirectInvocation();
  *(v4 + 504) = v5;
  v14 = *(v5 - 8);
  *(v4 + 512) = v14;
  *(v4 + 520) = *(v14 + 64);
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  *(v4 + 544) = v6;
  v15 = *(v6 - 8);
  *(v4 + 552) = v15;
  v16 = *(v15 + 64);
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  *(v4 + 576) = v7;
  v17 = *(v7 - 8);
  *(v4 + 584) = v17;
  *(v4 + 592) = *(v17 + 64);
  *(v4 + 600) = swift_task_alloc();
  v8 = type metadata accessor for Input();
  *(v4 + 608) = v8;
  v18 = *(v8 - 8);
  *(v4 + 616) = v18;
  *(v4 + 624) = *(v18 + 64);
  *(v4 + 632) = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  *(v4 + 640) = v9;
  v19 = *(v9 - 8);
  *(v4 + 648) = v19;
  v10 = *(v19 + 64) + 15;
  *(v4 + 656) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v4 + 664) = v11;
  v20 = *(v11 - 8);
  *(v4 + 672) = v20;
  v21 = *(v20 + 64);
  *(v4 + 680) = swift_task_alloc();
  *(v4 + 688) = swift_task_alloc();
  *(v4 + 696) = swift_task_alloc();
  *(v4 + 704) = swift_task_alloc();
  *(v4 + 712) = swift_task_alloc();
  *(v4 + 720) = swift_task_alloc();
  *(v4 + 728) = swift_task_alloc();
  *(v4 + 736) = swift_task_alloc();
  *(v4 + 744) = swift_task_alloc();
  *(v4 + 752) = swift_task_alloc();
  *(v4 + 760) = swift_task_alloc();
  *(v4 + 288) = a2;
  *(v4 + 296) = a3;
  *(v4 + 304) = v3;
  v12 = *(v4 + 280);

  return MEMORY[0x2822009F8](SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:), 0);
}

uint64_t SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1)
{
  v408 = v1;
  MEMORY[0x28223BE20](a1);
  v2 = *(v1 + 760);
  v355 = *(v1 + 672);
  v356 = *(v1 + 664);
  *(v1 + 280) = v1;
  v3 = Logger.payments.unsafeMutableAddressor();
  v357 = *(v355 + 16);
  v357(v2, v3, v356);
  oslog = Logger.logObject.getter();
  v358 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v360 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v358))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v352 = createStorage<A>(capacity:type:)(0);
    v353 = createStorage<A>(capacity:type:)(0);
    *(v1 + 440) = buf;
    *(v1 + 448) = v352;
    *(v1 + 456) = v353;
    serialize(_:at:)(0, (v1 + 440));
    serialize(_:at:)(0, (v1 + 440));
    *(v1 + 464) = v360;
    v354 = swift_task_alloc();
    v354[2] = v1 + 440;
    v354[3] = v1 + 448;
    v354[4] = v1 + 456;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, oslog, v358, "#SendPaymentNeedsValueStrategy parseValueResponse.", buf, 2u);
    destroyStorage<A>(_:count:)(v352, 0, v350);
    destroyStorage<A>(_:count:)(v353, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v340 = *(v1 + 760);
  v341 = *(v1 + 664);
  v345 = *(v1 + 656);
  v346 = *(v1 + 640);
  v343 = *(v1 + 576);
  v4 = *(v1 + 488);
  v339 = *(v1 + 672);
  v344 = *(v1 + 648);
  MEMORY[0x277D82BD8](oslog);
  v342 = *(v339 + 8);
  v342(v340, v341);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v5;
  v347 = *(v344 + 8);
  v347(v345, v346);
  v6.value = SendPaymentSlots.init(rawValue:)(rawValue).value;
  value = v6.value;
  if (v6.value == SiriPaymentsIntents_SendPaymentSlots_unknownDefault)
  {
    v58 = *(v1 + 680);
    v114 = *(v1 + 664);
    v119 = *(v1 + 600);
    v117 = *(v1 + 592);
    v120 = *(v1 + 576);
    v116 = *(v1 + 488);
    v115 = *(v1 + 584);
    v59 = Logger.payments.unsafeMutableAddressor();
    v357(v58, v59, v114);
    (*(v115 + 16))(v119, v116, v120);
    v118 = (*(v115 + 80) + 16) & ~*(v115 + 80);
    v121 = swift_allocObject();
    (*(v115 + 32))(v121 + v118, v119, v120);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();
    v123 = swift_allocObject();
    *(v123 + 16) = 32;
    v124 = swift_allocObject();
    *(v124 + 16) = 8;
    v122 = swift_allocObject();
    *(v122 + 16) = partial apply for implicit closure #1 in SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    *(v122 + 24) = v121;
    v125 = swift_allocObject();
    *(v125 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v125 + 24) = v122;
    _allocateUninitializedArray<A>(_:)();
    v126 = v60;

    *v126 = partial apply for closure #1 in OSLogArguments.append(_:);
    v126[1] = v123;

    v126[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v126[3] = v124;

    v126[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v126[5] = v125;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v127, v128))
    {
      v111 = static UnsafeMutablePointer.allocate(capacity:)();
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v112 = createStorage<A>(capacity:type:)(0);
      v113 = createStorage<A>(capacity:type:)(1);
      v361 = v111;
      v362 = v112;
      v363 = v113;
      serialize(_:at:)(2, &v361);
      serialize(_:at:)(1, &v361);
      v364 = partial apply for closure #1 in OSLogArguments.append(_:);
      v365 = v123;
      closure #1 in osLogInternal(_:log:type:)(&v364, &v361, &v362, &v363);
      v364 = partial apply for closure #1 in OSLogArguments.append(_:);
      v365 = v124;
      closure #1 in osLogInternal(_:log:type:)(&v364, &v361, &v362, &v363);
      v364 = partial apply for closure #1 in OSLogArguments.append(_:);
      v365 = v125;
      closure #1 in osLogInternal(_:log:type:)(&v364, &v361, &v362, &v363);
      _os_log_impl(&dword_2686B1000, v127, v128, "#SendPaymentNeedsValueStrategy unknown parameter: %s", v111, 0xCu);
      destroyStorage<A>(_:count:)(v112, 0, v110);
      destroyStorage<A>(_:count:)(v113, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v111, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v92 = *(v1 + 760);
    v93 = *(v1 + 752);
    v94 = *(v1 + 744);
    v95 = *(v1 + 736);
    v96 = *(v1 + 728);
    v97 = *(v1 + 720);
    v98 = *(v1 + 712);
    v99 = *(v1 + 704);
    v100 = *(v1 + 696);
    v101 = *(v1 + 688);
    v102 = *(v1 + 680);
    v87 = *(v1 + 664);
    v103 = *(v1 + 656);
    v89 = *(v1 + 640);
    v104 = *(v1 + 632);
    v105 = *(v1 + 600);
    v88 = *(v1 + 576);
    v106 = *(v1 + 568);
    v107 = *(v1 + 560);
    v108 = *(v1 + 536);
    v109 = *(v1 + 528);
    v61 = *(v1 + 488);
    MEMORY[0x277D82BD8](v127);
    v342(v102, v87);
    ParameterResolutionRecord.parameter.getter();
    v91 = ParameterIdentifier.name.getter();
    v90 = v62;
    v347(v103, v89);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v63 = v91;
    *(v63 + 8) = v90;
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0;
    *(v63 + 40) = 0;
    *(v63 + 48) = 14;
    swift_willThrow();

    v64 = *(*(v1 + 280) + 8);
    v65 = *(v1 + 280);

    return v64();
  }

  else
  {
    v7 = *(v1 + 752);
    v324 = *(v1 + 664);
    v329 = *(v1 + 632);
    v327 = *(v1 + 624);
    v330 = *(v1 + 608);
    v326 = *(v1 + 480);
    v325 = *(v1 + 616);
    *(v1 + 768) = v6;
    v8 = Logger.payments.unsafeMutableAddressor();
    v357(v7, v8, v324);
    (*(v325 + 16))(v329, v326, v330);
    v328 = (*(v325 + 80) + 16) & ~*(v325 + 80);
    v331 = swift_allocObject();
    (*(v325 + 32))(v331 + v328, v329, v330);
    log = Logger.logObject.getter();
    v338 = static os_log_type_t.debug.getter();
    v333 = swift_allocObject();
    *(v333 + 16) = 32;
    v334 = swift_allocObject();
    *(v334 + 16) = 8;
    v332 = swift_allocObject();
    *(v332 + 16) = partial apply for implicit closure #2 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v332 + 24) = v331;
    v335 = swift_allocObject();
    *(v335 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v335 + 24) = v332;
    _allocateUninitializedArray<A>(_:)();
    v336 = v9;

    *v336 = partial apply for closure #1 in OSLogArguments.append(_:);
    v336[1] = v333;

    v336[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v336[3] = v334;

    v336[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v336[5] = v335;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v338))
    {
      v321 = static UnsafeMutablePointer.allocate(capacity:)();
      v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v322 = createStorage<A>(capacity:type:)(0);
      v323 = createStorage<A>(capacity:type:)(1);
      v403 = v321;
      v404 = v322;
      v405 = v323;
      serialize(_:at:)(2, &v403);
      serialize(_:at:)(1, &v403);
      v406 = partial apply for closure #1 in OSLogArguments.append(_:);
      v407 = v333;
      closure #1 in osLogInternal(_:log:type:)(&v406, &v403, &v404, &v405);
      v406 = partial apply for closure #1 in OSLogArguments.append(_:);
      v407 = v334;
      closure #1 in osLogInternal(_:log:type:)(&v406, &v403, &v404, &v405);
      v406 = partial apply for closure #1 in OSLogArguments.append(_:);
      v407 = v335;
      closure #1 in osLogInternal(_:log:type:)(&v406, &v403, &v404, &v405);
      _os_log_impl(&dword_2686B1000, log, v338, "#SendPaymentNeedsValueStrategy Parse: %s", v321, 0xCu);
      destroyStorage<A>(_:count:)(v322, 0, v320);
      destroyStorage<A>(_:count:)(v323, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v321, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v302 = *(v1 + 752);
    v10 = *(v1 + 744);
    v303 = *(v1 + 664);
    v309 = *(v1 + 600);
    v307 = *(v1 + 592);
    v310 = *(v1 + 576);
    v305 = *(v1 + 488);
    v304 = *(v1 + 584);
    MEMORY[0x277D82BD8](log);
    v342(v302, v303);
    v11 = Logger.payments.unsafeMutableAddressor();
    v357(v10, v11, v303);
    v306 = *(v304 + 16);
    v306(v309, v305, v310);
    v308 = *(v304 + 80);
    v312 = swift_allocObject();
    v311 = *(v304 + 32);
    v311(v312 + ((v308 + 16) & ~v308), v309, v310);
    v318 = Logger.logObject.getter();
    v319 = static os_log_type_t.debug.getter();
    v314 = swift_allocObject();
    *(v314 + 16) = 32;
    v315 = swift_allocObject();
    *(v315 + 16) = 8;
    v313 = swift_allocObject();
    *(v313 + 16) = partial apply for implicit closure #1 in SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    *(v313 + 24) = v312;
    v316 = swift_allocObject();
    *(v316 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v316 + 24) = v313;
    _allocateUninitializedArray<A>(_:)();
    v317 = v12;

    *v317 = partial apply for closure #1 in OSLogArguments.append(_:);
    v317[1] = v314;

    v317[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v317[3] = v315;

    v317[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v317[5] = v316;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v318, v319))
    {
      v299 = static UnsafeMutablePointer.allocate(capacity:)();
      v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v300 = createStorage<A>(capacity:type:)(0);
      v301 = createStorage<A>(capacity:type:)(1);
      v398 = v299;
      v399 = v300;
      v400 = v301;
      serialize(_:at:)(2, &v398);
      serialize(_:at:)(1, &v398);
      v401 = partial apply for closure #1 in OSLogArguments.append(_:);
      v402 = v314;
      closure #1 in osLogInternal(_:log:type:)(&v401, &v398, &v399, &v400);
      v401 = partial apply for closure #1 in OSLogArguments.append(_:);
      v402 = v315;
      closure #1 in osLogInternal(_:log:type:)(&v401, &v398, &v399, &v400);
      v401 = partial apply for closure #1 in OSLogArguments.append(_:);
      v402 = v316;
      closure #1 in osLogInternal(_:log:type:)(&v401, &v398, &v399, &v400);
      _os_log_impl(&dword_2686B1000, v318, v319, "#SendPaymentNeedsValueStrategy parseResponseValue for slot: %s", v299, 0xCu);
      destroyStorage<A>(_:count:)(v300, 0, v298);
      destroyStorage<A>(_:count:)(v301, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v299, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v293 = *(v1 + 744);
    v294 = *(v1 + 664);
    v296 = *(v1 + 568);
    v297 = *(v1 + 544);
    v13 = *(v1 + 480);
    v295 = *(v1 + 552);
    MEMORY[0x277D82BD8](v318);
    v342(v293, v294);
    Input.parse.getter();
    if ((*(v295 + 88))(v296, v297) == *MEMORY[0x277D5C150])
    {
      v14 = *(v1 + 736);
      v278 = *(v1 + 664);
      v277 = *(v1 + 568);
      v15 = *(v1 + 544);
      v279 = *(v1 + 536);
      v282 = *(v1 + 528);
      v280 = *(v1 + 520);
      v283 = *(v1 + 504);
      v276 = *(v1 + 512);
      (*(*(v1 + 552) + 96))();
      v284 = *(v276 + 32);
      v284(v279, v277, v283);
      *(v1 + 352) = v279;
      v16 = Logger.payments.unsafeMutableAddressor();
      v357(v14, v16, v278);
      (*(v276 + 16))(v282, v279, v283);
      v281 = (*(v276 + 80) + 16) & ~*(v276 + 80);
      v285 = swift_allocObject();
      v284(v285 + v281, v282, v283);
      v291 = Logger.logObject.getter();
      v292 = static os_log_type_t.debug.getter();
      v287 = swift_allocObject();
      *(v287 + 16) = 32;
      v288 = swift_allocObject();
      *(v288 + 16) = 8;
      v286 = swift_allocObject();
      *(v286 + 16) = partial apply for implicit closure #4 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
      *(v286 + 24) = v285;
      v289 = swift_allocObject();
      *(v289 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v289 + 24) = v286;
      _allocateUninitializedArray<A>(_:)();
      v290 = v17;

      *v290 = partial apply for closure #1 in OSLogArguments.append(_:);
      v290[1] = v287;

      v290[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v290[3] = v288;

      v290[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v290[5] = v289;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v291, v292))
      {
        v273 = static UnsafeMutablePointer.allocate(capacity:)();
        v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v274 = createStorage<A>(capacity:type:)(0);
        v275 = createStorage<A>(capacity:type:)(1);
        v393 = v273;
        v394 = v274;
        v395 = v275;
        serialize(_:at:)(2, &v393);
        serialize(_:at:)(1, &v393);
        v396 = partial apply for closure #1 in OSLogArguments.append(_:);
        v397 = v287;
        closure #1 in osLogInternal(_:log:type:)(&v396, &v393, &v394, &v395);
        v396 = partial apply for closure #1 in OSLogArguments.append(_:);
        v397 = v288;
        closure #1 in osLogInternal(_:log:type:)(&v396, &v393, &v394, &v395);
        v396 = partial apply for closure #1 in OSLogArguments.append(_:);
        v397 = v289;
        closure #1 in osLogInternal(_:log:type:)(&v396, &v393, &v394, &v395);
        _os_log_impl(&dword_2686B1000, v291, v292, "#SendPaymentNeedsValueStrategy parseResponseValue, directInvocation: %s", v273, 0xCu);
        destroyStorage<A>(_:count:)(v274, 0, v272);
        destroyStorage<A>(_:count:)(v275, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v273, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v267 = *(v1 + 736);
      v268 = *(v1 + 664);
      v18 = *(v1 + 536);
      MEMORY[0x277D82BD8](v291);
      v342(v267, v268);
      v269 = Parse.DirectInvocation.identifier.getter();
      v270 = v19;

      *(v1 + 248) = PaymentsDirectInvocations.Identifiers.rawValue.getter(3);
      *(v1 + 256) = v20;
      v381 = v269;
      v382 = v270;
      v271 = MEMORY[0x26D620740](*(v1 + 248), *(v1 + 256), v269, v270);
      outlined destroy of String.UTF8View(v1 + 248);
      if (v271)
      {
        v21 = *(v1 + 536);

        if (Parse.DirectInvocation.userData.getter())
        {
          *(v1 + 264) = PaymentsDirectInvocations.Keys.rawValue.getter(1);
          *(v1 + 272) = v22;
          MEMORY[0x26D620650]();
          outlined destroy of String.UTF8View(v1 + 264);
        }

        else
        {
          *(v1 + 216) = 0;
          *(v1 + 224) = 0;
          *(v1 + 232) = 0;
          *(v1 + 240) = 0;
        }

        if (*(v1 + 240))
        {
          type metadata accessor for INPerson();
          if (swift_dynamicCast())
          {
            v266 = *(v1 + 432);
          }

          else
          {
            v266 = 0;
          }

          v265 = v266;
        }

        else
        {
          outlined destroy of FlowActivity?((v1 + 216));
          v265 = 0;
        }

        v27 = *(v1 + 720);
        v241 = *(v1 + 664);
        *(v1 + 392) = v265;
        v28 = Logger.payments.unsafeMutableAddressor();
        v357(v27, v28, v241);
        MEMORY[0x277D82BE0](v265);
        v242 = swift_allocObject();
        *(v242 + 16) = v265;
        default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

        v247 = Logger.logObject.getter();
        v248 = static os_log_type_t.debug.getter();
        v243 = swift_allocObject();
        *(v243 + 16) = 64;
        v244 = swift_allocObject();
        *(v244 + 16) = 8;
        v245 = swift_allocObject();
        *(v245 + 16) = partial apply for implicit closure #5 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
        *(v245 + 24) = v242;
        _allocateUninitializedArray<A>(_:)();
        v246 = v29;

        *v246 = partial apply for closure #1 in OSLogArguments.append(_:);
        v246[1] = v243;

        v246[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v246[3] = v244;

        v246[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v246[5] = v245;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v247, v248))
        {
          v238 = static UnsafeMutablePointer.allocate(capacity:)();
          v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v239 = createStorage<A>(capacity:type:)(1);
          v240 = createStorage<A>(capacity:type:)(0);
          v388 = v238;
          v389 = v239;
          v390 = v240;
          serialize(_:at:)(2, &v388);
          serialize(_:at:)(1, &v388);
          v391 = partial apply for closure #1 in OSLogArguments.append(_:);
          v392 = v243;
          closure #1 in osLogInternal(_:log:type:)(&v391, &v388, &v389, &v390);
          v391 = partial apply for closure #1 in OSLogArguments.append(_:);
          v392 = v244;
          closure #1 in osLogInternal(_:log:type:)(&v391, &v388, &v389, &v390);
          v391 = partial apply for closure #1 in OSLogArguments.append(_:);
          v392 = v245;
          closure #1 in osLogInternal(_:log:type:)(&v391, &v388, &v389, &v390);
          _os_log_impl(&dword_2686B1000, v247, v248, "#SendPaymentNeedsValueStrategy Received payee value %@ from DirectInvocation", v238, 0xCu);
          destroyStorage<A>(_:count:)(v239, 1, v237);
          destroyStorage<A>(_:count:)(v240, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v238, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v228 = *(v1 + 720);
        v230 = *(v1 + 712);
        v233 = *(v1 + 664);
        v229 = *(v1 + 576);
        v30 = *(v1 + 488);
        MEMORY[0x277D82BD8](v247);
        v342(v228, v233);
        v232 = ParameterResolutionRecord.intent.getter();
        MEMORY[0x277D82BE0](v265);
        countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1)._countAndFlagsBits;
        v231 = MEMORY[0x26D620690](countAndFlagsBits);

        [v232 setValue:v265 forKeyPath:v231];
        MEMORY[0x277D82BD8](v231);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BD8](v232);
        MEMORY[0x277D82BD8](v265);

        v32 = Logger.payments.unsafeMutableAddressor();
        v357(v230, v32, v233);
        v235 = Logger.logObject.getter();
        v234 = static os_log_type_t.debug.getter();
        v236 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v235, v234))
        {
          v224 = static UnsafeMutablePointer.allocate(capacity:)();
          v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v225 = createStorage<A>(capacity:type:)(0);
          v226 = createStorage<A>(capacity:type:)(0);
          *(v1 + 400) = v224;
          *(v1 + 408) = v225;
          *(v1 + 416) = v226;
          serialize(_:at:)(0, (v1 + 400));
          serialize(_:at:)(0, (v1 + 400));
          *(v1 + 424) = v236;
          v227 = swift_task_alloc();
          v227[2] = v1 + 400;
          v227[3] = v1 + 408;
          v227[4] = v1 + 416;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v235, v234, "#SendPaymentNeedsValueStrategy Returning successful IntentPromptAnswer", v224, 2u);
          destroyStorage<A>(_:count:)(v225, 0, v223);
          destroyStorage<A>(_:count:)(v226, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v224, MEMORY[0x277D84B78]);
        }

        v213 = *(v1 + 712);
        v214 = *(v1 + 664);
        v217 = *(v1 + 576);
        v221 = *(v1 + 536);
        v222 = *(v1 + 504);
        v215 = *(v1 + 488);
        v219 = *(v1 + 472);
        v220 = *(v1 + 512);
        MEMORY[0x277D82BD8](v235);
        v342(v213, v214);
        v216 = ParameterResolutionRecord.intent.getter();
        *(v1 + 200) = &type metadata for SendPaymentSlots;
        *(v1 + 208) = &protocol witness table for SendPaymentSlots;
        *(v1 + 176) = value;
        v218 = type metadata accessor for INSendPaymentIntent();
        SiriKitPaymentsIntent.value(forSlot:)((v1 + 176), v218, &v387);
        __swift_destroy_boxed_opaque_existential_0((v1 + 176));
        MEMORY[0x277D82BD8](v216);
        ParameterResolutionRecord.intent.getter();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMR);
        (*(*(v33 - 8) + 56))(v219, 0, 1);
        (*(v220 + 8))(v221, v222);
      }

      else
      {
        v23 = *(v1 + 728);
        v261 = *(v1 + 664);

        v24 = Logger.payments.unsafeMutableAddressor();
        v357(v23, v24, v261);
        v263 = Logger.logObject.getter();
        v262 = static os_log_type_t.error.getter();
        v264 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v263, v262))
        {
          v257 = static UnsafeMutablePointer.allocate(capacity:)();
          v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v258 = createStorage<A>(capacity:type:)(0);
          v259 = createStorage<A>(capacity:type:)(0);
          *(v1 + 360) = v257;
          *(v1 + 368) = v258;
          *(v1 + 376) = v259;
          serialize(_:at:)(0, (v1 + 360));
          serialize(_:at:)(0, (v1 + 360));
          *(v1 + 384) = v264;
          v260 = swift_task_alloc();
          v260[2] = v1 + 360;
          v260[3] = v1 + 368;
          v260[4] = v1 + 376;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v263, v262, "#SendPaymentNeedsValueStrategy parseResponseValue failed to interpret user response as expected Direct Invocation. Reprompt with previous state", v257, 2u);
          destroyStorage<A>(_:count:)(v258, 0, v256);
          destroyStorage<A>(_:count:)(v259, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v257, MEMORY[0x277D84B78]);
        }

        v249 = *(v1 + 728);
        v250 = *(v1 + 664);
        v251 = *(v1 + 576);
        v254 = *(v1 + 536);
        v255 = *(v1 + 504);
        v25 = *(v1 + 488);
        v252 = *(v1 + 472);
        v253 = *(v1 + 512);
        MEMORY[0x277D82BD8](v263);
        v342(v249, v250);
        v383 = 0;
        v384 = 0;
        v385 = 0;
        v386 = 0;
        ParameterResolutionRecord.intent.getter();
        type metadata accessor for INSendPaymentIntent();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMR);
        (*(*(v26 - 8) + 56))(v252, 0, 1);

        (*(v253 + 8))(v254, v255);
      }
    }

    else
    {
      v203 = *(v1 + 576);
      v209 = *(v1 + 560);
      v210 = *(v1 + 544);
      v206 = *(v1 + 496);
      v202 = *(v1 + 488);
      v34 = *(v1 + 480);
      v208 = *(v1 + 552);
      Input.parse.getter();
      v207 = ParameterResolutionRecord.intent.getter();

      outlined init with copy of GlobalsProviding(v206 + 104, v1 + 16);

      v205 = *(v1 + 40);
      v204 = *(v1 + 48);
      __swift_project_boxed_opaque_existential_1((v1 + 16), v205);
      (*(v204 + 24))(v205);

      outlined init with copy of GlobalsProviding(v206 + 64, v1 + 96);

      v212 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(v207, &protocol witness table for INSendPaymentIntent, v1 + 56, v1 + 96);
      __swift_destroy_boxed_opaque_existential_0((v1 + 96));
      __swift_destroy_boxed_opaque_existential_0((v1 + 56));
      __swift_destroy_boxed_opaque_existential_0((v1 + 16));
      MEMORY[0x277D82BD8](v207);
      v211 = *(v208 + 8);
      v211(v209, v210);
      if (v212)
      {
        objc_opt_self();
        v201 = swift_dynamicCastObjCClass();
        if (v201)
        {
          v200 = v201;
        }

        else
        {
          MEMORY[0x277D82BD8](v212);
          v200 = 0;
        }

        v199 = v200;
      }

      else
      {
        v199 = 0;
      }

      if (v199)
      {
        v35 = *(v1 + 704);
        v190 = *(v1 + 664);
        *(v1 + 344) = v199;
        v36 = Logger.payments.unsafeMutableAddressor();
        v357(v35, v36, v190);
        MEMORY[0x277D82BE0](v199);
        v191 = swift_allocObject();
        *(v191 + 16) = v199;
        v197 = Logger.logObject.getter();
        v198 = static os_log_type_t.debug.getter();
        v193 = swift_allocObject();
        *(v193 + 16) = 64;
        v194 = swift_allocObject();
        *(v194 + 16) = 8;
        v192 = swift_allocObject();
        *(v192 + 16) = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
        *(v192 + 24) = v191;
        v195 = swift_allocObject();
        *(v195 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
        *(v195 + 24) = v192;
        _allocateUninitializedArray<A>(_:)();
        v196 = v37;

        *v196 = partial apply for closure #1 in OSLogArguments.append(_:);
        v196[1] = v193;

        v196[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v196[3] = v194;

        v196[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v196[5] = v195;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v197, v198))
        {
          v187 = static UnsafeMutablePointer.allocate(capacity:)();
          v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v188 = createStorage<A>(capacity:type:)(1);
          v189 = createStorage<A>(capacity:type:)(0);
          v376 = v187;
          v377 = v188;
          v378 = v189;
          serialize(_:at:)(2, &v376);
          serialize(_:at:)(1, &v376);
          v379 = partial apply for closure #1 in OSLogArguments.append(_:);
          v380 = v193;
          closure #1 in osLogInternal(_:log:type:)(&v379, &v376, &v377, &v378);
          v379 = partial apply for closure #1 in OSLogArguments.append(_:);
          v380 = v194;
          closure #1 in osLogInternal(_:log:type:)(&v379, &v376, &v377, &v378);
          v379 = partial apply for closure #1 in OSLogArguments.append(_:);
          v380 = v195;
          closure #1 in osLogInternal(_:log:type:)(&v379, &v376, &v377, &v378);
          _os_log_impl(&dword_2686B1000, v197, v198, "#SendPaymentNeedsValueStrategy Converted PaymentsIntent to SiriKit intent: %@", v187, 0xCu);
          destroyStorage<A>(_:count:)(v188, 1, v186);
          destroyStorage<A>(_:count:)(v189, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v187, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v184 = *(v1 + 704);
        v185 = *(v1 + 664);
        MEMORY[0x277D82BD8](v197);
        v342(v184, v185);
        if (value)
        {
          if (value == SiriPaymentsIntents_SendPaymentSlots_currencyAmount)
          {
            v41 = *(v1 + 576);
            v42 = *(v1 + 488);
            v180 = ParameterResolutionRecord.intent.getter();
            v179 = [v199 currencyAmount];
            v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyAmount", 0xEuLL, 1)._countAndFlagsBits;
            v178 = MEMORY[0x26D620690](v43);

            [v180 setValue:v179 forKeyPath:v178];
            MEMORY[0x277D82BD8](v178);
            swift_unknownObjectRelease();
            MEMORY[0x277D82BD8](v180);
          }

          else
          {
            v44 = *(v1 + 576);
            v45 = *(v1 + 488);
            v176 = ParameterResolutionRecord.intent.getter();
            v46 = [v199 note];
            v177 = v46;
            if (v46)
            {
              v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v173 = v47;
              MEMORY[0x277D82BD8](v177);
              v174 = v172;
              v175 = v173;
            }

            else
            {
              v174 = 0;
              v175 = 0;
            }

            if (v175)
            {
              v170 = MEMORY[0x26D620690](v174);

              v171 = v170;
            }

            else
            {
              v171 = 0;
            }

            v48 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("note", 4uLL, 1)._countAndFlagsBits;
            v169 = MEMORY[0x26D620690](v48);

            [v176 setValue:v171 forKeyPath:v169];
            MEMORY[0x277D82BD8](v169);
            swift_unknownObjectRelease();
            MEMORY[0x277D82BD8](v176);
          }
        }

        else
        {
          v38 = *(v1 + 576);
          v39 = *(v1 + 488);
          v183 = ParameterResolutionRecord.intent.getter();
          v182 = [v199 payee];
          v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1)._countAndFlagsBits;
          v181 = MEMORY[0x26D620690](v40);

          [v183 setValue:v182 forKeyPath:v181];
          MEMORY[0x277D82BD8](v181);
          swift_unknownObjectRelease();
          MEMORY[0x277D82BD8](v183);
        }

        v49 = *(v1 + 696);
        v156 = *(v1 + 664);
        v159 = *(v1 + 600);
        v158 = *(v1 + 592);
        v160 = *(v1 + 576);
        v157 = *(v1 + 488);
        v50 = Logger.payments.unsafeMutableAddressor();
        v357(v49, v50, v156);
        v306(v159, v157, v160);
        v161 = swift_allocObject();
        v311(v161 + ((v308 + 16) & ~v308), v159, v160);
        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.debug.getter();
        v163 = swift_allocObject();
        *(v163 + 16) = 32;
        v164 = swift_allocObject();
        *(v164 + 16) = 8;
        v162 = swift_allocObject();
        *(v162 + 16) = partial apply for implicit closure #7 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
        *(v162 + 24) = v161;
        v165 = swift_allocObject();
        *(v165 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v165 + 24) = v162;
        _allocateUninitializedArray<A>(_:)();
        v166 = v51;

        *v166 = partial apply for closure #1 in OSLogArguments.append(_:);
        v166[1] = v163;

        v166[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v166[3] = v164;

        v166[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v166[5] = v165;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v167, v168))
        {
          v153 = static UnsafeMutablePointer.allocate(capacity:)();
          v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v154 = createStorage<A>(capacity:type:)(0);
          v155 = createStorage<A>(capacity:type:)(1);
          v371 = v153;
          v372 = v154;
          v373 = v155;
          serialize(_:at:)(2, &v371);
          serialize(_:at:)(1, &v371);
          v374 = partial apply for closure #1 in OSLogArguments.append(_:);
          v375 = v163;
          closure #1 in osLogInternal(_:log:type:)(&v374, &v371, &v372, &v373);
          v374 = partial apply for closure #1 in OSLogArguments.append(_:);
          v375 = v164;
          closure #1 in osLogInternal(_:log:type:)(&v374, &v371, &v372, &v373);
          v374 = partial apply for closure #1 in OSLogArguments.append(_:);
          v375 = v165;
          closure #1 in osLogInternal(_:log:type:)(&v374, &v371, &v372, &v373);
          _os_log_impl(&dword_2686B1000, v167, v168, "#SendPaymentNeedsValueStrategy Returning intent: %s", v153, 0xCu);
          destroyStorage<A>(_:count:)(v154, 0, v152);
          destroyStorage<A>(_:count:)(v155, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v153, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v144 = *(v1 + 696);
        v145 = *(v1 + 664);
        v146 = *(v1 + 576);
        v150 = *(v1 + 568);
        v151 = *(v1 + 544);
        v52 = *(v1 + 488);
        v149 = *(v1 + 472);
        MEMORY[0x277D82BD8](v167);
        v342(v144, v145);
        v147 = ParameterResolutionRecord.intent.getter();
        *(v1 + 160) = &type metadata for SendPaymentSlots;
        *(v1 + 168) = &protocol witness table for SendPaymentSlots;
        *(v1 + 136) = value;
        v148 = type metadata accessor for INSendPaymentIntent();
        SiriKitPaymentsIntent.value(forSlot:)((v1 + 136), v148, &v370);
        __swift_destroy_boxed_opaque_existential_0((v1 + 136));
        MEMORY[0x277D82BD8](v147);
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMR);
        (*(*(v53 - 8) + 56))(v149, 0, 1);
        v211(v150, v151);
      }

      else
      {
        v54 = *(v1 + 688);
        v140 = *(v1 + 664);
        v55 = Logger.payments.unsafeMutableAddressor();
        v357(v54, v55, v140);
        v142 = Logger.logObject.getter();
        v141 = static os_log_type_t.error.getter();
        v143 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v142, v141))
        {
          v136 = static UnsafeMutablePointer.allocate(capacity:)();
          v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v137 = createStorage<A>(capacity:type:)(0);
          v138 = createStorage<A>(capacity:type:)(0);
          *(v1 + 312) = v136;
          *(v1 + 320) = v137;
          *(v1 + 328) = v138;
          serialize(_:at:)(0, (v1 + 312));
          serialize(_:at:)(0, (v1 + 312));
          *(v1 + 336) = v143;
          v139 = swift_task_alloc();
          v139[2] = v1 + 312;
          v139[3] = v1 + 320;
          v139[4] = v1 + 328;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v142, v141, "#SendPaymentNeedsValueStrategy parseResponseValue failed to interpret user response as expected Send response. Reprompt with previous state", v136, 2u);
          destroyStorage<A>(_:count:)(v137, 0, v135);
          destroyStorage<A>(_:count:)(v138, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v136, MEMORY[0x277D84B78]);
        }

        v129 = *(v1 + 688);
        v130 = *(v1 + 664);
        v131 = *(v1 + 576);
        v133 = *(v1 + 568);
        v134 = *(v1 + 544);
        v56 = *(v1 + 488);
        v132 = *(v1 + 472);
        MEMORY[0x277D82BD8](v142);
        v342(v129, v130);
        v366 = 0;
        v367 = 0;
        v368 = 0;
        v369 = 0;
        ParameterResolutionRecord.intent.getter();
        type metadata accessor for INSendPaymentIntent();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo013INSendPaymentD0CGMR);
        (*(*(v57 - 8) + 56))(v132, 0, 1);
        v211(v133, v134);
      }
    }

    v67 = *(v1 + 760);
    v70 = *(v1 + 752);
    v71 = *(v1 + 744);
    v72 = *(v1 + 736);
    v73 = *(v1 + 728);
    v74 = *(v1 + 720);
    v75 = *(v1 + 712);
    v76 = *(v1 + 704);
    v77 = *(v1 + 696);
    v78 = *(v1 + 688);
    v79 = *(v1 + 680);
    v80 = *(v1 + 656);
    v81 = *(v1 + 632);
    v82 = *(v1 + 600);
    v83 = *(v1 + 568);
    v84 = *(v1 + 560);
    v85 = *(v1 + 536);
    v86 = *(v1 + 528);

    v68 = *(*(v1 + 280) + 8);
    v69 = *(v1 + 280);

    return v68();
  }
}

uint64_t implicit closure #2 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v4 = type metadata accessor for Parse();
  v2 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v3 = &v1 - v2;
  Input.parse.getter();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1)
{
  v2[1] = a1;
  v5 = type metadata accessor for Parse.DirectInvocation();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #5 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t implicit closure #7 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  ParameterResolutionRecord.intent.getter();
  type metadata accessor for INSendPaymentIntent();
  lazy protocol witness table accessor for type INSendPaymentIntent and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t SendPaymentNeedsValueStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance SendPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance SendPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance SendPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B370] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SendPaymentNeedsValueStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9BF8](a1, a2, v7, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance SendPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B378] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SendPaymentNeedsValueStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C00](a1, a2, v7, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance SendPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5C0B0] + 4);
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for SendPaymentNeedsValueStrategy();
  *v8 = *(v11 + 16);
  v8[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v9, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance SendPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = v7;
  *(v7 + 16) = v7;
  v8 = *(MEMORY[0x277D5C0B8] + 4);
  v9 = swift_task_alloc();
  *(v12 + 24) = v9;
  v10 = type metadata accessor for SendPaymentNeedsValueStrategy();
  *v9 = *(v12 + 16);
  v9[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v10, a7);
}

uint64_t sub_2687FF2E0()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)();
}

uint64_t sub_2687FF480()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687FF4C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687FF500()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687FF630()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687FF670()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687FF6B0()
{
  v3 = *(type metadata accessor for Input() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v1 = *(type metadata accessor for Input() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #2 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)();
}

uint64_t sub_2687FF838()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687FF878()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687FF8B8()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687FF9E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687FFA28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687FFB08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687FFB48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687FFB88()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #7 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #7 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)();
}

uint64_t sub_2687FFD28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687FFD68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687FFDA8()
{
  v3 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v1 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #4 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(v2);
}

uint64_t sub_2687FFF30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687FFF70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268800058()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for SendPaymentNeedsValueStrategy()
{
  v1 = type metadata singleton initialization cache for SendPaymentNeedsValueStrategy;
  if (!type metadata singleton initialization cache for SendPaymentNeedsValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SendPaymentHandleIntentStrategy.__allocating_init()()
{
  v31 = 0;
  v17 = 0;
  v7 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v6 - v7;
  v12 = type metadata accessor for Globals();
  v8 = v36;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v36);
  v9 = &v35;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v10 = &v34;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v33;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v0 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v8, v9, v10, v11);
  v25 = v37;
  v37[3] = v12;
  v37[4] = &protocol witness table for Globals;
  v37[0] = v0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v15 = v32;
  outlined init with copy of GlobalsProviding(v25, v32);
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v13 = type metadata accessor for INSendPaymentIntent();
  v1 = type metadata accessor for INSendPaymentIntentResponse();
  v2 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v13, v1);
  v24 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v15, v14, v2);
  v31 = v24;
  v23 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  type metadata accessor for SendPaymentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v18);
  v19 = v29;
  v29[3] = &type metadata for CommonLabelsProvider;
  v29[4] = &protocol witness table for CommonLabelsProvider;
  v3 = type metadata accessor for SiriKitContactResolver();
  v20 = v28;
  v28[3] = v3;
  v28[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v28);
  SiriKitContactResolver.init()();

  v21 = &v27;
  v27 = v24;
  v4 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v26 = SendPaymentHandleIntentStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v23, v18, v19, v20, v21, v22, v4);

  v37[5] = v26;

  __swift_destroy_boxed_opaque_existential_0(v25);

  return v26;
}

uint64_t SendPaymentHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v8 = *(v4 - 8);
  v3[11] = v8;
  v5 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  v6 = v3[2];

  return MEMORY[0x2822009F8](SendPaymentHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:), 0);
}

uint64_t SendPaymentHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  v1 = v0[12];
  v16 = v0[11];
  v17 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0);
    v13 = createStorage<A>(capacity:type:)(0);
    *(v15 + 48) = buf;
    *(v15 + 56) = v12;
    *(v15 + 64) = v13;
    serialize(_:at:)(0, (v15 + 48));
    serialize(_:at:)(0, (v15 + 48));
    *(v15 + 72) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 48;
    v14[3] = v15 + 56;
    v14[4] = v15 + 64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#SendPaymentHandleIntentStrategy makeIntentExecutionBehavior", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v15 + 96);
  v7 = *(v15 + 80);
  v6 = *(v15 + 88);
  MEMORY[0x277D82BD8](v19);
  (*(v6 + 8))(v8, v7);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  v9 = static SiriKitIntentExecutionBehavior.standard()();

  v3 = *(*(v15 + 16) + 8);
  v4 = *(v15 + 16);

  return v3(v9);
}

uint64_t SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[50] = v2;
  v3[49] = a2;
  v3[48] = a1;
  v3[39] = v3;
  v3[40] = 0;
  v3[41] = 0;
  v3[42] = 0;
  v3[47] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  v3[51] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[52] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v3[53] = v6;
  v12 = *(v6 - 8);
  v3[54] = v12;
  v13 = *(v12 + 64);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  v3[57] = v7;
  v14 = *(v7 - 8);
  v3[58] = v14;
  v3[59] = *(v14 + 64);
  v3[60] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[61] = v8;
  v15 = *(v8 - 8);
  v3[62] = v15;
  v16 = *(v15 + 64);
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v9 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v3[66] = swift_task_alloc();
  v3[40] = a2;
  v3[41] = v2;
  v10 = v3[39];

  return MEMORY[0x2822009F8](SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0);
}

uint64_t SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v56 = v0;
  v34 = v0[66];
  v1 = v0[65];
  v35 = v0[62];
  v36 = v0[61];
  v41 = v0[60];
  v38 = v0[59];
  v39 = v0[58];
  v42 = v0[57];
  v37 = v0[49];
  v0[39] = v0;
  v2 = SignpostName.sendPaymentHandleIntent.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v34);
  v3 = Logger.payments.unsafeMutableAddressor();
  v4 = *(v35 + 16);
  v0[67] = v4;
  v0[68] = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4(v1, v3, v36);
  (*(v39 + 16))(v41, v37, v42);
  v40 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = swift_allocObject();
  (*(v39 + 32))(v43 + v40, v41, v42);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v44 = swift_allocObject();
  *(v44 + 16) = partial apply for implicit closure #1 in SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  *(v44 + 24) = v43;
  v47 = swift_allocObject();
  *(v47 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v47 + 24) = v44;
  v0[69] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v48 = v5;

  *v48 = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[1] = v45;

  v48[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[3] = v46;

  v48[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v48[5] = v47;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v49, v50))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v31 = createStorage<A>(capacity:type:)(0);
    v32 = createStorage<A>(capacity:type:)(1);
    v51 = buf;
    v52 = v31;
    v53 = v32;
    serialize(_:at:)(2, &v51);
    serialize(_:at:)(1, &v51);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v46;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    _os_log_impl(&dword_2686B1000, v49, v50, "#SendPaymentHandleIntentStrategy makeIntentHandledResponse response: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v31, 0, v29);
    destroyStorage<A>(_:count:)(v32, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v24 = v33[65];
  v25 = v33[61];
  v26 = v33[57];
  v6 = v33[49];
  v23 = v33[62];
  MEMORY[0x277D82BD8](v49);
  v7 = *(v23 + 8);
  v33[70] = v7;
  v33[71] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v24, v25);
  v27 = IntentResolutionRecord.intentResponse.getter();
  v28 = [v27 code];
  v33[42] = v28;
  MEMORY[0x277D82BD8](v27);
  if (v28 == 3)
  {
    v21 = v33[57];
    v20 = v33[50];
    v8 = v33[49];

    v33[72] = *(v20 + 16);

    IntentResolutionRecord.app.getter();
    v22 = App.sirikitApp.getter();
    v33[73] = v22;

    v9 = swift_task_alloc();
    v33[74] = v9;
    *v9 = v33[39];
    v9[1] = SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v10 = v33[56];

    return SendPaymentCATs.intentHandledResponse(app:)(v10, v22);
  }

  else
  {
    v16 = v33[50];

    outlined init with copy of GlobalsProviding(v16 + 144, (v33 + 2));

    v17 = v33[5];
    v18 = v33[6];
    __swift_project_boxed_opaque_existential_1(v33 + 2, v17);
    v19 = (*(v18 + 48) + **(v18 + 48));
    v12 = *(*(v18 + 48) + 4);
    v13 = swift_task_alloc();
    v33[76] = v13;
    *v13 = v33[39];
    v13[1] = SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v14 = v33[51];
    v15 = v33[49];

    return v19(v14, v15, v17, v18);
  }
}

{
  v11 = *v1;
  v9 = *v1 + 16;
  v10 = (v11 + 312);
  v2 = *(*v1 + 592);
  *(v11 + 312) = *v1;
  *(v11 + 600) = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v3 = *(v9 + 568);
    v8 = *(v9 + 560);

    v4 = *v10;
    v5 = SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v97 = v0;
  v1 = v0[57];
  v2 = v0[49];
  v0[39] = v0;
  v90 = IntentResolutionRecord.intentResponse.getter();
  v91 = [v90 paymentRecord];
  if (v91)
  {
    v86 = *(v89 + 552);
    v78 = *(v89 + 544);
    v79 = *(v89 + 536);
    v3 = *(v89 + 512);
    v77 = *(v89 + 488);
    *(v89 + 376) = v91;
    MEMORY[0x277D82BD8](v90);
    v4 = Logger.payments.unsafeMutableAddressor();
    v79(v3, v4, v77);
    MEMORY[0x277D82BE0](v91);
    v80 = swift_allocObject();
    *(v80 + 16) = v91;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();
    v82 = swift_allocObject();
    *(v82 + 16) = 64;
    v83 = swift_allocObject();
    *(v83 + 16) = 8;
    v81 = swift_allocObject();
    *(v81 + 16) = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v81 + 24) = v80;
    v84 = swift_allocObject();
    *(v84 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v84 + 24) = v81;
    _allocateUninitializedArray<A>(_:)();
    v85 = v5;

    *v85 = partial apply for closure #1 in OSLogArguments.append(_:);
    v85[1] = v82;

    v85[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v85[3] = v83;

    v85[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v85[5] = v84;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v87, v88))
    {
      v6 = *(v89 + 600);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v75 = createStorage<A>(capacity:type:)(1);
      v76 = createStorage<A>(capacity:type:)(0);
      v92 = buf;
      v93 = v75;
      v94 = v76;
      serialize(_:at:)(2, &v92);
      serialize(_:at:)(1, &v92);
      v95 = partial apply for closure #1 in OSLogArguments.append(_:);
      v96 = v82;
      closure #1 in osLogInternal(_:log:type:)(&v95, &v92, &v93, &v94);
      if (v6)
      {
      }

      v95 = partial apply for closure #1 in OSLogArguments.append(_:);
      v96 = v83;
      closure #1 in osLogInternal(_:log:type:)(&v95, &v92, &v93, &v94);
      v95 = partial apply for closure #1 in OSLogArguments.append(_:);
      v96 = v84;
      closure #1 in osLogInternal(_:log:type:)(&v95, &v92, &v93, &v94);
      _os_log_impl(&dword_2686B1000, v87, v88, "#SendPaymentConfirmIntentStrategy intent contained paymentRecord: %@", buf, 0xCu);
      destroyStorage<A>(_:count:)(v75, 1, v73);
      destroyStorage<A>(_:count:)(v76, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v53 = *(v89 + 568);
    v54 = *(v89 + 560);
    v64 = *(v89 + 528);
    v51 = *(v89 + 512);
    v52 = *(v89 + 488);
    v62 = *(v89 + 448);
    v63 = *(v89 + 424);
    v60 = *(v89 + 416);
    v57 = *(v89 + 400);
    v59 = *(v89 + 384);
    v61 = *(v89 + 432);
    MEMORY[0x277D82BD8](v87);
    v54(v51, v52);

    outlined init with copy of GlobalsProviding(v57 + 104, v89 + 176);

    v56 = *(v89 + 200);
    v55 = *(v89 + 208);
    __swift_project_boxed_opaque_existential_1((v89 + 176), v56);
    (*(v55 + 16))(v56);

    BaseStrategy.ttsEnabled.getter();

    type metadata accessor for SAAceView();
    _allocateUninitializedArray<A>(_:)();

    v58 = BaseStrategy.ttsEnabled.getter();

    static PaymentsContextProvider.handleSendPayment(paymentRecord:needsSDA:)(v91, v58 & 1, v60);
    v8 = type metadata accessor for NLContextUpdate();
    (*(*(v8 - 8) + 56))(v60, 0, 1);
    *(v89 + 256) = 0;
    *(v89 + 264) = 0;
    *(v89 + 272) = 0;
    *(v89 + 280) = 0;
    *(v89 + 288) = 0;
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v59[3] = type metadata accessor for AceOutput();
    v59[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v59);
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?((v89 + 256));
    outlined destroy of NLContextUpdate?(v60);

    __swift_destroy_boxed_opaque_existential_0((v89 + 216));
    __swift_destroy_boxed_opaque_existential_0((v89 + 176));
    MEMORY[0x277D82BD8](v91);
    (*(v61 + 8))(v62, v63);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v64);
    v9 = *(v89 + 528);
    v65 = *(v89 + 520);
    v66 = *(v89 + 512);
    v67 = *(v89 + 504);
    v68 = *(v89 + 480);
    v69 = *(v89 + 448);
    v70 = *(v89 + 440);
    v71 = *(v89 + 416);
    v72 = *(v89 + 408);

    v10 = *(*(v89 + 312) + 8);
    v11 = *(v89 + 312);

    return v10();
  }

  else
  {
    v47 = *(v89 + 552);
    v45 = *(v89 + 544);
    v46 = *(v89 + 536);
    v12 = *(v89 + 504);
    v44 = *(v89 + 488);
    MEMORY[0x277D82BD8](v90);
    v13 = Logger.payments.unsafeMutableAddressor();
    v46(v12, v13, v44);
    oslog = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v50 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v48))
    {
      v14 = *(v89 + 600);
      v40 = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v41 = createStorage<A>(capacity:type:)(0);
      v42 = createStorage<A>(capacity:type:)(0);
      *(v89 + 344) = v40;
      *(v89 + 352) = v41;
      *(v89 + 360) = v42;
      serialize(_:at:)(0, (v89 + 344));
      serialize(_:at:)(0, (v89 + 344));
      *(v89 + 368) = v50;
      v43 = swift_task_alloc();
      v43[2] = v89 + 344;
      v43[3] = v89 + 352;
      v43[4] = v89 + 360;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v14)
      {
      }

      _os_log_impl(&dword_2686B1000, oslog, v48, "#SendPaymentHandleIntentStrategy found no paymentRecord in intent response, throwing exception", v40, 2u);
      destroyStorage<A>(_:count:)(v41, 0, v39);
      destroyStorage<A>(_:count:)(v42, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v40, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v22 = *(v89 + 568);
    v23 = *(v89 + 560);
    v30 = *(v89 + 528);
    v20 = *(v89 + 504);
    v21 = *(v89 + 488);
    v28 = *(v89 + 448);
    v29 = *(v89 + 424);
    v27 = *(v89 + 432);
    MEMORY[0x277D82BD8](oslog);
    v23(v20, v21);
    type metadata accessor for INSendPaymentIntent();
    v26 = [swift_getObjCClassFromMetadata() description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v15;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v16 = v25;
    *(v16 + 8) = v24;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    *(v16 + 48) = 12;
    swift_willThrow();
    MEMORY[0x277D82BD8](v26);
    (*(v27 + 8))(v28, v29);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v30);
    v17 = *(v89 + 528);
    v31 = *(v89 + 520);
    v32 = *(v89 + 512);
    v33 = *(v89 + 504);
    v34 = *(v89 + 480);
    v35 = *(v89 + 448);
    v36 = *(v89 + 440);
    v37 = *(v89 + 416);
    v38 = *(v89 + 408);

    v18 = *(*(v89 + 312) + 8);
    v19 = *(v89 + 312);

    return v18();
  }
}

{
  v8 = *v1;
  v7 = (v8 + 312);
  v2 = *(*v1 + 608);
  *(v8 + 312) = *v1;
  *(v8 + 616) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v3 = *v7;
    v4 = SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[54];
  v2 = v0[53];
  v3 = v0[51];
  v0[39] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v21 = v47[66];
    outlined destroy of TemplatingResult?(v47[51]);
    __swift_destroy_boxed_opaque_existential_0(v47 + 2);
    v47[37] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v47[38] = v9;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    type metadata accessor for INSendPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v11);

    v18 = v47[37];
    v17 = v47[38];

    outlined destroy of String.UTF8View((v47 + 37));
    v20 = MEMORY[0x26D620710](v18, v17);
    v19 = v12;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v13 = v20;
    *(v13 + 8) = v19;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = 16;
    swift_willThrow();
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v21);
    v14 = v47[66];
    v22 = v47[65];
    v23 = v47[64];
    v24 = v47[63];
    v25 = v47[60];
    v26 = v47[56];
    v27 = v47[55];
    v28 = v47[52];
    v29 = v47[51];

    v7 = *(v47[39] + 8);
    v15 = v47[39];
  }

  else
  {
    v38 = v47[66];
    v36 = v47[55];
    v37 = v47[53];
    v34 = v47[52];
    v4 = v47[51];
    v32 = v47[50];
    v33 = v47[48];
    v35 = v47[54];
    (*(v35 + 32))();
    __swift_destroy_boxed_opaque_existential_0(v47 + 2);

    outlined init with copy of GlobalsProviding(v32 + 104, (v47 + 7));

    v31 = v47[10];
    v30 = v47[11];
    __swift_project_boxed_opaque_existential_1(v47 + 7, v31);
    (*(v30 + 16))(v31);

    BaseStrategy.ttsEnabled.getter();

    v5 = type metadata accessor for NLContextUpdate();
    (*(*(v5 - 8) + 56))(v34, 1);
    v47[17] = 0;
    v47[18] = 0;
    v47[19] = 0;
    v47[20] = 0;
    v47[21] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v33[3] = type metadata accessor for AceOutput();
    v33[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v33);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v47 + 17);
    outlined destroy of NLContextUpdate?(v34);
    __swift_destroy_boxed_opaque_existential_0(v47 + 12);
    __swift_destroy_boxed_opaque_existential_0(v47 + 7);
    (*(v35 + 8))(v36, v37);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v38);
    v6 = v47[66];
    v39 = v47[65];
    v40 = v47[64];
    v41 = v47[63];
    v42 = v47[60];
    v43 = v47[56];
    v44 = v47[55];
    v45 = v47[52];
    v46 = v47[51];

    v7 = *(v47[39] + 8);
    v8 = v47[39];
  }

  return v7();
}

{
  v1 = v0[73];
  v7 = v0[72];
  v8 = v0[66];
  v0[39] = v0;

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v8);
  v2 = v0[75];
  v3 = v0[66];
  v9 = v0[65];
  v10 = v0[64];
  v11 = v0[63];
  v12 = v0[60];
  v13 = v0[56];
  v14 = v0[55];
  v15 = v0[52];
  v16 = v0[51];

  v4 = *(v0[39] + 8);
  v5 = v0[39];

  return v4();
}

{
  v6 = v0[66];
  v0[39] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v6);
  v1 = v0[77];
  v2 = v0[66];
  v7 = v0[65];
  v8 = v0[64];
  v9 = v0[63];
  v10 = v0[60];
  v11 = v0[56];
  v12 = v0[55];
  v13 = v0[52];
  v14 = v0[51];

  v3 = *(v0[39] + 8);
  v4 = v0[39];

  return v3();
}

uint64_t implicit closure #1 in SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.intentResponse.getter();
  type metadata accessor for INSendPaymentIntentResponse();
  lazy protocol witness table accessor for type INSendPaymentIntentResponse and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t SendPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[31] = v2;
  v3[30] = a2;
  v3[29] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[33] = v5;
  v12 = *(v5 - 8);
  v3[34] = v12;
  v6 = *(v12 + 64) + 15;
  v3[35] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[36] = v7;
  v13 = *(v7 - 8);
  v3[37] = v13;
  v8 = *(v13 + 64) + 15;
  v3[38] = swift_task_alloc();
  v9 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[23] = a2;
  v3[24] = v2;
  v10 = v3[22];

  return MEMORY[0x2822009F8](SendPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:), 0);
}

uint64_t SendPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:)()
{
  v23 = v0[39];
  v1 = v0[38];
  v24 = v0[37];
  v25 = v0[36];
  v0[22] = v0;
  v2 = SignpostName.makeSendPaymentContinueInAppResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v23);
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v24 + 16))(v1, v3, v25);
  v27 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v28 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v27, v26))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(0);
    v20 = createStorage<A>(capacity:type:)(0);
    *(v22 + 200) = buf;
    *(v22 + 208) = v19;
    *(v22 + 216) = v20;
    serialize(_:at:)(0, (v22 + 200));
    serialize(_:at:)(0, (v22 + 200));
    *(v22 + 224) = v28;
    v21 = swift_task_alloc();
    v21[2] = v22 + 200;
    v21[3] = v22 + 208;
    v21[4] = v22 + 216;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v27, v26, "#SendPaymentHandleIntentStrategy makeContinueInAppResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v19, 0, v17);
    destroyStorage<A>(_:count:)(v20, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v10 = *(v22 + 304);
  v11 = *(v22 + 288);
  v12 = *(v22 + 248);
  v4 = *(v22 + 240);
  v9 = *(v22 + 296);
  MEMORY[0x277D82BD8](v27);
  (*(v9 + 8))(v10, v11);

  outlined init with copy of GlobalsProviding(v12 + 144, v22 + 16);

  v14 = *(v22 + 40);
  v15 = *(v22 + 48);
  __swift_project_boxed_opaque_existential_1((v22 + 16), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  v13 = IntentResolutionRecord.app.getter();
  *(v22 + 320) = v13;
  v16 = (*(v15 + 40) + **(v15 + 40));
  v5 = *(*(v15 + 40) + 4);
  v6 = swift_task_alloc();
  *(v22 + 328) = v6;
  *v6 = *(v22 + 176);
  v6[1] = RequestPaymentHandleIntentStrategy.makeContinueInAppResponse(rchRecord:);
  v7 = *(v22 + 280);

  return v16(v7, 1, v13, v14, v15);
}

uint64_t SendPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[31] = v2;
  v3[30] = a2;
  v3[29] = a1;
  v3[26] = v3;
  v3[27] = 0;
  v3[28] = 0;
  v3[22] = 0;
  v3[23] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v3[34] = v6;
  v13 = *(v6 - 8);
  v3[35] = v13;
  v7 = *(v13 + 64) + 15;
  v3[36] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[37] = v8;
  v14 = *(v8 - 8);
  v3[38] = v14;
  v9 = *(v14 + 64) + 15;
  v3[39] = swift_task_alloc();
  v10 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[27] = a2;
  v3[28] = v2;
  v11 = v3[26];

  return MEMORY[0x2822009F8](SendPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:), 0);
}

uint64_t SendPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v44 = v0;
  v23 = v0[40];
  v24 = v0[39];
  v27 = v0[38];
  v28 = v0[37];
  v1 = v0[30];
  v0[26] = v0;
  v2 = SignpostName.makeSendPaymentFailureHandlingIntentResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR);
  v25 = IntentResolutionRecord.intentResponse.getter();
  v26 = [v25 code];
  MEMORY[0x277D82BD8](v25);
  v29 = static PaymentIntentCATResponseCode.from(_:)(v26);
  v30 = v3;
  v0[41] = v3;
  v0[22] = v29;
  v0[23] = v3;
  v4 = Logger.payments.unsafeMutableAddressor();
  (*(v27 + 16))(v24, v4, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v32 + 24) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v35 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v36 = v5;

  *v36 = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[1] = v33;

  v36[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[3] = v34;

  v36[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[5] = v35;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v37, v38))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0);
    v21 = createStorage<A>(capacity:type:)(1);
    v39 = buf;
    v40 = v20;
    v41 = v21;
    serialize(_:at:)(2, &v39);
    serialize(_:at:)(1, &v39);
    v42 = partial apply for closure #1 in OSLogArguments.append(_:);
    v43 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v42, &v39, &v40, &v41);
    v42 = partial apply for closure #1 in OSLogArguments.append(_:);
    v43 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v42, &v39, &v40, &v41);
    v42 = partial apply for closure #1 in OSLogArguments.append(_:);
    v43 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_2686B1000, v37, v38, "#SendPaymentHandleIntentStrategy makeFailureHandlingIntentResponse with code %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v20, 0, v18);
    destroyStorage<A>(_:count:)(v21, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v22[39];
  v13 = v22[37];
  v14 = v22[31];
  v11 = v22[38];
  MEMORY[0x277D82BD8](v37);
  (*(v11 + 8))(v12, v13);

  outlined init with copy of GlobalsProviding(v14 + 144, (v22 + 2));

  v15 = v22[5];
  v16 = v22[6];
  __swift_project_boxed_opaque_existential_1(v22 + 2, v15);
  v17 = (*(v16 + 48) + **(v16 + 48));
  v6 = *(*(v16 + 48) + 4);
  v7 = swift_task_alloc();
  v22[42] = v7;
  *v7 = v22[26];
  v7[1] = SendPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  v8 = v22[33];
  v9 = v22[30];

  return v17(v8, v9, v15, v16);
}

{
  v7 = *v1;
  v2 = *(*v1 + 336);
  *(v7 + 208) = *v1;
  v8 = (v7 + 208);
  *(v7 + 344) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = SendPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  }

  else
  {
    v3 = *v8;
    v4 = SendPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[35];
  v2 = v0[34];
  v3 = v0[33];
  v0[26] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v19 = v37[41];
    v20 = v37[40];
    outlined destroy of TemplatingResult?(v37[33]);
    __swift_destroy_boxed_opaque_existential_0(v37 + 2);
    v37[24] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v37[25] = v7;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    type metadata accessor for INSendPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v16 = v37[24];
    v15 = v37[25];

    outlined destroy of String.UTF8View((v37 + 24));
    v18 = MEMORY[0x26D620710](v16, v15);
    v17 = v10;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v11 = v18;
    *(v11 + 8) = v17;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 16;
    swift_willThrow();

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v20);
    v12 = v37[40];
    v21 = v37[39];
    v22 = v37[36];
    v23 = v37[33];
    v24 = v37[32];

    v5 = *(v37[26] + 8);
    v13 = v37[26];
  }

  else
  {
    v31 = v37[41];
    v32 = v37[40];
    v33 = v37[39];
    v34 = v37[36];
    v30 = v37[34];
    v35 = v37[33];
    v36 = v37[32];
    v27 = v37[31];
    v28 = v37[29];
    v29 = v37[35];
    (*(v29 + 32))();
    __swift_destroy_boxed_opaque_existential_0(v37 + 2);

    outlined init with copy of GlobalsProviding(v27 + 104, (v37 + 7));

    v26 = v37[10];
    v25 = v37[11];
    __swift_project_boxed_opaque_existential_1(v37 + 7, v26);
    (*(v25 + 16))(v26);

    BaseStrategy.ttsEnabled.getter();

    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v36, 1);
    v37[17] = 0;
    v37[18] = 0;
    v37[19] = 0;
    v37[20] = 0;
    v37[21] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v28[3] = type metadata accessor for AceOutput();
    v28[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v28);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v37 + 17);
    outlined destroy of NLContextUpdate?(v36);
    __swift_destroy_boxed_opaque_existential_0(v37 + 12);
    __swift_destroy_boxed_opaque_existential_0(v37 + 7);
    (*(v29 + 8))(v34, v30);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v32);

    v5 = *(v37[26] + 8);
    v6 = v37[26];
  }

  return v5();
}

{
  v6 = v0[41];
  v7 = v0[40];
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v7);
  v1 = v0[43];
  v2 = v0[40];
  v8 = v0[39];
  v9 = v0[36];
  v10 = v0[33];
  v11 = v0[32];

  v3 = *(v0[26] + 8);
  v4 = v0[26];

  return v3();
}

uint64_t SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[27] = v5;
  v11 = *(v5 - 8);
  v3[28] = v11;
  v6 = *(v11 + 64) + 15;
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[30] = v7;
  v12 = *(v7 - 8);
  v3[31] = v12;
  v8 = *(v12 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;
  v9 = v3[17];

  return MEMORY[0x2822009F8](SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:), 0);
}

uint64_t SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:)()
{
  v1 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v0[17] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0);
    v13 = createStorage<A>(capacity:type:)(0);
    *(v15 + 160) = buf;
    *(v15 + 168) = v12;
    *(v15 + 176) = v13;
    serialize(_:at:)(0, (v15 + 160));
    serialize(_:at:)(0, (v15 + 160));
    *(v15 + 184) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 160;
    v14[3] = v15 + 168;
    v14[4] = v15 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#SendPaymentHandleIntentStrategy makePreHandleIntentOutput", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v15 + 256);
  v8 = *(v15 + 240);
  v9 = *(v15 + 200);
  v6 = *(v15 + 248);
  MEMORY[0x277D82BD8](v19);
  (*(v6 + 8))(v7, v8);

  *(v15 + 264) = *(v9 + 16);

  v3 = swift_task_alloc();
  *(v15 + 272) = v3;
  *v3 = *(v15 + 136);
  v3[1] = SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:);
  v4 = *(v15 + 232);

  return SendPaymentCATs.preHandleIntentResponse()(v4);
}

{
  v8 = *v1;
  v2 = *(*v1 + 272);
  v8[17] = *v1;
  v9 = v8 + 17;
  v8[35] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:);
  }

  else
  {
    v3 = v8[33];

    v4 = *v9;
    v5 = SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v11 = v0[32];
  v12 = v0[29];
  v9 = v0[28];
  v10 = v0[27];
  v13 = v0[26];
  v7 = v0[25];
  v8 = v0[24];
  v0[17] = v0;

  outlined init with copy of GlobalsProviding(v7 + 104, (v0 + 2));

  v6 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  (*(v5 + 16))(v6);

  BaseStrategy.ttsEnabled.getter();

  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v13, 1);
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v9 + 8))(v12, v10);

  v2 = *(v0[17] + 8);
  v3 = v0[17];

  return v2();
}

{
  v1 = v0[33];
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[26];
  v0[17] = v0;

  v2 = v0;
  v3 = *(v0[17] + 8);
  v4 = v0[17];
  v5 = v2[35];

  return v3();
}

uint64_t SendPaymentHandleIntentStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t sub_268805594()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo013INSendPaymentD0CSo0ghD8ResponseCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in SendPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)();
}

uint64_t sub_268805734()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268805774()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268805854()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268805894()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2688058D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26880596C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2688059AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for SendPaymentHandleIntentStrategy()
{
  v1 = type metadata singleton initialization cache for SendPaymentHandleIntentStrategy;
  if (!type metadata singleton initialization cache for SendPaymentHandleIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type INSendPaymentIntentResponse and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type INSendPaymentIntentResponse and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INSendPaymentIntentResponse and conformance NSObject)
  {
    type metadata accessor for INSendPaymentIntentResponse();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INSendPaymentIntentResponse and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t SiriKitPaymentsIntent.simpleClassName.getter(uint64_t a1)
{
  v14 = 0;
  v15 = a1;
  v12 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v13 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  swift_getObjectType();
  DefaultStringInterpolation.appendInterpolation(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v3);

  v7 = v12;
  v6 = v13;

  outlined destroy of String.UTF8View(&v12);
  v11[0] = MEMORY[0x26D620710](v7, v6);
  v11[1] = v4;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IN", 2uLL, 1);
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  lazy protocol witness table accessor for type String and conformance String();
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  outlined destroy of String.UTF8View(&v9);
  outlined destroy of String.UTF8View(&v10);
  outlined destroy of String.UTF8View(v11);
  return v8;
}

uint64_t SiriKitPaymentsIntent.clone()()
{
  MEMORY[0x277D82BE0](v0);
  [v0 copy];
  MEMORY[0x277D82BD8](v0);
  _bridgeAnyObjectToAny(_:)();
  swift_dynamicCast();
  swift_unknownObjectRelease();
  return v2;
}

double SiriKitPaymentsIntent.value(forSlot:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v17 = a2;
  v16 = a1;
  v15 = v3;
  MEMORY[0x277D82BE0](v3);
  v9 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v4 = (*(v8 + 32))(v9);
  v10 = MEMORY[0x26D620690](v4);

  v11 = [v3 valueForKey_];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v3);
  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined init with take of Any(v12, &v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a3 = v13;
  result = *&v14;
  a3[1] = v14;
  return result;
}

Swift::Void __swiftcall PersonProvidingIntent.updatePerson(with:parameterName:)(Swift::OpaquePointer with, Swift::String parameterName)
{
  rawValue = with._rawValue;
  countAndFlagsBits = parameterName._countAndFlagsBits;
  object = parameterName._object;
  v192 = v2;
  v193 = v3;
  v194 = partial apply for implicit closure #3 in PersonProvidingIntent.updatePerson(with:parameterName:);
  v195 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v196 = partial apply for closure #1 in OSLogArguments.append(_:);
  v197 = partial apply for closure #1 in OSLogArguments.append(_:);
  v198 = partial apply for closure #1 in OSLogArguments.append(_:);
  v199 = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  v200 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2;
  v201 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v202 = partial apply for closure #1 in OSLogArguments.append(_:);
  v203 = partial apply for closure #1 in OSLogArguments.append(_:);
  v204 = partial apply for closure #1 in OSLogArguments.append(_:);
  v205 = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  v206 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2;
  v207 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v208 = partial apply for closure #1 in OSLogArguments.append(_:);
  v209 = partial apply for closure #1 in OSLogArguments.append(_:);
  v210 = partial apply for closure #1 in OSLogArguments.append(_:);
  v211 = partial apply for implicit closure #4 in PersonProvidingIntent.updatePerson(with:parameterName:);
  v212 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v213 = partial apply for closure #1 in OSLogArguments.append(_:);
  v214 = partial apply for closure #1 in OSLogArguments.append(_:);
  v215 = partial apply for closure #1 in OSLogArguments.append(_:);
  v255 = 0;
  v253 = 0;
  v254 = 0;
  v252 = 0;
  v216 = 0;
  v256 = v2;
  v220 = type metadata accessor for Logger();
  v221 = *(v220 - 8);
  v222 = v220 - 8;
  v223 = (*(v221 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](rawValue);
  v224 = v85 - v223;
  v225 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v226 = v85 - v225;
  v227 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7);
  v228 = v85 - v227;
  v229 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v9);
  v230 = v85 - v229;
  v255 = v11;
  v253 = v12;
  v254 = v13;
  v252 = v4;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = v230;
    v15 = Logger.payments.unsafeMutableAddressor();
    (*(v221 + 16))(v14, v15, v220);

    v181 = 7;
    v178 = swift_allocObject();
    *(v178 + 16) = rawValue;

    v180 = 32;
    v16 = swift_allocObject();
    v17 = v178;
    v182 = v16;
    *(v16 + 16) = v205;
    *(v16 + 24) = v17;

    v190 = Logger.logObject.getter();
    v191 = static os_log_type_t.debug.getter();
    v179 = 17;
    v184 = swift_allocObject();
    *(v184 + 16) = 32;
    v185 = swift_allocObject();
    *(v185 + 16) = 8;
    v18 = swift_allocObject();
    v19 = v182;
    v183 = v18;
    *(v18 + 16) = v206;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v183;
    v187 = v20;
    *(v20 + 16) = v207;
    *(v20 + 24) = v21;
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v186 = _allocateUninitializedArray<A>(_:)();
    v188 = v22;

    v23 = v184;
    v24 = v188;
    *v188 = v208;
    v24[1] = v23;

    v25 = v185;
    v26 = v188;
    v188[2] = v209;
    v26[3] = v25;

    v27 = v187;
    v28 = v188;
    v188[4] = v210;
    v28[5] = v27;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v190, v191))
    {
      v29 = v216;
      v171 = static UnsafeMutablePointer.allocate(capacity:)();
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v172 = createStorage<A>(capacity:type:)(0);
      v173 = createStorage<A>(capacity:type:)(1);
      v174 = &v236;
      v236 = v171;
      v175 = &v235;
      v235 = v172;
      v176 = &v234;
      v234 = v173;
      serialize(_:at:)(2, &v236);
      serialize(_:at:)(1, v174);
      v232 = v208;
      v233 = v184;
      closure #1 in osLogInternal(_:log:type:)(&v232, v174, v175, v176);
      v177 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v232 = v209;
        v233 = v185;
        closure #1 in osLogInternal(_:log:type:)(&v232, &v236, &v235, &v234);
        v168 = 0;
        v232 = v210;
        v233 = v187;
        closure #1 in osLogInternal(_:log:type:)(&v232, &v236, &v235, &v234);
        v167 = 0;
        _os_log_impl(&dword_2686B1000, v190, v191, "#PersonProvidingIntent Updating INSendPaymentIntent with participants: %s", v171, 0xCu);
        destroyStorage<A>(_:count:)(v172, 0, v170);
        destroyStorage<A>(_:count:)(v173, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v171, MEMORY[0x277D84B78]);

        v169 = v167;
      }
    }

    else
    {
      v30 = v216;

      v169 = v30;
    }

    v165 = v169;
    MEMORY[0x277D82BD8](v190);
    (*(v221 + 8))(v230, v220);
    MEMORY[0x277D82BE0](v231);

    type metadata accessor for INPerson();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1);
    v162 = v31._object;
    v163 = MEMORY[0x26D620690](v31._countAndFlagsBits);

    [v231 setValue:isa forKeyPath:v163];
    MEMORY[0x277D82BD8](v163);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v231);
    v166 = v165;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v32 = v228;
      v33 = Logger.payments.unsafeMutableAddressor();
      (*(v221 + 16))(v32, v33, v220);

      v151 = 7;
      v148 = swift_allocObject();
      *(v148 + 16) = rawValue;

      v150 = 32;
      v34 = swift_allocObject();
      v35 = v148;
      v152 = v34;
      *(v34 + 16) = v199;
      *(v34 + 24) = v35;

      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.debug.getter();
      v149 = 17;
      v154 = swift_allocObject();
      *(v154 + 16) = 32;
      v155 = swift_allocObject();
      *(v155 + 16) = 8;
      v36 = swift_allocObject();
      v37 = v152;
      v153 = v36;
      *(v36 + 16) = v200;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v153;
      v157 = v38;
      *(v38 + 16) = v201;
      *(v38 + 24) = v39;
      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v156 = _allocateUninitializedArray<A>(_:)();
      v158 = v40;

      v41 = v154;
      v42 = v158;
      *v158 = v202;
      v42[1] = v41;

      v43 = v155;
      v44 = v158;
      v158[2] = v203;
      v44[3] = v43;

      v45 = v157;
      v46 = v158;
      v158[4] = v204;
      v46[5] = v45;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v160, v161))
      {
        v47 = v216;
        v141 = static UnsafeMutablePointer.allocate(capacity:)();
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v142 = createStorage<A>(capacity:type:)(0);
        v143 = createStorage<A>(capacity:type:)(1);
        v144 = &v241;
        v241 = v141;
        v145 = &v240;
        v240 = v142;
        v146 = &v239;
        v239 = v143;
        serialize(_:at:)(2, &v241);
        serialize(_:at:)(1, v144);
        v237 = v202;
        v238 = v154;
        closure #1 in osLogInternal(_:log:type:)(&v237, v144, v145, v146);
        v147 = v47;
        if (v47)
        {

          __break(1u);
        }

        else
        {
          v237 = v203;
          v238 = v155;
          closure #1 in osLogInternal(_:log:type:)(&v237, &v241, &v240, &v239);
          v138 = 0;
          v237 = v204;
          v238 = v157;
          closure #1 in osLogInternal(_:log:type:)(&v237, &v241, &v240, &v239);
          v137 = 0;
          _os_log_impl(&dword_2686B1000, v160, v161, "#PersonProvidingIntent Updating INRequestPaymentIntent with participants: %s", v141, 0xCu);
          destroyStorage<A>(_:count:)(v142, 0, v140);
          destroyStorage<A>(_:count:)(v143, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v141, MEMORY[0x277D84B78]);

          v139 = v137;
        }
      }

      else
      {
        v48 = v216;

        v139 = v48;
      }

      v136 = v139;
      MEMORY[0x277D82BD8](v160);
      (*(v221 + 8))(v228, v220);
      MEMORY[0x277D82BE0](v231);

      type metadata accessor for INPerson();
      v135 = Array._bridgeToObjectiveC()().super.isa;

      v49 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payer", 5uLL, 1);
      v133 = v49._object;
      v134 = MEMORY[0x26D620690](v49._countAndFlagsBits);

      [v231 setValue:v135 forKeyPath:v134];
      MEMORY[0x277D82BD8](v134);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v231);
      v166 = v136;
    }

    else
    {
      v50 = v226;
      v51 = Logger.payments.unsafeMutableAddressor();
      (*(v221 + 16))(v50, v51, v220);
      MEMORY[0x277D82BE0](v231);
      v122 = 7;
      v52 = swift_allocObject();
      v53 = v193;
      v54 = v231;
      v123 = v52;
      v52[2] = v192;
      v52[3] = v53;
      v52[4] = v54;
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();
      v120 = 17;
      v125 = swift_allocObject();
      *(v125 + 16) = 32;
      v126 = swift_allocObject();
      *(v126 + 16) = 8;
      v121 = 32;
      v55 = swift_allocObject();
      v56 = v123;
      v124 = v55;
      *(v55 + 16) = v194;
      *(v55 + 24) = v56;
      v57 = swift_allocObject();
      v58 = v124;
      v128 = v57;
      *(v57 + 16) = v195;
      *(v57 + 24) = v58;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v127 = _allocateUninitializedArray<A>(_:)();
      v129 = v59;

      v60 = v125;
      v61 = v129;
      *v129 = v196;
      v61[1] = v60;

      v62 = v126;
      v63 = v129;
      v129[2] = v197;
      v63[3] = v62;

      v64 = v128;
      v65 = v129;
      v129[4] = v198;
      v65[5] = v64;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v131, v132))
      {
        v66 = v216;
        v113 = static UnsafeMutablePointer.allocate(capacity:)();
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v114 = createStorage<A>(capacity:type:)(0);
        v115 = createStorage<A>(capacity:type:)(1);
        v116 = &v246;
        v246 = v113;
        v117 = &v245;
        v245 = v114;
        v118 = &v244;
        v244 = v115;
        serialize(_:at:)(2, &v246);
        serialize(_:at:)(1, v116);
        v242 = v196;
        v243 = v125;
        closure #1 in osLogInternal(_:log:type:)(&v242, v116, v117, v118);
        v119 = v66;
        if (v66)
        {

          __break(1u);
        }

        else
        {
          v242 = v197;
          v243 = v126;
          closure #1 in osLogInternal(_:log:type:)(&v242, &v246, &v245, &v244);
          v110 = 0;
          v242 = v198;
          v243 = v128;
          closure #1 in osLogInternal(_:log:type:)(&v242, &v246, &v245, &v244);
          v109 = 0;
          _os_log_impl(&dword_2686B1000, v131, v132, "#PersonProvidingIntent Found unsupported intent type: %s, logging error but not throwing.", v113, 0xCu);
          destroyStorage<A>(_:count:)(v114, 0, v112);
          destroyStorage<A>(_:count:)(v115, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v113, MEMORY[0x277D84B78]);

          v111 = v109;
        }
      }

      else
      {
        v67 = v216;

        v111 = v67;
      }

      v108 = v111;
      MEMORY[0x277D82BD8](v131);
      (*(v221 + 8))(v226, v220);
      v166 = v108;
    }
  }

  v68 = v224;
  v94 = v166;
  v69 = Logger.payments.unsafeMutableAddressor();
  (*(v221 + 16))(v68, v69, v220);
  MEMORY[0x277D82BE0](v231);
  v97 = 7;
  v70 = swift_allocObject();
  v71 = v193;
  v72 = v231;
  v98 = v70;
  v70[2] = v192;
  v70[3] = v71;
  v70[4] = v72;
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();
  v95 = 17;
  v100 = swift_allocObject();
  *(v100 + 16) = 32;
  v101 = swift_allocObject();
  *(v101 + 16) = 8;
  v96 = 32;
  v73 = swift_allocObject();
  v74 = v98;
  v99 = v73;
  *(v73 + 16) = v211;
  *(v73 + 24) = v74;
  v75 = swift_allocObject();
  v76 = v99;
  v103 = v75;
  *(v75 + 16) = v212;
  *(v75 + 24) = v76;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v102 = _allocateUninitializedArray<A>(_:)();
  v104 = v77;

  v78 = v100;
  v79 = v104;
  *v104 = v213;
  v79[1] = v78;

  v80 = v101;
  v81 = v104;
  v104[2] = v214;
  v81[3] = v80;

  v82 = v103;
  v83 = v104;
  v104[4] = v215;
  v83[5] = v82;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v106, v107))
  {
    v84 = v94;
    v87 = static UnsafeMutablePointer.allocate(capacity:)();
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v88 = createStorage<A>(capacity:type:)(0);
    v89 = createStorage<A>(capacity:type:)(1);
    v90 = &v251;
    v251 = v87;
    v91 = &v250;
    v250 = v88;
    v92 = &v249;
    v249 = v89;
    serialize(_:at:)(2, &v251);
    serialize(_:at:)(1, v90);
    v247 = v213;
    v248 = v100;
    closure #1 in osLogInternal(_:log:type:)(&v247, v90, v91, v92);
    v93 = v84;
    if (v84)
    {

      __break(1u);
    }

    else
    {
      v247 = v214;
      v248 = v101;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v251, &v250, &v249);
      v85[1] = 0;
      v247 = v215;
      v248 = v103;
      closure #1 in osLogInternal(_:log:type:)(&v247, &v251, &v250, &v249);
      _os_log_impl(&dword_2686B1000, v106, v107, "#PersonProvidingIntent Updated intent: %s", v87, 0xCu);
      destroyStorage<A>(_:count:)(v88, 0, v86);
      destroyStorage<A>(_:count:)(v89, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v87, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v106);
  (*(v221 + 8))(v224, v220);
}

uint64_t implicit closure #3 in PersonProvidingIntent.updatePerson(with:parameterName:)(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = [a1 typeName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo22NSStringCompareOptionsV_Tt0gq5(0);

  return 0;
}

uint64_t sub_268807E20()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in PersonProvidingIntent.updatePerson(with:parameterName:)()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 24);
  return implicit closure #3 in PersonProvidingIntent.updatePerson(with:parameterName:)(*(v0 + 32));
}

uint64_t INSendPaymentIntent.catFamily.getter()
{
  v3 = 0;
  v2[2] = 0;
  v2[0] = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v2[1] = v2 - v2[0];
  v3 = v0;
  type metadata accessor for SendPaymentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  return CATWrapper.__allocating_init(options:globals:)();
}

id INSendPaymentIntent.person.getter()
{
  v1 = [v0 payee];

  return v1;
}

void INSendPaymentIntent.personSlot.getter(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SendPaymentSlots;
  *(a1 + 32) = &protocol witness table for SendPaymentSlots;
  *a1 = 0;
}

uint64_t ReferenceResolving.updateIntent(with:contactResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v34 = a4;
  v35 = a5;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v56 = 0;
  v64 = a4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay0A9Inference12ContactQueryVGSaySo8INPersonCGGMd, "rR");
  v42 = *(v45 - 8);
  v43 = v45 - 8;
  v36 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v44 = v15 - v36;
  v50 = type metadata accessor for ContactQuery();
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v38 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v39);
  v49 = v15 - v38;
  v63 = v15 - v38;
  v61 = v5;
  v62 = v6;
  v60 = v7;
  v59 = v8;
  ContactQuery.init()();

  ContactQuery.id.setter();
  static Transformer<>.transformer(contactResolver:)(v41);
  v52 = Transformer.transform.getter();
  v46 = v9;
  (*(v42 + 8))(v44, v45);
  v51 = _allocateUninitializedArray<A>(_:)();
  (*(v47 + 16))(v10, v49, v50);
  v11 = v51;
  _finalizeUninitializedArray<A>(_:)();
  v53 = v11;
  v58 = v11;
  v52(&v57, &v58);
  v54 = 0;
  v31 = v57;

  v29 = 0;
  v30 = type metadata accessor for INPerson();
  Array.subscript.getter();
  v32 = v55;

  v33 = [v32 siriMatches];
  if (v33)
  {
    v28 = v33;
    v24 = v33;
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v24);
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v23 = v26;
  MEMORY[0x277D82BD8](v32);
  v27 = v23;
  v22 = v23;
  v56 = v23;
  MEMORY[0x277D82BE0](v37);

  if (v22)
  {
    v21 = v22;
    v18 = v22;
    type metadata accessor for INPerson();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = isa;
  }

  else
  {
    v20 = 0;
  }

  v17 = v20;
  v12 = (*(*(v35 + 8) + 24))(v34);
  v15[1] = v13;
  v16 = MEMORY[0x26D620690](v12);

  [v37 setValue:v17 forKeyPath:v16];
  MEMORY[0x277D82BD8](v16);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v37);

  return (*(v47 + 8))(v49, v50);
}

uint64_t INRequestPaymentIntent.catFamily.getter()
{
  v3 = 0;
  v2[2] = 0;
  v2[0] = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v2[1] = v2 - v2[0];
  v3 = v0;
  type metadata accessor for RequestPaymentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  return CATWrapper.__allocating_init(options:globals:)();
}

id INRequestPaymentIntent.person.getter()
{
  v1 = [v0 payer];

  return v1;
}

void INRequestPaymentIntent.personSlot.getter(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for RequestPaymentSlots;
  *(a1 + 32) = &protocol witness table for RequestPaymentSlots;
  *a1 = 0;
}

uint64_t ReferenceResolving.runReferenceResolution(_:_:hasReferenceNode:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v51 = a4;
  v61 = a3;
  v63 = a2;
  v62 = a1;
  v52 = a3;
  v58 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v53 = 0;
  v82 = a4;
  v54 = type metadata accessor for Logger();
  v55 = *(v54 - 8);
  v56 = v55;
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v57 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v71 = &v22 - v59;
  v60 = &v22 - v59;
  v72 = type metadata accessor for RREntity();
  v64 = v72;
  v65 = *(v72 - 8);
  v70 = v65;
  v66 = v65;
  v8 = *(v65 + 64);
  v9 = MEMORY[0x28223BE20](v62);
  v67 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v67;
  v80 = v9;
  v79 = v11;
  v78 = v12;
  v77 = v5;
  v69 = v9[3];
  v68 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v69);
  (*(v68 + 16))(v69);
  if ((*(v70 + 48))(v71, 1, v72) == 1)
  {
    outlined destroy of RREntity?(v60);
    return v53;
  }

  else
  {
    (*(v66 + 32))(v67, v60, v64);
    if ((static RRUtil.shouldUseRREntity(_:rrEntity:)(v52 & 1) & 1) == 0)
    {
      goto LABEL_11;
    }

    v44 = RREntity.appBundleId.getter();
    v47 = v13;
    v14 = AppUtil.usoContactsBundleId.unsafeMutableAddressor();
    v45 = *v14;
    v46 = *(v14 + 1);

    v48 = MEMORY[0x26D620740](v44, v47, v45, v46);

    if (v48)
    {
      v15 = v57;
      v16 = Logger.payments.unsafeMutableAddressor();
      (*(v56 + 16))(v15, v16, v54);
      v42 = Logger.logObject.getter();
      v39 = v42;
      v41 = static os_log_type_t.debug.getter();
      v40 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v43 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v42, v41))
      {
        v17 = v53;
        v30 = static UnsafeMutablePointer.allocate(capacity:)();
        v26 = v30;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v28 = 0;
        v31 = createStorage<A>(capacity:type:)(0);
        v29 = v31;
        v32 = createStorage<A>(capacity:type:)(v28);
        v76 = v30;
        v75 = v31;
        v74 = v32;
        v33 = 0;
        v34 = &v76;
        serialize(_:at:)(0, &v76);
        serialize(_:at:)(v33, v34);
        v73 = v43;
        v35 = &v22;
        MEMORY[0x28223BE20](&v22);
        v36 = &v22 - 6;
        *(&v22 - 4) = v18;
        *(&v22 - 3) = &v75;
        *(&v22 - 2) = &v74;
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v38 = v17;
        if (v17)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v39, v40, "#ReferenceResolution Found common_Person entity, resolving to intent", v26, 2u);
          v24 = 0;
          destroyStorage<A>(_:count:)(v29, 0, v27);
          destroyStorage<A>(_:count:)(v32, v24, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v26, MEMORY[0x277D84B78]);

          v25 = v38;
        }
      }

      else
      {

        v25 = v53;
      }

      v23 = v25;

      (*(v56 + 8))(v57, v54);
      v19 = RREntity.id.getter();
      v22 = v20;
      (*(v50 + 16))(v19);

      (*(v66 + 8))(v67, v64);
      return v23;
    }

    else
    {
LABEL_11:
      (*(v66 + 8))(v67, v64);
      return v53;
    }
  }
}

uint64_t static RRUtil.shouldUseRREntity(_:rrEntity:)(char a1)
{
  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = RREntity.isConversational.getter();
  }

  return v2 & 1;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo22NSStringCompareOptionsV_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for NSStringCompareOptions();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_2688090E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268809128()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268809168()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in PersonProvidingIntent.updatePerson(with:parameterName:)()
{
  v3 = v0[2];
  v1 = v0[3];
  return implicit closure #7 in ContactDisambiguationStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(v0[4]);
}

uint64_t sub_26880922C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26880926C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2688092AC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2688092EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268809384()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2688093C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268809404()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_268809444()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2688094DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26880951C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined destroy of RREntity?(uint64_t a1)
{
  v3 = type metadata accessor for RREntity();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t static RREntity.makeEntities(for:)(void *a1)
{
  v16 = a1;
  v19 = 0;
  v18 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v15 = &v6 - v9;
  v10 = type metadata accessor for RREntity();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v16);
  v14 = &v6 - v13;
  v19 = &v6 - v13;
  v18 = v2;
  MEMORY[0x277D82BE0](v2);
  RREntity.init(from:)(v16, v15);
  v17 = 0;
  (*(v11 + 56))(v15, 0, 1, v10);
  if ((*(v11 + 48))(v15, 1, v10) == 1)
  {
    outlined destroy of RREntity?(v15);
    return _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    (*(v11 + 32))(v14, v15, v10);
    v6 = _allocateUninitializedArray<A>(_:)();
    (*(v11 + 16))(v3, v14, v10);
    v4 = v6;
    _finalizeUninitializedArray<A>(_:)();
    v7 = v4;
    (*(v11 + 8))(v14, v10);
    return v7;
  }
}

{
  v16 = a1;
  v19 = 0;
  v18 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v15 = &v6 - v9;
  v10 = type metadata accessor for RREntity();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v16);
  v14 = &v6 - v13;
  v19 = &v6 - v13;
  v18 = v2;
  MEMORY[0x277D82BE0](v2);
  RREntity.init(from:)(v16, v15);
  v17 = 0;
  (*(v11 + 56))(v15, 0, 1, v10);
  if ((*(v11 + 48))(v15, 1, v10) == 1)
  {
    outlined destroy of RREntity?(v15);
    return _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    (*(v11 + 32))(v14, v15, v10);
    v6 = _allocateUninitializedArray<A>(_:)();
    (*(v11 + 16))(v3, v14, v10);
    v4 = v6;
    _finalizeUninitializedArray<A>(_:)();
    v7 = v4;
    (*(v11 + 8))(v14, v10);
    return v7;
  }
}

uint64_t static RREntity.makeDisambiguationGroup(with:)(uint64_t a1)
{
  v95 = a1;
  v64 = partial apply for implicit closure #4 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  v65 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_3;
  v66 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v67 = partial apply for closure #1 in OSLogArguments.append(_:);
  v68 = partial apply for closure #1 in OSLogArguments.append(_:);
  v69 = partial apply for closure #1 in OSLogArguments.append(_:);
  v118 = 0;
  v117 = 0;
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v97 = v113;
  memset(v113, 0, sizeof(v113));
  v98 = 0;
  v101 = 0;
  v100 = 0;
  v93 = 0;
  v70 = type metadata accessor for Logger();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v74 = v29 - v73;
  v1 = type metadata accessor for GroupIdentifier();
  v75 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v76 = v29 - v75;
  v77 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v93);
  v78 = v29 - v77;
  v92 = type metadata accessor for RREntity();
  v79 = *(v92 - 8);
  v80 = v92 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v93);
  v82 = v29 - v81;
  v83 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v84 = v29 - v83;
  v118 = v29 - v83;
  v90 = type metadata accessor for UUID();
  v86 = *(v90 - 8);
  v87 = v90 - 8;
  v85 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v95);
  v88 = v29 - v85;
  v117 = v4;
  UUID.init()();
  v89 = UUID.uuidString.getter();
  v91 = v5;
  v115 = v89;
  v116 = v5;
  (*(v86 + 8))(v88, v90);
  v94 = swift_allocObject();
  v114 = v94 + 16;
  v6 = _allocateUninitializedArray<A>(_:)();
  v7 = v95;
  *(v94 + 16) = v6;
  v111 = v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v8 = lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  MEMORY[0x26D620820](&v112, v96, v8);
  v110 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySaySo8INPersonCGGMd, "HQ");
  EnumeratedSequence.makeIterator()();
  for (i = v98; ; i = v53)
  {
    v61 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVySaySo8INPersonCG_GMd, &_ss18EnumeratedSequenceV8IteratorVySaySo8INPersonCG_GMR);
    EnumeratedSequence.Iterator.next()();
    v62 = v108;
    v63 = v109;
    if (!v109)
    {
      break;
    }

    v59 = v62;
    v60 = v63;
    v9 = v61;
    v56 = v63;
    v55 = v62;
    v101 = v62;
    v100 = v63;
    MEMORY[0x277D82BE0](v63);

    GroupIdentifier.init(id:seq:)();
    v10 = static AppUtil.usoContactsBundleId.getter();
    RREntity.init(from:groupId:appBundleId:)(v56, v76, v10, v11, v78);
    v57 = v9;
    v58 = v9;
    if (v9)
    {
      v29[0] = 0;

      (*(v79 + 56))(v78, 1, 1, v92);
      v54 = v29[0];
    }

    else
    {
      (*(v79 + 56))(v78, 0, 1, v92);
      v54 = v57;
    }

    v53 = v54;
    if ((*(v79 + 48))(v78, 1, v92) == 1)
    {
      outlined destroy of RREntity?(v78);
    }

    else
    {
      (*(v79 + 32))(v84, v78, v92);
      (*(v79 + 16))(v82, v84, v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
      Array.append(_:)();
      (*(v79 + 8))(v84, v92);
    }

    MEMORY[0x277D82BD8](v56);
  }

  v12 = v74;
  outlined destroy of [SFCardSection](v113);
  v13 = Logger.payments.unsafeMutableAddressor();
  (*(v71 + 16))(v12, v13, v70);

  v41 = 32;
  v42 = 7;
  v14 = swift_allocObject();
  v15 = v94;
  v43 = v14;
  *(v14 + 16) = v64;
  *(v14 + 24) = v15;

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v40 = 17;
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v16 = swift_allocObject();
  v17 = v43;
  v44 = v16;
  *(v16 + 16) = v65;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v44;
  v48 = v18;
  *(v18 + 16) = v66;
  *(v18 + 24) = v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v47 = _allocateUninitializedArray<A>(_:)();
  v49 = v20;

  v21 = v45;
  v22 = v49;
  *v49 = v67;
  v22[1] = v21;

  v23 = v46;
  v24 = v49;
  v49[2] = v68;
  v24[3] = v23;

  v25 = v48;
  v26 = v49;
  v49[4] = v69;
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v51, v52))
  {
    v27 = v61;
    v33 = static UnsafeMutablePointer.allocate(capacity:)();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = createStorage<A>(capacity:type:)(0);
    v35 = createStorage<A>(capacity:type:)(1);
    v36 = &v106;
    v106 = v33;
    v37 = &v105;
    v105 = v34;
    v38 = &v104;
    v104 = v35;
    serialize(_:at:)(2, &v106);
    serialize(_:at:)(1, v36);
    v102 = v67;
    v103 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v102, v36, v37, v38);
    v39 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v102 = v68;
      v103 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v102, &v106, &v105, &v104);
      v31 = 0;
      v102 = v69;
      v103 = v48;
      closure #1 in osLogInternal(_:log:type:)(&v102, &v106, &v105, &v104);
      _os_log_impl(&dword_2686B1000, v51, v52, "#RREntity.makeDisambiguationGroup returning entities: %s", v33, 0xCu);
      destroyStorage<A>(_:count:)(v34, 0, v32);
      destroyStorage<A>(_:count:)(v35, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v33, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v51);
  (*(v71 + 8))(v74, v70);
  v29[1] = &v107;
  swift_beginAccess();
  v30 = *(v94 + 16);

  swift_endAccess();

  return v30;
}

uint64_t static RREntity.makeDisambiguationGroup(with:locale:)(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v91 = a1;
  v74 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  memset(v108, 0, sizeof(v108));
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v93 = 0;
  v95 = 0;
  v61 = type metadata accessor for Logger();
  v62 = *(v61 - 8);
  v63 = v62;
  v2 = *(v62 + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v64 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74);
  v66 = &v22 - v65;
  v90 = type metadata accessor for RREntity();
  v67 = v90;
  v68 = *(v90 - 8);
  v69 = v68;
  v70 = *(v68 + 64);
  v4 = MEMORY[0x28223BE20](v74);
  v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = &v22 - v72;
  MEMORY[0x28223BE20](v4);
  v73 = &v22 - v72;
  v115 = &v22 - v72;
  v75 = type metadata accessor for GroupIdentifier();
  v76 = *(v75 - 8);
  v77 = v76;
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  v78 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v78;
  v85 = type metadata accessor for UUID();
  v80 = v85;
  v81 = *(v85 - 8);
  v83 = v81;
  v7 = *(v81 + 64);
  v8 = MEMORY[0x28223BE20](v91);
  v84 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v84;
  v113 = v8;
  v112 = v10;
  UUID.init()();
  v86 = UUID.uuidString.getter();
  v87 = v11;
  v110 = v86;
  v111 = v11;
  v88 = *(v83 + 8);
  v89 = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v88(v84, v85);
  v109 = Array.init()();
  v106 = v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  v12 = lazy protocol witness table accessor for type [App] and conformance [A]();
  MEMORY[0x26D620820](&v107, v92, v12);
  v105 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVySay17SiriAppResolution0D0CGGMd, &_ss18EnumeratedSequenceVySay17SiriAppResolution0D0CGGMR);
  EnumeratedSequence.makeIterator()();
  for (i = v93; ; i = v50)
  {
    v58 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVySay17SiriAppResolution0E0CG_GMd, &_ss18EnumeratedSequenceV8IteratorVySay17SiriAppResolution0E0CG_GMR);
    EnumeratedSequence.Iterator.next()();
    v59 = v103;
    v60 = v104;
    if (!v104)
    {
      break;
    }

    v56 = v59;
    v57 = v60;
    v52 = v60;
    v53 = v59;
    v102 = v59;
    v101 = v60;
    v54 = App.toUsoEntityBuilder(locale:)(v79);
    v100 = v54;
    v55 = MEMORY[0x26D61F7C0]();
    if (v55)
    {
      v51 = v55;
      v49 = v55;
      v95 = v55;

      GroupIdentifier.init(id:seq:)();
      UUID.init()();
      v45 = UUID.uuidString.getter();
      v46 = v13;
      v88(v82, v80);
      v14 = AppUtil.usoAppBundleId.unsafeMutableAddressor();
      v47 = *v14;
      v48 = *(v14 + 1);

      (*(v77 + 16))(v66, v78, v75);
      (*(v77 + 56))(v66, 0, 1, v75);
      v21 = v66;
      v20 = 0xF000000000000000;
      RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();
      (*(v69 + 16))(v71, v73, v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
      Array.append(_:)();
      (*(v69 + 8))(v73, v67);
      (*(v77 + 8))(v78, v75);

      v50 = v58;
    }

    else
    {
      v15 = v64;
      v16 = Logger.payments.unsafeMutableAddressor();
      (*(v63 + 16))(v15, v16, v61);
      v43 = Logger.logObject.getter();
      v40 = v43;
      v42 = static os_log_type_t.error.getter();
      v41 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v44 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v43, v42))
      {
        v17 = v58;
        v30 = static UnsafeMutablePointer.allocate(capacity:)();
        v26 = v30;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v28 = 0;
        v31 = createStorage<A>(capacity:type:)(0);
        v29 = v31;
        v32 = createStorage<A>(capacity:type:)(v28);
        v99 = v30;
        v98 = v31;
        v97 = v32;
        v33 = 0;
        v34 = &v99;
        serialize(_:at:)(0, &v99);
        serialize(_:at:)(v33, v34);
        v96 = v44;
        v37 = &v22;
        MEMORY[0x28223BE20](&v22);
        v35 = &v22 - 6;
        *(&v22 - 4) = v18;
        *(&v22 - 3) = &v98;
        v20 = &v97;
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v38 = v17;
        v39 = v37;
        if (v17)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v40, v41, "#RREntity.makeDisambiguationGroup apps failed to convert UsoEntityBuilder to UsoEntity", v26, 2u);
          v24 = 0;
          destroyStorage<A>(_:count:)(v29, 0, v27);
          destroyStorage<A>(_:count:)(v32, v24, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v26, MEMORY[0x277D84B78]);

          v25 = v38;
        }
      }

      else
      {

        v25 = v58;
      }

      v23 = v25;

      (*(v63 + 8))(v64, v61);

      v50 = v23;
    }
  }

  outlined destroy of [SFCardSection](v108);
  v22 = v109;

  outlined destroy of [SFCardSection](&v109);

  return v22;
}

uint64_t RREntity.isConversational.getter()
{
  v17 = 0;
  v6 = 0;
  v12 = type metadata accessor for RRMetadata();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v13 = &v4 - v5;
  v17 = v0;
  v1 = RREntity.metadata.getter();
  v14 = &v16;
  v16 = v1;
  v7 = *MEMORY[0x277D5FE88];
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  (*(*(v2 - 8) + 104))(v13, v7);
  (*(v10 + 104))(v13, *MEMORY[0x277D5FDF0], v12);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel10RRMetadataOGMd, &_sSay32SiriReferenceResolutionDataModel10RRMetadataOGMR);
  v9 = lazy protocol witness table accessor for type [RRMetadata] and conformance [A]();
  lazy protocol witness table accessor for type RRMetadata and conformance RRMetadata();
  v15 = Sequence<>.contains(_:)();
  (*(v10 + 8))(v13, v12);
  outlined destroy of [SFCardSection](v14);
  return v15 & 1;
}

uint64_t RREntity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v70 = a1;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v50 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v51 = v28 - v50;
  v68 = 0;
  v64 = type metadata accessor for UUID();
  v60 = *(v64 - 8);
  v61 = v64 - 8;
  v52 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v62 = v28 - v52;
  v53 = type metadata accessor for RREntity();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v70);
  v57 = v28 - v56;
  v58 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v59 = v28 - v58;
  v80 = v28 - v58;
  v79 = v5;
  UUID.init()();
  v63 = UUID.uuidString.getter();
  v65 = v6;
  (*(v60 + 8))(v62, v64);
  v7 = AppUtil.usoAppBundleId.unsafeMutableAddressor();
  v66 = *v7;
  v67 = *(v7 + 1);

  type metadata accessor for UsoEntity();
  v8 = v69;
  v9 = static UsoEntity.from(_:)(v70);
  v71 = v8;
  v72 = v9;
  v73 = v8;
  if (v8)
  {
    v45 = v73;

    MEMORY[0x26D621420](v45);
    v78 = v45;
    v35 = 0;
    v32 = 1;
    v12 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v29 = &v76;
    v76 = v12;
    v77 = v13;
    v34 = "";
    v36 = 1;
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v35, 1);
    v28[1] = v14._object;
    MEMORY[0x26D620F90](v14._countAndFlagsBits);

    type metadata accessor for INPaymentAccount();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v34, v35, v36 & 1);
    v28[2] = v15._object;
    MEMORY[0x26D620F90](v15._countAndFlagsBits);

    v31 = v76;
    v30 = v77;

    outlined destroy of String.UTF8View(v29);
    v41 = MEMORY[0x26D620710](v31, v30);
    v42 = v16;
    v17 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v38 = &v74;
    v74 = v17;
    v75 = v18;
    v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v34, v35, v36 & 1);
    object = v19._object;
    MEMORY[0x26D620F90](v19._countAndFlagsBits);

    type metadata accessor for UsoEntity_common_PaymentAccount();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v34, v35, v36 & 1);
    v37 = v20._object;
    MEMORY[0x26D620F90](v20._countAndFlagsBits);

    v40 = v74;
    v39 = v75;

    outlined destroy of String.UTF8View(v38);
    v44 = MEMORY[0x26D620710](v40, v39);
    v43 = v21;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    v22 = swift_allocError();
    v23 = v42;
    v24 = v43;
    v25 = v22;
    v26 = v44;
    v46 = v25;
    *v27 = v41;
    *(v27 + 8) = v23;
    *(v27 + 16) = v26;
    *(v27 + 24) = v24;
    *(v27 + 32) = 0;
    *(v27 + 40) = 0;
    *(v27 + 48) = 5;
    swift_willThrow();

    return MEMORY[0x277D82BD8](v70);
  }

  else
  {
    v47 = v72;
    v48 = 0;
    v10 = type metadata accessor for GroupIdentifier();
    (*(*(v10 - 8) + 56))(v51, 1);
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();
    (*(v54 + 32))(v59, v57, v53);
    (*(v54 + 16))(v49, v59, v53);
    MEMORY[0x277D82BD8](v70);
    return (*(v54 + 8))(v59, v53);
  }
}

{
  v49 = a2;
  v70 = a1;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v50 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v51 = v28 - v50;
  v68 = 0;
  v64 = type metadata accessor for UUID();
  v60 = *(v64 - 8);
  v61 = v64 - 8;
  v52 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v62 = v28 - v52;
  v53 = type metadata accessor for RREntity();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v70);
  v57 = v28 - v56;
  v58 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v59 = v28 - v58;
  v80 = v28 - v58;
  v79 = v5;
  UUID.init()();
  v63 = UUID.uuidString.getter();
  v65 = v6;
  (*(v60 + 8))(v62, v64);
  v7 = AppUtil.usoAppBundleId.unsafeMutableAddressor();
  v66 = *v7;
  v67 = *(v7 + 1);

  type metadata accessor for UsoEntity();
  v8 = v69;
  v9 = static UsoEntity.from(_:)(v70);
  v71 = v8;
  v72 = v9;
  v73 = v8;
  if (v8)
  {
    v45 = v73;

    MEMORY[0x26D621420](v45);
    v78 = v45;
    v35 = 0;
    v32 = 1;
    v12 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v29 = &v76;
    v76 = v12;
    v77 = v13;
    v34 = "";
    v36 = 1;
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v35, 1);
    v28[1] = v14._object;
    MEMORY[0x26D620F90](v14._countAndFlagsBits);

    type metadata accessor for INPaymentRecord();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v34, v35, v36 & 1);
    v28[2] = v15._object;
    MEMORY[0x26D620F90](v15._countAndFlagsBits);

    v31 = v76;
    v30 = v77;

    outlined destroy of String.UTF8View(v29);
    v41 = MEMORY[0x26D620710](v31, v30);
    v42 = v16;
    v17 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v38 = &v74;
    v74 = v17;
    v75 = v18;
    v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v34, v35, v36 & 1);
    object = v19._object;
    MEMORY[0x26D620F90](v19._countAndFlagsBits);

    type metadata accessor for UsoEntity_common_Payment();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v34, v35, v36 & 1);
    v37 = v20._object;
    MEMORY[0x26D620F90](v20._countAndFlagsBits);

    v40 = v74;
    v39 = v75;

    outlined destroy of String.UTF8View(v38);
    v44 = MEMORY[0x26D620710](v40, v39);
    v43 = v21;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    v22 = swift_allocError();
    v23 = v42;
    v24 = v43;
    v25 = v22;
    v26 = v44;
    v46 = v25;
    *v27 = v41;
    *(v27 + 8) = v23;
    *(v27 + 16) = v26;
    *(v27 + 24) = v24;
    *(v27 + 32) = 0;
    *(v27 + 40) = 0;
    *(v27 + 48) = 5;
    swift_willThrow();

    return MEMORY[0x277D82BD8](v70);
  }

  else
  {
    v47 = v72;
    v48 = 0;
    v10 = type metadata accessor for GroupIdentifier();
    (*(*(v10 - 8) + 56))(v51, 1);
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();
    (*(v54 + 32))(v59, v57, v53);
    (*(v54 + 16))(v49, v59, v53);
    MEMORY[0x277D82BD8](v70);
    return (*(v54 + 8))(v59, v53);
  }
}

uint64_t sub_26880C5A8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t RREntity.init(from:groupId:appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a5;
  v80 = a1;
  v64 = a2;
  v63 = a3;
  v72 = a4;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v89 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v60 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v61 = v35 - v60;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMd, &_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMR);
  v75 = *(v78 - 8);
  v76 = v78 - 8;
  v62 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78);
  v77 = v35 - v62;
  v65 = type metadata accessor for RREntity();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65);
  v69 = v35 - v68;
  v70 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35 - v68);
  v71 = v35 - v70;
  v96 = v35 - v70;
  v95 = a1;
  v94 = v8;
  v92 = v9;
  v93 = v10;
  v11 = INPerson.uniqueContactIdentifier.getter();
  v12 = v77;
  v73 = v11;
  v74 = v13;

  v14 = Transformer<>.transformer.unsafeMutableAddressor();
  (*(v75 + 16))(v12, v14, v78);
  v82 = Transformer.transform.getter();
  v79 = v15;
  (*(v75 + 8))(v77, v78);
  v16 = v81;
  v91 = v80;
  v82(&v90, &v91);
  v83 = v16;
  v84 = v16;
  if (v16)
  {
    v51 = v84;

    MEMORY[0x26D621420](v51);
    v89 = v51;
    v52 = 0;
    v39 = 1;
    v18 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v36 = &v87;
    v87 = v18;
    v88 = v19;
    v41 = "";
    v42 = 1;
    v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v52, 1);
    v35[0] = v20._object;
    MEMORY[0x26D620F90](v20._countAndFlagsBits);

    type metadata accessor for INPerson();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v41, v52, v42 & 1);
    v35[1] = v21._object;
    MEMORY[0x26D620F90](v21._countAndFlagsBits);

    v38 = v87;
    v37 = v88;

    outlined destroy of String.UTF8View(v36);
    v47 = MEMORY[0x26D620710](v38, v37);
    v48 = v22;
    v23 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v44 = &v85;
    v85 = v23;
    v86 = v24;
    v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v41, v52, v42 & 1);
    object = v25._object;
    MEMORY[0x26D620F90](v25._countAndFlagsBits);

    type metadata accessor for UsoEntity();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v41, v52, v42 & 1);
    v43 = v26._object;
    MEMORY[0x26D620F90](v26._countAndFlagsBits);

    v46 = v85;
    v45 = v86;

    outlined destroy of String.UTF8View(v44);
    v50 = MEMORY[0x26D620710](v46, v45);
    v49 = v27;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    v28 = swift_allocError();
    v29 = v48;
    v30 = v49;
    v31 = v28;
    v32 = v50;
    v53 = v31;
    *v33 = v47;
    *(v33 + 8) = v29;
    *(v33 + 16) = v32;
    *(v33 + 24) = v30;
    *(v33 + 32) = 0;
    *(v33 + 40) = 0;
    *(v33 + 48) = 5;
    swift_willThrow();

    v34 = type metadata accessor for GroupIdentifier();
    (*(*(v34 - 8) + 8))(v64);
    return MEMORY[0x277D82BD8](v80);
  }

  else
  {
    v54 = v90;

    v55 = 0;
    v58 = type metadata accessor for GroupIdentifier();
    v56 = *(v58 - 8);
    v57 = v58 - 8;
    (*(v56 + 16))(v61, v64);
    (*(v56 + 56))(v61, 0, 1, v58);
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();
    (*(v66 + 32))(v71, v69, v65);
    (*(v66 + 16))(v59, v71, v65);

    (*(v56 + 8))(v64, v58);
    MEMORY[0x277D82BD8](v80);
    return (*(v66 + 8))(v71, v65);
  }
}

uint64_t sub_26880CE58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_3()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
  v1 = lazy protocol witness table accessor for type [RREntity] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type [RREntity] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [RREntity] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RREntity] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [RREntity] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26880CFE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26880D020()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [RRMetadata] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [RRMetadata] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RRMetadata] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay32SiriReferenceResolutionDataModel10RRMetadataOGMd, &_sSay32SiriReferenceResolutionDataModel10RRMetadataOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [RRMetadata] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type RRMetadata and conformance RRMetadata()
{
  v2 = lazy protocol witness table cache variable for type RRMetadata and conformance RRMetadata;
  if (!lazy protocol witness table cache variable for type RRMetadata and conformance RRMetadata)
  {
    type metadata accessor for RRMetadata();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RRMetadata and conformance RRMetadata);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for INPaymentRecord()
{
  v2 = lazy cache variable for type metadata for INPaymentRecord;
  if (!lazy cache variable for type metadata for INPaymentRecord)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INPaymentRecord);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t SearchForAccountsCATs.confirmSlotValue(slot:slotValue:completion:)(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v32 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v39);
  v33 = v26 - v32;
  v34 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v41 = v26 - v34;
  v51 = v7;
  v50 = v8;
  v48 = v9;
  v49 = v10;
  v47 = v4;
  v40 = 1;
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ConfirmSlotValue", 0x22uLL, 1);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v37 = _allocateUninitializedArray<A>(_:)();
  v38 = v11;
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v40 & 1);
  v13 = v39;
  v14 = v41;
  *v38 = v12;
  outlined init with copy of SpeakableString?(v13, v14);
  v42 = type metadata accessor for SpeakableString();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = *(v43 + 48);
  v46 = v43 + 48;
  if (v45(v41, v40) == 1)
  {
    outlined destroy of SpeakableString?(v41);
    v25 = v38;
    v38[1]._countAndFlagsBits = 0;
    v25[1]._object = 0;
    v25[2]._countAndFlagsBits = 0;
    v25[2]._object = 0;
  }

  else
  {
    v15 = v38;
    v38[2]._object = v42;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15[1]._countAndFlagsBits);
    (*(v43 + 32))(boxed_opaque_existential_1, v41, v42);
  }

  v27 = v38 + 4;
  v28 = 1;
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slotValue", 9uLL, 1);
  v18 = v29;
  v19 = v33;
  v38[3] = v17;
  outlined init with copy of SpeakableString?(v18, v19);
  if ((v45)(v33, v28, v42) == 1)
  {
    outlined destroy of SpeakableString?(v33);
    v24 = v38;
    v38[4]._countAndFlagsBits = 0;
    v24[4]._object = 0;
    v24[5]._countAndFlagsBits = 0;
    v24[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v27->_countAndFlagsBits;
    v38[5]._object = v42;
    v21 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v43 + 32))(v21, v33, v42);
  }

  v22 = v37;
  _finalizeUninitializedArray<A>(_:)();
  v26[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v26[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.confirmSlotValue(slot:slotValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v5 = v4[2];

  return MEMORY[0x2822009F8](SearchForAccountsCATs.confirmSlotValue(slot:slotValue:), 0);
}

uint64_t SearchForAccountsCATs.confirmSlotValue(slot:slotValue:)()
{
  v19 = v0[11];
  v18 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ConfirmSlotValue", 0x22uLL, 1);
  v0[12] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v17 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v18, v19);
  v20 = type metadata accessor for SpeakableString();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v19, 1) == 1)
  {
    outlined destroy of SpeakableString?(v16[11]);
    v17[1]._countAndFlagsBits = 0;
    v17[1]._object = 0;
    v17[2]._countAndFlagsBits = 0;
    v17[2]._object = 0;
  }

  else
  {
    v15 = v16[11];
    v17[2]._object = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17[1]._countAndFlagsBits);
    (*(v21 + 32))(boxed_opaque_existential_1, v15, v20);
  }

  v14 = v16[10];
  v13 = v16[8];
  v17[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slotValue", 9uLL, 1);
  outlined init with copy of SpeakableString?(v13, v14);
  if ((v22)(v14, 1, v20) == 1)
  {
    outlined destroy of SpeakableString?(v16[10]);
    v17[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  else
  {
    v12 = v16[10];
    v17[5]._object = v20;
    v4 = __swift_allocate_boxed_opaque_existential_1(&v17[4]._countAndFlagsBits);
    (*(v21 + 32))(v4, v12, v20);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v10 = KeyValuePairs.init(dictionaryLiteral:)();
  v16[13] = v10;
  v11 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v5 = *(MEMORY[0x277D55BF0] + 4);
  v6 = swift_task_alloc();
  v16[14] = v6;
  *v6 = v16[2];
  v6[1] = PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:);
  v7 = v16[9];
  v8 = v16[6];

  return v11(v8, v1._countAndFlagsBits, v1._object, v10);
}

uint64_t SearchForAccountsCATs.confirmSlotValue(slot:slotValue:)@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v35 = a1;
  v27 = a2;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v35);
  v29 = v23 - v28;
  v30 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v37 = v23 - v30;
  v45 = v6;
  v44 = v7;
  v43 = v3;
  v36 = 1;
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ConfirmSlotValue", 0x22uLL, 1);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v33 = _allocateUninitializedArray<A>(_:)();
  v34 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v36 & 1);
  v10 = v35;
  v11 = v37;
  *v34 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v38 = type metadata accessor for SpeakableString();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = *(v39 + 48);
  v42 = v39 + 48;
  if (v41(v37, v36) == 1)
  {
    outlined destroy of SpeakableString?(v37);
    v22 = v34;
    v34[1]._countAndFlagsBits = 0;
    v22[1]._object = 0;
    v22[2]._countAndFlagsBits = 0;
    v22[2]._object = 0;
  }

  else
  {
    v12 = v34;
    v34[2]._object = v38;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v39 + 32))(boxed_opaque_existential_1, v37, v38);
  }

  v24 = v34 + 4;
  v25 = 1;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slotValue", 9uLL, 1);
  v15 = v27;
  v16 = v29;
  v34[3] = v14;
  outlined init with copy of SpeakableString?(v15, v16);
  if ((v41)(v29, v25, v38) == 1)
  {
    outlined destroy of SpeakableString?(v29);
    v21 = v34;
    v34[4]._countAndFlagsBits = 0;
    v21[4]._object = 0;
    v21[5]._countAndFlagsBits = 0;
    v21[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v24->_countAndFlagsBits;
    v34[5]._object = v38;
    v18 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v39 + 32))(v18, v29, v38);
  }

  v19 = v33;
  _finalizeUninitializedArray<A>(_:)();
  v23[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v23[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.disambiguateSlotValue(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
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
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#DisambiguateSlotValue", 0x27uLL, 1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  v20 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v22 & 1);
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

uint64_t SearchForAccountsCATs.disambiguateSlotValue(slot:)(uint64_t a1, uint64_t a2)
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

  return MEMORY[0x2822009F8](SearchForAccountsCATs.disambiguateSlotValue(slot:), 0);
}

uint64_t SearchForAccountsCATs.disambiguateSlotValue(slot:)()
{
  v15 = v0[8];
  v14 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#DisambiguateSlotValue", 0x27uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
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

uint64_t SearchForAccountsCATs.disambiguateSlotValue(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
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
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#DisambiguateSlotValue", 0x27uLL, 1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v16 = _allocateUninitializedArray<A>(_:)();
  v17 = v3;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v19 & 1);
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

uint64_t SearchForAccountsCATs.errorWithCode(errorCode:app:completion:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v22 - v28;
  v43 = MEMORY[0x28223BE20](v33);
  v42 = v5;
  v40 = v6;
  v41 = v7;
  v39 = v4;
  v34 = 1;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ErrorWithCode", 0x1FuLL, 1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  v32 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, v34 & 1);
  v10 = v33;
  v11 = v35;
  *v32 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if ((*(v37 + 48))(v35, v34) == 1)
  {
    outlined destroy of SpeakableString?(v35);
    v21 = v32;
    v32[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  else
  {
    v12 = v32;
    v32[2]._object = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v37 + 32))(boxed_opaque_existential_1, v35, v36);
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);
  v32[3] = v14;

  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v15 = type metadata accessor for SirikitApp();
    v16 = v32;
    v17 = v23;
    v32[5]._object = v15;
    v16[4]._countAndFlagsBits = v17;
  }

  else
  {
    v20 = v32;
    v32[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  v18 = v31;
  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.errorWithCode(errorCode:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v6 = v4[2];

  return MEMORY[0x2822009F8](SearchForAccountsCATs.errorWithCode(errorCode:app:), 0);
}

uint64_t SearchForAccountsCATs.errorWithCode(errorCode:app:)()
{
  v17 = v0[10];
  v16 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ErrorWithCode", 0x1FuLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v15 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, 1);
  outlined init with copy of SpeakableString?(v16, v17);
  v18 = type metadata accessor for SpeakableString();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    outlined destroy of SpeakableString?(v14[10]);
    v15[1]._countAndFlagsBits = 0;
    v15[1]._object = 0;
    v15[2]._countAndFlagsBits = 0;
    v15[2]._object = 0;
  }

  else
  {
    v13 = v14[10];
    v15[2]._object = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15[1]._countAndFlagsBits);
    (*(v19 + 32))(boxed_opaque_existential_1, v13, v18);
  }

  v12 = v14[8];
  v15[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v12)
  {
    v11 = v14[8];
    v15[5]._object = type metadata accessor for SirikitApp();
    v15[4]._countAndFlagsBits = v11;
  }

  else
  {
    v15[4]._countAndFlagsBits = 0;
    v15[4]._object = 0;
    v15[5]._countAndFlagsBits = 0;
    v15[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v14[12] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v14[13] = v5;
  *v5 = v14[2];
  v5[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v6 = v14[9];
  v7 = v14[6];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

uint64_t SearchForAccountsCATs.errorWithCode(errorCode:app:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v29 = a1;
  v23 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v19 - v24;
  v37 = MEMORY[0x28223BE20](v29);
  v36 = v4;
  v35 = v3;
  v30 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ErrorWithCode", 0x1FuLL, 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  v28 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, v30 & 1);
  v7 = v29;
  v8 = v31;
  *v28 = v6;
  outlined init with copy of SpeakableString?(v7, v8);
  v32 = type metadata accessor for SpeakableString();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, v30) == 1)
  {
    outlined destroy of SpeakableString?(v31);
    v18 = v28;
    v28[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  else
  {
    v9 = v28;
    v28[2]._object = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9[1]._countAndFlagsBits);
    (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);
  v28[3] = v11;

  if (v23)
  {
    v21 = v23;
    v20 = v23;
    v12 = type metadata accessor for SirikitApp();
    v13 = v28;
    v14 = v20;
    v28[5]._object = v12;
    v13[4]._countAndFlagsBits = v14;
  }

  else
  {
    v17 = v28;
    v28[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  v15 = v27;
  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.errorWithCodeForApplePay(errorCode:app:completion:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v22 - v28;
  v43 = MEMORY[0x28223BE20](v33);
  v42 = v5;
  v40 = v6;
  v41 = v7;
  v39 = v4;
  v34 = 1;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ErrorWithCodeForApplePay", 0x2AuLL, 1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  v32 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, v34 & 1);
  v10 = v33;
  v11 = v35;
  *v32 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if ((*(v37 + 48))(v35, v34) == 1)
  {
    outlined destroy of SpeakableString?(v35);
    v21 = v32;
    v32[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  else
  {
    v12 = v32;
    v32[2]._object = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v37 + 32))(boxed_opaque_existential_1, v35, v36);
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);
  v32[3] = v14;

  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v15 = type metadata accessor for SirikitApp();
    v16 = v32;
    v17 = v23;
    v32[5]._object = v15;
    v16[4]._countAndFlagsBits = v17;
  }

  else
  {
    v20 = v32;
    v32[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  v18 = v31;
  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.errorWithCodeForApplePay(errorCode:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v6 = v4[2];

  return MEMORY[0x2822009F8](SearchForAccountsCATs.errorWithCodeForApplePay(errorCode:app:), 0);
}

uint64_t SearchForAccountsCATs.errorWithCodeForApplePay(errorCode:app:)()
{
  v17 = v0[10];
  v16 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ErrorWithCodeForApplePay", 0x2AuLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v15 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, 1);
  outlined init with copy of SpeakableString?(v16, v17);
  v18 = type metadata accessor for SpeakableString();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    outlined destroy of SpeakableString?(v14[10]);
    v15[1]._countAndFlagsBits = 0;
    v15[1]._object = 0;
    v15[2]._countAndFlagsBits = 0;
    v15[2]._object = 0;
  }

  else
  {
    v13 = v14[10];
    v15[2]._object = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15[1]._countAndFlagsBits);
    (*(v19 + 32))(boxed_opaque_existential_1, v13, v18);
  }

  v12 = v14[8];
  v15[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v12)
  {
    v11 = v14[8];
    v15[5]._object = type metadata accessor for SirikitApp();
    v15[4]._countAndFlagsBits = v11;
  }

  else
  {
    v15[4]._countAndFlagsBits = 0;
    v15[4]._object = 0;
    v15[5]._countAndFlagsBits = 0;
    v15[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v14[12] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v14[13] = v5;
  *v5 = v14[2];
  v5[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v6 = v14[9];
  v7 = v14[6];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

uint64_t SearchForAccountsCATs.errorWithCodeForApplePay(errorCode:app:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v29 = a1;
  v23 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v19 - v24;
  v37 = MEMORY[0x28223BE20](v29);
  v36 = v4;
  v35 = v3;
  v30 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#ErrorWithCodeForApplePay", 0x2AuLL, 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  v28 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, v30 & 1);
  v7 = v29;
  v8 = v31;
  *v28 = v6;
  outlined init with copy of SpeakableString?(v7, v8);
  v32 = type metadata accessor for SpeakableString();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, v30) == 1)
  {
    outlined destroy of SpeakableString?(v31);
    v18 = v28;
    v28[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  else
  {
    v9 = v28;
    v28[2]._object = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9[1]._countAndFlagsBits);
    (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);
  v28[3] = v11;

  if (v23)
  {
    v21 = v23;
    v20 = v23;
    v12 = type metadata accessor for SirikitApp();
    v13 = v28;
    v14 = v20;
    v28[5]._object = v12;
    v13[4]._countAndFlagsBits = v14;
  }

  else
  {
    v17 = v28;
    v28[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  v15 = v27;
  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:completion:)(uint64_t a1, uint64_t a2, char a3)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#IntentHandledResponse", 0x27uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v7 = v3;
  *v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v7[2]._object = type metadata accessor for SirikitApp();
    v7[1]._countAndFlagsBits = a1;
  }

  else
  {
    v7[1]._countAndFlagsBits = 0;
    v7[1]._object = 0;
    v7[2]._countAndFlagsBits = 0;
    v7[2]._object = 0;
  }

  v7[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bankAccounts", 0xCuLL, 1);
  if (a3)
  {
    v7[4]._countAndFlagsBits = 0;
    v7[4]._object = 0;
    v7[5]._countAndFlagsBits = 0;
    v7[5]._object = 0;
  }

  else
  {
    v7[5]._object = MEMORY[0x277D839F8];
    v7[4]._countAndFlagsBits = a2;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 80) = v4;
  *(v5 + 25) = a4;
  *(v5 + 72) = a3;
  *(v5 + 64) = a2;
  *(v5 + 56) = a1;
  *(v5 + 32) = v5;
  *(v5 + 40) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 48) = 0;
  *(v5 + 40) = a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4 & 1;
  *(v5 + 48) = v4;
  v6 = *(v5 + 32);
  return MEMORY[0x2822009F8](SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:), 0);
}

uint64_t SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:)()
{
  v15 = v0[8];
  v0[4] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#IntentHandledResponse", 0x27uLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v14 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v15)
  {
    v12 = *(v13 + 64);
    v14[2]._object = type metadata accessor for SirikitApp();
    v14[1]._countAndFlagsBits = v12;
  }

  else
  {
    v14[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  v11 = *(v13 + 25);
  v14[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bankAccounts", 0xCuLL, 1);
  if (v11)
  {
    v14[4]._countAndFlagsBits = 0;
    v14[4]._object = 0;
    v14[5]._countAndFlagsBits = 0;
    v14[5]._object = 0;
  }

  else
  {
    v3 = *(v13 + 72);
    v14[5]._object = MEMORY[0x277D839F8];
    v14[4]._countAndFlagsBits = v3;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  *(v13 + 96) = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  *(v13 + 104) = v5;
  *v5 = *(v13 + 32);
  v5[1] = SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:);
  v6 = *(v13 + 80);
  v7 = *(v13 + 56);

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

{
  v8 = *v1;
  v2 = *(*v1 + 104);
  v8[4] = *v1;
  v9 = v8 + 4;
  v8[14] = v0;

  if (v0)
  {
    v6 = *v9;

    return MEMORY[0x2822009F8](SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:), 0);
  }

  else
  {
    v3 = v8[12];
    v7 = v8[11];

    v4 = *(*v9 + 8);

    return v4();
  }
}

{
  v1 = v0[12];
  v7 = v0[11];
  v0[4] = v0;

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[14];

  return v3();
}

uint64_t SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:)(uint64_t a1, uint64_t a2, char a3)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#IntentHandledResponse", 0x27uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v7 = v3;
  *v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v7[2]._object = type metadata accessor for SirikitApp();
    v7[1]._countAndFlagsBits = a1;
  }

  else
  {
    v7[1]._countAndFlagsBits = 0;
    v7[1]._object = 0;
    v7[2]._countAndFlagsBits = 0;
    v7[2]._object = 0;
  }

  v7[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bankAccounts", 0xCuLL, 1);
  if (a3)
  {
    v7[4]._countAndFlagsBits = 0;
    v7[4]._object = 0;
    v7[5]._countAndFlagsBits = 0;
    v7[5]._object = 0;
  }

  else
  {
    v7[5]._object = MEMORY[0x277D839F8];
    v7[4]._countAndFlagsBits = a2;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.labelForEnum(accountType:balanceType:completion:)(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v32 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v39);
  v33 = v26 - v32;
  v34 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v41 = v26 - v34;
  v51 = v7;
  v50 = v8;
  v48 = v9;
  v49 = v10;
  v47 = v4;
  v40 = 1;
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelForEnum", 0x1EuLL, 1);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v37 = _allocateUninitializedArray<A>(_:)();
  v38 = v11;
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, v40 & 1);
  v13 = v39;
  v14 = v41;
  *v38 = v12;
  outlined init with copy of SpeakableString?(v13, v14);
  v42 = type metadata accessor for SpeakableString();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = *(v43 + 48);
  v46 = v43 + 48;
  if (v45(v41, v40) == 1)
  {
    outlined destroy of SpeakableString?(v41);
    v25 = v38;
    v38[1]._countAndFlagsBits = 0;
    v25[1]._object = 0;
    v25[2]._countAndFlagsBits = 0;
    v25[2]._object = 0;
  }

  else
  {
    v15 = v38;
    v38[2]._object = v42;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15[1]._countAndFlagsBits);
    (*(v43 + 32))(boxed_opaque_existential_1, v41, v42);
  }

  v27 = v38 + 4;
  v28 = 1;
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType", 0xBuLL, 1);
  v18 = v29;
  v19 = v33;
  v38[3] = v17;
  outlined init with copy of SpeakableString?(v18, v19);
  if ((v45)(v33, v28, v42) == 1)
  {
    outlined destroy of SpeakableString?(v33);
    v24 = v38;
    v38[4]._countAndFlagsBits = 0;
    v24[4]._object = 0;
    v24[5]._countAndFlagsBits = 0;
    v24[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v27->_countAndFlagsBits;
    v38[5]._object = v42;
    v21 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v43 + 32))(v21, v33, v42);
  }

  v22 = v37;
  _finalizeUninitializedArray<A>(_:)();
  v26[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v26[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v5 = v4[2];

  return MEMORY[0x2822009F8](SearchForAccountsCATs.labelForEnum(accountType:balanceType:), 0);
}

uint64_t SearchForAccountsCATs.labelForEnum(accountType:balanceType:)()
{
  v19 = v0[11];
  v18 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelForEnum", 0x1EuLL, 1);
  v0[12] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v17 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
  outlined init with copy of SpeakableString?(v18, v19);
  v20 = type metadata accessor for SpeakableString();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v19, 1) == 1)
  {
    outlined destroy of SpeakableString?(v16[11]);
    v17[1]._countAndFlagsBits = 0;
    v17[1]._object = 0;
    v17[2]._countAndFlagsBits = 0;
    v17[2]._object = 0;
  }

  else
  {
    v15 = v16[11];
    v17[2]._object = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17[1]._countAndFlagsBits);
    (*(v21 + 32))(boxed_opaque_existential_1, v15, v20);
  }

  v14 = v16[10];
  v13 = v16[8];
  v17[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType", 0xBuLL, 1);
  outlined init with copy of SpeakableString?(v13, v14);
  if ((v22)(v14, 1, v20) == 1)
  {
    outlined destroy of SpeakableString?(v16[10]);
    v17[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  else
  {
    v12 = v16[10];
    v17[5]._object = v20;
    v4 = __swift_allocate_boxed_opaque_existential_1(&v17[4]._countAndFlagsBits);
    (*(v21 + 32))(v4, v12, v20);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v10 = KeyValuePairs.init(dictionaryLiteral:)();
  v16[13] = v10;
  v11 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v5 = *(MEMORY[0x277D55BF0] + 4);
  v6 = swift_task_alloc();
  v16[14] = v6;
  *v6 = v16[2];
  v6[1] = PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:);
  v7 = v16[9];
  v8 = v16[6];

  return v11(v8, v1._countAndFlagsBits, v1._object, v10);
}

uint64_t SearchForAccountsCATs.labelForEnum(accountType:balanceType:)@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v35 = a1;
  v27 = a2;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v35);
  v29 = v23 - v28;
  v30 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v37 = v23 - v30;
  v45 = v6;
  v44 = v7;
  v43 = v3;
  v36 = 1;
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelForEnum", 0x1EuLL, 1);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v33 = _allocateUninitializedArray<A>(_:)();
  v34 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, v36 & 1);
  v10 = v35;
  v11 = v37;
  *v34 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v38 = type metadata accessor for SpeakableString();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = *(v39 + 48);
  v42 = v39 + 48;
  if (v41(v37, v36) == 1)
  {
    outlined destroy of SpeakableString?(v37);
    v22 = v34;
    v34[1]._countAndFlagsBits = 0;
    v22[1]._object = 0;
    v22[2]._countAndFlagsBits = 0;
    v22[2]._object = 0;
  }

  else
  {
    v12 = v34;
    v34[2]._object = v38;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v39 + 32))(boxed_opaque_existential_1, v37, v38);
  }

  v24 = v34 + 4;
  v25 = 1;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType", 0xBuLL, 1);
  v15 = v27;
  v16 = v29;
  v34[3] = v14;
  outlined init with copy of SpeakableString?(v15, v16);
  if ((v41)(v29, v25, v38) == 1)
  {
    outlined destroy of SpeakableString?(v29);
    v21 = v34;
    v34[4]._countAndFlagsBits = 0;
    v21[4]._object = 0;
    v21[5]._countAndFlagsBits = 0;
    v21[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v24->_countAndFlagsBits;
    v34[5]._object = v38;
    v18 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v39 + 32))(v18, v29, v38);
  }

  v19 = v33;
  _finalizeUninitializedArray<A>(_:)();
  v23[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v23[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.labelForResponseSlot(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
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
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelForResponseSlot", 0x26uLL, 1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  v20 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v22 & 1);
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

uint64_t SearchForAccountsCATs.labelForResponseSlot(slot:)(uint64_t a1, uint64_t a2)
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

  return MEMORY[0x2822009F8](SearchForAccountsCATs.labelForResponseSlot(slot:), 0);
}

uint64_t SearchForAccountsCATs.labelForResponseSlot(slot:)()
{
  v15 = v0[8];
  v14 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelForResponseSlot", 0x26uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
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

uint64_t SearchForAccountsCATs.labelForResponseSlot(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
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
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelForResponseSlot", 0x26uLL, 1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v16 = _allocateUninitializedArray<A>(_:)();
  v17 = v3;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v19 & 1);
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

uint64_t SearchForAccountsCATs.labelOtherBalanceType(enumValue:completion:)(const void *a1, uint64_t a2, uint64_t a3)
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
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelOtherBalanceType", 0x27uLL, 1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  v20 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("enumValue", 9uLL, v22 & 1);
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

uint64_t SearchForAccountsCATs.labelOtherBalanceType(enumValue:)(uint64_t a1, uint64_t a2)
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

  return MEMORY[0x2822009F8](SearchForAccountsCATs.labelOtherBalanceType(enumValue:), 0);
}

uint64_t SearchForAccountsCATs.labelOtherBalanceType(enumValue:)()
{
  v15 = v0[8];
  v14 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelOtherBalanceType", 0x27uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("enumValue", 9uLL, 1);
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

uint64_t SearchForAccountsCATs.labelOtherBalanceType(enumValue:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
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
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#LabelOtherBalanceType", 0x27uLL, 1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v16 = _allocateUninitializedArray<A>(_:)();
  v17 = v3;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("enumValue", 9uLL, v19 & 1);
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

uint64_t SearchForAccountsCATs.noResultsResponse(app:completion:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#NoResultsResponse", 0x23uLL, 1);
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

uint64_t SearchForAccountsCATs.noResultsResponse(app:)(uint64_t a1, uint64_t a2)
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
  return MEMORY[0x2822009F8](SearchForAccountsCATs.noResultsResponse(app:), 0);
}

uint64_t SearchForAccountsCATs.noResultsResponse(app:)()
{
  v13 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#NoResultsResponse", 0x23uLL, 1);
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

uint64_t SearchForAccountsCATs.noResultsResponse(app:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#NoResultsResponse", 0x23uLL, 1);
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

uint64_t SearchForAccountsCATs.promptCancelled(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#PromptCancelled", 0x21uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.promptCancelled()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SearchForAccountsCATs.promptCancelled(), 0);
}

uint64_t SearchForAccountsCATs.promptCancelled()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#PromptCancelled", 0x21uLL, 1);
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
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#PromptCancelled", 0x21uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.promptForSlotValue(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
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
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#PromptForSlotValue", 0x24uLL, 1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  v20 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v22 & 1);
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

uint64_t SearchForAccountsCATs.promptForSlotValue(slot:)(uint64_t a1, uint64_t a2)
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

  return MEMORY[0x2822009F8](SearchForAccountsCATs.promptForSlotValue(slot:), 0);
}

uint64_t SearchForAccountsCATs.promptForSlotValue(slot:)()
{
  v15 = v0[8];
  v14 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#PromptForSlotValue", 0x24uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
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

uint64_t SearchForAccountsCATs.promptForSlotValue(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
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
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#PromptForSlotValue", 0x24uLL, 1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v16 = _allocateUninitializedArray<A>(_:)();
  v17 = v3;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v19 & 1);
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

uint64_t SearchForAccountsCATs.slotDisplayValue(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
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
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#SlotDisplayValue", 0x22uLL, 1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  v20 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v22 & 1);
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

uint64_t SearchForAccountsCATs.slotDisplayValue(slot:)(uint64_t a1, uint64_t a2)
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

  return MEMORY[0x2822009F8](SearchForAccountsCATs.slotDisplayValue(slot:), 0);
}

uint64_t SearchForAccountsCATs.slotDisplayValue(slot:)()
{
  v15 = v0[8];
  v14 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#SlotDisplayValue", 0x22uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
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

uint64_t SearchForAccountsCATs.slotDisplayValue(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
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
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#SlotDisplayValue", 0x22uLL, 1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v16 = _allocateUninitializedArray<A>(_:)();
  v17 = v3;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v19 & 1);
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

uint64_t SearchForAccountsCATs.unsupportedSlotValue(app:slot:completion:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = v22 - v33;
  v45 = MEMORY[0x28223BE20](v40);
  v44 = v5;
  v42 = v6;
  v43 = v7;
  v41 = v4;
  v37 = 1;
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#UnsupportedSlotValue", 0x26uLL, 1);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v38 = _allocateUninitializedArray<A>(_:)();
  v39 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, v37 & 1);
  *v39 = v9;

  if (v40)
  {
    v29 = v40;
    v28 = v40;
    v10 = type metadata accessor for SirikitApp();
    v11 = v39;
    v12 = v28;
    v39[2]._object = v10;
    v11[1]._countAndFlagsBits = v12;
  }

  else
  {
    v21 = v39;
    v39[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  v23 = v39 + 4;
  v24 = 1;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  v14 = v30;
  v15 = v34;
  v39[3] = v13;
  outlined init with copy of SpeakableString?(v14, v15);
  v25 = type metadata accessor for SpeakableString();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  if ((*(v26 + 48))(v34, v24) == 1)
  {
    outlined destroy of SpeakableString?(v34);
    v20 = v39;
    v39[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v23->_countAndFlagsBits;
    v39[5]._object = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v26 + 32))(boxed_opaque_existential_1, v34, v25);
  }

  v18 = v38;
  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchForAccountsCATs.unsupportedSlotValue(app:slot:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v6 = v4[2];

  return MEMORY[0x2822009F8](SearchForAccountsCATs.unsupportedSlotValue(app:slot:), 0);
}

uint64_t SearchForAccountsCATs.unsupportedSlotValue(app:slot:)()
{
  v19 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#UnsupportedSlotValue", 0x26uLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v18 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v19)
  {
    v16 = v17[7];
    v18[2]._object = type metadata accessor for SirikitApp();
    v18[1]._countAndFlagsBits = v16;
  }

  else
  {
    v18[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  v13 = v17[10];
  v12 = v17[8];
  v18[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v17[10]);
    v18[4]._countAndFlagsBits = 0;
    v18[4]._object = 0;
    v18[5]._countAndFlagsBits = 0;
    v18[5]._object = 0;
  }

  else
  {
    v11 = v17[10];
    v18[5]._object = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18[4]._countAndFlagsBits);
    (*(v15 + 32))(boxed_opaque_existential_1, v11, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v17[12] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v17[13] = v5;
  *v5 = v17[2];
  v5[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v6 = v17[9];
  v7 = v17[6];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

uint64_t SearchForAccountsCATs.unsupportedSlotValue(app:slot:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v36 = a1;
  v28 = a2;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = v19 - v29;
  v39 = MEMORY[0x28223BE20](v36);
  v38 = v4;
  v37 = v3;
  v33 = 1;
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SearchForAccounts#UnsupportedSlotValue", 0x26uLL, 1);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v34 = _allocateUninitializedArray<A>(_:)();
  v35 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, v33 & 1);
  *v35 = v6;

  if (v36)
  {
    v26 = v36;
    v25 = v36;
    v7 = type metadata accessor for SirikitApp();
    v8 = v35;
    v9 = v25;
    v35[2]._object = v7;
    v8[1]._countAndFlagsBits = v9;
  }

  else
  {
    v18 = v35;
    v35[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  v20 = v35 + 4;
  v21 = 1;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  v11 = v28;
  v12 = v30;
  v35[3] = v10;
  outlined init with copy of SpeakableString?(v11, v12);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v30, v21) == 1)
  {
    outlined destroy of SpeakableString?(v30);
    v17 = v35;
    v35[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v20->_countAndFlagsBits;
    v35[5]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v30, v22);
  }

  v15 = v34;
  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchForAccountsCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return SearchForAccountsCATs.init(templateDir:options:globals:)(a1, a2, a3);
}

uint64_t SearchForAccountsCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t protocol witness for PaymentSlotDisplayValueProviding.slotDisplayValue(slot:) in conformance SearchForAccountsCATs(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsCATs.slotDisplayValue(slot:)(a1, a2);
}

uint64_t protocol witness for PaymentSlotDisplayValueProviding.labelForResponseSlot(slot:) in conformance SearchForAccountsCATs(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsCATs.labelForResponseSlot(slot:)(a1, a2);
}

uint64_t type metadata accessor for SearchForAccountsCATs()
{
  v1 = type metadata singleton initialization cache for SearchForAccountsCATs;
  if (!type metadata singleton initialization cache for SearchForAccountsCATs)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for SearchForAccountsCATs()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t INCurrencyAmount.formattedString.getter()
{
  v16 = [v0 amount];
  if (!v16)
  {
    return 0;
  }

  v1 = [v0 currencyCode];
  v15 = v1;
  if (v1)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v2;
    MEMORY[0x277D82BD8](v15);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (!v14)
  {
    MEMORY[0x277D82BD8](v16);
    return 0;
  }

  type metadata accessor for NSNumberFormatter();
  v9 = SAUIAppPunchOut.__allocating_init()();
  [v9 setNumberStyle_];

  v8 = MEMORY[0x26D620690](v13, v14);

  [v9 setCurrencyCode_];
  MEMORY[0x277D82BD8](v8);
  v3 = [v9 stringFromNumber_];
  v10 = v3;
  if (v3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v10);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v16);
  return v7;
}

uint64_t RequestPaymentConfirmIntentStrategy.__allocating_init()()
{
  v31 = 0;
  v17 = 0;
  v7 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v6 - v7;
  v12 = type metadata accessor for Globals();
  v8 = v36;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v36);
  v9 = &v35;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v10 = &v34;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v33;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v0 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v8, v9, v10, v11);
  v25 = v37;
  v37[3] = v12;
  v37[4] = &protocol witness table for Globals;
  v37[0] = v0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v15 = v32;
  outlined init with copy of GlobalsProviding(v25, v32);
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v13 = type metadata accessor for INRequestPaymentIntent();
  v1 = type metadata accessor for INRequestPaymentIntentResponse();
  v2 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v13, v1);
  v24 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v15, v14, v2);
  v31 = v24;
  v23 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  type metadata accessor for RequestPaymentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v18);
  v19 = v29;
  v29[3] = &type metadata for CommonLabelsProvider;
  v29[4] = &protocol witness table for CommonLabelsProvider;
  v3 = type metadata accessor for SiriKitContactResolver();
  v20 = v28;
  v28[3] = v3;
  v28[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v28);
  SiriKitContactResolver.init()();

  v21 = &v27;
  v27 = v24;
  v4 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v26 = RequestPaymentConfirmIntentStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v23, v18, v19, v20, v21, v22, v4);

  v37[5] = v26;

  __swift_destroy_boxed_opaque_existential_0(v25);

  return v26;
}

uint64_t RequestPaymentConfirmIntentStrategy.actionForInput(_:confirmParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  BaseStrategy.actionForInput(_:)(a1, a2);
}

uint64_t RequestPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[11] = a2;
  v4[10] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  v4[14] = v6;
  v12 = *(v6 - 8);
  v4[15] = v12;
  v7 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[17] = v8;
  v13 = *(v8 - 8);
  v4[18] = v13;
  v9 = *(v13 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v10 = v4[2];

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.parseConfirmationResponse(input:confirmParameters:)()
{
  v1 = v0[19];
  v22 = v0[18];
  v23 = v0[17];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v22 + 16))(v1, v2, v23);
  v25 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v26 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v25, v24))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0);
    v19 = createStorage<A>(capacity:type:)(0);
    *(v21 + 48) = buf;
    *(v21 + 56) = v18;
    *(v21 + 64) = v19;
    serialize(_:at:)(0, (v21 + 48));
    serialize(_:at:)(0, (v21 + 48));
    *(v21 + 72) = v26;
    v20 = swift_task_alloc();
    v20[2] = v21 + 48;
    v20[3] = v21 + 56;
    v20[4] = v21 + 64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v25, v24, "#RequestPaymentConfirmIntentStrategy parseConfirmationResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v13 = *(v21 + 152);
  v8 = *(v21 + 136);
  v14 = *(v21 + 128);
  v11 = *(v21 + 112);
  v15 = *(v21 + 104);
  v9 = *(v21 + 96);
  v3 = *(v21 + 88);
  v12 = *(v21 + 80);
  v7 = *(v21 + 144);
  v10 = *(v21 + 120);
  MEMORY[0x277D82BD8](v25);
  (*(v7 + 8))(v13, v8);
  Input.parse.getter();
  Parse.confirmationResponse.getter(v15);
  (*(v10 + 8))(v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.intent.getter();
  type metadata accessor for INRequestPaymentIntent();
  ConfirmIntentAnswer.init(confirmationResponse:intent:)();

  v4 = *(*(v21 + 16) + 8);
  v5 = *(v21 + 16);

  return v4();
}

uint64_t RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[108] = v2;
  v3[107] = a2;
  v3[106] = a1;
  v3[74] = v3;
  v3[75] = 0;
  v3[76] = 0;
  v3[77] = 0;
  v3[83] = 0;
  v3[88] = 0;
  v3[93] = 0;
  v3[72] = 0;
  v3[73] = 0;
  v3[94] = 0;
  v3[95] = 0;
  v3[96] = 0;
  v3[97] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[109] = swift_task_alloc();
  v5 = type metadata accessor for NLContextUpdate();
  v3[110] = v5;
  v14 = *(v5 - 8);
  v3[111] = v14;
  v6 = *(v14 + 64) + 15;
  v3[112] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v3[113] = v7;
  v15 = *(v7 - 8);
  v3[114] = v15;
  v8 = *(v15 + 64) + 15;
  v3[115] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v9 = *(*(type metadata accessor for Locale() - 8) + 64) + 15;
  v3[120] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[121] = v10;
  v17 = *(v10 - 8);
  v3[122] = v17;
  v18 = *(v17 + 64);
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  v3[127] = swift_task_alloc();
  v3[128] = swift_task_alloc();
  v11 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v3[129] = swift_task_alloc();
  v3[75] = a2;
  v3[76] = v2;
  v12 = v3[74];

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)()
{
  v220 = v0;
  v208 = v0[129];
  v1 = v0[128];
  v209 = v0[122];
  v210 = v0[121];
  v0[74] = v0;
  v2 = SignpostName.makeRequestPaymentPromptForConfirm.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v208);
  v3 = Logger.payments.unsafeMutableAddressor();
  v211 = *(v209 + 16);
  v211(v1, v3, v210);
  v213 = Logger.logObject.getter();
  v212 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v214 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v213, v212))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v204 = createStorage<A>(capacity:type:)(0);
    v205 = createStorage<A>(capacity:type:)(0);
    *(v207 + 816) = buf;
    *(v207 + 824) = v204;
    *(v207 + 832) = v205;
    serialize(_:at:)(0, (v207 + 816));
    serialize(_:at:)(0, (v207 + 816));
    *(v207 + 840) = v214;
    v206 = swift_task_alloc();
    v206[2] = v207 + 816;
    v206[3] = v207 + 824;
    v206[4] = v207 + 832;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v213, v212, "#RequestPaymentConfirmIntentStrategy makePromptForConfirmation", buf, 2u);
    destroyStorage<A>(_:count:)(v204, 0, v202);
    destroyStorage<A>(_:count:)(v205, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v197 = *(v207 + 1024);
  v198 = *(v207 + 968);
  v4 = *(v207 + 856);
  v196 = *(v207 + 976);
  MEMORY[0x277D82BD8](v213);
  v199 = *(v196 + 8);
  v199(v197, v198);
  *(v207 + 1040) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR);
  v200 = IntentResolutionRecord.intentResponse.getter();
  MEMORY[0x277D82BE0](v200);
  *(v207 + 616) = v200;
  v201 = [v200 paymentRecord];
  MEMORY[0x277D82BD8](v200);
  *(v207 + 624) = v201;
  if (*(v207 + 624))
  {
    outlined destroy of SFRichText?((v207 + 624));
  }

  else
  {
    outlined destroy of SFRichText?((v207 + 624));
    v5 = *(v207 + 856);
    IntentResolutionRecord.app.getter();
    LOBYTE(v195) = App.isFirstParty.getter();

    if (v195)
    {
      v6 = *(v207 + 1016);
      v191 = *(v207 + 968);
      v7 = Logger.payments.unsafeMutableAddressor();
      v211(v6, v7, v191);
      oslog = Logger.logObject.getter();
      LOBYTE(v192) = static os_log_type_t.debug.getter();
      v194 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v192))
      {
        v187 = static UnsafeMutablePointer.allocate(capacity:)();
        v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v188 = createStorage<A>(capacity:type:)(0);
        v189 = createStorage<A>(capacity:type:)(0);
        *(v207 + 784) = v187;
        *(v207 + 792) = v188;
        *(v207 + 800) = v189;
        serialize(_:at:)(0, (v207 + 784));
        serialize(_:at:)(0, (v207 + 784));
        *(v207 + 808) = v194;
        v190 = swift_task_alloc();
        v190[2] = v207 + 784;
        v190[3] = v207 + 792;
        v190[4] = v207 + 800;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, oslog, v192, "#RequestPaymentConfirmIntentStrategy makePromptForConfirmation 1P app did not contain payment record, creating our own here", v187, 2u);
        destroyStorage<A>(_:count:)(v188, 0, v186);
        destroyStorage<A>(_:count:)(v189, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v187, MEMORY[0x277D84B78]);
      }

      v176 = *(v207 + 1016);
      v177 = *(v207 + 968);
      v181 = *(v207 + 856);
      MEMORY[0x277D82BD8](oslog);
      v199(v176, v177);
      type metadata accessor for INRequestPaymentIntentResponse();
      v223.value.super.isa = 0;
      isa = INRequestPaymentIntentResponse.__allocating_init(code:userActivity:)(INRequestPaymentIntentResponseCodeReady, v223).super.super.isa;
      MEMORY[0x277D82BE0](isa);
      v8 = *(v207 + 616);
      *(v207 + 616) = isa;
      MEMORY[0x277D82BD8](v8);
      type metadata accessor for INPaymentRecord();
      v179 = IntentResolutionRecord.intent.getter();
      LOBYTE(payee) = [v179 payer];
      MEMORY[0x277D82BD8](v179);
      v182 = IntentResolutionRecord.intent.getter();
      payer.value.super.isa = [v182 currencyAmount];
      MEMORY[0x277D82BD8](v182);
      payer.is_nil = [objc_opt_self() applePayPaymentMethod];
      v184 = IntentResolutionRecord.intent.getter();
      v185 = [v184 note];
      if (v185)
      {
        *&v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        BYTE8(v174) = v9;
        MEMORY[0x277D82BD8](v185);
        v175 = v174;
      }

      else
      {
        memset(&v175, 0, sizeof(v175));
      }

      MEMORY[0x277D82BD8](v184);
      v222.is_nil = payee;
      v224.is_nil = 0;
      v222.value.super.isa = 0;
      v224.value.super.isa = 1;
      v173 = INPaymentRecord.__allocating_init(payee:payer:currencyAmount:paymentMethod:note:status:feeAmount:)(v222, payer, v175, v224, v52, v54, v56);
      [isa setPaymentRecord_];
      MEMORY[0x277D82BD8](v173);
      MEMORY[0x277D82BD8](isa);
    }
  }

  v171 = *(v207 + 616);
  MEMORY[0x277D82BE0](v171);
  v172 = [v171 paymentRecord];
  *(v207 + 1048) = v172;
  if (v172)
  {
    v10 = *(v207 + 1008);
    v162 = *(v207 + 968);
    *(v207 + 664) = v172;
    MEMORY[0x277D82BD8](v171);
    v11 = Logger.payments.unsafeMutableAddressor();
    v211(v10, v11, v162);
    MEMORY[0x277D82BE0](v172);
    v163 = swift_allocObject();
    *(v163 + 16) = v172;
    log = Logger.logObject.getter();
    v170 = static os_log_type_t.debug.getter();
    v165 = swift_allocObject();
    *(v165 + 16) = 64;
    v166 = swift_allocObject();
    *(v166 + 16) = 8;
    v164 = swift_allocObject();
    *(v164 + 16) = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v164 + 24) = v163;
    v167 = swift_allocObject();
    *(v167 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v167 + 24) = v164;
    _allocateUninitializedArray<A>(_:)();
    v168 = v12;

    *v168 = partial apply for closure #1 in OSLogArguments.append(_:);
    v168[1] = v165;

    v168[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v168[3] = v166;

    v168[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v168[5] = v167;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v170))
    {
      v159 = static UnsafeMutablePointer.allocate(capacity:)();
      v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v160 = createStorage<A>(capacity:type:)(1);
      v161 = createStorage<A>(capacity:type:)(0);
      v215 = v159;
      v216 = v160;
      v217 = v161;
      serialize(_:at:)(2, &v215);
      serialize(_:at:)(1, &v215);
      v218 = partial apply for closure #1 in OSLogArguments.append(_:);
      v219 = v165;
      closure #1 in osLogInternal(_:log:type:)(&v218, &v215, &v216, &v217);
      v218 = partial apply for closure #1 in OSLogArguments.append(_:);
      v219 = v166;
      closure #1 in osLogInternal(_:log:type:)(&v218, &v215, &v216, &v217);
      v218 = partial apply for closure #1 in OSLogArguments.append(_:);
      v219 = v167;
      closure #1 in osLogInternal(_:log:type:)(&v218, &v215, &v216, &v217);
      _os_log_impl(&dword_2686B1000, log, v170, "#RequestPaymentConfirmIntentStrategy intent contained paymentRecord: %@", v159, 0xCu);
      destroyStorage<A>(_:count:)(v160, 1, v158);
      destroyStorage<A>(_:count:)(v161, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v159, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v155 = *(v207 + 1008);
    v156 = *(v207 + 968);
    MEMORY[0x277D82BD8](log);
    v199(v155, v156);
    v157 = [v172 payer];
    *(v207 + 1056) = v157;
    if (v157)
    {
      *(v207 + 704) = v157;
      v13 = [v172 currencyAmount];
      v154 = v13;
      *(v207 + 1064) = v13;
      if (v13)
      {
        *(v207 + 744) = v13;
        v153 = [v172 note];
        if (v153)
        {
          v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v150 = v14;
          MEMORY[0x277D82BD8](v153);
          v151 = v149;
          v152 = v150;
        }

        else
        {
          v151 = 0;
          v152 = 0;
        }

        *(v207 + 1072) = v152;
        v144 = *(v207 + 960);
        v140 = *(v207 + 864);
        *(v207 + 576) = v151;
        *(v207 + 584) = v152;
        v139 = [v172 feeAmount];
        *(v207 + 1080) = v139;
        *(v207 + 752) = v139;
        type metadata accessor for PaymentsDialogConcept.Builder();
        v145 = PaymentsDialogConcept.Builder.__allocating_init()();
        *(v207 + 1088) = v145;
        *(v207 + 760) = v145;
        type metadata accessor for DialogPerson();
        MEMORY[0x277D82BE0](v157);

        outlined init with copy of GlobalsProviding(v140 + 104, v207 + 136);

        v142 = *(v207 + 160);
        v141 = *(v207 + 168);
        __swift_project_boxed_opaque_existential_1((v207 + 136), v142);
        (*(v141 + 16))(v142);
        v143 = *(v207 + 208);
        __swift_project_boxed_opaque_existential_1((v207 + 176), *(v207 + 200));
        dispatch thunk of DeviceState.siriLocale.getter();
        v147 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
        __swift_destroy_boxed_opaque_existential_0((v207 + 176));
        __swift_destroy_boxed_opaque_existential_0((v207 + 136));

        v146 = (v145 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName);
        swift_beginAccess();
        v15 = *v146;
        *v146 = v147;

        swift_endAccess();

        type metadata accessor for DialogCurrency.Builder();
        DialogCurrency.Builder.__allocating_init()();
        v16 = [v154 amount];
        v148 = v16;
        if (v16)
        {
          [v16 doubleValue];
          MEMORY[0x277D82BD8](v148);
        }

        dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

        v138 = [v154 currencyCode];
        if (v138)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v17;
          MEMORY[0x277D82BD8](v138);
          v137 = v136;
        }

        else
        {
          v137 = 0;
        }

        if (v137)
        {
          v135 = *(v207 + 952);
          String.toSpeakableString.getter();

          v18 = type metadata accessor for SpeakableString();
          (*(*(v18 - 8) + 56))(v135, 0, 1);
        }

        else
        {
          v114 = *(v207 + 952);
          v34 = type metadata accessor for SpeakableString();
          (*(*(v34 - 8) + 56))(v114, 1);
        }

        v133 = *(v207 + 952);
        dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();
        outlined destroy of SpeakableString?(v133);

        v134 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

        swift_beginAccess();
        v19 = v145[2];
        v145[2] = v134;

        swift_endAccess();

        if (v152)
        {
          v132 = *(v207 + 944);
          String.toSpeakableString.getter();

          v20 = type metadata accessor for SpeakableString();
          (*(*(v20 - 8) + 56))(v132, 0, 1);
        }

        else
        {
          v115 = *(v207 + 944);
          v33 = type metadata accessor for SpeakableString();
          (*(*(v33 - 8) + 56))(v115, 1);
        }

        v131 = *(v207 + 944);
        v129 = *(v207 + 936);
        outlined init with copy of SpeakableString?(v131, v129);
        v130 = v145 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo;
        swift_beginAccess();
        outlined assign with take of SpeakableString?(v129, v130);
        swift_endAccess();
        outlined destroy of SpeakableString?(v131);
        DialogCurrency.Builder.__allocating_init()();
        MEMORY[0x277D82BE0](v139);
        if (v139)
        {
          v128 = [v139 amount];
          MEMORY[0x277D82BD8](v139);
          if (v128)
          {
            [v128 doubleValue];
            MEMORY[0x277D82BD8](v128);
          }
        }

        dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

        MEMORY[0x277D82BE0](v139);
        if (v139 && ((v127 = [v139 currencyCode]) == 0 ? (v126 = 0) : (static String._unconditionallyBridgeFromObjectiveC(_:)(), v125 = v21, MEMORY[0x277D82BD8](v127), v126 = v125), MEMORY[0x277D82BD8](v139), v126))
        {
          v124 = *(v207 + 928);
          String.toSpeakableString.getter();

          v22 = type metadata accessor for SpeakableString();
          (*(*(v22 - 8) + 56))(v124, 0, 1);
        }

        else
        {
          v116 = *(v207 + 928);
          v32 = type metadata accessor for SpeakableString();
          (*(*(v32 - 8) + 56))(v116, 1);
        }

        v119 = *(v207 + 928);
        v120 = *(v207 + 856);
        dispatch thunk of DialogAbstractMeasurement.Builder.withUnits(_:)();
        outlined destroy of SpeakableString?(v119);

        v121 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

        swift_beginAccess();
        v23 = v145[4];
        v145[4] = v121;

        swift_endAccess();

        IntentResolutionRecord.app.getter();
        v122 = App.sirikitApp.getter();

        swift_beginAccess();
        v24 = v145[3];
        v145[3] = v122;

        swift_endAccess();

        v123 = PaymentsDialogConcept.Builder.build()();
        *(v207 + 1096) = v123;
        *(v207 + 768) = v123;
        if (static RFFeatureFlags.ResponseFramework.SMART.getter())
        {
          v118 = *(v207 + 616);
          *(v207 + 1104) = v118;
          MEMORY[0x277D82BE0](v118);
          v25 = swift_task_alloc();
          *(v207 + 1112) = v25;
          *v25 = *(v207 + 592);
          v25[1] = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
          v26 = *(v207 + 864);
          v27 = *(v207 + 856);
          v28 = *(v207 + 848);

          return RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:)(v28, v27, v123, v118);
        }

        else
        {
          v117 = *(v207 + 864);

          *(v207 + 1128) = *(v117 + 16);

          v30 = swift_task_alloc();
          *(v207 + 1136) = v30;
          *v30 = *(v207 + 592);
          v30[1] = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
          v31 = *(v207 + 920);

          return RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:)(v31, v123);
        }
      }

      v35 = *(v207 + 1000);
      v110 = *(v207 + 968);
      v36 = Logger.payments.unsafeMutableAddressor();
      v211(v35, v36, v110);
      v112 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();
      v113 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v112, v111))
      {
        v106 = static UnsafeMutablePointer.allocate(capacity:)();
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v107 = createStorage<A>(capacity:type:)(0);
        v108 = createStorage<A>(capacity:type:)(0);
        *(v207 + 712) = v106;
        *(v207 + 720) = v107;
        *(v207 + 728) = v108;
        serialize(_:at:)(0, (v207 + 712));
        serialize(_:at:)(0, (v207 + 712));
        *(v207 + 736) = v113;
        v109 = swift_task_alloc();
        v109[2] = v207 + 712;
        v109[3] = v207 + 720;
        v109[4] = v207 + 728;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, v112, v111, "#RequestPaymentConfirmIntentStrategy found no currencyAmount in paymentRecord, throwing exception", v106, 2u);
        destroyStorage<A>(_:count:)(v107, 0, v105);
        destroyStorage<A>(_:count:)(v108, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v106, MEMORY[0x277D84B78]);
      }

      v104 = *(v207 + 1032);
      v99 = *(v207 + 1000);
      v100 = *(v207 + 968);
      MEMORY[0x277D82BD8](v112);
      v199(v99, v100);
      v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyAmount", 0xEuLL, 1);
      type metadata accessor for INRequestPaymentIntent();
      v103 = [swift_getObjCClassFromMetadata() description];
      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v38;
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      swift_allocError();
      *v39 = v37;
      *(v39 + 16) = v102;
      *(v39 + 24) = v101;
      *(v39 + 32) = 0;
      *(v39 + 40) = 0;
      *(v39 + 48) = 8;
      swift_willThrow();
      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v157);
      MEMORY[0x277D82BD8](v172);
      MEMORY[0x277D82BD8](*(v207 + 616));
      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v104);
    }

    else
    {
      v40 = *(v207 + 992);
      v95 = *(v207 + 968);
      v41 = Logger.payments.unsafeMutableAddressor();
      v211(v40, v41, v95);
      v97 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      v98 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v97, v96))
      {
        v91 = static UnsafeMutablePointer.allocate(capacity:)();
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v92 = createStorage<A>(capacity:type:)(0);
        v93 = createStorage<A>(capacity:type:)(0);
        *(v207 + 672) = v91;
        *(v207 + 680) = v92;
        *(v207 + 688) = v93;
        serialize(_:at:)(0, (v207 + 672));
        serialize(_:at:)(0, (v207 + 672));
        *(v207 + 696) = v98;
        v94 = swift_task_alloc();
        v94[2] = v207 + 672;
        v94[3] = v207 + 680;
        v94[4] = v207 + 688;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, v97, v96, "#RequestPaymentConfirmIntentStrategy found no payer in paymentRecord, throwing exception", v91, 2u);
        destroyStorage<A>(_:count:)(v92, 0, v90);
        destroyStorage<A>(_:count:)(v93, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v91, MEMORY[0x277D84B78]);
      }

      v89 = *(v207 + 1032);
      v84 = *(v207 + 992);
      v85 = *(v207 + 968);
      MEMORY[0x277D82BD8](v97);
      v199(v84, v85);
      v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payer", 5uLL, 1);
      type metadata accessor for INRequestPaymentIntent();
      v88 = [swift_getObjCClassFromMetadata() description];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v43;
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      swift_allocError();
      *v44 = v42;
      *(v44 + 16) = v87;
      *(v44 + 24) = v86;
      *(v44 + 32) = 0;
      *(v44 + 40) = 0;
      *(v44 + 48) = 8;
      swift_willThrow();
      MEMORY[0x277D82BD8](v88);
      MEMORY[0x277D82BD8](v172);
      MEMORY[0x277D82BD8](*(v207 + 616));
      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v89);
    }
  }

  else
  {
    v45 = *(v207 + 984);
    v80 = *(v207 + 968);
    MEMORY[0x277D82BD8](v171);
    v46 = Logger.payments.unsafeMutableAddressor();
    v211(v45, v46, v80);
    v82 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    v83 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v82, v81))
    {
      v76 = static UnsafeMutablePointer.allocate(capacity:)();
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v77 = createStorage<A>(capacity:type:)(0);
      v78 = createStorage<A>(capacity:type:)(0);
      *(v207 + 632) = v76;
      *(v207 + 640) = v77;
      *(v207 + 648) = v78;
      serialize(_:at:)(0, (v207 + 632));
      serialize(_:at:)(0, (v207 + 632));
      *(v207 + 656) = v83;
      v79 = swift_task_alloc();
      v79[2] = v207 + 632;
      v79[3] = v207 + 640;
      v79[4] = v207 + 648;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2686B1000, v82, v81, "#RequestPaymentConfirmIntentStrategy created no paymentRecord for intent response, throwing exception", v76, 2u);
      destroyStorage<A>(_:count:)(v77, 0, v75);
      destroyStorage<A>(_:count:)(v78, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v76, MEMORY[0x277D84B78]);
    }

    v74 = *(v207 + 1032);
    v69 = *(v207 + 984);
    v70 = *(v207 + 968);
    MEMORY[0x277D82BD8](v82);
    v199(v69, v70);
    type metadata accessor for INRequestPaymentIntent();
    v73 = [swift_getObjCClassFromMetadata() description];
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v47;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v48 = v72;
    *(v48 + 8) = v71;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0;
    *(v48 + 40) = 0;
    *(v48 + 48) = 12;
    swift_willThrow();
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](*(v207 + 616));
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v74);
  }

  v49 = *(v207 + 1032);
  v53 = *(v207 + 1024);
  v55 = *(v207 + 1016);
  v57 = *(v207 + 1008);
  v58 = *(v207 + 1000);
  v59 = *(v207 + 992);
  v60 = *(v207 + 984);
  v61 = *(v207 + 960);
  v62 = *(v207 + 952);
  v63 = *(v207 + 944);
  v64 = *(v207 + 936);
  v65 = *(v207 + 928);
  v66 = *(v207 + 920);
  v67 = *(v207 + 896);
  v68 = *(v207 + 872);

  v50 = *(*(v207 + 592) + 8);
  v51 = *(v207 + 592);

  return v50();
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 592);
  v2 = *(*v1 + 1112);
  *(v9 + 592) = *v1;
  *(v9 + 1120) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  else
  {

    v3 = *v8;
    v4 = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[137];
  v6 = v0[136];
  v7 = v0[135];
  v8 = v0[134];
  v9 = v0[133];
  v10 = v0[132];
  v11 = v0[131];
  v12 = v0[129];
  v0[74] = v0;

  MEMORY[0x277D82BD8](v7);

  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[77]);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v12);
  v2 = v0[129];
  v13 = v0[128];
  v14 = v0[127];
  v15 = v0[126];
  v16 = v0[125];
  v17 = v0[124];
  v18 = v0[123];
  v19 = v0[120];
  v20 = v0[119];
  v21 = v0[118];
  v22 = v0[117];
  v23 = v0[116];
  v24 = v0[115];
  v25 = v0[112];
  v26 = v0[109];

  v3 = *(v0[74] + 8);
  v4 = v0[74];

  return v3();
}

{
  v11 = *v1;
  v9 = *v1 + 16;
  v10 = (v11 + 592);
  v2 = *(*v1 + 1136);
  *(v11 + 592) = *v1;
  *(v11 + 1144) = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  else
  {
    v8 = *(v9 + 1112);
    v3 = *(v9 + 1080);

    v4 = *v10;
    v5 = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v21 = v0;
  v9 = v0[130];
  v1 = v0[112];
  v10 = v0[108];
  v8 = v0[107];
  v0[74] = v0;
  static PaymentsContextProvider.confirmationContextUpdate(isSend:)(0, v1);

  outlined init with copy of GlobalsProviding(v10 + 24, (v0 + 27));

  outlined init with copy of GlobalsProviding(v10 + 104, (v0 + 32));

  v6 = v0[35];
  v5 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v6);
  (*(v5 + 16))(v6);

  v7 = *(v10 + 16);

  v11 = type metadata accessor for RequestPaymentCATs();
  v20[3] = v11;
  v20[4] = &protocol witness table for RequestPaymentCATs;
  v20[0] = v7;
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v0 + 27, v19, v20, v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v18 = IntentResolutionRecord.app.getter();
  v0[144] = v18;
  v17 = IntentResolutionRecord.intent.getter();
  v0[145] = v17;
  v14 = v0[77];
  v0[146] = v14;
  MEMORY[0x277D82BE0](v14);

  v12 = *(v10 + 16);

  v0[40] = v11;
  v0[41] = &protocol witness table for RequestPaymentCATs;
  v15 = (v0 + 37);
  v0[37] = v12;
  v2 = swift_task_alloc();
  *(v13 + 1176) = v2;
  v16 = type metadata accessor for INRequestPaymentIntent();
  v3 = type metadata accessor for INRequestPaymentIntentResponse();
  *v2 = *(v13 + 592);
  v2[1] = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);

  return ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:)(v18, v17, v14, v15, v16, v3, &protocol witness table for INRequestPaymentIntent, &protocol witness table for INRequestPaymentIntentResponse);
}

{
  v1 = v0[148];
  v17 = v0[137];
  v18 = v0[136];
  v19 = v0[135];
  v20 = v0[134];
  v21 = v0[133];
  v22 = v0[132];
  v23 = v0[131];
  v24 = v0[129];
  v15 = v0[115];
  v14 = v0[114];
  v16 = v0[113];
  v12 = v0[112];
  v11 = v0[111];
  v13 = v0[110];
  v10 = v0[109];
  v8 = v0[108];
  v9 = v0[106];
  v0[74] = v0;
  v0[97] = v1;

  outlined init with copy of GlobalsProviding(v8 + 104, (v0 + 42));

  v7 = v0[45];
  v6 = v0[46];
  __swift_project_boxed_opaque_existential_1(v0 + 42, v7);
  (*(v6 + 16))(v7);

  BaseStrategy.ttsEnabled.getter();

  (*(v11 + 16))(v10, v12, v13);
  (*(v11 + 56))(v10, 0, 1, v13);
  v0[52] = 0;
  v0[53] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[56] = 0;
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v9[3] = type metadata accessor for AceOutput();
  v9[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v9);
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 52);
  outlined destroy of NLContextUpdate?(v10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);

  (*(v11 + 8))(v12, v13);
  (*(v14 + 8))(v15, v16);

  MEMORY[0x277D82BD8](v19);

  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v0[77]);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v24);
  v2 = v0[129];
  v25 = v0[128];
  v26 = v0[127];
  v27 = v0[126];
  v28 = v0[125];
  v29 = v0[124];
  v30 = v0[123];
  v31 = v0[120];
  v32 = v0[119];
  v33 = v0[118];
  v34 = v0[117];
  v35 = v0[116];
  v36 = v0[115];
  v37 = v0[112];
  v38 = v0[109];

  v3 = *(v0[74] + 8);
  v4 = v0[74];

  return v3();
}

{
  v1 = v0[138];
  v7 = v0[137];
  v8 = v0[136];
  v9 = v0[135];
  v10 = v0[134];
  v11 = v0[133];
  v12 = v0[132];
  v13 = v0[131];
  v14 = v0[129];
  v0[74] = v0;
  MEMORY[0x277D82BD8](v1);

  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[77]);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v14);
  v2 = v0[140];
  v3 = v0[129];
  v15 = v0[128];
  v16 = v0[127];
  v17 = v0[126];
  v18 = v0[125];
  v19 = v0[124];
  v20 = v0[123];
  v21 = v0[120];
  v22 = v0[119];
  v23 = v0[118];
  v24 = v0[117];
  v25 = v0[116];
  v26 = v0[115];
  v27 = v0[112];
  v28 = v0[109];

  v4 = *(v0[74] + 8);
  v5 = v0[74];

  return v4();
}

{
  v6 = v0[141];
  v7 = v0[137];
  v8 = v0[136];
  v9 = v0[135];
  v10 = v0[134];
  v11 = v0[133];
  v12 = v0[132];
  v13 = v0[131];
  v14 = v0[129];
  v0[74] = v0;

  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v0[77]);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v14);
  v1 = v0[143];
  v2 = v0[129];
  v15 = v0[128];
  v16 = v0[127];
  v17 = v0[126];
  v18 = v0[125];
  v19 = v0[124];
  v20 = v0[123];
  v21 = v0[120];
  v22 = v0[119];
  v23 = v0[118];
  v24 = v0[117];
  v25 = v0[116];
  v26 = v0[115];
  v27 = v0[112];
  v28 = v0[109];

  v3 = *(v0[74] + 8);
  v4 = v0[74];

  return v3();
}

{
  v6 = v0[146];
  v7 = v0[145];
  v8 = v0[144];
  v15 = v0[137];
  v16 = v0[136];
  v17 = v0[135];
  v18 = v0[134];
  v19 = v0[133];
  v20 = v0[132];
  v21 = v0[131];
  v22 = v0[129];
  v13 = v0[115];
  v12 = v0[114];
  v14 = v0[113];
  v11 = v0[112];
  v9 = v0[111];
  v10 = v0[110];
  v0[74] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);

  outlined destroy of ConfirmationViewBuilder(v0 + 2);
  (*(v9 + 8))(v11, v10);
  (*(v12 + 8))(v13, v14);

  MEMORY[0x277D82BD8](v17);

  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v0[77]);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v22);
  v1 = v0[149];
  v2 = v0[129];
  v23 = v0[128];
  v24 = v0[127];
  v25 = v0[126];
  v26 = v0[125];
  v27 = v0[124];
  v28 = v0[123];
  v29 = v0[120];
  v30 = v0[119];
  v31 = v0[118];
  v32 = v0[117];
  v33 = v0[116];
  v34 = v0[115];
  v35 = v0[112];
  v36 = v0[109];

  v3 = *(v0[74] + 8);
  v4 = v0[74];

  return v3();
}

uint64_t RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:)(uint64_t a1)
{
  v15 = *v2;
  v12 = (*v2 + 16);
  v13 = (*v2 + 592);
  v14 = (*v2 + 296);
  v4 = *(*v2 + 1176);
  v15[74] = *v2;
  v15[148] = a1;
  v15[149] = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  else
  {
    v9 = v12[144];
    v10 = v12[143];
    v11 = v12[142];
    __swift_destroy_boxed_opaque_existential_0(v14);

    outlined destroy of ConfirmationViewBuilder(v12);
    v5 = *v13;
    v6 = RequestPaymentConfirmIntentStrategy.makePromptForConfirmation(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

INRequestPaymentIntentResponse __swiftcall INRequestPaymentIntentResponse.__allocating_init(code:userActivity:)(INRequestPaymentIntentResponseCode code, NSUserActivity_optional userActivity)
{
  isa = userActivity.value.super.isa;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return @nonobjc INRequestPaymentIntentResponse.init(code:userActivity:)(code, isa);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[47] = v4;
  v5[46] = a4;
  v5[45] = a3;
  v5[44] = a2;
  v5[43] = a1;
  v5[37] = v5;
  v5[38] = 0;
  v5[39] = 0;
  v5[40] = 0;
  v5[41] = 0;
  v5[42] = 0;
  v6 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v5[48] = swift_task_alloc();
  v5[38] = a2;
  v5[39] = a3;
  v5[40] = a4;
  v5[41] = v4;
  v7 = v5[37];

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:)()
{
  v3 = v0[48];
  v5 = v0[45];
  v0[37] = v0;
  type metadata accessor for RequestPaymentCATsModern();
  default argument 0 of CATWrapper.init(options:globals:)();
  v0[49] = CATWrapperSimple.__allocating_init(options:globals:)();

  v1 = swift_task_alloc();
  *(v4 + 400) = v1;
  *v1 = *(v4 + 296);
  v1[1] = RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:);

  return RequestPaymentCATsModern.intentConfirmationPrompt(paymentsConcept:)(v5);
}

{
  v24 = v0;
  v1 = v0[51];
  v13 = v0[47];
  v11 = v0[44];
  v0[37] = v0;
  v0[42] = v1;

  outlined init with copy of GlobalsProviding(v13 + 24, (v0 + 17));

  outlined init with copy of GlobalsProviding(v13 + 104, (v0 + 22));

  v9 = v0[25];
  v8 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v9);
  (*(v8 + 16))(v9);

  v10 = *(v13 + 16);

  v14 = type metadata accessor for RequestPaymentCATs();
  v23[3] = v14;
  v23[4] = &protocol witness table for RequestPaymentCATs;
  v23[0] = v10;
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v0 + 17, v22, v23, v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR);
  v21 = IntentResolutionRecord.app.getter();
  v0[53] = v21;
  v17 = IntentResolutionRecord.intent.getter();
  v0[54] = v17;

  v12 = *(v13 + 16);

  v0[30] = v14;
  v0[31] = &protocol witness table for RequestPaymentCATs;
  v18 = (v0 + 27);
  v0[27] = v12;

  v15 = *(v13 + 16);

  v0[35] = v14;
  v0[36] = &protocol witness table for RequestPaymentCATs;
  v19 = (v0 + 32);
  v0[32] = v15;
  v2 = swift_task_alloc();
  v16[55] = v2;
  v20 = type metadata accessor for INRequestPaymentIntent();
  v3 = type metadata accessor for INRequestPaymentIntentResponse();
  *v2 = v16[37];
  v2[1] = RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:);
  v4 = v16[51];
  v5 = v16[46];
  v6 = v16[43];
  v26 = v3;
  v27 = &protocol witness table for INRequestPaymentIntent;
  v28 = &protocol witness table for INRequestPaymentIntentResponse;

  return ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(v6, v21, v17, v5, v4, v18, v19, v20);
}

{
  v13 = *v1;
  v9 = (*v1 + 16);
  v10 = (*v1 + 296);
  v11 = (*v1 + 216);
  v12 = (*v1 + 256);
  v2 = *(*v1 + 440);
  *(v13 + 296) = *v1;
  *(v13 + 448) = v0;

  if (v0)
  {
    v5 = *v10;
    v4 = RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:);
  }

  else
  {
    v7 = v9[52];
    v8 = v9[51];
    __swift_destroy_boxed_opaque_existential_0(v12);
    __swift_destroy_boxed_opaque_existential_0(v11);

    outlined destroy of ConfirmationViewBuilder(v9);
    v3 = *v10;
    v4 = RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[51];
  v5 = v0[48];
  v0[37] = v0;
  MEMORY[0x277D82BD8](v1);

  v2 = *(v0[37] + 8);
  v3 = v0[37];

  return v2();
}

{
  v7 = v0[49];
  v1 = v0[45];
  v0[37] = v0;

  v2 = v0[52];
  v3 = v0[48];

  v4 = *(v0[37] + 8);
  v5 = v0[37];

  return v4();
}

{
  v6 = v0[54];
  v7 = v0[53];
  v8 = v0[51];
  v0[37] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  MEMORY[0x277D82BD8](v6);

  outlined destroy of ConfirmationViewBuilder(v0 + 2);
  MEMORY[0x277D82BD8](v8);
  v1 = v0[56];
  v2 = v0[48];

  v3 = *(v0[37] + 8);
  v4 = v0[37];

  return v3();
}

uint64_t RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:)(uint64_t a1)
{
  v13 = *v2;
  v11 = *v2 + 16;
  v12 = v13 + 37;
  v4 = *(*v2 + 400);
  v13[37] = *v2;
  v13[51] = a1;
  v13[52] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:);
  }

  else
  {
    v10 = *(v11 + 376);
    v5 = *(v11 + 344);

    v6 = *v12;
    v7 = RequestPaymentConfirmIntentStrategy.makeModernizedPaymentConfirmationView(confirmParameters:paymentsConcept:response:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = v3;
  v4[31] = a3;
  v4[30] = a1;
  v4[26] = v4;
  v4[27] = 0;
  v4[28] = 0;
  v4[29] = 0;
  v4[22] = 0;
  v4[23] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v4[35] = v7;
  v14 = *(v7 - 8);
  v4[36] = v14;
  v8 = *(v14 + 64) + 15;
  v4[37] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v4[38] = v9;
  v15 = *(v9 - 8);
  v4[39] = v15;
  v10 = *(v15 + 64) + 15;
  v4[40] = swift_task_alloc();
  v11 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[27] = a2;
  v4[28] = a3;
  v4[29] = v3;
  v12 = v4[26];

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:)()
{
  v44 = v0;
  v23 = v0[41];
  v24 = v0[40];
  v27 = v0[39];
  v28 = v0[38];
  v1 = v0[31];
  v0[26] = v0;
  v2 = SignpostName.makeRequestPaymentErrorResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR);
  v25 = IntentResolutionRecord.intentResponse.getter();
  v26 = [v25 code];
  MEMORY[0x277D82BD8](v25);
  v29 = static PaymentIntentCATResponseCode.from(_:)(v26);
  v30 = v3;
  v0[42] = v3;
  v0[22] = v29;
  v0[23] = v3;
  v4 = Logger.payments.unsafeMutableAddressor();
  (*(v27 + 16))(v24, v4, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  *(v32 + 24) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v35 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v36 = v5;

  *v36 = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[1] = v33;

  v36[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[3] = v34;

  v36[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[5] = v35;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v37, v38))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0);
    v21 = createStorage<A>(capacity:type:)(1);
    v39 = buf;
    v40 = v20;
    v41 = v21;
    serialize(_:at:)(2, &v39);
    serialize(_:at:)(1, &v39);
    v42 = partial apply for closure #1 in OSLogArguments.append(_:);
    v43 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v42, &v39, &v40, &v41);
    v42 = partial apply for closure #1 in OSLogArguments.append(_:);
    v43 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v42, &v39, &v40, &v41);
    v42 = partial apply for closure #1 in OSLogArguments.append(_:);
    v43 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v42, &v39, &v40, &v41);
    _os_log_impl(&dword_2686B1000, v37, v38, "#RequestPaymentConfirmIntentStrategy makeErrorResponse, code %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v20, 0, v18);
    destroyStorage<A>(_:count:)(v21, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v22[40];
  v13 = v22[38];
  v14 = v22[32];
  v11 = v22[39];
  MEMORY[0x277D82BD8](v37);
  (*(v11 + 8))(v12, v13);

  outlined init with copy of GlobalsProviding(v14 + 144, (v22 + 2));

  v15 = v22[5];
  v16 = v22[6];
  __swift_project_boxed_opaque_existential_1(v22 + 2, v15);
  v17 = (*(v16 + 48) + **(v16 + 48));
  v6 = *(*(v16 + 48) + 4);
  v7 = swift_task_alloc();
  v22[43] = v7;
  *v7 = v22[26];
  v7[1] = RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:);
  v8 = v22[34];
  v9 = v22[31];

  return v17(v8, v9, v15, v16);
}

{
  v7 = *v1;
  v2 = *(*v1 + 344);
  *(v7 + 208) = *v1;
  v8 = (v7 + 208);
  *(v7 + 352) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:);
  }

  else
  {
    v3 = *v8;
    v4 = RequestPaymentConfirmIntentStrategy.makeErrorResponse(error:confirmParameters:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[34];
  v0[26] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v19 = v37[42];
    v20 = v37[41];
    outlined destroy of TemplatingResult?(v37[34]);
    __swift_destroy_boxed_opaque_existential_0(v37 + 2);
    v37[24] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v37[25] = v7;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    type metadata accessor for INRequestPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v16 = v37[24];
    v15 = v37[25];

    outlined destroy of String.UTF8View((v37 + 24));
    v18 = MEMORY[0x26D620710](v16, v15);
    v17 = v10;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v11 = v18;
    *(v11 + 8) = v17;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 16;
    swift_willThrow();

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v20);
    v12 = v37[41];
    v21 = v37[40];
    v22 = v37[37];
    v23 = v37[34];
    v24 = v37[33];

    v5 = *(v37[26] + 8);
    v13 = v37[26];
  }

  else
  {
    v31 = v37[42];
    v32 = v37[41];
    v33 = v37[40];
    v34 = v37[37];
    v30 = v37[35];
    v35 = v37[34];
    v36 = v37[33];
    v27 = v37[32];
    v28 = v37[30];
    v29 = v37[36];
    (*(v29 + 32))();
    __swift_destroy_boxed_opaque_existential_0(v37 + 2);

    outlined init with copy of GlobalsProviding(v27 + 104, (v37 + 7));

    v26 = v37[10];
    v25 = v37[11];
    __swift_project_boxed_opaque_existential_1(v37 + 7, v26);
    (*(v25 + 16))(v26);

    BaseStrategy.ttsEnabled.getter();

    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v36, 1);
    v37[17] = 0;
    v37[18] = 0;
    v37[19] = 0;
    v37[20] = 0;
    v37[21] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v28[3] = type metadata accessor for AceOutput();
    v28[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v28);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v37 + 17);
    outlined destroy of NLContextUpdate?(v36);
    __swift_destroy_boxed_opaque_existential_0(v37 + 12);
    __swift_destroy_boxed_opaque_existential_0(v37 + 7);
    (*(v29 + 8))(v34, v30);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v32);

    v5 = *(v37[26] + 8);
    v6 = v37[26];
  }

  return v5();
}

{
  v6 = v0[42];
  v7 = v0[41];
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v7);
  v1 = v0[44];
  v2 = v0[41];
  v8 = v0[40];
  v9 = v0[37];
  v10 = v0[34];
  v11 = v0[33];

  v3 = *(v0[26] + 8);
  v4 = v0[26];

  return v3();
}

uint64_t RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v5 = type metadata accessor for NLContextUpdate();
  v3[27] = v5;
  v14 = *(v5 - 8);
  v3[28] = v14;
  v6 = *(v14 + 64) + 15;
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v3[30] = v7;
  v15 = *(v7 - 8);
  v3[31] = v15;
  v8 = *(v15 + 64) + 15;
  v3[32] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[33] = v9;
  v16 = *(v9 - 8);
  v3[34] = v16;
  v10 = *(v16 + 64) + 15;
  v3[35] = swift_task_alloc();
  v11 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;
  v12 = v3[17];

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:)()
{
  v17 = v0[36];
  v1 = v0[35];
  v18 = v0[34];
  v19 = v0[33];
  v0[17] = v0;
  v2 = SignpostName.makeConfirmationRejectedResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v17);
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v18 + 16))(v1, v3, v19);
  v21 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v22 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v21, v20))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0);
    v14 = createStorage<A>(capacity:type:)(0);
    *(v16 + 160) = buf;
    *(v16 + 168) = v13;
    *(v16 + 176) = v14;
    serialize(_:at:)(0, (v16 + 160));
    serialize(_:at:)(0, (v16 + 160));
    *(v16 + 184) = v22;
    v15 = swift_task_alloc();
    v15[2] = v16 + 160;
    v15[3] = v16 + 168;
    v15[4] = v16 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v21, v20, "#RequestPaymentConfirmIntentStrategy makeConfirmationRejectedResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v13, 0, v11);
    destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v16 + 280);
  v9 = *(v16 + 264);
  v10 = *(v16 + 200);
  v7 = *(v16 + 272);
  MEMORY[0x277D82BD8](v21);
  (*(v7 + 8))(v8, v9);

  *(v16 + 296) = *(v10 + 16);

  v4 = swift_task_alloc();
  *(v16 + 304) = v4;
  *v4 = *(v16 + 136);
  v4[1] = RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:);
  v5 = *(v16 + 256);

  return RequestPaymentCATs.promptCancelled()(v5);
}

{
  v8 = *v1;
  v2 = *(*v1 + 304);
  v8[17] = *v1;
  v9 = v8 + 17;
  v8[39] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:);
  }

  else
  {
    v3 = v8[37];

    v4 = *v9;
    v5 = RequestPaymentConfirmIntentStrategy.makeConfirmationRejectedResponse(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v12 = v0[36];
  v13 = v0[35];
  v14 = v0[32];
  v10 = v0[31];
  v11 = v0[30];
  v15 = v0[29];
  v8 = v0[28];
  v9 = v0[27];
  v16 = v0[26];
  v6 = v0[25];
  v7 = v0[24];
  v0[17] = v0;
  static PaymentsContextProvider.confirmationContextUpdate(isSend:)(0, v15);

  outlined init with copy of GlobalsProviding(v6 + 104, (v0 + 2));

  v5 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v4 + 16))(v5);

  BaseStrategy.ttsEnabled.getter();

  (*(v8 + 16))(v16, v15, v9);
  (*(v8 + 56))(v16, 0, 1, v9);
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v7[3] = type metadata accessor for AceOutput();
  v7[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v7);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v8 + 8))(v15, v9);
  (*(v10 + 8))(v14, v11);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v12);

  v1 = *(v0[17] + 8);
  v2 = v0[17];

  return v1();
}

{
  v1 = v0[37];
  v7 = v0[36];
  v8 = v0[35];
  v9 = v0[32];
  v10 = v0[29];
  v11 = v0[26];
  v0[17] = v0;

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v7);

  v2 = v0;
  v3 = *(v0[17] + 8);
  v4 = v0[17];
  v5 = v2[39];

  return v3();
}

uint64_t RequestPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v8 = *(v4 - 8);
  v3[11] = v8;
  v5 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;
  v6 = v3[2];

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeRepromptOnEmptyParse(confirmParameters:)()
{
  v1 = v0[12];
  v16 = v0[11];
  v17 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0);
    v13 = createStorage<A>(capacity:type:)(0);
    *(v15 + 40) = buf;
    *(v15 + 48) = v12;
    *(v15 + 56) = v13;
    serialize(_:at:)(0, (v15 + 40));
    serialize(_:at:)(0, (v15 + 40));
    *(v15 + 64) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 40;
    v14[3] = v15 + 48;
    v14[4] = v15 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#RequestPaymentConfirmIntentStrategy makeRepromptOnEmptyParse", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v15 + 96);
  v7 = *(v15 + 80);
  v8 = *(v15 + 72);
  v6 = *(v15 + 88);
  MEMORY[0x277D82BD8](v19);
  (*(v6 + 8))(v9, v7);
  type metadata accessor for SABaseCommand();
  _allocateUninitializedArray<A>(_:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  AceOutput.init(commands:flowActivity:)();

  v3 = *(*(v15 + 16) + 8);
  v4 = *(v15 + 16);

  return v3();
}

uint64_t RequestPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = type metadata accessor for Logger();
  v3[10] = v4;
  v8 = *(v4 - 8);
  v3[11] = v8;
  v5 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;
  v6 = v3[2];

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeRepromptOnLowConfidence(confirmParameters:)()
{
  v1 = v0[12];
  v16 = v0[11];
  v17 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0);
    v13 = createStorage<A>(capacity:type:)(0);
    *(v15 + 40) = buf;
    *(v15 + 48) = v12;
    *(v15 + 56) = v13;
    serialize(_:at:)(0, (v15 + 40));
    serialize(_:at:)(0, (v15 + 40));
    *(v15 + 64) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 40;
    v14[3] = v15 + 48;
    v14[4] = v15 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#RequestPaymentConfirmIntentStrategy makeRepromptOnLowConfidence", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v15 + 96);
  v7 = *(v15 + 80);
  v8 = *(v15 + 72);
  v6 = *(v15 + 88);
  MEMORY[0x277D82BD8](v19);
  (*(v6 + 8))(v9, v7);
  type metadata accessor for SABaseCommand();
  _allocateUninitializedArray<A>(_:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  AceOutput.init(commands:flowActivity:)();

  v3 = *(*(v15 + 16) + 8);
  v4 = *(v15 + 16);

  return v3();
}

uint64_t RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:)(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[27] = v5;
  v11 = *(v5 - 8);
  v3[28] = v11;
  v6 = *(v11 + 64) + 15;
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[30] = v7;
  v12 = *(v7 - 8);
  v3[31] = v12;
  v8 = *(v12 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;
  v9 = v3[17];

  return MEMORY[0x2822009F8](RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:), 0);
}

uint64_t RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:)()
{
  v1 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v0[17] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);
  v19 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v20 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v19, v18))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0);
    v13 = createStorage<A>(capacity:type:)(0);
    *(v15 + 160) = buf;
    *(v15 + 168) = v12;
    *(v15 + 176) = v13;
    serialize(_:at:)(0, (v15 + 160));
    serialize(_:at:)(0, (v15 + 160));
    *(v15 + 184) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 160;
    v14[3] = v15 + 168;
    v14[4] = v15 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v19, v18, "#RequestPaymentConfirmIntentStrategy makeFlowCancelledResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v15 + 256);
  v8 = *(v15 + 240);
  v9 = *(v15 + 200);
  v6 = *(v15 + 248);
  MEMORY[0x277D82BD8](v19);
  (*(v6 + 8))(v7, v8);

  *(v15 + 264) = *(v9 + 16);

  v3 = swift_task_alloc();
  *(v15 + 272) = v3;
  *v3 = *(v15 + 136);
  v3[1] = RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:);
  v4 = *(v15 + 232);

  return RequestPaymentCATs.promptCancelled()(v4);
}

{
  v8 = *v1;
  v2 = *(*v1 + 272);
  v8[17] = *v1;
  v9 = v8 + 17;
  v8[35] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = SendPaymentHandleIntentStrategy.makePreHandleIntentOutput(rchRecord:);
  }

  else
  {
    v3 = v8[33];

    v4 = *v9;
    v5 = RequestPaymentConfirmIntentStrategy.makeFlowCancelledResponse(confirmParameters:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v11 = v0[32];
  v12 = v0[29];
  v9 = v0[28];
  v10 = v0[27];
  v13 = v0[26];
  v7 = v0[25];
  v8 = v0[24];
  v0[17] = v0;

  outlined init with copy of GlobalsProviding(v7 + 104, (v0 + 2));

  v6 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  (*(v5 + 16))(v6);

  BaseStrategy.ttsEnabled.getter();

  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v13, 1);
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v9 + 8))(v12, v10);

  v2 = *(v0[17] + 8);
  v3 = v0[17];

  return v2();
}