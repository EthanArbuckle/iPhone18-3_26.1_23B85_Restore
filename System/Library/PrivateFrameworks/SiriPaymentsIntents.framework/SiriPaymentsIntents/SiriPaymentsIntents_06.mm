uint64_t sub_2687908C0()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  return closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(a1);
}

{
  v2 = *(v1 + 16);
  return closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(a1);
}

{
  v2 = *(v1 + 16);
  return closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(a1);
}

uint64_t implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)()
{

  type metadata accessor for UsoTask_noVerb_common_Payment();
  return String.init<A>(describing:)();
}

{

  type metadata accessor for UsoTask_pay_common_Payment();
  return String.init<A>(describing:)();
}

{

  type metadata accessor for UsoTask_requestMoney_common_Payment();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19INSendPaymentIntentCSgMd, &_sSo19INSendPaymentIntentCSgMR);
  return String.init<A>(describing:)();
}

{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INRequestPaymentIntentCSgMd, &_sSo22INRequestPaymentIntentCSgMR);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;

  *v3 = a1;
  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySaySo8INPersonCGSgGMd, &_sSaySaySo8INPersonCGSgGMR);
  lazy protocol witness table accessor for type [[INPerson]?] and conformance [A]();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{
  swift_beginAccess();
  MEMORY[0x277D82BE0](*(a1 + 16));
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
  return String.init<A>(describing:)();
}

uint64_t closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{
  v13 = a1;
  v6 = UsoIdentifier.namespace.getter();
  v7 = v1;

  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyUnit", 0xCuLL, 1);

  v11[0] = v6;
  v11[1] = v7;
  v12 = v2;
  if (!v7)
  {
    if (!v12._object)
    {
      outlined destroy of String.UTF8View(v11);
      v5 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  outlined init with copy of String(v11, &v10);
  if (!v12._object)
  {
    outlined destroy of String.UTF8View(&v10);
LABEL_8:
    outlined destroy of DIIdentifier(v11);
    v5 = 0;
    goto LABEL_7;
  }

  v9 = v10;
  v8 = v12;
  v4 = MEMORY[0x26D620740](v10, *(&v10 + 1), v12._countAndFlagsBits, v12._object);
  outlined destroy of String.UTF8View(&v8);
  outlined destroy of String.UTF8View(&v9);
  outlined destroy of String.UTF8View(v11);
  v5 = v4;
LABEL_7:

  return v5 & 1;
}

uint64_t implicit closure #9 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  return String.init<A>(describing:)();
}

INCurrencyAmount __swiftcall INCurrencyAmount.__allocating_init(amount:currencyCode:)(NSDecimalNumber *amount, Swift::String currencyCode)
{
  countAndFlagsBits = currencyCode._countAndFlagsBits;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return @nonobjc INCurrencyAmount.init(amount:currencyCode:)(amount, countAndFlagsBits);
}

uint64_t implicit closure #10 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for INSendPaymentIntent();
  lazy protocol witness table accessor for type INSendPaymentIntent and conformance NSObject();
  return String.init<A>(describing:)();
}

{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for INRequestPaymentIntent();
  lazy protocol witness table accessor for type INRequestPaymentIntent and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #13 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)()
{

  type metadata accessor for UsoEntity_common_App();
  return String.init<A>(describing:)();
}

{
  UsoEntity_common_App.appIdentifier.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  return String.init<A>(describing:)();
}

uint64_t sub_2687951FC()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_2687993EC()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return swift_deallocObject();
}

uint64_t static Transformer<>.transformer(previousIntent:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for UsoTask_request_common_PaymentAccount();
  type metadata accessor for INSearchForAccountsIntent();
  return Transformer.init(transform:)();
}

{
  MEMORY[0x277D82BE0](a1);
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for UsoTask_summarise_common_PaymentAccount();
  type metadata accessor for INSearchForAccountsIntent();
  return Transformer.init(transform:)();
}

{
  MEMORY[0x277D82BE0](a1);
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
  type metadata accessor for INSearchForAccountsIntent();
  return Transformer.init(transform:)();
}

void *closure #1 in static Transformer<>.transformer(previousIntent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v223 = a3;
  v236 = a1;
  v235 = a2;
  v249 = partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v253 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v255 = partial apply for closure #1 in OSLogArguments.append(_:);
  v257 = partial apply for closure #1 in OSLogArguments.append(_:);
  v260 = partial apply for closure #1 in OSLogArguments.append(_:);
  v225 = partial apply for implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v226 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v227 = partial apply for closure #1 in OSLogArguments.append(_:);
  v228 = partial apply for closure #1 in OSLogArguments.append(_:);
  v229 = partial apply for closure #1 in OSLogArguments.append(_:);
  v230 = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v231 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v232 = partial apply for closure #1 in OSLogArguments.append(_:);
  v233 = partial apply for closure #1 in OSLogArguments.append(_:);
  v234 = partial apply for closure #1 in OSLogArguments.append(_:);
  v309 = 0;
  v308 = 0;
  v298 = 0;
  v282 = 0;
  v281 = 0;
  v276 = 0u;
  v277 = 0u;
  v245 = type metadata accessor for Logger();
  v243 = *(v245 - 8);
  v244 = v245 - 8;
  v237 = (v243[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v236);
  v238 = v64 - v237;
  v239 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v240 = v64 - v239;
  v241 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v8 = v64 - v241;
  v242 = v64 - v241;
  v250 = *v7;
  v309 = v250;
  v308 = v9;
  v10 = Logger.payments.unsafeMutableAddressor();
  v246 = v243[2];
  v247 = v243 + 2;
  v246(v8, v10, v245);

  v264 = Logger.logObject.getter();
  v265 = static os_log_type_t.debug.getter();
  v248 = 17;
  v252 = 7;
  v256 = swift_allocObject();
  *(v256 + 16) = 32;
  v258 = swift_allocObject();
  *(v258 + 16) = 8;
  v251 = 32;
  v11 = swift_allocObject();
  v12 = v250;
  v254 = v11;
  *(v11 + 16) = v249;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v254;
  v261 = v13;
  *(v13 + 16) = v253;
  *(v13 + 24) = v14;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v259 = _allocateUninitializedArray<A>(_:)();
  v262 = v15;

  v16 = v256;
  v17 = v262;
  *v262 = v255;
  v17[1] = v16;

  v18 = v258;
  v19 = v262;
  v262[2] = v257;
  v19[3] = v18;

  v20 = v261;
  v21 = v262;
  v262[4] = v260;
  v21[5] = v20;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v264, v265))
  {
    v216 = static UnsafeMutablePointer.allocate(capacity:)();
    v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v217 = createStorage<A>(capacity:type:)(0);
    v218 = createStorage<A>(capacity:type:)(1);
    v219 = &v270;
    v270 = v216;
    v220 = &v269;
    v269 = v217;
    v221 = &v268;
    v268 = v218;
    serialize(_:at:)(2, &v270);
    serialize(_:at:)(1, v219);
    v22 = v224;
    v266 = v255;
    v267 = v256;
    closure #1 in osLogInternal(_:log:type:)(&v266, v219, v220, v221);
    v222 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v266 = v257;
      v267 = v258;
      closure #1 in osLogInternal(_:log:type:)(&v266, &v270, &v269, &v268);
      v213 = 0;
      v266 = v260;
      v267 = v261;
      closure #1 in osLogInternal(_:log:type:)(&v266, &v270, &v269, &v268);
      v212 = 0;
      _os_log_impl(&dword_2686B1000, v264, v265, "#Transformer for request_common_PaymentAccount task %s", v216, 0xCu);
      destroyStorage<A>(_:count:)(v217, 0, v215);
      destroyStorage<A>(_:count:)(v218, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v216, MEMORY[0x277D84B78]);

      v214 = v212;
    }
  }

  else
  {

    v214 = v224;
  }

  v23 = v240;
  v197 = v214;
  MEMORY[0x277D82BD8](v264);
  v198 = v243[1];
  v199 = v243 + 1;
  v198(v242, v245);
  v24 = Logger.payments.unsafeMutableAddressor();
  v246(v23, v24, v245);
  MEMORY[0x277D82BE0](v235);
  v202 = 7;
  v203 = swift_allocObject();
  *(v203 + 16) = v235;
  v210 = Logger.logObject.getter();
  v211 = static os_log_type_t.debug.getter();
  v200 = 17;
  v205 = swift_allocObject();
  *(v205 + 16) = 32;
  v206 = swift_allocObject();
  *(v206 + 16) = 8;
  v201 = 32;
  v25 = swift_allocObject();
  v26 = v203;
  v204 = v25;
  *(v25 + 16) = v225;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v204;
  v208 = v27;
  *(v27 + 16) = v226;
  *(v27 + 24) = v28;
  v207 = _allocateUninitializedArray<A>(_:)();
  v209 = v29;

  v30 = v205;
  v31 = v209;
  *v209 = v227;
  v31[1] = v30;

  v32 = v206;
  v33 = v209;
  v209[2] = v228;
  v33[3] = v32;

  v34 = v208;
  v35 = v209;
  v209[4] = v229;
  v35[5] = v34;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v210, v211))
  {
    v190 = static UnsafeMutablePointer.allocate(capacity:)();
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v191 = createStorage<A>(capacity:type:)(0);
    v192 = createStorage<A>(capacity:type:)(1);
    v193 = &v275;
    v275 = v190;
    v194 = &v274;
    v274 = v191;
    v195 = &v273;
    v273 = v192;
    serialize(_:at:)(2, &v275);
    serialize(_:at:)(1, v193);
    v36 = v197;
    v271 = v227;
    v272 = v205;
    closure #1 in osLogInternal(_:log:type:)(&v271, v193, v194, v195);
    v196 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v271 = v228;
      v272 = v206;
      closure #1 in osLogInternal(_:log:type:)(&v271, &v275, &v274, &v273);
      v187 = 0;
      v271 = v229;
      v272 = v208;
      closure #1 in osLogInternal(_:log:type:)(&v271, &v275, &v274, &v273);
      v186 = 0;
      _os_log_impl(&dword_2686B1000, v210, v211, "#Transformer for request_common_PaymentAccount previous intent is %s", v190, 0xCu);
      destroyStorage<A>(_:count:)(v191, 0, v189);
      destroyStorage<A>(_:count:)(v192, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v190, MEMORY[0x277D84B78]);

      v188 = v186;
    }
  }

  else
  {

    v188 = v197;
  }

  v185 = v188;
  MEMORY[0x277D82BD8](v210);
  v198(v240, v245);
  MEMORY[0x277D82BE0](v235);
  if (v235)
  {
    v184 = v235;
    v183 = v235;
    v307 = [v235 accountNickname];
    MEMORY[0x277D82BD8](v183);
  }

  else
  {
    v307 = 0;
  }

  MEMORY[0x277D82BE0](v235);
  if (v235)
  {
    v182 = v235;
    v178 = v235;
    v179 = [v235 accountType];
    MEMORY[0x277D82BD8](v178);
    v180 = v179;
    v181 = 0;
  }

  else
  {
    v180 = 0;
    v181 = 1;
  }

  v304 = v180;
  v305 = v181 & 1;
  if (v181)
  {
    v306 = 0;
    v177 = 0;
  }

  else
  {
    v306 = v304;
    v177 = v304;
  }

  v176 = v177;
  MEMORY[0x277D82BE0](v235);
  if (v235)
  {
    v175 = v235;
    v174 = v235;
    v303 = [v235 organizationName];
    MEMORY[0x277D82BD8](v174);
  }

  else
  {
    v303 = 0;
  }

  MEMORY[0x277D82BE0](v235);
  if (v235)
  {
    v173 = v235;
    v169 = v235;
    v170 = [v235 requestedBalanceType];
    MEMORY[0x277D82BD8](v169);
    v171 = v170;
    v172 = 0;
  }

  else
  {
    v171 = 0;
    v172 = 1;
  }

  v300 = v171;
  v301 = v172 & 1;
  if (v172)
  {
    v302 = 1;
    v168 = 1;
  }

  else
  {
    v302 = v300;
    v168 = v300;
  }

  v163 = v168;

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  v164 = v299;

  v165 = static PaymentAccountInformation.from(_:)(v164);
  v167 = v37;
  *&v166 = v38;
  *(&v166 + 1) = v39;

  if (v167 == 1)
  {
    v159 = v163;
    v160 = v176;
  }

  else
  {
    *&v161 = v165;
    *(&v161 + 1) = v167;
    v162 = v166;
    v158 = *(&v166 + 1);
    v156 = v166;
    v155 = v167;
    v157 = v165;
    v276 = v161;
    v277 = v166;
    MEMORY[0x277D82BE0](v167);
    v40 = v307;
    v307 = v155;
    MEMORY[0x277D82BD8](v40);
    v306 = v158;
    MEMORY[0x277D82BE0](v156);
    v41 = v303;
    v303 = v156;
    MEMORY[0x277D82BD8](v41);
    v302 = v157;
    MEMORY[0x277D82BD8](v155);
    MEMORY[0x277D82BD8](v156);
    v159 = v157;
    v160 = v158;
  }

  v149 = v160;
  v151 = v159;
  type metadata accessor for INSearchForAccountsIntent();
  v152 = v307;
  MEMORY[0x277D82BE0](v307);
  v150 = v303;
  MEMORY[0x277D82BE0](v303);
  v153 = INSearchForAccountsIntent.__allocating_init(accountNickname:accountType:organizationName:requestedBalanceType:)(v152, v149, v150);
  v298 = v153;

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  v154 = v297;

  if (v154)
  {
    v148 = v154;
    v145 = v154;
    v146 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

    v147 = v146;
  }

  else
  {
    v147 = 0;
  }

  v144 = v147;
  if (v147)
  {
    v143 = v144;
    v140 = v144;
    v282 = v144;
    v141 = type metadata accessor for App();
    UsoEntity_common_App.appIdentifier.getter();
    v142 = App.__allocating_init(appIdentifier:)();
    v281 = v142;
    if (App.isFirstParty.getter())
    {
      v139 = &v279;
      v279 = v149;
      v137 = &v278;
      v278 = 0;
      v138 = type metadata accessor for INAccountType();
      lazy protocol witness table accessor for type INAccountType and conformance INAccountType();
      if (== infix<A>(_:_:)())
      {
        INBalanceType.rawValue.getter();
        isa = Int._bridgeToObjectiveC()().super.super.isa;
        v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
        object = v42._object;
        v135 = MEMORY[0x26D620690](v42._countAndFlagsBits);

        [v153 setValue:isa forKeyPath:v135];
        MEMORY[0x277D82BD8](v135);
        swift_unknownObjectRelease();
      }
    }

    MEMORY[0x277D82BE0](v153);
    v131 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
    v132 = UsoEntity_common_App.appIdentifier.getter();
    v133 = v43;
    if (v43)
    {
      v129 = v132;
      v130 = v133;
      v126 = v133;
      v127 = MEMORY[0x26D620690](v132);

      v128 = v127;
    }

    else
    {
      v128 = 0;
    }

    v125 = v128;
    v124 = &v280;
    swift_beginAccess();
    objc_setAssociatedObject(v153, v131, v125, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  v123 = v296;

  if (v123 && (v122 = v123, v120 = v123, v121 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter(), , v121))
  {
    v119 = v121;
    v114 = v121;
    v115 = dispatch thunk of UsoEntity_common_PaymentAccountType.name.getter();
    v116 = v44;

    v117 = v115;
    v118 = v116;
  }

  else
  {
    v117 = 0;
    v118 = 0;
  }

  v112 = v118;
  v111 = v117;

  v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Apple Cash", 0xAuLL, 1);
  countAndFlagsBits = v45._countAndFlagsBits;
  v113 = v45._object;

  v294[0] = v111;
  v294[1] = v112;
  *&v295 = countAndFlagsBits;
  *(&v295 + 1) = v113;
  if (v112)
  {
    outlined init with copy of String(v294, &v285);
    if (*(&v295 + 1))
    {
      v107 = &v284;
      v284 = v285;
      v106 = &v283;
      v283 = v295;
      v108 = MEMORY[0x26D620740](v285, *(&v285 + 1), v295, *(&v295 + 1));
      outlined destroy of String.UTF8View(v106);
      outlined destroy of String.UTF8View(v107);
      outlined destroy of String.UTF8View(v294);
      v109 = v108;
      goto LABEL_57;
    }

    outlined destroy of String.UTF8View(&v285);
    goto LABEL_59;
  }

  if (*(&v295 + 1))
  {
LABEL_59:
    outlined destroy of DIIdentifier(v294);
    v109 = 0;
    goto LABEL_57;
  }

  outlined destroy of String.UTF8View(v294);
  v109 = 1;
LABEL_57:
  v105 = v109;

  if (v105)
  {
    v104 = &v288;
    v288 = v149;
    v102 = &v287;
    v287 = 0;
    v103 = type metadata accessor for INAccountType();
    lazy protocol witness table accessor for type INAccountType and conformance INAccountType();
    if (== infix<A>(_:_:)())
    {
      INBalanceType.rawValue.getter();
      v101 = Int._bridgeToObjectiveC()().super.super.isa;
      v46 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
      v99 = v46._object;
      v100 = MEMORY[0x26D620690](v46._countAndFlagsBits);

      [v153 setValue:v101 forKeyPath:v100];
      MEMORY[0x277D82BD8](v100);
      swift_unknownObjectRelease();
    }

    MEMORY[0x277D82BE0](v153);
    v95 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
    v96 = static AppUtil.walletApp.getter();
    v97 = App.appIdentifier.getter();
    v98 = v47;
    if (v47)
    {
      v93 = v97;
      v94 = v98;
      v90 = v98;
      v91 = MEMORY[0x26D620690](v97);

      v92 = v91;
    }

    else
    {
      v92 = 0;
    }

    v89 = v92;

    v88 = &v286;
    swift_beginAccess();
    objc_setAssociatedObject(v153, v95, v89, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v48 = v238;
  v49 = Logger.payments.unsafeMutableAddressor();
  v246(v48, v49, v245);
  MEMORY[0x277D82BE0](v153);
  v78 = 7;
  v79 = swift_allocObject();
  *(v79 + 16) = v153;
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.debug.getter();
  v76 = 17;
  v81 = swift_allocObject();
  *(v81 + 16) = 32;
  v82 = swift_allocObject();
  *(v82 + 16) = 8;
  v77 = 32;
  v50 = swift_allocObject();
  v51 = v79;
  v80 = v50;
  *(v50 + 16) = v230;
  *(v50 + 24) = v51;
  v52 = swift_allocObject();
  v53 = v80;
  v84 = v52;
  *(v52 + 16) = v231;
  *(v52 + 24) = v53;
  v83 = _allocateUninitializedArray<A>(_:)();
  v85 = v54;

  v55 = v81;
  v56 = v85;
  *v85 = v232;
  v56[1] = v55;

  v57 = v82;
  v58 = v85;
  v85[2] = v233;
  v58[3] = v57;

  v59 = v84;
  v60 = v85;
  v85[4] = v234;
  v60[5] = v59;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v86, v87))
  {
    v69 = static UnsafeMutablePointer.allocate(capacity:)();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v70 = createStorage<A>(capacity:type:)(0);
    v71 = createStorage<A>(capacity:type:)(1);
    v72 = &v293;
    v293 = v69;
    v73 = &v292;
    v292 = v70;
    v74 = &v291;
    v291 = v71;
    serialize(_:at:)(2, &v293);
    serialize(_:at:)(1, v72);
    v61 = v185;
    v289 = v232;
    v290 = v81;
    closure #1 in osLogInternal(_:log:type:)(&v289, v72, v73, v74);
    v75 = v61;
    if (v61)
    {

      __break(1u);
    }

    else
    {
      v289 = v233;
      v290 = v82;
      closure #1 in osLogInternal(_:log:type:)(&v289, &v293, &v292, &v291);
      v66 = 0;
      v289 = v234;
      v290 = v84;
      closure #1 in osLogInternal(_:log:type:)(&v289, &v293, &v292, &v291);
      v65 = 0;
      _os_log_impl(&dword_2686B1000, v86, v87, "#Transformer newly transformed intent is %s", v69, 0xCu);
      destroyStorage<A>(_:count:)(v70, 0, v68);
      destroyStorage<A>(_:count:)(v71, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v69, MEMORY[0x277D84B78]);

      v67 = v65;
    }
  }

  else
  {

    v67 = v185;
  }

  v64[1] = v67;
  MEMORY[0x277D82BD8](v86);
  v198(v238, v245);
  MEMORY[0x277D82BE0](v153);
  v62 = v153;
  *v223 = v153;
  MEMORY[0x277D82BD8](v62);
  outlined destroy of SFRichText?(&v303);
  return outlined destroy of SFRichText?(&v307);
}

{
  v176 = a3;
  v189 = a1;
  v188 = a2;
  v202 = partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v206 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v208 = partial apply for closure #1 in OSLogArguments.append(_:);
  v210 = partial apply for closure #1 in OSLogArguments.append(_:);
  v213 = partial apply for closure #1 in OSLogArguments.append(_:);
  v178 = partial apply for implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v179 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v180 = partial apply for closure #1 in OSLogArguments.append(_:);
  v181 = partial apply for closure #1 in OSLogArguments.append(_:);
  v182 = partial apply for closure #1 in OSLogArguments.append(_:);
  v183 = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v184 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v185 = partial apply for closure #1 in OSLogArguments.append(_:);
  v186 = partial apply for closure #1 in OSLogArguments.append(_:);
  v187 = partial apply for closure #1 in OSLogArguments.append(_:);
  v250 = 0;
  v249 = 0;
  v239 = 0;
  v237 = 0;
  v229 = 0u;
  v230 = 0u;
  v198 = type metadata accessor for Logger();
  v196 = *(v198 - 8);
  v197 = v198 - 8;
  v190 = (v196[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v189);
  v191 = &v61 - v190;
  v192 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v193 = &v61 - v192;
  v194 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v8 = &v61 - v194;
  v195 = &v61 - v194;
  v203 = *v7;
  v250 = v203;
  v249 = v9;
  v10 = Logger.payments.unsafeMutableAddressor();
  v199 = v196[2];
  v200 = v196 + 2;
  v199(v8, v10, v198);

  v217 = Logger.logObject.getter();
  v218 = static os_log_type_t.debug.getter();
  v201 = 17;
  v205 = 7;
  v209 = swift_allocObject();
  *(v209 + 16) = 32;
  v211 = swift_allocObject();
  *(v211 + 16) = 8;
  v204 = 32;
  v11 = swift_allocObject();
  v12 = v203;
  v207 = v11;
  *(v11 + 16) = v202;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v207;
  v214 = v13;
  *(v13 + 16) = v206;
  *(v13 + 24) = v14;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v212 = _allocateUninitializedArray<A>(_:)();
  v215 = v15;

  v16 = v209;
  v17 = v215;
  *v215 = v208;
  v17[1] = v16;

  v18 = v211;
  v19 = v215;
  v215[2] = v210;
  v19[3] = v18;

  v20 = v214;
  v21 = v215;
  v215[4] = v213;
  v21[5] = v20;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v217, v218))
  {
    v169 = static UnsafeMutablePointer.allocate(capacity:)();
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v170 = createStorage<A>(capacity:type:)(0);
    v171 = createStorage<A>(capacity:type:)(1);
    v172 = &v223;
    v223 = v169;
    v173 = &v222;
    v222 = v170;
    v174 = &v221;
    v221 = v171;
    serialize(_:at:)(2, &v223);
    serialize(_:at:)(1, v172);
    v22 = v177;
    v219 = v208;
    v220 = v209;
    closure #1 in osLogInternal(_:log:type:)(&v219, v172, v173, v174);
    v175 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v219 = v210;
      v220 = v211;
      closure #1 in osLogInternal(_:log:type:)(&v219, &v223, &v222, &v221);
      v166 = 0;
      v219 = v213;
      v220 = v214;
      closure #1 in osLogInternal(_:log:type:)(&v219, &v223, &v222, &v221);
      v165 = 0;
      _os_log_impl(&dword_2686B1000, v217, v218, "#Transformer for summarise_common_PaymentAccount task %s", v169, 0xCu);
      destroyStorage<A>(_:count:)(v170, 0, v168);
      destroyStorage<A>(_:count:)(v171, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v169, MEMORY[0x277D84B78]);

      v167 = v165;
    }
  }

  else
  {

    v167 = v177;
  }

  v23 = v193;
  v150 = v167;
  MEMORY[0x277D82BD8](v217);
  v151 = v196[1];
  v152 = v196 + 1;
  v151(v195, v198);
  v24 = Logger.payments.unsafeMutableAddressor();
  v199(v23, v24, v198);
  MEMORY[0x277D82BE0](v188);
  v155 = 7;
  v156 = swift_allocObject();
  *(v156 + 16) = v188;
  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.debug.getter();
  v153 = 17;
  v158 = swift_allocObject();
  *(v158 + 16) = 32;
  v159 = swift_allocObject();
  *(v159 + 16) = 8;
  v154 = 32;
  v25 = swift_allocObject();
  v26 = v156;
  v157 = v25;
  *(v25 + 16) = v178;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v157;
  v161 = v27;
  *(v27 + 16) = v179;
  *(v27 + 24) = v28;
  v160 = _allocateUninitializedArray<A>(_:)();
  v162 = v29;

  v30 = v158;
  v31 = v162;
  *v162 = v180;
  v31[1] = v30;

  v32 = v159;
  v33 = v162;
  v162[2] = v181;
  v33[3] = v32;

  v34 = v161;
  v35 = v162;
  v162[4] = v182;
  v35[5] = v34;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v163, v164))
  {
    v143 = static UnsafeMutablePointer.allocate(capacity:)();
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v144 = createStorage<A>(capacity:type:)(0);
    v145 = createStorage<A>(capacity:type:)(1);
    v146 = &v228;
    v228 = v143;
    v147 = &v227;
    v227 = v144;
    v148 = &v226;
    v226 = v145;
    serialize(_:at:)(2, &v228);
    serialize(_:at:)(1, v146);
    v36 = v150;
    v224 = v180;
    v225 = v158;
    closure #1 in osLogInternal(_:log:type:)(&v224, v146, v147, v148);
    v149 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v224 = v181;
      v225 = v159;
      closure #1 in osLogInternal(_:log:type:)(&v224, &v228, &v227, &v226);
      v140 = 0;
      v224 = v182;
      v225 = v161;
      closure #1 in osLogInternal(_:log:type:)(&v224, &v228, &v227, &v226);
      v139 = 0;
      _os_log_impl(&dword_2686B1000, v163, v164, "#Transformer for summarise_common_PaymentAccount previous intent is %s", v143, 0xCu);
      destroyStorage<A>(_:count:)(v144, 0, v142);
      destroyStorage<A>(_:count:)(v145, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v143, MEMORY[0x277D84B78]);

      v141 = v139;
    }
  }

  else
  {

    v141 = v150;
  }

  v138 = v141;
  MEMORY[0x277D82BD8](v163);
  v151(v193, v198);
  MEMORY[0x277D82BE0](v188);
  if (v188)
  {
    v137 = v188;
    v136 = v188;
    v248 = [v188 accountNickname];
    MEMORY[0x277D82BD8](v136);
  }

  else
  {
    v248 = 0;
  }

  MEMORY[0x277D82BE0](v188);
  if (v188)
  {
    v135 = v188;
    v131 = v188;
    v132 = [v188 accountType];
    MEMORY[0x277D82BD8](v131);
    v133 = v132;
    v134 = 0;
  }

  else
  {
    v133 = 0;
    v134 = 1;
  }

  v245 = v133;
  v246 = v134 & 1;
  if (v134)
  {
    v247 = 0;
    v130 = 0;
  }

  else
  {
    v247 = v245;
    v130 = v245;
  }

  v129 = v130;
  MEMORY[0x277D82BE0](v188);
  if (v188)
  {
    v128 = v188;
    v127 = v188;
    v244 = [v188 organizationName];
    MEMORY[0x277D82BD8](v127);
  }

  else
  {
    v244 = 0;
  }

  MEMORY[0x277D82BE0](v188);
  if (v188)
  {
    v126 = v188;
    v122 = v188;
    v123 = [v188 requestedBalanceType];
    MEMORY[0x277D82BD8](v122);
    v124 = v123;
    v125 = 0;
  }

  else
  {
    v124 = 0;
    v125 = 1;
  }

  v241 = v124;
  v242 = v125 & 1;
  if (v125)
  {
    v243 = 1;
    v121 = 1;
  }

  else
  {
    v243 = v241;
    v121 = v241;
  }

  v116 = v121;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  v117 = v240;

  v118 = static PaymentAccountInformation.from(_:)(v117);
  v120 = v37;
  *&v119 = v38;
  *(&v119 + 1) = v39;

  if (v120 == 1)
  {
    v112 = v116;
    v113 = v129;
  }

  else
  {
    *&v114 = v118;
    *(&v114 + 1) = v120;
    v115 = v119;
    v111 = *(&v119 + 1);
    v109 = v119;
    v108 = v120;
    v110 = v118;
    v229 = v114;
    v230 = v119;
    MEMORY[0x277D82BE0](v120);
    v40 = v248;
    v248 = v108;
    MEMORY[0x277D82BD8](v40);
    v247 = v111;
    MEMORY[0x277D82BE0](v109);
    v41 = v244;
    v244 = v109;
    MEMORY[0x277D82BD8](v41);
    v243 = v110;
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v109);
    v112 = v110;
    v113 = v111;
  }

  v91 = v113;
  v93 = v112;
  type metadata accessor for INSearchForAccountsIntent();
  v94 = v248;
  MEMORY[0x277D82BE0](v248);
  v92 = v244;
  MEMORY[0x277D82BE0](v244);
  v42 = INSearchForAccountsIntent.__allocating_init(accountNickname:accountType:organizationName:requestedBalanceType:)(v94, v91, v92);
  v43 = v191;
  v95 = v42;
  v239 = v42;
  v44 = Logger.payments.unsafeMutableAddressor();
  v199(v43, v44, v198);
  MEMORY[0x277D82BE0](v95);
  v98 = 7;
  v99 = swift_allocObject();
  *(v99 + 16) = v95;
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();
  v96 = 17;
  v101 = swift_allocObject();
  *(v101 + 16) = 32;
  v102 = swift_allocObject();
  *(v102 + 16) = 8;
  v97 = 32;
  v45 = swift_allocObject();
  v46 = v99;
  v100 = v45;
  *(v45 + 16) = v183;
  *(v45 + 24) = v46;
  v47 = swift_allocObject();
  v48 = v100;
  v104 = v47;
  *(v47 + 16) = v184;
  *(v47 + 24) = v48;
  v103 = _allocateUninitializedArray<A>(_:)();
  v105 = v49;

  v50 = v101;
  v51 = v105;
  *v105 = v185;
  v51[1] = v50;

  v52 = v102;
  v53 = v105;
  v105[2] = v186;
  v53[3] = v52;

  v54 = v104;
  v55 = v105;
  v105[4] = v187;
  v55[5] = v54;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v106, v107))
  {
    v84 = static UnsafeMutablePointer.allocate(capacity:)();
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v85 = createStorage<A>(capacity:type:)(0);
    v86 = createStorage<A>(capacity:type:)(1);
    v87 = &v235;
    v235 = v84;
    v88 = &v234;
    v234 = v85;
    v89 = &v233;
    v233 = v86;
    serialize(_:at:)(2, &v235);
    serialize(_:at:)(1, v87);
    v56 = v138;
    v231 = v185;
    v232 = v101;
    closure #1 in osLogInternal(_:log:type:)(&v231, v87, v88, v89);
    v90 = v56;
    if (v56)
    {

      __break(1u);
    }

    else
    {
      v231 = v186;
      v232 = v102;
      closure #1 in osLogInternal(_:log:type:)(&v231, &v235, &v234, &v233);
      v81 = 0;
      v231 = v187;
      v232 = v104;
      closure #1 in osLogInternal(_:log:type:)(&v231, &v235, &v234, &v233);
      v80 = 0;
      _os_log_impl(&dword_2686B1000, v106, v107, "#Transformer newly transformed intent is %s", v84, 0xCu);
      destroyStorage<A>(_:count:)(v85, 0, v83);
      destroyStorage<A>(_:count:)(v86, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v84, MEMORY[0x277D84B78]);

      v82 = v80;
    }
  }

  else
  {

    v82 = v138;
  }

  v78 = v82;
  MEMORY[0x277D82BD8](v106);
  v151(v191, v198);

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  v79 = v238;

  if (v79)
  {
    v77 = v79;
    v74 = v79;
    v75 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

    v76 = v75;
  }

  else
  {
    v76 = 0;
  }

  v73 = v76;
  if (v76)
  {
    v72 = v73;
    v68 = v73;
    v237 = v73;
    MEMORY[0x277D82BE0](v95);
    v69 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
    v57 = UsoEntity_common_App.appIdentifier.getter();
    v70 = v57;
    v71 = v58;
    if (v58)
    {
      v66 = v70;
      v67 = v71;
      v63 = v71;
      v64 = MEMORY[0x26D620690](v70);

      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    v62 = v65;
    v61 = &v236;
    swift_beginAccess();
    objc_setAssociatedObject(v95, v69, v62, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  MEMORY[0x277D82BE0](v95);
  v59 = v95;
  *v176 = v95;
  MEMORY[0x277D82BD8](v59);
  outlined destroy of SFRichText?(&v244);
  return outlined destroy of SFRichText?(&v248);
}

{
  v176 = a3;
  v189 = a1;
  v188 = a2;
  v202 = partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v206 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v208 = partial apply for closure #1 in OSLogArguments.append(_:);
  v210 = partial apply for closure #1 in OSLogArguments.append(_:);
  v213 = partial apply for closure #1 in OSLogArguments.append(_:);
  v178 = partial apply for implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v179 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v180 = partial apply for closure #1 in OSLogArguments.append(_:);
  v181 = partial apply for closure #1 in OSLogArguments.append(_:);
  v182 = partial apply for closure #1 in OSLogArguments.append(_:);
  v183 = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:);
  v184 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v185 = partial apply for closure #1 in OSLogArguments.append(_:);
  v186 = partial apply for closure #1 in OSLogArguments.append(_:);
  v187 = partial apply for closure #1 in OSLogArguments.append(_:);
  v250 = 0;
  v249 = 0;
  v239 = 0;
  v237 = 0;
  v229 = 0u;
  v230 = 0u;
  v198 = type metadata accessor for Logger();
  v196 = *(v198 - 8);
  v197 = v198 - 8;
  v190 = (v196[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v189);
  v191 = &v61 - v190;
  v192 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v193 = &v61 - v192;
  v194 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v8 = &v61 - v194;
  v195 = &v61 - v194;
  v203 = *v7;
  v250 = v203;
  v249 = v9;
  v10 = Logger.payments.unsafeMutableAddressor();
  v199 = v196[2];
  v200 = v196 + 2;
  v199(v8, v10, v198);

  v217 = Logger.logObject.getter();
  v218 = static os_log_type_t.debug.getter();
  v201 = 17;
  v205 = 7;
  v209 = swift_allocObject();
  *(v209 + 16) = 32;
  v211 = swift_allocObject();
  *(v211 + 16) = 8;
  v204 = 32;
  v11 = swift_allocObject();
  v12 = v203;
  v207 = v11;
  *(v11 + 16) = v202;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v207;
  v214 = v13;
  *(v13 + 16) = v206;
  *(v13 + 24) = v14;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v212 = _allocateUninitializedArray<A>(_:)();
  v215 = v15;

  v16 = v209;
  v17 = v215;
  *v215 = v208;
  v17[1] = v16;

  v18 = v211;
  v19 = v215;
  v215[2] = v210;
  v19[3] = v18;

  v20 = v214;
  v21 = v215;
  v215[4] = v213;
  v21[5] = v20;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v217, v218))
  {
    v169 = static UnsafeMutablePointer.allocate(capacity:)();
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v170 = createStorage<A>(capacity:type:)(0);
    v171 = createStorage<A>(capacity:type:)(1);
    v172 = &v223;
    v223 = v169;
    v173 = &v222;
    v222 = v170;
    v174 = &v221;
    v221 = v171;
    serialize(_:at:)(2, &v223);
    serialize(_:at:)(1, v172);
    v22 = v177;
    v219 = v208;
    v220 = v209;
    closure #1 in osLogInternal(_:log:type:)(&v219, v172, v173, v174);
    v175 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v219 = v210;
      v220 = v211;
      closure #1 in osLogInternal(_:log:type:)(&v219, &v223, &v222, &v221);
      v166 = 0;
      v219 = v213;
      v220 = v214;
      closure #1 in osLogInternal(_:log:type:)(&v219, &v223, &v222, &v221);
      v165 = 0;
      _os_log_impl(&dword_2686B1000, v217, v218, "#Transformer for noVerb_common_PaymentAccount task %s", v169, 0xCu);
      destroyStorage<A>(_:count:)(v170, 0, v168);
      destroyStorage<A>(_:count:)(v171, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v169, MEMORY[0x277D84B78]);

      v167 = v165;
    }
  }

  else
  {

    v167 = v177;
  }

  v23 = v193;
  v150 = v167;
  MEMORY[0x277D82BD8](v217);
  v151 = v196[1];
  v152 = v196 + 1;
  v151(v195, v198);
  v24 = Logger.payments.unsafeMutableAddressor();
  v199(v23, v24, v198);
  MEMORY[0x277D82BE0](v188);
  v155 = 7;
  v156 = swift_allocObject();
  *(v156 + 16) = v188;
  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.debug.getter();
  v153 = 17;
  v158 = swift_allocObject();
  *(v158 + 16) = 32;
  v159 = swift_allocObject();
  *(v159 + 16) = 8;
  v154 = 32;
  v25 = swift_allocObject();
  v26 = v156;
  v157 = v25;
  *(v25 + 16) = v178;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v157;
  v161 = v27;
  *(v27 + 16) = v179;
  *(v27 + 24) = v28;
  v160 = _allocateUninitializedArray<A>(_:)();
  v162 = v29;

  v30 = v158;
  v31 = v162;
  *v162 = v180;
  v31[1] = v30;

  v32 = v159;
  v33 = v162;
  v162[2] = v181;
  v33[3] = v32;

  v34 = v161;
  v35 = v162;
  v162[4] = v182;
  v35[5] = v34;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v163, v164))
  {
    v143 = static UnsafeMutablePointer.allocate(capacity:)();
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v144 = createStorage<A>(capacity:type:)(0);
    v145 = createStorage<A>(capacity:type:)(1);
    v146 = &v228;
    v228 = v143;
    v147 = &v227;
    v227 = v144;
    v148 = &v226;
    v226 = v145;
    serialize(_:at:)(2, &v228);
    serialize(_:at:)(1, v146);
    v36 = v150;
    v224 = v180;
    v225 = v158;
    closure #1 in osLogInternal(_:log:type:)(&v224, v146, v147, v148);
    v149 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v224 = v181;
      v225 = v159;
      closure #1 in osLogInternal(_:log:type:)(&v224, &v228, &v227, &v226);
      v140 = 0;
      v224 = v182;
      v225 = v161;
      closure #1 in osLogInternal(_:log:type:)(&v224, &v228, &v227, &v226);
      v139 = 0;
      _os_log_impl(&dword_2686B1000, v163, v164, "#Transformer for noVerb_common_PaymentAccount previous intent is %s", v143, 0xCu);
      destroyStorage<A>(_:count:)(v144, 0, v142);
      destroyStorage<A>(_:count:)(v145, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v143, MEMORY[0x277D84B78]);

      v141 = v139;
    }
  }

  else
  {

    v141 = v150;
  }

  v138 = v141;
  MEMORY[0x277D82BD8](v163);
  v151(v193, v198);
  MEMORY[0x277D82BE0](v188);
  if (v188)
  {
    v137 = v188;
    v136 = v188;
    v248 = [v188 accountNickname];
    MEMORY[0x277D82BD8](v136);
  }

  else
  {
    v248 = 0;
  }

  MEMORY[0x277D82BE0](v188);
  if (v188)
  {
    v135 = v188;
    v131 = v188;
    v132 = [v188 accountType];
    MEMORY[0x277D82BD8](v131);
    v133 = v132;
    v134 = 0;
  }

  else
  {
    v133 = 0;
    v134 = 1;
  }

  v245 = v133;
  v246 = v134 & 1;
  if (v134)
  {
    v247 = 0;
    v130 = 0;
  }

  else
  {
    v247 = v245;
    v130 = v245;
  }

  v129 = v130;
  MEMORY[0x277D82BE0](v188);
  if (v188)
  {
    v128 = v188;
    v127 = v188;
    v244 = [v188 organizationName];
    MEMORY[0x277D82BD8](v127);
  }

  else
  {
    v244 = 0;
  }

  MEMORY[0x277D82BE0](v188);
  if (v188)
  {
    v126 = v188;
    v122 = v188;
    v123 = [v188 requestedBalanceType];
    MEMORY[0x277D82BD8](v122);
    v124 = v123;
    v125 = 0;
  }

  else
  {
    v124 = 0;
    v125 = 1;
  }

  v241 = v124;
  v242 = v125 & 1;
  if (v125)
  {
    v243 = 1;
    v121 = 1;
  }

  else
  {
    v243 = v241;
    v121 = v241;
  }

  v116 = v121;

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  v117 = v240;

  v118 = static PaymentAccountInformation.from(_:)(v117);
  v120 = v37;
  *&v119 = v38;
  *(&v119 + 1) = v39;

  if (v120 == 1)
  {
    v112 = v116;
    v113 = v129;
  }

  else
  {
    *&v114 = v118;
    *(&v114 + 1) = v120;
    v115 = v119;
    v111 = *(&v119 + 1);
    v109 = v119;
    v108 = v120;
    v110 = v118;
    v229 = v114;
    v230 = v119;
    MEMORY[0x277D82BE0](v120);
    v40 = v248;
    v248 = v108;
    MEMORY[0x277D82BD8](v40);
    v247 = v111;
    MEMORY[0x277D82BE0](v109);
    v41 = v244;
    v244 = v109;
    MEMORY[0x277D82BD8](v41);
    v243 = v110;
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v109);
    v112 = v110;
    v113 = v111;
  }

  v91 = v113;
  v93 = v112;
  type metadata accessor for INSearchForAccountsIntent();
  v94 = v248;
  MEMORY[0x277D82BE0](v248);
  v92 = v244;
  MEMORY[0x277D82BE0](v244);
  v42 = INSearchForAccountsIntent.__allocating_init(accountNickname:accountType:organizationName:requestedBalanceType:)(v94, v91, v92);
  v43 = v191;
  v95 = v42;
  v239 = v42;
  v44 = Logger.payments.unsafeMutableAddressor();
  v199(v43, v44, v198);
  MEMORY[0x277D82BE0](v95);
  v98 = 7;
  v99 = swift_allocObject();
  *(v99 + 16) = v95;
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();
  v96 = 17;
  v101 = swift_allocObject();
  *(v101 + 16) = 32;
  v102 = swift_allocObject();
  *(v102 + 16) = 8;
  v97 = 32;
  v45 = swift_allocObject();
  v46 = v99;
  v100 = v45;
  *(v45 + 16) = v183;
  *(v45 + 24) = v46;
  v47 = swift_allocObject();
  v48 = v100;
  v104 = v47;
  *(v47 + 16) = v184;
  *(v47 + 24) = v48;
  v103 = _allocateUninitializedArray<A>(_:)();
  v105 = v49;

  v50 = v101;
  v51 = v105;
  *v105 = v185;
  v51[1] = v50;

  v52 = v102;
  v53 = v105;
  v105[2] = v186;
  v53[3] = v52;

  v54 = v104;
  v55 = v105;
  v105[4] = v187;
  v55[5] = v54;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v106, v107))
  {
    v84 = static UnsafeMutablePointer.allocate(capacity:)();
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v85 = createStorage<A>(capacity:type:)(0);
    v86 = createStorage<A>(capacity:type:)(1);
    v87 = &v235;
    v235 = v84;
    v88 = &v234;
    v234 = v85;
    v89 = &v233;
    v233 = v86;
    serialize(_:at:)(2, &v235);
    serialize(_:at:)(1, v87);
    v56 = v138;
    v231 = v185;
    v232 = v101;
    closure #1 in osLogInternal(_:log:type:)(&v231, v87, v88, v89);
    v90 = v56;
    if (v56)
    {

      __break(1u);
    }

    else
    {
      v231 = v186;
      v232 = v102;
      closure #1 in osLogInternal(_:log:type:)(&v231, &v235, &v234, &v233);
      v81 = 0;
      v231 = v187;
      v232 = v104;
      closure #1 in osLogInternal(_:log:type:)(&v231, &v235, &v234, &v233);
      v80 = 0;
      _os_log_impl(&dword_2686B1000, v106, v107, "#Transformer newly transformed intent is %s", v84, 0xCu);
      destroyStorage<A>(_:count:)(v85, 0, v83);
      destroyStorage<A>(_:count:)(v86, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v84, MEMORY[0x277D84B78]);

      v82 = v80;
    }
  }

  else
  {

    v82 = v138;
  }

  v78 = v82;
  MEMORY[0x277D82BD8](v106);
  v151(v191, v198);

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  v79 = v238;

  if (v79)
  {
    v77 = v79;
    v74 = v79;
    v75 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

    v76 = v75;
  }

  else
  {
    v76 = 0;
  }

  v73 = v76;
  if (v76)
  {
    v72 = v73;
    v68 = v73;
    v237 = v73;
    MEMORY[0x277D82BE0](v95);
    v69 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
    v57 = UsoEntity_common_App.appIdentifier.getter();
    v70 = v57;
    v71 = v58;
    if (v58)
    {
      v66 = v70;
      v67 = v71;
      v63 = v71;
      v64 = MEMORY[0x26D620690](v70);

      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    v62 = v65;
    v61 = &v236;
    swift_beginAccess();
    objc_setAssociatedObject(v95, v69, v62, 0x301);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  MEMORY[0x277D82BE0](v95);
  v59 = v95;
  *v176 = v95;
  MEMORY[0x277D82BD8](v59);
  outlined destroy of SFRichText?(&v244);
  return outlined destroy of SFRichText?(&v248);
}

void *partial apply for closure #1 in static Transformer<>.transformer(previousIntent:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  return closure #1 in static Transformer<>.transformer(previousIntent:)(a1, *(v2 + 16), a2);
}

