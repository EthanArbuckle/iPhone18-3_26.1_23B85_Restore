unint64_t sub_1C83B89A8()
{
  result = qword_1EC29FA78;
  if (!qword_1EC29FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FA78);
  }

  return result;
}

unint64_t sub_1C83B8A00()
{
  result = qword_1EC29FA80;
  if (!qword_1EC29FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FA80);
  }

  return result;
}

unint64_t sub_1C83B8A58()
{
  result = qword_1EC29FA88;
  if (!qword_1EC29FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FA88);
  }

  return result;
}

unint64_t sub_1C83B8AB0()
{
  result = qword_1EC29FA90;
  if (!qword_1EC29FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FA90);
  }

  return result;
}

unint64_t sub_1C83B8B08()
{
  result = qword_1EC29FA98;
  if (!qword_1EC29FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FA98);
  }

  return result;
}

unint64_t sub_1C83B8B60()
{
  result = qword_1EC29FAA0;
  if (!qword_1EC29FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FAA0);
  }

  return result;
}

unint64_t sub_1C83B8BB8()
{
  result = qword_1EC29FAA8;
  if (!qword_1EC29FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FAA8);
  }

  return result;
}

unint64_t sub_1C83B8C10()
{
  result = qword_1EC29FAB0;
  if (!qword_1EC29FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FAB0);
  }

  return result;
}

unint64_t sub_1C83B8C68()
{
  result = qword_1EC29FAB8;
  if (!qword_1EC29FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FAB8);
  }

  return result;
}

unint64_t sub_1C83B8CC0()
{
  result = qword_1EC29FAD0;
  if (!qword_1EC29FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FAD0);
  }

  return result;
}

unint64_t sub_1C83B8D18()
{
  result = qword_1EC29FAD8;
  if (!qword_1EC29FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FAD8);
  }

  return result;
}

unint64_t sub_1C83B8D6C()
{
  result = qword_1EC29FB50;
  if (!qword_1EC29FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB50);
  }

  return result;
}

unint64_t sub_1C83B8DC0()
{
  result = qword_1EC29FB58;
  if (!qword_1EC29FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB58);
  }

  return result;
}

unint64_t sub_1C83B8E14()
{
  result = qword_1EC29FB60;
  if (!qword_1EC29FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB60);
  }

  return result;
}

void OUTLINED_FUNCTION_32_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_66_1()
{

  JUMPOUT(0x1CCA75890);
}

void OUTLINED_FUNCTION_86_0(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

void OUTLINED_FUNCTION_87_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_88_1()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_1C83B8FE0()
{
  OUTLINED_FUNCTION_4_15();
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v0(v2);
    if (v1)
    {
      break;
    }

    v2 += 40;
  }

  while ((v4 & 1) == 0);
  return v3 != 0;
}

BOOL sub_1C83B9030()
{
  OUTLINED_FUNCTION_4_15();
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v0(v2);
    if (v1)
    {
      break;
    }

    v2 += 48;
  }

  while ((v4 & 1) == 0);
  return v3 != 0;
}

uint64_t static SymbolAlignment.customSymbolAlignments.getter()
{
  if (qword_1ED7EEAB0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }
}

id sub_1C83B917C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolAlignment();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SymbolAlignment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolAlignment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C83B920C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C83B924C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id static WFIconViewImageGenerator.emptyCache()()
{
  if (qword_1EC29CF70 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = qword_1EC29FB88;

  return [v1 removeAllObjects];
}

id static IconViewImageGenerator.loadIcon(_:size:style:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = [objc_opt_self() loadIcon:a1 size:a2 style:{a3, a4}];

  return v4;
}

id sub_1C83B9374()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EC29FB88 = result;
  return result;
}

id sub_1C83B93A8(void *a1, uint64_t a2, double a3, double a4)
{
  v94 = sub_1C840B8AC();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1C840C3EC();
  v92 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FBA0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v84 - v15;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FBA8);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v84 - v18;
  if (qword_1EC29CF70 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v19 = qword_1EC29FB88;
  v20 = _s8CacheKeyCMa();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4;
  *(v21 + 40) = a2;
  v22 = a1;
  v23 = [v19 objectForKey_];

  if (!v23)
  {
    v89 = v20;
    v25 = a2 == 3 || a2 == 5;
    v90 = v25;
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    v27 = v22;
    v28 = &selRef_getValue_size_;
    v88 = v19;
    v91 = v22;
    if (!v26)
    {
      if (a2)
      {
        sub_1C840BF1C();
      }

      else
      {
        sub_1C840BF0C();
      }

      v65 = v37;
      v66 = v91;
      sub_1C83B9D94(v91, a2, &v99);
      v67 = v99;
      v68 = v66;
      LOBYTE(v66) = LOBYTE(v100);
      KeyPath = swift_getKeyPath();
      LOBYTE(v97[0]) = 0;
      v99 = v68;
      v100 = a3;
      v101 = v90;
      v102 = 97;
      v103 = v67;
      LOBYTE(v104) = v66;
      BYTE1(v104) = 1;
      v105 = KeyPath;
      v106 = v65;
      v107 = 0;
      v70 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FBB0);
      sub_1C83BA32C();
      v64 = sub_1C840C5AC();
      goto LABEL_29;
    }

    v29 = v26;
    v86 = v27;
    v30 = [v29 bundleIdentifier];
    if (!v30)
    {
      sub_1C840CDDC();
      v30 = sub_1C840CD9C();
    }

    v31 = objc_opt_self();
    v32 = [objc_opt_self() currentDevice];
    [v32 screenScale];
    v34 = v33;

    v35 = [v31 applicationIconImageForBundleIdentifier:v30 length:fmax(a3 scale:{60.0), v34}];
    v87 = a2;
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v38 = [v29 bundleIdentifier];
      if (!v38)
      {
        sub_1C840CDDC();
        v38 = sub_1C840CD9C();
      }

      v39 = [v31 applicationIconImageForBundleIdentifier:v38 format:0];

      if (!v39)
      {
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FBE0);
        __swift_storeEnumTagSinglePayload(v95, 1, 1, v83);
        v40 = 0;
        a2 = v87;
LABEL_26:
        v28 = &selRef_getValue_size_;
        sub_1C83BA438();
        v64 = sub_1C840C5AC();

LABEL_29:

        v71 = swift_getKeyPath();
        v97[0] = v64;
        v97[1] = v71;
        v98 = a2 != 6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FBD8);
        swift_allocObject();

        MEMORY[0x1CCA740F0](v97);
        v72 = [objc_opt_self() currentDevice];
        [v72 v28[466]];

        sub_1C840B6EC();
        v73 = sub_1C840B6DC();
        if (v73)
        {
          v74 = v73;
          objc_opt_self();
          v75 = swift_dynamicCastObjCClass();
          if (v75)
          {
            v76 = [v75 image];
            v77 = [v76 renderingMode];

            if (v77 == 2)
            {
              v78 = 2;
            }

            else
            {
              v78 = v77 == 1;
            }
          }

          else
          {
            v78 = [v74 renderingMode];
          }

          v23 = [v74 imageWithRenderingMode_];
          if (a2 == 5)
          {
          }

          else
          {
            v79 = swift_allocObject();
            v80 = v91;
            *(v79 + 16) = v91;
            *(v79 + 24) = a3;
            *(v79 + 32) = a4;
            *(v79 + 40) = a2;
            v81 = v80;
            [v88 setObject:v23 forKey:v79];
          }
        }

        else
        {

          return 0;
        }

        return v23;
      }

      v36 = v39;
    }

    v40 = v36;
    v41 = [v36 imageWithRenderingMode_];
    WFImage.image.getter();

    v42 = v92;
    (*(v92 + 104))(v13, *MEMORY[0x1E6981630], v11);
    v85 = sub_1C840C46C();

    (*(v42 + 8))(v13, v11);
    sub_1C840C5FC();
    sub_1C840B69C();
    v43 = v99;
    v44 = LOBYTE(v100);
    v45 = v101;
    LODWORD(v92) = v102;
    v47 = v103;
    v46 = v104;
    v48 = *MEMORY[0x1E69E0FE0];
    if (v90)
    {
      v48 = 0.0;
    }

    v49 = a4 * 0.95 * v48;
    v50 = *(v94 + 20);
    v51 = *MEMORY[0x1E697F468];
    sub_1C840BB8C();
    OUTLINED_FUNCTION_6();
    (*(v52 + 104))(v10 + v50, v51);
    *v10 = v49;
    v10[1] = v49;
    v53 = &v16[*(v93 + 36)];
    sub_1C83BA62C(v10, v53);
    v54 = 0;
    *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FC08) + 36)) = 0;
    *v16 = v85;
    *(v16 + 1) = v43;
    v16[16] = v44;
    *(v16 + 3) = v45;
    v16[32] = v92;
    *(v16 + 5) = v47;
    *(v16 + 6) = v46;
    a2 = v87;
    if (v87 == 5)
    {
      v55 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v56 = sub_1C83BA220(sub_1C83B9D04, 0);
      v57 = [v56 CGColor];

      v54 = sub_1C840C25C();
    }

    v58 = sub_1C840C5FC();
    v60 = v59;
    v61 = v95;
    sub_1C83BA690(v16, v95);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FBE0);
    v63 = (v61 + *(v62 + 36));
    *v63 = v54;
    v63[1] = v58;
    v63[2] = v60;
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
    goto LABEL_26;
  }

  return v23;
}

id sub_1C83B9D04(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  if (v1 == 1)
  {
    v3 = 0.929;
    v4 = 0.933;
    v5 = 0.937;
    v6 = 1.0;
  }

  else
  {
    v3 = 0.157;
    v5 = 0.165;
    v6 = 1.0;
    v4 = 0.157;
  }

  return [v2 initWithRed:v3 green:v4 blue:v5 alpha:v6];
}

void sub_1C83B9D94(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (([a1 hasClearBackground] & 1) != 0 || objc_msgSend(a1, sel_hasTransparentBackground))
  {
    if (a2 == 2)
    {
      v6 = &selRef_whiteColor;
      goto LABEL_9;
    }

    if (a2 == 1 && [a1 hasClearBackground])
    {
      v6 = &selRef_tintColor;
LABEL_9:
      v9 = [objc_opt_self() *v6];
      v7 = [objc_allocWithZone(MEMORY[0x1E69E09E0]) initWithPlatformColor_];

      v8 = 1;
      goto LABEL_10;
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_10:
  *a3 = v7;
  *(a3 + 8) = v8;
}

uint64_t sub_1C83B9EDC()
{
  sub_1C840D27C();
  sub_1C83CC20C(*(v0 + 24), *(v0 + 32));
  return MEMORY[0x1CCA76180](*(v0 + 40));
}

BOOL sub_1C83B9F28(uint64_t a1, uint64_t a2)
{
  sub_1C8312180(0, &unk_1ED7EE740);
  if ((sub_1C840D26C() & 1) != 0 && (*(a1 + 24) == *(a2 + 24) ? (v4 = *(a1 + 32) == *(a2 + 32)) : (v4 = 0), v4))
  {
    return *(a1 + 40) == *(a2 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C83B9FAC()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1C83B9FE4()
{
  sub_1C840D77C();
  sub_1C83B9EDC();
  return sub_1C840D7CC();
}

uint64_t sub_1C83BA078()
{
  sub_1C840D77C();
  sub_1C83B9EDC();
  return sub_1C840D7CC();
}

WFIconViewImageGenerator __swiftcall WFIconViewImageGenerator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_1C83BA1C8()
{
  result = qword_1EC29FB98;
  if (!qword_1EC29FB98)
  {
    _s8CacheKeyCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FB98);
  }

  return result;
}

id sub_1C83BA220(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1C83BA2C4;
  v6[3] = &block_descriptor_3;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

id sub_1C83BA2C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

unint64_t sub_1C83BA32C()
{
  result = qword_1EC29FBB8;
  if (!qword_1EC29FBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FBB0);
    sub_1C83BA3E4();
    sub_1C830D3C0(&qword_1EC29FBC8, &qword_1EC29FBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FBB8);
  }

  return result;
}

unint64_t sub_1C83BA3E4()
{
  result = qword_1EC29FBC0;
  if (!qword_1EC29FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FBC0);
  }

  return result;
}

unint64_t sub_1C83BA438()
{
  result = qword_1EC29FBE8;
  if (!qword_1EC29FBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FBA8);
    sub_1C83BA4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FBE8);
  }

  return result;
}

unint64_t sub_1C83BA4BC()
{
  result = qword_1EC29FBF0;
  if (!qword_1EC29FBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FBE0);
    sub_1C83BA574();
    sub_1C830D3C0(&qword_1EC29FC10, &qword_1EC29FC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FBF0);
  }

  return result;
}

unint64_t sub_1C83BA574()
{
  result = qword_1EC29FBF8;
  if (!qword_1EC29FBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FBA0);
    sub_1C8336F1C();
    sub_1C830D3C0(&qword_1EC29FC00, &qword_1EC29FC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FBF8);
  }

  return result;
}

uint64_t sub_1C83BA62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C840B8AC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C83BA690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TopHitViewTextStyle.Resolved.init(color:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for TopHitViewTextStyle.Resolved(0) + 20);
  v6 = sub_1C840C62C();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t TopHitViewIconBackgroundStyle.Resolved.init(color:blendMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void TopHitViewIconBackgroundStyle.Resolved.init(color:blendMode:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 platformColor];
  v7 = sub_1C840C26C();

  *a3 = v7;
  a3[1] = a2;
}

uint64_t TopHitViewIconBackgroundStyle.init(common:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v3;
}

void *TopHitViewIconBackgroundStyle.init(lightMode:darkMode:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  v4 = *a2;
  v5 = a2[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  return result;
}

uint64_t TopHitViewTextStyle.init(common:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C831AEC0(a1, a2);
  v4 = a2 + *(type metadata accessor for TopHitViewTextStyle(0) + 20);

  return sub_1C83BA8CC(a1, v4);
}

uint64_t TopHitViewTextStyle.init(lightMode:darkMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C83BA8CC(a1, a3);
  v5 = a3 + *(type metadata accessor for TopHitViewTextStyle(0) + 20);

  return sub_1C83BA8CC(a2, v5);
}

uint64_t sub_1C83BA8CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopHitViewTextStyle.Resolved(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C83BA930(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C83BA970(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of ParameterSummaryDelegate.parameterDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_72(a1, a2, a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v5 = OUTLINED_FUNCTION_0_18(v4);

  return v6(v5);
}

uint64_t dispatch thunk of ParameterSummaryDelegate.parameterPlaceholderDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_72(a1, a2, a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v5 = OUTLINED_FUNCTION_0_18(v4);

  return v6(v5);
}

double IconShape.path(in:)@<D0>(uint64_t a1@<X8>)
{
  sub_1C840C03C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1C83BACF8(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  *&v14[1] = a1;
  v9 = sub_1C840BB8C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetHeight(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetWidth(v18);
  (*(v10 + 104))(v12, *MEMORY[0x1E697F468], v9);
  v14[2] = 0x3FF0000000000000;
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = 0x3FF0000000000000;
  v14[6] = 0;
  v14[7] = 0;
  sub_1C840C02C();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1C83BAF18()
{
  result = qword_1EC29FC20;
  if (!qword_1EC29FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FC20);
  }

  return result;
}

unint64_t sub_1C83BAF70()
{
  result = qword_1EC29FC28;
  if (!qword_1EC29FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FC28);
  }

  return result;
}

double sub_1C83BAFC4@<D0>(uint64_t a1@<X8>)
{
  IconShape.path(in:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_1C83BB030(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C840B54C();
  return sub_1C8391954;
}

unint64_t sub_1C83BB0AC()
{
  result = qword_1EC29FC30;
  if (!qword_1EC29FC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FC30);
  }

  return result;
}

uint64_t sub_1C83BB110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C83BB27C();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C83BB174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C83BB27C();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C83BB1D8(uint64_t a1)
{
  v2 = sub_1C83BB27C();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t getEnumTagSinglePayload for IconShape(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IconShape(uint64_t result, int a2, int a3)
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

unint64_t sub_1C83BB27C()
{
  result = qword_1EC29FC40;
  if (!qword_1EC29FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FC40);
  }

  return result;
}

double sub_1C83BB2D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1C832D808(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 96) = -1;
  }

  return result;
}

double sub_1C83BB318@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1C83C1300(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1C83BB368@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    OUTLINED_FUNCTION_5_0();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v6);
}

uint64_t sub_1C83BB410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C83C1548();
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_1C83C1588(result, v5, a1, a2);
    v7 = 0;
  }

  v8 = sub_1C840CAAC();

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

uint64_t ParameterSummaryBaseParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_63_2();
  v12 = v11;
  v13 = &v6[qword_1EC2A9D78];
  *v13 = 0;
  v13[8] = 0;
  *&v6[qword_1EC2A9D80 + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = qword_1EC2A9D88;
  v15 = sub_1C840CB6C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v6[v14], v6, v15);
  if (!v7)
  {
    v8 = sub_1C840CB3C();
    v7 = v17;
  }

  *(v6 + 2) = v8;
  *(v6 + 3) = v7;
  sub_1C840CB4C();

  OUTLINED_FUNCTION_20_0();
  if (v18)
  {
    v19 = sub_1C840CB4C();
  }

  else
  {
    v19 = sub_1C840CB3C();
  }

  v21 = v19;
  *(v6 + 4) = v19;
  *(v6 + 5) = v20;
  if (a5)
  {
    v21 = a4;
  }

  else
  {
  }

  *(v6 + 6) = v21;
  *(v6 + 7) = a5;
  static ParameterSummaryContentBuilder.parameterSummaryContent(typedValue:)(a6, *(v12 + 80), *(v12 + 88), &v24);
  sub_1C83AC2AC(a6, &qword_1EC29EAD0);
  (*(v16 + 8))(v6, v15);
  return OUTLINED_FUNCTION_77_3(v24);
}

uint64_t ParameterSummaryBaseParameter.init(parameterDefinition:identifier:placeholder:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_63_2();
  v24 = v12;
  v13 = &v6[qword_1EC2A9D78];
  *v13 = 0;
  v13[8] = 0;
  *&v6[qword_1EC2A9D80 + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = qword_1EC2A9D88;
  v15 = sub_1C840CB6C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v6[v14], v6, v15);
  if (!v7)
  {
    v8 = sub_1C840CB3C();
    v7 = v17;
  }

  *(v6 + 2) = v8;
  *(v6 + 3) = v7;
  sub_1C840CB4C();

  OUTLINED_FUNCTION_20_0();
  if (v18)
  {
    v19 = sub_1C840CB4C();
  }

  else
  {
    v19 = sub_1C840CB3C();
  }

  *(v6 + 4) = v19;
  *(v6 + 5) = v20;
  if (!a5)
  {
    a4 = v19;
  }

  *(v6 + 6) = a4;
  *(v6 + 7) = a5;
  v25 = *(v24 + 80);
  v27 = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  v22 = *(v25 - 8);
  (*(v22 + 16))(boxed_opaque_existential_1, a6, v25);
  static ParameterSummaryContent.value(_:fallbackName:)(v26, 0, 0xE000000000000000, &v28);
  (*(v22 + 8))(a6, v25);
  (*(v16 + 8))(v6, v15);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return OUTLINED_FUNCTION_77_3(v28);
}

uint64_t ParameterSummaryBaseParameter.deinit()
{

  v1 = qword_1EC2A9D88;
  sub_1C840CB6C();
  OUTLINED_FUNCTION_5_0();
  (*(v2 + 8))(v0 + v1);

  sub_1C8338A00(v0 + qword_1EC2A9D80);
  return v0;
}

uint64_t sub_1C83BB920()
{
  OUTLINED_FUNCTION_35_3(qword_1EC2A9D90);
  swift_beginAccess();
  return OUTLINED_FUNCTION_78_3();
}

uint64_t sub_1C83BB964(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_58_3(qword_1EC2A9D90);
  swift_beginAccess();
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t sub_1C83BB9C0()
{
  OUTLINED_FUNCTION_35_3(qword_1EC2A9D78);
  swift_beginAccess();
  return OUTLINED_FUNCTION_78_3();
}

uint64_t sub_1C83BBA04(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_58_3(qword_1EC2A9D78);
  swift_beginAccess();
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t sub_1C83BBA60()
{
  OUTLINED_FUNCTION_58_3(qword_1EC2A9D80);
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1C83BBAA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35_3(qword_1EC2A9D80);
  swift_beginAccess();
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C83BBB0C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = qword_1EC2A9D80;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1C83752F8;
}

void sub_1C83BBB98()
{
  OUTLINED_FUNCTION_26_4();
  v2 = v1;
  v3 = *(*v0 + 80);
  v4 = sub_1C840D2FC();
  OUTLINED_FUNCTION_0();
  v30 = v5;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  sub_1C83BB920();
  v14 = *(v37[0] + 16);

  if (v14)
  {
    sub_1C83BB920();
    v15 = *(v37[0] + 16);

    if (v15 == 1)
    {
      sub_1C83BB920();
      sub_1C83BB2D0(v35[0], v36);

      if (LOBYTE(v36[12]) != 255)
      {
        memcpy(v37, v36, 0x61uLL);
        sub_1C832D808(v37, v36);
        if ((v36[12] & 1) == 0)
        {
          sub_1C832D870(v37);
          v24 = v36[1];
          *v2 = v36[0];
          v2[1] = v24;
          goto LABEL_13;
        }

        memcpy(v35, v36, sizeof(v35));
        sub_1C83C1300(&v35[7], &v33);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC29ECE0);
        if (swift_dynamicCast())
        {
          sub_1C832D840(v35);
          sub_1C832D870(v37);
          OUTLINED_FUNCTION_27();
          __swift_storeEnumTagSinglePayload(v16, v17, v18, v3);
          v19 = *(v10 + 32);
          v19(v13, v8, v3);
          v19(v2, v13, v3);
          OUTLINED_FUNCTION_49_3();
LABEL_14:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_27_0();
          return;
        }

        v25 = OUTLINED_FUNCTION_27_6();
        __swift_storeEnumTagSinglePayload(v25, v26, v27, v3);
        (*(v30 + 8))(v8, v4);
        sub_1C83BB920();
        v31 = v33;
        v32 = v34;
        v21 = ParameterSummaryContent.text.getter();
        v23 = v28;
        sub_1C832D840(v35);
        sub_1C832D870(v37);
LABEL_12:

        *v2 = v21;
        v2[1] = v23;
LABEL_13:
        OUTLINED_FUNCTION_49_3();
        goto LABEL_14;
      }

      sub_1C83AC2AC(v36, &qword_1EC29ECD8);
    }

    sub_1C83BB920();
    v36[0] = v37[0];
    LOBYTE(v36[1]) = v37[1];
    v21 = ParameterSummaryContent.text.getter();
    v23 = v22;
    goto LABEL_12;
  }

  *v2 = 0;
  v2[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_27_0();

  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C83BBF18(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D290);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8414660;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  *(v4 + 128) = 0;
  v6 = v4;
  v7 = 0;

  return sub_1C83BB964(&v6);
}

uint64_t sub_1C83BBFA4(void *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    sub_1C83BE88C();
    v2 = sub_1C83BF3D8();
  }

  v17 = MEMORY[0x1E69E7CC0];
  v3 = a1;
  v4 = [v2 length];
  OUTLINED_FUNCTION_4_13();
  v5 = swift_allocObject();
  *(v5 + 16) = &v17;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_4_13();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C83C08A8;
  *(v6 + 24) = v5;
  v15 = sub_1C83C08B0;
  v16 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1C83C0808;
  v14 = &block_descriptor_4;
  v7 = _Block_copy(&aBlock);
  v8 = v2;

  [v8 enumerateAttributesInRange:0 options:v4 usingBlock:{0, v7}];

  _Block_release(v7);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = v17;

    aBlock = v10;
    LOBYTE(v12) = 0;
    return sub_1C83BB964(&aBlock);
  }

  return result;
}

uint64_t sub_1C83BC174()
{
  OUTLINED_FUNCTION_10_0();
  v1[79] = v0;
  v1[78] = v2;
  v3 = *v0;
  v1[80] = *v0;
  v4 = sub_1C840CAAC();
  OUTLINED_FUNCTION_59(v4);
  v1[81] = swift_task_alloc();
  v5 = sub_1C840CA1C();
  v1[82] = v5;
  v1[83] = *(v5 - 8);
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = *(v3 + 80);
  v6 = sub_1C840D2FC();
  v1[90] = v6;
  v1[91] = *(v6 - 8);
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0);
  OUTLINED_FUNCTION_59(v7);
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  sub_1C840D05C();
  v1[97] = sub_1C840D04C();
  v9 = sub_1C840D03C();
  v1[98] = v9;
  v1[99] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C83BC3C4, v9, v8);
}

