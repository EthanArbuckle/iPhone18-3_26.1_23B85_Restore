void sub_272D9146C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272D94A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = *(v9 + 64);
    v13 = [*(v10 + 3240) stringWithFormat:@"Caught exception: %@"];
    [v12 log:v13 withType:1];

    objc_end_catch();
    JUMPOUT(0x272D94928);
  }

  _Unwind_Resume(exception_object);
}

id +[WCRBrowserEngineClient _blockPageForURL:forUser:inLanguage:isAllowedWebsitesOnlyBlock:withAllowedWebsites:withAllowButton:](id a1, SEL a2, id a3, id a4, id a5, BOOL a6, id a7, BOOL a8)
{
  v12 = a3;
  v31 = a4;
  v13 = a5;
  v30 = a7;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"en";
  }

  v15 = @"blockpage";
  if (!a8)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-nooverride", @"blockpage"];
  }

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 URLForResource:v15 withExtension:@"html" subdirectory:0 localization:v14];
  v33 = 0;
  v18 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v17 encoding:4 error:&v33];
  v19 = v33;
  if (v18)
  {
    v29 = v12;
    if (objc_opt_respondsToSelector())
    {
      [v12 _lp_simplifiedDisplayString];
    }

    else
    {
      [v12 absoluteString];
    }
    v21 = ;
    v22 = [v18 stringByReplacingOccurrencesOfString:@"USER_VISIBLE_RESTRICTED_URL_NO_LOC" withString:v21];

    v23 = [v22 stringByReplacingOccurrencesOfString:@"UNBLOCK_URL_NO_LOC" withString:@"x-apple-content-filter://unblock"];

    v24 = [v16 URLForResource:@"blockpage_style" withExtension:@"css" subdirectory:0 localization:v14];
    v32 = v19;
    v25 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v24 encoding:4 error:&v32];
    v26 = v32;

    if (v25)
    {
      v27 = [v23 stringByReplacingOccurrencesOfString:@"INCLUDE_CSS_FILE_NO_LOC" withString:v25];

      v23 = v27;
    }

    v20 = v23;

    v19 = v26;
    v18 = v20;
    v12 = v29;
  }

  else
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Block page contents are nil!"];
    [WCRLogging log:v20 withType:1];
  }

  return v18;
}

id __WCRDefaultLog()
{
  if (__WCRDefaultLog_onceToken != -1)
  {
    __WCRDefaultLog_cold_1();
  }

  v1 = __WCRDefaultLog_osLogHandle;

  return v1;
}