{
  return closure #1 in static Transformer<>.transformer(previousIntent:)(a1, *(v2 + 16), a2);
}

{
  return closure #1 in static Transformer<>.transformer(previousIntent:)(a1, *(v2 + 16), a2);
}

uint64_t implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:)()
{

  type metadata accessor for UsoTask_request_common_PaymentAccount();
  return String.init<A>(describing:)();
}

{

  type metadata accessor for UsoTask_summarise_common_PaymentAccount();
  return String.init<A>(describing:)();
}

{

  type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25INSearchForAccountsIntentCSgMd, &_sSo25INSearchForAccountsIntentCSgMR);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for INSearchForAccountsIntent();
  lazy protocol witness table accessor for type INSearchForAccountsIntent and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t default argument 0 of static Transformer<>.transformer(appBundleId:)()
{
  v0 = AppUtil.usoNamespace.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t static Transformer<>.transformer(appBundleId:)(uint64_t a1, uint64_t a2)
{

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for INPerson();
  type metadata accessor for UsoEntityBuilder_common_Person();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in static Transformer<>.transformer(appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v51 = a4;
  v59 = a1;
  v61 = a2;
  v60 = a3;
  v91 = 0;
  v90 = 0;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  v86 = 0;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v62 = 0;
  v52 = type metadata accessor for UsoIdentifier();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v56 = v16 - v55;
  v57 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v58 = v16 - v57;
  v63 = type metadata accessor for PersonNameComponents();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v67 = *(v64 + 64);
  v66 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v62);
  v68 = v16 - v66;
  v69 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v70 = v16 - v69;
  v91 = v16 - v69;
  v71 = *v5;
  v90 = v71;
  v88 = v6;
  v89 = v7;
  type metadata accessor for UsoEntityBuilder_common_Person();
  v72 = UsoEntityBuilder_common_Person.__allocating_init()();
  v87 = v72;
  v73 = [v71 nameComponents];
  if (v73)
  {
    v50 = v73;
    v49 = v73;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v64 + 32))(v58, v68, v63);
    (*(v64 + 56))(v58, 0, 1, v63);
    MEMORY[0x277D82BD8](v49);
  }

  else
  {
    (*(v64 + 56))(v58, 1, 1, v63);
  }

  if ((*(v64 + 48))(v58, 1, v63) == 1)
  {
    outlined destroy of PersonNameComponents?(v58);
  }

  else
  {
    (*(v64 + 32))(v70, v58, v63);
    type metadata accessor for UsoEntityBuilder_common_PersonName();
    v46 = UsoEntityBuilder_common_PersonName.__allocating_init()();
    v86 = v46;
    v47 = PersonNameComponents.nickname.getter();
    v48 = v8;
    if (v8)
    {
      v44 = v47;
      v45 = v48;
      v43 = v48;
      v74 = v47;
      v75 = v48;
      dispatch thunk of UsoEntityBuilder_common_PersonName.setNickName(value:)();
    }

    v41 = PersonNameComponents.givenName.getter();
    v42 = v9;
    if (v9)
    {
      v39 = v41;
      v40 = v42;
      v38 = v42;
      v76 = v41;
      v77 = v42;
      dispatch thunk of UsoEntityBuilder_common_PersonName.setGivenName(value:)();
    }

    v36 = PersonNameComponents.familyName.getter();
    v37 = v10;
    if (v10)
    {
      v34 = v36;
      v35 = v37;
      v33 = v37;
      v78 = v36;
      v79 = v37;
      dispatch thunk of UsoEntityBuilder_common_PersonName.setFamilyName(value:)();
    }

    v31 = PersonNameComponents.middleName.getter();
    v32 = v11;
    if (v11)
    {
      v29 = v31;
      v30 = v32;
      v28 = v32;
      v80 = v31;
      v81 = v32;
      dispatch thunk of UsoEntityBuilder_common_PersonName.setMiddleName(value:)();
    }

    v26 = PersonNameComponents.namePrefix.getter();
    v27 = v12;
    if (v12)
    {
      v24 = v26;
      v25 = v27;
      v23 = v27;
      v82 = v26;
      v83 = v27;
      dispatch thunk of UsoEntityBuilder_common_PersonName.setNamePrefix(value:)();
    }

    v21 = PersonNameComponents.nameSuffix.getter();
    v22 = v13;
    if (v13)
    {
      v19 = v21;
      v20 = v22;
      v18 = v22;
      v84 = v21;
      v85 = v22;
      dispatch thunk of UsoEntityBuilder_common_PersonName.setNamePostfix(value:)();
    }

    dispatch thunk of UsoEntityBuilder_common_Person.setStructuredName(value:)();

    v17 = dispatch thunk of UsoEntityBuilder_common_Person.name.getter();
    if (v17)
    {
      v16[3] = v17;
      v16[2] = v17;
      v16[0] = INPerson.uniqueContactIdentifier.getter();
      v16[1] = v14;

      UsoIdentifierNamespace.rawValue.getter(0);
      UsoIdentifier.init(value:appBundleId:namespace:)();
      dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
      (*(v53 + 8))(v56, v52);
    }

    (*(v64 + 8))(v70, v63);
  }

  *v51 = v72;
}