void sub_1C83BC3C4()
{
  sub_1C83BB920();
  *(v0 + 800) = v80;
  v5 = *(v80 + 16);
  *(v0 + 808) = v5;
  if (v5 != 1)
  {
    if (!v5)
    {
      v6 = *(v0 + 656);

LABEL_4:
      OUTLINED_FUNCTION_31_5();
      v10 = v6;
LABEL_5:
      __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
      OUTLINED_FUNCTION_0_19();

      OUTLINED_FUNCTION_19_2();

      v11();
      return;
    }

LABEL_12:
    v19 = 0;
    v20 = MEMORY[0x1E69DAE70];
    *(v0 + 116) = *MEMORY[0x1E69DADF0];
    *(v0 + 220) = *v20;
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_28_5(v19);
      if (v23)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_3(v22);
      if (*(v0 + 112))
      {
        OUTLINED_FUNCTION_69_2();
        v12 = *(v0 + 512);
        v13 = *(v0 + 520);
        __swift_project_boxed_opaque_existential_1((v0 + 488), v12);
        v42 = OUTLINED_FUNCTION_28_3();
        OUTLINED_FUNCTION_3_17(v42);
        v78 = (v43 + *v43);
        swift_task_alloc();
        OUTLINED_FUNCTION_87();
        *(v0 + 880) = v44;
        *v44 = v45;
        OUTLINED_FUNCTION_6_15(v44);
        v18 = *(v0 + 688);
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_20_8();
      v24 = OUTLINED_FUNCTION_26_7();
      (v3)(v24);
      OUTLINED_FUNCTION_34_4(v1);
      if (!v51)
      {

        OUTLINED_FUNCTION_3_17(v21);
        v78 = (v46 + *v46);
        swift_task_alloc();
        OUTLINED_FUNCTION_87();
        *(v0 + 864) = v47;
        *v47 = v48;
        v18 = OUTLINED_FUNCTION_4_16(v47);
        goto LABEL_27;
      }

      v25 = OUTLINED_FUNCTION_9_9();
      v26(v25);
      v27 = OUTLINED_FUNCTION_27_6();
      OUTLINED_FUNCTION_80_3(v27, v28, v29, v3);
      v1 = sub_1C840C9DC();
      v30 = swift_allocBox();
      v32 = OUTLINED_FUNCTION_19_9(v30, v31);
      (*(v33 + 104))(v32, v21, v1);
      v34 = OUTLINED_FUNCTION_25_9();
      v35(v34);
      v36 = OUTLINED_FUNCTION_18_8();
      v37(v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v0 + 856);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_9_0();
        sub_1C832EB38();
        v21 = v40;
      }

      OUTLINED_FUNCTION_36_4();
      if (v23)
      {
        OUTLINED_FUNCTION_39_3();
        sub_1C832EB38();
        v21 = v41;
      }

      v6 = *(v0 + 696);
      OUTLINED_FUNCTION_12_10();
      v3();
      v39 = OUTLINED_FUNCTION_1_18();
      v4(v39);
      OUTLINED_FUNCTION_45_4();
    }

    while (!v51);
    OUTLINED_FUNCTION_53_2();

    OUTLINED_FUNCTION_11_11();
    OUTLINED_FUNCTION_50_2();
    if (!v51)
    {
      v68 = OUTLINED_FUNCTION_7_11();
      v4(v68);
      sub_1C840C85C();
      v69 = swift_allocBox();
      OUTLINED_FUNCTION_52_2(v69, v70);
      OUTLINED_FUNCTION_68_3();
      v71 = OUTLINED_FUNCTION_62_3();
      (v3)(v71);
      *v2 = v77;
      v72 = OUTLINED_FUNCTION_56_2();
      v73(v72);
      v7 = OUTLINED_FUNCTION_40_4();
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_70_3();
    sub_1C83AC2AC(v80, &qword_1EC29EAD0);
    goto LABEL_4;
  }

  sub_1C83BB2D0(v80, v0 + 224);
  if (*(v0 + 320) == 255)
  {
    sub_1C83AC2AC(v0 + 224, &qword_1EC29ECD8);
    goto LABEL_12;
  }

  memcpy((v0 + 120), (v0 + 224), 0x61uLL);
  sub_1C832D808(v0 + 120, v0 + 328);
  if (*(v0 + 424))
  {
    memcpy((v0 + 528), (v0 + 328), 0x60uLL);
    v12 = *(v0 + 608);
    v13 = *(v0 + 616);
    __swift_project_boxed_opaque_existential_1((v0 + 584), v12);
    v14 = OUTLINED_FUNCTION_28_3();
    OUTLINED_FUNCTION_3_17(v14);
    v78 = (v15 + *v15);
    swift_task_alloc();
    OUTLINED_FUNCTION_87();
    *(v0 + 832) = v16;
    *v16 = v17;
    v16[1] = sub_1C83BCDA8;
    v18 = *(v0 + 624);
LABEL_25:
    v49 = v12;
  }

  else
  {
    v52 = *(v0 + 744);
    v53 = *(v0 + 712);
    v55 = *(v0 + 328);
    v54 = *(v0 + 336);
    v13 = *(*(v0 + 640) + 88);
    v56 = *(v13 + 8);

    v56(v55, v54, v53, v13);
    OUTLINED_FUNCTION_34_4(v52);
    if (v51)
    {
      v57 = *(v0 + 744);
      v58 = *(v0 + 728);
      v59 = *(v0 + 720);
      v60 = *(v0 + 664);
      v61 = *(v0 + 656);
      v79 = *(v0 + 624);
      sub_1C832D870(v0 + 120);

      (*(v58 + 8))(v57, v59);
      v62 = OUTLINED_FUNCTION_27_6();
      OUTLINED_FUNCTION_80_3(v62, v63, v64, v61);
      sub_1C840C9DC();
      v65 = swift_allocBox();
      *v66 = v55;
      v66[1] = v54;
      OUTLINED_FUNCTION_5_0();
      (*(v67 + 104))();
      *v79 = v65;
      (*(v60 + 104))();
      OUTLINED_FUNCTION_27();
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_3_17(v13);
    v78 = (v74 + *v74);
    swift_task_alloc();
    OUTLINED_FUNCTION_87();
    *(v0 + 816) = v75;
    *v75 = v76;
    v75[1] = sub_1C83BCB54;
    v18 = *(v0 + 768);
    v49 = *(v0 + 712);
  }

  v50 = v13;
LABEL_27:

  v78(v18, v49, v50);
}

uint64_t sub_1C83BCB54()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  *(v3 + 824) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_54_2();
    v9 = sub_1C83BDACC;
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    (*(v10 + 8))();
    OUTLINED_FUNCTION_54_2();
    v9 = sub_1C83BCC7C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C83BCC7C()
{
  v1 = v0[96];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[78];

  sub_1C832D870((v0 + 15));
  OUTLINED_FUNCTION_39_3();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  (*(v2 + 32))(v4, v1, v3);
  OUTLINED_FUNCTION_27();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_19_2();

  return v13();
}

uint64_t sub_1C83BCDA8()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *v1;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 840) = v0;

  v5 = *(v2 + 792);
  v6 = *(v2 + 784);
  if (v0)
  {
    v7 = sub_1C83BDBC4;
  }

  else
  {
    v7 = sub_1C83BCED8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C83BCED8()
{
  v1 = *(v0 + 656);

  sub_1C832D870(v0 + 120);
  sub_1C832D840(v0 + 528);
  OUTLINED_FUNCTION_27();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_19_2();

  return v5();
}

uint64_t sub_1C83BCFD8()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  *(v3 + 872) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_54_2();
    v9 = sub_1C83BDC90;
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    (*(v10 + 8))();
    OUTLINED_FUNCTION_54_2();
    v9 = sub_1C83BD114;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

void sub_1C83BD114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_1();
  v19 = *(v14 + 760);
  v20 = *(v14 + 656);
  OUTLINED_FUNCTION_27();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  v24 = OUTLINED_FUNCTION_12();
  v25(v24);
  while (1)
  {
    v26 = OUTLINED_FUNCTION_18_8();
    v27(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v14 + 856);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_9_0();
      sub_1C832EB38();
      v29 = v48;
    }

    OUTLINED_FUNCTION_36_4();
    if (v30)
    {
      OUTLINED_FUNCTION_39_3();
      sub_1C832EB38();
      v29 = v49;
    }

    v31 = *(v14 + 696);
    OUTLINED_FUNCTION_12_10();
    v17();
    v32 = OUTLINED_FUNCTION_1_18();
    v18(v32);
    OUTLINED_FUNCTION_45_4();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_28_5(v33);
    if (v30)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_51_3(v35);
    if (*(v14 + 112))
    {
      OUTLINED_FUNCTION_69_2();
      __swift_project_boxed_opaque_existential_1((v14 + 488), *(v14 + 512));
      v50 = OUTLINED_FUNCTION_28_3();
      OUTLINED_FUNCTION_3_17(v50);
      v84 = v51 + *v51;
      swift_task_alloc();
      OUTLINED_FUNCTION_87();
      *(v14 + 880) = v52;
      *v52 = v53;
      OUTLINED_FUNCTION_6_15();
      OUTLINED_FUNCTION_76_3();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_20_8();
    v36 = OUTLINED_FUNCTION_26_7();
    (v17)(v36);
    OUTLINED_FUNCTION_34_4(v15);
    if (!v34)
    {

      OUTLINED_FUNCTION_3_17(v29);
      v84 = v54 + *v54;
      swift_task_alloc();
      OUTLINED_FUNCTION_87();
      *(v14 + 864) = v55;
      *v55 = v56;
      OUTLINED_FUNCTION_4_16();
LABEL_16:
      OUTLINED_FUNCTION_30();

      v60(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, v84, a12, a13, a14);
      return;
    }

    v37 = OUTLINED_FUNCTION_9_9();
    v38(v37);
    v39 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_80_3(v39, v40, v41, v17);
    v15 = sub_1C840C9DC();
    v42 = swift_allocBox();
    v44 = OUTLINED_FUNCTION_19_9(v42, v43);
    (*(v45 + 104))(v44, v29, v15);
    v46 = OUTLINED_FUNCTION_25_9();
    v47(v46);
  }

  OUTLINED_FUNCTION_53_2();

  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_50_2();
  if (v34)
  {
    OUTLINED_FUNCTION_70_3();
    sub_1C83AC2AC(v19, &qword_1EC29EAD0);
    OUTLINED_FUNCTION_31_5();
    v74 = v31;
  }

  else
  {
    v65 = OUTLINED_FUNCTION_7_11();
    v18(v65);
    sub_1C840C85C();
    v66 = swift_allocBox();
    OUTLINED_FUNCTION_52_2(v66, v67);
    OUTLINED_FUNCTION_68_3();
    v68 = OUTLINED_FUNCTION_62_3();
    (v17)(v68);
    *v16 = a10;
    v69 = OUTLINED_FUNCTION_56_2();
    v70(v69);
    v71 = OUTLINED_FUNCTION_40_4();
  }

  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  OUTLINED_FUNCTION_0_19();
  v85 = v75;

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_30();

  v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, v85, a12, a13, a14);
}

uint64_t sub_1C83BD534()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  *(v3 + 888) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_54_2();
    v9 = sub_1C83BDD80;
  }

  else
  {
    OUTLINED_FUNCTION_54_2();
    v9 = sub_1C83BD644;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C83BD644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_1();
  v19 = *(v14 + 856);
  (*(*(v14 + 664) + 16))(*(v14 + 680), *(v14 + 688), *(v14 + 656));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v14 + 856);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_26:
    OUTLINED_FUNCTION_9_0();
    sub_1C832EB38();
    v21 = v81;
  }

  OUTLINED_FUNCTION_36_4();
  if (v22)
  {
    OUTLINED_FUNCTION_39_3();
    sub_1C832EB38();
    v21 = v82;
  }

  v23 = *(v14 + 680);
  OUTLINED_FUNCTION_12_10();
  v17();
  v24 = OUTLINED_FUNCTION_1_18();
  v18(v24);
  sub_1C832D840(v14 + 432);
  while (1)
  {
    OUTLINED_FUNCTION_45_4();
    if (v26)
    {
      break;
    }

    OUTLINED_FUNCTION_28_5(v25);
    if (v22)
    {
      __break(1u);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_51_3(v27);
    if (*(v14 + 112))
    {
      OUTLINED_FUNCTION_69_2();
      __swift_project_boxed_opaque_existential_1((v14 + 488), *(v14 + 512));
      v46 = OUTLINED_FUNCTION_28_3();
      OUTLINED_FUNCTION_3_17(v46);
      v83 = v47 + *v47;
      swift_task_alloc();
      OUTLINED_FUNCTION_87();
      *(v14 + 880) = v48;
      *v48 = v49;
      OUTLINED_FUNCTION_6_15();
      OUTLINED_FUNCTION_76_3();
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_20_8();
    v28 = OUTLINED_FUNCTION_26_7();
    (v17)(v28);
    OUTLINED_FUNCTION_34_4(v15);
    if (!v26)
    {

      OUTLINED_FUNCTION_3_17(v21);
      v83 = v50 + *v50;
      swift_task_alloc();
      OUTLINED_FUNCTION_87();
      *(v14 + 864) = v51;
      *v51 = v52;
      OUTLINED_FUNCTION_4_16(v51);
LABEL_19:
      OUTLINED_FUNCTION_30();

      return v56(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, v83, a12, a13, a14);
    }

    v29 = OUTLINED_FUNCTION_9_9();
    v30(v29);
    v31 = OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_80_3(v31, v32, v33, v17);
    v15 = sub_1C840C9DC();
    v34 = swift_allocBox();
    v36 = OUTLINED_FUNCTION_19_9(v34, v35);
    (*(v37 + 104))(v36, v21, v15);
    v38 = OUTLINED_FUNCTION_25_9();
    v39(v38);
    v40 = OUTLINED_FUNCTION_18_8();
    v41(v40);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v14 + 856);
    if ((v42 & 1) == 0)
    {
      OUTLINED_FUNCTION_9_0();
      sub_1C832EB38();
      v21 = v44;
    }

    OUTLINED_FUNCTION_36_4();
    if (v22)
    {
      OUTLINED_FUNCTION_39_3();
      sub_1C832EB38();
      v21 = v45;
    }

    v23 = *(v14 + 696);
    OUTLINED_FUNCTION_12_10();
    v17();
    v43 = OUTLINED_FUNCTION_1_18();
    v18(v43);
  }

  OUTLINED_FUNCTION_53_2();

  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_50_2();
  if (v26)
  {
    OUTLINED_FUNCTION_70_3();
    sub_1C83AC2AC(v19, &qword_1EC29EAD0);
    OUTLINED_FUNCTION_31_5();
    v71 = v23;
  }

  else
  {
    v62 = OUTLINED_FUNCTION_7_11();
    v18(v62);
    sub_1C840C85C();
    v63 = swift_allocBox();
    OUTLINED_FUNCTION_52_2(v63, v64);
    OUTLINED_FUNCTION_68_3();
    v65 = OUTLINED_FUNCTION_62_3();
    (v17)(v65);
    *v16 = a10;
    v66 = OUTLINED_FUNCTION_56_2();
    v67(v66);
    v68 = OUTLINED_FUNCTION_40_4();
  }

  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  OUTLINED_FUNCTION_0_19();
  v84 = v72;

  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_30();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, v84, a12, a13, a14);
}

uint64_t sub_1C83BDACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_1();
  v15 = *(v14 + 744);
  v16 = *(v14 + 712);

  sub_1C832D870(v14 + 120);
  OUTLINED_FUNCTION_5_0();
  (*(v17 + 8))(v15, v16);
  OUTLINED_FUNCTION_2_14();

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_30();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C83BDBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_1();

  sub_1C832D870(v14 + 120);
  sub_1C832D840(v14 + 528);
  OUTLINED_FUNCTION_2_14();

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_30();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C83BDC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_1();
  v15 = *(v14 + 736);
  v16 = *(v14 + 712);

  OUTLINED_FUNCTION_5_0();
  (*(v17 + 8))(v15, v16);
  OUTLINED_FUNCTION_2_14();

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_30();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C83BDD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_48_1();

  sub_1C832D840(v14 + 432);
  OUTLINED_FUNCTION_2_14();

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_30();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C83BDE44(uint64_t a1)
{
  static ParameterSummaryContentBuilder.parameterSummaryContent(typedValue:)(a1, *(*v1 + 80), *(*v1 + 88), &v3);
  (*(*v1 + 280))(&v3);
}

uint64_t sub_1C83BDEF4(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  OUTLINED_FUNCTION_59(v4);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_43();
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_1C840D08C();
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_80_3(v8, v9, v10, v11);
  sub_1C840D05C();

  v12 = sub_1C840D04C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v2;
  *(v13 + 40) = v6;
  *(v13 + 48) = v7;
  OUTLINED_FUNCTION_37_1();
  sub_1C83BE2BC();
}

uint64_t sub_1C83BDFF0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  OUTLINED_FUNCTION_59(v4);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_43();
  v6 = *(a1 + 8);
  if (*a1)
  {

    sub_1C83BF8AC();

    v7 = v23;
    v6 = v24;
  }

  else
  {
    v7 = 0;
  }

  v23 = v7;
  v24 = v6;
  sub_1C83BBA04(&v23);
  sub_1C83BB920();
  v8 = *(v23 + 16);

  if (!v8)
  {
    sub_1C83BB9C0();
    if (v23)
    {
      v10 = *(v23 + 16);

      if (v10)
      {
        OUTLINED_FUNCTION_67_2();
        *(v10 + 8) = 0;
      }
    }

    else
    {
    }

    sub_1C840D08C();
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_80_3(v11, v12, v13, v14);
    sub_1C840D05C();

    v15 = sub_1C840D04C();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v2;
    v18 = OUTLINED_FUNCTION_37_1();
    sub_1C83BE57C(v18, v19, v20, v21, v22);
  }

  return result;
}