double variable initialization expression of BloomFilterShim.filter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id BloomFilterShim.init(path:)(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v35 - v22;
  v37 = v2;
  v24 = v2 + OBJC_IVAR____TtC22WebContentRestrictions15BloomFilterShim_filter;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  (*(v15 + 56))(v13, 1, 1, v14);
  (*(v4 + 104))(v8, *MEMORY[0x277CC91D8], v3);
  URL.init(filePath:directoryHint:relativeTo:)();
  (*(v15 + 16))(v20, v23, v14);
  v25 = objc_allocWithZone(MEMORY[0x277CBEA90]);
  v26 = @nonobjc NSData.init(contentsOf:options:)(v20, 0);
  v27 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v26);
  v29 = v28;
  v30 = type metadata accessor for PropertyListDecoder();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v39[3] = type metadata accessor for BloomFilter();
  v39[4] = lazy protocol witness table accessor for type BloomFilter and conformance BloomFilter(&lazy protocol witness table cache variable for type BloomFilter and conformance BloomFilter);
  lazy protocol witness table accessor for type BloomFilter and conformance BloomFilter(&lazy protocol witness table cache variable for type BloomFilter and conformance BloomFilter);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  (*(v15 + 8))(v23, v14);

  outlined consume of Data._Representation(v27, v29);
  swift_beginAccess();
  outlined assign with take of MembershipFilter?(v39, v24);
  swift_endAccess();
  v33 = type metadata accessor for BloomFilterShim();
  v38.receiver = v37;
  v38.super_class = v33;
  return objc_msgSendSuper2(&v38, sel_init, v35, v36);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(void *a1)
{
  v35[5] = *MEMORY[0x277D85DE8];
  *&v32 = a1;
  type metadata accessor for NSData();
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v33, v35);
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v33[0] = v32;
    __swift_destroy_boxed_opaque_existential_1(v35);
    goto LABEL_40;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  outlined destroy of MembershipFilter?(v33, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  v3 = NSData.startIndex.getter();
  v4 = NSData.endIndex.getter();
  v5 = NSData.startIndex.getter();
  v6 = NSData.endIndex.getter();
  if (v3 < v5 || v6 < v3)
  {
    goto LABEL_43;
  }

  v7 = NSData.startIndex.getter();
  v8 = NSData.endIndex.getter();
  if (v4 < v7 || v8 < v4)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v4, v3))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v33[0] = specialized Data._Representation.init(count:)(v4 - v3);
  *(&v33[0] + 1) = v9;
  MEMORY[0x28223BE20]();
  v12 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v13 = v10;
  v14 = *&v33[0];
  v15 = *(&v33[0] + 1) >> 62;
  if ((*(&v33[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v33[0] + 16);
      v16 = *(*&v33[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v11 != v19)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (!v15)
    {
      if (v11 != BYTE14(v33[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (__OFSUB__(DWORD1(v33[0]), v33[0]))
    {
      goto LABEL_48;
    }

    if (v11 != DWORD1(v33[0]) - LODWORD(v33[0]))
    {
LABEL_18:
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          v20 = *&v33[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v33[0]);
        }

LABEL_37:
        if (v20 >= v11)
        {
          Data._Representation.replaceSubrange(_:with:count:)();
          goto LABEL_39;
        }

        goto LABEL_46;
      }

LABEL_35:
      v20 = *(v14 + 24);
      goto LABEL_37;
    }
  }

LABEL_23:
  memset(v35, 0, 15);
  if (v10 == NSData.endIndex.getter())
  {
    goto LABEL_39;
  }

  v21 = NSData.subscript.getter();
  v22 = NSData.startIndex.getter();
  v23 = NSData.endIndex.getter();
  if (v13 < v22 || v13 >= v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v24) = 0;
  v25 = v13 + 1;
  while (1)
  {
    *(v35 + v24) = v21;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v24 == 14)
    {
      Data._Representation.append(contentsOf:)();
      if (v25 == NSData.endIndex.getter())
      {
        goto LABEL_39;
      }

      LOBYTE(v24) = 0;
      goto LABEL_32;
    }

    if (v25 == NSData.endIndex.getter())
    {
      break;
    }

LABEL_32:
    v21 = NSData.subscript.getter();
    v26 = NSData.startIndex.getter();
    v27 = NSData.endIndex.getter();
    if (v25 >= v26)
    {
      v14 = v25 + 1;
      if (v25++ < v27)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  Data._Representation.append(contentsOf:)();
LABEL_39:

LABEL_40:
  v29 = v33[0];
  outlined copy of Data._Representation(*&v33[0], *(&v33[0] + 1));

  outlined consume of Data._Representation(v29, *(&v29 + 1));
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v39, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v39[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  outlined destroy of MembershipFilter?(v39, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&v39[0] = a1;
    *(&v39[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v39;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    v39[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v39[0] = specialized Data._Representation.init(count:)(v8);
  *(&v39[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v39[0], v9);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&v39[0] + 1) >> 62;
  if ((*(&v39[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&v39[0] + 16);
      v18 = *(*&v39[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(v39[0]), v39[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(v39[0]) - LODWORD(v39[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&v39[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&v39[0] >> 32;
      }

      else
      {
        v22 = BYTE14(v39[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(v39[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data._Representation?(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data._Representation?(v36, v6);
LABEL_63:
  v32 = v39[0];
  outlined copy of Data._Representation(*&v39[0], *(&v39[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

Swift::Bool __swiftcall BloomFilterShim.contains(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC22WebContentRestrictions15BloomFilterShim_filter;
  swift_beginAccess();
  result = outlined init with copy of MembershipFilter?(v1 + v4, v11);
  if (v12)
  {
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);

    v7 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(countAndFlagsBits, object);
    v9 = v8;
    v10 = (*(v6 + 56))();
    outlined consume of Data._Representation(v7, v9);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v10 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id BloomFilterShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BloomFilterShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloomFilterShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id @nonobjc NSData.init(contentsOf:options:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v18);
  v7 = v6;
  v17 = 0;
  v8 = [v3 initWithContentsOfURL:v6 options:a2 error:&v17];

  v9 = v17;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t lazy protocol witness table accessor for type BloomFilter and conformance BloomFilter(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BloomFilter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BloomFilter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x2743D8FE0);
  }

  return result;
}

uint64_t outlined assign with take of MembershipFilter?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22WebContentRestrictions16MembershipFilter_pSgMd, &_s22WebContentRestrictions16MembershipFilter_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of MembershipFilter?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22WebContentRestrictions16MembershipFilter_pSgMd, &_s22WebContentRestrictions16MembershipFilter_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined destroy of MembershipFilter?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(a1, &a1[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_272D9DE10;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_272D9DE10;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_272D9DE10;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_272D9DE10;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySo6NSDataCG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x2743D8560]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x2743D8560]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

id specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = specialized closure #1 in closure #3 in Data.init<A>(_:)(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    return result;
  }

  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
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
    v5 = MEMORY[0x2743D8700](15, a1 >> 16);
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

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySo6NSDataCG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data._Representation?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t specialized Data.InlineData.init(_:)(_BYTE *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = specialized Data.InlineData.init(count:)(v5);
  __dst = result;
  v12 = v7;
  v14 = v8;
  v13 = v9;
  if (a1 && a2 != a1)
  {
    memcpy(&__dst, a1, v4);
    result = __dst;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for NSData()
{
  result = lazy cache variable for type metadata for NSData;
  if (!lazy cache variable for type metadata for NSData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSData);
  }

  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = NSData.startIndex.getter();
  v7 = result;
  if (!a1 || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (result != NSData.endIndex.getter())
    {
      v8 = 0;
      while (1)
      {
        v9 = v8;
        v10 = v7 + v8;
        v11 = NSData.subscript.getter();
        v12 = NSData.startIndex.getter();
        result = NSData.endIndex.getter();
        if (v10 < v12 || v10 >= result)
        {
          break;
        }

        *(a1 + v9) = v11;
        if (a2 - 1 != v9)
        {
          v13 = NSData.endIndex.getter();
          v8 = v9 + 1;
          if (v7 + v9 + 1 != v13)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
      goto LABEL_12;
    }

    return a3;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata completion function for CFMutableBitVectorRef(uint64_t a1)
{
  type metadata accessor for CFBitVectorRef(255);
  *(a1 + 16) = v2;
  return 0;
}

void type metadata accessor for CFMutableBitVectorRef(uint64_t a1, unint64_t *a2)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BloomFilterError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2743D88E0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BloomFilterError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2743D88E0](v1);
  return Hasher._finalize()();
}

uint64_t static BloomFilter.predictedNumberOfBits(expectedNumberOfItems:falsePositiveTolerance:)(uint64_t a1, long double a2)
{
  v3 = v2;
  type metadata accessor for BloomFilter();
  swift_allocObject();
  BloomFilter.init(expectedNumberOfItems:falsePositiveTolerance:allocate:)(a1, 0, a2);
  if (!v2)
  {
    v3 = *(v6 + 32);
  }

  return v3;
}

void BloomFilter.__allocating_init(expectedNumberOfItems:falsePositiveTolerance:)(uint64_t a1, long double a2)
{
  type metadata accessor for BloomFilter();
  swift_allocObject();
  BloomFilter.init(expectedNumberOfItems:falsePositiveTolerance:allocate:)(a1, 1, a2);
}

void BloomFilter.init(expectedNumberOfItems:falsePositiveTolerance:allocate:)(uint64_t a1, char a2, long double a3)
{
  if (a1 < 1)
  {
    v5 = 0;
    goto LABEL_20;
  }

  if (a3 <= 0.0 || a3 >= 1.0)
  {
    v5 = 1;
LABEL_20:
    lazy protocol witness table accessor for type BloomFilterError and conformance BloomFilterError();
    swift_allocError();
    *v13 = v5;
    swift_willThrow();
    type metadata accessor for BloomFilter();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v7 = a1;
  v8 = ceil(log(a3) * a1 / -0.480453014);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v3 + 32) = v8;
  v9 = ceil(v8 / v7 * 0.693147181);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v9 < 9.22337204e18)
  {
    *(v3 + 40) = v9;
    *(v3 + 48) = arc4random();
    if (a2)
    {
      v10 = *(v3 + 32);
    }

    else
    {
      v10 = 1;
    }

    Mutable = CFBitVectorCreateMutable(*MEMORY[0x277CBECE8], v10);
    if (Mutable)
    {
      v12 = Mutable;
      CFBitVectorSetCount(Mutable, v10);
      *(v3 + 56) = v12;
      *(v3 + 64) = 1;
      return;
    }

    v5 = 2;
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
}

double BloomFilter.falsePositiveProbability.getter()
{
  v1 = v0[5];
  v2 = 1.0 - pow(2.71828183, -(v1 * v0[2]) / v0[4]);

  return pow(v2, v1);
}

void BloomFilter.estimatedCount.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v7.location = 0;
  v7.length = v1;
  CountOfBit = CFBitVectorGetCountOfBit(v4, v7, 1u);

  v6 = ceil(-v2 / v3 * log(1.0 - CountOfBit / v2));
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t BloomFilter.description.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_272D9DE00;
  v4 = v1[4];
  v3 = v1[5];
  v5 = pow(2.71828183, -(v3 * v1[2]) / v4);
  v6 = pow(1.0 - v5, v3);
  v7 = MEMORY[0x277D839F8];
  v8 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v8;
  *(v2 + 32) = v6;
  v9 = String.init(format:_:)();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_272D9DE00;
  v13 = v1[3];
  *(v12 + 56) = v7;
  *(v12 + 64) = v8;
  *(v12 + 32) = v13;
  v22 = String.init(format:_:)();
  v15 = v14;
  _StringGuts.grow(_:)(70);
  MEMORY[0x2743D86D0](0x3D736D657469, 0xE600000000000000);
  BloomFilter.estimatedCount.getter();
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743D86D0](v16);

  MEMORY[0x2743D86D0](47, 0xE100000000000000);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743D86D0](v17);

  MEMORY[0x2743D86D0](0x3D657A6973202CLL, 0xE700000000000000);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743D86D0](v18);

  result = MEMORY[0x2743D86D0](0x28207374696220, 0xE700000000000000);
  if (__OFADD__(v4, 7))
  {
    __break(1u);
  }

  else
  {
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743D86D0](v20);

    MEMORY[0x2743D86D0](0xD000000000000010, 0x8000000272D9F480);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743D86D0](v21);

    MEMORY[0x2743D86D0](0xD000000000000012, 0x8000000272D9F4A0);
    MEMORY[0x2743D86D0](v9, v11);

    MEMORY[0x2743D86D0](47, 0xE100000000000000);
    MEMORY[0x2743D86D0](v22, v15);

    return 0;
  }

  return result;
}

uint64_t BloomFilter.insert(_:)(uint64_t result, unint64_t a2)
{
  if (*(v2 + 64) == 1)
  {
    v4 = result;
    v5 = *(v2 + 56);
    v6 = BloomFilter.indexes(for:)(v4, a2);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = (v6 + 32);
      do
      {
        v9 = *v8++;
        CFBitVectorSetBitAtIndex(v5, v9, 1u);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t BloomFilter.contains(_:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 56);
  result = BloomFilter.indexes(for:)(a1, a2);
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  while (1)
  {
    v10 = v8;
    if (v9 == v8)
    {
LABEL_5:

      return v9 == v10;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    ++v8;
    result = CFBitVectorGetBitAtIndex(v5, *(v7 + 8 * v10 + 32));
    if (!result)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t BloomFilter.indexes(for:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Data.Iterator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62 == 2)
  {
    v12 = *(a1 + 16);
  }

  v13 = -2128831035;
  outlined copy of Data._Representation(a1, a2);
  Data.Iterator.init(_:at:)();
  for (i = Data.Iterator.next()(); (*&i & 0x100) == 0; i = Data.Iterator.next()())
  {
    v13 = 16777619 * (v13 ^ i.value);
  }

  (*(v7 + 8))(v11, v6);
  result = specialized static MurmurHash3.hash(_:seed:)(a1, a2, *(v3 + 48));
  v16 = *(v3 + 32);
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = *(v3 + 40);
  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v17))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v17)
  {
    if (!v16)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18 = result;
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = result;
    while (v17)
    {
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      if (v21 >= v20 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 16) = v21 + 1;
      *(v19 + 8 * v21 + 32) = v13 % v16;
      v13 += v18;
      LODWORD(v17) = v17 - 1;
      if (!v17)
      {
        return v19;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x664F7265626D756ELL;
  v3 = a1;
  if (a1 > 2u)
  {
    v8 = 0x655372756D72756DLL;
    v9 = 0xEA00000000006465;
    if (a1 != 4)
    {
      v8 = 0x6F74636556746962;
      v9 = 0xED00006174614472;
    }

    if (a1 == 3)
    {
      v6 = 0x664F7265626D756ELL;
    }

    else
    {
      v6 = v8;
    }

    if (v3 == 3)
    {
      v7 = 0xEE00736568736148;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    v4 = 0x8000000272D9F370;
    if (a1 == 1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x664F7265626D756ELL;
    }

    if (a1 != 1)
    {
      v4 = 0xEC00000073746942;
    }

    if (a1)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (v3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0x8000000272D9F350;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xEE00736568736148;
      if (v6 != 0x664F7265626D756ELL)
      {
        goto LABEL_39;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0xEA00000000006465;
      if (v6 != 0x655372756D72756DLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v10 = 0xED00006174614472;
      if (v6 != 0x6F74636556746962)
      {
LABEL_39:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000016;
      v10 = 0x8000000272D9F370;
    }

    else
    {
      v10 = 0xEC00000073746942;
    }

    if (v6 != v2)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v10 = 0x8000000272D9F350;
    if (v6 != 0xD000000000000015)
    {
      goto LABEL_39;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_39;
  }

  v11 = 1;
LABEL_40:

  return v11 & 1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance BloomFilter.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BloomFilter.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized BloomFilter.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance BloomFilter.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x664F7265626D756ELL;
  v3 = *v1;
  v4 = 0xEC00000073746942;
  v5 = 0xEE00736568736148;
  v6 = 0xEA00000000006465;
  v7 = 0x655372756D72756DLL;
  if (v3 != 4)
  {
    v7 = 0x6F74636556746962;
    v6 = 0xED00006174614472;
  }

  if (v3 == 3)
  {
    v7 = 0x664F7265626D756ELL;
  }

  else
  {
    v5 = v6;
  }

  if (v3 == 1)
  {
    v2 = 0xD000000000000016;
    v4 = 0x8000000272D9F370;
  }

  if (!*v1)
  {
    v2 = 0xD000000000000015;
    v4 = 0x8000000272D9F350;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v2 = v7;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance BloomFilter.CodingKeys()
{
  v1 = 0x664F7265626D756ELL;
  v2 = *v0;
  v3 = 0x655372756D72756DLL;
  if (v2 != 4)
  {
    v3 = 0x6F74636556746962;
  }

  if (v2 == 3)
  {
    v3 = 0x664F7265626D756ELL;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance BloomFilter.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized BloomFilter.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BloomFilter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BloomFilter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BloomFilter.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  BloomFilter.init(from:)(a1);
  return v2;
}

uint64_t BloomFilter.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v52 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy22WebContentRestrictions11BloomFilterC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy22WebContentRestrictions11BloomFilterC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v45 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_4;
  }

  LOBYTE(bytes) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  if (v12 < 1)
  {
    goto LABEL_11;
  }

  *(v1 + 16) = v12;
  LOBYTE(bytes) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15 > 0.0 && v15 < 1.0;
  if (!v16 || (*(v1 + 24) = v15, LOBYTE(bytes) = 2, v18 = KeyedDecodingContainer.decode(_:forKey:)(), v18 < 1) || (*(v1 + 32) = v18, LOBYTE(bytes) = 3, v19 = KeyedDecodingContainer.decode(_:forKey:)(), v19 < 1))
  {
LABEL_11:
    lazy protocol witness table accessor for type BloomFilterError and conformance BloomFilterError();
    swift_allocError();
    *v17 = 3;
    swift_willThrow();
LABEL_3:
    (*(v6 + 8))(v10, v5);
LABEL_4:
    type metadata accessor for BloomFilter();
    swift_deallocPartialClassInstance();
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(a1);
    v13 = *MEMORY[0x277D85DE8];
    return v3;
  }

  *(v1 + 40) = v19;
  LOBYTE(bytes) = 4;
  *(v1 + 48) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v49) = 5;
  lazy protocol witness table accessor for type Data and conformance Data();
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  v48 = bytes;
  v20 = *(&bytes + 1) >> 62;
  v47 = 0;
  if ((*(&bytes + 1) >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE14(v48);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v20 != 2)
  {
    v21 = 0;
    goto LABEL_24;
  }

  v23 = *(v48 + 16);
  v22 = *(v48 + 24);
  v24 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (v24)
  {
    __break(1u);
LABEL_21:
    LODWORD(v21) = DWORD1(v48) - v48;
    if (__OFSUB__(DWORD1(v48), v48))
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v21 = v21;
  }

LABEL_24:
  v25 = *(v1 + 32);
  v26 = v25 + 7;
  if (__OFADD__(v25, 7))
  {
    __break(1u);
    goto LABEL_64;
  }

  if (v26 < 0)
  {
    v26 = v25 + 14;
  }

  v27 = v26 >> 3;
  if (v21 == v26 >> 3)
  {
    v46 = *(v1 + 32);
    if (v20 <= 1)
    {
      if (!v20)
      {
        *&bytes = v48;
        DWORD2(bytes) = DWORD2(v48);
        WORD6(bytes) = WORD6(v48);
LABEL_54:
        v43 = v47;
        closure #1 in BloomFilter.init(from:)(&bytes, v46, &v49);
        if (v43)
        {
          goto LABEL_55;
        }

        v39 = v49;
        v40 = v50;
        goto LABEL_57;
      }

      v37 = v48;
      if (v48 >> 32 >= v48)
      {
        v34 = __DataStorage._bytes.getter();
        if (!v34)
        {
LABEL_47:
          MEMORY[0x2743D8560]();
          v38 = v47;
          closure #1 in BloomFilter.init(from:)(v34, v46, &bytes);
          if (v38)
          {
LABEL_55:
            outlined consume of Data._Representation(v48, *(&v48 + 1));
            goto LABEL_3;
          }

          v39 = bytes;
          v40 = BYTE8(bytes);
LABEL_57:
          (*(v6 + 8))(v10, v5);
          outlined consume of Data._Representation(v48, *(&v48 + 1));
          *(v3 + 56) = v39;
          *(v3 + 64) = v40;
          goto LABEL_5;
        }

        result = __DataStorage._offset.getter();
        if (!__OFSUB__(v37, result))
        {
          v34 += v37 - result;
          goto LABEL_47;
        }

        goto LABEL_67;
      }

      goto LABEL_65;
    }

    if (v20 == 2)
    {
      v32 = *(v48 + 16);
      v33 = *(v48 + 24);
      v29 = (*(&v48 + 1) & 0x3FFFFFFFFFFFFFFFLL);
      v34 = __DataStorage._bytes.getter();
      if (v34)
      {
        v29 = (*(&v48 + 1) & 0x3FFFFFFFFFFFFFFFLL);
        result = __DataStorage._offset.getter();
        if (__OFSUB__(v32, result))
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v34 += v32 - result;
      }

      if (!__OFSUB__(v33, v32))
      {
        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_53:
    *(&bytes + 6) = 0;
    *&bytes = 0;
    goto LABEL_54;
  }

  v28 = static os_log_type_t.error.getter();
  type metadata accessor for OS_os_log();
  outlined copy of Data._Representation(v48, *(&v48 + 1));
  v29 = static OS_os_log.default.getter();
  LODWORD(v47) = v28;
  if (!os_log_type_enabled(v29, v28))
  {
LABEL_42:
    v35 = *(&v48 + 1);
    v36 = v48;
    outlined consume of Data._Representation(v48, *(&v48 + 1));
LABEL_62:

    lazy protocol witness table accessor for type BloomFilterError and conformance BloomFilterError();
    swift_allocError();
    *v44 = 3;
    swift_willThrow();
    outlined consume of Data._Representation(v36, v35);
    goto LABEL_3;
  }

  result = swift_slowAlloc();
  v30 = result;
  *result = 134218240;
  *(result + 4) = v27;
  *(result + 12) = 2048;
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v42 = *(v48 + 16);
      v41 = *(v48 + 24);
      v24 = __OFSUB__(v41, v42);
      v31 = v41 - v42;
      if (v24)
      {
        __break(1u);
        goto LABEL_53;
      }
    }

    else
    {
      v31 = 0;
    }

LABEL_61:
    *(result + 14) = v31;
    v35 = *(&v48 + 1);
    v36 = v48;
    outlined consume of Data._Representation(v48, *(&v48 + 1));
    _os_log_impl(&dword_272D8F000, v29, v47, "Invalid serialized bit vector:  expected %ld bytes, found %ld", v30, 0x16u);
    MEMORY[0x2743D8FE0](v30, -1, -1);
    goto LABEL_62;
  }

  if (!v20)
  {
    v31 = BYTE14(v48);
    goto LABEL_61;
  }

  LODWORD(v31) = DWORD1(v48) - v48;
  if (!__OFSUB__(DWORD1(v48), v48))
  {
    v31 = v31;
    goto LABEL_61;
  }

LABEL_68:
  __break(1u);
  return result;
}

CFBitVectorRef closure #1 in BloomFilter.init(from:)@<X0>(UInt8 *bytes@<X0>, CFIndex a2@<X2>, uint64_t a3@<X8>)
{
  result = CFBitVectorCreate(*MEMORY[0x277CBECE8], bytes, a2);
  if (result)
  {
    *a3 = result;
    *(a3 + 8) = 0;
  }

  else
  {
    v6 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v7 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a2;
      _os_log_impl(&dword_272D8F000, v7, v6, "Invalid serialized bit vector:  too many bits? %ld", v8, 0xCu);
      MEMORY[0x2743D8FE0](v8, -1, -1);
    }

    lazy protocol witness table accessor for type BloomFilterError and conformance BloomFilterError();
    swift_allocError();
    *v9 = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t BloomFilter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy22WebContentRestrictions11BloomFilterC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy22WebContentRestrictions11BloomFilterC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 16);
  LOBYTE(v28) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v13 = *(v3 + 24);
  LOBYTE(v28) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = *(v3 + 32);
  LOBYTE(v28) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = *(v3 + 40);
  LOBYTE(v28) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = *(v3 + 48);
  LOBYTE(v28) = 4;
  result = KeyedEncodingContainer.encode(_:forKey:)();
  v18 = v14 + 7;
  if (__OFADD__(v14, 7))
  {
    __break(1u);
  }

  else
  {
    if (v18 < 0)
    {
      v18 = v14 + 14;
    }

    v19 = v18 >> 3;
    v20 = *(v3 + 56);
    v28 = specialized Data.init(count:)(v19);
    v29 = v21;
    v22 = v20;

    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v28, v22, v3);
    v23 = v28;
    v24 = v29;
    v26 = v28;
    v27 = v29;
    v25[15] = 5;
    outlined copy of Data._Representation(v28, v29);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    outlined consume of Data._Representation(v26, v27);
    outlined consume of Data._Representation(v23, v24);
    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t BloomFilter.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 65, 7);
}

uint64_t protocol witness for static MembershipFilter.predictedNumberOfBits(expectedNumberOfItems:falsePositiveTolerance:) in conformance BloomFilter(uint64_t a1, long double a2)
{
  v3 = v2;
  type metadata accessor for BloomFilter();
  swift_allocObject();
  BloomFilter.init(expectedNumberOfItems:falsePositiveTolerance:allocate:)(a1, 0, a2);
  if (!v2)
  {
    v3 = *(v6 + 32);
  }

  return v3;
}

void protocol witness for MembershipFilter.init(expectedNumberOfItems:falsePositiveTolerance:) in conformance BloomFilter(uint64_t a1@<X0>, void *a2@<X8>, long double a3@<D0>)
{
  type metadata accessor for BloomFilter();
  swift_allocObject();
  BloomFilter.init(expectedNumberOfItems:falsePositiveTolerance:allocate:)(a1, 1, a3);
  if (!v3)
  {
    *a2 = v7;
  }
}

uint64_t protocol witness for Decodable.init(from:) in conformance BloomFilter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for BloomFilter();
  v5 = swift_allocObject();
  result = BloomFilter.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomFilter.CodingKeys and conformance BloomFilter.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BloomFilterError and conformance BloomFilterError()
{
  result = lazy protocol witness table cache variable for type BloomFilterError and conformance BloomFilterError;
  if (!lazy protocol witness table cache variable for type BloomFilterError and conformance BloomFilterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomFilterError and conformance BloomFilterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloomFilterError and conformance BloomFilterError;
  if (!lazy protocol witness table cache variable for type BloomFilterError and conformance BloomFilterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloomFilterError and conformance BloomFilterError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, CFBitVectorRef bv, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {
      v19 = bv;

      outlined copy of Data._Representation(v6, v5);
      outlined consume of Data._Representation(v6, v5);
      *&bytes = v6;
      *(&bytes + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_272D9DE10;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&bytes, v19, a3);

      v20 = *(&bytes + 1) | 0x4000000000000000;
      *a1 = bytes;
      a1[1] = v20;
    }

    else
    {
      v8 = bv;

      outlined consume of Data._Representation(v6, v5);
      *&bytes = v6;
      WORD4(bytes) = v5;
      BYTE10(bytes) = BYTE2(v5);
      BYTE11(bytes) = BYTE3(v5);
      BYTE12(bytes) = BYTE4(v5);
      BYTE13(bytes) = BYTE5(v5);
      BYTE14(bytes) = BYTE6(v5);
      v26.length = *(a3 + 32);
      v26.location = 0;
      CFBitVectorGetBits(v8, v26, &bytes);
      v9 = bytes;
      v10 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);

      *a1 = v9;
      a1[1] = v10;
    }

    goto LABEL_11;
  }

  if (v7 != 2)
  {
    *(&bytes + 7) = 0;
    *&bytes = 0;
    v28.length = *(a3 + 32);
    v28.location = 0;
    CFBitVectorGetBits(bv, v28, &bytes);

    goto LABEL_11;
  }

  v11 = bv;

  outlined consume of Data._Representation(v6, v5);
  *&bytes = v6;
  *(&bytes + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_272D9DE10;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v12 = *(&bytes + 1);
  v13 = *(bytes + 16);
  v14 = *(bytes + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v16 = v15;
    v17 = __DataStorage._offset.getter();
    v18 = v13 - v17;
    if (__OFSUB__(v13, v17))
    {
      __break(1u);
    }

    else if (!__OFSUB__(v14, v13))
    {
      MEMORY[0x2743D8560]();
      v27.length = *(a3 + 32);
      v27.location = 0;
      CFBitVectorGetBits(v11, v27, (v16 + v18));

      *a1 = bytes;
      a1[1] = v12 | 0x8000000000000000;
LABEL_11:

      v23 = *MEMORY[0x277D85DE8];
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, const __CFBitVector *a2, uint64_t a3)
{
  Data.InlineSlice.ensureUniqueReference()();
  v6 = *a1;
  if (a1[1] < v6)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(a1 + 1);

  v8 = __DataStorage._bytes.getter();
  if (v8)
  {
    v9 = v8;
    v10 = __DataStorage._offset.getter();
    v11 = __OFSUB__(v6, v10);
    v12 = v6 - v10;
    if (!v11)
    {
      MEMORY[0x2743D8560]();
      v13.length = *(a3 + 32);
      v13.location = 0;
      CFBitVectorGetBits(a2, v13, (v9 + v12));

      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

unint64_t specialized BloomFilter.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BloomFilter.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for BloomFilter(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type BloomFilter and conformance BloomFilter(&lazy protocol witness table cache variable for type BloomFilter and conformance BloomFilter);
  a1[2] = lazy protocol witness table accessor for type BloomFilter and conformance BloomFilter(&lazy protocol witness table cache variable for type BloomFilter and conformance BloomFilter);
  result = lazy protocol witness table accessor for type BloomFilter and conformance BloomFilter(&lazy protocol witness table cache variable for type BloomFilter and conformance BloomFilter);
  a1[3] = result;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BloomFilter.BitVector(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for BloomFilter.BitVector(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BloomFilterError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BloomFilterError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BloomFilter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BloomFilter.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized static MurmurHash3.digest32BitX86(_:_:)(int *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    LODWORD(v3) = 0;
LABEL_22:
    v13 = -2048144789 * (a3 ^ v3 ^ ((a3 ^ v3) >> 16));
    return (-1028477387 * (v13 ^ (v13 >> 13))) ^ ((-1028477387 * (v13 ^ (v13 >> 13))) >> 16);
  }

  v3 = a2 - a1;
  if (a2 - a1 >= 0)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = a2 - a1 + 3;
  }

  if (v3 < -3)
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((a2 - a1 + 3) >= 7)
  {
    v5 = a1;
    v6 = v4 >> 2;
    do
    {
      v7 = *v5++;
      HIDWORD(v8) = (461845907 * ((380141568 * v7) | ((-862048943 * v7) >> 17))) ^ a3;
      LODWORD(v8) = HIDWORD(v8);
      a3 = 5 * (v8 >> 19) - 430675100;
      --v6;
    }

    while (v6);
  }

  v9 = v4 >> 2;
  v10 = v3 - v9 * 4;
  if (v3 - v9 * 4 > 1)
  {
    if (v10 == 3)
    {
      v12 = BYTE2(a1[v9]) << 16;
    }

    else
    {
      if (v10 != 2)
      {
        goto LABEL_26;
      }

      v12 = 0;
    }

    v11 = v12 | (BYTE1(a1[v9]) << 8);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  if (v10 == 1)
  {
    v11 = 0;
LABEL_19:
    a3 ^= 461845907 * ((380141568 * (v11 ^ LOBYTE(a1[v9]))) | ((-862048943 * (v11 ^ LOBYTE(a1[v9]))) >> 17));
LABEL_20:
    if ((v3 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v3))
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

LABEL_26:
  _StringGuts.grow(_:)(43);

  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743D86D0](v15);

  MEMORY[0x2743D86D0](0xD000000000000015, 0x8000000272D9F590);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743D86D0](v16);

  MEMORY[0x2743D86D0](46, 0xE100000000000000);
  MEMORY[0x2743D86D0](0xD000000000000011, 0x8000000272D9F570);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static MurmurHash3.hash(_:seed:)(uint64_t a1, unint64_t a2, int a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v20, 0, 14);
      v4 = v20;
      goto LABEL_25;
    }

    v5 = a3;
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v8 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v6, a1))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v8 = (v8 + v6 - a1);
    }

    v9 = __OFSUB__(v7, v6);
    v10 = v7 - v6;
    if (!v9)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v20[0] = a1;
    LOWORD(v20[1]) = a2;
    BYTE2(v20[1]) = BYTE2(a2);
    BYTE3(v20[1]) = BYTE3(a2);
    BYTE4(v20[1]) = BYTE4(a2);
    BYTE5(v20[1]) = BYTE5(a2);
    v4 = v20 + BYTE6(a2);
LABEL_25:
    result = specialized static MurmurHash3.digest32BitX86(_:_:)(v20, v4, a3);
    v19 = *MEMORY[0x277D85DE8];
    return result;
  }

  v11 = a1;
  v10 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v5 = a3;
  v8 = __DataStorage._bytes.getter();
  if (v8)
  {
    v12 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v12))
    {
      v8 = (v8 + v11 - v12);
      goto LABEL_15;
    }

LABEL_28:
    __break(1u);
  }

LABEL_15:
  v13 = MEMORY[0x2743D8560]();
  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  v15 = v8 + v14;
  if (v8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return specialized static MurmurHash3.digest32BitX86(_:_:)(v8, v16, v5);
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FDA08]();
}

{
  return MEMORY[0x2821FDA18]();
}

{
  return MEMORY[0x2821FDA60]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB58]();
}

{
  return MEMORY[0x2821FDBA0]();
}