uint64_t sub_26879E89C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t one-time initialization function for transformer()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMd, &_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMR);
  __swift_allocate_value_buffer(v1, static Transformer<>.transformer);
  __swift_project_value_buffer(v1, static Transformer<>.transformer);
  type metadata accessor for UsoEntityBuilder();
  type metadata accessor for UsoEntity();
  return Transformer.init(transform:)();
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMd, &_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMR);
  __swift_allocate_value_buffer(v1, static Transformer<>.transformer);
  __swift_project_value_buffer(v1, static Transformer<>.transformer);
  type metadata accessor for INPerson();
  type metadata accessor for UsoEntity();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = 0;
  v32 = *a1;
  v27 = MEMORY[0x26D61F7C0]();
  if (v27)
  {

    *a2 = v27;
  }

  else
  {
    v25 = type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    v24 = v2;
    v30 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v31 = v3;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    type metadata accessor for UsoEntityBuilder();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v5);

    v15 = v30;
    v14 = v31;

    outlined destroy of String.UTF8View(&v30);
    v20 = MEMORY[0x26D620710](v15, v14);
    v21 = v6;
    v28 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v29 = v7;
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v8);

    type metadata accessor for UsoEntity();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v17 = v28;
    v16 = v29;

    outlined destroy of String.UTF8View(&v28);
    v18 = MEMORY[0x26D620710](v17, v16);
    v19 = v10;
    v33 = v20;
    v34 = v21;
    v35 = v18;
    v36 = v10;
    v37 = 0;
    v38 = 0;
    v39 = 5;
    v22 = PaymentsError.errorDescription.getter();
    v23 = v11;
    outlined consume of PaymentsError(v20, v21, v18, v19, 0, 0, 5);
    *v24 = v22;
    v24[1] = v23;
    v12 = *MEMORY[0x277D61E00];
    (*(*(v25 - 8) + 104))();
    return swift_willThrow();
  }
}

uint64_t Transformer<>.transformer.unsafeMutableAddressor()
{
  if (one-time initialization token for transformer != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMd, &_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMR);
  return __swift_project_value_buffer(v0, static Transformer<>.transformer);
}

{
  if (one-time initialization token for transformer != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMd, &_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMR);
  return __swift_project_value_buffer(v0, static Transformer<>.transformer);
}

uint64_t static Transformer<>.transformer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Transformer<>.transformer.unsafeMutableAddressor();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMd, &_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMR);
  return (*(*(v1 - 8) + 16))(a1, v3);
}

{
  v3 = Transformer<>.transformer.unsafeMutableAddressor();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMd, &_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology9UsoEntityCGMR);
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static Transformer<>.transformer(contactResolver:)(uint64_t a1)
{
  v4 = a1;
  outlined init with copy of GlobalsProviding(a1, v3);
  v2 = swift_allocObject();
  outlined init with take of CommonLabelsProviding(v3, (v2 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference12ContactQueryVGMd, &_sSay13SiriInference12ContactQueryVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  return Transformer.init(transform:)();
}

uint64_t closure #1 in static Transformer<>.transformer(contactResolver:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v55 = a3;
  v70 = a1;
  v73 = a2;
  v74 = 0;
  v56 = closure #1 in closure #1 in static Transformer<>.transformer(contactResolver:);
  v57 = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  v58 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_2;
  v59 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v60 = partial apply for closure #1 in OSLogArguments.append(_:);
  v61 = partial apply for closure #1 in OSLogArguments.append(_:);
  v62 = partial apply for closure #1 in OSLogArguments.append(_:);
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v93 = 0;
  v68 = 0;
  v63 = type metadata accessor for Logger();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v67 = v26 - v66;
  v78 = type metadata accessor for ContactResolverConfig();
  v75 = *(v78 - 8);
  v76 = v78 - 8;
  v69 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v81 = v26 - v69;
  v71 = (*(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v70);
  v72 = v26 - v71;
  v97 = v26 - v71;
  v80 = *v3;
  v96 = v80;
  v95 = v4;
  v5 = SignpostName.transformContactQueryToINPersons.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v5, v5[1], *(v5 + 16), v72);
  v83 = v73[3];
  v84 = v73[4];
  __swift_project_boxed_opaque_existential_1(v73, v83);
  v77 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
  v79 = &v94;
  swift_beginAccess();
  (*(v75 + 16))(v81, v77, v78);
  swift_endAccess();
  v6 = v82;
  v7 = (*(v84 + 8))(v80, v81, v83);
  v85 = v6;
  v86 = v7;
  v87 = v6;
  if (v6)
  {
    v26[1] = v87;
    (*(v75 + 8))(v81, v78);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    return outlined destroy of Signpost.OpenSignpost(v72);
  }

  else
  {
    v52 = v86;
    (*(v75 + 8))(v81, v78);
    v93 = v52;
    v92[1] = v52;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    lazy protocol witness table accessor for type [INPerson] and conformance [A]();
    v8 = v85;
    result = Sequence.forEach(_:)();
    v54 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      v10 = v67;
      v11 = Logger.payments.unsafeMutableAddressor();
      (*(v64 + 16))(v10, v11, v63);

      v41 = 7;
      v38 = swift_allocObject();
      *(v38 + 16) = v52;

      v40 = 32;
      v12 = swift_allocObject();
      v13 = v38;
      v42 = v12;
      *(v12 + 16) = v57;
      *(v12 + 24) = v13;

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      v39 = 17;
      v44 = swift_allocObject();
      *(v44 + 16) = 32;
      v45 = swift_allocObject();
      *(v45 + 16) = 8;
      v14 = swift_allocObject();
      v15 = v42;
      v43 = v14;
      *(v14 + 16) = v58;
      *(v14 + 24) = v15;
      v16 = swift_allocObject();
      v17 = v43;
      v47 = v16;
      *(v16 + 16) = v59;
      *(v16 + 24) = v17;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v46 = _allocateUninitializedArray<A>(_:)();
      v48 = v18;

      v19 = v44;
      v20 = v48;
      *v48 = v60;
      v20[1] = v19;

      v21 = v45;
      v22 = v48;
      v48[2] = v61;
      v22[3] = v21;

      v23 = v47;
      v24 = v48;
      v48[4] = v62;
      v24[5] = v23;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v50, v51))
      {
        v31 = static UnsafeMutablePointer.allocate(capacity:)();
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v32 = createStorage<A>(capacity:type:)(0);
        v33 = createStorage<A>(capacity:type:)(1);
        v34 = v92;
        v92[0] = v31;
        v35 = &v91;
        v91 = v32;
        v36 = &v90;
        v90 = v33;
        serialize(_:at:)(2, v92);
        serialize(_:at:)(1, v34);
        v25 = v54;
        v88 = v60;
        v89 = v44;
        closure #1 in osLogInternal(_:log:type:)(&v88, v34, v35, v36);
        v37 = v25;
        if (v25)
        {

          __break(1u);
        }

        else
        {
          v88 = v61;
          v89 = v45;
          closure #1 in osLogInternal(_:log:type:)(&v88, v92, &v91, &v90);
          v28 = 0;
          v88 = v62;
          v89 = v47;
          closure #1 in osLogInternal(_:log:type:)(&v88, v92, &v91, &v90);
          v27 = 0;
          _os_log_impl(&dword_2686B1000, v50, v51, "#Transformer for resolving INPersons from ContactQuery returning persons: %s", v31, 0xCu);
          destroyStorage<A>(_:count:)(v32, 0, v30);
          destroyStorage<A>(_:count:)(v33, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v31, MEMORY[0x277D84B78]);

          v29 = v27;
        }
      }

      else
      {

        v29 = v54;
      }

      v26[2] = v29;
      MEMORY[0x277D82BD8](v50);
      (*(v64 + 8))(v67, v63);

      *v55 = v52;

      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      return outlined destroy of Signpost.OpenSignpost(v72);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in static Transformer<>.transformer(contactResolver:)(id *a1)
{
  v8 = *a1;
  v9 = [*a1 siriMatches];
  if (v9)
  {
    type metadata accessor for INPerson();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v9);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    lazy protocol witness table accessor for type [INPerson] and conformance [A]();
    result = _ArrayProtocol.filter(_:)();
    if (v7)
    {
      __break(1u);
      return result;
    }

    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    type metadata accessor for INPerson();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setAlternatives_];
  }

  else
  {
    [v8 setAlternatives_];
  }

  return MEMORY[0x277D82BD8](v2);
}

BOOL closure #1 in closure #1 in closure #1 in static Transformer<>.transformer(contactResolver:)(void **a1)
{
  v18 = 0;
  v14 = *a1;
  v18 = v14;
  v15 = [v14 contactIdentifier];
  if (v15)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v1;
    MEMORY[0x277D82BD8](v15);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v17[0] = v12;
  v17[1] = v13;
  outlined destroy of String.UTF8View(v17);
  MEMORY[0x277D82BE0](v14);
  if (v13)
  {
    v9 = 1;
  }

  else
  {
    v8 = [v14 customIdentifier];
    if (v8)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v2;
      MEMORY[0x277D82BD8](v8);
      v6 = v4;
      v7 = v5;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v16[0] = v6;
    v16[1] = v7;
    outlined destroy of String.UTF8View(v16);
    v9 = v7 != 0;
  }

  MEMORY[0x277D82BD8](v14);
  return v9;
}

uint64_t closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  v21 = a1;
  v44 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology30UsoEntityBuilder_common_PersonCGMd, &_s13SiriUtilities11TransformerVySo8INPersonC0A8Ontology30UsoEntityBuilder_common_PersonCGMR);
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v20 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v32 = v12 - v20;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMd, &_s13SiriUtilities11TransformerVy0A8Ontology16UsoEntityBuilderCAD0eF0CGMR);
  v23 = *(v27 - 8);
  v24 = v27 - 8;
  v22 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v21);
  v3 = v12 - v22;
  v25 = v12 - v22;
  v35 = *v2;
  v44 = v35;
  v4 = Transformer<>.transformer.unsafeMutableAddressor();
  (*(v23 + 16))(v3, v4, v27);
  v26 = Transformer.transform.getter();
  v28 = v5;
  (*(v23 + 8))(v25, v27);
  v6 = default argument 0 of static Transformer<>.transformer(appBundleId:)();
  v29 = v7;
  static Transformer<>.transformer(appBundleId:)(v6, v7);

  v37 = Transformer.transform.getter();
  v34 = v8;
  (*(v30 + 8))(v32, v33);
  v9 = v36;
  v43 = v35;
  v37(&v42, &v43);
  v38 = v9;
  v39 = v9;
  if (v9)
  {
    v14 = v39;

    v15 = v14;
  }

  else
  {
    v16 = v42;

    v10 = v38;
    v41 = v16;
    v26(&v40, &v41);
    v17 = v10;
    v18 = v10;
    if (v10)
    {
      v12[1] = v18;
    }

    else
    {
      v13 = v40;

      *v19 = v13;
    }
  }

  return result;
}

uint64_t sub_2687A0218()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

id @nonobjc INCurrencyAmount.init(amount:currencyCode:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x26D620690](a2);
  v6 = [v3 initWithAmount:a1 currencyCode:?];
  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](a1);
  return v6;
}

id @nonobjc INSendPaymentIntent.init(payee:currencyAmount:note:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = MEMORY[0x26D620690](a3);

    v4 = [v11 initWithPayee:a1 currencyAmount:a2 note:v8];
  }

  else
  {
    v4 = [v11 initWithPayee:a1 currencyAmount:a2 note:0];
  }

  v7 = v4;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v7;
}

id @nonobjc INRequestPaymentIntent.init(payer:currencyAmount:note:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = MEMORY[0x26D620690](a3);

    v4 = [v11 initWithPayer:a1 currencyAmount:a2 note:v8];
  }

  else
  {
    v4 = [v11 initWithPayer:a1 currencyAmount:a2 note:0];
  }

  v7 = v4;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v7;
}

id @nonobjc INSearchForAccountsIntent.init(accountNickname:accountType:organizationName:requestedBalanceType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 initWithAccountNickname:a1 accountType:a2 organizationName:a2 requestedBalanceType:?];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a1);
  return v7;
}

uint64_t sub_2687A0534()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A05CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A060C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type TransformationError and conformance TransformationError()
{
  v2 = lazy protocol witness table cache variable for type TransformationError and conformance TransformationError;
  if (!lazy protocol witness table cache variable for type TransformationError and conformance TransformationError)
  {
    type metadata accessor for TransformationError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type TransformationError and conformance TransformationError);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined consume of PaymentsError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 1:
    case 4:
    case 6:
    case 7:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:

      break;
    case 2:
    case 3:
    case 5:
    case 8:

      break;
    case 9:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:)()
{
  return implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:)();
}

{
  return implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:)();
}

{
  return implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:)();
}

uint64_t sub_2687A0958()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A0998()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A0A80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A0AC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A0BA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A0BE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A0C88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A0CC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A0DA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A0DE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A0EC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A0F08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A0FA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A0FE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A10C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A1108()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A11E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A1228()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type INAccountType and conformance INAccountType()
{
  v2 = lazy protocol witness table cache variable for type INAccountType and conformance INAccountType;
  if (!lazy protocol witness table cache variable for type INAccountType and conformance INAccountType)
  {
    type metadata accessor for INAccountType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INAccountType and conformance INAccountType);
    return WitnessTable;
  }

  return v2;
}

uint64_t partial apply for implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)()
{
  return implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)();
}

{
  return implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)();
}

{
  return implicit closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)();
}

uint64_t sub_2687A1348()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A1388()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)()
{
  return implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(*(v0 + 16));
}

{
  return implicit closure #2 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(*(v0 + 16));
}

uint64_t sub_2687A1470()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A14B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #10 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)()
{
  return implicit closure #10 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(*(v0 + 16));
}

{
  return implicit closure #10 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)(*(v0 + 16));
}

uint64_t sub_2687A15E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A1620()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #13 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)()
{
  return implicit closure #13 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)();
}

{
  return implicit closure #13 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)();
}

uint64_t sub_2687A16C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A1700()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *outlined init with copy of ContactQuery?(const void *a1, void *a2)
{
  v6 = type metadata accessor for ContactQuery();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of ContactQuery?(uint64_t a1)
{
  v3 = type metadata accessor for ContactQuery();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_2687A1944()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for specialized implicit closure #8 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  specialized implicit closure #8 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)();
  return result;
}

uint64_t sub_2687A1990()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #9 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return implicit closure #9 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)();
}

uint64_t sub_2687A1A34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A1A74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A1B0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A1B4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A1BE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A1C24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for NSDecimalNumber()
{
  v2 = lazy cache variable for type metadata for NSDecimalNumber;
  if (!lazy cache variable for type metadata for NSDecimalNumber)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSDecimalNumber);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [UsoIdentifier] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoIdentifier] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UsoIdentifier] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [UsoIdentifier] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoIdentifier] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UsoIdentifier] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [UsoIdentifier] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoIdentifier] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UsoIdentifier] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of UsoIdentifier?(uint64_t a1)
{
  v3 = type metadata accessor for UsoIdentifier();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_2687A1DF8()
{
  v3 = *(type metadata accessor for ContactQuery() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)()
{
  v1 = *(type metadata accessor for ContactQuery() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #3 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:)();
}

uint64_t sub_2687A1F80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A1FC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2000()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2687A20A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A20E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A21C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *outlined assign with take of ContactQuery?(const void *a1, void *a2)
{
  v7 = type metadata accessor for ContactQuery();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type [[INPerson]?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [[INPerson]?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [[INPerson]?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySaySo8INPersonCGSgGMd, &_sSaySaySo8INPersonCGSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [[INPerson]?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type INRequestPaymentIntent and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type INRequestPaymentIntent and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INRequestPaymentIntent and conformance NSObject)
  {
    type metadata accessor for INRequestPaymentIntent();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INRequestPaymentIntent and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2687A2590()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A25D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A26B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A26F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A27E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2820()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2860()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A28F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2938()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A29A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A29E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2A7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2ABC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2B54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2B94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2C2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2C6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2CAC()
{
  v3 = *(type metadata accessor for ContactQuery() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687A2DD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2E10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2E50()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2687A2EE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2F28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A2FC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3000()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type INSendPaymentIntent and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type INSendPaymentIntent and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INSendPaymentIntent and conformance NSObject)
  {
    type metadata accessor for INSendPaymentIntent();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INSendPaymentIntent and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2687A3120()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3160()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3240()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3280()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3360()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A33A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3440()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3480()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A34EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A352C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A35C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3604()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A369C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A36DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3774()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A37B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A37F4()
{
  v3 = *(type metadata accessor for ContactQuery() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687A3918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3958()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3998()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2687A3A30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3A70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3B08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687A3B48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t static AppDisambiguationViewBuilder.makeModernizedDisambiguationView(sortedApps:disambiguationList:manifest:dialog:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a6;
  v6[31] = a5;
  v6[30] = a4;
  v6[29] = a2;
  v6[28] = a1;
  v6[14] = v6;
  v6[15] = 0;
  v6[16] = 0;
  v6[17] = 0;
  v6[18] = 0;
  v6[19] = 0;
  v6[21] = 0;
  v6[23] = 0;
  v6[12] = 0;
  v6[13] = 0;
  v6[27] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[9] = 0;
  v7 = type metadata accessor for SiriPaymentsSnippetModel();
  v6[33] = v7;
  v10 = *(*(v7 - 8) + 64);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[15] = a2;
  v6[16] = a3;
  v6[17] = a4;
  v6[18] = a5;
  v6[19] = a6;
  v8 = v6[14];

  return MEMORY[0x2822009F8](static AppDisambiguationViewBuilder.makeModernizedDisambiguationView(sortedApps:disambiguationList:manifest:dialog:deviceState:), 0);
}

uint64_t static AppDisambiguationViewBuilder.makeModernizedDisambiguationView(sortedApps:disambiguationList:manifest:dialog:deviceState:)()
{
  v36 = v0[32];
  v1 = v0[29];
  v0[14] = v0;
  v0[20] = v1;
  *(swift_task_alloc() + 16) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  lazy protocol witness table accessor for type [App] and conformance [A]();
  v37 = Sequence.compactMap<A>(_:)();
  v0[36] = v37;
  v33 = *(v35 + 232);

  *(v35 + 168) = v37;
  *(v35 + 176) = v33;
  v34 = Sequence.compactMap<A>(_:)();
  *(v35 + 296) = v34;
  v2 = *(v35 + 248);
  *(v35 + 184) = v34;
  v31 = [v2 dialog];
  type metadata accessor for DialogElement();
  *(v35 + 192) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13DialogElementCGMd, &_sSaySo13DialogElementCGMR);
  lazy protocol witness table accessor for type [DialogElement] and conformance [A]();
  Collection.first.getter();
  v32 = *(v35 + 200);

  if (v32)
  {
    v26 = [v32 fullPrint];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v3;
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v31);
    v29 = v27;
    v30 = v28;
  }

  else
  {
    MEMORY[0x277D82BD8](v31);
    v29 = 0;
    v30 = 0;
  }

  *(v35 + 80) = v29;
  *(v35 + 88) = v30;
  if (*(v35 + 88))
  {
    v38 = *(v35 + 80);
  }

  else
  {
    v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (*(v35 + 88))
    {
      outlined destroy of String.UTF8View(v35 + 80);
    }
  }

  v24 = *(v35 + 256);
  v4 = *(v35 + 232);
  *(v35 + 304) = v38._object;
  *(v35 + 96) = v38;
  *(v35 + 208) = v4;
  *(swift_task_alloc() + 16) = v24;
  rawValue = Sequence.compactMap<A>(_:)();
  *(v35 + 312) = rawValue;
  v19 = *(v35 + 280);
  v17 = *(v35 + 272);
  v18 = *(v35 + 264);
  v21 = *(v35 + 248);

  *(v35 + 216) = rawValue;

  v14 = NSJSONWritingOptions.init(rawValue:)(rawValue);
  v15 = v5;
  v16 = v6;
  *(v35 + 320) = v14;
  *(v35 + 328) = v6;
  *(v35 + 56) = v14;
  *(v35 + 64) = v5;
  *(v35 + 72) = v6;

  *v17 = v14;
  *(v17 + 8) = v15;
  *(v17 + 16) = v16;
  swift_storeEnumTagMultiPayload();
  outlined init with take of SiriPaymentsSnippetModel(v17, v19);
  type metadata accessor for ResponseFactory();
  *(v35 + 336) = ResponseFactory.__allocating_init()();
  *(v35 + 40) = v18;
  *(v35 + 48) = lazy protocol witness table accessor for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v35 + 16));
  outlined init with copy of SiriPaymentsSnippetModel(v19, boxed_opaque_existential_1);
  type metadata accessor for DialogExecutionResult();
  v22 = _allocateUninitializedArray<A>(_:)();
  v20 = v8;
  MEMORY[0x277D82BE0](v21);
  *v20 = v21;
  _finalizeUninitializedArray<A>(_:)();
  *(v35 + 344) = v22;
  v23 = (MEMORY[0x277D5BD38] + *MEMORY[0x277D5BD38]);
  v9 = *(MEMORY[0x277D5BD38] + 4);
  v10 = swift_task_alloc();
  *(v35 + 352) = v10;
  *v10 = *(v35 + 112);
  v10[1] = static AppDisambiguationViewBuilder.makeModernizedDisambiguationView(sortedApps:disambiguationList:manifest:dialog:deviceState:);
  v11 = *(v35 + 240);
  v12 = *(v35 + 224);

  return v23(v12, v35 + 16, v22, v11);
}

{
  v7 = *v0;
  v5 = (*v0 + 16);
  v1 = *(*v0 + 352);
  v4 = *(*v0 + 344);
  v6 = *(*v0 + 336);
  *(v7 + 112) = *v0;

  __swift_destroy_boxed_opaque_existential_0(v5);

  v2 = *(v7 + 112);

  return MEMORY[0x2822009F8](static AppDisambiguationViewBuilder.makeModernizedDisambiguationView(sortedApps:disambiguationList:manifest:dialog:deviceState:), 0);
}

{
  v5 = v0[41];
  v1 = v0[40];
  v6 = v0[39];
  v7 = v0[38];
  v8 = v0[37];
  v9 = v0[36];
  v10 = v0[35];
  v11 = v0[34];
  v0[14] = v0;

  outlined destroy of SiriPaymentsSnippetModel(v10);

  v2 = *(v0[14] + 8);
  v3 = v0[14];

  return v2();
}

uint64_t DisambiguationViewBuilder.makeContactDisambiguationView<A, B>(app:intent:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v5 = v4[2];
  return MEMORY[0x2822009F8](DisambiguationViewBuilder.makeContactDisambiguationView<A, B>(app:intent:response:), 0);
}

uint64_t DisambiguationViewBuilder.makeContactDisambiguationView<A, B>(app:intent:response:)()
{
  *(v0 + 16) = v0;
  type metadata accessor for SAAceView();
  v1 = SAUIAppPunchOut.__allocating_init()();
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2(v1);
}

uint64_t DisambiguationViewBuilder.persons.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t DisambiguationViewBuilder.persons.setter(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t DisambiguationViewBuilder.init(contactDisambiguationType:persons:deviceState:)(char a1, uint64_t a2, uint64_t *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = v3;
  type metadata accessor for INPerson();
  *(v3 + 24) = _allocateUninitializedArray<A>(_:)();
  *(v3 + 16) = a1;

  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = a2;

  swift_endAccess();
  outlined init with copy of GlobalsProviding(a3, v10);
  outlined init with take of CommonLabelsProviding(v10, (v3 + 32));
  __swift_destroy_boxed_opaque_existential_0(a3);

  return v9;
}

uint64_t DisambiguationViewBuilder.makeDisambiguationItems(app:compact:)()
{
  v3 = *(v0 + 16);
  if ((v3 - 3) > 1u)
  {
    return DisambiguationViewBuilder.makeDuplicateContactDisambiguationItems(_:)(v3);
  }

  else
  {
    return DisambiguationViewBuilder.makeContactDisambiguationItems()();
  }
}

uint64_t DisambiguationViewBuilder.makeContactDisambiguationItems()()
{
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v61 = v69;
  v69[0] = 0;
  v69[1] = 0;
  v65 = 0;
  v64 = 0;
  v57 = 0;
  v47 = type metadata accessor for Image();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v51 = (&v18 - v50);
  v52 = type metadata accessor for ContactQuery();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v56 = &v18 - v55;
  v72 = &v18 - v55;
  v71 = v0;
  v58 = type metadata accessor for SiriKitDisambiguationItem();
  v70 = _allocateUninitializedArray<A>(_:)();
  v59 = &v68;
  swift_beginAccess();
  v60 = *(v0 + 24);

  swift_endAccess();
  v67 = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo8INPersonCGGMd, &_ss16IndexingIteratorVySaySo8INPersonCGGMR);
    IndexingIterator.next()();
    v46 = v66;
    if (!v66)
    {
      break;
    }

    v45 = v46;
    v44 = v46;
    v65 = v46;
    INPerson.toContactQuery()(v56);
    v34 = type metadata accessor for SiriKitDisambiguationItemComponent();
    v26 = 0x1FB359000uLL;
    v21 = [v44 0x1FB359778];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v1;
    v22 = dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

    MEMORY[0x277D82BD8](v21);
    v25 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.hideOnLockScreen()();

    v24 = [v44 (v26 + 1912)];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v2;
    v29 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withPrint(_:)();

    MEMORY[0x277D82BD8](v24);

    v28 = [v44 (v26 + 1912)];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v3;
    v30 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeak(_:)();

    MEMORY[0x277D82BD8](v28);

    v31 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withPrintBlue(_:)();

    v43 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

    v64 = v43;
    v35 = 1;
    v32 = _allocateUninitializedArray<A>(_:)();
    v33 = v4;

    v5 = v32;
    *v33 = v43;
    _finalizeUninitializedArray<A>(_:)();
    v41 = v5;
    v38 = MEMORY[0x277D837D0];
    v37 = _allocateUninitializedArray<A>(_:)();
    v36 = v6;
    v7 = INPerson.identifier.getter();
    v8 = v36;
    v9 = v7;
    v10 = v37;
    *v36 = v9;
    v8[1] = v11;
    _finalizeUninitializedArray<A>(_:)();
    v12 = v48;
    *v51 = v10;
    v13 = *MEMORY[0x277D5C100];
    (*(v12 + 104))();
    v14 = INPerson.identifier.getter();
    v39 = v15;
    v40 = static PaymentsDirectInvocations.selectionInvocation(contactIdentifier:)(v14, v15);

    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v16 = SiriKitDisambiguationItem.__allocating_init(components:image:directInvocation:allowLineWrapForDisplayText:)();
    v42 = &v63;
    v63 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow0aB18DisambiguationItemCGMd, &_sSay11SiriKitFlow0aB18DisambiguationItemCGMR);
    Array.append(_:)();

    (*(v53 + 8))(v56, v52);
    MEMORY[0x277D82BD8](v44);
  }

  outlined destroy of [SFCardSection](v69);
  v18 = &v70;
  v19 = v70;

  outlined destroy of [SFCardSection](v18);
  return v19;
}

uint64_t DisambiguationViewBuilder.makeDuplicateContactDisambiguationItems(_:)(int a1)
{
  v82 = a1;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v92 = v108;
  v108[0] = 0;
  v108[1] = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v99 = 0;
  v88 = 0;
  v83 = type metadata accessor for Image();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v87 = (&v21 - v86);
  v111 = v2;
  v110 = v1;
  v89 = type metadata accessor for SiriKitDisambiguationItem();
  v109 = _allocateUninitializedArray<A>(_:)();
  v90 = &v107;
  swift_beginAccess();
  v91 = *(v1 + 24);

  swift_endAccess();
  v106 = v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo8INPersonCGGMd, &_ss16IndexingIteratorVySaySo8INPersonCGGMR);
    IndexingIterator.next()();
    v81 = v105;
    if (!v105)
    {
      break;
    }

    v80 = v81;
    v78 = v81;
    v104 = v81;
    v79 = INPerson.toCNContact.getter();
    v103 = v79;
    if (v82)
    {
      if (v82 == 1)
      {
        v68 = [v79 emailAddresses];
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
        v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        Array.subscript.getter();
        v65 = v95;
        v66 = [v95 value];
        v69._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69._object = v4;
        MEMORY[0x277D82BD8](v65);

        v102 = v69;
        MEMORY[0x277D82BD8](v66);

        MEMORY[0x277D82BD8](v68);
        v77 = v69;
      }

      else
      {
        v62 = [v79 phoneNumbers];
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
        v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v101 = v61;
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14CNLabeledValueCGMd, &_sSaySo14CNLabeledValueCGMR);
        lazy protocol witness table accessor for type [CNLabeledValue<CNPhoneNumber>] and conformance [A]();
        v63 = Collection.isEmpty.getter();

        MEMORY[0x277D82BD8](v62);
        if (v63)
        {
          v50 = [v79 emailAddresses];
          v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v100 = v49;
          lazy protocol witness table accessor for type [CNLabeledValue<NSString>] and conformance [A]();
          v51 = Collection.isEmpty.getter();

          MEMORY[0x277D82BD8](v50);
          if (v51)
          {
            v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);

            v102 = v42;
            v48 = v42;
          }

          else
          {
            v46 = [v79 emailAddresses];
            v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            Array.subscript.getter();
            v43 = v97;
            v44 = [v97 value];
            v47._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v47._object = v6;
            MEMORY[0x277D82BD8](v43);

            v102 = v47;
            MEMORY[0x277D82BD8](v44);

            MEMORY[0x277D82BD8](v46);
            v48 = v47;
          }

          v58 = v48;
        }

        else
        {
          v56 = [v79 phoneNumbers];
          v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          Array.subscript.getter();
          v52 = v96;
          v53 = [v96 value];
          MEMORY[0x277D82BD8](v52);
          v54 = [v53 stringValue];
          v57._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57._object = v5;
          MEMORY[0x277D82BD8](v53);

          v102 = v57;
          MEMORY[0x277D82BD8](v54);

          MEMORY[0x277D82BD8](v56);
          v58 = v57;
        }

        v77 = v58;
      }
    }

    else
    {
      v75 = [v79 phoneNumbers];
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
      v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      Array.subscript.getter();
      v71 = v94;
      v72 = [v94 value];
      MEMORY[0x277D82BD8](v71);
      v73 = [v72 stringValue];
      v76._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76._object = v3;
      MEMORY[0x277D82BD8](v72);

      v102 = v76;
      MEMORY[0x277D82BD8](v73);

      MEMORY[0x277D82BD8](v75);
      v77 = v76;
    }

    v26 = v77;
    v32 = type metadata accessor for SiriKitDisambiguationItemComponent();
    v24 = dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();
    v25 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.hideOnLockScreen()();

    v27 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withPrint(_:)();

    v28 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeak(_:)();

    v29 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withPrintBlue(_:)();

    v41 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

    v99 = v41;
    v33 = 1;
    v30 = _allocateUninitializedArray<A>(_:)();
    v31 = v7;

    v8 = v30;
    *v31 = v41;
    _finalizeUninitializedArray<A>(_:)();
    v39 = v8;
    v36 = MEMORY[0x277D837D0];
    v35 = _allocateUninitializedArray<A>(_:)();
    v34 = v9;
    v10 = INPerson.identifier.getter();
    v11 = v34;
    v12 = v10;
    v13 = v35;
    *v34 = v12;
    v11[1] = v14;
    _finalizeUninitializedArray<A>(_:)();
    v15 = v84;
    *v87 = v13;
    v16 = *MEMORY[0x277D5C100];
    (*(v15 + 104))();
    v17 = INPerson.identifier.getter();
    v37 = v18;
    v38 = static PaymentsDirectInvocations.selectionInvocation(contactIdentifier:)(v17, v18);

    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v19 = SiriKitDisambiguationItem.__allocating_init(components:image:directInvocation:allowLineWrapForDisplayText:)();
    v40 = &v98;
    v98 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow0aB18DisambiguationItemCGMd, &_sSay11SiriKitFlow0aB18DisambiguationItemCGMR);
    Array.append(_:)();

    outlined destroy of String.UTF8View(&v102);
    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](v78);
  }

  outlined destroy of [SFCardSection](v108);
  v22 = &v109;
  v23 = v109;

  outlined destroy of [SFCardSection](v22);
  return v23;
}