uint64_t sub_1C83BE1AC(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  OUTLINED_FUNCTION_59(v4);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_43();
  sub_1C83BB920();

  if ((v19 & 1) == 0)
  {
    OUTLINED_FUNCTION_67_2();
    *(v19 + 8) = a1 & 1;
    sub_1C840D08C();
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_80_3(v7, v8, v9, v10);
    sub_1C840D05C();

    v11 = sub_1C840D04C();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v2;
    v14 = OUTLINED_FUNCTION_37_1();
    sub_1C83BE57C(v14, v15, v16, v17, v18);
  }

  return result;
}

void sub_1C83BE2BC()
{
  OUTLINED_FUNCTION_26_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  OUTLINED_FUNCTION_59(v8);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  sub_1C83C1648(v5, v23 - v10, &qword_1EC29DF08);
  v12 = sub_1C840D08C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C83AC2AC(v11, &qword_1EC29DF08);
  }

  else
  {
    sub_1C840D07C();
    OUTLINED_FUNCTION_5_0();
    (*(v14 + 8))(v11, v12);
  }

  v15 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C840D03C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v19 = sub_1C840CE0C() + 32;
      OUTLINED_FUNCTION_4_13();
      v20 = swift_allocObject();
      *(v20 + 16) = v3;
      *(v20 + 24) = v1;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v21 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v23[1] = 7;
      v23[2] = v21;
      v23[3] = v19;
      swift_task_create();

      sub_1C83AC2AC(v5, &qword_1EC29DF08);

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1C83AC2AC(v5, &qword_1EC29DF08);
  OUTLINED_FUNCTION_4_13();
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v1;
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1C83BE57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1C83C1648(a3, v24 - v10, &qword_1EC29DF08);
  v12 = sub_1C840D08C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C83AC2AC(v11, &qword_1EC29DF08);
  }

  else
  {
    sub_1C840D07C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C840D03C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C840CE0C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FD50);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_1C83AC2AC(a3, &qword_1EC29DF08);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C83AC2AC(a3, &qword_1EC29DF08);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FD50);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_1C83BE88C()
{
  result = qword_1EC29FC48[0];
  if (!qword_1EC29FC48[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EC29FC48);
  }

  return result;
}

uint64_t sub_1C83BE900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = swift_allocObject();
  a7(a1, a2, a3, a4, a5, a6);
  return v14;
}

uint64_t ParameterSummaryBaseParameter.parameterDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EC2A9D88;
  sub_1C840CB6C();
  OUTLINED_FUNCTION_5_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1C83BEA80@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C83BB920();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1C83BEAC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return sub_1C83BB964(&v3);
}

uint64_t sub_1C83BEB0C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C83BB9C0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1C83BEB50(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return sub_1C83BBA04(&v3);
}

uint64_t sub_1C83BEB98(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_1C83BBAA8(v2, v1);
}

uint64_t static ParameterSummaryBaseParameter.State.empty.getter@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for ParameterSummaryBaseParameter.State();

  return swift_storeEnumTagMultiPayload();
}

void ParameterSummaryBaseParameter.State.init(typedValue:)()
{
  OUTLINED_FUNCTION_26_4();
  v61 = v1;
  v62 = v0;
  v3 = v2;
  v5 = v4;
  sub_1C840C9DC();
  OUTLINED_FUNCTION_0();
  v55 = v7;
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v54 = v9 - v8;
  v60 = sub_1C840D2FC();
  OUTLINED_FUNCTION_0();
  v58 = v10;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  OUTLINED_FUNCTION_0();
  v59 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v57 = (v17 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0);
  OUTLINED_FUNCTION_59(v18);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  v22 = sub_1C840CA1C();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v53 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v53 - v32;
  sub_1C83C1648(v5, v21, &qword_1EC29EAD0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
  {
    v53 = v5;
    v38 = OUTLINED_FUNCTION_75_3();
    v39(v38);
    v40 = *(v24 + 16);
    v40(v30, v33, v22);
    (*(v62 + 16))(v30, v3, v62);
    if (__swift_getEnumTagSinglePayload(v13, 1, v3) != 1)
    {
      sub_1C83AC2AC(v53, &qword_1EC29EAD0);
      (*(v24 + 8))(v33, v22);
      v48 = *(v59 + 32);
      v49 = v57;
      v48(v57, v13, v3);
      v48(v61, v49, v3);
      type metadata accessor for ParameterSummaryBaseParameter.State();
      swift_storeEnumTagMultiPayload();
      goto LABEL_11;
    }

    (*(v58 + 8))(v13, v60);
    v40(v27, v33, v22);
    if ((*(v24 + 88))(v27, v22) == *MEMORY[0x1E69DAE70])
    {
      v60 = v33;
      (*(v24 + 96))(v27, v22);
      v41 = swift_projectBox();
      (*(v55 + 16))(v54, v41, v56);
      v42 = OUTLINED_FUNCTION_75_3();
      v44 = v43(v42);
      v45 = v61;
      if (v44 == *MEMORY[0x1E69DADF0])
      {
        v46 = OUTLINED_FUNCTION_75_3();
        v47(v46);

        ParameterSummaryBaseParameter.State.init(text:)();
        sub_1C83AC2AC(v53, &qword_1EC29EAD0);
        (*(v24 + 8))(v60, v22);
        goto LABEL_11;
      }

      v51 = OUTLINED_FUNCTION_75_3();
      v52(v51);

      v50 = v53;
      v33 = v60;
    }

    else
    {
      (*(v24 + 8))(v27, v22);
      v45 = v61;
      v50 = v53;
    }

    static ParameterSummaryBaseParameter.State.empty.getter(v45);
    sub_1C83AC2AC(v50, &qword_1EC29EAD0);
    (*(v24 + 8))(v33, v22);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_76_3();
  sub_1C83AC2AC(v34, v35);
  static ParameterSummaryBaseParameter.State.empty.getter(v61);
  OUTLINED_FUNCTION_76_3();
  sub_1C83AC2AC(v36, v37);
LABEL_11:
  OUTLINED_FUNCTION_27_0();
}

void ParameterSummaryBaseParameter.State.init(text:)()
{
  OUTLINED_FUNCTION_26_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v27 = v8;
  sub_1C840D2FC();
  OUTLINED_FUNCTION_0();
  v25 = v10;
  v26 = v9;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = (v18 - v17);
  v20 = *(v1 + 8);

  v20(v7, v5, v3, v1);
  OUTLINED_FUNCTION_34_4(v13);
  if (v21)
  {
    (*(v25 + 8))(v13, v26);
    v22 = v27;
    *v27 = v7;
    v22[1] = v5;
  }

  else
  {

    v23 = *(v15 + 32);
    v23(v19, v13, v3);
    v23(v27, v19, v3);
  }

  type metadata accessor for ParameterSummaryBaseParameter.State();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_27_0();
}

id sub_1C83BF3D8()
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_28_3();
  v2 = sub_1C840CD9C();

  v3 = [v0 initWithString_];

  return v3;
}

uint64_t sub_1C83BF448(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  *(v6 + 120) = a6;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 72) = *a4;
  sub_1C840D05C();
  *(v6 + 80) = sub_1C840D04C();
  v8 = sub_1C840D03C();
  *(v6 + 88) = v8;
  *(v6 + 96) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C83BF50C, v8, v7);
}

uint64_t sub_1C83BF50C()
{
  v14 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v3 = *(v0 + 64);
  }

  v12 = v3;
  v13 = (v2 != 0) & v1;

  sub_1C83BB964(&v12);
  v4 = sub_1C83BBA60();
  *(v0 + 104) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = type metadata accessor for ParameterSummaryBaseParameter();
    v6 = OUTLINED_FUNCTION_10_11(v5);
    OUTLINED_FUNCTION_44_2(v6);

    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_21_6(v7);

    return v9(v8);
  }

  else
  {

    OUTLINED_FUNCTION_41();

    return v11();
  }
}

uint64_t sub_1C83BF6D0()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_95();
  *v6 = v5;

  if (v0)
  {

    swift_unknownObjectRelease();
    v7 = *(v3 + 88);
    v8 = *(v3 + 96);
    v9 = sub_1C83BF84C;
  }

  else
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v3 + 16);
    v7 = *(v3 + 88);
    v8 = *(v3 + 96);
    v9 = sub_1C83BF7F4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C83BF7F4()
{
  OUTLINED_FUNCTION_130();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_1C83BF84C()
{
  OUTLINED_FUNCTION_130();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_41();

  return v1();
}

void sub_1C83BF8AC()
{
  OUTLINED_FUNCTION_26_4();
  v22 = v2;
  v25 = sub_1C840B1DC();
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 16);
  if (v5)
  {
    v6 = *v0 + 32;
    v23 = (v3 + 8);
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C832D808(v6, v33);
      sub_1C832D808(v33, v32);
      if (v32[96])
      {
        memcpy(v31, v32, sizeof(v31));
        if (LOBYTE(v31[6]) == 1)
        {
          v1 = v31[3];
          v26 = v31[2];
          v8 = v31[4];
          v9 = v31[5];
          sub_1C83C1300(&v31[7], &v29);

          v0 = v24;
          sub_1C840B1CC();
          v10 = sub_1C840B1BC();
          v12 = v11;
          (*v23)(v0, v25);
          v27[0] = v10;
          v27[1] = v12;
          v27[2] = v26;
          v27[3] = v1;
          v27[4] = v8;
          v27[5] = v9;
          v28 = 0;
          sub_1C832DBC8(v27, v30);
          v30[96] = 1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_9_0();
            sub_1C832E644();
            v7 = v16;
          }

          OUTLINED_FUNCTION_57_1();
          if (v13)
          {
            OUTLINED_FUNCTION_46_3();
            v7 = v17;
          }

          sub_1C832D840(v27);
        }

        else
        {
          sub_1C832D808(v33, v30);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_9_0();
            sub_1C832E644();
            v7 = v18;
          }

          OUTLINED_FUNCTION_57_1();
          if (v13)
          {
            OUTLINED_FUNCTION_46_3();
            v7 = v19;
          }
        }

        sub_1C832D840(v31);
      }

      else
      {
        sub_1C832D870(v32);
        sub_1C832D808(v33, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_9_0();
          sub_1C832E644();
          v7 = v15;
        }

        OUTLINED_FUNCTION_57_1();
        if (v13)
        {
          OUTLINED_FUNCTION_46_3();
          v7 = v14;
        }
      }

      sub_1C832D870(v33);
      *(v7 + 16) = v1;
      memcpy((v7 + 104 * v0 + 32), v30, 0x61uLL);
      v6 += 104;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v20 = v22;
  *(v22 + 8) = 0;
  *v20 = v7;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1C83BFB74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[7] = a1;
  v4[8] = a4;
  v4[9] = *a4;
  sub_1C840D05C();
  v4[10] = sub_1C840D04C();
  v6 = sub_1C840D03C();
  v4[11] = v6;
  v4[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C83BFC34, v6, v5);
}

void sub_1C83BFC34()
{
  v1 = sub_1C83BBA60();
  *(v0 + 104) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = type metadata accessor for ParameterSummaryBaseParameter();
    v3 = OUTLINED_FUNCTION_10_11(v2);
    OUTLINED_FUNCTION_44_2(v3);

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_21_6(v4);
    OUTLINED_FUNCTION_79_2();

    __asm { BRAA            X3, X16 }
  }

  **(v0 + 56) = 1;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_79_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C83BFDC0()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_95();
  *v6 = v5;

  if (v0)
  {

    swift_unknownObjectRelease();
    v7 = *(v3 + 88);
    v8 = *(v3 + 96);
    v9 = sub_1C83BFF44;
  }

  else
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v3 + 16);
    v7 = *(v3 + 88);
    v8 = *(v3 + 96);
    v9 = sub_1C83BFEE4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C83BFEE4()
{
  OUTLINED_FUNCTION_130();

  **(v0 + 56) = 0;
  OUTLINED_FUNCTION_41();

  return v1();
}

uint64_t sub_1C83BFF44()
{
  OUTLINED_FUNCTION_130();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  **(v0 + 56) = 1;
  OUTLINED_FUNCTION_41();

  return v1();
}

uint64_t sub_1C83BFFB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[7] = a1;
  v4[8] = a4;
  v4[9] = *a4;
  sub_1C840D05C();
  v4[10] = sub_1C840D04C();
  v6 = sub_1C840D03C();
  v4[11] = v6;
  v4[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C83C0070, v6, v5);
}

void sub_1C83C0070()
{
  v1 = sub_1C83BBA60();
  *(v0 + 104) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = type metadata accessor for ParameterSummaryBaseParameter();
    v3 = OUTLINED_FUNCTION_10_11(v2);
    OUTLINED_FUNCTION_44_2(v3);

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_21_6(v4);
    OUTLINED_FUNCTION_79_2();

    __asm { BRAA            X3, X16 }
  }

  **(v0 + 56) = 1;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_79_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C83C01FC()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_95();
  *v6 = v5;

  if (v0)
  {

    swift_unknownObjectRelease();
    v7 = *(v3 + 88);
    v8 = *(v3 + 96);
    v9 = sub_1C83C17C8;
  }

  else
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v3 + 16);
    v7 = *(v3 + 88);
    v8 = *(v3 + 96);
    v9 = sub_1C83C17CC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t ParameterSummaryBaseParameter.__deallocating_deinit()
{
  ParameterSummaryBaseParameter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C83C0474(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C83BBB0C(v2);
  return sub_1C8391954;
}

uint64_t sub_1C83C0564(uint64_t a1)
{
  v6 = (*(**v1 + 264) + **(**v1 + 264));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C837541C;

  return v6(a1);
}

uint64_t sub_1C83C07C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ParameterSummaryBaseParameter();
  result = sub_1C840D3EC();
  *a1 = result;
  return result;
}

uint64_t sub_1C83C0808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_1C8396934();
  v9 = sub_1C840CD2C();
  v8(v9, a3, a4, a5);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C83C08F0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_0_14(v5);
  *v6 = v7;
  v6[1] = sub_1C838C18C;
  v8 = OUTLINED_FUNCTION_16_8();

  return sub_1C83BF448(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_1C83C09A8()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_0_14(v3);
  *v4 = v5;
  v4[1] = sub_1C837541C;
  v6 = OUTLINED_FUNCTION_16_8();

  return sub_1C83BFB74(v6, v7, v1, v2);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C83C0A88()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_0_14(v3);
  *v4 = v5;
  v4[1] = sub_1C838C18C;
  v6 = OUTLINED_FUNCTION_16_8();

  return sub_1C83BFFB0(v6, v7, v1, v2);
}

uint64_t sub_1C83C0B28(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C83C0B70()
{
  result = sub_1C840CB6C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ParameterSummaryBaseParameter.asTypedValue()()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v7 = (*(*v0 + 264) + **(*v0 + 264));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_0_14(v3);
  *v4 = v5;
  v4[1] = sub_1C837541C;

  return v7(v2);
}

uint64_t sub_1C83C0FA8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C83C1018(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_1C83C113C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_1C83C1300(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_5_0();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1C83C1360(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C83C1454;

  return v5(v2 + 32);
}

uint64_t sub_1C83C1454()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_16_0();
  v2 = v1;
  OUTLINED_FUNCTION_32();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_95();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_19_2();

  return v8();
}

uint64_t sub_1C83C1588@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1C840CAAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1C83C1648(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_5_0();
  v4 = OUTLINED_FUNCTION_12();
  v5(v4);
  return a2;
}

uint64_t sub_1C83C16A8()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_74_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_0_14(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_2(v1);

  return v4(v3);
}

uint64_t sub_1C83C1738()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_74_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_0_14(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_2(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_51_3@<X0>(uint64_t a1@<X8>)
{

  return sub_1C832D808(v1 + 104 * a1 + 32, v2 + 16);
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_77_3@<X0>(uint64_t a1@<X8>)
{
  v4 = v3 + v2;
  *v4 = a1;
  *(v4 + 8) = v1;
  return v3;
}

uint64_t sub_1C83C18D0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

void *WidgetConfigurationCardDescriptionView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1C83C1E44(*v1);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v8 = [v3 intent];
    v9 = [v8 _codableDescription];

    v10 = [v9 localizedDescriptiveText];
    v6 = sub_1C840CDDC();
    v7 = v11;
  }

  sub_1C83C18D0(v6, v7);
  v13 = v12;

  if (v13)
  {
    v14 = sub_1C840BB7C();
    v29[0] = 1;
    sub_1C83C1B8C(__src);
    memcpy(__dst, __src, 0x61uLL);
    memcpy(v28, __src, 0x61uLL);
    sub_1C83AE898(__dst, v30, &qword_1EC29FD78);
    sub_1C836D218(v28, &qword_1EC29FD78);

    memcpy(&v26[7], __dst, 0x61uLL);
    v15 = v29[0];
    v16 = sub_1C840BDEC();
    sub_1C840B57C();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v30[0] = v14;
    v30[1] = 0;
    LOBYTE(v30[2]) = v15;
    memcpy(&v30[2] + 1, v26, 0x68uLL);
    LOBYTE(v30[16]) = v16;
    v30[17] = v18;
    v30[18] = v20;
    v30[19] = v22;
    v30[20] = v24;
    LOBYTE(v30[21]) = 0;
    sub_1C83C1FA4(v30);
  }

  else
  {
    v30[0] = 0x4030000000000000;
    LOBYTE(v30[1]) = 0;
    sub_1C83C1EA8(v30);
  }

  memcpy(v29, v30, sizeof(v29));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FD58);
  sub_1C83C1EB4();
  sub_1C840BC6C();
  return memcpy(a1, __src, 0xAAuLL);
}

uint64_t sub_1C83C1B8C@<X0>(uint64_t a1@<X8>)
{

  sub_1C840BE3C();
  v2 = sub_1C840C07C();
  v4 = v3;
  v6 = v5;

  sub_1C832D5CC();
  v7 = sub_1C840C06C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1C832D564(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  __src[0] = v7;
  __src[1] = v9;
  LOBYTE(__src[2]) = v11 & 1;
  *(&__src[2] + 1) = *v19;
  HIDWORD(__src[2]) = *&v19[3];
  __src[3] = v13;
  __src[4] = KeyPath;
  __src[5] = 0;
  LOBYTE(__src[6]) = 1;
  HIDWORD(__src[6]) = *&v18[3];
  *(&__src[6] + 1) = *v18;
  __src[7] = v15;
  LOBYTE(__src[8]) = 0;
  HIDWORD(__src[8]) = *&v20[3];
  *(&__src[8] + 1) = *v20;
  __src[9] = sub_1C83C1DC4;
  __src[10] = 0;
  v17[88] = 1;
  memcpy(a1, __src, 0x58uLL);
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  v22[0] = v7;
  v22[1] = v9;
  v23 = v11 & 1;
  *v24 = *v19;
  *&v24[3] = *&v19[3];
  v25 = v13;
  v26 = KeyPath;
  v27 = 0;
  v28 = 1;
  *v29 = *v18;
  *&v29[3] = *&v18[3];
  v30 = v15;
  v31 = 0;
  *v32 = *v20;
  *&v32[3] = *&v20[3];
  v33 = sub_1C83C1DC4;
  v34 = 0;
  sub_1C83AE898(__src, v17, &qword_1EC29FD90);
  return sub_1C836D218(v22, &qword_1EC29FD90);
}

uint64_t sub_1C83C1DF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C840BA7C();
  *a1 = result;
  return result;
}

uint64_t sub_1C83C1E44(void *a1)
{
  v1 = [a1 widgetDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C840CDDC();

  return v3;
}

unint64_t sub_1C83C1EB4()
{
  result = qword_1EC29FD60;
  if (!qword_1EC29FD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FD58);
    sub_1C83C1F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FD60);
  }

  return result;
}

unint64_t sub_1C83C1F40()
{
  result = qword_1EC29FD68;
  if (!qword_1EC29FD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FD68);
  }

  return result;
}

unint64_t sub_1C83C1FD8()
{
  result = qword_1EC29FD80;
  if (!qword_1EC29FD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FD88);
    sub_1C83C1EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FD80);
  }

  return result;
}