uint64_t DisambiguationViewBuilder.deinit()
{
  outlined destroy of [SFCardSection]((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  return v2;
}

uint64_t protocol witness for DisambiguationViewBuilding.makeContactDisambiguationView<A, B>(app:intent:response:) in conformance DisambiguationViewBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return DisambiguationViewBuilder.makeContactDisambiguationView<A, B>(app:intent:response:)(a1, a2, a3);
}

uint64_t closure #1 in static AppDisambiguationViewBuilder.makeModernizedDisambiguationView(sortedApps:disambiguationList:manifest:dialog:deviceState:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a3;
  v9[0] = a1;
  v12 = a2;
  v24 = 0;
  v23 = 0;
  v9[1] = 0;
  v18 = type metadata accessor for Locale();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v17 = v9 - v10;
  v11 = *v3;
  v24 = v11;
  v23 = v4;
  type metadata accessor for AppInformationResolver();

  v19 = AppInformationResolver.__allocating_init(app:)();
  v14 = v12[3];
  v13 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v14);
  dispatch thunk of DeviceState.siriLocale.getter();
  v20 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v22 = v5;
  (*(v15 + 8))(v17, v18);

  result = v20;
  v7 = v21;
  v8 = v22;
  *v21 = v20;
  v7[1] = v8;
  return result;
}

uint64_t closure #2 in static AppDisambiguationViewBuilder.makeModernizedDisambiguationView(sortedApps:disambiguationList:manifest:dialog:deviceState:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = App.appIdentifier.getter();
  *a2 = result;
  a2[1] = v3;
  return result;
}

unint64_t type metadata accessor for DialogElement()
{
  v2 = lazy cache variable for type metadata for DialogElement;
  if (!lazy cache variable for type metadata for DialogElement)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for DialogElement);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [DialogElement] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [DialogElement] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DialogElement] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13DialogElementCGMd, &_sSaySo13DialogElementCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [DialogElement] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [DialogElement] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DialogElement] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13DialogElementCGMd, &_sSaySo13DialogElementCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [DialogElement] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

NSJSONWritingOptions closure #3 in static AppDisambiguationViewBuilder.makeModernizedDisambiguationView(sortedApps:disambiguationList:manifest:dialog:deviceState:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, NSJSONWritingOptions *a3@<X8>)
{
  v8 = *a1;
  result = App.toAppDescription(deviceState:)(a2);
  *a3 = result;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type [CNLabeledValue<CNPhoneNumber>] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [CNLabeledValue<CNPhoneNumber>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CNLabeledValue<CNPhoneNumber>] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14CNLabeledValueCGMd, &_sSaySo14CNLabeledValueCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [CNLabeledValue<CNPhoneNumber>] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [CNLabeledValue<NSString>] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [CNLabeledValue<NSString>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CNLabeledValue<NSString>] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14CNLabeledValueCGMd, &_sSaySo14CNLabeledValueCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [CNLabeledValue<NSString>] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type DuplicateContactDisambiguationType and conformance DuplicateContactDisambiguationType()
{
  v2 = lazy protocol witness table cache variable for type DuplicateContactDisambiguationType and conformance DuplicateContactDisambiguationType;
  if (!lazy protocol witness table cache variable for type DuplicateContactDisambiguationType and conformance DuplicateContactDisambiguationType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DuplicateContactDisambiguationType and conformance DuplicateContactDisambiguationType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type DuplicateContactDisambiguationType and conformance DuplicateContactDisambiguationType;
  if (!lazy protocol witness table cache variable for type DuplicateContactDisambiguationType and conformance DuplicateContactDisambiguationType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DuplicateContactDisambiguationType and conformance DuplicateContactDisambiguationType);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for ContactDisambiguationType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v8 = ((a2 + 4) >> 8) + 1;
    v9 = 1;
    if (v8 >= 0x100)
    {
      if (v8 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v9 = v2;
    }

    if (v9 == 1)
    {
      v7 = a1[1];
    }

    else
    {
      v7 = v9 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v7)
    {
      v6 = (*a1 | ((v7 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v4 = v3 - 2;
      if (v4 < 0)
      {
        v4 = -1;
      }

      v6 = v4;
    }
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactDisambiguationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *SendTCCHandleStrategy.__allocating_init(previousIntent:)(uint64_t a1)
{
  v25 = a1;
  v40 = 0;
  v39 = 0;
  v34 = 0;
  v13 = 0;
  v4 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v5 = &v3 - v4;
  v40 = v1;
  v16 = type metadata accessor for SendPaymentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v24 = CATWrapper.__allocating_init(options:globals:)();
  v39 = v24;
  NSJSONWritingOptions.init(rawValue:)(v24);
  type metadata accessor for Globals();
  v6 = v38;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v38);
  v7 = &v37;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v8 = &v36;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v9 = &v35;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v23 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v6, v7, v8, v9);
  v34 = v23;
  MEMORY[0x277D82BE0](v25);

  v20 = v33;
  v33[3] = &type metadata for CommonLabelsProvider;
  v33[4] = &protocol witness table for CommonLabelsProvider;
  v12 = v31;
  v31[3] = &type metadata for CommonLabelsProvider;
  v31[4] = &protocol witness table for CommonLabelsProvider;
  v10 = v30;
  outlined init with copy of GlobalsProviding(v23 + 56, v30);

  v11 = v29;
  v29[3] = v16;
  v29[4] = &protocol witness table for SendPaymentCATs;
  v29[0] = v24;
  v22 = v32;
  v32[3] = &type metadata for ConfirmationViewBuilder;
  v32[4] = &protocol witness table for ConfirmationViewBuilder;
  v32[0] = swift_allocObject();
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v12, v10, v11, (v32[0] + 16));
  v14 = type metadata accessor for INSendPaymentIntent();
  v15 = type metadata accessor for INSendPaymentIntentResponse();
  v19 = v28;
  v17 = &protocol witness table for INSendPaymentIntent;
  v18 = &protocol witness table for INSendPaymentIntentResponse;
  default argument 1 of TCCHandleStrategy.init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)(v14, v15, v16, v28);
  v21 = v27;
  default argument 4 of TCCHandleStrategy.init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)(v27);
  v26 = SendTCCHandleStrategy.__allocating_init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)(v25, v19, v24, v20, v21, v22);

  v41 = v26;

  MEMORY[0x277D82BD8](v25);

  return v26;
}

uint64_t sub_2687A6C04()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  return swift_deallocObject();
}

void *RequestTCCHandleStrategy.__allocating_init(previousIntent:)(uint64_t a1)
{
  v25 = a1;
  v40 = 0;
  v39 = 0;
  v34 = 0;
  v13 = 0;
  v4 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v5 = &v3 - v4;
  v40 = v1;
  v16 = type metadata accessor for RequestPaymentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v24 = CATWrapper.__allocating_init(options:globals:)();
  v39 = v24;
  NSJSONWritingOptions.init(rawValue:)(v24);
  type metadata accessor for Globals();
  v6 = v38;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v38);
  v7 = &v37;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v8 = &v36;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v9 = &v35;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v23 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v6, v7, v8, v9);
  v34 = v23;
  MEMORY[0x277D82BE0](v25);

  v20 = v33;
  v33[3] = &type metadata for CommonLabelsProvider;
  v33[4] = &protocol witness table for CommonLabelsProvider;
  v12 = v31;
  v31[3] = &type metadata for CommonLabelsProvider;
  v31[4] = &protocol witness table for CommonLabelsProvider;
  v10 = v30;
  outlined init with copy of GlobalsProviding(v23 + 56, v30);

  v11 = v29;
  v29[3] = v16;
  v29[4] = &protocol witness table for RequestPaymentCATs;
  v29[0] = v24;
  v22 = v32;
  v32[3] = &type metadata for ConfirmationViewBuilder;
  v32[4] = &protocol witness table for ConfirmationViewBuilder;
  v32[0] = swift_allocObject();
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v12, v10, v11, (v32[0] + 16));
  v14 = type metadata accessor for INRequestPaymentIntent();
  v15 = type metadata accessor for INRequestPaymentIntentResponse();
  v19 = v28;
  v17 = &protocol witness table for INRequestPaymentIntent;
  v18 = &protocol witness table for INRequestPaymentIntentResponse;
  default argument 1 of TCCHandleStrategy.init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)(v14, v15, v16, v28);
  v21 = v27;
  default argument 4 of TCCHandleStrategy.init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)(v27);
  v26 = SendTCCHandleStrategy.__allocating_init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)(v25, v19, v24, v20, v21, v22);

  v41 = v26;

  MEMORY[0x277D82BD8](v25);

  return v26;
}

void *SearchForAccountsTCCHandleStrategy.__allocating_init(previousIntent:)(uint64_t a1)
{
  v25 = a1;
  v40 = 0;
  v39 = 0;
  v34 = 0;
  v13 = 0;
  v4 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v5 = &v3 - v4;
  v40 = v1;
  v16 = type metadata accessor for SearchForAccountsCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v24 = CATWrapper.__allocating_init(options:globals:)();
  v39 = v24;
  NSJSONWritingOptions.init(rawValue:)(v24);
  type metadata accessor for Globals();
  v6 = v38;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v38);
  v7 = &v37;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v8 = &v36;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v9 = &v35;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v23 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v6, v7, v8, v9);
  v34 = v23;
  MEMORY[0x277D82BE0](v25);

  v20 = v33;
  v33[3] = &type metadata for CommonLabelsProvider;
  v33[4] = &protocol witness table for CommonLabelsProvider;
  v12 = v31;
  v31[3] = &type metadata for CommonLabelsProvider;
  v31[4] = &protocol witness table for CommonLabelsProvider;
  v10 = v30;
  outlined init with copy of GlobalsProviding(v23 + 56, v30);

  v11 = v29;
  v29[3] = v16;
  v29[4] = &protocol witness table for SearchForAccountsCATs;
  v29[0] = v24;
  v22 = v32;
  v32[3] = &type metadata for ConfirmationViewBuilder;
  v32[4] = &protocol witness table for ConfirmationViewBuilder;
  v32[0] = swift_allocObject();
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v12, v10, v11, (v32[0] + 16));
  v14 = type metadata accessor for INSearchForAccountsIntent();
  v15 = type metadata accessor for INSearchForAccountsIntentResponse();
  v19 = v28;
  v17 = &protocol witness table for INSearchForAccountsIntent;
  v18 = &protocol witness table for INSearchForAccountsIntentResponse;
  default argument 1 of TCCHandleStrategy.init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)(v14, v15, v16, v28);
  v21 = v27;
  default argument 4 of TCCHandleStrategy.init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)(v27);
  v26 = SendTCCHandleStrategy.__allocating_init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)(v25, v19, v24, v20, v21, v22);

  v41 = v26;

  MEMORY[0x277D82BD8](v25);

  return v26;
}

uint64_t default argument 1 of TCCHandleStrategy.init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10[7] = a1;
  v10[6] = a2;
  v10[5] = a3;
  v5 = type metadata accessor for Globals();
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v10);
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  result = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v10, v9, v8, v7);
  a4[3] = v5;
  a4[4] = &protocol witness table for Globals;
  *a4 = result;
  return result;
}

uint64_t default argument 4 of TCCHandleStrategy.init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for TCCResponses();
  a1[4] = &protocol witness table for TCCResponses;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return TCCResponses.init()();
}

void *SendTCCHandleStrategy.init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v18 = 0;
  v17[10] = a1;
  v17[9] = a2;
  v17[8] = a3;
  v17[7] = a4;
  v17[6] = a5;
  v17[5] = a6;
  MEMORY[0x277D82BE0](a1);
  outlined init with copy of GlobalsProviding(a2, v17);

  outlined init with copy of GlobalsProviding(a4, v16);
  outlined init with copy of GlobalsProviding(a5, v15);
  outlined init with copy of GlobalsProviding(a6, v14);
  v13 = TCCHandleStrategy.init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)(a1, v17, a3, v16, v15, v14);

  v18 = v13;
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a4);

  __swift_destroy_boxed_opaque_existential_0(a2);
  MEMORY[0x277D82BD8](a1);

  return v13;
}

uint64_t TCCHandleStrategy.deinit()
{
  v6 = *(*v0 + 80);
  v5 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  outlined destroy of SFRichText?(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  v1 = v0[23];

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  return v3;
}

uint64_t TCCHandleStrategy.previousIntent.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

uint64_t TCCHandleStrategy.previousIntent.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t TCCHandleStrategy.ttsEnabled.getter()
{
  v5 = 0;
  v2 = *v0;
  v5 = v0;
  v4[7] = v2[10];
  v4[6] = v2[11];
  v4[5] = v2[12];
  outlined init with copy of GlobalsProviding((v0 + 24), v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v3 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v3 & 1;
}

uint64_t TCCHandleStrategy.actionForInput(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v43 = a1;
  v56 = partial apply for implicit closure #1 in TCCHandleStrategy.actionForInput(input:);
  v58 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v62 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v64 = partial apply for closure #1 in OSLogArguments.append(_:);
  v66 = partial apply for closure #1 in OSLogArguments.append(_:);
  v69 = partial apply for closure #1 in OSLogArguments.append(_:);
  v81 = 0;
  v80 = 0;
  v36 = 0;
  v54 = *v2;
  v37 = 0;
  v38 = type metadata accessor for Parse();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v42 = v26 - v41;
  v49 = type metadata accessor for Logger();
  v47 = *(v49 - 8);
  v48 = v49 - 8;
  v44 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v43);
  v4 = v26 - v44;
  v46 = v26 - v44;
  v81 = v3;
  v80 = v45;
  v50 = v54[10];
  v79[3] = v50;
  v51 = v54[11];
  v79[2] = v51;
  v52 = v54[12];
  v79[1] = v52;
  v5 = Logger.payments.unsafeMutableAddressor();
  (*(v47 + 16))(v4, v5, v49);
  v60 = 7;
  v6 = swift_allocObject();
  v7 = v51;
  v8 = v52;
  v9 = v54;
  v57 = v6;
  v6[2] = v50;
  v6[3] = v7;
  v6[4] = v8;
  v53 = v9[13];
  v10 = v54;
  v6[5] = v53;
  v6[6] = v10[14];
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  v55 = 17;
  v65 = swift_allocObject();
  *(v65 + 16) = 32;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v59 = 32;
  v11 = swift_allocObject();
  v12 = v57;
  v61 = v11;
  *(v11 + 16) = v56;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v61;
  v63 = v13;
  *(v13 + 16) = v58;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v63;
  v70 = v15;
  *(v15 + 16) = v62;
  *(v15 + 24) = v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v68 = _allocateUninitializedArray<A>(_:)();
  v71 = v17;

  v18 = v65;
  v19 = v71;
  *v71 = v64;
  v19[1] = v18;

  v20 = v67;
  v21 = v71;
  v71[2] = v66;
  v21[3] = v20;

  v22 = v70;
  v23 = v71;
  v71[4] = v69;
  v23[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v73, v74))
  {
    v24 = v36;
    v28 = static UnsafeMutablePointer.allocate(capacity:)();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v29 = createStorage<A>(capacity:type:)(0);
    v30 = createStorage<A>(capacity:type:)(1);
    v31 = v79;
    v79[0] = v28;
    v32 = &v78;
    v78 = v29;
    v33 = &v77;
    v77 = v30;
    serialize(_:at:)(2, v79);
    serialize(_:at:)(1, v31);
    v75 = v64;
    v76 = v65;
    closure #1 in osLogInternal(_:log:type:)(&v75, v31, v32, v33);
    v34 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v75 = v66;
      v76 = v67;
      closure #1 in osLogInternal(_:log:type:)(&v75, v79, &v78, &v77);
      v26[1] = 0;
      v75 = v69;
      v76 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v75, v79, &v78, &v77);
      _os_log_impl(&dword_2686B1000, v73, v74, "##TCCHandleStrategy<%s> actionForInput", v28, 0xCu);
      destroyStorage<A>(_:count:)(v29, 0, v27);
      destroyStorage<A>(_:count:)(v30, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v28, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v73);
  (*(v47 + 8))(v46, v49);
  Input.parse.getter();
  static FlowUtil.actionForInput(parse:intentType:)(v42, v50, v53, v35);
  return (*(v39 + 8))(v42, v38);
}

uint64_t TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[67] = v3;
  v4[66] = a2;
  v4[65] = a1;
  v4[60] = v4;
  v4[61] = 0;
  v4[62] = 0;
  v4[63] = 0;
  v4[64] = 0;
  v4[58] = 0;
  v4[59] = 0;
  v21 = *v3;
  v4[68] = *v3;
  v5 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v4[69] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v4[70] = v6;
  v14 = *(v6 - 8);
  v4[71] = v14;
  v7 = *(v14 + 64) + 15;
  v4[72] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v4[73] = v8;
  v15 = *(v8 - 8);
  v4[74] = v15;
  v9 = *(v15 + 64) + 15;
  v4[75] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR) - 8) + 64);
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v4[79] = v10;
  v17 = *(v10 - 8);
  v4[80] = v17;
  v11 = *(v17 + 64) + 15;
  v4[81] = swift_task_alloc();
  v4[61] = a2;
  v4[62] = a3;
  v4[82] = v21[10];
  v4[63] = v20;
  v4[83] = v21[11];
  v4[84] = v21[12];
  v12 = v4[60];

  return MEMORY[0x2822009F8](TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:), 0);
}

uint64_t TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:)()
{
  v59 = v0;
  v43 = v0[84];
  v42 = v0[83];
  v41 = v0[82];
  v1 = v0[81];
  v39 = v0[80];
  v40 = v0[79];
  v44 = v0[68];
  v0[60] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v39 + 16))(v1, v2, v40);
  v45 = swift_allocObject();
  v45[2] = v41;
  v45[3] = v42;
  v45[4] = v43;
  v45[5] = *(v44 + 104);
  v45[6] = *(v44 + 112);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  v48 = swift_allocObject();
  *(v48 + 16) = 32;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = partial apply for implicit closure #1 in TCCHandleStrategy.actionForInput(input:);
  *(v46 + 24) = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v47 + 24) = v46;
  v50 = swift_allocObject();
  *(v50 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v50 + 24) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v51 = v3;

  *v51 = partial apply for closure #1 in OSLogArguments.append(_:);
  v51[1] = v48;

  v51[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v51[3] = v49;

  v51[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v51[5] = v50;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v52, v53))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v36 = createStorage<A>(capacity:type:)(0);
    v37 = createStorage<A>(capacity:type:)(1);
    v54 = buf;
    v55 = v36;
    v56 = v37;
    serialize(_:at:)(2, &v54);
    serialize(_:at:)(1, &v54);
    v57 = partial apply for closure #1 in OSLogArguments.append(_:);
    v58 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v57, &v54, &v55, &v56);
    v57 = partial apply for closure #1 in OSLogArguments.append(_:);
    v58 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v57, &v54, &v55, &v56);
    v57 = partial apply for closure #1 in OSLogArguments.append(_:);
    v58 = v50;
    closure #1 in osLogInternal(_:log:type:)(&v57, &v54, &v55, &v56);
    _os_log_impl(&dword_2686B1000, v52, v53, "#TCCHandleStrategy<%s> makePromptForTCCAcceptance", buf, 0xCu);
    destroyStorage<A>(_:count:)(v36, 0, v34);
    destroyStorage<A>(_:count:)(v37, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v24 = v38[81];
  v25 = v38[79];
  v30 = v38[75];
  v32 = v38[73];
  v27 = v38[67];
  v26 = v38[66];
  v23 = v38[80];
  v29 = v38[74];
  MEMORY[0x277D82BD8](v52);
  (*(v23 + 8))(v24, v25);
  type metadata accessor for AppInformationResolver();

  AppInformationResolver.__allocating_init(app:)();
  outlined init with copy of GlobalsProviding(v27 + 192, (v38 + 18));
  v28 = v38[22];
  __swift_project_boxed_opaque_existential_1(v38 + 18, v38[21]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v31 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v33 = v4;
  (*(v29 + 8))(v30, v32);
  __swift_destroy_boxed_opaque_existential_0(v38 + 18);

  if (v33)
  {
    v22 = v38[78];
    v21 = v38[77];
    v5 = v38[66];
    v38[58] = v31;
    v38[59] = v33;
    App.isFirstParty.getter();
    AppDisplayInfo.init(displayName:isFirstParty:)();
    v6 = type metadata accessor for AppDisplayInfo();
    (*(*(v6 - 8) + 56))(v21, 0, 1);
    outlined init with take of AppDisplayInfo?(v21, v22);
  }

  else
  {
    v20 = v38[78];
    v19 = v38[77];
    v7 = type metadata accessor for AppDisplayInfo();
    (*(*(v7 - 8) + 56))(v19, 1);
    outlined init with take of AppDisplayInfo?(v19, v20);
  }

  v13 = v38[78];
  v12 = v38[76];
  v14 = v38[67];
  outlined init with copy of GlobalsProviding(v14 + 64, (v38 + 23));
  v16 = v38[26];
  v17 = v38[27];
  __swift_project_boxed_opaque_existential_1(v38 + 23, v16);
  outlined init with copy of AppDisplayInfo?(v13, v12);
  outlined init with copy of GlobalsProviding(v14 + 192, (v38 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v15 = Dictionary.init(dictionaryLiteral:)();
  v38[85] = v15;
  v18 = (*(v17 + 8) + **(v17 + 8));
  v8 = *(*(v17 + 8) + 4);
  v9 = swift_task_alloc();
  v38[86] = v9;
  *v9 = v38[60];
  v9[1] = TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:);
  v10 = v38[76];

  return v18(v10, v38 + 28, v15, v16, v17);
}

{
  v1 = v0[87];
  v7 = v0[67];
  v0[60] = v0;
  v0[64] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  v0[89] = type metadata accessor for SKIDirectInvocation();
  outlined init with copy of GlobalsProviding(v7 + 192, (v0 + 33));
  v6 = static SKIDirectInvocation.makeButtonPressDirectInvocation(buttonPress:deviceState:)(0, v0 + 33);
  __swift_destroy_boxed_opaque_existential_0(v0 + 33);
  v0[90] = type metadata accessor for SAStartLocalRequest();
  v0[91] = SAClientBoundCommand.data.getter();
  v0[92] = v2;
  MEMORY[0x277D82BD8](v6);
  outlined init with copy of GlobalsProviding(v7 + 24, (v0 + 38));
  v11 = v0[41];
  v9 = v0[42];
  __swift_project_boxed_opaque_existential_1(v0 + 38, v11);
  v10 = (*(v9 + 24) + **(v9 + 24));
  v3 = *(*(v9 + 24) + 4);
  v4 = swift_task_alloc();
  *(v8 + 744) = v4;
  *v4 = *(v8 + 480);
  v4[1] = TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:);

  return v10(v11, v9);
}

{
  v6 = v0[90];
  v1 = v0[89];
  v8 = v0[67];
  v0[60] = v0;
  outlined init with copy of GlobalsProviding(v8 + 192, (v0 + 43));
  v7 = static SKIDirectInvocation.makeButtonPressDirectInvocation(buttonPress:deviceState:)(1, v0 + 43);
  __swift_destroy_boxed_opaque_existential_0(v0 + 43);
  v0[97] = SAClientBoundCommand.data.getter();
  v0[98] = v2;
  MEMORY[0x277D82BD8](v7);
  outlined init with copy of GlobalsProviding(v8 + 24, (v0 + 48));
  v12 = v0[51];
  v10 = v0[52];
  __swift_project_boxed_opaque_existential_1(v0 + 48, v12);
  v11 = (*(v10 + 16) + **(v10 + 16));
  v3 = *(*(v10 + 16) + 4);
  v4 = swift_task_alloc();
  *(v9 + 792) = v4;
  *v4 = *(v9 + 480);
  v4[1] = TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:);

  return v11(v12, v10);
}

{
  v24 = MEMORY[0x277D5BD40];
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[95];
  v7 = v0[92];
  v8 = v0[91];
  v22 = v0[87];
  v15 = v0[72];
  v16 = v0[69];
  v19 = v0[67];
  v18 = v0[66];
  v0[60] = v0;
  SiriPaymentsSnippetModel.BinaryConfirmationModel.init(primaryButtonDI:primaryButtonLabel:secondaryButtonDI:secondaryButtonLabel:)(v8, v7, v6, v5, v4, v3, v2, v1, v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  static DialogPhase.confirmation.getter();

  v17 = swift_task_alloc();
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  OutputGenerationManifest.init(dialogPhase:_:)();

  type metadata accessor for ResponseFactory();
  v0[103] = ResponseFactory.__allocating_init()();
  v0[56] = type metadata accessor for SiriPaymentsSnippetModel();
  v0[57] = lazy protocol witness table accessor for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel();
  __dst = __swift_allocate_boxed_opaque_existential_1(v0 + 53);
  outlined init with copy of SiriPaymentsSnippetModel.BinaryConfirmationModel(v0 + 2, v0 + 10);
  memcpy(__dst, v0 + 2, 0x40uLL);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DialogExecutionResult();
  v23 = _allocateUninitializedArray<A>(_:)();
  v21 = v9;
  MEMORY[0x277D82BE0](v22);
  *v21 = v22;
  _finalizeUninitializedArray<A>(_:)();
  v0[104] = v23;
  v26 = (v24 + *v24);
  v10 = v24[1];
  v11 = swift_task_alloc();
  v25[105] = v11;
  *v11 = v25[60];
  v11[1] = TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:);
  v12 = v25[72];
  v13 = v25[65];

  return v26(v13, v0 + 53, v23, v12);
}

{
  v7 = *v0;
  v5 = (*v0 + 424);
  v1 = *(*v0 + 840);
  v4 = *(*v0 + 832);
  v6 = *(*v0 + 824);
  *(v7 + 480) = *v0;

  __swift_destroy_boxed_opaque_existential_0(v5);

  v2 = *(v7 + 480);

  return MEMORY[0x2822009F8](TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:), 0);
}

{
  v6 = v0[87];
  v7 = v0[81];
  v8 = v0[78];
  v9 = v0[77];
  v10 = v0[76];
  v11 = v0[75];
  v12 = v0[72];
  v1 = v0[71];
  v2 = v0[70];
  v13 = v0[69];
  v0[60] = v0;
  (*(v1 + 8))();
  outlined destroy of SiriPaymentsSnippetModel.BinaryConfirmationModel(v0 + 2);
  MEMORY[0x277D82BD8](v6);
  outlined destroy of AppDisplayInfo?(v8);

  v3 = *(v0[60] + 8);
  v4 = v0[60];

  return v3();
}

{
  v1 = v0[85];
  v8 = v0[78];
  v7 = v0[76];
  v0[60] = v0;

  outlined destroy of FlowActivity?(v0 + 28);
  outlined destroy of AppDisplayInfo?(v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  outlined destroy of AppDisplayInfo?(v8);
  v2 = v0[88];
  v3 = v0[81];
  v9 = v0[78];
  v10 = v0[77];
  v11 = v0[76];
  v12 = v0[75];
  v13 = v0[72];
  v14 = v0[69];

  v4 = *(v0[60] + 8);
  v5 = v0[60];

  return v4();
}

{
  v7 = v0[92];
  v6 = v0[91];
  v8 = v0[87];
  v9 = v0[78];
  v0[60] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  outlined consume of Data._Representation(v6, v7);
  MEMORY[0x277D82BD8](v8);
  outlined destroy of AppDisplayInfo?(v9);
  v1 = v0[94];
  v2 = v0[81];
  v10 = v0[78];
  v11 = v0[77];
  v12 = v0[76];
  v13 = v0[75];
  v14 = v0[72];
  v15 = v0[69];

  v3 = *(v0[60] + 8);
  v4 = v0[60];

  return v3();
}

{
  v7 = v0[98];
  v6 = v0[97];
  v8 = v0[96];
  v10 = v0[92];
  v9 = v0[91];
  v11 = v0[87];
  v12 = v0[78];
  v0[60] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  outlined consume of Data._Representation(v6, v7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  outlined consume of Data._Representation(v9, v10);
  MEMORY[0x277D82BD8](v11);
  outlined destroy of AppDisplayInfo?(v12);
  v1 = v0[100];
  v2 = v0[81];
  v13 = v0[78];
  v14 = v0[77];
  v15 = v0[76];
  v16 = v0[75];
  v17 = v0[72];
  v18 = v0[69];

  v3 = *(v0[60] + 8);
  v4 = v0[60];

  return v3();
}

uint64_t TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:)(uint64_t a1)
{
  v14 = *v2;
  v11 = *v2 + 16;
  v12 = (*v2 + 480);
  v13 = (*v2 + 224);
  v4 = *(*v2 + 688);
  v14[60] = *v2;
  v14[87] = a1;
  v14[88] = v1;

  if (v1)
  {
    v8 = *v12;
    v7 = TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:);
  }

  else
  {
    v5 = *(v11 + 664);
    v10 = *(v11 + 592);

    outlined destroy of FlowActivity?(v13);
    outlined destroy of AppDisplayInfo?(v10);
    v6 = *v12;
    v7 = TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:)(uint64_t a1, uint64_t a2)
{
  v11 = *v3;
  v10 = v11 + 60;
  v5 = *(*v3 + 744);
  v11[60] = *v3;
  v11[94] = v2;
  v11[95] = a1;
  v11[96] = a2;

  if (v2)
  {
    v8 = *v10;
    v7 = TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:);
  }

  else
  {
    v6 = *v10;
    v7 = TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

{
  v11 = *v3;
  v10 = v11 + 60;
  v5 = *(*v3 + 792);
  v11[60] = *v3;
  v11[100] = v2;
  v11[101] = a1;
  v11[102] = a2;

  if (v2)
  {
    v8 = *v10;
    v7 = TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:);
  }

  else
  {
    v6 = *v10;
    v7 = TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t TCCHandleStrategy.parseTCCConfirmationResponse(input:)(uint64_t a1, uint64_t a2)
{
  v3[17] = v2;
  v3[16] = a2;
  v3[15] = a1;
  v3[7] = v3;
  v3[8] = 0;
  v3[9] = 0;
  v3[14] = 0;
  v20 = *v2;
  v3[18] = *v2;
  v4 = type metadata accessor for Input();
  v3[19] = v4;
  v12 = *(v4 - 8);
  v3[20] = v12;
  v3[21] = *(v12 + 64);
  v3[22] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v5 = type metadata accessor for Parse();
  v3[25] = v5;
  v14 = *(v5 - 8);
  v3[26] = v14;
  v6 = *(v14 + 64) + 15;
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for ConfirmationResponse();
  v3[28] = v7;
  v15 = *(v7 - 8);
  v3[29] = v15;
  v8 = *(v15 + 64) + 15;
  v3[30] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[31] = v9;
  v16 = *(v9 - 8);
  v3[32] = v16;
  v17 = *(v16 + 64);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[8] = a2;
  v3[9] = v19;
  v3[36] = v20[10];
  v3[37] = v20[11];
  v3[38] = v20[12];
  v10 = v3[7];

  return MEMORY[0x2822009F8](TCCHandleStrategy.parseTCCConfirmationResponse(input:), 0);
}

uint64_t TCCHandleStrategy.parseTCCConfirmationResponse(input:)()
{
  v135 = v0;
  v112 = v0[38];
  v111 = v0[37];
  v110 = v0[36];
  v1 = v0[35];
  v107 = v0[32];
  v108 = v0[31];
  v113 = v0[18];
  v0[7] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v109 = *(v107 + 16);
  v109(v1, v2, v108);
  v116 = swift_allocObject();
  v116[2] = v110;
  v116[3] = v111;
  v116[4] = v112;
  v114 = *(v113 + 104);
  v116[5] = v114;
  v115 = *(v113 + 112);
  v116[6] = v115;
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.debug.getter();
  v119 = swift_allocObject();
  *(v119 + 16) = 32;
  v120 = swift_allocObject();
  *(v120 + 16) = 8;
  v117 = swift_allocObject();
  *(v117 + 16) = partial apply for implicit closure #1 in TCCHandleStrategy.actionForInput(input:);
  *(v117 + 24) = v116;
  v118 = swift_allocObject();
  *(v118 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v118 + 24) = v117;
  v121 = swift_allocObject();
  *(v121 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v121 + 24) = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v122 = v3;

  *v122 = partial apply for closure #1 in OSLogArguments.append(_:);
  v122[1] = v119;

  v122[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v122[3] = v120;

  v122[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v122[5] = v121;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v123, v124))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v104 = createStorage<A>(capacity:type:)(0);
    v105 = createStorage<A>(capacity:type:)(1);
    v130 = buf;
    v131 = v104;
    v132 = v105;
    serialize(_:at:)(2, &v130);
    serialize(_:at:)(1, &v130);
    v133 = partial apply for closure #1 in OSLogArguments.append(_:);
    v134 = v119;
    closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
    v133 = partial apply for closure #1 in OSLogArguments.append(_:);
    v134 = v120;
    closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
    v133 = partial apply for closure #1 in OSLogArguments.append(_:);
    v134 = v121;
    closure #1 in osLogInternal(_:log:type:)(&v133, &v130, &v131, &v132);
    _os_log_impl(&dword_2686B1000, v123, v124, "##TCCHandleStrategy<%s> parseTCCConfirmationResponse", buf, 0xCu);
    destroyStorage<A>(_:count:)(v104, 0, v102);
    destroyStorage<A>(_:count:)(v105, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v97 = *(v106 + 280);
  v98 = *(v106 + 248);
  v100 = *(v106 + 136);
  v96 = *(v106 + 256);
  MEMORY[0x277D82BD8](v123);
  v99 = *(v96 + 8);
  v99(v97, v98);
  swift_beginAccess();
  v101 = *(v100 + 16);
  MEMORY[0x277D82BE0](v101);
  swift_endAccess();
  if (v101)
  {
    v95 = *(v106 + 224);
    v92 = *(v106 + 216);
    v94 = *(v106 + 192);
    v4 = *(v106 + 128);
    v93 = *(v106 + 232);
    *(v106 + 112) = v101;
    Input.parse.getter();
    Parse.confirmationResponse.getter(v94);
    if ((*(v93 + 48))(v94, 1, v95) != 1)
    {
      v82 = *(v106 + 288);
      v84 = *(v106 + 280);
      v85 = *(v106 + 272);
      v86 = *(v106 + 264);
      v87 = *(v106 + 240);
      v83 = *(v106 + 224);
      v88 = *(v106 + 216);
      v79 = *(v106 + 200);
      v89 = *(v106 + 192);
      v90 = *(v106 + 184);
      v91 = *(v106 + 176);
      v81 = *(v106 + 120);
      v80 = *(v106 + 232);
      v78 = *(v106 + 208);
      (*(v80 + 32))();
      (*(v78 + 8))(v88, v79);
      (*(v80 + 16))(v90, v87, v83);
      (*(v80 + 56))(v90, 0, 1, v83);
      ConfirmIntentAnswer.init(confirmationResponse:intent:)();
      (*(v80 + 8))(v87, v83);

      v5 = *(*(v106 + 56) + 8);
      v6 = *(v106 + 56);

      return v5();
    }

    v57 = *(v106 + 304);
    v56 = *(v106 + 296);
    v55 = *(v106 + 288);
    v8 = *(v106 + 272);
    v54 = *(v106 + 248);
    v53 = *(v106 + 216);
    v52 = *(v106 + 200);
    v62 = *(v106 + 176);
    v60 = *(v106 + 168);
    v63 = *(v106 + 152);
    v59 = *(v106 + 128);
    v51 = *(v106 + 208);
    v58 = *(v106 + 160);
    outlined destroy of ConfirmationResponse?(*(v106 + 192));
    (*(v51 + 8))(v53, v52);
    v9 = Logger.payments.unsafeMutableAddressor();
    v109(v8, v9, v54);
    v64 = swift_allocObject();
    v64[2] = v55;
    v64[3] = v56;
    v64[4] = v57;
    v64[5] = v114;
    v64[6] = v115;
    (*(v58 + 16))(v62, v59, v63);
    v61 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v67 = swift_allocObject();
    (*(v58 + 32))(v67 + v61, v62, v63);
    oslog = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    v69 = swift_allocObject();
    *(v69 + 16) = 32;
    v70 = swift_allocObject();
    *(v70 + 16) = 8;
    v65 = swift_allocObject();
    *(v65 + 16) = partial apply for implicit closure #1 in TCCHandleStrategy.actionForInput(input:);
    *(v65 + 24) = v64;
    v66 = swift_allocObject();
    *(v66 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v66 + 24) = v65;
    v71 = swift_allocObject();
    *(v71 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v71 + 24) = v66;
    v72 = swift_allocObject();
    *(v72 + 16) = 32;
    v73 = swift_allocObject();
    *(v73 + 16) = 8;
    v68 = swift_allocObject();
    *(v68 + 16) = partial apply for implicit closure #3 in TCCHandleStrategy.parseTCCConfirmationResponse(input:);
    *(v68 + 24) = v67;
    v74 = swift_allocObject();
    *(v74 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v74 + 24) = v68;
    _allocateUninitializedArray<A>(_:)();
    v75 = v10;

    *v75 = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[1] = v69;

    v75[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[3] = v70;

    v75[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[5] = v71;

    v75[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[7] = v72;

    v75[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[9] = v73;

    v75[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[11] = v74;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v77))
    {
      v48 = static UnsafeMutablePointer.allocate(capacity:)();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v49 = createStorage<A>(capacity:type:)(0);
      v50 = createStorage<A>(capacity:type:)(2);
      v125 = v48;
      v126 = v49;
      v127 = v50;
      serialize(_:at:)(2, &v125);
      serialize(_:at:)(2, &v125);
      v128 = partial apply for closure #1 in OSLogArguments.append(_:);
      v129 = v69;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      v128 = partial apply for closure #1 in OSLogArguments.append(_:);
      v129 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      v128 = partial apply for closure #1 in OSLogArguments.append(_:);
      v129 = v71;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      v128 = partial apply for closure #1 in OSLogArguments.append(_:);
      v129 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      v128 = partial apply for closure #1 in OSLogArguments.append(_:);
      v129 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      v128 = partial apply for closure #1 in OSLogArguments.append(_:);
      v129 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v128, &v125, &v126, &v127);
      _os_log_impl(&dword_2686B1000, oslog, v77, "#TCCHandleStrategy<%s> couldn't obtain confirmation response from input parse %s", v48, 0x16u);
      destroyStorage<A>(_:count:)(v49, 0, v47);
      destroyStorage<A>(_:count:)(v50, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v48, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v42 = *(v106 + 288);
    v40 = *(v106 + 272);
    v41 = *(v106 + 248);
    MEMORY[0x277D82BD8](oslog);
    v99(v40, v41);
    *(v106 + 40) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v106 + 48) = v11;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    DefaultStringInterpolation.appendInterpolation(_:)();
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v13);

    v44 = *(v106 + 40);
    v43 = *(v106 + 48);

    outlined destroy of String.UTF8View(v106 + 40);
    v46 = MEMORY[0x26D620710](v44, v43);
    v45 = v14;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v15 = v46;
    *(v15 + 8) = v45;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 15;
    swift_willThrow();
    MEMORY[0x277D82BD8](v101);
  }

  else
  {
    v16 = *(v106 + 264);
    v36 = *(v106 + 248);
    v17 = Logger.payments.unsafeMutableAddressor();
    v109(v16, v17, v36);
    log = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    v39 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v37))
    {
      v32 = static UnsafeMutablePointer.allocate(capacity:)();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v33 = createStorage<A>(capacity:type:)(0);
      v34 = createStorage<A>(capacity:type:)(0);
      *(v106 + 80) = v32;
      *(v106 + 88) = v33;
      *(v106 + 96) = v34;
      serialize(_:at:)(0, (v106 + 80));
      serialize(_:at:)(0, (v106 + 80));
      *(v106 + 104) = v39;
      v35 = swift_task_alloc();
      v35[2] = v106 + 80;
      v35[3] = v106 + 88;
      v35[4] = v106 + 96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_2686B1000, log, v37, "couldn't restore in-progress intent", v32, 2u);
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v34, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v32, MEMORY[0x277D84B78]);
    }

    v29 = *(v106 + 264);
    v30 = *(v106 + 248);
    MEMORY[0x277D82BD8](log);
    v99(v29, v30);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v18 = 9;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
    *(v18 + 48) = 17;
    swift_willThrow();
  }

  v19 = *(v106 + 280);
  v22 = *(v106 + 272);
  v23 = *(v106 + 264);
  v24 = *(v106 + 240);
  v25 = *(v106 + 216);
  v26 = *(v106 + 192);
  v27 = *(v106 + 184);
  v28 = *(v106 + 176);

  v20 = *(*(v106 + 56) + 8);
  v21 = *(v106 + 56);

  return v20();
}

uint64_t TCCHandleStrategy.makeTCCConfirmationRejectedResponse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = v3;
  v4[18] = a2;
  v4[17] = a1;
  v4[12] = v4;
  v4[13] = 0;
  v4[14] = 0;
  v4[15] = 0;
  v4[16] = 0;
  v17 = *v3;
  v4[20] = *v3;
  v5 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v4[22] = v6;
  v12 = *(v6 - 8);
  v4[23] = v12;
  v7 = *(v12 + 64) + 15;
  v4[24] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[25] = v8;
  v13 = *(v8 - 8);
  v4[26] = v13;
  v9 = *(v13 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[13] = a2;
  v4[14] = a3;
  v4[28] = v17[10];
  v4[15] = v16;
  v4[29] = v17[11];
  v4[30] = v17[12];
  v10 = v4[12];

  return MEMORY[0x2822009F8](TCCHandleStrategy.makeTCCConfirmationRejectedResponse(app:intent:), 0);
}

uint64_t TCCHandleStrategy.makeTCCConfirmationRejectedResponse(app:intent:)()
{
  v44 = v0;
  v28 = v0[30];
  v27 = v0[29];
  v26 = v0[28];
  v1 = v0[27];
  v24 = v0[26];
  v25 = v0[25];
  v29 = v0[20];
  v0[12] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v24 + 16))(v1, v2, v25);
  v30 = swift_allocObject();
  v30[2] = v26;
  v30[3] = v27;
  v30[4] = v28;
  v30[5] = *(v29 + 104);
  v30[6] = *(v29 + 112);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #1 in TCCHandleStrategy.actionForInput(input:);
  *(v31 + 24) = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v32 + 24) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v35 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v36 = v3;

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
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(0);
    v22 = createStorage<A>(capacity:type:)(1);
    v39 = buf;
    v40 = v21;
    v41 = v22;
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
    _os_log_impl(&dword_2686B1000, v37, v38, "##TCCHandleStrategy<%s> makeTCCConfirmationRejectedResponse", buf, 0xCu);
    destroyStorage<A>(_:count:)(v21, 0, v19);
    destroyStorage<A>(_:count:)(v22, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v8 = v23[27];
  v9 = v23[25];
  v10 = v23[24];
  v11 = v23[21];
  v14 = v23[19];
  v13 = v23[18];
  v7 = v23[26];
  MEMORY[0x277D82BD8](v37);
  (*(v7 + 8))(v8, v9);
  static DialogPhase.canceled.getter();

  v12 = swift_task_alloc();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  OutputGenerationManifest.init(dialogPhase:_:)();

  outlined init with copy of GlobalsProviding(v14 + 64, (v23 + 2));
  v16 = v23[5];
  v17 = v23[6];
  __swift_project_boxed_opaque_existential_1(v23 + 2, v16);
  outlined init with copy of GlobalsProviding(v14 + 192, (v23 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v15 = Dictionary.init(dictionaryLiteral:)();
  v23[31] = v15;
  v18 = (*(v17 + 16) + **(v17 + 16));
  v4 = *(*(v17 + 16) + 4);
  v5 = swift_task_alloc();
  v23[32] = v5;
  *v5 = v23[12];
  v5[1] = TCCHandleStrategy.makeTCCConfirmationRejectedResponse(app:intent:);

  return v18(v23 + 7, v15, v16, v17);
}

{
  v10 = MEMORY[0x277D5BD50];
  v8 = v0[33];
  v0[12] = v0;
  v0[16] = v8;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  type metadata accessor for ResponseFactory();
  v0[35] = ResponseFactory.__allocating_init()();
  type metadata accessor for DialogExecutionResult();
  v9 = _allocateUninitializedArray<A>(_:)();
  v7 = v1;
  MEMORY[0x277D82BE0](v8);
  *v7 = v8;
  _finalizeUninitializedArray<A>(_:)();
  v0[36] = v9;
  v12 = (v10 + *v10);
  v2 = v10[1];
  v3 = swift_task_alloc();
  v11[37] = v3;
  *v3 = v11[12];
  v3[1] = TCCHandleStrategy.makeTCCConfirmationRejectedResponse(app:intent:);
  v4 = v11[24];
  v5 = v11[17];

  return v12(v5, v9, v4);
}

{
  v6 = *v0;
  v1 = *(*v0 + 296);
  v4 = *(*v0 + 288);
  v5 = *(*v0 + 280);
  *(v6 + 96) = *v0;

  v2 = *(v6 + 96);

  return MEMORY[0x2822009F8](TCCHandleStrategy.makeTCCConfirmationRejectedResponse(app:intent:), 0);
}

{
  v1 = v0[33];
  v7 = v0[27];
  v8 = v0[24];
  v5 = v0[23];
  v6 = v0[22];
  v9 = v0[21];
  v0[12] = v0;
  MEMORY[0x277D82BD8](v1);
  (*(v5 + 8))(v8, v6);

  v2 = *(v0[12] + 8);
  v3 = v0[12];

  return v2();
}

{
  v1 = v0[31];
  v8 = v0[27];
  v9 = v0[24];
  v6 = v0[23];
  v7 = v0[22];
  v10 = v0[21];
  v0[12] = v0;

  outlined destroy of FlowActivity?(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v6 + 8))(v9, v7);

  v2 = *(*(v11 + 96) + 8);
  v3 = *(v11 + 96);
  v4 = *(v11 + 272);

  return v2();
}

uint64_t TCCHandleStrategy.makeTCCConfirmationRejectedResponse(app:intent:)(uint64_t a1)
{
  v10 = *v2;
  v4 = (*v2)[32];
  v10[12] = *v2;
  v11 = v10 + 12;
  v10[33] = a1;
  v10[34] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = TCCHandleStrategy.makeTCCConfirmationRejectedResponse(app:intent:);
  }

  else
  {
    v5 = v10[31];

    outlined destroy of FlowActivity?(v10 + 7);
    v6 = *v11;
    v7 = TCCHandleStrategy.makeTCCConfirmationRejectedResponse(app:intent:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t TCCHandleStrategy.makeTCCCancelledResponse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = v3;
  v4[18] = a2;
  v4[17] = a1;
  v4[12] = v4;
  v4[13] = 0;
  v4[14] = 0;
  v4[15] = 0;
  v4[16] = 0;
  v17 = *v3;
  v4[20] = *v3;
  v5 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v4[22] = v6;
  v12 = *(v6 - 8);
  v4[23] = v12;
  v7 = *(v12 + 64) + 15;
  v4[24] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[25] = v8;
  v13 = *(v8 - 8);
  v4[26] = v13;
  v9 = *(v13 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[13] = a2;
  v4[14] = a3;
  v4[28] = v17[10];
  v4[15] = v16;
  v4[29] = v17[11];
  v4[30] = v17[12];
  v10 = v4[12];

  return MEMORY[0x2822009F8](TCCHandleStrategy.makeTCCCancelledResponse(app:intent:), 0);
}

uint64_t TCCHandleStrategy.makeTCCCancelledResponse(app:intent:)()
{
  v44 = v0;
  v28 = v0[30];
  v27 = v0[29];
  v26 = v0[28];
  v1 = v0[27];
  v24 = v0[26];
  v25 = v0[25];
  v29 = v0[20];
  v0[12] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v24 + 16))(v1, v2, v25);
  v30 = swift_allocObject();
  v30[2] = v26;
  v30[3] = v27;
  v30[4] = v28;
  v30[5] = *(v29 + 104);
  v30[6] = *(v29 + 112);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #1 in TCCHandleStrategy.actionForInput(input:);
  *(v31 + 24) = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v32 + 24) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v35 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v36 = v3;

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
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(0);
    v22 = createStorage<A>(capacity:type:)(1);
    v39 = buf;
    v40 = v21;
    v41 = v22;
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
    _os_log_impl(&dword_2686B1000, v37, v38, "##TCCHandleStrategy<%s> makeTCCCancelledResponse", buf, 0xCu);
    destroyStorage<A>(_:count:)(v21, 0, v19);
    destroyStorage<A>(_:count:)(v22, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v8 = v23[27];
  v9 = v23[25];
  v10 = v23[24];
  v11 = v23[21];
  v14 = v23[19];
  v13 = v23[18];
  v7 = v23[26];
  MEMORY[0x277D82BD8](v37);
  (*(v7 + 8))(v8, v9);
  static DialogPhase.canceled.getter();

  v12 = swift_task_alloc();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  OutputGenerationManifest.init(dialogPhase:_:)();

  outlined init with copy of GlobalsProviding(v14 + 64, (v23 + 2));
  v16 = v23[5];
  v17 = v23[6];
  __swift_project_boxed_opaque_existential_1(v23 + 2, v16);
  outlined init with copy of GlobalsProviding(v14 + 192, (v23 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v15 = Dictionary.init(dictionaryLiteral:)();
  v23[31] = v15;
  v18 = (*(v17 + 24) + **(v17 + 24));
  v4 = *(*(v17 + 24) + 4);
  v5 = swift_task_alloc();
  v23[32] = v5;
  *v5 = v23[12];
  v5[1] = TCCHandleStrategy.makeTCCConfirmationRejectedResponse(app:intent:);

  return v18(v23 + 7, v15, v16, v17);
}

uint64_t TCCHandleStrategy.catFamily.getter()
{
  v2 = *(v0 + 184);

  return v2;
}

void *TCCHandleStrategy.init(previousIntent:globals:catFamily:commonLabelsProvider:tccResponseProvider:confirmationViewBuilder:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v35 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v9 = *v6;
  v35 = a1;
  v34 = v9[10];
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v28 = v6;
  v27 = v9[11];
  v26 = v9[12];
  v6[2] = 0;
  v11 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v10 + 24))(v11);
  outlined init with take of CommonLabelsProviding(v25, v20 + 18);

  v20[23] = a3;
  v13 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v12 + 16))(v13);
  outlined init with take of CommonLabelsProviding(v24, v20 + 24);
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v7 = v20[2];
  v20[2] = a1;
  MEMORY[0x277D82BD8](v7);
  swift_endAccess();
  outlined init with copy of GlobalsProviding(a4, v23);
  outlined init with take of CommonLabelsProviding(v23, v20 + 3);
  outlined init with copy of GlobalsProviding(a5, v22);
  outlined init with take of CommonLabelsProviding(v22, v20 + 8);
  outlined init with copy of GlobalsProviding(a6, v21);
  outlined init with take of CommonLabelsProviding(v21, v20 + 13);
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a4);

  __swift_destroy_boxed_opaque_existential_0(a2);
  MEMORY[0x277D82BD8](a1);
  return v20;
}