uint64_t AppShortcutAdditionMenuItem.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AppShortcutAdditionMenuItem.symbolName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_1C83C20C4()
{
  sub_1C840CE2C();
  if (qword_1EC29CF30 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  v0 = qword_1EC29EA60;
  v1 = OUTLINED_FUNCTION_3_18();
  v2 = OUTLINED_FUNCTION_3_18();

  v4 = OUTLINED_FUNCTION_1_19(v3, sel_localizedStringForKey_value_table_);

  v5 = sub_1C840CDDC();
  v7 = v6;

  qword_1EC29FD98 = v5;
  unk_1EC29FDA0 = v7;
  qword_1EC29FDA8 = 0x7070612E73756C70;
  unk_1EC29FDB0 = 0xE800000000000000;
}

uint64_t static AppShortcutAdditionMenuItem.addToHomeScreen.getter()
{
  if (qword_1EC29CF78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_15(&qword_1EC29FD98);
}

void sub_1C83C2214()
{
  sub_1C840CE2C();
  if (qword_1EC29CF30 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  v0 = qword_1EC29EA60;
  v1 = OUTLINED_FUNCTION_3_18();
  v2 = OUTLINED_FUNCTION_3_18();

  v4 = OUTLINED_FUNCTION_1_19(v3, sel_localizedStringForKey_value_table_);

  v5 = sub_1C840CDDC();
  v7 = v6;

  qword_1EC29FDB8 = v5;
  unk_1EC29FDC0 = v7;
  strcpy(&qword_1EC29FDC8, "app.2.stack.3d");
  unk_1EC29FDD7 = -18;
}

uint64_t static AppShortcutAdditionMenuItem.addToShortcut.getter()
{
  if (qword_1EC29CF80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_15(&qword_1EC29FDB8);
}

uint64_t sub_1C83C2370(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C83C23B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C83C2400()
{
  v1 = *(v0 + 16);
  v2 = sub_1C840CD9C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1C840B16C();
  }

  return 0;
}

uint64_t sub_1C83C2494(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = sub_1C840B15C();
    v8 = sub_1C840CD9C();

    [v6 setObject:v7 forKey:v8];

    return sub_1C8315114(a1, a2);
  }
}

id sub_1C83C2560()
{
  type metadata accessor for SpotlightImageCache();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v0 + 16) = result;
  qword_1EC2A9D98 = v0;
  return result;
}

uint64_t sub_1C83C25B4()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1C83C262C()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ChicletUnderglowView();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  sub_1C83C2B3C();
}

void sub_1C83C26D0(void *a1)
{
  v1 = sub_1C83C27A0(a1);
  v2 = OUTLINED_FUNCTION_5_15();
  v3 = [v1 CGColor];
  [v2 setShadowColor_];

  v5 = OUTLINED_FUNCTION_5_15();
  *&v4 = sub_1C83C2A10(v1) * 0.5;
  [v5 setShadowOpacity_];
}

id sub_1C83C27A0(void *a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  v22 = 0.0;
  v23[0] = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  if ([a1 getRed:v23 green:&v22 blue:&v21 alpha:&v20])
  {
    v5 = v22;
    v6 = v21;
    v7 = v23[0] * 0.2126 + v22 * 0.7152 + v21 * 0.0722;
    if (v4 == 2)
    {
      if (v7 < 0.3)
      {
        v8 = (0.3 - v7) * 0.5 + 1.0;
        if (v23[0] * v8 <= 1.0)
        {
          v2 = v23[0] * v8;
        }

        else
        {
          v2 = 1.0;
        }

        v9 = v22 * v8;
        if (v22 * v8 > 1.0)
        {
          v9 = 1.0;
        }

        goto LABEL_30;
      }

      v15 = 0.8;
    }

    else
    {
      if (v7 < 0.2)
      {
        OUTLINED_FUNCTION_3_19();
        if (v13 ^ v14 | v12)
        {
          if (v5 > v9)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v2 = 1.0;
          if (v5 > v9)
          {
            goto LABEL_30;
          }
        }

        v17 = *(v11 + 1904);
LABEL_32:
        v6 = v6 * v17;
        goto LABEL_33;
      }

      v15 = 0.7;
    }

    if (v7 <= v15)
    {
      v9 = 1.0;
      if (v23[0] <= 1.0)
      {
        v2 = v23[0];
      }

      else
      {
        v2 = 1.0;
      }

      v8 = 1.0;
      if (v22 <= 1.0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_3_19();
    if (v13 ^ v14 | v12)
    {
      if (v5 <= v9)
      {
LABEL_31:
        v17 = *(v16 + 1848);
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 1.0;
      if (v5 <= v9)
      {
        goto LABEL_31;
      }
    }

LABEL_30:
    v6 = v6 * v8;
    v5 = v9;
LABEL_33:
    if (v6 <= 1.0)
    {
      v18 = v6;
    }

    else
    {
      v18 = 1.0;
    }

    return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v2 green:v5 blue:v18 alpha:v20];
  }

  return a1;
}

float sub_1C83C2A10(void *a1)
{
  v2 = v1;
  v3 = [a1 CGColor];
  v4 = sub_1C840D13C();

  v5 = 1.0;
  if (v4)
  {
    if (*(v4 + 16) == 4)
    {
      v6 = *(v4 + 32);
      v7 = *(v4 + 40);
      v8 = *(v4 + 48);

      v9 = v6 * 0.2126 + v7 * 0.7152 + v8 * 0.0722;
      v10 = [v2 traitCollection];
      v11 = [v10 userInterfaceStyle];

      if (v11 == 1)
      {
        if ((v9 + 0.45) <= 1.0)
        {
          return v9 + 0.45;
        }

        else
        {
          return 1.0;
        }
      }

      else if (v11 == 2)
      {
        return 1.4 - v9;
      }
    }

    else
    {
    }
  }

  return v5;
}

void sub_1C83C2B3C()
{
  v1 = OUTLINED_FUNCTION_5_15();
  [v0 bounds];
  v6 = [objc_opt_self() bezierPathWithRoundedRect:v2 cornerRadius:{v3, v4, v5, 25.0}];
  v7 = [v6 CGPath];

  [v1 setShadowPath_];
  v8 = OUTLINED_FUNCTION_5_15();
  [v8 setShadowRadius_];
}

id ChicletUnderglowView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_3_4();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_2();

  return [v2 v3];
}

id ChicletUnderglowView.init(frame:)()
{
  OUTLINED_FUNCTION_3_4();
  v5 = type metadata accessor for ChicletUnderglowView();
  v1 = OUTLINED_FUNCTION_2();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id ChicletUnderglowView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1C83C2DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C840B2BC();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C840B29C();
  v15 = [v4 layoutAttributesForItemAtIndexPath_];

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = a1 == 0xD000000000000014 && 0x80000001C841DA40 == a2;
  if (!v16 && (sub_1C840D69C() & 1) == 0)
  {

LABEL_9:
    v23 = sub_1C840CD9C();
    v15 = sub_1C840B29C();
    v24 = type metadata accessor for ChicletUnderglowFlowLayout();
    v26.receiver = v4;
    v26.super_class = v24;
    v17 = objc_msgSendSuper2(&v26, sel_layoutAttributesForSupplementaryViewOfKind_atIndexPath_, v23, v15);

    goto LABEL_10;
  }

  sub_1C83C304C();
  (*(v10 + 16))(v13, a3, v8);

  v17 = sub_1C83C3090(a1, a2, v13);
  OUTLINED_FUNCTION_2_16();
  v18 = CGRectGetWidth(v27) * 0.1;
  OUTLINED_FUNCTION_2_16();
  v19 = CGRectGetHeight(v28) * 0.2;
  OUTLINED_FUNCTION_2_16();
  v20 = CGRectGetWidth(v29) * 0.8;
  OUTLINED_FUNCTION_2_16();
  v21 = CGRectGetHeight(v30) * 0.8;
  OUTLINED_FUNCTION_2_16();
  v22 = v18 + CGRectGetMinX(v31);
  OUTLINED_FUNCTION_2_16();
  [v17 setFrame_];
  [v17 setZIndex_];
LABEL_10:

  return v17;
}

unint64_t sub_1C83C304C()
{
  result = qword_1EC29FDD8;
  if (!qword_1EC29FDD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29FDD8);
  }

  return result;
}

id sub_1C83C3090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C840CD9C();

  v5 = sub_1C840B29C();
  v6 = [swift_getObjCClassFromMetadata() layoutAttributesForSupplementaryViewOfKind:v4 withIndexPath:v5];

  v7 = sub_1C840B2BC();
  (*(*(v7 - 8) + 8))(a3, v7);
  return v6;
}

uint64_t sub_1C83C3274()
{
  OUTLINED_FUNCTION_3_4();
  v28 = sub_1C840B2BC();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChicletUnderglowFlowLayout();
  v27 = v0;
  v30 = v0;
  v31 = v5;
  v6 = OUTLINED_FUNCTION_2();
  result = objc_msgSendSuper2(v7, v8, v6);
  if (result)
  {
    v10 = result;
    sub_1C83C304C();
    v11 = sub_1C840CFDC();

    v29 = v11;
    result = sub_1C836DAB4(v11);
    if (result)
    {
      v12 = result;
      if (result >= 1)
      {
        v25 = (v2 + 8);
        v26 = "SpotlightImageCache";

        v13 = 0;
        v23 = v11;
        v14 = v24;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1CCA75DF0](v13, v11);
          }

          else
          {
            v15 = *(v11 + 8 * v13 + 32);
          }

          v16 = v15;
          if (![v15 representedElementCategory])
          {
            v17 = [v16 indexPath];
            sub_1C840B2AC();

            v18 = sub_1C840CD9C();
            v19 = sub_1C840B29C();
            v20 = [v27 layoutAttributesForSupplementaryViewOfKind:v18 atIndexPath:v19];

            if (v20)
            {
              v21 = v20;
              MEMORY[0x1CCA759B0]();
              if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1C840CFEC();
              }

              sub_1C840D00C();

              v14 = v24;
              (*v25)(v24, v28);
              v23 = v29;
              goto LABEL_14;
            }

            (*v25)(v14, v28);
          }

LABEL_14:
          if (v12 == ++v13)
          {

            return v23;
          }
        }
      }

      __break(1u);
    }

    else
    {
      return v11;
    }
  }

  return result;
}

id ChicletUnderglowFlowLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChicletUnderglowFlowLayout.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChicletUnderglowFlowLayout();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1C83C3688(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1C83C3734(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t TopHitViewColorScheme.entityIconBackground.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t TopHitViewColorScheme.noEntitiesLabelTextStyle.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = type metadata accessor for TopHitViewColorScheme();
  return sub_1C8312B90(v1 + *(v2 + 32), v0, type metadata accessor for TopHitViewTextStyle);
}

uint64_t TopHitViewColorScheme.noEntitiesButtonBackground.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = (v1 + *(type metadata accessor for TopHitViewColorScheme() + 36));
  v3 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  *v0 = v3;
  v0[1] = v4;
  v0[2] = v6;
  v0[3] = v5;
}

id TopHitViewColorScheme.sectionIconForegroundColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for TopHitViewColorScheme() + 40));

  return v1;
}

uint64_t static TopHitViewColorScheme.default(for:style:)(void *a1, unsigned __int8 *a2)
{
  v4 = OUTLINED_FUNCTION_4_17();
  v5 = type metadata accessor for TopHitViewTextStyle(v4);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = (v8 - v7);
  v52 = *a2;
  v10 = sub_1C840C2AC();
  v11 = type metadata accessor for TopHitViewTextStyle.Resolved(0);
  v12 = *(v11 + 20);
  v13 = *MEMORY[0x1E6981DF0];
  v14 = sub_1C840C62C();
  OUTLINED_FUNCTION_6();
  v16 = *(v15 + 104);
  v16(v9 + v12, v13, v14);
  *v9 = v10;
  v17 = sub_1C840C2CC();
  v48 = v11;
  v49 = v5;
  v54 = v9;
  v18 = (v9 + *(v5 + 20));
  v47 = v13;
  v16(v18 + *(v11 + 20), v13, v14);
  *v18 = v17;
  v19 = [a1 colorWithAlphaComponent_];
  v20 = [v19 platformColor];
  v21 = sub_1C840C26C();

  v22 = objc_allocWithZone(MEMORY[0x1E69E09E0]);

  if (v52 == 1)
  {
    v23 = [v22 initWithSystemColor_];
    v24 = [objc_allocWithZone(MEMORY[0x1E69E0B18]) initWithColor_];

    v25 = type metadata accessor for TopHitViewColorScheme();
    OUTLINED_FUNCTION_0_20();
    v27 = v26;
    sub_1C8312B90(v54, v2 + v28, v26);
    sub_1C8312D74(v54, v2 + v25[8], v27);
    *v2 = v24;
    v2[1] = a1;
    v2[2] = v21;
    v2[3] = 0;
    v2[4] = v21;
    v2[5] = 0;
    v29 = (v2 + v25[9]);
    *v29 = v21;
    v29[1] = 0;
    v29[2] = v21;
    v29[3] = 0;
    *(v2 + v25[10]) = a1;
    *(v2 + v25[11]) = 1;
    v30 = a1;
    return swift_retain_n();
  }

  else
  {
    v32 = [v22 initWithSystemColor_];
    v33 = [objc_opt_self() clearColor];
    v53 = [objc_allocWithZone(MEMORY[0x1E69E0B18]) initWithColor_];

    v51 = v32;
    sub_1C840C2EC();
    v46 = sub_1C840C2DC();

    sub_1C840C2EC();
    v45 = sub_1C840C2DC();

    v34 = sub_1C840C2EC();
    v35 = type metadata accessor for TopHitViewColorScheme();
    v36 = v2 + v35[7];
    v37 = (v36 + *(v49 + 20));
    v16(v37 + *(v48 + 20), v47, v14);
    *v37 = v34;
    sub_1C8312B90(v37, v36, type metadata accessor for TopHitViewTextStyle.Resolved);
    sub_1C840C2EC();
    v38 = sub_1C840C2DC();

    v39 = (v2 + v35[8]);
    v16(v39 + *(v48 + 20), *MEMORY[0x1E6981DA0], v14);
    *v39 = v38;
    sub_1C840C2EC();
    v40 = sub_1C840C2DC();

    v41 = (v39 + *(v49 + 20));
    v16(v41 + *(v48 + 20), *MEMORY[0x1E6981DB8], v14);
    *v41 = v40;
    v42 = sub_1C840C29C();
    v43 = sub_1C840C29C();

    result = sub_1C83C3EC8(v9);
    *v2 = v53;
    v2[1] = v51;
    v2[2] = v46;
    v2[3] = 2;
    v2[4] = v45;
    v2[5] = 1;
    v44 = (v2 + v35[9]);
    *v44 = v42;
    v44[1] = 0;
    v44[2] = v43;
    v44[3] = 0;
    *(v2 + v35[10]) = v51;
    *(v2 + v35[11]) = 0;
  }

  return result;
}

uint64_t static TopHitViewColorScheme.entityIconBackground(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 isDark];
  v4 = objc_opt_self();
  if (v3)
  {
    v5 = 3924420890;
  }

  else
  {
    v5 = 32;
  }

  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [v4 colorWithRGBAValue_];
  v8 = [v7 platformColor];
  v9 = sub_1C840C26C();

  *a2 = v9;
  a2[1] = v6;
  a2[2] = v9;
  a2[3] = v6;
}

uint64_t static TopHitViewColorScheme.noEntitiesButtonBackground(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 isDark];
  v4 = objc_opt_self();
  if (v3)
  {
    v5 = 3924420900;
  }

  else
  {
    v5 = 64;
  }

  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [v4 colorWithRGBAValue_];
  v8 = [v7 platformColor];
  v9 = sub_1C840C26C();

  *a2 = v9;
  a2[1] = v6;
  a2[2] = v9;
  a2[3] = v6;
}

uint64_t sub_1C83C3EC8(uint64_t a1)
{
  v2 = type metadata accessor for TopHitViewTextStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ParameterSummaryBoolParameter.__allocating_init(parameterDefinition:identifier:placeholder:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_17();
  swift_allocObject();
  OUTLINED_FUNCTION_2_0();
  return ParameterSummaryBoolParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(v7, v8, v9, v10, v11, a6);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Bool.textValue()()
{
  sub_1C840CE2C();
  if (qword_1EC29CF30 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC29EA60;
  v1 = sub_1C840CD9C();
  v2 = sub_1C840CD9C();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = sub_1C840CDDC();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t Bool.init(typedValue:)(uint64_t a1)
{
  v2 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = (v7 - v6);
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  if ((*(v10 + 88))(a1, v9) != *MEMORY[0x1E69DAE70])
  {
    (*(v10 + 8))(a1, v9);
    return 2;
  }

  (*(v10 + 96))(a1, v9);
  v11 = swift_projectBox();
  (*(v4 + 16))(v8, v11, v2);
  if ((*(v4 + 88))(v8, v2) != *MEMORY[0x1E69DADC0])
  {
    (*(v4 + 8))(v8, v2);

    return 2;
  }

  (*(v4 + 96))(v8, v2);
  v12 = *v8;

  return v12;
}

uint64_t Bool.typedValue()(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C83C42B4, 0, 0);
}

uint64_t sub_1C83C42B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = sub_1C840C9DC();
  v4 = swift_allocBox();
  *v5 = v1;
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69DADC0], v3);
  *v2 = v4;
  v6 = *MEMORY[0x1E69DAE70];
  v7 = sub_1C840CA1C();
  (*(*(v7 - 8) + 104))(v2, v6, v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C83C43C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = Bool.init(typedValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C83C4404(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C8311C5C;

  return Bool.typedValue()(a1, v4);
}

uint64_t ParameterSummaryBoolParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_21();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  (*(v17 + 16))(v20 - v19, v6, v15);
  sub_1C83379C0(a6, v14);
  v22 = sub_1C8337A30(v21, v9, v8, v7, a5, v14);
  sub_1C8371618(a6);
  (*(v17 + 8))(v6, v15);
  return v22;
}

uint64_t ParameterSummaryBoolParameter.__allocating_init(parameterDefinition:identifier:placeholder:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_3_21();
  v12 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  swift_allocObject();
  (*(v14 + 16))(v18, v6, v12);
  v19 = sub_1C83386BC(v18, v9, v8, v7, a5, a6);
  (*(v14 + 8))(v6, v12);
  return v19;
}

uint64_t ParameterSummaryBoolParameter.init(parameterDefinition:identifier:placeholder:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_2_17();
  v8 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  (*(v10 + 16))(v13 - v12, v6, v8);
  OUTLINED_FUNCTION_2_0();
  v19 = sub_1C83386BC(v14, v15, v16, v17, v18, a6);
  (*(v10 + 8))(v6, v8);
  return v19;
}

uint64_t ParameterSummaryBoolParameter.__deallocating_deinit()
{
  v0 = _s18WorkflowUIServices024ParameterSummaryLocationC0Cfd_0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ParameterSummaryBoolParameter()
{
  result = qword_1EC29FDE0;
  if (!qword_1EC29FDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C83C48E4@<X0>(void *a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v23[1] = a5;
  v24[0] = a3;
  v24[1] = MEMORY[0x1E69815C0];
  v24[2] = a4;
  v24[3] = MEMORY[0x1E6981568];
  v8 = sub_1C840B5CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = v23 - v14;
  if (a2)
  {
    v16 = sub_1C840C2BC();
  }

  else
  {
    v17 = [a1 platformColor];
    v16 = sub_1C840C26C();
  }

  v24[0] = v16;
  v18 = MEMORY[0x1E69815C0];
  v19 = sub_1C8393B28();
  sub_1C8393B30(v24, v19 & 0x101, a3, v18);

  WitnessTable = swift_getWitnessTable();
  sub_1C8317B60(v11, v8, WitnessTable);
  v21 = *(v9 + 8);
  v21(v11, v8);
  sub_1C8317B60(v15, v8, WitnessTable);
  return (v21)(v15, v8);
}

uint64_t sub_1C83C4B4C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  v6 = MEMORY[0x1E69815C0];
  v20[0] = a2;
  v20[1] = MEMORY[0x1E69815C0];
  v20[2] = a3;
  v20[3] = MEMORY[0x1E6981568];
  v7 = sub_1C840B5CC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  v14 = [a1 platformColor];
  v20[0] = sub_1C840C26C();
  v15 = sub_1C8393B28();
  sub_1C8393B30(v20, v15 & 0x101, a2, v6);

  WitnessTable = swift_getWitnessTable();
  sub_1C8317B60(v11, v7, WitnessTable);
  v17 = *(v8 + 8);
  v17(v11, v7);
  sub_1C8317B60(v13, v7, WitnessTable);
  return (v17)(v13, v7);
}

uint64_t ParameterSummaryToolTemplate.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  type metadata accessor for ParameterSummaryToolTemplate();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  sub_1C83535E8(v1, v11 - v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v12;
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAE0) + 48);
  (*(v4 + 32))(v8, v12, v2);
  sub_1C840C7BC();
  OUTLINED_FUNCTION_6();
  (*(v14 + 8))(v12 + v13);
  v15 = sub_1C840CB2C();
  (*(v4 + 8))(v8, v2);
  return v15;
}

uint64_t type metadata accessor for ParameterSummaryToolTemplate()
{
  result = qword_1EC29FDF0;
  if (!qword_1EC29FDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C83C4F6C()
{
  sub_1C83C4FD8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1C83C4FD8()
{
  if (!qword_1EC29FE00)
  {
    sub_1C840CB6C();
    sub_1C840C7BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC29FE00);
    }
  }
}

uint64_t sub_1C83C5048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v54 = a3;
  v56 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v59 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_77();
  v53 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FE08);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_77();
  v52 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v51 = v48 - v18;
  v19 = sub_1C840C78C();
  OUTLINED_FUNCTION_5();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  v25 = (v24 - v23);
  (*(v21 + 16))(v24 - v23, a1, v19);
  v26 = (*(v21 + 88))(v25, v19);
  if (v26 == *MEMORY[0x1E69DABB0])
  {
    (*(v21 + 96))(v25, v19);
    v27 = *(v25 + 1);
    *a4 = *v25;
    *(a4 + 1) = v27;
    type metadata accessor for ParameterSummaryToolTemplate();
    return swift_storeEnumTagMultiPayload();
  }

  v49 = a4;
  v50 = v4;
  if (v26 == *MEMORY[0x1E69DABB8])
  {
    (*(v21 + 96))(v25, v19);
    v5 = *v25;
    v28 = *(v25 + 1);
    a1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FE10) + 48);
    sub_1C840C77C();
    OUTLINED_FUNCTION_6();
    (*(v29 + 8))(&v25[a1]);
    v48[1] = a2;
    v30 = sub_1C840C69C();
    v31 = 0;
    v32 = *(v30 + 16);
    v55 = v59 + 16;
    v19 = (v59 + 8);
    v33 = v56;
    while (1)
    {
      if (v32 == v31)
      {
        a1 = v5;
        v5 = v28;

        v37 = 1;
        v38 = v49;
        v39 = v51;
        v19 = v52;
        goto LABEL_16;
      }

      if (v31 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      (*(v59 + 16))(v14, v30 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v31, v33);
      if (sub_1C840CB3C() == v5 && v34 == v28)
      {
        break;
      }

      a1 = v5;
      v5 = v28;
      v36 = sub_1C840D69C();

      if (v36)
      {
        goto LABEL_15;
      }

      v33 = v56;
      (*v19)(v14, v56);
      ++v31;
      v28 = v5;
      v5 = a1;
    }

    a1 = v5;
    v5 = v28;

LABEL_15:

    v33 = v56;
    v39 = v51;
    (*(v59 + 32))(v51, v14, v56);
    v37 = 0;
    v38 = v49;
    v19 = v52;
LABEL_16:
    __swift_storeEnumTagSinglePayload(v39, v37, 1, v33);
    sub_1C83C5618(v39, v19);
    if (__swift_getEnumTagSinglePayload(v19, 1, v33) == 1)
    {
      goto LABEL_21;
    }

    sub_1C83C5688(v39);

    v40 = *(v59 + 32);
    v41 = v53;
    v40(v53, v19, v33);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAE0);
    v43 = v33;
    v44 = *(v42 + 48);
    v40(v38, v41, v43);
    sub_1C840C7BC();
    OUTLINED_FUNCTION_6();
    (*(v45 + 16))(&v38[v44], v54);
    type metadata accessor for ParameterSummaryToolTemplate();
    return swift_storeEnumTagMultiPayload();
  }

LABEL_20:
  sub_1C840D68C();
  __break(1u);
LABEL_21:
  sub_1C83C5688(v19);
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1C840D3DC();
  MEMORY[0x1CCA75890](0xD00000000000001CLL, 0x80000001C8420AB0);
  MEMORY[0x1CCA75890](a1, v5);
  MEMORY[0x1CCA75890](0xD000000000000026, 0x80000001C8420AD0);
  v47 = sub_1C840C6BC();
  MEMORY[0x1CCA75890](v47);

  result = sub_1C840D50C();
  __break(1u);
  return result;
}

uint64_t sub_1C83C5618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FE08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C83C5688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double TopHitCollectionViewStyle.contentViewVerticalPadding.getter()
{
  result = 20.0;
  if (*v0)
  {
    return 17.0;
  }

  return result;
}

uint64_t TopHitCollectionViewStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C840D77C();
  MEMORY[0x1CCA76180](v1);
  return sub_1C840D7CC();
}

unint64_t sub_1C83C57B4()
{
  result = qword_1EC29FE18;
  if (!qword_1EC29FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FE18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TopHitCollectionViewStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1C83C58D4()
{
  v1 = *v0;
  result = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v3 = result;
  v4 = 0;
  v5 = *(v1 + 16);
  v6 = v1 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  for (i = v1 + 32; ; i += 104)
  {
    if (v5 == v4)
    {
      v38 = *(v7 + 16);

      if (!v5)
      {
        return v3;
      }

      while (1)
      {
        sub_1C832D808(v6, v41);
        if (v41[12])
        {
          break;
        }

        OUTLINED_FUNCTION_2_18();
        v18 = sub_1C83BF3D8();
        v19 = OUTLINED_FUNCTION_1_20();
        [v19 v20];

LABEL_26:
        v6 += 104;
        if (!--v5)
        {
          return v3;
        }
      }

      memcpy(__src, v41, 0x60uLL);
      if (LOBYTE(__src[6]) == 1)
      {
        sub_1C832DBC8(__src, __dst);
        v13 = objc_allocWithZone(type metadata accessor for ParameterSummaryToken());
        v14 = sub_1C83A9E1C(__dst);
        v15 = sub_1C83A9F64(v38 == 1);
        v16 = OUTLINED_FUNCTION_1_20();
        [v16 v17];

LABEL_25:
        sub_1C832D840(__src);
        goto LABEL_26;
      }

      if (__src[5])
      {
        v21 = v3;
        v22 = [objc_opt_self() configurationWithPointSize:7 weight:17.0];
        sub_1C8312180(0, &unk_1EC29F150);

        v23 = sub_1C83C5D74();
        if (v23)
        {
          v24 = v23;
          v15 = [v23 imageWithConfiguration_];

          if (v15)
          {
            v25 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
            [v25 setImage_];
            [v15 size];
            v27 = v26;
            [v15 size];
            [v25 setBounds_];
            sub_1C8312180(0, &qword_1EC29FE20);
            v29 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
            OUTLINED_FUNCTION_2_18();
            v30 = sub_1C83BF3D8();
            v31 = OUTLINED_FUNCTION_1_20();
            [v31 v32];

            v33 = sub_1C83BF3D8();
            v34 = OUTLINED_FUNCTION_1_20();
            [v34 v35];

            [v21 appendAttributedString_];
            v3 = v21;

            goto LABEL_25;
          }
        }

        else
        {
        }
      }

      OUTLINED_FUNCTION_2_18();

      v15 = sub_1C83BF3D8();
      v36 = OUTLINED_FUNCTION_1_20();
      [v36 v37];
      goto LABEL_25;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    sub_1C832D808(i, v41);
    sub_1C832D808(v41, __src);
    if (LOBYTE(__src[12]) != 1)
    {
      sub_1C832D870(__src);
LABEL_12:
      result = sub_1C832D870(v41);
      goto LABEL_13;
    }

    memcpy(__dst, __src, sizeof(__dst));
    v9 = __dst[48];
    sub_1C832D840(__dst);
    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }

    memcpy(__src, v41, 0x61uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C83A5330(0, *(v7 + 16) + 1, 1);
      v7 = v42;
    }

    v12 = *(v7 + 16);
    v11 = *(v7 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1C83A5330(v11 > 1, v12 + 1, 1);
      v7 = v42;
    }

    *(v7 + 16) = v12 + 1;
    result = memcpy((v7 + 104 * v12 + 32), __src, 0x61uLL);
LABEL_13:
    ++v4;
  }

  __break(1u);
  return result;
}

id sub_1C83C5D74()
{
  v0 = sub_1C840CD9C();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v1;
}

void sub_1C83C5DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1C83AC404(*MEMORY[0x1E69DB5F8], a1, v21);
  if (*&v21[24])
  {
    sub_1C8310F24(v21, v23);
    sub_1C830E4A4(v23, v21);
    sub_1C8312180(0, &qword_1EC29FE30);
    if (swift_dynamicCast())
    {
      v10 = v22;
      v11 = [v22 token];
      type metadata accessor for ParameterSummaryToken();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        sub_1C832DBC8(v12 + OBJC_IVAR___WFParameterSummaryToken_contentValue, v21);
        v21[96] = 1;
        sub_1C832E510();
        sub_1C832E5B4(*(*a5 + 16));

        __swift_destroy_boxed_opaque_existential_1(v23);
        OUTLINED_FUNCTION_0_21();
        memcpy((v13 + 32), v21, 0x61uLL);
        return;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_1C83C5FC4(v21);
  }

  v14 = [a6 string];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 substringWithRange_];

    v17 = sub_1C840CDDC();
    v19 = v18;

    v21[0] = 0;
    sub_1C832E510();
    sub_1C832E5B4(*(*a5 + 16));
    OUTLINED_FUNCTION_0_21();
    *(v20 + 32) = v17;
    *(v20 + 40) = v19;
    *(v20 + 128) = v21[0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C83C5FC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FE28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static SystemActionChicletMetrics.actionButton.getter(uint64_t a1@<X8>)
{
  sub_1C840C5DC();
  sub_1C840C5DC();
  sub_1C840C5DC();
  sub_1C840C5DC();
  sub_1C840C5DC();
  sub_1C840C5DC();
  __asm { FMOV            V0.2D, #2.0 }

  sub_1C83C61B0(a1);
}

double sub_1C83C61B0@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v9 = *(v1 + 6);
  v8 = *(v1 + 7);
  v10 = *(v1 + 8);
  v30 = *(v1 + 13);
  v28 = v1[1];
  v29 = *(v1 + 15);
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  [v11 scaledValueForValue_];
  v13 = v12;
  [v11 scaledValueForValue_];
  v15 = v14;
  [v11 scaledValueForValue_];
  v17 = v16;
  [v11 scaledValueForValue_];
  v19 = v18;
  [v11 scaledValueForValue_];
  v21 = v20;
  [v11 scaledValueForValue_];
  v23 = v22;
  [v11 scaledValueForValue_];
  v25 = v24;

  *a1 = v3;
  *(a1 + 8) = v28;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  *(a1 + 56) = v23;
  *(a1 + 64) = v25;
  v26 = *(v1 + 9);
  *(a1 + 88) = *(v1 + 11);
  *(a1 + 72) = v26;
  *(a1 + 104) = v30;
  result = v29;
  *(a1 + 120) = v29;
  return result;
}

void static SystemActionChicletMetrics.pencilSqueeze.getter(uint64_t a1@<X8>)
{
  sub_1C840C5DC();
  sub_1C840C5DC();
  sub_1C840C5DC();
  sub_1C83C61B0(a1);
}

uint64_t sub_1C83C6400(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C83C6420(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

double WFColor.luminance.getter()
{
  [v0 red];
  v2 = v1 * 0.2126;
  [v0 green];
  v4 = v2 + v3 * 0.7152;
  [v0 blue];
  return v4 + v5 * 0.0722;
}

id WFColor.luminanceAdjustedColor(in:)(uint64_t a1)
{
  v2 = sub_1C840B5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  sub_1C840C2EC();
  v9 = *MEMORY[0x1E697DBB8];
  v10 = *(v3 + 104);
  v10(v5, *MEMORY[0x1E697DBB8], v2);
  v47 = a1;
  LOBYTE(a1) = sub_1C840B5DC();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v12 = (a1 & 1) == 0;
  v13 = *MEMORY[0x1E697DBA8];
  if (v12)
  {
    v14 = v9;
  }

  else
  {
    v14 = *MEMORY[0x1E697DBA8];
  }

  v10(v8, v14, v2);
  v15 = Color.wfColor(with:)(v8);

  v16 = v8;
  v17 = v11;
  v18 = v46;
  v17(v16, v2);
  [v18 red];
  v20 = v19;
  [v15 red];
  if (vabdd_f64(v20, v21) >= 0.015 || ([v18 green], v23 = v22, objc_msgSend(v15, sel_green), vabdd_f64(v23, v24) >= 0.015) || (objc_msgSend(v18, sel_blue), v26 = v25, objc_msgSend(v15, sel_blue), vabdd_f64(v26, v27) >= 0.015))
  {
    v45 = v15;
    v10(v5, v13, v2);
    v29 = v17;
    v30 = sub_1C840B5DC();
    v29(v5, v2);
    if (v30)
    {
      v31 = 0.17;
    }

    else
    {
      v31 = 0.97;
    }

    if (vabdd_f64(WFColor.luminance.getter(), v31) >= 0.3)
    {
      v42 = v18;
    }

    else
    {
      v10(v5, v13, v2);
      v32 = sub_1C840B5DC();
      v29(v5, v2);
      if (v32)
      {
        v33 = 0.45;
      }

      else
      {
        v33 = 0.65;
      }

      v34 = v33 - WFColor.luminance.getter();
      [v18 red];
      v36 = v34 + v35;
      [v18 green];
      v38 = v34 + v37;
      [v18 blue];
      v40 = v34 + v39;
      [v18 alpha];
      v42 = [objc_allocWithZone(MEMORY[0x1E69E09E0]) initWithRed:v36 green:v38 blue:v40 alpha:v41];
    }

    v28 = v42;
  }

  else
  {
    sub_1C840C2EC();
    v28 = Color.wfColor(with:)(v47);
  }

  return v28;
}

uint64_t sub_1C83C6908@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  v4 = a1(0);

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
}

uint64_t ParameterSummaryParameterValue.init(textValue:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, a1);
}

uint64_t sub_1C83C6A54()
{
  sub_1C840B13C();
  sub_1C83C808C();
  return sub_1C840D65C();
}

uint64_t sub_1C83C6AF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702195828 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C840D69C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736C6166 && a2 == 0xE500000000000000)
  {

    return 0;
  }

  else
  {
    v7 = sub_1C840D69C();

    result = 0;
    if ((v7 & 1) == 0)
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_1C83C6BB0(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C840D43C();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v19 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (result)
            {
              while (1)
              {
                LOBYTE(v3) = v19 != 0;
                if (!v19)
                {
                  goto LABEL_55;
                }

                OUTLINED_FUNCTION_1_21();
                if (!v10 & v9)
                {
                  goto LABEL_54;
                }

                OUTLINED_FUNCTION_0_22();
                if (!v10)
                {
                  goto LABEL_54;
                }

                v8 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  goto LABEL_54;
                }

                v19 = v20 - 1;
              }
            }

LABEL_70:
            LOBYTE(v3) = 0;
LABEL_55:
            v34 = v3;
LABEL_65:
            v32 = v34;
            goto LABEL_66;
          }

          goto LABEL_75;
        }

        goto LABEL_79;
      }

      if (v6 != 45)
      {
        v8 = 0;
        if (v4)
        {
          while (1)
          {
            LOBYTE(v3) = v4 != 0;
            if (!v4)
            {
              goto LABEL_55;
            }

            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_54;
            }

            v28 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_54;
            }

            v8 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_54;
            }

            ++result;
            --v4;
          }
        }

        goto LABEL_76;
      }

      if (v4 >= 1)
      {
        v7 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (result)
          {
            while (1)
            {
              LOBYTE(v3) = v7 != 0;
              if (!v7)
              {
                goto LABEL_55;
              }

              OUTLINED_FUNCTION_1_21();
              if (!v10 & v9)
              {
                goto LABEL_54;
              }

              OUTLINED_FUNCTION_0_22();
              if (!v10)
              {
                goto LABEL_54;
              }

              v8 = v13 - v12;
              if (__OFSUB__(v13, v12))
              {
                goto LABEL_54;
              }

              v7 = v11 - 1;
            }
          }

          goto LABEL_70;
        }

LABEL_75:
        v8 = 0;
LABEL_76:
        LOBYTE(v3) = 1;
        goto LABEL_55;
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (result == 43)
    {
      if (v3)
      {
        v23 = v3 - 1;
        if (v3 == 1)
        {
LABEL_54:
          v8 = 0;
        }

        else
        {
          v8 = 0;
          while (1)
          {
            LOBYTE(v3) = v23 != 0;
            if (!v23)
            {
              break;
            }

            OUTLINED_FUNCTION_1_21();
            if (!v10 & v9)
            {
              goto LABEL_54;
            }

            OUTLINED_FUNCTION_0_22();
            if (!v10)
            {
              goto LABEL_54;
            }

            v8 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              goto LABEL_54;
            }

            v23 = v24 - 1;
          }
        }

        goto LABEL_55;
      }

LABEL_80:
      __break(1u);
      return result;
    }

    if (result == 45)
    {
      if (!v3)
      {
        goto LABEL_78;
      }

      v8 = 0;
      v14 = v3 - 1;
      if (v14)
      {
        while (1)
        {
          v15 = v14 != 0;
          if (!v14)
          {
            goto LABEL_64;
          }

          OUTLINED_FUNCTION_1_21();
          if (!v10 & v9)
          {
            goto LABEL_63;
          }

          OUTLINED_FUNCTION_0_22();
          if (!v10)
          {
            goto LABEL_63;
          }

          v8 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            goto LABEL_63;
          }

          v14 = v16 - 1;
        }
      }
    }

    else
    {
      v8 = 0;
      if (v3)
      {
        while (1)
        {
          v15 = v3 != 0;
          if (!v3)
          {
            goto LABEL_64;
          }

          OUTLINED_FUNCTION_1_21();
          if (!v10 & v9 || (OUTLINED_FUNCTION_0_22(), !v10) || (v8 = v31 + v30, __OFADD__(v31, v30)))
          {
LABEL_63:
            v8 = 0;
            goto LABEL_64;
          }

          v3 = v29 - 1;
        }
      }
    }

    v15 = 1;
LABEL_64:
    v34 = v15;
    goto LABEL_65;
  }

  v8 = sub_1C83C7660(result, a2, 10);
  v32 = v33;
LABEL_66:

  if (v32)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1C83C6EAC(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C840D43C();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v17 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (result)
            {
              for (i = (result + 1); ; ++i)
              {
                LOBYTE(v3) = v17 != 0;
                if (!v17)
                {
                  break;
                }

                v19 = *i - 48;
                if (v19 > 9)
                {
                  goto LABEL_53;
                }

                v20 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_53;
                }

                v8 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_53;
                }

                --v17;
              }

              goto LABEL_54;
            }

LABEL_69:
            LOBYTE(v3) = 0;
LABEL_54:
            v33 = v3;
LABEL_64:
            v30 = v33;
            goto LABEL_65;
          }

          goto LABEL_74;
        }

        goto LABEL_78;
      }

      if (v6 != 45)
      {
        v8 = 0;
        if (v4)
        {
          while (1)
          {
            LOBYTE(v3) = v4 != 0;
            if (!v4)
            {
              goto LABEL_54;
            }

            v25 = *result - 48;
            if (v25 > 9)
            {
              goto LABEL_53;
            }

            v26 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_53;
            }

            v8 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              goto LABEL_53;
            }

            ++result;
            --v4;
          }
        }

        goto LABEL_75;
      }

      if (v4 >= 1)
      {
        v7 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (result)
          {
            for (j = (result + 1); ; ++j)
            {
              LOBYTE(v3) = v7 != 0;
              if (!v7)
              {
                break;
              }

              v10 = *j - 48;
              if (v10 > 9)
              {
                goto LABEL_53;
              }

              v11 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_53;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_53;
              }

              --v7;
            }

            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_74:
        v8 = 0;
LABEL_75:
        LOBYTE(v3) = 1;
        goto LABEL_54;
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v32[0] = result;
    v32[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v3)
      {
        v21 = v3 - 1;
        if (v3 == 1)
        {
LABEL_53:
          v8 = 0;
        }

        else
        {
          v8 = 0;
          for (k = v32 + 1; ; ++k)
          {
            LOBYTE(v3) = v21 != 0;
            if (!v21)
            {
              break;
            }

            v23 = *k - 48;
            if (v23 > 9)
            {
              goto LABEL_53;
            }

            v24 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_53;
            }

            v8 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_53;
            }

            --v21;
          }
        }

        goto LABEL_54;
      }

LABEL_79:
      __break(1u);
      return result;
    }

    if (result == 45)
    {
      if (!v3)
      {
        goto LABEL_77;
      }

      v8 = 0;
      v12 = v3 - 1;
      if (v12)
      {
        for (m = v32 + 1; ; ++m)
        {
          v14 = v12 != 0;
          if (!v12)
          {
            break;
          }

          v15 = *m - 48;
          if (v15 > 9)
          {
            goto LABEL_62;
          }

          v16 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            goto LABEL_62;
          }

          v8 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            goto LABEL_62;
          }

          --v12;
        }

        goto LABEL_63;
      }
    }

    else
    {
      v8 = 0;
      if (v3)
      {
        for (n = v32; ; ++n)
        {
          v14 = v3 != 0;
          if (!v3)
          {
            break;
          }

          v28 = *n - 48;
          if (v28 > 9 || (v29 = 10 * v8, (v8 * 10) >> 64 != (10 * v8) >> 63) || (v8 = v29 + v28, __OFADD__(v29, v28)))
          {
LABEL_62:
            v8 = 0;
            goto LABEL_63;
          }

          --v3;
        }

        goto LABEL_63;
      }
    }

    v14 = 1;
LABEL_63:
    v33 = v14;
    goto LABEL_64;
  }

  v8 = sub_1C83C7660(result, a2, 10);
  v30 = v31;
LABEL_65:

  if (v30)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t ParameterSummaryParameterValue<>.init(textValue:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_1C840D2FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  sub_1C840D66C();
  if (__swift_getEnumTagSinglePayload(v7, 1, a1))
  {
    (*(v5 + 8))(v7, v4);
    v8 = 1;
  }

  else
  {
    (*(*(a1 - 8) + 32))(a2, v7, a1);
    v8 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v8, 1, a1);
}

uint64_t sub_1C83C7448@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C83C6EAC(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1C83C7478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C83C6E90(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1C83C74A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C83C6AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t dispatch thunk of ParameterSummaryParameterValue.typedValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C8311C5C;

  return v9(a1, a2, a3);
}

unsigned __int8 *sub_1C83C7660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  result = sub_1C840CF1C();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C83C7BE4();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C840D43C();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            while (v20)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_106;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_106;
              }

              v28 = v25 + v26;
              v14 = v27 + v28;
              if (__OFADD__(v27, v28))
              {
                goto LABEL_106;
              }

              --v20;
              ++v24;
            }

            goto LABEL_107;
          }