uint64_t sub_2687AD97C()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

NSJSONWritingOptions partial apply for implicit closure #1 in TCCHandleStrategy.actionForInput(input:)()
{
  v5 = v0[3];
  v4 = v0[4];
  v1 = v0[5];
  v2 = v0[6];
  return NSJSONWritingOptions.init(rawValue:)(v0[2]);
}

uint64_t closure #1 in TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:)(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a1;
  v7 = a2;
  v11 = a3;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v9 = *a3;
  v6 = a3;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v6 - v8;
  v19 = a1;
  v18 = MEMORY[0x28223BE20](v7);
  v17 = v11;
  v16 = v9[10];
  v15 = v9[11];
  v14 = v9[12];
  static PaymentsContextProvider.tccAcceptanceContextUpdate(app:)(v18, &v6 - v8);
  v4 = *(*(type metadata accessor for NLContextUpdate() - 8) + 56);
  v13 = 1;
  v4(v10, 0);
  OutputGenerationManifest.nlContextUpdate.setter();
  TCCHandleStrategy.ttsEnabled.getter();
  OutputGenerationManifest.canUseServerTTS.setter();
  return OutputGenerationManifest.listenAfterSpeaking.setter();
}

uint64_t implicit closure #3 in TCCHandleStrategy.parseTCCConfirmationResponse(input:)()
{
  v4 = type metadata accessor for Parse();
  v2 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v3 = &v1 - v2;
  Input.parse.getter();
  return String.init<A>(describing:)();
}

uint64_t closure #1 in TCCHandleStrategy.makeTCCConfirmationRejectedResponse(app:intent:)(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a1;
  v7 = a2;
  v11 = a3;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v9 = *a3;
  v6 = a3;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v6 - v8;
  v19 = a1;
  v18 = MEMORY[0x28223BE20](v7);
  v17 = v11;
  v16 = v9[10];
  v15 = v9[11];
  v14 = v9[12];
  static PaymentsContextProvider.tccAcceptanceContextUpdate(app:)(v18, &v6 - v8);
  v4 = *(*(type metadata accessor for NLContextUpdate() - 8) + 56);
  v13 = 0;
  v4(v10);
  OutputGenerationManifest.nlContextUpdate.setter();
  TCCHandleStrategy.ttsEnabled.getter();
  OutputGenerationManifest.canUseServerTTS.setter();
  return OutputGenerationManifest.listenAfterSpeaking.setter();
}

uint64_t TCCHandleStrategy.__deallocating_deinit()
{
  v4 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v2 = *(*v0 + 96);
  TCCHandleStrategy.deinit();
  return swift_deallocClassInstance();
}

uint64_t protocol witness for BaseTCCStrategyProviding.catFamily.getter in conformance TCCHandleStrategy<A, B, C>@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = TCCHandleStrategy.catFamily.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ClientHandledRequestTCCAcceptanceFlowStrategyAsync.parseTCCConfirmationResponse(input:) in conformance TCCHandleStrategy<A, B, C>(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return TCCHandleStrategy.parseTCCConfirmationResponse(input:)(a1, a2);
}

uint64_t protocol witness for ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCConfirmationRejectedResponse(app:intent:) in conformance TCCHandleStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return TCCHandleStrategy.makeTCCConfirmationRejectedResponse(app:intent:)(a1, a2, a3);
}

uint64_t protocol witness for ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCCancelledResponse(app:intent:) in conformance TCCHandleStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return TCCHandleStrategy.makeTCCCancelledResponse(app:intent:)(a1, a2, a3);
}

uint64_t protocol witness for ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance TCCHandleStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v16 = v6;
  v6[7] = v6;
  v7 = *(MEMORY[0x277D5B740] + 4);
  v8 = swift_task_alloc();
  v16[8] = v8;
  v9 = a5[11];
  v10 = a5[12];
  v11 = a5[13];
  v12 = a5[14];
  v16[2] = a5[10];
  v16[3] = v9;
  v16[4] = v10;
  v16[5] = v11;
  v16[6] = v12;
  v13 = type metadata accessor for TCCHandleStrategy();
  *v8 = v16[7];
  v8[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;

  return MEMORY[0x2821BA180](a1, a2, a3, a4, v13, a6);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makePromptForTCCAcceptance(app:intent:) in conformance TCCHandleStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return TCCHandleStrategy.makePromptForTCCAcceptance(app:intent:)(a1, a2, a3);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:) in conformance TCCHandleStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v15 = v5;
  v5[7] = v5;
  v6 = *(MEMORY[0x277D5B600] + 4);
  v7 = swift_task_alloc();
  v15[8] = v7;
  v8 = a4[11];
  v9 = a4[12];
  v10 = a4[13];
  v11 = a4[14];
  v15[2] = a4[10];
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  v12 = type metadata accessor for TCCHandleStrategy();
  *v7 = v15[7];
  v7[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;

  return MEMORY[0x2821B9FE0](a1, a2, a3, v12, a5);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:) in conformance TCCHandleStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v15 = v5;
  v5[7] = v5;
  v6 = *(MEMORY[0x277D5B610] + 4);
  v7 = swift_task_alloc();
  v15[8] = v7;
  v8 = a4[11];
  v9 = a4[12];
  v10 = a4[13];
  v11 = a4[14];
  v15[2] = a4[10];
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  v12 = type metadata accessor for TCCHandleStrategy();
  *v7 = v15[7];
  v7[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;

  return MEMORY[0x2821B9FF0](a1, a2, a3, v12, a5);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:) in conformance TCCHandleStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v15 = v5;
  v5[7] = v5;
  v6 = *(MEMORY[0x277D5B608] + 4);
  v7 = swift_task_alloc();
  v15[8] = v7;
  v8 = a4[11];
  v9 = a4[12];
  v10 = a4[13];
  v11 = a4[14];
  v15[2] = a4[10];
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  v12 = type metadata accessor for TCCHandleStrategy();
  *v7 = v15[7];
  v7[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;

  return MEMORY[0x2821B9FE8](a1, a2, a3, v12, a5);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:) in conformance TCCHandleStrategy<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v15 = v5;
  v5[7] = v5;
  v6 = *(MEMORY[0x277D5B618] + 4);
  v7 = swift_task_alloc();
  v15[8] = v7;
  v8 = a4[11];
  v9 = a4[12];
  v10 = a4[13];
  v11 = a4[14];
  v15[2] = a4[10];
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  v12 = type metadata accessor for TCCHandleStrategy();
  *v7 = v15[7];
  v7[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance PaymentsNeedsConfirmationFlowStrategy<A, B, C>;

  return MEMORY[0x2821B9FF8](a1, a2, a3, v12, a5);
}

uint64_t DialogExecutionResult.toTemplatingResult()@<X0>(uint64_t a1@<X8>)
{
  v3[1] = a1;
  v15 = 0;
  v18 = closure #1 in DialogExecutionResult.toTemplatingResult();
  v21 = 0;
  v14 = 0;
  v4 = type metadata accessor for BehaviorAfterSpeaking();
  v5 = *(v4 - 8);
  v6 = v4 - 8;
  v7 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = v3 - v7;
  v21 = MEMORY[0x28223BE20](v10);
  v9 = [v21 catId];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v1;
  v13 = [v10 dialog];
  type metadata accessor for DialogElement();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13DialogElementCGMd, &_sSaySo13DialogElementCGMR);
  v17 = type metadata accessor for TemplatingSection();
  lazy protocol witness table accessor for type [DialogElement] and conformance [A]();
  v19 = Sequence.compactMap<A>(_:)();
  v3[0] = v19;
  outlined destroy of [SFCardSection](&v20);
  MEMORY[0x277D82BD8](v13);
  (*(v5 + 104))(v8, *MEMORY[0x277D5BF70], v4);
  TemplatingResult.init(templateIdentifier:sections:behaviorAfterSpeaking:)();
  return MEMORY[0x277D82BD8](v9);
}

uint64_t closure #1 in DialogExecutionResult.toTemplatingResult()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  DialogElement.toTemplatingSection()(a2);
  v2 = type metadata accessor for TemplatingSection();
  return (*(*(v2 - 8) + 56))(a2, 0, 1);
}

uint64_t DialogElement.toTemplatingSection()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v46 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14TemplatingTextVSgMd, _s11SiriKitFlow14TemplatingTextVSgMR);
  v32 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v33 = &v11 - v32;
  v34 = type metadata accessor for TemplatingText();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v40);
  v38 = &v11 - v37;
  v46 = v2;
  v39 = [v2 id];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v3;
  v44 = [v40 fullPrint];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v4;
  v45 = String.isEmpty.getter();

  MEMORY[0x277D82BD8](v44);
  if (v45)
  {
    v23 = [v40 fullSpeak];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v6;
    MEMORY[0x277D82BD8](v23);
    v29 = v24;
    v30 = v25;
  }

  else
  {
    v26 = [v40 fullPrint];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v5;
    MEMORY[0x277D82BD8](v26);
    v29 = v27;
    v30 = v28;
  }

  TemplatingText.init(text:speakableTextOverride:)();
  v21 = [v40 fullPrint];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v7;
  v22 = String.isEmpty.getter();

  MEMORY[0x277D82BD8](v21);
  if (v22)
  {
    v12 = [v40 fullSpeak];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v9;
    MEMORY[0x277D82BD8](v12);
    v18 = v13;
    v19 = v14;
  }

  else
  {
    v15 = [v40 fullPrint];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v8;
    MEMORY[0x277D82BD8](v15);
    v18 = v16;
    v19 = v17;
  }

  TemplatingText.init(text:speakableTextOverride:)();
  (*(v35 + 56))(v33, 0, 1, v34);
  [v40 spokenOnly];
  TemplatingSection.init(id:content:caption:spokenOnly:)();
  return MEMORY[0x277D82BD8](v39);
}

uint64_t sub_2687AEDCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AEE0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AEE4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AEE8C()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_2687AEF30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AEF70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AEFB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *outlined init with take of AppDisplayInfo?(const void *a1, void *a2)
{
  v6 = type metadata accessor for AppDisplayInfo();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *outlined init with copy of AppDisplayInfo?(const void *a1, void *a2)
{
  v6 = type metadata accessor for AppDisplayInfo();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of AppDisplayInfo?(uint64_t a1)
{
  v3 = type metadata accessor for AppDisplayInfo();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t type metadata accessor for SKIDirectInvocation()
{
  v2 = lazy cache variable for type metadata for SKIDirectInvocation;
  if (!lazy cache variable for type metadata for SKIDirectInvocation)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SKIDirectInvocation);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SAStartLocalRequest()
{
  v2 = lazy cache variable for type metadata for SAStartLocalRequest;
  if (!lazy cache variable for type metadata for SAStartLocalRequest)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAStartLocalRequest);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *outlined init with copy of SiriPaymentsSnippetModel.BinaryConfirmationModel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  outlined copy of Data._Representation(*a1, v4);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = a1[2];
  v5 = a1[3];

  a2[3] = v5;
  v6 = a1[4];
  v7 = a1[5];
  outlined copy of Data._Representation(v6, v7);
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = a1[6];
  v10 = a1[7];

  result = a2;
  a2[7] = v10;
  return result;
}

uint64_t *outlined destroy of SiriPaymentsSnippetModel.BinaryConfirmationModel(uint64_t *a1)
{
  outlined consume of Data._Representation(*a1, a1[1]);
  v1 = a1[3];

  outlined consume of Data._Representation(a1[4], a1[5]);
  v2 = a1[7];

  return a1;
}

uint64_t sub_2687AF4DC()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_2687AF580()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AF5C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AF600()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AF640()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_2687AF68C()
{
  v3 = *(type metadata accessor for Input() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in TCCHandleStrategy.parseTCCConfirmationResponse(input:)()
{
  v1 = *(type metadata accessor for Input() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #3 in TCCHandleStrategy.parseTCCConfirmationResponse(input:)();
}

uint64_t sub_2687AF814()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AF854()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AF894()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AF92C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AF96C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AF9AC()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_2687AFA50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AFA90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AFAD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AFB1C()
{
  v4 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  return swift_deallocObject();
}

uint64_t sub_2687AFBC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AFC00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687AFC40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for SendTCCHandleStrategy()
{
  v1 = type metadata singleton initialization cache for SendTCCHandleStrategy;
  if (!type metadata singleton initialization cache for SendTCCHandleStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for SendTCCHandleStrategy()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t type metadata accessor for RequestTCCHandleStrategy()
{
  v1 = type metadata singleton initialization cache for RequestTCCHandleStrategy;
  if (!type metadata singleton initialization cache for RequestTCCHandleStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata accessor for SearchForAccountsTCCHandleStrategy()
{
  v1 = type metadata singleton initialization cache for SearchForAccountsTCCHandleStrategy;
  if (!type metadata singleton initialization cache for SearchForAccountsTCCHandleStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for TCCHandleStrategy()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t instantiation function for generic protocol witness table for TCCHandleStrategy<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t INPerson.identifier.getter()
{
  v16 = 0;
  v17 = 0;
  v18 = v0;
  v15 = [v0 contactIdentifier];
  if (v15)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v1;
    MEMORY[0x277D82BD8](v15);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (v14)
  {

    v16 = v13;
    v17 = v14;

    v10 = v13;
LABEL_12:
    outlined destroy of String.UTF8View(&v16);
    return v10;
  }

  v9 = [v0 customIdentifier];
  if (v9)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v2;
    MEMORY[0x277D82BD8](v9);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (v8)
  {

    v16 = v7;
    v17 = v8;

    v10 = v7;
    goto LABEL_12;
  }

  return INPerson.encodeBase64.getter();
}

uint64_t INPerson.hasHandleLabel.getter()
{
  v8 = v0;
  v7 = [v0 personHandle];
  if (v7)
  {
    v5 = v7;
    MEMORY[0x277D82BE0](v7);
    outlined destroy of SFRichText?(&v7);
    v6 = [v5 label];
    MEMORY[0x277D82BD8](v5);
    if (v6)
    {
      INPersonHandleLabel.rawValue.getter(v6);
      MEMORY[0x277D82BD8](v6);
      v3 = String.isEmpty.getter();

      v4 = v3 & 1;
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of SFRichText?(&v7);
  }

  v4 = 2;
LABEL_6:
  if (v4 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = v4;
  }

  return (v2 ^ 1) & 1;
}

uint64_t INPerson.hasHandleValue.getter()
{
  v11 = v0;
  v10 = [v0 personHandle];
  if (v10)
  {
    v8 = v10;
    MEMORY[0x277D82BE0](v10);
    outlined destroy of SFRichText?(&v10);
    v9 = [v8 value];
    if (v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v1;
      MEMORY[0x277D82BD8](v9);
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x277D82BD8](v8);
    if (v7)
    {
      v4 = String.isEmpty.getter();

      v5 = v4 & 1;
      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of SFRichText?(&v10);
  }

  v5 = 2;
LABEL_9:
  if (v5 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v5;
  }

  return (v3 ^ 1) & 1;
}

uint64_t INPerson.uniqueContactIdentifier.getter()
{
  v27 = v0;
  v25 = [v0 contactIdentifier];
  if (v25)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v1;
    MEMORY[0x277D82BD8](v25);
    v23 = v21;
    v24 = v22;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  if (v24)
  {
    return v23;
  }

  v19 = [v0 customIdentifier];
  if (v19)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v2;
    MEMORY[0x277D82BD8](v19);
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (v18)
  {
    return v17;
  }

  v26 = [v0 personHandle];
  if (v26)
  {
    v13 = v26;
    MEMORY[0x277D82BE0](v26);
    outlined destroy of SFRichText?(&v26);
    v14 = [v13 value];
    if (v14)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v3;
      MEMORY[0x277D82BD8](v14);
      v11 = v9;
      v12 = v10;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    MEMORY[0x277D82BD8](v13);
    v7 = v11;
    v8 = v12;
  }

  else
  {
    outlined destroy of SFRichText?(&v26);
    v7 = 0;
    v8 = 0;
  }

  if (v8)
  {
    return v7;
  }

  v5 = [v0 displayName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t INPerson.toContactQuery()@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v97 = 0;
  v96 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  v58 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v59 = v23 - v58;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference24ContactRelationshipQueryVSgMd, &_s13SiriInference24ContactRelationshipQueryVSgMR);
  v60 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v61 = v23 - v60;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference18ContactHandleQueryVSgMd, _s13SiriInference18ContactHandleQueryVSgMR);
  v62 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v63 = v23 - v62;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v64 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v65 = v23 - v64;
  v66 = 0;
  v67 = type metadata accessor for PersonNameComponents();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v66);
  v71 = v23 - v70;
  v72 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v73 = v23 - v72;
  v102 = v23 - v72;
  v74 = type metadata accessor for ContactQuery();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74);
  v78 = v23 - v77;
  v101 = v23 - v77;
  v100 = v1;
  ContactQuery.init()();
  v80 = [v79 contactIdentifier];
  if (v80)
  {
    v56 = v80;
    v53 = v80;
    v54._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54._object = v8;
    MEMORY[0x277D82BD8](v53);
    v55 = v54;
  }

  else
  {
    v55._countAndFlagsBits = 0;
    v55._object = 0;
  }

  v98 = v55;
  if (v55._object)
  {
    v99 = v98;
  }

  else
  {
    v99 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (v98._object)
    {
      outlined destroy of String.UTF8View(&v98);
    }
  }

  ContactQuery.id.setter();
  v52 = [v79 nameComponents];
  if (v52)
  {
    v51 = v52;
    v50 = v52;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v68 + 32))(v65, v71, v67);
    (*(v68 + 56))(v65, 0, 1, v67);
    MEMORY[0x277D82BD8](v50);
  }

  else
  {
    (*(v68 + 56))(v65, 1, 1, v67);
  }

  if ((*(v68 + 48))(v65, 1, v67) == 1)
  {
    outlined destroy of PersonNameComponents?(v65);
    v49 = [v79 personHandle];
    if (v49)
    {
      v48 = v49;
      v44 = v49;
      v96 = v49;
      v15 = [v49 type];
      v47 = &v95;
      v95 = v15;
      v45 = &v94;
      v94 = 0;
      v46 = type metadata accessor for INPersonHandleType();
      lazy protocol witness table accessor for type INPersonHandleType and conformance INPersonHandleType();
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      if ((v16 & 1) == 0)
      {
        v43 = [v44 value];
        if (v43)
        {
          v42 = v43;
          v37 = v43;
          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v17;
          MEMORY[0x277D82BD8](v37);
          v40 = v38;
          v41 = v39;
        }

        else
        {
          v40 = 0;
          v41 = 0;
        }

        v35 = v41;
        v36 = v40;
        if (v41)
        {
          v33 = v36;
          v34 = v35;
          v30 = v35;
          v31 = String.isEmpty.getter();

          v32 = v31 & 1;
        }

        else
        {
          v32 = 2;
        }

        v93 = v32;
        v29 = v32 == 2 ? 1 : v93;
        if ((v29 & 1) == 0)
        {
          INPersonHandle.toContactHandleQuery()(v63);
          v18 = type metadata accessor for ContactHandleQuery();
          (*(*(v18 - 8) + 56))(v63, 0, 1);
          ContactQuery.handle.setter();
          MEMORY[0x277D82BD8](v44);
          goto LABEL_61;
        }
      }

      MEMORY[0x277D82BD8](v44);
    }

    v28 = [v79 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    ContactQuery.fullName.setter();
    MEMORY[0x277D82BD8](v28);
  }

  else
  {
    (*(v68 + 32))(v73, v65, v67);
    v91._countAndFlagsBits = PersonNameComponents.namePrefix.getter();
    v91._object = v9;
    if (v9)
    {
      v92 = v91;
    }

    else
    {
      v92 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (v91._object)
      {
        outlined destroy of String.UTF8View(&v91);
      }
    }

    ContactQuery.namePrefix.setter();
    v89._countAndFlagsBits = PersonNameComponents.givenName.getter();
    v89._object = v10;
    if (v10)
    {
      v90 = v89;
    }

    else
    {
      v90 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (v89._object)
      {
        outlined destroy of String.UTF8View(&v89);
      }
    }

    ContactQuery.givenName.setter();
    v87._countAndFlagsBits = PersonNameComponents.middleName.getter();
    v87._object = v11;
    if (v11)
    {
      v88 = v87;
    }

    else
    {
      v88 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (v87._object)
      {
        outlined destroy of String.UTF8View(&v87);
      }
    }

    ContactQuery.middleName.setter();
    v85._countAndFlagsBits = PersonNameComponents.familyName.getter();
    v85._object = v12;
    if (v12)
    {
      v86 = v85;
    }

    else
    {
      v86 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (v85._object)
      {
        outlined destroy of String.UTF8View(&v85);
      }
    }

    ContactQuery.familyName.setter();
    v83._countAndFlagsBits = PersonNameComponents.nameSuffix.getter();
    v83._object = v13;
    if (v13)
    {
      v84 = v83;
    }

    else
    {
      v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (v83._object)
      {
        outlined destroy of String.UTF8View(&v83);
      }
    }

    ContactQuery.nameSuffix.setter();
    v81._countAndFlagsBits = PersonNameComponents.nickname.getter();
    v81._object = v14;
    if (v14)
    {
      v82 = v81;
    }

    else
    {
      v82 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (v81._object)
      {
        outlined destroy of String.UTF8View(&v81);
      }
    }

    ContactQuery.nickname.setter();
    (*(v68 + 8))(v73, v67);
  }

LABEL_61:
  v27 = [v79 relationship];
  if (v27)
  {
    v26 = v27;
    v25 = v27;
    v97 = v27;
    v23[0] = INPersonHandleLabel.rawValue.getter(v27);
    v23[1] = v19;
    v20 = *(v75 + 56);
    v24 = 1;
    v20(v59, 1, 1, v74);
    ContactRelationshipQuery.init(label:fromContact:)();
    v21 = type metadata accessor for ContactRelationshipQuery();
    (*(*(v21 - 8) + 56))(v61, 0, v24);
    ContactQuery.relationship.setter();
    MEMORY[0x277D82BD8](v25);
  }

  [v79 isMe];
  ContactQuery.isMe.setter();
  return (*(v75 + 32))(v57, v78, v74);
}

id INPerson.toCNContact.getter()
{
  type metadata accessor for CNMutableContact();
  v32 = SAUIAppPunchOut.__allocating_init()();
  v33 = [v31 personHandle];
  if (v33)
  {
    v0 = [v33 type];
    if (v0)
    {
      if (v0 == 1)
      {
        v30 = [v33 value];
        if (v30)
        {
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v1;
          MEMORY[0x277D82BD8](v30);
          v28 = v26;
          v29 = v27;
        }

        else
        {
          v28 = 0;
          v29 = 0;
        }

        if (v29)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
          _allocateUninitializedArray<A>(_:)();
          v24 = v2;
          v25 = [v33 label];
          if (v25)
          {
            v20 = INPersonHandleLabel.rawValue.getter(v25);
            v21 = v3;
            MEMORY[0x277D82BD8](v25);
            v22 = v20;
            v23 = v21;
          }

          else
          {
            v22 = 0;
            v23 = 0;
          }

          MEMORY[0x26D620690](v28, v29);
          type metadata accessor for NSString();
          v18 = CNLabeledValue.__allocating_init(label:value:)(v22, v23);

          *v24 = v18;
          _finalizeUninitializedArray<A>(_:)();
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v32 setEmailAddresses_];
          MEMORY[0x277D82BD8](isa);
        }
      }

      else if (v0 == 2)
      {
        v17 = [v33 value];
        if (v17)
        {
          v15._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15._object = v4;
          MEMORY[0x277D82BD8](v17);
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        if (v16._object)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
          _allocateUninitializedArray<A>(_:)();
          v13 = v5;
          v14 = [v33 label];
          if (v14)
          {
            v9 = INPersonHandleLabel.rawValue.getter(v14);
            v10 = v6;
            MEMORY[0x277D82BD8](v14);
            v11 = v9;
            v12 = v10;
          }

          else
          {
            v11 = 0;
            v12 = 0;
          }

          type metadata accessor for CNPhoneNumber();

          CNPhoneNumber.__allocating_init(stringValue:)(v16);
          *v13 = CNLabeledValue.__allocating_init(label:value:)(v11, v12);
          _finalizeUninitializedArray<A>(_:)();
          v8 = Array._bridgeToObjectiveC()().super.isa;

          [v32 setPhoneNumbers_];
          MEMORY[0x277D82BD8](v8);
        }
      }
    }

    MEMORY[0x277D82BD8](v33);
  }

  return v32;
}

uint64_t static INPerson.personType.getter()
{
  v1 = INPerson.personType.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t static INPerson.personType.setter(char a1)
{
  v3 = INPerson.personType.unsafeMutableAddressor();
  swift_beginAccess();
  *v3 = a1 & 1;
  return swift_endAccess();
}

uint64_t INPersonHandleLabel.rawValue.getter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](a1);
  return v3;
}

uint64_t INPerson.encodeBase64.getter()
{
  v24 = 0;
  v22 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v23 = v0;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("contactHandle://", 0x10uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  (MEMORY[0x277D82BE0])();
  v20 = INIntentSlotValueTransformToContactValue();
  (MEMORY[0x277D82BD8])();
  if (v20)
  {
    v19 = v20;
  }

  else
  {
    LOBYTE(v7) = 2;
    v8 = 31;
    LODWORD(v9) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v18 = [v19 data];
  if (v18)
  {
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v2;
    MEMORY[0x277D82BD8](v18);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  MEMORY[0x277D82BD8](v19);
  if ((v17 & 0xF000000000000000) == 0xF000000000000000)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v12 = v16;
    v13 = v17;
  }

  v3 = default argument 0 of Data.base64EncodedString(options:)();
  v4 = Data.base64EncodedString(options:)(v3);
  outlined consume of Data._Representation(v12, v13);
  v21 = v4;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(&v21);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v5);

  v11 = v22;
  v10 = v23;

  outlined destroy of String.UTF8View(&v22);
  return MEMORY[0x26D620710](v11, v10);
}

uint64_t default argument 0 of Data.base64EncodedString(options:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo27NSDataBase64EncodingOptionsV_Tt0gq5(0);

  return 0;
}

uint64_t INPerson.hasName.getter()
{
  v120 = 0;
  v74 = type metadata accessor for PersonNameComponents();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74);
  v78 = &v21[-v77];
  v79 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR) - 8) + 64);
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v98);
  v81 = &v21[-v80];
  v82 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v0);
  v83 = &v21[-v82];
  v84 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v85 = &v21[-v84];
  v86 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v87 = &v21[-v86];
  v88 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6);
  v89 = &v21[-v88];
  v90 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v91 = &v21[-v90];
  v92 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v10);
  v93 = &v21[-v92];
  v94 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v12);
  v95 = &v21[-v94];
  v120 = v14;
  v97 = [v14 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v15;
  v99 = String.isEmpty.getter();

  MEMORY[0x277D82BD8](v97);
  MEMORY[0x277D82BE0](v98);
  if ((v99 & 1) == 0)
  {
    v73 = 1;
    goto LABEL_21;
  }

  v72 = [v98 nameComponents];
  if (v72)
  {
    v71 = v72;
    v70 = v72;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v75 + 32))(v93, v78, v74);
    (*(v75 + 56))(v93, 0, 1, v74);
    MEMORY[0x277D82BD8](v70);
  }

  else
  {
    (*(v75 + 56))(v93, 1, 1, v74);
  }

  outlined init with take of PersonNameComponents?(v93, v95);
  if ((*(v75 + 48))(v95, 1, v74) == 0)
  {
    v100 = PersonNameComponents.givenName.getter();
    v101 = v16;
    if (v16)
    {
      v64 = &v100;
      v65 = v100;
      v66 = v101;

      outlined destroy of String.UTF8View(v64);
      outlined destroy of PersonNameComponents?(v95);
      v67 = String.isEmpty.getter();

      v68 = v67 & 1;
      goto LABEL_11;
    }

    outlined destroy of String.UTF8View(&v100);
    outlined destroy of PersonNameComponents?(v95);
  }

  else
  {
    outlined destroy of PersonNameComponents?(v95);
  }

  v68 = 2;