LABEL_64:
          v14 = 0;
LABEL_107:

          return v14;
        }

LABEL_126:
        v14 = 0;
        goto LABEL_107;
      }

      goto LABEL_130;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v29 = 0;
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        do
        {
          v33 = *result;
          if (v33 < 0x30 || v33 >= v30)
          {
            if (v33 < 0x41 || v33 >= v31)
            {
              v14 = 0;
              if (v33 < 0x61 || v33 >= v32)
              {
                goto LABEL_107;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v35 = v29 * a3;
          if ((v29 * a3) >> 64 != (v29 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v29 = v35 + (v33 + v34);
          if (__OFADD__(v35, (v33 + v34)))
          {
            goto LABEL_126;
          }

          ++result;
          --v8;
        }

        while (v8);
        v14 = v35 + (v33 + v34);
        goto LABEL_107;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (v10)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_106;
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

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_106;
            }

            v19 = v16 + v17;
            v14 = v18 - v19;
            if (__OFSUB__(v18, v19))
            {
              goto LABEL_106;
            }

            --v10;
            ++v15;
          }

          goto LABEL_107;
        }

        goto LABEL_64;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v38 = HIBYTE(v7) & 0xF;
  v65 = v6;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v38)
      {
        v57 = 0;
        v58 = a3 + 48;
        v59 = a3 + 55;
        v60 = a3 + 87;
        if (a3 > 10)
        {
          v58 = 58;
        }

        else
        {
          v60 = 97;
          v59 = 65;
        }

        v61 = &v65;
        do
        {
          v62 = *v61;
          if (v62 < 0x30 || v62 >= v58)
          {
            if (v62 < 0x41 || v62 >= v59)
            {
              v14 = 0;
              if (v62 < 0x61 || v62 >= v60)
              {
                goto LABEL_107;
              }

              v63 = -87;
            }

            else
            {
              v63 = -55;
            }
          }

          else
          {
            v63 = -48;
          }

          v64 = v57 * a3;
          if ((v57 * a3) >> 64 != (v57 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v57 = v64 + (v62 + v63);
          if (__OFADD__(v64, (v62 + v63)))
          {
            goto LABEL_126;
          }

          v61 = (v61 + 1);
          --v38;
        }

        while (v38);
        v14 = v64 + (v62 + v63);
        goto LABEL_107;
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v14 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (v39)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_106;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v14 * a3;
          if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
          {
            goto LABEL_106;
          }

          v47 = v44 + v45;
          v14 = v46 - v47;
          if (__OFSUB__(v46, v47))
          {
            goto LABEL_106;
          }

          --v39;
          ++v43;
        }

        goto LABEL_107;
      }

      goto LABEL_126;
    }

    goto LABEL_129;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v14 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (v48)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
LABEL_106:
              v14 = 0;
              goto LABEL_107;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v14 * a3;
        if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
        {
          goto LABEL_106;
        }

        v56 = v53 + v54;
        v14 = v55 + v56;
        if (__OFADD__(v55, v56))
        {
          goto LABEL_106;
        }

        --v48;
        ++v52;
      }

      goto LABEL_107;
    }

    goto LABEL_126;
  }

LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1C83C7BE4()
{
  v0 = sub_1C83C7C4C();
  v4 = sub_1C83C7C80(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C83C7C80(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C840D30C();
    if (!v9 || (v10 = v9, v11 = sub_1C830E2CC(v9, 0), v12 = sub_1C83C7DE0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1C840CE3C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C840CE3C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C840D43C();
LABEL_4:

  return sub_1C840CE3C();
}

unint64_t sub_1C83C7DE0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  if (!a2)
  {
    v10 = 0;
    v16 = a4;
LABEL_35:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = a6;
    *(result + 24) = a7;
    *(result + 32) = v16;
    return v10;
  }

  if (!a3)
  {
    v16 = a4;
    v10 = 0;
    goto LABEL_35;
  }

  if (a3 < 0)
  {
    goto LABEL_39;
  }

  v28 = result;
  v29 = a5;
  v10 = 0;
  v11 = a5 >> 14;
  v12 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  v14 = a4 >> 14;
  v30 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v31 = a7 & 0xFFFFFFFFFFFFFFLL;
  v15 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v15 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v15;
  v33 = a4 >> 14;
  v27 = a4;
  v16 = a4;
  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v18 = v16 >> 14;
    if (v16 >> 14 == v11)
    {
      goto LABEL_34;
    }

    result = v16;
    if ((v16 & 0xC) == v13)
    {
      v22 = a2;
      result = sub_1C83C8010(v16, a6, a7);
      v14 = v33;
      a2 = v22;
      v18 = result >> 14;
    }

    if (v18 < v14 || v18 >= v11)
    {
      goto LABEL_37;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      v23 = a2;
      result = sub_1C840CEDC();
      v14 = v33;
      a2 = v23;
      v21 = result;
    }

    else
    {
      v20 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v34[0] = a6;
        v34[1] = v31;
        v21 = *(v34 + v20);
      }

      else
      {
        result = v30;
        if ((a6 & 0x1000000000000000) == 0)
        {
          v26 = a2;
          result = sub_1C840D43C();
          v14 = v33;
          a2 = v26;
        }

        v21 = *(result + v20);
      }
    }

    if ((v16 & 0xC) == v13)
    {
      v24 = a2;
      result = sub_1C83C8010(v16, a6, a7);
      v14 = v33;
      a2 = v24;
      v16 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_25:
        v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_30;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_25;
    }

    if (v32 <= v16 >> 16)
    {
      goto LABEL_38;
    }

    v25 = a2;
    result = sub_1C840CEBC();
    v14 = v33;
    a2 = v25;
    v16 = result;
LABEL_30:
    *(a2 + v10++) = v21;
    if (v17 == a3)
    {
      v10 = a3;
LABEL_34:
      result = v28;
      a5 = v29;
      a4 = v27;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1C83C8010(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C840CEEC();
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
    v5 = MEMORY[0x1CCA758C0](15, a1 >> 16);
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

unint64_t sub_1C83C808C()
{
  result = qword_1EC29FE38;
  if (!qword_1EC29FE38)
  {
    sub_1C840B13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FE38);
  }

  return result;
}

void sub_1C83C80E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C836DAB4(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCA75DF0](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1C83C8FB4();
    v7 = sub_1C840D26C();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

id sub_1C83C81C4(void *a1)
{
  v1 = sub_1C83C8FF8(a1);
  v3 = 0;
  if (v2 >> 60 != 15)
  {
    v4 = v1;
    v5 = v2;
    sub_1C840B0AC();
    swift_allocObject();
    sub_1C840B09C();
    sub_1C83C905C();
    sub_1C840B08C();
    v6 = objc_allocWithZone(type metadata accessor for WidgetChicletStyle());
    v3 = sub_1C83C8304(&v8);

    sub_1C8315114(v4, v5);
  }

  return v3;
}

id sub_1C83C8304(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR___WFWidgetChicletStyle_colorScheme];
  v3[3] = &type metadata for SystemActionLightChicletColorScheme;
  v3[4] = &protocol witness table for SystemActionLightChicletColorScheme;
  v4 = swift_allocObject();
  *v3 = v4;
  v5 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for WidgetChicletStyle();
  return objc_msgSendSuper2(&v7, sel_init);
}

double sub_1C83C83C8()
{
  v1 = type metadata accessor for ChicletForegroundStyleModifier();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_1();
  v4 = v3 - v2;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme), *(v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme + 24));
  v5 = OUTLINED_FUNCTION_0_23();
  v6(v5);
  v7 = *(v4 + 16);
  sub_1C83C8F58(v4);
  return v7;
}

double sub_1C83C84A8()
{
  v1 = type metadata accessor for ChicletForegroundStyleModifier();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_1();
  v4 = v3 - v2;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme), *(v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme + 24));
  v5 = OUTLINED_FUNCTION_0_23();
  v6(v5);
  v7 = *(v4 + 8);
  sub_1C83C8F58(v4);
  return v7;
}

id sub_1C83C8590()
{
  v1 = type metadata accessor for ChicletForegroundStyleModifier();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_1();
  v4 = (v3 - v2);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme), *(v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme + 24));
  v5 = OUTLINED_FUNCTION_0_23();
  v6(v5);
  v7 = *v4;
  sub_1C83C8F58(v4);
  return v7;
}

id sub_1C83C8678()
{
  v1 = sub_1C840C62C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  v6 = type metadata accessor for ChicletForegroundStyleModifier();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = *(v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme + 24);
  v12 = *(v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme), v11);
  (*(v12 + 24))(v11, v12);
  (*(v2 + 16))(v5, v10 + *(v7 + 36), v1);
  sub_1C83C8F58(v10);
  v13 = (*(v2 + 88))(v5, v1);
  if (v13 == *MEMORY[0x1E6981DF0])
  {
    v14 = MEMORY[0x1E6979CC0];
  }

  else if (v13 == *MEMORY[0x1E6981D88])
  {
    v14 = MEMORY[0x1E6979860];
  }

  else
  {
    if (v13 != *MEMORY[0x1E6981DA0])
    {
      v17 = *(v2 + 8);
      v18 = *MEMORY[0x1E6979CC0];
      v17(v5, v1);
      return v18;
    }

    v14 = MEMORY[0x1E6979CE8];
  }

  v15 = *v14;

  return v15;
}

uint64_t sub_1C83C88E4()
{
  v1 = *(v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme + 24);
  v2 = *(v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme), v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_1C83C8974()
{
  v1 = *(v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme + 24);
  v2 = *(v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___WFWidgetChicletStyle_colorScheme), v1);
  return (*(v2 + 72))(v1, v2) & 1;
}

void sub_1C83C89D4(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (!v16)
    {
LABEL_39:
      v48 = [a1 associatedBundleIdentifier];
      sub_1C840CDDC();

      sub_1C8365A28(&v54);
      v49 = 0xC000000000000000;
      v50 = vdup_n_s32(v55 == 255);
      v51.i64[0] = v50.u32[0];
      v51.i64[1] = v50.u32[1];
      v54 = vandq_s8(v54, vcgezq_s64(vshlq_n_s64(v51, 0x3FuLL)));
      if (v55 != 255)
      {
        v49 = v55 | 0x8000000000000000;
      }

      v55 = v49;
      v52 = objc_allocWithZone(type metadata accessor for WidgetChicletStyle());
      sub_1C83C8304(&v54);
      return;
    }

    v17 = v16;
    v18 = a1;
    v19 = [v17 identifier];
    v20 = sub_1C840CDDC();
    v22 = v21;

    OUTLINED_FUNCTION_2_19();
    if (v20 == 0xD00000000000001BLL && v23 == v22)
    {
    }

    else
    {
      v25 = sub_1C840D69C();

      v26 = 0;
      if ((v25 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v28 = [v17 associatedBundleIdentifier];
    v29 = sub_1C840CDDC();
    v31 = v30;

    OUTLINED_FUNCTION_2_19();
    if (v29 == 0xD000000000000018 && v32 == v31)
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_1C840D69C();
    }

LABEL_25:
    v34 = [v17 identifier];

    v35 = sub_1C840CDDC();
    v37 = v36;

    OUTLINED_FUNCTION_2_19();
    if (v35 == 0xD00000000000002ELL && v38 == v37)
    {
    }

    else
    {
      v40 = sub_1C840D69C();

      if ((v40 & 1) == 0)
      {
        if (v26)
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }
    }

    v41 = [v17 associatedBundleIdentifier];
    v42 = sub_1C840CDDC();
    v44 = v43;

    OUTLINED_FUNCTION_2_19();
    if (v42 == 0xD00000000000001BLL && v45 == v44)
    {
    }

    else
    {
      v47 = sub_1C840D69C();

      if (((v26 | v47) & 1) == 0)
      {
LABEL_38:

        goto LABEL_39;
      }
    }

LABEL_43:
    v54 = 0uLL;
    v55 = xmmword_1C841DDE0;
    v53 = objc_allocWithZone(type metadata accessor for WidgetChicletStyle());
    sub_1C83C8304(&v54);

    return;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 sharedCache];
  v7 = [v3 identifier];
  if (!v7)
  {
    sub_1C840CDDC();
    v7 = sub_1C840CD9C();
  }

  v8 = [v6 widgetWorkflowWithIdentifier_];

  if (!v8)
  {

    return;
  }

  v9 = [objc_opt_self() workflowPalette];
  sub_1C83C8FB4();
  v10 = sub_1C840CFDC();

  v11 = [v8 backgroundColor];
  sub_1C83C80E8(v11, v10);
  v13 = v12;
  v15 = v14;

  if (v15)
  {
    v13 = 12;
LABEL_16:
    v54 = v13;
    v55 = 0uLL;
    v27 = objc_allocWithZone(type metadata accessor for WidgetChicletStyle());
    sub_1C83C8304(&v54);

    return;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

  __break(1u);
}

id sub_1C83C8EF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetChicletStyle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C83C8F58(uint64_t a1)
{
  v2 = type metadata accessor for ChicletForegroundStyleModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C83C8FB4()
{
  result = qword_1EC29CF10;
  if (!qword_1EC29CF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29CF10);
  }

  return result;
}

uint64_t sub_1C83C8FF8(void *a1)
{
  v1 = [a1 colorScheme];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C840B17C();

  return v3;
}

unint64_t sub_1C83C905C()
{
  result = qword_1EC29CC88;
  if (!qword_1EC29CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CC88);
  }

  return result;
}

void sub_1C83C90B0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = a1;
  v10 = [v9 appBundleIdentifier];
  if (v10 && (v11 = v10, v12 = sub_1C840CDDC(), v14 = v13, v11, sub_1C83806BC(), , v19 = sub_1C83805D4(v12, v14, 0), , v19))
  {
    v16 = [v19 localizedName];
  }

  else
  {
    v15 = [v9 remoteAppLocalizedName];
    if (!v15)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      goto LABEL_9;
    }

    v16 = v15;
    v19 = 0;
  }

  v17 = sub_1C840CDDC();
  v18 = v20;

LABEL_9:
  v21 = [v9 widgetDisplayName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1C840CDDC();
    v25 = v24;
  }

  else
  {
    v34 = a3;
    v26 = [v9 intent];
    v27 = [v26 _title];

    v28 = sub_1C840CDDC();
    v30 = v29;

    v23 = sub_1C83C18D0(v28, v30);
    v25 = v31;

    if (v25)
    {
    }

    else
    {
      v32 = [v9 fallbackDisplayName];

      v23 = sub_1C840CDDC();
      v25 = v33;
    }

    a3 = v34;
  }

  *a6 = v9;
  a6[1] = v17;
  a6[2] = v18;
  a6[3] = v23;
  a6[4] = v25;
  a6[5] = a4;
  a6[6] = a5;
  a6[7] = a2;
  a6[8] = a3;
}

uint64_t sub_1C83C939C()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1C83C9498()
{
  v1 = *(v0 + OBJC_IVAR___WFWidgetConfigurationHostContainerViewController_containerBackgroundColor);
  v2 = v1;
  return v1;
}

id sub_1C83C95D0(uint64_t a1)
{
  result = [*(v1 + OBJC_IVAR___WFWidgetConfigurationHostContainerViewController_backgroundView) visualStylingProviderForCategory_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1C83C9610(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___WFWidgetConfigurationHostContainerViewController_containerBackgroundColor] = 0;
  v5 = OBJC_IVAR___WFWidgetConfigurationHostContainerViewController_backgroundView;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69AE168]) init];
  *&v2[OBJC_IVAR___WFWidgetConfigurationHostContainerViewController_request] = a1;
  *&v2[OBJC_IVAR___WFWidgetConfigurationHostContainerViewController_contentViewController] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WidgetConfigurationHostContainerViewController();
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1C83C9704()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___WFWidgetConfigurationHostContainerViewController_containerBackgroundColor) = 0;
  v1 = OBJC_IVAR___WFWidgetConfigurationHostContainerViewController_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69AE168]) init];
  sub_1C840D50C();
  __break(1u);
}

void sub_1C83C97C4()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = type metadata accessor for WidgetConfigurationHostContainerViewController();
  objc_msgSendSuper2(&v31, sel_viewDidLoad);
  v2 = OUTLINED_FUNCTION_1_22();
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor_];

  v6 = *&v1[OBJC_IVAR___WFWidgetConfigurationHostContainerViewController_request];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C83C90B0(v6, 0, 0, sub_1C83CA7A8, v7, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FF40);
  sub_1C830D3C0(&qword_1EC29FF48, &qword_1EC29FF40);
  v30[0] = sub_1C840C5AC();
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29FF50));
  v9 = sub_1C840BC3C();
  v10 = [v9 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v4 clearColor];
  [v11 setBackgroundColor_];

  v13 = OUTLINED_FUNCTION_1_22();
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  [v13 setAutoresizingMask_];

  v15 = OUTLINED_FUNCTION_1_22();
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [v1 view];
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame_];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  v29 = OUTLINED_FUNCTION_1_22();

  if (v29)
  {
    [v28 addSubview_];

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1C83C9AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FF60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v15[1] = v15;
    v15[4] = *(Strong + OBJC_IVAR___WFWidgetConfigurationHostContainerViewController_contentViewController);
    MEMORY[0x1EEE9AC00](Strong);
    v15[-2] = v8;
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FF68);
    sub_1C83CA7B8();
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FF78);
    v12 = sub_1C83CA80C();
    v15[2] = v11;
    v15[3] = v12;
    swift_getOpaqueTypeConformance2();
    sub_1C840C1EC();

    (*(v3 + 32))(a1, v5, v2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a1, v13, 1, v2);
}

uint64_t sub_1C83C9CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FF98);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v29 = v27 - v4;
  v5 = sub_1C840BCAC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FF88);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FF78);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v17 = Strong;
  if (![Strong respondsToSelector_])
  {
    swift_unknownObjectRelease();
LABEL_5:
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v3);
    v23 = sub_1C830D3C0(&qword_1EC29FF90, &qword_1EC29FF88);
    v32 = v6;
    v33 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1CCA746C0](v12, v3, OpaqueTypeConformance2);
    sub_1C832AB30(v12);
    goto LABEL_6;
  }

  v18 = sub_1C840BC9C();
  v27[1] = v27;
  MEMORY[0x1EEE9AC00](v18);
  v28 = v7;
  v27[-2] = v17;
  v27[-1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FFA0);
  sub_1C830D3C0(&qword_1EC29FFA8, &qword_1EC29FFA0);
  sub_1C840B62C();
  v19 = sub_1C830D3C0(&qword_1EC29FF90, &qword_1EC29FF88);
  v20 = v29;
  MEMORY[0x1CCA746B0](v9, v6, v19);
  v21 = v30;
  (*(v30 + 16))(v12, v20, v3);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v3);
  v32 = v6;
  v33 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1CCA746C0](v12, v3, v22);
  swift_unknownObjectRelease();
  sub_1C832AB30(v12);
  (*(v21 + 8))(v20, v3);
  (*(v28 + 8))(v9, v6);
LABEL_6:
  v25 = sub_1C83CA80C();
  MEMORY[0x1CCA746B0](v15, v10, v25);
  return sub_1C832AB30(v15);
}

uint64_t sub_1C83CA17C(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  v5 = a2;

  return sub_1C840C53C();
}

id sub_1C83CA228(void *a1, uint64_t a2)
{
  result = [a1 respondsToSelector_];
  if (result)
  {

    return [a1 widgetConfigurationContainerViewControllerDidRequestToCancel_];
  }

  return result;
}

uint64_t sub_1C83CA298@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C840C3DC();
  *a1 = result;
  return result;
}

id sub_1C83CA370()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetConfigurationHostContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C83CA448(void *a1)
{
  v2 = sub_1C840B5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = sub_1C840BB2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FFB8);
  sub_1C840BD8C();
  sub_1C840B99C();
  (*(v10 + 8))(v12, v9);
  (*(v3 + 104))(v5, *MEMORY[0x1E697DBA8], v2);
  v13 = sub_1C840B5DC();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  if (v13)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  return [a1 setOverrideUserInterfaceStyle_];
}

uint64_t sub_1C83CA6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C83CA924();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1C83CA71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C83CA924();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1C83CA780()
{
  sub_1C83CA924();
  sub_1C840BD5C();
  __break(1u);
}

unint64_t sub_1C83CA7B8()
{
  result = qword_1EC29FF70;
  if (!qword_1EC29FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FF70);
  }

  return result;
}

unint64_t sub_1C83CA80C()
{
  result = qword_1EC29FF80;
  if (!qword_1EC29FF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FF78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29FF88);
    sub_1C830D3C0(&qword_1EC29FF90, &qword_1EC29FF88);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FF80);
  }

  return result;
}

unint64_t sub_1C83CA924()
{
  result = qword_1EC29FFB0;
  if (!qword_1EC29FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29FFB0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C83CA998(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C83CA9D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C83CAA20(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

id sub_1C83CAA58()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EC29FFC0 = result;
  return result;
}

id sub_1C83CAA8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VariablePillDrawer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id static VariablePillDrawer.draw(name:icon:font:tint:size:state:isAvailable:)(double a1, double a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char a9)
{
  v14 = objc_allocWithZone(type metadata accessor for VariablePillDrawer.CacheKey());
  v15 = a5;

  v16 = a6;
  v17 = OUTLINED_FUNCTION_1_23();
  v21 = sub_1C83CBC34(v18, v19, a9, v16, a8, a5, v17, v20);
  if (qword_1EC29CF98 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v22 = qword_1EC29FFC0;
  v23 = [qword_1EC29FFC0 objectForKey_];
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    if (a5)
    {
      if (a8 == 2)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      v26 = [objc_opt_self() loadIcon:v15 size:v25 style:{a2, a2}];
    }

    else
    {
      v26 = 0;
    }

    v27 = [objc_allocWithZone(MEMORY[0x1E69E0B58]) initWithPlatformImage_];
    v28 = sub_1C840CD9C();
    v29 = OUTLINED_FUNCTION_1_23();
    v32 = WFVariableImage(v27, v28, v16, a7, a8, v30, v29, v31);

    v24 = [v32 platformImage];
    [v22 setObject:v24 forKey:v21];

    v21 = v26;
  }

  return v24;
}

void sub_1C83CADE0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, void (**a11)(void, void, void))
{
  v45 = swift_allocObject();
  *(v45 + 16) = a11;
  objc_allocWithZone(type metadata accessor for VariablePillDrawer.CacheKey());
  _Block_copy(a11);

  v19 = a3;
  v20 = a4;
  v21 = sub_1C83CBC34(a1, a2, a7, v20, a6, a3, a9, a10);
  if (qword_1EC29CF98 != -1)
  {
    swift_once();
  }

  v22 = qword_1EC29FFC0;
  v23 = [qword_1EC29FFC0 objectForKey_];
  if (v23)
  {
    v24 = v23;
    (a11)[2](a11, v23, 0);

LABEL_10:

    _Block_release(a11);
    return;
  }

  v25 = a10 * 3.0;
  if (a6 == 2)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  v27 = [objc_opt_self() loadIcon:v19 size:v26 style:{a10 * 3.0, a10 * 3.0}];
  if (v27)
  {
    v28 = v27;
    v29 = [objc_allocWithZone(MEMORY[0x1E69E0B58]) initWithPlatformImage_];
    v30 = sub_1C840CD9C();
    v31 = WFVariableImage(v29, v30, v20, a5, a6, a7 & 1, a9, a10);

    v32 = [v31 platformImage];
    [v22 setObject:v32 forKey:v21];
    (a11)[2](a11, v32, 0);

    goto LABEL_10;
  }

  v33 = [objc_opt_self() currentDevice];
  [v33 screenScale];
  v35 = v34;

  v36 = [v19 bundleIdentifier];
  if (!v36)
  {
    sub_1C840CDDC();
    v36 = sub_1C840CD9C();
  }

  v37 = objc_opt_self();
  v38 = swift_allocObject();
  *(v38 + 16) = v25;
  *(v38 + 24) = v25;
  *(v38 + 32) = a9;
  *(v38 + 40) = a10;
  *(v38 + 48) = a1;
  *(v38 + 56) = a2;
  *(v38 + 64) = v20;
  *(v38 + 72) = a5;
  *(v38 + 80) = a6;
  *(v38 + 88) = a7 & 1;
  *(v38 + 96) = a8;
  *(v38 + 104) = v21;
  *(v38 + 112) = sub_1C83CC25C;
  *(v38 + 120) = v45;
  aBlock[4] = sub_1C83CC3D4;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C83498FC;
  aBlock[3] = &block_descriptor_15;
  v39 = _Block_copy(aBlock);

  v40 = v20;
  v41 = a5;
  v42 = v21;

  [v37 applicationIconImageForBundleIdentifier:v36 length:v39 scale:a10 * 3.0 completionHandler:v35];

  _Block_release(v39);

  _Block_release(a11);
}

void static VariablePillDrawer.draw(name:appIcon:font:tint:size:state:isAvailable:completion:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, char a7, void (*a8)(id, void), double a9, double a10, uint64_t a11)
{
  v19 = objc_allocWithZone(type metadata accessor for VariablePillDrawer.CacheKey());

  v20 = a3;
  v21 = a4;
  v22 = OUTLINED_FUNCTION_1_23();
  v26 = sub_1C83CBC34(v23, v24, a7, v21, a6, a3, v22, v25);
  if (qword_1EC29CF98 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  v27 = qword_1EC29FFC0;
  v28 = [qword_1EC29FFC0 objectForKey_];
  if (v28)
  {
    v29 = v28;
    v55 = v28;
    a8(v29, 0);
LABEL_10:

    OUTLINED_FUNCTION_2_20();

    return;
  }

  v30 = a10 * 3.0;
  if (a6 == 2)
  {
    v31 = 2;
  }

  else
  {
    v31 = 1;
  }

  v32 = [objc_opt_self() loadIcon:v20 size:v31 style:{a10 * 3.0, a10 * 3.0}];
  if (v32)
  {
    v33 = v32;
    v34 = [objc_allocWithZone(MEMORY[0x1E69E0B58]) initWithPlatformImage_];
    v35 = sub_1C840CD9C();
    v36 = OUTLINED_FUNCTION_1_23();
    v39 = WFVariableImage(v34, v35, v21, a5, a6, v37, v36, v38);

    v40 = [v39 platformImage];
    [v27 setObject:v40 forKey:v26];
    v55 = v40;
    a8(v40, 0);

    goto LABEL_10;
  }

  v43 = [objc_opt_self() currentDevice];
  [v43 screenScale];
  v45 = v44;

  v46 = [v20 bundleIdentifier];
  if (!v46)
  {
    sub_1C840CDDC();
    v46 = sub_1C840CD9C();
  }

  v47 = objc_opt_self();
  v48 = swift_allocObject();
  *(v48 + 16) = v30;
  *(v48 + 24) = v30;
  *(v48 + 32) = a9;
  *(v48 + 40) = a10;
  *(v48 + 48) = a1;
  *(v48 + 56) = a2;
  *(v48 + 64) = v21;
  *(v48 + 72) = a5;
  *(v48 + 80) = a6;
  *(v48 + 88) = a7 & 1;
  *(v48 + 96) = v53;
  *(v48 + 104) = v26;
  *(v48 + 112) = a8;
  *(v48 + 120) = a11;
  aBlock[4] = sub_1C83CC15C;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C83498FC;
  aBlock[3] = &block_descriptor_5;
  v49 = _Block_copy(aBlock);

  v50 = v21;
  v51 = a5;
  v52 = v26;

  [v47 applicationIconImageForBundleIdentifier:v46 length:v49 scale:a10 * 3.0 completionHandler:v45];

  _Block_release(v49);
  OUTLINED_FUNCTION_2_20();
}

uint64_t sub_1C83CB644(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, void *a13, uint64_t a14, uint64_t a15)
{
  v44 = a8;
  v43 = a7;
  v41 = a5;
  v42 = a6;
  v40 = a15;
  v46 = sub_1C840CC7C();
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C840CC9C();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8312180(0, &unk_1ED7EE750);
  v45 = sub_1C840D1EC();
  v27 = swift_allocObject();
  *(v27 + 16) = a9;
  *(v27 + 24) = a10;
  *(v27 + 32) = a1;
  *(v27 + 40) = a11;
  *(v27 + 48) = a12;
  *(v27 + 56) = a2;
  *(v27 + 64) = a3;
  *(v27 + 72) = a4;
  v28 = a4;
  v30 = v41;
  v29 = v42;
  *(v27 + 80) = v41;
  *(v27 + 88) = v29;
  *(v27 + 96) = v43;
  *(v27 + 104) = v44;
  *(v27 + 112) = a13;
  *(v27 + 120) = a14;
  *(v27 + 128) = v40;
  aBlock[4] = sub_1C83CC31C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C839ACE0;
  aBlock[3] = &block_descriptor_21_0;
  v31 = _Block_copy(aBlock);
  v32 = a1;

  v33 = v28;
  v34 = v30;
  v35 = a13;

  sub_1C840CC8C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C83CC36C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29F070);
  sub_1C83A5A68();
  v36 = v46;
  sub_1C840D37C();
  v37 = v45;
  MEMORY[0x1CCA75BF0](0, v26, v24, v31);
  _Block_release(v31);

  (*(v48 + 8))(v24, v36);
  return (*(v47 + 8))(v26, v49);
}

void sub_1C83CB980(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void (*a14)(id, uint64_t))
{
  if (a1)
  {
    v20 = [a1 roundedWithContinuousCornerRadius:a3 * 0.95 * *MEMORY[0x1E69E0FE0] size:a2];
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_1C840CD9C();
  v22 = WFVariableImage(v20, v21, a8, a9, a10, a11 & 1, a4, a5);

  v23 = [v22 platformImage];
  if (qword_1EC29CF98 != -1)
  {
    swift_once();
  }

  [qword_1EC29FFC0 setObject:v23 forKey:a13];
  v24 = v23;
  a14(v23, 1);
}

id sub_1C83CBC34(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v9 = &v8[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_name];
  *v9 = a1;
  v9[1] = a2;
  v10 = &v8[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_size];
  *v10 = a7;
  v10[1] = a8;
  *&v8[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_font] = a4;
  *&v8[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_icon] = a6;
  *&v8[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_state] = a5;
  v8[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_isAvailable] = a3;
  v12.receiver = v8;
  v12.super_class = type metadata accessor for VariablePillDrawer.CacheKey();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_1C83CBCF0()
{
  sub_1C840D7DC();
  sub_1C840CE4C();
  sub_1C83CC20C(*(v0 + OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_size), *(v0 + OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_size + 8));
  sub_1C840D27C();
  MEMORY[0x1CCA76180](*(v0 + OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_state));
  sub_1C840D79C();
  v1 = *(v0 + OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_icon);
  sub_1C840D79C();
  if (v1)
  {
    v2 = v1;
    sub_1C840D27C();
  }

  return sub_1C840D7BC();
}

uint64_t sub_1C83CBDD4(uint64_t a1)
{
  v2 = v1;
  sub_1C83CC19C(a1, v14);
  if (v15)
  {
    type metadata accessor for VariablePillDrawer.CacheKey();
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_name) == *&v13[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_name] && *(v1 + OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_name + 8) == *&v13[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_name + 8];
      if (v3 || (sub_1C840D69C()) && *(v1 + OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_size) == *&v13[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_size] && *(v1 + OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_size + 8) == *&v13[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_size + 8])
      {
        sub_1C8312180(0, &unk_1ED7EE740);
        v4 = *&v13[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_font];
        v5 = sub_1C840D26C();

        if ((v5 & 1) != 0 && *(v2 + OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_state) == *&v13[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_state] && *(v2 + OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_isAvailable) == v13[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_isAvailable])
        {
          v8 = *(v2 + OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_icon);
          v9 = *&v13[OBJC_IVAR____TtCC18WorkflowUIServices18VariablePillDrawerP33_992FFA739D1C8F168F9D6AEC579A94C78CacheKey_icon];
          if (!v8)
          {
            v12 = v9;

            if (!v9)
            {
              v6 = 1;
              return v6 & 1;
            }

            goto LABEL_15;
          }

          if (v9)
          {
            sub_1C8312180(0, &qword_1EC29D7E8);
            v10 = v9;
            v11 = v8;
            v6 = sub_1C840D26C();

            return v6 & 1;
          }
        }
      }
    }
  }

  else
  {
    sub_1C83C5FC4(v14);
  }

LABEL_15:
  v6 = 0;
  return v6 & 1;
}

id sub_1C83CC120(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C83CC19C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FE28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C83CC20C(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1CCA761A0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1CCA761A0](*&v3);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

unint64_t sub_1C83CC36C()
{
  result = qword_1ED7EE778;
  if (!qword_1ED7EE778)
  {
    sub_1C840CC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE778);
  }

  return result;
}

id WFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = WFCurrentBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id WFCurrentBundle()
{
  if (WFCurrentBundle_onceToken != -1)
  {
    dispatch_once(&WFCurrentBundle_onceToken, &__block_literal_global_17);
  }

  v1 = WFCurrentBundle_bundle;

  return v1;
}

void __WFCurrentBundle_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  memset(&v4, 0, sizeof(v4));
  if (dladdr(WFCurrentBundle, &v4) && v4.dli_fname)
  {
    v0 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v4.dli_fname isDirectory:0 relativeToURL:0];
    v1 = _CFBundleCopyBundleURLForExecutableURL();
    v2 = [MEMORY[0x1E696AAE8] bundleWithURL:v1];
    v3 = WFCurrentBundle_bundle;
    WFCurrentBundle_bundle = v2;
  }

  else
  {
    v0 = getWFGeneralLogObject();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&dword_1C830A000, v0, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}

id WFLocalizedStringFromTable(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = WFCurrentBundle();
  v6 = [v5 localizedStringForKey:v4 value:v4 table:v3];

  return v6;
}

void sub_1C83CECF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C83CF76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C83D0FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C83D12B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C83D196C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGFloat WFCGColorPerceivedLightness(CGColor *a1)
{
  NumberOfComponents = CGColorGetNumberOfComponents(a1);
  Components = CGColorGetComponents(a1);
  if (NumberOfComponents == 4)
  {
    return sqrt(Components[1] * (Components[1] * 0.587) + *Components * 0.299 * *Components + Components[2] * 0.114 * Components[2]);
  }

  result = 0.0;
  if (NumberOfComponents == 2)
  {
    return *Components;
  }

  return result;
}

void sub_1C83D7318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C83DB490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFHomeWorkflowClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFHomeWorkflow");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFHomeWorkflowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFHomeWorkflowClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFHomeWorkflowEditorViewController.m" lineNumber:107 description:{@"Unable to find class %s", "WFHomeWorkflow"}];

    __break(1u);
  }
}

void *WorkflowKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!WorkflowKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __WorkflowKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8307AB0;
    v6 = 0;
    WorkflowKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = WorkflowKitLibraryCore_frameworkLibrary;
  if (!WorkflowKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WorkflowKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFHomeWorkflowEditorViewController.m" lineNumber:22 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __WorkflowKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WorkflowKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __ActionKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ActionKitLibraryCore_frameworkLibrary = result;
  return result;
}

void __getWFWorkflowFileClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFWorkflowFile");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFWorkflowFileClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFWorkflowFileClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFHomeWorkflowEditorViewController.m" lineNumber:106 description:{@"Unable to find class %s", "WFWorkflowFile"}];

    __break(1u);
  }
}

id getWFWorkflowClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWFWorkflowClass_softClass;
  v7 = getWFWorkflowClass_softClass;
  if (!getWFWorkflowClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWFWorkflowClass_block_invoke;
    v3[3] = &unk_1E8308088;
    v3[4] = &v4;
    __getWFWorkflowClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C83DC4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFWorkflowRecordClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFWorkflowRecord");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFWorkflowRecordClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFWorkflowRecordClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFHomeWorkflowEditorViewController.m" lineNumber:105 description:{@"Unable to find class %s", "WFWorkflowRecord"}];

    __break(1u);
  }
}

void __getWFHFTriggerActionSetsBuilderParameterStateClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFHFTriggerActionSetsBuilderParameterState");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFHFTriggerActionSetsBuilderParameterStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFHFTriggerActionSetsBuilderParameterStateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFHomeWorkflowEditorViewController.m" lineNumber:112 description:{@"Unable to find class %s", "WFHFTriggerActionSetsBuilderParameterState"}];

    __break(1u);
  }
}

void *__getWFSerializableHomeIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = WorkflowKitLibrary();
  result = dlsym(v2, "WFSerializableHomeIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWFSerializableHomeIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getWFActionRegistryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWFActionRegistryClass_softClass;
  v7 = getWFActionRegistryClass_softClass;
  if (!getWFActionRegistryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWFActionRegistryClass_block_invoke;
    v3[3] = &unk_1E8308088;
    v3[4] = &v4;
    __getWFActionRegistryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C83DC788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWFComposeViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!WorkflowUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __WorkflowUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8307AC8;
    v8 = 0;
    WorkflowUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WorkflowUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WorkflowUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFHomeWorkflowEditorViewController.m" lineNumber:20 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("WFComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFComposeViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFHomeWorkflowEditorViewController.m" lineNumber:111 description:{@"Unable to find class %s", "WFComposeViewController"}];

LABEL_10:
    __break(1u);
  }

  getWFComposeViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WorkflowUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WorkflowUILibraryCore_frameworkLibrary = result;
  return result;
}

void __getWFActionRegistryClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFActionRegistry");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFActionRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFActionRegistryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFHomeWorkflowEditorViewController.m" lineNumber:110 description:{@"Unable to find class %s", "WFActionRegistry"}];

    __break(1u);
  }
}

void __getWFWorkflowClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFWorkflow");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFWorkflowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFWorkflowClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFHomeWorkflowEditorViewController.m" lineNumber:108 description:{@"Unable to find class %s", "WFWorkflow"}];

    __break(1u);
  }
}

id getWFHomeManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWFHomeManagerClass_softClass;
  v7 = getWFHomeManagerClass_softClass;
  if (!getWFHomeManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getWFHomeManagerClass_block_invoke;
    v3[3] = &unk_1E8308088;
    v3[4] = &v4;
    __getWFHomeManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C83DCD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFHomeManagerClass_block_invoke(uint64_t a1)
{
  WorkflowKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFHomeManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFHomeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getWFHomeManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFHomeWorkflowEditorViewController.m" lineNumber:109 description:{@"Unable to find class %s", "WFHomeManager"}];

    __break(1u);
  }
}

void sub_1C83DE6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLNFocusConfigurationSuggestionContextClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNFocusConfigurationSuggestionContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNFocusConfigurationSuggestionContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNFocusConfigurationSuggestionContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFFocusConfigurationOptions.m" lineNumber:14 description:{@"Unable to find class %s", "LNFocusConfigurationSuggestionContext"}];

    __break(1u);
  }
}

void LinkServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!LinkServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __LinkServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8307AE0;
    v5 = 0;
    LinkServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LinkServicesLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFFocusConfigurationOptions.m" lineNumber:12 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __LinkServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1C83DEB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLNFullyQualifiedActionIdentifierClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNFullyQualifiedActionIdentifier");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNFullyQualifiedActionIdentifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNFullyQualifiedActionIdentifierClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFFocusConfigurationOptions.m" lineNumber:13 description:{@"Unable to find class %s", "LNFullyQualifiedActionIdentifier"}];

    __break(1u);
  }
}

void sub_1C83DFB4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_1C83E138C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 96));
  _Unwind_Resume(a1);
}

id WFVariableImage(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, double a7, double a8)
{
  v65[3] = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = [objc_alloc(MEMORY[0x1E69E09C0]) initWithSize:0 opaque:a7 scale:{a8, 0.0}];
  [v19 becomeCurrent];
  v20 = v15;
  [v20 sizeInPoints];
  v22 = v21;
  [v20 sizeInPoints];
  v24 = v23;

  v25 = 0;
  v61 = round(a8 * 0.800000012);
  v26 = v61 * (v22 / v24);
  v27 = round(a8 * 0.25);
  v28 = round(a8 * 0.150000006);
  if (a5 > 2)
  {
    if (a5 == 3)
    {
      v30 = [MEMORY[0x1E69DC888] wf_secondaryLabelColor];
      v35 = [MEMORY[0x1E69E09E0] colorWithSystemColor:14];
      v36 = [v35 colorWithAlphaComponent:0.100000001];
      v25 = [v36 platformColor];
    }

    else
    {
      v30 = 0;
      if (a5 != 4)
      {
        goto LABEL_22;
      }

      if (a6)
      {
        v31 = v18;
      }

      else
      {
        v31 = [MEMORY[0x1E69DC888] wf_systemRedColor];
      }

      v30 = v31;
      v35 = [MEMORY[0x1E69E09E0] whiteColor];
      v25 = [v35 platformColor];
    }
  }

  else
  {
    if (a5 >= 2)
    {
      v30 = 0;
      if (a5 != 2)
      {
        goto LABEL_22;
      }

      v32 = [MEMORY[0x1E69E09E0] whiteColor];
      v30 = [v32 platformColor];

      if (a6)
      {
        v33 = v18;
      }

      else
      {
        v33 = [MEMORY[0x1E69DC888] wf_systemRedColor];
      }
    }

    else
    {
      if (a6)
      {
        v29 = v18;
      }

      else
      {
        v29 = [MEMORY[0x1E69DC888] wf_systemRedColor];
      }

      v30 = v29;
      v34 = 0.0700000003;
      if (a5 == 1)
      {
        v34 = 0.25;
      }

      v33 = [v29 colorWithAlphaComponent:v34];
    }

    v25 = v33;
  }

LABEL_22:
  v37 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v38 = [v37 mutableCopy];

  [v38 setLineBreakMode:4];
  v39 = *MEMORY[0x1E69DB688];
  v64[0] = *MEMORY[0x1E69DB650];
  v64[1] = v39;
  v63 = v30;
  v65[0] = v30;
  v65[1] = v38;
  v64[2] = *MEMORY[0x1E69DB648];
  v65[2] = v17;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:3];
  v41 = v28 + v28 + v26;
  v42 = v27 + v41;
  if (!v20)
  {
    v42 = v27 + v27;
  }

  v59 = v26;
  v43 = a7;
  v44 = a7 - v42;
  v45 = v16;
  [v16 sizeWithAttributes:{v40, *&v59}];
  v62 = v47;
  if (v46 >= v44)
  {
    v48 = v44;
  }

  else
  {
    v48 = v46;
  }

  if (v20)
  {
    v49 = v27 + v41 + v48;
  }

  else
  {
    v49 = v48 + v27 * 2.0;
  }

  CGContextSetFillColorWithColor([v19 CGContext], objc_msgSend(v25, "CGColor"));
  v50 = [MEMORY[0x1E69DC728] wf_bezierPathWithRoundedRect:-1 byRoundingCorners:0.0 cornerRadii:{0.0, v49, a8, a8 * 0.29, a8 * 0.29}];
  [v50 fill];

  v51 = v17;
  if (v20)
  {
    if (WFShouldReverseLayoutDirection())
    {
      v52 = v43 - v60 - v28;
    }

    else
    {
      v27 = v41;
      v52 = v28;
    }

    v53 = v18;
    if ([v20 renderingMode] == 2)
    {
      v54 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithPlatformColor:v63];
      v55 = [v20 imageWithTintColor:v54];

      v20 = v55;
    }

    [v20 drawInContext:v19 inRect:{v52, (a8 - v61) * 0.5, v60}];
  }

  else
  {
    v53 = v18;
  }

  [v45 drawWithRect:33 options:v40 attributes:0 context:{v27, (a8 - v62) * 0.5, v48}];
  [v19 resignCurrent];
  v56 = [v19 image];
  v57 = [v56 imageWithRenderingMode:1];

  return v57;
}