LABEL_11:
  v63 = v68;
  v118 = v68;
  v119 = 0;
  if (v68 == 2)
  {
    if (v119 == 2)
    {
      v62 = 1;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v102 = v63;
  if (v119 == 2)
  {
LABEL_18:
    v62 = 0;
    goto LABEL_17;
  }

  v62 = (v102 & 1) == (v119 & 1);
LABEL_17:
  v73 = v62;
LABEL_21:
  v61 = v73;
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BE0](v98);
  if (v61)
  {
    v60 = 1;
    goto LABEL_41;
  }

  v59 = [v98 nameComponents];
  if (v59)
  {
    v58 = v59;
    v57 = v59;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v75 + 32))(v89, v78, v74);
    (*(v75 + 56))(v89, 0, 1, v74);
    MEMORY[0x277D82BD8](v57);
  }

  else
  {
    (*(v75 + 56))(v89, 1, 1, v74);
  }

  outlined init with take of PersonNameComponents?(v89, v91);
  if ((*(v75 + 48))(v91, 1, v74) == 0)
  {
    v103 = PersonNameComponents.familyName.getter();
    v104 = v17;
    if (v17)
    {
      v51 = &v103;
      v52 = v103;
      v53 = v104;

      outlined destroy of String.UTF8View(v51);
      outlined destroy of PersonNameComponents?(v91);
      v54 = String.isEmpty.getter();

      v55 = v54 & 1;
      goto LABEL_31;
    }

    outlined destroy of String.UTF8View(&v103);
    outlined destroy of PersonNameComponents?(v91);
  }

  else
  {
    outlined destroy of PersonNameComponents?(v91);
  }

  v55 = 2;
LABEL_31:
  v50 = v55;
  v116 = v55;
  v117 = 0;
  if (v55 == 2)
  {
    if (v117 == 2)
    {
      v49 = 1;
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v105 = v50;
  if (v117 == 2)
  {
LABEL_38:
    v49 = 0;
    goto LABEL_37;
  }

  v49 = (v105 & 1) == (v117 & 1);
LABEL_37:
  v60 = v49;
LABEL_41:
  v48 = v60;
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BE0](v98);
  if (v48)
  {
    v47 = 1;
    goto LABEL_61;
  }

  v46 = [v98 nameComponents];
  if (v46)
  {
    v45 = v46;
    v44 = v46;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v75 + 32))(v85, v78, v74);
    (*(v75 + 56))(v85, 0, 1, v74);
    MEMORY[0x277D82BD8](v44);
  }

  else
  {
    (*(v75 + 56))(v85, 1, 1, v74);
  }

  outlined init with take of PersonNameComponents?(v85, v87);
  if ((*(v75 + 48))(v87, 1, v74) == 0)
  {
    v106 = PersonNameComponents.middleName.getter();
    v107 = v18;
    if (v18)
    {
      v38 = &v106;
      v39 = v106;
      v40 = v107;

      outlined destroy of String.UTF8View(v38);
      outlined destroy of PersonNameComponents?(v87);
      v41 = String.isEmpty.getter();

      v42 = v41 & 1;
      goto LABEL_51;
    }

    outlined destroy of String.UTF8View(&v106);
    outlined destroy of PersonNameComponents?(v87);
  }

  else
  {
    outlined destroy of PersonNameComponents?(v87);
  }

  v42 = 2;
LABEL_51:
  v37 = v42;
  v114 = v42;
  v115 = 0;
  if (v42 == 2)
  {
    if (v115 == 2)
    {
      v36 = 1;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v108 = v37;
  if (v115 == 2)
  {
LABEL_58:
    v36 = 0;
    goto LABEL_57;
  }

  v36 = (v108 & 1) == (v115 & 1);
LABEL_57:
  v47 = v36;
LABEL_61:
  v35 = v47;
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BE0](v98);
  if ((v35 & 1) == 0)
  {
    v33 = [v98 nameComponents];
    if (v33)
    {
      v32 = v33;
      v31 = v33;
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v75 + 32))(v81, v78, v74);
      (*(v75 + 56))(v81, 0, 1, v74);
      MEMORY[0x277D82BD8](v31);
    }

    else
    {
      (*(v75 + 56))(v81, 1, 1, v74);
    }

    outlined init with take of PersonNameComponents?(v81, v83);
    if ((*(v75 + 48))(v83, 1, v74) == 0)
    {
      v109 = PersonNameComponents.nickname.getter();
      v110 = v19;
      if (v19)
      {
        v25 = &v109;
        v26 = v109;
        v27 = v110;

        outlined destroy of String.UTF8View(v25);
        outlined destroy of PersonNameComponents?(v83);
        v28 = String.isEmpty.getter();

        v29 = v28 & 1;
        goto LABEL_71;
      }

      outlined destroy of String.UTF8View(&v109);
      outlined destroy of PersonNameComponents?(v83);
    }

    else
    {
      outlined destroy of PersonNameComponents?(v83);
    }

    v29 = 2;
LABEL_71:
    v24 = v29;
    v112 = v29;
    v113 = 0;
    if (v29 == 2)
    {
      if (v113 == 2)
      {
        v23 = 1;
        goto LABEL_77;
      }
    }

    else
    {
      v111 = v24;
      if (v113 != 2)
      {
        v23 = (v111 & 1) == (v113 & 1);
LABEL_77:
        v34 = v23;
        goto LABEL_81;
      }
    }

    v23 = 0;
    goto LABEL_77;
  }

  v34 = 1;
LABEL_81:
  v22 = v34;
  MEMORY[0x277D82BD8](v98);
  return v22 & 1;
}

uint64_t INPerson.hasIdentifier.getter()
{
  v40 = v0;
  v34 = [v0 contactIdentifier];
  if (v34)
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v1;
    MEMORY[0x277D82BD8](v34);
    v32 = v30;
    v33 = v31;
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v39[0] = v32;
  v39[1] = v33;
  outlined destroy of String.UTF8View(v39);
  MEMORY[0x277D82BE0](v0);
  if (v33)
  {
    v29 = [v0 contactIdentifier];
    if (v29)
    {
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v2;
      MEMORY[0x277D82BD8](v29);
      v27 = v25;
      v28 = v26;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v35[0] = v27;
    v35[1] = v28;
    if (v28)
    {

      outlined destroy of String.UTF8View(v35);
      v23 = String.isEmpty.getter();

      v24 = v23 & 1;
    }

    else
    {
      outlined destroy of String.UTF8View(v35);
      v24 = 2;
    }

    if (v24 == 2)
    {
      v22 = 1;
    }

    else
    {
      v22 = v24;
    }

    v21 = v22 ^ 1;
  }

  else
  {
    v21 = 0;
  }

  MEMORY[0x277D82BD8](v0);
  MEMORY[0x277D82BE0](v0);
  if (v21)
  {
    v20 = 1;
  }

  else
  {
    v19 = [v0 customIdentifier];
    if (v19)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v3;
      MEMORY[0x277D82BD8](v19);
      v17 = v15;
      v18 = v16;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v38[0] = v17;
    v38[1] = v18;
    outlined destroy of String.UTF8View(v38);
    MEMORY[0x277D82BE0](v0);
    if (v18)
    {
      v14 = [v0 customIdentifier];
      if (v14)
      {
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v4;
        MEMORY[0x277D82BD8](v14);
        v11 = v9;
        v12 = v10;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      v37[0] = v11;
      v37[1] = v12;
      if (v12)
      {

        outlined destroy of String.UTF8View(v37);
        v7 = String.isEmpty.getter();

        v8 = v7 & 1;
      }

      else
      {
        outlined destroy of String.UTF8View(v37);
        v8 = 2;
      }

      v36 = v8;
      if (v8 == 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = v36;
      }

      v13 = v6 ^ 1;
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x277D82BD8](v0);
    v20 = v13;
  }

  MEMORY[0x277D82BD8](v0);
  return v20 & 1;
}

uint64_t INPerson.hasIdentifiableInfo.getter()
{
  v3 = INPerson.hasIdentifier.getter();
  (MEMORY[0x277D82BE0])();
  if (v3)
  {
    v2 = 1;
  }

  else
  {
    v2 = INPerson.hasName.getter();
  }

  (MEMORY[0x277D82BD8])();
  (MEMORY[0x277D82BE0])();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    v1 = INPerson.hasHandleValue.getter();
  }

  (MEMORY[0x277D82BD8])();
  return v1 & 1;
}

BOOL INPerson.isEmpty.getter()
{
  v77 = 0;
  v63 = type metadata accessor for PersonNameComponents();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v67 = &v6 - v66;
  v69 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v68);
  v70 = &v6 - v69;
  v77 = v0;
  v76 = [v0 personHandle];
  v62 = v76 == 0;
  v61 = v62;
  outlined destroy of SFRichText?(&v76);
  MEMORY[0x277D82BE0](v68);
  if (v61)
  {
    v60 = [v68 nameComponents];
    if (v60)
    {
      v59 = v60;
      v58 = v60;
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v64 + 32))(v70, v67, v63);
      (*(v64 + 56))(v70, 0, 1, v63);
      MEMORY[0x277D82BD8](v58);
    }

    else
    {
      (*(v64 + 56))(v70, 1, 1, v63);
    }

    v57 = (*(v64 + 48))(v70, 1, v63) == 1;
    v55 = v57;
    outlined destroy of PersonNameComponents?(v70);
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  v54 = v56;
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BE0](v68);
  if (v54)
  {
    v51 = [v68 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v1;
    v52 = String.isEmpty.getter();

    MEMORY[0x277D82BD8](v51);
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v49 = v53;
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BE0](v68);
  if (v49)
  {
    v71 = [v68 image];
    v48 = v71 == 0;
    v46 = v48;
    outlined destroy of SFRichText?(&v71);
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v45 = v47;
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BE0](v68);
  if (v45)
  {
    v44 = [v68 contactIdentifier];
    if (v44)
    {
      v43 = v44;
      v38 = v44;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v2;
      MEMORY[0x277D82BD8](v38);
      v41 = v39;
      v42 = v40;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    v72[0] = v41;
    v72[1] = v42;
    v37 = v42 == 0;
    v35 = v37;
    outlined destroy of String.UTF8View(v72);
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v34 = v36;
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BE0](v68);
  if (v34)
  {
    v33 = [v68 customIdentifier];
    if (v33)
    {
      v32 = v33;
      v27 = v33;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v3;
      MEMORY[0x277D82BD8](v27);
      v30 = v28;
      v31 = v29;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v73[0] = v30;
    v73[1] = v31;
    v26 = v31 == 0;
    v24 = v26;
    outlined destroy of String.UTF8View(v73);
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v23 = v25;
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BE0](v68);
  if (v23)
  {
    v22 = [v68 isMe] ^ 1;
  }

  else
  {
    v22 = 0;
  }

  v21 = v22;
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BE0](v68);
  if (v21)
  {
    v74 = [v68 relationship];
    v20 = v74 == 0;
    v18 = v20;
    outlined destroy of SFRichText?(&v74);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v17 = v19;
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BE0](v68);
  if (v17)
  {
    v16 = [v68 sourceAppBundleIdentifier];
    if (v16)
    {
      v15 = v16;
      v10 = v16;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v4;
      MEMORY[0x277D82BD8](v10);
      v13 = v11;
      v14 = v12;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v75[0] = v13;
    v75[1] = v14;
    v9 = v14 == 0;
    v7 = v9;
    outlined destroy of String.UTF8View(v75);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = v8;
  MEMORY[0x277D82BD8](v68);
  return v6;
}

uint64_t INPersonHandle.toContactHandleQuery()@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v42 = 0;
  v41 = 0;
  v40._countAndFlagsBits = 0;
  v40._object = 0;
  v39._countAndFlagsBits = 0;
  v39._object = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v28 = type metadata accessor for ContactHandle.HandleType();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v27);
  v32 = &v7[-v31];
  v33 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v1);
  v34 = &v7[-v33];
  v42 = &v7[-v33];
  v41 = v3;
  v35 = [v3 type];
  if (v35 == 1)
  {
    (*(v29 + 104))(v32, *MEMORY[0x277D56008], v28);
    (*(v29 + 32))(v34, v32, v28);
  }

  else
  {
    if (v35 == 2)
    {
      (*(v29 + 104))(v32, *MEMORY[0x277D56010], v28);
    }

    else
    {
      (*(v29 + 104))(v32, *MEMORY[0x277D56018], v28);
    }

    (*(v29 + 32))(v34, v32, v28);
  }

  v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v25 = [v27 label];
  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v36 = v25;
    v40._countAndFlagsBits = INPersonHandleLabel.rawValue.getter(v25);
    v40._object = v4;

    MEMORY[0x277D82BD8](v23);
  }

  v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v22 = [v27 value];
  if (v22)
  {
    v21 = v22;
    v16 = v22;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v5;
    MEMORY[0x277D82BD8](v16);
    v19 = v17;
    v20 = v18;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v14 = v20;
  v15 = v19;
  if (v20)
  {
    v12 = v15;
    v13 = v14;
    v11._object = v14;
    v11._countAndFlagsBits = v15;
    v37 = v15;
    v38 = v14;

    v39 = v11;
  }

  (*(v29 + 16))(v32, v34, v28);
  v10 = &v40;
  *&v7[8] = v40;

  v9 = &v39;
  v8 = v39;

  ContactHandleQuery.init(type:label:value:)();
  outlined destroy of String.UTF8View(v9);
  outlined destroy of String.UTF8View(v10);
  return (*(v29 + 8))(v34, v28);
}

unint64_t type metadata accessor for CNMutableContact()
{
  v2 = lazy cache variable for type metadata for CNMutableContact;
  if (!lazy cache variable for type metadata for CNMutableContact)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CNMutableContact);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for CNPhoneNumber()
{
  v2 = lazy cache variable for type metadata for CNPhoneNumber;
  if (!lazy cache variable for type metadata for CNPhoneNumber)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CNPhoneNumber);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSString()
{
  v2 = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSString);
    return ObjCClassMetadata;
  }

  return v2;
}

id @nonobjc CNLabeledValue.init(label:value:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = MEMORY[0x26D620690](a1);

    v2 = [v7 initWithLabel:v6 value:?];
  }

  else
  {
    v2 = [v7 initWithLabel:0 value:?];
  }

  v5 = v2;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id @nonobjc CNPhoneNumber.init(stringValue:)()
{
  v2 = MEMORY[0x26D620690]();
  v3 = [v1 initWithStringValue_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo27NSDataBase64EncodingOptionsV_Tt0gq5(uint64_t result)
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

    type metadata accessor for NSDataBase64EncodingOptions();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

id SAUIButton.init(commands:text:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  MEMORY[0x277D82BE0](v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setCommands_];
  MEMORY[0x277D82BD8](isa);

  v6 = MEMORY[0x26D620690](a2, a3);

  [v8 setText_];
  MEMORY[0x277D82BD8](v6);

  MEMORY[0x277D82BD8](v8);
  return v8;
}

id SASTCommandTemplateAction.init(intent:appId:)(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  MEMORY[0x277D82BE0](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  _allocateUninitializedArray<A>(_:)();
  *v3 = static SASTCommandTemplateAction.makeLaunchAppWithIntentCommand(intent:appId:)(a1, a2, a3);
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setCommands_];
  MEMORY[0x277D82BD8](isa);

  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v9);
  return v9;
}

id SASTApplicationBannerItem.init(intent:appId:)(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  MEMORY[0x277D82BE0](v8);

  v4 = MEMORY[0x26D620690](a2, a3);

  [v8 setBundleId_];
  MEMORY[0x277D82BD8](v4);
  type metadata accessor for SASTCommandTemplateAction();
  MEMORY[0x277D82BE0](a1);

  SASTCommandTemplateAction.init(intent:appId:)(a1, a2, a3);
  [v8 setAction_];
  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v8);
  return v8;
}

id static SATextDecorationRegion.from(_:property:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SATextDecorationRegion();
  v9 = SAUIAppPunchOut.__allocating_init()();
  String.count.getter();
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v9 setLength_];
  MEMORY[0x277D82BD8](isa);

  v8 = MEMORY[0x26D620690](a3, a4);

  [v9 setProperty_];
  MEMORY[0x277D82BD8](v8);
  return v9;
}

uint64_t *SASTItemGroup.addToTemplateIfApplicable(_:)(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v15 = a2;
  v13 = v2;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = (*(a2 + 8))(ObjectType);
  swift_unknownObjectRelease();
  result = v11;
  if (v11)
  {
    v8 = [v2 templateItems];
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v8);
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v12 = v7;
    if (v7)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
      Array.append(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v2 setTemplateItems_];
      return MEMORY[0x277D82BD8](isa);
    }

    else
    {

      [v2 setTemplateItems_];
      MEMORY[0x277D82BD8](v4);
      return outlined destroy of [SFCardSection](&v12);
    }
  }

  return result;
}

id SAIntentGroupProtobufMessage.init(intent:)(void *a1)
{
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  MEMORY[0x277D82BE0](v12);
  v14 = [a1 backingStore];
  v15 = [v14 data];
  if (v15)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v1;
    MEMORY[0x277D82BD8](v15);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  if ((v11 & 0xF000000000000000) == 0xF000000000000000)
  {
    v7 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v10, v11);
    v7 = isa;
  }

  MEMORY[0x277D82BD8](v14);
  [v12 setData_];
  MEMORY[0x277D82BD8](v7);
  v4 = [a1 typeName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = MEMORY[0x26D620690](v2);

  MEMORY[0x277D82BD8](v4);
  [v12 setTypeName_];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v12);
  return v12;
}

id SAIntentGroupProtobufMessage.init(response:)(void *a1)
{
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  MEMORY[0x277D82BE0](v22);
  v24 = [a1 backingStore];
  if (v24)
  {
    v21 = v24;
  }

  else
  {
    LOBYTE(v4) = 2;
    v5 = 83;
    LODWORD(v6) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v20 = [v21 data];
  if (v20)
  {
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v1;
    MEMORY[0x277D82BD8](v20);
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0xF000000000000000;
  }

  if ((v19 & 0xF000000000000000) == 0xF000000000000000)
  {
    v15 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v18, v19);
    v15 = isa;
  }

  MEMORY[0x277D82BD8](v21);
  [v22 setData_];
  MEMORY[0x277D82BD8](v15);
  v13 = [a1 _payloadResponseTypeName];
  if (v13)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v2;
    MEMORY[0x277D82BD8](v13);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (v12)
  {
    v7 = MEMORY[0x26D620690](v11);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  [v22 setTypeName_];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v22);
  return v22;
}