BOOL __WFMenuElementsHaveNonOffState_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    v5 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (([v4 shouldCollapse] & 1) == 0)
      {
        v6 = [v4 menuElements];
        v7 = [v6 if_firstObjectPassingTest:&__block_literal_global_1309];
        v3 = v7 != 0;

LABEL_15:
        goto LABEL_16;
      }
    }

    else
    {

      v5 = 0;
    }

    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 mayContainSelectedItem])
      {
        v3 = 1;
LABEL_14:
        v4 = v5;
        goto LABEL_15;
      }

LABEL_13:
      v3 = 0;
      goto LABEL_14;
    }

LABEL_12:

    v6 = 0;
    goto LABEL_13;
  }

  v3 = [v2 state] != 0;
  v4 = v2;
LABEL_16:

  return v3;
}

id WFMenuCollapsedSubtitleForMenuElements(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v13 != v4)
      {
        objc_enumerationMutation(v1);
      }

      v6 = *(*(&v12 + 1) + 8 * v5);
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
          if ([v6 state] == 1)
          {
            v10 = [v6 title];
LABEL_20:

            goto LABEL_21;
          }
        }

        else
        {

          v7 = 0;
        }

        v8 = v6;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (([v8 shouldCollapse] & 1) == 0)
          {
            v9 = [v8 menuElements];
            v10 = WFMenuCollapsedSubtitleForMenuElements();

            if (v10)
            {

              v6 = v7;
              goto LABEL_20;
            }
          }

          goto LABEL_17;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = 0;
LABEL_17:

      if (v3 == ++v5)
      {
        v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = 0;
LABEL_21:

  return v10;
}

void sub_1C83E4C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLNFullyQualifiedActionIdentifierClass_block_invoke_1400(uint64_t a1)
{
  LinkServicesLibrary_1405();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNFullyQualifiedActionIdentifier");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNFullyQualifiedActionIdentifierClass_softClass_1399 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNFullyQualifiedActionIdentifierClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFFocusConfigurationRequest.m" lineNumber:18 description:{@"Unable to find class %s", "LNFullyQualifiedActionIdentifier"}];

    __break(1u);
  }
}

void __getLNActionClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary_1405();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFFocusConfigurationRequest.m" lineNumber:17 description:{@"Unable to find class %s", "LNAction"}];

    __break(1u);
  }
}

void __getLNFocusConfigurationSuggestionContextClass_block_invoke_1402(uint64_t a1)
{
  LinkServicesLibrary_1405();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNFocusConfigurationSuggestionContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNFocusConfigurationSuggestionContextClass_softClass_1401 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNFocusConfigurationSuggestionContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFFocusConfigurationRequest.m" lineNumber:20 description:{@"Unable to find class %s", "LNFocusConfigurationSuggestionContext"}];

    __break(1u);
  }
}

void LinkServicesLibrary_1405()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!LinkServicesLibraryCore_frameworkLibrary_1411)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __LinkServicesLibraryCore_block_invoke_1412;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8307CA0;
    v5 = 0;
    LinkServicesLibraryCore_frameworkLibrary_1411 = _sl_dlopen();
  }

  if (!LinkServicesLibraryCore_frameworkLibrary_1411)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFFocusConfigurationRequest.m" lineNumber:16 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __LinkServicesLibraryCore_block_invoke_1412()
{
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary_1411 = result;
  return result;
}

void sub_1C83E5304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLNActionDefaultValueProviderClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary_1405();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNActionDefaultValueProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNActionDefaultValueProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNActionDefaultValueProviderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFFocusConfigurationRequest.m" lineNumber:19 description:{@"Unable to find class %s", "LNActionDefaultValueProvider"}];

    __break(1u);
  }
}

id unfilledVariantForSymbolName(void *a1)
{
  v1 = a1;
  if ([v1 hasSuffix:@".fill"])
  {
    v2 = [v1 substringToIndex:{objc_msgSend(v1, "length") - objc_msgSend(@".fill", "length")}];

    v1 = v2;
  }

  return v1;
}

void sub_1C83F223C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

WFShortcutsWidgetConfigurationIntent *WFCreateShortcutsWidgetConfigurationIntent()
{
  v0 = objc_alloc_init(WFShortcutsWidgetConfigurationIntent);
  [(WFShortcutsWidgetConfigurationIntent *)v0 _setLaunchId:*MEMORY[0x1E69E0FB0]];
  [(WFShortcutsWidgetConfigurationIntent *)v0 _setExtensionBundleId:@"com.apple.WorkflowKit.ShortcutsIntents"];
  v1 = [WFFolder alloc];
  v2 = WFLocalizedAllShortcutsString();
  v3 = [(WFFolder *)v1 initWithIdentifier:0 displayString:v2];
  [(WFShortcutsWidgetConfigurationIntent *)v0 setFolder:v3];

  v4 = [MEMORY[0x1E696E868] systemImageNamed:@"rectangle.grid.2x2"];
  v5 = [(WFShortcutsWidgetConfigurationIntent *)v0 folder];
  [v5 setDisplayImage:v4];

  return v0;
}

WFShortcutsSmallWidgetConfigurationIntent *WFCreateShortcutsSmallWidgetConfigurationIntent()
{
  v48 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(WFShortcutsSmallWidgetConfigurationIntent);
  [(WFShortcutsSmallWidgetConfigurationIntent *)v0 _setLaunchId:*MEMORY[0x1E69E0FB0]];
  [(WFShortcutsSmallWidgetConfigurationIntent *)v0 _setExtensionBundleId:@"com.apple.WorkflowKit.ShortcutsIntents"];
  v1 = [MEMORY[0x1E69E0938] standardClient];
  v36 = 0;
  v37 = 0;
  v2 = [v1 firstUnsortedWorkflowWithBackgroundColorValue:&v37 error:&v36];
  v3 = v37;
  v35 = v36;

  if (!v2)
  {
    v4 = os_log_create("com.apple.shortcuts", "Widget");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v35;
      _os_log_error_impl(&dword_1C830A000, v4, OS_LOG_TYPE_ERROR, "Failed to get first unsorted workflow in WFCreateShortcutsSmallWidgetConfigurationIntent: %@", &buf, 0xCu);
    }
  }

  v5 = [WFShortcut alloc];
  v6 = [v2 identifier];
  v7 = [v2 name];
  v8 = [(WFShortcut *)v5 initWithIdentifier:v6 displayString:v7];

  if ([v2 glyphCharacter])
  {
    if (v3)
    {
      v43 = v3;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    }

    else
    {
      v34 = 0;
    }

    v9 = [MEMORY[0x1E69E0938] standardClient];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v2, "glyphCharacter")}];
    v42 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    v12 = [v9 drawGlyphs:v11 atSize:v34 withBackgroundColorValues:0 error:{30.0, 30.0}];

    if ([v12 count])
    {
      v13 = [v12 firstObject];

      Mutable = CFDataCreateMutable(0, 0);
      v15 = [*MEMORY[0x1E6982F28] identifier];
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v16 = getCGImageDestinationCreateWithDataSymbolLoc_ptr;
      v41 = getCGImageDestinationCreateWithDataSymbolLoc_ptr;
      if (!getCGImageDestinationCreateWithDataSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v45 = __getCGImageDestinationCreateWithDataSymbolLoc_block_invoke;
        v46 = &unk_1E8308088;
        v47 = &v38;
        v17 = ImageIOLibrary();
        v18 = dlsym(v17, "CGImageDestinationCreateWithData");
        *(v47[1] + 24) = v18;
        getCGImageDestinationCreateWithDataSymbolLoc_ptr = *(v47[1] + 24);
        v16 = v39[3];
      }

      _Block_object_dispose(&v38, 8);
      if (v16)
      {
        v19 = v16(Mutable, v15, 1, 0);

        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v20 = getCGImageDestinationAddImageSymbolLoc_ptr;
        v41 = getCGImageDestinationAddImageSymbolLoc_ptr;
        if (!getCGImageDestinationAddImageSymbolLoc_ptr)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v45 = __getCGImageDestinationAddImageSymbolLoc_block_invoke;
          v46 = &unk_1E8308088;
          v47 = &v38;
          v21 = ImageIOLibrary();
          v22 = dlsym(v21, "CGImageDestinationAddImage");
          *(v47[1] + 24) = v22;
          getCGImageDestinationAddImageSymbolLoc_ptr = *(v47[1] + 24);
          v20 = v39[3];
        }

        _Block_object_dispose(&v38, 8);
        if (v20)
        {
          v20(v19, v13, 0);
          v38 = 0;
          v39 = &v38;
          v40 = 0x2020000000;
          v23 = getCGImageDestinationFinalizeSymbolLoc_ptr;
          v41 = getCGImageDestinationFinalizeSymbolLoc_ptr;
          if (!getCGImageDestinationFinalizeSymbolLoc_ptr)
          {
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v45 = __getCGImageDestinationFinalizeSymbolLoc_block_invoke;
            v46 = &unk_1E8308088;
            v47 = &v38;
            v24 = ImageIOLibrary();
            v25 = dlsym(v24, "CGImageDestinationFinalize");
            *(v47[1] + 24) = v25;
            getCGImageDestinationFinalizeSymbolLoc_ptr = *(v47[1] + 24);
            v23 = v39[3];
          }

          _Block_object_dispose(&v38, 8);
          if (v23)
          {
            v23(v19);
            v26 = [MEMORY[0x1E696E868] imageWithImageData:Mutable];
            [v26 _setRenderingMode:1];
            if (v26)
            {
              [(WFShortcut *)v8 setDisplayImage:v26];
            }

            CFRelease(v19);
            CFRelease(Mutable);

            goto LABEL_22;
          }

          v32 = [MEMORY[0x1E696AAA8] currentHandler];
          v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool WFCGImageDestinationFinalize(CGImageDestinationRef _Nonnull)"];
          [v32 handleFailureInFunction:v33 file:@"WFWidgetViewController.m" lineNumber:38 description:{@"%s", dlerror()}];
        }

        else
        {
          v30 = [MEMORY[0x1E696AAA8] currentHandler];
          v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFCGImageDestinationAddImage(CGImageDestinationRef _Nonnull, CGImageRef _Nonnull, CFDictionaryRef _Nullable)"}];
          [v30 handleFailureInFunction:v31 file:@"WFWidgetViewController.m" lineNumber:37 description:{@"%s", dlerror()}];
        }
      }

      else
      {
        v28 = [MEMORY[0x1E696AAA8] currentHandler];
        v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageDestinationRef  _Nullable WFCGImageDestinationCreateWithData(CFMutableDataRef _Nonnull, CFStringRef _Nonnull, size_t, CFDictionaryRef _Nullable)"}];
        [v28 handleFailureInFunction:v29 file:@"WFWidgetViewController.m" lineNumber:36 description:{@"%s", dlerror()}];
      }

      __break(1u);
    }

LABEL_22:
  }

  [(WFShortcutsSmallWidgetConfigurationIntent *)v0 setShortcut:v8];

  return v0;
}

void sub_1C83F2CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCGImageDestinationCreateWithDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageDestinationCreateWithData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageDestinationCreateWithDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ImageIOLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ImageIOLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ImageIOLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8307F88;
    v6 = 0;
    ImageIOLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ImageIOLibraryCore_frameworkLibrary;
  if (!ImageIOLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ImageIOLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFWidgetViewController.m" lineNumber:35 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getCGImageDestinationAddImageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageDestinationAddImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageDestinationAddImageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGImageDestinationFinalizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ImageIOLibrary();
  result = dlsym(v2, "CGImageDestinationFinalize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGImageDestinationFinalizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ImageIOLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ImageIOLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t (*initDOCCreateDefaultHomeScreenWidgetIntent())()
{
  if (DocumentManagerUICoreLibrary_sOnce != -1)
  {
    dispatch_once(&DocumentManagerUICoreLibrary_sOnce, &__block_literal_global_2622);
  }

  v0 = dlsym(DocumentManagerUICoreLibrary_sLib, "DOCCreateDefaultHomeScreenWidgetIntent");
  softLinkDOCCreateDefaultHomeScreenWidgetIntent = v0;
  if (v0)
  {
    v0 = v0();
  }

  return v0;
}

void *__DocumentManagerUICoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/DocumentManagerUICore.framework/DocumentManagerUICore", 2);
  DocumentManagerUICoreLibrary_sLib = result;
  return result;
}

void WFWidgetGetDefaultColors(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v5 = MEMORY[0x1E69635D0];
  v6 = a1;
  v14 = [[v5 alloc] initWithBundleIdentifier:v6 error:0];

  v7 = [v14 containingBundleRecord];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 bundleIdentifier];
      v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      if (v9)
      {
        if (a2 && !*a2)
        {
          v10 = MEMORY[0x1E69DC888];
          v11 = [v8 stringByAppendingString:@"-Background"];
          *a2 = [v10 wf_colorNamed:v11 inBundle:v9];
        }

        if (a3 && !*a3)
        {
          v12 = MEMORY[0x1E69DC888];
          v13 = [v8 stringByAppendingString:@"-Accent"];
          *a3 = [v12 wf_colorNamed:v13 inBundle:v9];
        }
      }
    }
  }
}

void WFWidgetColorsFromBundle(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v5 = [MEMORY[0x1E696AAE8] bundleWithURL:a1];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 infoDictionary];
    v8 = [v7 objectForKey:@"NSWidgetBackgroundColorName"];

    if (a2 && v8)
    {
      *a2 = [MEMORY[0x1E69DC888] wf_colorNamed:v8 inBundle:v6];
    }

    v9 = [v6 infoDictionary];
    v10 = [v9 objectForKey:@"NSAccentColorName"];

    if (a3 && v10)
    {
      *a3 = [MEMORY[0x1E69DC888] wf_colorNamed:v10 inBundle:v6];
    }

    v11 = [v6 bundleIdentifier];
    if ([v11 hasPrefix:@"com.apple"] && (!a2 || !*a2))
    {
      if (a3)
      {
        v12 = *a3;

        if (v12)
        {
LABEL_24:

          goto LABEL_25;
        }

        v13 = [v6 bundleIdentifier];
        v11 = v13;
        v14 = a2;
        v15 = a3;
      }

      else
      {

        v13 = [v6 bundleIdentifier];
        v11 = v13;
        v14 = a2;
        v15 = 0;
      }

      WFWidgetGetDefaultColors(v13, v14, v15);
    }

    goto LABEL_24;
  }

  v16 = getWFWidgetConfigurationLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    v17 = 136315138;
    v18 = "WFWidgetColorsFromBundle";
    _os_log_impl(&dword_1C830A000, v16, OS_LOG_TYPE_FAULT, "%s Unable to open bundle URL passed to WFWidgetColorsFromBundle", &v17, 0xCu);
  }

LABEL_25:
}

void sub_1C83F89A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLNActionClass_block_invoke_3184(uint64_t a1)
{
  LinkServicesLibrary_3186();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNActionClass_softClass_3183 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFFocusConfigurationUIState.m" lineNumber:15 description:{@"Unable to find class %s", "LNAction"}];

    __break(1u);
  }
}

void __getLNDisplayRepresentationClass_block_invoke(uint64_t a1)
{
  LinkServicesLibrary_3186();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LNDisplayRepresentation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLNDisplayRepresentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLNDisplayRepresentationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFFocusConfigurationUIState.m" lineNumber:16 description:{@"Unable to find class %s", "LNDisplayRepresentation"}];

    __break(1u);
  }
}

void LinkServicesLibrary_3186()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!LinkServicesLibraryCore_frameworkLibrary_3192)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __LinkServicesLibraryCore_block_invoke_3193;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E83080A8;
    v5 = 0;
    LinkServicesLibraryCore_frameworkLibrary_3192 = _sl_dlopen();
  }

  if (!LinkServicesLibraryCore_frameworkLibrary_3192)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LinkServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFFocusConfigurationUIState.m" lineNumber:14 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __LinkServicesLibraryCore_block_invoke_3193()
{
  result = _sl_dlopen();
  LinkServicesLibraryCore_frameworkLibrary_3192 = result;
  return result;
}

id getWFSystemActionConfigurationLogObject()
{
  if (getWFSystemActionConfigurationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSystemActionConfigurationLogObject_onceToken, &__block_literal_global_3642);
  }

  v1 = getWFSystemActionConfigurationLogObject_log;

  return v1;
}

uint64_t __getWFSystemActionConfigurationLogObject_block_invoke()
{
  getWFSystemActionConfigurationLogObject_log = os_log_create(*MEMORY[0x1E69E1140], "SystemActionConfiguration");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C83FDDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C83FF77C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

BOOL CGImageHasTransparentPixelAtPoint(CGImage *a1, double a2, double a3)
{
  data = 0;
  v6 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 1uLL, 0, 7u);
  Width = CGImageGetWidth(a1);
  v11.size.height = CGImageGetHeight(a1);
  v11.origin.x = -a2;
  v11.origin.y = -a3;
  v11.size.width = Width;
  CGContextDrawImage(v6, v11, a1);
  CGContextRelease(v6);
  LOBYTE(v8) = data;
  return v8 / 255.0 < 0.01;
}

id WFFocusConfigurationServiceXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4865F80];
  [v0 setClass:objc_opt_class() forSelector:sel_startConfigurationWithRequest_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

id UIImageFromISIcon(void *a1, double a2, double a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69A8A30];
  v6 = a1;
  v7 = [v5 alloc];
  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v8 scale];
  v10 = [v7 initWithSize:a2 scale:{a3, v9}];

  v17[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v6 prepareImagesForImageDescriptors:v11];

  v12 = [v6 imageForImageDescriptor:v10];

  v13 = MEMORY[0x1E69DCAB8];
  v14 = [v12 CGImage];
  [v12 scale];
  v15 = [v13 imageWithCGImage:v14 scale:0 orientation:?];

  return v15;
}

void sub_1C8406990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C8406E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFDarkenColor(void *a1, double a2, double a3)
{
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0;
  v8 = 0.0;
  [a1 getHue:&v10 saturation:&v9 brightness:&v8 alpha:&v7];
  v8 = v8 - a3;
  v9 = v9 - a2;
  v5 = [MEMORY[0x1E69DC888] colorWithHue:v10 saturation:? brightness:? alpha:?];

  return v5;
}

id getWFFocusConfigurationLogObject()
{
  if (getWFFocusConfigurationLogObject_onceToken != -1)
  {
    dispatch_once(&getWFFocusConfigurationLogObject_onceToken, &__block_literal_global_5191);
  }

  v1 = getWFFocusConfigurationLogObject_log;

  return v1;
}

uint64_t __getWFFocusConfigurationLogObject_block_invoke()
{
  getWFFocusConfigurationLogObject_log = os_log_create(*MEMORY[0x1E69E1140], "FocusConfiguration");

  return MEMORY[0x1EEE66BB8]();
}

id WFSystemActionConfigurationHostXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F484AD48];
  [v0 setClass:objc_opt_class() forSelector:sel_didSelectSystemAction_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_didCancelSystemActionConfiguration_ argumentIndex:0 ofReply:0];

  return v0;
}

double WFSlotTemplateSlotCornerRadiusForUseCase(uint64_t a1)
{
  result = 8.60000038;
  if (a1)
  {
    return 12.0;
  }

  return result;
}

double WFSlotTemplateSlotInnerSpacingForUseCase(uint64_t a1)
{
  result = 8.0;
  if (!a1)
  {
    return 6.5;
  }

  return result;
}

id WFWidgetConfigurationServiceXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4866040];
  [v0 setClass:objc_opt_class() forSelector:sel_startConfigurationWithRequest_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}