uint64_t SASTColumnDataListItem.shouldAddToSnippet.getter()
{
  v21 = v0;
  v14 = [v0 decoratedRows];
  if (v14)
  {
    type metadata accessor for SAUIDecoratedText();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v14);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v19 = v13;
  if (v13)
  {
    v20 = v19;
  }

  else
  {
    type metadata accessor for SAUIDecoratedText();
    v20 = _allocateUninitializedArray<A>(_:)();
  }

  v18 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17SAUIDecoratedTextCGMd, &_sSaySo17SAUIDecoratedTextCGMR);
  lazy protocol witness table accessor for type [SAUIDecoratedText] and conformance [A]();
  v11 = Collection.isEmpty.getter();

  MEMORY[0x277D82BE0](v0);
  if (v11)
  {
    v1 = [v0 title];
    v16 = v1;
    if (v1)
    {
      v8 = v16;
      MEMORY[0x277D82BE0](v16);
      outlined destroy of SFRichText?(&v16);
      v9 = [v8 text];
      if (v9)
      {
        v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v5._object = v2;
        MEMORY[0x277D82BD8](v9);
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      MEMORY[0x277D82BD8](v8);
      v7 = v6;
    }

    else
    {
      outlined destroy of SFRichText?(&v16);
      v7 = 0;
    }

    v15 = v7;
    if (v7._object)
    {
      v17 = v15;
    }

    else
    {
      v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    }

    v4 = String.isEmpty.getter();

    v10 = v4 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  MEMORY[0x277D82BD8](v0);
  return v10 & 1;
}

uint64_t SASTPropertyListItem.shouldAddToSnippet.getter()
{
  v8 = v0;
  v5 = [v0 decoratedValues];
  if (v5)
  {
    type metadata accessor for SAUIDecoratedText();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (v4)
  {
    v7 = v6;
  }

  else
  {
    type metadata accessor for SAUIDecoratedText();
    v7 = _allocateUninitializedArray<A>(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17SAUIDecoratedTextCGMd, &_sSaySo17SAUIDecoratedTextCGMR);
  lazy protocol witness table accessor for type [SAUIDecoratedText] and conformance [A]();
  v2 = Collection.isEmpty.getter();

  return (v2 ^ 1) & 1;
}

id static SASTCommandTemplateAction.makeLaunchAppWithIntentCommand(intent:appId:)(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v15 = a2;
  v16 = a3;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v25 = 0;
  v12 = 0;
  v20 = type metadata accessor for UUID();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v11 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v21 = &v10 - v11;
  v29 = v4;
  v27 = v5;
  v28 = v6;
  v26 = v3;
  type metadata accessor for SAIntentGroupLaunchAppWithIntent();
  v24 = SAUIAppPunchOut.__allocating_init()();
  v25 = v24;
  type metadata accessor for SAIntentGroupProtobufMessage();
  MEMORY[0x277D82BE0](v13);
  v14 = SAIntentGroupProtobufMessage.init(intent:)(v13);
  [v24 setHandledIntent_];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BE0](v24);

  v17 = MEMORY[0x26D620690](v15, v16);

  [v24 setAppId_];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BE0](v24);
  UUID.init()();
  v7 = UUID.uuidString.getter();
  v22 = v8;
  v23 = MEMORY[0x26D620690](v7);
  (*(v18 + 8))(v21, v20);

  [v24 setAceId_];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  return v24;
}

unint64_t lazy protocol witness table accessor for type [SAUIDecoratedText] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SAUIDecoratedText] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SAUIDecoratedText] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17SAUIDecoratedTextCGMd, &_sSaySo17SAUIDecoratedTextCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SAUIDecoratedText] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for SAIntentGroupLaunchAppWithIntent()
{
  v2 = lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent;
  if (!lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *static FlowUtil.actionForInput(parse:intentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v339 = a3;
  v345 = a2;
  v340 = a1;
  v306 = a4;
  v334 = 0;
  v390 = 0;
  v387 = 0;
  v386 = 0;
  v385 = 0;
  v307 = 0;
  v389 = 0;
  v377 = 0;
  v376 = 0;
  v388 = 0;
  v308 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v309 = &v78 - v308;
  v310 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v311 = *(v310 - 8);
  v312 = v311;
  v4 = *(v311 + 64);
  MEMORY[0x28223BE20](v334);
  v313 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v390 = v313;
  v314 = type metadata accessor for USOParse();
  v315 = *(v314 - 8);
  v316 = v315;
  v6 = *(v315 + 64);
  MEMORY[0x28223BE20](v314 - 8);
  v317 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = v317;
  v318 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v334);
  v319 = &v78 - v318;
  v320 = type metadata accessor for Logger();
  v321 = *(v320 - 8);
  v322 = v321;
  v330 = *(v321 + 64);
  v8 = MEMORY[0x28223BE20](v334);
  v332 = (v330 + 15) & 0xFFFFFFFFFFFFFFF0;
  v323 = &v78 - v332;
  v9 = MEMORY[0x28223BE20](v8);
  v324 = &v78 - v332;
  v10 = MEMORY[0x28223BE20](v9);
  v325 = &v78 - v332;
  v11 = MEMORY[0x28223BE20](v10);
  v326 = &v78 - v332;
  v12 = MEMORY[0x28223BE20](v11);
  v327 = &v78 - v332;
  v13 = MEMORY[0x28223BE20](v12);
  v328 = &v78 - v332;
  v14 = MEMORY[0x28223BE20](v13);
  v329 = &v78 - v332;
  v15 = MEMORY[0x28223BE20](v14);
  v331 = &v78 - v332;
  MEMORY[0x28223BE20](v15);
  v333 = &v78 - v332;
  v335 = type metadata accessor for Parse.DirectInvocation();
  v336 = *(v335 - 8);
  v337 = v336;
  v16 = *(v336 + 64);
  MEMORY[0x28223BE20](v334);
  v338 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = v338;
  v348 = type metadata accessor for Parse();
  v341 = v348;
  v342 = *(v348 - 8);
  v347 = v342;
  v343 = v342;
  v344 = *(v342 + 64);
  MEMORY[0x28223BE20](v348 - 8);
  v349 = &v78 - ((v344 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = v349;
  v387 = v18;
  v385 = v345;
  v386 = v19;
  (*(v347 + 16))();
  v350 = (*(v347 + 88))(v349, v348);
  if (v350 != *MEMORY[0x277D5C150])
  {
    if (v350 == *MEMORY[0x277D5C160])
    {
      v36 = v317;
      (*(v343 + 96))(v346, v341);
      (*(v316 + 32))(v36, v346, v314);
      v389 = v36;
      USOParse.preferredUserDialogAct.getter(v309);
      if ((*(v312 + 48))(v309, 1, v310) != 1)
      {
        (*(v312 + 32))(v313, v309, v310);
        if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
        {
          v37 = v328;
          v38 = Logger.payments.unsafeMutableAddressor();
          (*(v322 + 16))(v37, v38, v320);
          v231 = Logger.logObject.getter();
          v228 = v231;
          v230 = static os_log_type_t.debug.getter();
          v229 = v230;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v232 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v231, v230))
          {
            v39 = v307;
            v219 = static UnsafeMutablePointer.allocate(capacity:)();
            v215 = v219;
            v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v217 = 0;
            v220 = createStorage<A>(capacity:type:)(0);
            v218 = v220;
            v221 = createStorage<A>(capacity:type:)(v217);
            v364[0] = v219;
            v363 = v220;
            v362 = v221;
            v222 = 0;
            v223 = v364;
            serialize(_:at:)(0, v364);
            serialize(_:at:)(v222, v223);
            v361[1] = v232;
            v224 = &v78;
            MEMORY[0x28223BE20](&v78);
            v225 = &v78 - 6;
            *(&v78 - 4) = v40;
            *(&v78 - 3) = &v363;
            *(&v78 - 2) = &v362;
            v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
            Sequence.forEach(_:)();
            v227 = v39;
            if (v39)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_2686B1000, v228, v229, "#actionForInput returning .handle for supported USO confirmation response", v215, 2u);
              v213 = 0;
              destroyStorage<A>(_:count:)(v218, 0, v216);
              destroyStorage<A>(_:count:)(v221, v213, MEMORY[0x277D84F70] + 8);
              MEMORY[0x26D620BD0](v215, MEMORY[0x277D84B78]);

              v214 = v227;
            }
          }

          else
          {

            v214 = v307;
          }

          v212 = v214;

          (*(v322 + 8))(v328, v320);
          static ActionForInput.handle()();
          (*(v312 + 8))(v313, v310);
          (*(v316 + 8))(v317, v314);
          return v212;
        }

        else
        {
          if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
          {
            v211 = 1;
          }

          else
          {
            v211 = Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
          }

          if (v211)
          {
            v41 = v327;
            v42 = Logger.payments.unsafeMutableAddressor();
            (*(v322 + 16))(v41, v42, v320);
            v209 = Logger.logObject.getter();
            v206 = v209;
            v208 = static os_log_type_t.debug.getter();
            v207 = v208;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
            v210 = _allocateUninitializedArray<A>(_:)();
            if (os_log_type_enabled(v209, v208))
            {
              v43 = v307;
              v197 = static UnsafeMutablePointer.allocate(capacity:)();
              v193 = v197;
              v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v195 = 0;
              v198 = createStorage<A>(capacity:type:)(0);
              v196 = v198;
              v199 = createStorage<A>(capacity:type:)(v195);
              v367[0] = v197;
              v366 = v198;
              v365 = v199;
              v200 = 0;
              v201 = v367;
              serialize(_:at:)(0, v367);
              serialize(_:at:)(v200, v201);
              v364[1] = v210;
              v202 = &v78;
              MEMORY[0x28223BE20](&v78);
              v203 = &v78 - 6;
              *(&v78 - 4) = v44;
              *(&v78 - 3) = &v366;
              *(&v78 - 2) = &v365;
              v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
              lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
              Sequence.forEach(_:)();
              v205 = v43;
              if (v43)
              {
                __break(1u);
              }

              else
              {
                _os_log_impl(&dword_2686B1000, v206, v207, "#actionForInput returning .cancel for supported USO confirmation response", v193, 2u);
                v191 = 0;
                destroyStorage<A>(_:count:)(v196, 0, v194);
                destroyStorage<A>(_:count:)(v199, v191, MEMORY[0x277D84F70] + 8);
                MEMORY[0x26D620BD0](v193, MEMORY[0x277D84B78]);

                v192 = v205;
              }
            }

            else
            {

              v192 = v307;
            }

            v190 = v192;

            (*(v322 + 8))(v327, v320);
            static ActionForInput.cancel()();
            (*(v312 + 8))(v313, v310);
            (*(v316 + 8))(v317, v314);
            return v190;
          }

          else
          {
            v189 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
            if (v189)
            {
              v188 = v189;
              v183 = v189;
              v184 = UsoTask.siriKitIntentType.getter();
              v185 = v45;

              v186 = v184;
              v187 = v185;
            }

            else
            {
              v186 = 0;
              v187 = 0;
            }

            v181 = v187;
            v182 = v186;
            if (v186)
            {
              v179 = v182;
              v180 = v181;
              v376 = v182;
              v377 = v181;
              if (v182 == v345)
              {
                v46 = v326;
                v47 = Logger.payments.unsafeMutableAddressor();
                (*(v322 + 16))(v46, v47, v320);
                v177 = Logger.logObject.getter();
                v174 = v177;
                v176 = static os_log_type_t.debug.getter();
                v175 = v176;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
                v178 = _allocateUninitializedArray<A>(_:)();
                if (os_log_type_enabled(v177, v176))
                {
                  v48 = v307;
                  v165 = static UnsafeMutablePointer.allocate(capacity:)();
                  v161 = v165;
                  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  v163 = 0;
                  v166 = createStorage<A>(capacity:type:)(0);
                  v164 = v166;
                  v167 = createStorage<A>(capacity:type:)(v163);
                  v370 = v165;
                  v369 = v166;
                  v368 = v167;
                  v168 = 0;
                  v169 = &v370;
                  serialize(_:at:)(0, &v370);
                  serialize(_:at:)(v168, v169);
                  v367[1] = v178;
                  v170 = &v78;
                  MEMORY[0x28223BE20](&v78);
                  v171 = &v78 - 6;
                  *(&v78 - 4) = v49;
                  *(&v78 - 3) = &v369;
                  *(&v78 - 2) = &v368;
                  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
                  lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
                  Sequence.forEach(_:)();
                  v173 = v48;
                  if (v48)
                  {
                    __break(1u);
                  }

                  else
                  {
                    _os_log_impl(&dword_2686B1000, v174, v175, "#FlowUtil actionForInput returning .handle for supported USO task", v161, 2u);
                    v159 = 0;
                    destroyStorage<A>(_:count:)(v164, 0, v162);
                    destroyStorage<A>(_:count:)(v167, v159, MEMORY[0x277D84F70] + 8);
                    MEMORY[0x26D620BD0](v161, MEMORY[0x277D84B78]);

                    v160 = v173;
                  }
                }

                else
                {

                  v160 = v307;
                }

                v158 = v160;

                (*(v322 + 8))(v326, v320);
                static ActionForInput.handle()();
                (*(v312 + 8))(v313, v310);
                (*(v316 + 8))(v317, v314);
                return v158;
              }

              else
              {
                v50 = v325;
                v51 = Logger.payments.unsafeMutableAddressor();
                (*(v322 + 16))(v50, v51, v320);
                v140 = 32;
                v145 = 32;
                v146 = 7;
                v52 = swift_allocObject();
                v53 = v339;
                v144 = v52;
                *(v52 + 16) = v345;
                *(v52 + 24) = v53;
                v157 = Logger.logObject.getter();
                v138 = v157;
                v156 = static os_log_type_t.debug.getter();
                v139 = v156;
                v141 = 17;
                v150 = swift_allocObject();
                v142 = v150;
                *(v150 + 16) = v140;
                v151 = swift_allocObject();
                v143 = v151;
                *(v151 + 16) = 8;
                v54 = swift_allocObject();
                v55 = v144;
                v147 = v54;
                *(v54 + 16) = partial apply for implicit closure #2 in static FlowUtil.actionForInput(parse:intentType:);
                *(v54 + 24) = v55;
                v56 = swift_allocObject();
                v57 = v147;
                v148 = v56;
                *(v56 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
                *(v56 + 24) = v57;
                v58 = swift_allocObject();
                v59 = v148;
                v154 = v58;
                v149 = v58;
                *(v58 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
                *(v58 + 24) = v59;
                v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
                v152 = _allocateUninitializedArray<A>(_:)();
                v153 = v60;

                v61 = v150;
                v62 = v153;
                *v153 = partial apply for closure #1 in OSLogArguments.append(_:);
                v62[1] = v61;

                v63 = v151;
                v64 = v153;
                v153[2] = partial apply for closure #1 in OSLogArguments.append(_:);
                v64[3] = v63;

                v65 = v153;
                v66 = v154;
                v153[4] = partial apply for closure #1 in OSLogArguments.append(_:);
                v65[5] = v66;
                _finalizeUninitializedArray<A>(_:)();

                if (os_log_type_enabled(v157, v156))
                {
                  v67 = v307;
                  v131 = static UnsafeMutablePointer.allocate(capacity:)();
                  v128 = v131;
                  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  v132 = createStorage<A>(capacity:type:)(0);
                  v130 = v132;
                  v134 = 1;
                  v133 = createStorage<A>(capacity:type:)(1);
                  v375 = v131;
                  v374 = v132;
                  v373 = v133;
                  v135 = &v375;
                  serialize(_:at:)(2, &v375);
                  serialize(_:at:)(v134, v135);
                  v371 = partial apply for closure #1 in OSLogArguments.append(_:);
                  v372 = v142;
                  closure #1 in osLogInternal(_:log:type:)(&v371, v135, &v374, &v373);
                  v136 = v67;
                  v137 = v67;
                  if (v67)
                  {
                    v126 = 0;

                    __break(1u);
                  }

                  else
                  {
                    v371 = partial apply for closure #1 in OSLogArguments.append(_:);
                    v372 = v143;
                    closure #1 in osLogInternal(_:log:type:)(&v371, &v375, &v374, &v373);
                    v124 = 0;
                    v125 = 0;
                    v371 = partial apply for closure #1 in OSLogArguments.append(_:);
                    v372 = v149;
                    closure #1 in osLogInternal(_:log:type:)(&v371, &v375, &v374, &v373);
                    v122 = 0;
                    v123 = 0;
                    _os_log_impl(&dword_2686B1000, v138, v139, "#actionForInput returning .ignore for USO task as it is supported but does not match current intent %s", v128, 0xCu);
                    destroyStorage<A>(_:count:)(v130, 0, v129);
                    destroyStorage<A>(_:count:)(v133, 1, MEMORY[0x277D84F70] + 8);
                    MEMORY[0x26D620BD0](v128, MEMORY[0x277D84B78]);

                    v127 = v122;
                  }
                }

                else
                {
                  v68 = v307;

                  v127 = v68;
                }

                v121 = v127;

                (*(v322 + 8))(v325, v320);
                static ActionForInput.ignore()();
                (*(v312 + 8))(v313, v310);
                (*(v316 + 8))(v317, v314);
                return v121;
              }
            }

            else
            {
              v69 = v324;
              v70 = Logger.payments.unsafeMutableAddressor();
              (*(v322 + 16))(v69, v70, v320);
              v119 = Logger.logObject.getter();
              v116 = v119;
              v118 = static os_log_type_t.debug.getter();
              v117 = v118;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
              v120 = _allocateUninitializedArray<A>(_:)();
              if (os_log_type_enabled(v119, v118))
              {
                v71 = v307;
                v107 = static UnsafeMutablePointer.allocate(capacity:)();
                v103 = v107;
                v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v105 = 0;
                v108 = createStorage<A>(capacity:type:)(0);
                v106 = v108;
                v109 = createStorage<A>(capacity:type:)(v105);
                v381[0] = v107;
                v380 = v108;
                v379 = v109;
                v110 = 0;
                v111 = v381;
                serialize(_:at:)(0, v381);
                serialize(_:at:)(v110, v111);
                v378 = v120;
                v112 = &v78;
                MEMORY[0x28223BE20](&v78);
                v113 = &v78 - 6;
                *(&v78 - 4) = v72;
                *(&v78 - 3) = &v380;
                *(&v78 - 2) = &v379;
                v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
                lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
                Sequence.forEach(_:)();
                v115 = v71;
                if (v71)
                {
                  __break(1u);
                }

                else
                {
                  _os_log_impl(&dword_2686B1000, v116, v117, "#FlowUtil actionForInput returning .ignore for unsupported USO task", v103, 2u);
                  v101 = 0;
                  destroyStorage<A>(_:count:)(v106, 0, v104);
                  destroyStorage<A>(_:count:)(v109, v101, MEMORY[0x277D84F70] + 8);
                  MEMORY[0x26D620BD0](v103, MEMORY[0x277D84B78]);

                  v102 = v115;
                }
              }

              else
              {

                v102 = v307;
              }

              v100 = v102;

              (*(v322 + 8))(v324, v320);
              static ActionForInput.ignore()();
              (*(v312 + 8))(v313, v310);
              (*(v316 + 8))(v317, v314);
              return v100;
            }
          }
        }
      }

      outlined destroy of Siri_Nlu_External_UserDialogAct?(v309);
      (*(v316 + 8))(v317, v314);
      v233 = v307;
    }

    else
    {
      (*(v343 + 8))(v346, v341);
      v233 = v307;
    }

LABEL_69:
    v73 = v323;
    v94 = v233;
    v74 = Logger.payments.unsafeMutableAddressor();
    (*(v322 + 16))(v73, v74, v320);
    v98 = Logger.logObject.getter();
    v95 = v98;
    v97 = static os_log_type_t.debug.getter();
    v96 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v99 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v98, v97))
    {
      v75 = v94;
      v85 = static UnsafeMutablePointer.allocate(capacity:)();
      v81 = v85;
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v83 = 0;
      v86 = createStorage<A>(capacity:type:)(0);
      v84 = v86;
      v87 = createStorage<A>(capacity:type:)(v83);
      v384 = v85;
      v383 = v86;
      v382 = v87;
      v88 = 0;
      v89 = &v384;
      serialize(_:at:)(0, &v384);
      serialize(_:at:)(v88, v89);
      v381[2] = v99;
      v90 = &v78;
      MEMORY[0x28223BE20](&v78);
      v91 = &v78 - 6;
      *(&v78 - 4) = v76;
      *(&v78 - 3) = &v383;
      *(&v78 - 2) = &v382;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v93 = v75;
      if (v75)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v95, v96, "#FlowUtil actionForInput received unsupported parse type, returning .ignore", v81, 2u);
        v79 = 0;
        destroyStorage<A>(_:count:)(v84, 0, v82);
        destroyStorage<A>(_:count:)(v87, v79, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v81, MEMORY[0x277D84B78]);

        v80 = v93;
      }
    }

    else
    {

      v80 = v94;
    }

    v78 = v80;

    (*(v322 + 8))(v323, v320);
    static ActionForInput.ignore()();
    return v78;
  }

  (*(v343 + 96))(v346, v341);
  (*(v337 + 32))(v338, v346, v335);
  v388 = v338;
  if (Parse.isCancel.getter())
  {
    v20 = v333;
    v21 = Logger.payments.unsafeMutableAddressor();
    (*(v322 + 16))(v20, v21, v320);
    v304 = Logger.logObject.getter();
    v301 = v304;
    v303 = static os_log_type_t.debug.getter();
    v302 = v303;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v305 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v304, v303))
    {
      v22 = v307;
      v292 = static UnsafeMutablePointer.allocate(capacity:)();
      v288 = v292;
      v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v290 = 0;
      v293 = createStorage<A>(capacity:type:)(0);
      v291 = v293;
      v294 = createStorage<A>(capacity:type:)(v290);
      v354[0] = v292;
      v353 = v293;
      v352 = v294;
      v295 = 0;
      v296 = v354;
      serialize(_:at:)(0, v354);
      serialize(_:at:)(v295, v296);
      v351 = v305;
      v297 = &v78;
      MEMORY[0x28223BE20](&v78);
      v298 = &v78 - 6;
      *(&v78 - 4) = v23;
      *(&v78 - 3) = &v353;
      *(&v78 - 2) = &v352;
      v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v300 = v22;
      if (v22)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v301, v302, "#actionForInput received cancel input, returning .cancel", v288, 2u);
        v286 = 0;
        destroyStorage<A>(_:count:)(v291, 0, v289);
        destroyStorage<A>(_:count:)(v294, v286, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v288, MEMORY[0x277D84B78]);

        v287 = v300;
      }
    }

    else
    {

      v287 = v307;
    }

    v284 = v287;

    (*(v322 + 8))(v333, v320);
    static ActionForInput.cancel()();
    (*(v337 + 8))(v338, v335);
    return v284;
  }

  v24 = v307;
  v361[0] = static PaymentsDirectInvocations.Identifiers.allCases.getter();
  v279 = &v78;
  MEMORY[0x28223BE20](&v78);
  v280 = &v78 - 4;
  *(&v78 - 2) = v25;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriPaymentsIntents0B17DirectInvocationsO11IdentifiersOGMd, _sSay19SiriPaymentsIntents0B17DirectInvocationsO11IdentifiersOGMR);
  lazy protocol witness table accessor for type [PaymentsDirectInvocations.Identifiers] and conformance [A]();
  v26 = Sequence.contains(where:)();
  v282 = v24;
  v283 = v26;
  if (!v24)
  {
    v278 = v283;
    outlined destroy of [SFCardSection](v361);
    if (v278)
    {
      v27 = v331;
      v28 = Logger.payments.unsafeMutableAddressor();
      (*(v322 + 16))(v27, v28, v320);
      v276 = Logger.logObject.getter();
      v273 = v276;
      v275 = static os_log_type_t.debug.getter();
      v274 = v275;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v277 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v276, v275))
      {
        v29 = v282;
        v264 = static UnsafeMutablePointer.allocate(capacity:)();
        v260 = v264;
        v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v262 = 0;
        v265 = createStorage<A>(capacity:type:)(0);
        v263 = v265;
        v266 = createStorage<A>(capacity:type:)(v262);
        v357[0] = v264;
        v356 = v265;
        v355 = v266;
        v267 = 0;
        v268 = v357;
        serialize(_:at:)(0, v357);
        serialize(_:at:)(v267, v268);
        v354[1] = v277;
        v269 = &v78;
        MEMORY[0x28223BE20](&v78);
        v270 = &v78 - 6;
        *(&v78 - 4) = v30;
        *(&v78 - 3) = &v356;
        *(&v78 - 2) = &v355;
        v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v272 = v29;
        if (v29)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v273, v274, "#actionForInput returning .handle for supported direct invocation", v260, 2u);
          v258 = 0;
          destroyStorage<A>(_:count:)(v263, 0, v261);
          destroyStorage<A>(_:count:)(v266, v258, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v260, MEMORY[0x277D84B78]);

          v259 = v272;
        }
      }

      else
      {

        v259 = v282;
      }

      v257 = v259;

      (*(v322 + 8))(v331, v320);
      static ActionForInput.handle()();
      (*(v337 + 8))(v338, v335);
      return v257;
    }

    Parse.confirmationResponse.getter(v319);
    v31 = type metadata accessor for ConfirmationResponse();
    v256 = (*(*(v31 - 8) + 48))(v319, 1) != 1;
    v255 = v256;
    outlined destroy of ConfirmationResponse?(v319);
    if (v255)
    {
      v32 = v329;
      v33 = Logger.payments.unsafeMutableAddressor();
      (*(v322 + 16))(v32, v33, v320);
      v253 = Logger.logObject.getter();
      v250 = v253;
      v252 = static os_log_type_t.debug.getter();
      v251 = v252;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v254 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v253, v252))
      {
        v34 = v282;
        v241 = static UnsafeMutablePointer.allocate(capacity:)();
        v237 = v241;
        v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v239 = 0;
        v242 = createStorage<A>(capacity:type:)(0);
        v240 = v242;
        v243 = createStorage<A>(capacity:type:)(v239);
        v360 = v241;
        v359 = v242;
        v358 = v243;
        v244 = 0;
        v245 = &v360;
        serialize(_:at:)(0, &v360);
        serialize(_:at:)(v244, v245);
        v357[1] = v254;
        v246 = &v78;
        MEMORY[0x28223BE20](&v78);
        v247 = &v78 - 6;
        *(&v78 - 4) = v35;
        *(&v78 - 3) = &v359;
        *(&v78 - 2) = &v358;
        v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v249 = v34;
        if (v34)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v250, v251, "#actionForInput returning .handle for supported direct invocation confirmation response", v237, 2u);
          v235 = 0;
          destroyStorage<A>(_:count:)(v240, 0, v238);
          destroyStorage<A>(_:count:)(v243, v235, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v237, MEMORY[0x277D84B78]);

          v236 = v249;
        }
      }

      else
      {

        v236 = v282;
      }

      v234 = v236;

      (*(v322 + 8))(v329, v320);
      static ActionForInput.handle()();
      (*(v337 + 8))(v338, v335);
      return v234;
    }

    (*(v337 + 8))(v338, v335);
    v233 = v282;
    goto LABEL_69;
  }

  result = v279;
  __break(1u);
  return result;
}