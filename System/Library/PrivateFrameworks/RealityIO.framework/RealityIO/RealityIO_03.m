void *specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v1;
  v3 = inited + 32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v5 = v4;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(v3);
  v6 = MEMORY[0x277D84FA0];
  v7 = MEMORY[0x277D84FA0];
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO18PropertyDirtyStateC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v7 = MEMORY[0x277D84FA0];
    }
  }

  type metadata accessor for TypeNamePrimDirtyState();
  v8 = swift_allocObject();
  v8[5] = v5;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v9);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v7);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(v6);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v13;
  return v8;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss11_SetStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = v3 + 56;
    v21 = a1 + 32;
    lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
    v5 = 0;
    while (1)
    {
      v23 = *(v21 + 8 * v5);
      v6 = *(v3 + 40);
      v7 = v23;
      v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v4 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) != 0)
      {
        v14 = v1;
        v15 = ~v9;
        lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
        do
        {
          v22 = *(*(v3 + 48) + 8 * v10);
          v16 = v22;
          v17 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v17)
          {

            v1 = v14;
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v15;
          v11 = v10 >> 6;
          v12 = *(v4 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while (((1 << v10) & v12) != 0);
        v1 = v14;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v23;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      *(v3 + 16) = v20;
LABEL_4:
      if (++v5 == v1)
      {
        return;
      }
    }

    __break(1u);
  }
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16OutputDescriptorO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO16OutputDescriptorOGMd, &_ss11_SetStorageCy9RealityIO16OutputDescriptorOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v34 = v3 + 56;
    v30 = v1;
    v31 = a1 + 32;
    v29 = v3;
    while (1)
    {
      v32 = v4;
      v5 = (v31 + 40 * v4);
      v7 = *v5;
      v6 = v5[1];
      v9 = v5[2];
      v8 = v5[3];
      v10 = *(v5 + 32);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x26670FA20](0);

      String.hash(into:)();
      String.hash(into:)();
      v33 = v10;
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v34 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        do
        {
          v19 = v18 + 40 * v14;
          result = *v19;
          v20 = *(v19 + 16);
          v21 = *(v19 + 24);
          v22 = *(v19 + 32);
          v23 = *v19 == v7 && *(v19 + 8) == v6;
          if (v23 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
            if (v20 == v9 && v21 == v8)
            {
              if (v33 == v22)
              {
                goto LABEL_3;
              }
            }

            else
            {
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((result & 1) != 0 && ((v33 ^ v22) & 1) == 0)
              {
LABEL_3:

                v3 = v29;
                v1 = v30;
                goto LABEL_4;
              }
            }
          }

          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v34 + 8 * (v14 >> 6));
          v17 = 1 << v14;
        }

        while ((v16 & (1 << v14)) != 0);
        v3 = v29;
        v1 = v30;
        v18 = *(v29 + 48);
      }

      *(v34 + 8 * v15) = v16 | v17;
      v25 = v18 + 40 * v14;
      *v25 = v7;
      *(v25 + 8) = v6;
      *(v25 + 16) = v9;
      *(v25 + 24) = v8;
      *(v25 + 32) = v33;
      v26 = *(v3 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v3 + 16) = v28;
LABEL_4:
      v4 = v32 + 1;
      if (v32 + 1 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO15InputDescriptorO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO15InputDescriptorOGMd, &_ss11_SetStorageCy9RealityIO15InputDescriptorOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v35 = v1;
    v36 = a1 + 32;
    while (1)
    {
      v6 = v36 + 56 * v4;
      v7 = *(v6 + 48);
      v9 = *(v6 + 32);
      v8 = *(v6 + 40);
      v10 = *(v6 + 16);
      v12 = *(v6 + 8);
      v11 = *v6;
      v13 = *(v6 + 24);
      v14 = *(v6 + 16);
      v51 = __PAIR128__(v12, v11);
      v52 = v10;
      v53 = v9;
      v54 = v8;
      v55 = v7;
      v15 = *(v3 + 40);
      v37 = __PAIR128__(v12, v11);
      v38 = v10;
      v46 = __PAIR128__(v12, v11);
      v47 = v10;
      v48 = v9;
      v49 = v8;
      v50 = v7;
      Hasher.init(_seed:)();
      outlined copy of InputDescriptor(v11, v12, v14, v13, v9, v8, v7);
      InputDescriptor.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v3 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v5 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        do
        {
          v22 = *(v3 + 48) + 56 * v18;
          v23 = *(v22 + 8);
          v24 = *(v22 + 16);
          v25 = *(v22 + 24);
          v26 = *(v22 + 32);
          v27 = *(v22 + 40);
          v39 = *v22;
          v40 = v23;
          v41 = v24;
          v42 = v25;
          v43 = v26;
          v44 = v27;
          v45 = *(v22 + 48);
          outlined copy of InputDescriptor(v39, v23, v24, v25, v26, v27, v45);
          v28 = specialized static InputDescriptor.== infix(_:_:)(&v39, &v51);
          outlined consume of InputDescriptor(v39, v40, v41, v42, v43, v44, v45);
          if (v28)
          {
            outlined consume of InputDescriptor(v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54, v55);
            goto LABEL_4;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v5 + 8 * (v18 >> 6));
          v21 = 1 << v18;
        }

        while (((1 << v18) & v20) != 0);
        v30 = v51;
        v29 = v52;
        v9 = v53;
        v8 = v54;
        v7 = v55;
      }

      else
      {
        v30 = v37;
        v29 = v38;
      }

      *(v5 + 8 * v19) = v21 | v20;
      v31 = *(v3 + 48) + 56 * v18;
      *v31 = v30;
      *(v31 + 16) = v29;
      *(v31 + 32) = v9;
      *(v31 + 40) = v8;
      *(v31 + 48) = v7;
      v32 = *(v3 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      *(v3 + 16) = v34;
LABEL_4:
      if (++v4 == v35)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO14PrimDirtyStateC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO14PrimDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO14PrimDirtyStateCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = __CocoaSet.count.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1;
  v23 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v5;
  while (v23)
  {
    result = MEMORY[0x26670F670](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_24;
    }

LABEL_17:
    v10 = *(v3 + 40);
    Hasher.init(_seed:)();
    (*(*v8 + 128))(v24);
    result = Hasher._finalize()();
    v11 = ~(-1 << *(v3 + 32));
    v12 = result & v11;
    v13 = (result & v11) >> 6;
    v14 = *(v7 + 8 * v13);
    v15 = 1 << (result & v11);
    if ((v15 & v14) != 0)
    {
      while (1)
      {
        v16 = *(**(*(v3 + 48) + 8 * v12) + 136);

        LOBYTE(v16) = v16(v8);

        if (v16)
        {
          break;
        }

        v12 = (v12 + 1) & v11;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          v5 = v21;
          v1 = v22;
          goto LABEL_21;
        }
      }

      v5 = v21;
      v1 = v22;
      if (v6 == v21)
      {
        return v3;
      }
    }

    else
    {
LABEL_21:
      *(v7 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v8;
      v17 = *(v3 + 16);
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_25;
      }

      *(v3 + 16) = v18;
      if (v6 == v5)
      {
        return v3;
      }
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_26;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *specialized TypeNamePrimDirtyState.__allocating_init(core:)(uint64_t a1)
{
  v2 = RIOBuilderTypeNameDirtyPrimDescriptorCopyTypeNames();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v5 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }

LABEL_12:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_13:

    v8 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v5 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

LABEL_3:
  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  v8 = v4;
  if ((v5 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v6; ++i)
    {
      v10 = MEMORY[0x26670F670](i, v5);
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        v13 = v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v10 = v13;
      }

      *(v4 + 16) = v12 + 1;
      *(v4 + 8 * v12 + 32) = v10;
    }
  }

  else
  {
    v14 = 32;
    do
    {
      v15 = *(v4 + 16);
      v16 = *(v4 + 24);
      v17 = *(v5 + v14);
      if (v15 >= v16 >> 1)
      {
        v18 = v16 > 1;
        v19 = v17;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v15 + 1, 1);
        v17 = v19;
      }

      *(v4 + 16) = v15 + 1;
      *(v4 + 8 * v15 + 32) = v17;
      v14 += 8;
      --v6;
    }

    while (v6);
  }

LABEL_19:
  v45 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v8);

  v20 = MEMORY[0x266710A20](a1);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v21 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_21;
    }
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_21:
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_22;
      }

LABEL_36:

      v28 = MEMORY[0x277D84F90];
      goto LABEL_37;
    }
  }

  v22 = __CocoaSet.count.getter();
  if (!v22)
  {
    goto LABEL_36;
  }

LABEL_22:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v22 < 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v23 = 0;
  do
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x26670F670](v23, v21);
    }

    else
    {
      v25 = *(v21 + 8 * v23 + 32);
    }

    v26 = v25;
    v27 = RIOBuilderDirtyPropertyDescriptorCopyType();
    if (v27 == 3)
    {
      specialized NamespacedPropertyDirtyState.__allocating_init(core:)(v26);
    }

    else if (v27 == 2)
    {
      specialized NamedPropertyDirtyState.__allocating_init(core:)(v26);
    }

    else
    {
      type metadata accessor for PropertyDirtyState();
      PropertyDirtyState.__allocating_init(core:)(v26);
    }

    ++v23;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v24 = *(v4 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v22 != v23);

  v28 = v4;
LABEL_37:
  v29 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO18PropertyDirtyStateC_SayAFGTt0g5Tf4g_n(v28);

  v30 = MEMORY[0x266710A10](a1);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v31 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_39;
    }
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_39:
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        goto LABEL_40;
      }

LABEL_49:

      v33 = MEMORY[0x277D84F90];
LABEL_55:
      v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v33);

      type metadata accessor for TypeNamePrimDirtyState();
      result = swift_allocObject();
      result[2] = v44;
      result[3] = v29;
      result[4] = a1;
      result[5] = v45;
      return result;
    }
  }

  v32 = __CocoaSet.count.getter();
  if (!v32)
  {
    goto LABEL_49;
  }

LABEL_40:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v33 = v4;
    if ((v31 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v32; ++j)
      {
        MEMORY[0x26670F670](j, v31);
        v35 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        swift_unknownObjectRelease();
        v37 = *(v4 + 16);
        v36 = *(v4 + 24);
        if (v37 >= v36 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        }

        *(v4 + 16) = v37 + 1;
        *(v4 + 8 * v37 + 32) = v35;
      }
    }

    else
    {
      v38 = 32;
      do
      {
        v39 = *(v31 + v38);
        v40 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        v42 = *(v33 + 16);
        v41 = *(v33 + 24);
        if (v42 >= v41 >> 1)
        {
          v43 = v40;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
          v40 = v43;
        }

        *(v33 + 16) = v42 + 1;
        *(v33 + 8 * v42 + 32) = v40;
        v38 += 8;
        --v32;
      }

      while (v32);
    }

    goto LABEL_55;
  }

LABEL_58:
  __break(1u);
  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetV_Tt0g5Tf4g_n(uint64_t a1)
{
  v74 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v2 = *(v74 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v74);
  v70 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v73 = &v65 - v6;
  v85 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v7 = *(v85 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v85);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - v12;
  MEMORY[0x28223BE20](v14);
  v68 = &v65 - v15;
  v16 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v86 = &v65 - v22;
  v23 = *(a1 + 16);
  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVAISH0C2IOyHCg_GMd, &_ss11_SetStorageCy10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVAISH0C2IOyHCg_GMR);
    v24 = static _SetStorage.allocate(capacity:)();
    v25 = 0;
    v27 = *(v17 + 16);
    v26 = v17 + 16;
    v82 = v27;
    v83 = v24 + 7;
    v67 = a1 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v84 = *(v26 + 56);
    v81 = (v7 + 8);
    v72 = (v2 + 8);
    v77 = (v26 - 8);
    v65 = (v26 + 16);
    v78 = v26;
    v66 = v23;
    v80 = v24;
    v76 = v16;
    while (1)
    {
      v69 = v25;
      v82(v86, v67 + v84 * v25, v16);
      v32 = v24[5];
      Hasher.init(_seed:)();
      v33 = v68;
      __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
      lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, 255, MEMORY[0x277CDACC0]);
      v34 = v85;
      dispatch thunk of Hashable.hash(into:)();
      v79 = *v81;
      v79(v33, v34);
      v35 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
      Hasher._combine(_:)(v35);
      v36 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
      Hasher._combine(_:)(HIDWORD(v36));
      __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
      Hasher._combine(_:)(v37);
      v38 = v73;
      __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
      lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, 255, MEMORY[0x277CDACE0]);
      v39 = v74;
      dispatch thunk of Hashable.hash(into:)();
      v71 = *v72;
      v71(v38, v39);
      v40 = Hasher._finalize()();
      v24 = v80;
      v41 = -1 << *(v80 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      v44 = v83[v42 >> 6];
      v45 = 1 << v42;
      if (((1 << v42) & v44) == 0)
      {
LABEL_3:
        v83[v43] = v44 | v45;
        result = (*v65)(v24[6] + v42 * v84, v86, v16);
        v29 = v24[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (!v30)
        {
          v24[2] = v31;
          goto LABEL_5;
        }

        __break(1u);
        return result;
      }

      v46 = ~v41;
      while (1)
      {
        v82(v20, v24[6] + v42 * v84, v16);
        __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
        __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
        lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, 255, MEMORY[0x277CDACC0]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v89 == v87 && v90 == v88)
        {
          break;
        }

        v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v49 = v46;
        v50 = v20;
        v51 = v85;
        v52 = v79;
        v79(v10, v85);
        v53 = v51;
        v20 = v50;
        v46 = v49;
        v52(v13, v53);

        if (v75)
        {
          goto LABEL_14;
        }

LABEL_8:
        v16 = v76;
        (*v77)(v20, v76);
LABEL_9:
        v42 = (v42 + 1) & v46;
        v43 = v42 >> 6;
        v44 = v83[v42 >> 6];
        v45 = 1 << v42;
        v24 = v80;
        if ((v44 & (1 << v42)) == 0)
        {
          goto LABEL_3;
        }
      }

      v47 = v85;
      v48 = v79;
      v79(v10, v85);
      v48(v13, v47);

LABEL_14:
      v54 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
      v56 = v55;
      if (v54 != __REAssetBundle.ExportOptions.DeploymentTarget.version.getter() || v56 != v57)
      {
        goto LABEL_8;
      }

      v58 = v73;
      __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
      v59 = v70;
      __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
      v60 = static __REAssetBundle.ExportOptions.PlatformRequirement.== infix(_:_:)();
      v61 = v59;
      v62 = v74;
      v63 = v71;
      v71(v61, v74);
      v63(v58, v62);
      v64 = *v77;
      v16 = v76;
      (*v77)(v20, v76);
      if ((v60 & 1) == 0)
      {
        goto LABEL_9;
      }

      v64(v86, v16);
      v24 = v80;
LABEL_5:
      v25 = v69 + 1;
      if (v69 + 1 == v66)
      {
        return v24;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO13ImportSessionC15EvaluationFaultO_Tt0g5Tf4g_n(uint64_t a1)
{
  v94 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v2 = *(v94 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = &v90 - v6;
  v110 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v7 = *(v110 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v109 = &v90 - v11;
  v12 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v114 = *(v12 - 8);
  v13 = *(v114 + 64);
  MEMORY[0x28223BE20](v12);
  v111 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMd, &_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMR);
  v15 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v17 = &v90 - v16;
  v18 = type metadata accessor for ImportSession.EvaluationFault(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v107 = (&v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v106 = (&v90 - v23);
  MEMORY[0x28223BE20](v24);
  v105 = (&v90 - v25);
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v29 = (&v90 - v28);
  MEMORY[0x28223BE20](v30);
  v104 = (&v90 - v31);
  MEMORY[0x28223BE20](v32);
  v34 = &v90 - v33;
  MEMORY[0x28223BE20](v35);
  v117 = &v90 - v37;
  v38 = *(a1 + 16);
  if (!v38)
  {
    return MEMORY[0x277D84FA0];
  }

  v112 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMd, &_ss11_SetStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMR);
  v102 = v2;
  v39 = static _SetStorage.allocate(capacity:)();
  v40 = a1;
  v41 = v39;
  v115 = v39 + 56;
  v101 = v40 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v116 = *(v19 + 72);
  v42 = 0;
  v103 = (v114 + 8);
  v97 = (v114 + 32);
  v96 = (v7 + 8);
  v91 = (v102 + 8);
  v99 = v12;
  v98 = v29;
  v100 = v38;
  while (2)
  {
    outlined init with copy of ImportSession.EvaluationFault(v101 + v116 * v42, v117);
    v44 = *(v41 + 40);
    Hasher.init(_seed:)();
    ImportSession.EvaluationFault.hash(into:)(v120);
    v45 = Hasher._finalize()();
    v114 = ~(-1 << *(v41 + 32));
    v46 = v45 & v114;
    v47 = (v45 & v114) >> 6;
    v48 = *(v115 + 8 * v47);
    v49 = 1 << (v45 & v114);
    if ((v49 & v48) == 0)
    {
      goto LABEL_51;
    }

    v102 = v42;
    do
    {
      outlined init with copy of ImportSession.EvaluationFault(*(v41 + 48) + v46 * v116, v34);
      v53 = &v17[*(v113 + 48)];
      outlined init with copy of ImportSession.EvaluationFault(v34, v17);
      outlined init with copy of ImportSession.EvaluationFault(v117, v53);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (!EnumCaseMultiPayload)
        {
          v50 = v104;
          outlined init with copy of ImportSession.EvaluationFault(v17, v104);
          v52 = *v50;
          v51 = v50[1];
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_10;
          }

          goto LABEL_35;
        }

        if (EnumCaseMultiPayload == 1)
        {
          outlined init with copy of ImportSession.EvaluationFault(v17, v29);
          v52 = *v29;
          v51 = v29[1];
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_10;
          }

          goto LABEL_35;
        }

        v63 = v112;
        outlined init with copy of ImportSession.EvaluationFault(v17, v112);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          outlined destroy of ImportSession.EvaluationFault(v34);
          (*v103)(v63, v12);
          goto LABEL_11;
        }

        (*v97)(v111, v53, v12);
        __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
        __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
        lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, 255, MEMORY[0x277CDACC0]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v120[0] == v118 && v120[1] == v119)
        {
          v64 = *v96;
          v65 = v110;
          (*v96)(v108, v110);
          v64(v109, v65);
        }

        else
        {
          v95 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v71 = *v96;
          v72 = v110;
          (*v96)(v108, v110);
          v71(v109, v72);

          if ((v95 & 1) == 0)
          {
LABEL_49:
            v85 = *v103;
            v12 = v99;
            (*v103)(v111, v99);
            outlined destroy of ImportSession.EvaluationFault(v34);
            v85(v112, v12);
            v29 = v98;
            goto LABEL_40;
          }
        }

        v73 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
        v75 = v74;
        if (v73 == __REAssetBundle.ExportOptions.DeploymentTarget.version.getter() && v75 == v76)
        {
          v77 = v92;
          __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
          v78 = v93;
          v79 = v111;
          __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
          v95 = static __REAssetBundle.ExportOptions.PlatformRequirement.== infix(_:_:)();
          v80 = *v91;
          v81 = v78;
          v82 = v94;
          (*v91)(v81, v94);
          v80(v77, v82);
          v83 = *v103;
          v84 = v99;
          (*v103)(v79, v99);
          outlined destroy of ImportSession.EvaluationFault(v34);
          v83(v112, v84);
          v12 = v84;
          v29 = v98;
          if (v95)
          {
            goto LABEL_4;
          }

          goto LABEL_40;
        }

        goto LABEL_49;
      }

      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v55 = v105;
          outlined init with copy of ImportSession.EvaluationFault(v17, v105);
          v52 = *v55;
          v51 = v55[1];
          if (swift_getEnumCaseMultiPayload() != 3)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v66 = v106;
          outlined init with copy of ImportSession.EvaluationFault(v17, v106);
          v52 = *v66;
          v51 = v66[1];
          if (swift_getEnumCaseMultiPayload() != 4)
          {
LABEL_10:
            outlined destroy of ImportSession.EvaluationFault(v34);

LABEL_11:
            outlined destroy of (ImportSession.EvaluationFault, ImportSession.EvaluationFault)(v17);
            goto LABEL_12;
          }
        }

LABEL_35:
        v67 = *v53;
        v68 = *(v53 + 1);
        if (v52 == v67 && v51 == v68)
        {

          outlined destroy of ImportSession.EvaluationFault(v34);
LABEL_4:
          outlined destroy of ImportSession.EvaluationFault(v17);
          v43 = v117;
LABEL_5:
          outlined destroy of ImportSession.EvaluationFault(v43);
          v42 = v102;
          goto LABEL_6;
        }

        v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of ImportSession.EvaluationFault(v34);
        if (v70)
        {
          goto LABEL_4;
        }

        goto LABEL_40;
      }

      if (EnumCaseMultiPayload != 5)
      {
        outlined destroy of ImportSession.EvaluationFault(v34);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }

      v56 = v107;
      outlined init with copy of ImportSession.EvaluationFault(v17, v107);
      v58 = *v56;
      v57 = v56[1];
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_10;
      }

      v59 = *v53;
      v60 = *(v53 + 1);
      if (v58 == v59 && v57 == v60)
      {

        outlined destroy of ImportSession.EvaluationFault(v34);
LABEL_54:
        outlined destroy of ImportSession.EvaluationFault(v117);
        v43 = v17;
        goto LABEL_5;
      }

      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of ImportSession.EvaluationFault(v34);
      if (v62)
      {
        goto LABEL_54;
      }

LABEL_40:
      outlined destroy of ImportSession.EvaluationFault(v17);
LABEL_12:
      v46 = (v46 + 1) & v114;
      v47 = v46 >> 6;
      v48 = *(v115 + 8 * (v46 >> 6));
      v49 = 1 << v46;
    }

    while ((v48 & (1 << v46)) != 0);
    v42 = v102;
LABEL_51:
    *(v115 + 8 * v47) = v48 | v49;
    result = outlined init with take of ImportSession.EvaluationFault(v117, *(v41 + 48) + v46 * v116);
    v87 = *(v41 + 16);
    v88 = __OFADD__(v87, 1);
    v89 = v87 + 1;
    if (!v88)
    {
      *(v41 + 16) = v89;
LABEL_6:
      if (++v42 == v100)
      {
        return v41;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of (ImportSession.EvaluationFault, ImportSession.EvaluationFault)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMd, &_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    outlined destroy of Any?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of Any?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    outlined destroy of Any?(a1, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of Any?(v10, &_sypSgMd, &_sypSgMR);
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for __RKEntityInteractionSpecification();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    outlined destroy of Any?(a1, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);

    outlined destroy of Any?(v8, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v18;
  }
}

id one-time initialization function for PreliminaryBehaviorPrimTypeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static BehaviorBuilder.PreliminaryBehaviorPrimTypeName = result;
  return result;
}

id one-time initialization function for BehaviorPrimTypeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static BehaviorBuilder.BehaviorPrimTypeName = result;
  return result;
}

uint64_t BehaviorBuilder.inputDescriptors()()
{
  v1 = *v0;
  v7 = MEMORY[0x277D84FA0];
  v2 = swift_allocObject();
  v2[2] = closure #1 in ActionBuilder.inputDescriptors();
  v2[3] = 0;
  v2[4] = v1;
  v14 = xmmword_26198B620;
  v15 = 0xD000000000000020;
  v16 = 0x8000000261994290;
  v17 = partial apply for closure #2 in BehaviorBuilder.inputDescriptors();
  v18 = v2;
  v19 = -127;

  specialized Set._Variant.insert(_:)(&v8, &v14);
  outlined consume of InputDescriptor(v8, *(&v8 + 1), v9, v10, v11, v12, v13);
  v3 = swift_allocObject();
  v3[2] = closure #1 in ActionBuilder.inputDescriptors();
  v3[3] = 0;
  v3[4] = v1;
  v8 = xmmword_26198A9E0;
  v9 = 0xD00000000000001FLL;
  v10 = 0x80000002619941F0;
  v11 = partial apply for closure #3 in BehaviorBuilder.inputDescriptors();
  v12 = v3;
  v13 = -127;
  specialized Set._Variant.insert(_:)(v5, &v8);

  outlined consume of InputDescriptor(v5[0], v5[1], v5[2], v5[3], v5[4], v5[5], v6);
  return v7;
}

uint64_t closure #2 in BehaviorBuilder.inputDescriptors()(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a2;
  v11 = *(a1 + 16);
  if (!RIOPxrUsdStageHasPrimAtPrimPath())
  {
    return MEMORY[0x277D84FA0];
  }

  v12 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  type metadata accessor for Prim();
  v14 = swift_allocObject();
  *(v14 + 16) = PrimIfNeeded;

  v15 = a3(a6, a7, v14);

  return v15;
}

uint64_t BehaviorBuilder.run(inputs:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v53 - v4;
  v59 = type metadata accessor for __RKEntityInteractionSpecification();
  v57 = *(v59 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for __RKEntityActionSpecification();
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v53 - v20;
  v22 = type metadata accessor for __RKEntityTriggerSpecification();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  BehaviorBuilder.buildTriggerSpecifications(inputs:)(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v30 = &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd;
    v31 = &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR;
    v32 = v21;
    return outlined destroy of Any?(v32, v30, v31);
  }

  (*(v23 + 32))(v29, v21, v22);
  BehaviorBuilder.buildActionSpecifications(inputs:)(v10);
  if ((*(v62 + 48))(v10, 1, v11) == 1)
  {
    (*(v23 + 8))(v29, v22);
    v30 = &_s10RealityKit29__RKEntityActionSpecificationOSgMd;
    v31 = &_s10RealityKit29__RKEntityActionSpecificationOSgMR;
    v32 = v10;
    return outlined destroy of Any?(v32, v30, v31);
  }

  v55 = a1;
  v33 = v62;
  (*(v62 + 32))(v17, v10, v11);
  (*(v23 + 16))(v26, v29, v22);
  v34 = *(v33 + 16);
  v56 = v17;
  v54 = v11;
  v34(v14, v17, v11);
  MEMORY[0x26670E3A0](v26, v14);
  swift_beginAccess();
  v35 = objc_getAssociatedObject(v60, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v35)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v68, &aBlock);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    v37 = v59;
    v65 = v59;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    v39 = v57;
    v40 = *(v57 + 16);
    v41 = v61;
    v40(boxed_opaque_existential_1, v61, v37);
    Outputs.subscript.setter(&aBlock, 0x726F697661686542, 0xE800000000000000);

    v42 = v60[3];
    v43 = v58;
    v40(v58, v41, v37);
    (*(v39 + 56))(v43, 0, 1, v37);
    v44 = v42;

    v45 = v55;
    v46 = *(Inputs.prim.getter() + 16);
    v47 = RIOPxrUsdObjectCopyPath();

    v60 = &v53;
    MEMORY[0x28223BE20](v48);
    *(&v53 - 4) = v44;
    *(&v53 - 3) = v47;
    *(&v53 - 2) = v43;
    v49 = *(v45 + 56);
    v50 = swift_allocObject();
    *(v50 + 16) = closure #1 in BehaviorsCommitter.commit(_:at:inputs:)partial apply;
    *(v50 + 24) = &v53 - 6;
    v66 = thunk for @callee_guaranteed () -> ()partial apply;
    v67 = v50;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v64 = thunk for @escaping @callee_guaranteed () -> ();
    v65 = &block_descriptor_30;
    v51 = _Block_copy(&aBlock);

    RIOBuilderInputsPerformBlockSyncOnEngineQueue();
    _Block_release(v51);
    (*(v39 + 8))(v61, v59);
    (*(v62 + 8))(v56, v54);
    (*(v23 + 8))(v29, v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v30 = &_s10RealityKit34__RKEntityInteractionSpecificationVSgMd;
      v31 = &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR;
      v32 = v58;
      return outlined destroy of Any?(v32, v30, v31);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t BehaviorBuilder.clear(inputs:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &aBlock - v6;
  swift_beginAccess();
  v8 = objc_getAssociatedObject(v1, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v22, &aBlock);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    aBlock = 0u;
    v19 = 0u;
    Outputs.subscript.setter(&aBlock, 0x726F697661686542, 0xE800000000000000);

    v10 = v2[3];
    v11 = type metadata accessor for __RKEntityInteractionSpecification();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);

    v12 = *(Inputs.prim.getter() + 16);
    v13 = RIOPxrUsdObjectCopyPath();

    MEMORY[0x28223BE20](v14);
    *(&aBlock - 4) = v10;
    *(&aBlock - 3) = v13;
    *(&aBlock - 2) = v7;
    v15 = *(a1 + 56);
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for closure #1 in BehaviorsCommitter.commit(_:at:inputs:);
    *(v16 + 24) = &aBlock - 3;
    v20 = partial apply for thunk for @callee_guaranteed () -> ();
    v21 = v16;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v19 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v19 + 1) = &block_descriptor_4;
    v17 = _Block_copy(&aBlock);

    RIOBuilderInputsPerformBlockSyncOnEngineQueue();
    _Block_release(v17);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if ((v15 & 1) == 0)
    {
      return outlined destroy of Any?(v7, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t BehaviorBuilder.buildTriggerSpecifications(inputs:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for __RKEntityTriggerSpecification();
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = Inputs.accumulatedValues(forKey:)(0x7372656767697274, 0xE800000000000000);
  v7 = specialized _arrayConditionalCast<A, B>(_:)(v6);

  if (v7)
  {
    v9 = *(v7 + 16);
    if (v9)
    {
      v26 = a1;
      v10 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v10 >= *(v7 + 16))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return result;
        }

        v12 = v7 + 8 * v10;
        v13 = *(v12 + 32);
        v14 = *(v13 + 16);
        v15 = v11[2];
        v16 = v15 + v14;
        if (__OFADD__(v15, v14))
        {
          goto LABEL_30;
        }

        v17 = *(v12 + 32);

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v16 <= v11[3] >> 1)
        {
          if (*(v13 + 16))
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v15 <= v16)
          {
            v18 = v15 + v14;
          }

          else
          {
            v18 = v15;
          }

          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v18, 1, v11);
          v11 = result;
          if (*(v13 + 16))
          {
LABEL_16:
            if ((v11[3] >> 1) - v11[2] < v14)
            {
              goto LABEL_32;
            }

            v19 = (*(v27 + 80) + 32) & ~*(v27 + 80);
            v20 = *(v27 + 72);
            swift_arrayInitWithCopy();

            if (v14)
            {
              v21 = v11[2];
              v22 = __OFADD__(v21, v14);
              v23 = v21 + v14;
              if (v22)
              {
                goto LABEL_33;
              }

              v11[2] = v23;
            }

            goto LABEL_5;
          }
        }

        if (v14)
        {
          goto LABEL_31;
        }

LABEL_5:
        if (v9 == ++v10)
        {

          if (v11[2])
          {
            *v5 = v11;
            (*(v27 + 104))(v5, *MEMORY[0x277CDAFC8], v2);
            v24 = v26;
            (*(v27 + 32))(v26, v5, v2);
            return (*(v27 + 56))(v24, 0, 1, v2);
          }

          else
          {
            (*(v27 + 56))(v26, 1, 1, v2);
          }
        }
      }
    }
  }

  v25 = *(v27 + 56);

  return v25(a1, 1, 1, v2);
}

uint64_t BehaviorBuilder.buildActionSpecifications(inputs:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for __RKEntityActionSpecification();
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for __RKEntityGroupActionOrder();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for __RKEntityActionGroupArguments();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v42 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Inputs.accumulatedValues(forKey:)(0x736E6F69746361, 0xE700000000000000);
  v15 = specialized _arrayConditionalCast<A, B>(_:)(v14);

  if (v15)
  {
    v41 = v10;
    v17 = *(v15 + 16);
    if (v17)
    {
      v36 = v7;
      v37 = v11;
      v38 = v6;
      v39 = v5;
      v40 = a1;
      v18 = 0;
      v19 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v18 >= *(v15 + 16))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return result;
        }

        v20 = v15 + 8 * v18;
        v21 = *(v20 + 32);
        v22 = *(v21 + 16);
        v23 = v19[2];
        v24 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          goto LABEL_30;
        }

        v25 = *(v20 + 32);

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v24 <= v19[3] >> 1)
        {
          if (*(v21 + 16))
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v23 <= v24)
          {
            v26 = v23 + v22;
          }

          else
          {
            v26 = v23;
          }

          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v26, 1, v19);
          v19 = result;
          if (*(v21 + 16))
          {
LABEL_16:
            if ((v19[3] >> 1) - v19[2] < v22)
            {
              goto LABEL_32;
            }

            v27 = (*(v44 + 80) + 32) & ~*(v44 + 80);
            v28 = *(v44 + 72);
            swift_arrayInitWithCopy();

            if (v22)
            {
              v29 = v19[2];
              v30 = __OFADD__(v29, v22);
              v31 = v29 + v22;
              if (v30)
              {
                goto LABEL_33;
              }

              v19[2] = v31;
            }

            goto LABEL_5;
          }
        }

        if (v22)
        {
          goto LABEL_31;
        }

LABEL_5:
        if (v17 == ++v18)
        {

          if (v19[2])
          {
            _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSb_Tt1g5Tf4ndn_n();
            v32 = v40;
            (*(v36 + 104))(v41, *MEMORY[0x277CDAF00], v38);
            v34 = v42;
            __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
            v35 = v39;
            (*(v43 + 32))(v39, v34, v37);
            (*(v44 + 104))(v35, *MEMORY[0x277CDAFA0], v2);
            (*(v44 + 32))(v32, v35, v2);
            return (*(v44 + 56))(v32, 0, 1, v2);
          }

          else
          {
            (*(v44 + 56))(v40, 1, 1, v2);
          }
        }
      }
    }
  }

  v33 = *(v44 + 56);

  return v33(a1, 1, 1, v2);
}

uint64_t BehaviorBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Builder.outputDescriptors() in conformance BehaviorBuilder()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16OutputDescriptorO_Tt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance BehaviorBuilder);
  outlined destroy of OutputDescriptor(&unk_287410828);
  return v0;
}

uint64_t one-time initialization function for behaviorCommitter()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.behaviorCommitter = result;
  return result;
}

void closure #1 in BehaviorsCommitter.commit(_:at:inputs:)(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for __RKEntityInteractionSpecification();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v57 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v57 - v19;
  outlined init with copy of __RKEntityInteractionSpecification?(a3, v57 - v19);
  swift_beginAccess();
  v21 = a2;
  specialized Dictionary.subscript.setter(v20, v21);
  swift_endAccess();
  v22 = v21;
  swift_beginAccess();
  for (i = v22; ; i = v27)
  {
    if (*(a1[4] + 16))
    {
      v24 = a1[4];

      specialized __RawDictionaryStorage.find<A>(_:)(i);
      v26 = v25;

      if (v26)
      {
        break;
      }
    }

    if (RIOPxrSdfPathIsEmpty())
    {
      break;
    }

    v27 = RIOPxrSdfPathCopyParentPath();
  }

  v28 = a1[4];
  if (!*(v28 + 16))
  {
LABEL_16:
    if (one-time initialization token for behaviorCommitter != -1)
    {
      swift_once();
    }

    static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_2619891C0;
    v48 = RIOPxrSdfPathCopyString();
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    *(v47 + 56) = MEMORY[0x277D837D0];
    *(v47 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v47 + 32) = v49;
    *(v47 + 40) = v51;
    os_log(_:dso:log:type:_:)();

    v52 = a1[2];
    v53 = a1[3];
    v54 = *(v53 + 16);
    if (v54)
    {
      v55 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit34__RKEntityInteractionSpecificationV_Tt1g5(*(v53 + 16), 0);
      specialized Sequence._copySequenceContents(initializing:)(&v60, (v55 + ((*(v7 + 80) + 32) & ~*(v7 + 80))), v54, v53);
      v59 = v56;

      outlined consume of Set<PropertyDirtyState>.Iterator._Variant();
      if (v59 == v54)
      {
LABEL_22:
        Entity.__interactions.setter();

        goto LABEL_23;
      }

      __break(1u);
    }

    goto LABEL_22;
  }

  v29 = a1[4];

  v30 = specialized __RawDictionaryStorage.find<A>(_:)(i);
  if ((v31 & 1) == 0)
  {

    goto LABEL_16;
  }

  v32 = *(*(v28 + 56) + 8 * v30);

  v33 = a1[3];
  if (!*(v33 + 16))
  {
LABEL_23:

    return;
  }

  v34 = a1[3];

  v35 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
  if ((v36 & 1) == 0)
  {

    goto LABEL_23;
  }

  v37 = *(v33 + 56);
  v58 = *(v7 + 72);
  v38 = *(v7 + 16);
  v38(v13, v37 + v58 * v35, v6);

  v57[0] = *(v7 + 32);
  v57[1] = v7 + 32;
  (v57[0])(v16, v13, v6);
  type metadata accessor for Entity();
  v39 = static Entity.fromCore(_:ignoringEntityInfo:)();
  v38(v10, v16, v6);
  v59 = v39;
  v40 = Entity.__interactions.modify();
  v42 = v41;
  v43 = *v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v42 = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
    *v42 = v43;
  }

  v46 = v43[2];
  v45 = v43[3];
  if (v46 >= v45 >> 1)
  {
    v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1, v43);
    *v42 = v43;
  }

  v43[2] = v46 + 1;
  (v57[0])(v43 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v46 * v58, v10, v6);
  v40(&v60, 0);

  (*(v7 + 8))(v16, v6);
}

uint64_t BehaviorsCommitter.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

void _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(uint64_t *a1@<X8>)
{
  v2 = Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v3 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v3 = RIOPxrTfTokenCreateWithCString();
  }

  v4 = *(v2 + 16);
  if (RIOPxrUsdPrimHasAttribute())
  {
    v5 = RIOPxrUsdPrimCopyAttribute();
    v6 = RIOPxrUsdAttributeCopyValue();
    if (v6)
    {
      v7 = v6;
      v8 = RIOPxrVtValueCopyToken();

      if (v8)
      {

        *a1 = v8;
        return;
      }
    }

    v9 = RIOPxrUsdAttributeCopyTypeName();
  }

  else
  {

    v9 = 0;
  }

  lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v10 = v9;
}

uint64_t _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA7Vector3VySdG_Tt1g5@<X0>(uint64_t a1@<X8>)
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v2 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v2 = RIOPxrTfTokenCreateWithCString();
  }

  _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFAA7Vector3VySdG_Tt1B5(&v9);

  v4 = v9;
  if (v12)
  {
    v13 = v9;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    v5 = v13;
    result = swift_allocError();
    *v6 = v5;
  }

  else
  {
    *&v7 = v10.i64[0];
    v8 = vzip2q_s64(v10, 0).u64[0];
    *(a1 + 24) = v11;
    *a1 = v4;
    *(&v7 + 1) = v8;
    *(a1 + 8) = v7;
  }

  return result;
}

void _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(uint64_t a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    v9 = 0;
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v4 = RIOPxrUsdPrimCopyAttribute();
  v5 = RIOPxrUsdAttributeCopyValue();
  if (!v5 || (v6 = v5, Float = RIOPxrVtValueGetFloat(), v6, (Float & 1) == 0))
  {
    v9 = RIOPxrUsdAttributeCopyTypeName();

    goto LABEL_7;
  }

  v8 = 0;
  v9 = 0;
LABEL_8:
  *a1 = v9;
  *(a1 + 8) = v8;
  v10 = *MEMORY[0x277D85DE8];
}

void _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (RIOPxrUsdPrimHasAttribute())
  {
    v4 = RIOPxrUsdPrimCopyAttribute();
    v5 = RIOPxrUsdAttributeCopyValue();
    if (v5)
    {
      v6 = v5;
      v7 = RIOPxrVtValueCopyString();
      if (v7)
      {
        v8 = v7;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        *a1 = v9;
        *(a1 + 8) = v11;
        *(a1 + 16) = 0;
        return;
      }
    }

    v12 = RIOPxrUsdAttributeCopyTypeName();

    *a1 = v12;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 1;
}

void _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5(uint64_t a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    v9 = 0;
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v4 = RIOPxrUsdPrimCopyAttribute();
  v5 = RIOPxrUsdAttributeCopyValue();
  if (!v5 || (v6 = v5, Double = RIOPxrVtValueGetDouble(), v6, (Double & 1) == 0))
  {
    v9 = RIOPxrUsdAttributeCopyTypeName();

    goto LABEL_7;
  }

  v8 = 0;
  v9 = 0;
LABEL_8:
  *a1 = v9;
  *(a1 + 8) = v8;
  v10 = *MEMORY[0x277D85DE8];
}

void _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs6UInt32V_Tt1B5(uint64_t a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    v9 = 0;
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v4 = RIOPxrUsdPrimCopyAttribute();
  v5 = RIOPxrUsdAttributeCopyValue();
  if (!v5 || (v6 = v5, UInt32 = RIOPxrVtValueGetUInt32(), v6, (UInt32 & 1) == 0))
  {
    v9 = RIOPxrUsdAttributeCopyTypeName();

    goto LABEL_7;
  }

  v8 = 0;
  v9 = 0;
LABEL_8:
  *a1 = v9;
  *(a1 + 8) = v8;
  v10 = *MEMORY[0x277D85DE8];
}

void _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(uint64_t a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    v9 = 0;
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v4 = RIOPxrUsdPrimCopyAttribute();
  v5 = RIOPxrUsdAttributeCopyValue();
  if (!v5 || (v6 = v5, Bool = RIOPxrVtValueGetBool(), v6, (Bool & 1) == 0))
  {
    v9 = RIOPxrUsdAttributeCopyTypeName();

    goto LABEL_7;
  }

  v8 = 0;
  v9 = 0;
LABEL_8:
  *a1 = v9;
  *(a1 + 8) = v8;
  v10 = *MEMORY[0x277D85DE8];
}

void _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFAA7Vector3VySdG_Tt1B5(uint64_t a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
LABEL_7:
    *(a1 + 32) = 1;
    goto LABEL_8;
  }

  v4 = RIOPxrUsdPrimCopyAttribute();
  v5 = RIOPxrUsdAttributeCopyValue();
  if (!v5 || (v6 = v5, Double3 = RIOPxrVtValueGetDouble3(), v6, (Double3 & 1) == 0))
  {
    v8 = RIOPxrUsdAttributeCopyTypeName();

    *a1 = v8;
    goto LABEL_7;
  }

  *a1 = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit34__RKEntityInteractionSpecificationV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMR);
  v4 = *(type metadata accessor for __RKEntityInteractionSpecification() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo33RIOBuilderDirtyStageDescriptorRefa_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
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

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for UUID();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for UUID();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for __RKEntityInteractionSpecification();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v8, v13);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for __RKEntityInteractionSpecification();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of Any((*(v12 + 56) + 32 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for UUID() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
    do
    {
      v9 = *(a2 + 40);
      v28 = *(*(a2 + 48) + 8 * v6);
      v10 = v28;
      v11 = dispatch thunk of Hashable._rawHashValue(seed:)();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for __RKEntityInteractionSpecification() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
    do
    {
      v9 = *(a2 + 40);
      v24 = *(*(a2 + 48) + 8 * v6);
      v10 = v24;
      v11 = dispatch thunk of Hashable._rawHashValue(seed:)();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(int64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a4 + 64;
  v9 = -1 << *(a4 + 32);
  v10 = ~v9;
  if (-v9 < 64)
  {
    v11 = ~(-1 << -v9);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a4 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCySD0A0VySS9RealityIO13ImportSessionC17MeshAssetEstimateV_GGMd, &_ss12_IteratorBoxCySD0A0VySS9RealityIO13ImportSessionC17MeshAssetEstimateV_GGMR);
  result = swift_allocObject();
  v14 = result;
  result[2] = a4;
  result[3] = v8;
  result[4] = v10;
  result[5] = 0;
  result[6] = v12;
  if (!a2)
  {
LABEL_18:
    result = 0;
LABEL_25:
    *a1 = v14;
    return result;
  }

  if (!a3)
  {
    result = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    result = 0;
    a1 = 0;
    v15 = (63 - v9) >> 6;
    v16 = 1;
    while (v12)
    {
LABEL_14:
      v19 = __clz(__rbit64(v12)) | (a1 << 6);
      v20 = (*(a4 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = (*(a4 + 56) + 32 * v19);
      v24 = *v23;
      v25 = v23[1];
      v12 &= v12 - 1;
      v14[2] = a4;
      v14[3] = v8;
      v14[4] = v10;
      v14[5] = a1;
      v14[6] = v12;
      *a2 = v22;
      *(a2 + 8) = v21;
      *(a2 + 16) = v24;
      *(a2 + 32) = v25;
      if (v16 == a3)
      {

        result = a3;
        goto LABEL_23;
      }

      a2 += 48;

      result = v16;
      if (__OFADD__(v16++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v17 = a1;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v18 >= v15)
      {
        break;
      }

      v12 = *(v8 + 8 * v18);
      v17 = (v17 + 1);
      if (v12)
      {
        a1 = v18;
        goto LABEL_14;
      }
    }

    if (v15 <= a1 + 1)
    {
      v27 = (a1 + 1);
    }

    else
    {
      v27 = v15;
    }

    v14[2] = a4;
    v14[3] = v8;
    v14[4] = v10;
    v14[5] = v27 - 1;
    v14[6] = 0;
LABEL_23:
    a1 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for __RKEntityInteractionSpecification();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n()
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5(&v4);

  if (v5)
  {
    v3 = v4;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v2 = v3;
  }

  return result;
}

uint64_t _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSb_Tt1g5Tf4ndn_n()
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5(&v5);

  v1 = v5;
  if (v6)
  {
    v4 = v5;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v2 = v4;
  }

  return v1 & 1;
}

uint64_t _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFs6UInt32V_Tt1g5Tf4ndn_n()
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs6UInt32V_Tt1B5(&v4);

  result = v4;
  if (v5)
  {
    v3 = v4;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v2 = v3;
  }

  return result;
}

uint64_t _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSS_Tt1g5Tf4ndn_n()
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5(&v4);

  result = v4;
  if (v5)
  {
    v3 = v4;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v2 = v3;
  }

  return result;
}

uint64_t _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSf_Tt1g5Tf4ndn_n()
{
  Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  _s9RealityIO4PrimC20attributeValueResult2of4types0F0OyxAA6ObjectC5ErrorOGAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5(&v4);

  if (v5)
  {
    v3 = v4;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v2 = v3;
  }

  return result;
}

uint64_t specialized closure #1 in BehaviorBuilder.stageSubscription.getter()
{
  if (one-time initialization token for PreliminaryBehaviorPrimTypeName != -1)
  {
    swift_once();
  }

  v8 = static BehaviorBuilder.PreliminaryBehaviorPrimTypeName;
  v0 = static BehaviorBuilder.PreliminaryBehaviorPrimTypeName;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v8);
  v2 = one-time initialization token for BehaviorPrimTypeName;

  if (v2 != -1)
  {
    swift_once();
  }

  v8 = static BehaviorBuilder.BehaviorPrimTypeName;
  v3 = static BehaviorBuilder.BehaviorPrimTypeName;
  v4 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A9D0;
  *(inited + 32) = v1;
  *(inited + 40) = v4;
  v8 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  return v8;
}

uint64_t specialized BehaviorBuilder.stageSubscription.getter()
{
  v0 = specialized closure #1 in BehaviorBuilder.stageSubscription.getter();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v2 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(MEMORY[0x277D84FA0], v0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v2;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  return v1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of __RKEntityInteractionSpecification?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in closure #1 in AudioFileBuilder.stageSubscription.getter()
{
  if (one-time initialization token for loadingStrategy != -1)
  {
    swift_once();
  }

  v0 = static AudioConstants.AudioFile.loadingStrategy;
  type metadata accessor for NamedPropertyDirtyState();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = v0;
  v3 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v1[2] = v3;
  v1[3] = v5;
  v6 = one-time initialization token for shouldLoop;
  v64 = v1;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static AudioConstants.AudioFile.shouldLoop;
  v8 = swift_allocObject();
  v8[4] = v7;
  v9 = v7;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v8[2] = v3;
  v8[3] = v11;
  v12 = one-time initialization token for randomizeStart;
  v63 = v8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static AudioConstants.AudioFile.randomizeStart;
  v14 = swift_allocObject();
  v14[4] = v13;
  v15 = v13;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v16 = Array._bridgeToObjectiveC()().super.isa;

  v17 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v14[2] = v3;
  v14[3] = v17;
  v18 = one-time initialization token for normalization;
  v62 = v14;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = static AudioConstants.AudioFile.normalization;
  v20 = swift_allocObject();
  v20[4] = v19;
  v21 = v19;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v22 = Array._bridgeToObjectiveC()().super.isa;

  v23 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v20[2] = v3;
  v20[3] = v23;
  v24 = v20;

  if (String.count.getter() < 1)
  {
    v25 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v25 = RIOPxrTfTokenCreateWithCString();
  }

  v26 = v25;
  v27 = swift_allocObject();
  v27[4] = v26;
  v28 = v26;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v29 = Array._bridgeToObjectiveC()().super.isa;

  v30 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v27[2] = v3;
  v27[3] = v30;
  v61 = v27;

  if (String.count.getter() <= 0)
  {
    v31 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v31 = RIOPxrTfTokenCreateWithCString();
  }

  v32 = v31;
  v33 = swift_allocObject();
  v33[4] = v32;
  v34 = v32;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v35 = Array._bridgeToObjectiveC()().super.isa;

  v36 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v33[2] = v3;
  v33[3] = v36;
  v37 = one-time initialization token for calibrationMode;
  v60 = v33;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = static AudioConstants.AudioFile.calibrationMode;
  v39 = swift_allocObject();
  v39[4] = v38;
  v40 = v38;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v41 = v3;
  v42 = Array._bridgeToObjectiveC()().super.isa;

  v43 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v39[2] = v41;
  v39[3] = v43;
  v44 = one-time initialization token for assetPath;
  v59 = v39;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = static AudioConstants.AudioFile.assetPath;
  v46 = swift_allocObject();
  v46[4] = v45;
  v47 = v45;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v41);
  v48 = Array._bridgeToObjectiveC()().super.isa;

  v49 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v46[2] = v41;
  v46[3] = v49;
  v50 = one-time initialization token for mixGroup;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = static AudioConstants.AudioFile.mixGroup;
  v52 = swift_allocObject();
  v52[4] = v51;
  v53 = v51;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v41);
  v54 = Array._bridgeToObjectiveC()().super.isa;

  v55 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v52[2] = v41;
  v52[3] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198B6E0;
  *(inited + 32) = v64;
  *(inited + 40) = v63;
  *(inited + 48) = v62;
  *(inited + 56) = v24;
  *(inited + 64) = v61;
  *(inited + 72) = v60;
  *(inited + 80) = v59;
  *(inited + 88) = v46;
  *(inited + 96) = v52;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v57 = *(inited + 16);
  swift_arrayDestroy();
  return v41;
}

void AudioFileBuilder.run(inputs:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = Inputs.prim.getter();
  v6 = *(a1 + 56);
  v7 = RIOBuilderInputsGetImportSession();
  if (!v7)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = v7;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v10 = *(SwiftObject + 32);

  ServiceLocator = REEngineGetServiceLocator();
  type metadata accessor for REAudioFileConfigurationWrapper();
  swift_allocObject();

  v13 = specialized REAudioFileConfigurationWrapper.init(prim:)(v12);

  v14 = MEMORY[0x2667102E0](ServiceLocator);
  if (v14)
  {
    v15 = v14;
    if (one-time initialization token for assetPath != -1)
    {
      swift_once();
    }

    v16 = *(v5 + 16);
    v17 = static AudioConstants.AudioFile.assetPath;
    if (!RIOPxrUsdPrimHasAttribute())
    {

      lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
      swift_willThrowTypedImpl();

      outlined consume of Object.Error(0);
      return;
    }

    v44 = v13;
    v18 = *(v5 + 16);
    v19 = RIOPxrUsdPrimCopyAttribute();

    type metadata accessor for AnyAttribute();
    v20 = swift_allocObject();
    v20[2] = v19;
    EmptyValue = RIOPxrUsdAttributeCopyValue();
    if (!EmptyValue)
    {
      EmptyValue = RIOPxrVtValueCreateEmptyValue();
    }

    v45 = EmptyValue;
    outlined consume of Result<AnyAttribute, Object.Error>(v20, 0);
    v22 = RIOPxrVtValueCopyAssetPath();
    if (v22)
    {
      v23 = v22;
      aBlock[0] = v22;
      v28 = SceneDescriptionFoundations.AssetPath.referencedData.getter();
      v30 = v29;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v31 = outlined consume of Data._Representation(v28, v30);
      if (v2[4])
      {
        v32 = v2[6];
        v33 = v2[5];
        v34 = v2[3];
        v35 = v2[4];
        v41 = v2[7];
        v42 = v33;
        outlined copy of AudioFileBuilder.Cache?(v34, v35);
        if (specialized static REAudioFileConfigurationWrapper.== infix(_:_:)(v44, v32))
        {
          v40 = [(objc_class *)isa hash];

          if (v40 == v41)
          {

            return;
          }
        }

        else
        {
        }
      }

      v42 = &v39;
      MEMORY[0x28223BE20](v31);
      v38[2] = v2;
      v38[3] = SwiftObject;
      v38[4] = v15;
      v38[5] = isa;
      v38[6] = v44;
      v38[7] = v5;
      v38[8] = v23;
      v38[9] = a1;
      v38[10] = v4;
      v36 = swift_allocObject();
      *(v36 + 16) = partial apply for closure #1 in AudioFileBuilder.run(inputs:);
      *(v36 + 24) = v38;
      aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
      aBlock[5] = v36;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_5;
      v37 = _Block_copy(aBlock);

      RIOBuilderInputsPerformBlockSyncOnEngineQueue();

      _Block_release(v37);
      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if ((v37 & 1) == 0)
      {
        return;
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {
    if (one-time initialization token for rioAudio != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.rioAudio);
    v25 = static os_log_type_t.error.getter();
    v26 = Logger.logObject.getter();
    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26187B000, v26, v25, "AudioFileBuilder could not get an AssetManager.", v27, 2u);
      MEMORY[0x266713AD0](v27, -1, -1);
    }
  }
}

void closure #1 in AudioFileBuilder.run(inputs:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  AudioFileBuilder.releaseAudioFileAndClearCache(importSession:)(a2);
  v14 = *(a5 + 16);
  v15 = REAudioFileAssetCreateWithMappedDataAndConfiguration();
  if (v15)
  {
    v16 = v15;
    v17 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v18 = *(a2 + v17);
    RIOImportSessionQueueAssetForLoad();
    v19 = *(a6 + 16);
    v20 = RIOPxrUsdObjectCopyPath();
    v21 = RIOPxrSdfPathCopyString();
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    oslog = v23;

    v24 = *(a8 + 56);
    v25 = RIOBuilderInputsGetImportSession();
    if (v25)
    {
      v26 = v25;
      SwiftObject = RIOImportSessionGetSwiftObject();

      if (SwiftObject)
      {
        v28 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;

        swift_beginAccess();
        v29 = *(SwiftObject + v28);
        v30 = RIOPxrSdfAssetPathAssetPathCopyString();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        String.utf8CString.getter();

        String.utf8CString.getter();
        RIOImportSessionRegisterAudioAsset();

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
        v31 = swift_allocObject();
        *(v31 + 16) = v16;
        v32 = NSObject.hashValue.getter();
        v33 = a1[3];
        v34 = a1[4];
        v35 = a1[5];
        v36 = a1[6];
        v37 = a1[7];
        a1[3] = v22;
        a1[4] = oslog;
        a1[5] = v31;
        a1[6] = a5;
        a1[7] = v32;

        outlined consume of AudioFileBuilder.Cache?(v33, v34);
        swift_beginAccess();
        v38 = objc_getAssociatedObject(a1, &static BuilderAssociatedKeys.OutputsReference);
        swift_endAccess();
        if (v38)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          outlined init with take of Any(&v58, v59);
          type metadata accessor for Outputs();
          swift_dynamicCast();
          v60 = MEMORY[0x277D841D8];
          v59[0] = v16;
          Outputs.subscript.setter(v59, 0xD00000000000001FLL, 0x80000002619942F0);

          return;
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (one-time initialization token for rioAudio != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.rioAudio);
  v40 = static os_log_type_t.error.getter();

  v41 = a7;
  osloga = Logger.logObject.getter();

  if (os_log_type_enabled(osloga, v40))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v59[0] = v43;
    *v42 = 136315394;
    v44 = *(a6 + 16);
    v45 = RIOPxrUsdObjectCopyPath();
    v46 = RIOPxrSdfPathCopyString();
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v59);

    *(v42 + 4) = v50;
    *(v42 + 12) = 2080;
    v51 = RIOPxrSdfAssetPathAssetPathCopyString();
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v59);

    *(v42 + 14) = v55;
    _os_log_impl(&dword_26187B000, osloga, v40, "AudioFileBuilder could not create an REAssetRef. Prim path: %s. Asset path: %s.", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266713AD0](v43, -1, -1);
    MEMORY[0x266713AD0](v42, -1, -1);
  }

  else
  {
  }
}

uint64_t AudioFileBuilder.releaseAudioFileAndClearCache(importSession:)(uint64_t a1)
{
  v2 = v1[4];
  if (v2)
  {
    v4 = v1[6];
    v3 = v1[7];
    v5 = v1[5];
    v6 = v1[3];
    v7 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v9 = *(a1 + v7);
    String.utf8CString.getter();
    outlined copy of AudioFileBuilder.Cache?(v6, v2);
    v10 = v9;
    RIOImportSessionRemoveExtraAssetWithTag();

    v11 = v1[4];
  }

  else
  {
    v11 = 0;
  }

  v12 = v1[3];
  v13 = v1[5];
  v14 = v1[6];
  v15 = v1[7];
  *(v1 + 3) = 0u;
  *(v1 + 5) = 0u;
  v1[7] = 0;
  return outlined consume of AudioFileBuilder.Cache?(v12, v11);
}

uint64_t AudioFileBuilder.__deallocating_deinit()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  outlined consume of AudioFileBuilder.Cache?(v0[3], v0[4]);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Builder.outputDescriptors() in conformance AudioFileBuilder()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16OutputDescriptorO_SayAFGTt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance AudioFileBuilder);
  outlined destroy of OutputDescriptor(&unk_287410870);
  return v0;
}

void protocol witness for Builder.clear(inputs:) in conformance AudioFileBuilder(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = RIOBuilderInputsGetImportSession();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_7:
    __break(1u);
    return;
  }

  AudioFileBuilder.releaseAudioFileAndClearCache(importSession:)(v5);
}

uint64_t Prim.attribute(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  if (RIOPxrUsdPrimHasAttribute())
  {
    v4 = RIOPxrUsdPrimCopyAttribute();
    type metadata accessor for AnyAttribute();
    v5 = swift_allocObject();
    v5[2] = v4;
    EmptyValue = RIOPxrUsdAttributeCopyValue();
    if (!EmptyValue)
    {
      EmptyValue = RIOPxrVtValueCreateEmptyValue();
    }

    v7 = EmptyValue;
    outlined consume of Result<AnyAttribute, Object.Error>(v5, 0);
    return v7;
  }

  else
  {
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(0);
    return 0;
  }
}

uint64_t REAudioFileConfigurationWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  REAudioFileAssetConfigurationDestroy();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioFileBuilder.Cache(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for AudioFileBuilder.Cache(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

BOOL specialized static REAudioFileConfigurationWrapper.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  RandomizeStart = REAudioFileAssetConfigurationGetRandomizeStart();
  v5 = *(a2 + 16);
  if (RandomizeStart != REAudioFileAssetConfigurationGetRandomizeStart())
  {
    return 0;
  }

  ShouldLoop = REAudioFileAssetConfigurationGetShouldLoop();
  if (ShouldLoop != REAudioFileAssetConfigurationGetShouldLoop())
  {
    return 0;
  }

  v7 = REAudioFileAssetConfigurationGetMixGroupName();
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = REAudioFileAssetConfigurationGetMixGroupName();
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v11)
    {
      if (v16)
      {
        if (v9 == v14 && v11 == v16)
        {
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v17 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_17;
      }

LABEL_15:

      return 0;
    }

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else if (v11)
  {
    goto LABEL_15;
  }

LABEL_17:
  Streaming = REAudioFileAssetConfigurationGetStreaming();
  if (Streaming == REAudioFileAssetConfigurationGetStreaming())
  {
    NormalizationMode = REAudioFileAssetConfigurationGetNormalizationMode();
    if (NormalizationMode == REAudioFileAssetConfigurationGetNormalizationMode())
    {
      CalibrationMode = REAudioFileAssetConfigurationGetCalibrationMode();
      if (CalibrationMode == REAudioFileAssetConfigurationGetCalibrationMode())
      {
        REAudioFileAssetConfigurationGetCalibrationLevel();
        v22 = v21;
        REAudioFileAssetConfigurationGetCalibrationLevel();
        return v22 == v23;
      }
    }
  }

  return 0;
}

uint64_t specialized AudioFileBuilder.stageSubscription.getter()
{
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v0 = static AudioConstants.AudioFile.primType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v0;
  v2 = v0;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v4 = v3;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(inited + 32);
  v5 = closure #1 in closure #1 in AudioFileBuilder.stageSubscription.getter();
  type metadata accessor for TypeNamePrimDirtyState();
  v6 = swift_allocObject();
  v6[5] = v4;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v7);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v5);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v6[2] = v10;
  v6[3] = v5;
  v6[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26198A640;
  *(v13 + 32) = v6;

  specialized Sequence.forEach(_:)(v13);

  swift_setDeallocating();
  v14 = *(v13 + 16);
  swift_arrayDestroy();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v15 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v10, v10, 0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_26198A640;
  *(v16 + 32) = v15;

  specialized Sequence.forEach(_:)(v16);

  swift_setDeallocating();
  v17 = *(v16 + 16);
  swift_arrayDestroy();
  return v10;
}

uint64_t outlined consume of AudioFileBuilder.Cache?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined copy of AudioFileBuilder.Cache?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t specialized REAudioFileConfigurationWrapper.init(prim:)(uint64_t a1)
{
  v2 = v1;
  v41[1] = *MEMORY[0x277D85DE8];
  *(v1 + 16) = REAudioFileAssetConfigurationCreate();
  if (one-time initialization token for randomizeStart != -1)
  {
    swift_once();
  }

  v41[0] = static AudioConstants.AudioFile.randomizeStart;
  v4 = static AudioConstants.AudioFile.randomizeStart;
  v5 = Prim.attribute(_:)(v41);

  if (v5)
  {
    LOBYTE(v41[0]) = 0;
    RIOPxrVtValueGetBool();
  }

  REAudioFileAssetConfigurationSetRandomizeStart();
  v6 = *(v2 + 16);
  if (one-time initialization token for shouldLoop != -1)
  {
    swift_once();
  }

  v41[0] = static AudioConstants.AudioFile.shouldLoop;
  v7 = static AudioConstants.AudioFile.shouldLoop;
  v8 = Prim.attribute(_:)(v41);

  if (v8)
  {
    LOBYTE(v41[0]) = 0;
    RIOPxrVtValueGetBool();
  }

  REAudioFileAssetConfigurationSetShouldLoop();
  v9 = *(v2 + 16);
  if (one-time initialization token for mixGroup != -1)
  {
    swift_once();
  }

  v10 = *(a1 + 16);
  v11 = static AudioConstants.AudioFile.mixGroup;
  if (RIOPxrUsdPrimHasRelationship())
  {
    v12 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v13 = swift_allocObject();
    v13[2] = v12;
    v14 = Relationship.targets.getter();
    if (*(v14 + 16))
    {
      EmptyPath = *(v14 + 32);
    }

    else
    {

      EmptyPath = RIOPxrSdfPathCreateEmptyPath();
    }

    outlined consume of Result<AnyAttribute, Object.Error>(v13, 0);
    v16 = RIOPxrSdfPathCopyName();
  }

  else
  {

    v41[0] = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v41[0]);
    v16 = 0;
  }

  REAudioFileAssetConfigurationSetMixGroupName();

  v17 = *(v2 + 16);
  if (one-time initialization token for loadingStrategy != -1)
  {
    swift_once();
  }

  v41[0] = static AudioConstants.AudioFile.loadingStrategy;
  v18 = static AudioConstants.AudioFile.loadingStrategy;
  v19 = Prim.attribute(_:)(v41);

  if (v19)
  {
    v20 = RIOPxrVtValueCopyString();
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      if (v23)
      {
        v24 = String.lowercased()();
        if (v24._countAndFlagsBits == 0x6D6165727473 && v24._object == 0xE600000000000000)
        {
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }

    else
    {
    }
  }

  REAudioFileAssetConfigurationSetStreaming();
  v25 = *(v2 + 16);
  if (one-time initialization token for normalization != -1)
  {
    swift_once();
  }

  v41[0] = static AudioConstants.AudioFile.normalization;
  v26 = static AudioConstants.AudioFile.normalization;
  v27 = Prim.attribute(_:)(v41);

  if (v27)
  {
    v28 = RIOPxrVtValueCopyToken();

    if (v28)
    {
      v41[0] = v28;
      AudioConstants.AudioFile.Normalization.init(rawValue:)(v41, &v40);
    }
  }

  REAudioFileAssetConfigurationSetNormalizationMode();
  if (one-time initialization token for calibrationMode != -1)
  {
    swift_once();
  }

  v41[0] = static AudioConstants.AudioFile.calibrationMode;
  v29 = static AudioConstants.AudioFile.calibrationMode;
  v30 = Prim.attribute(_:)(v41);

  if (v30 && (v31 = RIOPxrVtValueCopyToken(), v30, v31) && (v41[0] = v31, AudioConstants.AudioFile.CalibrationMode.init(rawValue:)(v41, &v40), v40 != 3))
  {
    v38 = *(v2 + 16);
    if (v40 > 1u)
    {
      REAudioFileAssetConfigurationSetCalibrationMode();
      v39 = *(v2 + 16);
      if (String.count.getter() > 0)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v32 = *(v2 + 16);
  }

  REAudioFileAssetConfigurationSetCalibrationMode();
  v33 = *(v2 + 16);
  if (String.count.getter() >= 1)
  {
LABEL_38:
    v34 = RIOPxrTfTokenCreateWithCString();
    goto LABEL_40;
  }

LABEL_39:
  v34 = RIOPxrTfTokenEmpty();
LABEL_40:
  v41[0] = v34;
  v35 = Prim.attribute(_:)(v41);

  if (v35)
  {
    v41[0] = 0;
    RIOPxrVtValueGetDouble();
  }

  REAudioFileAssetConfigurationSetCalibrationLevel();
  v36 = *MEMORY[0x277D85DE8];
  return v2;
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

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __RKEntityMoveSelection.init(inputs:)@<X0>(uint64_t a1@<X8>)
{
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v14);
  if (v1)
  {

LABEL_3:
    lazy protocol witness table accessor for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v4 = v14;
  v5 = RIOPxrTfTokenCopyString();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  v10 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveSelectionUSD.init(rawValue:), v9);

  if (v10)
  {
    if (v10 != 1)
    {
      goto LABEL_3;
    }

    v11 = MEMORY[0x277CDAE90];
  }

  else
  {

    v11 = MEMORY[0x277CDAE98];
  }

  v12 = *v11;
  v13 = type metadata accessor for __RKEntityMoveSelection();
  return (*(*(v13 - 8) + 104))(a1, v12, v13);
}

unint64_t lazy protocol witness table accessor for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveSelection.MoveSelectionLoadingError and conformance __RKEntityMoveSelection.MoveSelectionLoadingError);
  }

  return result;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = _HashTable.startBucket.getter();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    specialized Set.subscript.getter(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for SceneDescriptionFoundations.Layer.ReplicationMessagePublisher();
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
    }
  }

  return 0;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

void *specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for RIOPxrVtValueRef(0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t CompileSession.CompilationOption_RequireIncludeMetadata_Default.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 16) = 0;
  }

  return v1 & 1;
}

uint64_t CompileSession.CompilationOption_DumpDiagnosticsData_Default.getter()
{
  v1 = *(v0 + 17);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 17) = 0;
  }

  return v1 & 1;
}

uint64_t CompileSession.CompilationOption_DumpDiagnosticsDirectory_Default.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32))
  {
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
  }

  else
  {
    v9 = [objc_opt_self() defaultManager];
    v10 = [v9 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = URL.path.getter();
    v12 = v11;
    (*(v3 + 8))(v6, v2);
    v13 = *(v1 + 32);
    *(v1 + 24) = v7;
    *(v1 + 32) = v12;
  }

  return v7;
}

uint64_t CompileSession.CompilationOption_ForceIncludeUnusedMaterials_Default.getter()
{
  v1 = *(v0 + 40);
  if (v1 == 2)
  {
    LOBYTE(v1) = 1;
    *(v0 + 40) = 1;
  }

  return v1 & 1;
}

uint64_t CompileSession.sourcePaths.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t CompileSession.exportOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9RealityIO14CompileSession_exportOptions;
  swift_beginAccess();
  v4 = type metadata accessor for __REAssetBundle.ExportOptions();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t CompileSession.basePath.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9RealityIO14CompileSession_basePath);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t CompileSession.deploymentTargets.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9RealityIO14CompileSession_deploymentTargets;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CompileSession.DeploymentTarget_Default.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v19[-v13];
  v15 = OBJC_IVAR____TtC9RealityIO14CompileSession____lazy_storage___DeploymentTarget_Default;
  swift_beginAccess();
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v1 + v15, v14, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v16 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return (*(v17 + 32))(a1, v14, v16);
  }

  outlined destroy of Any?(v14, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  (*(v4 + 104))(v7, *MEMORY[0x277CDACB8], v3);
  __REAssetBundle.ExportOptions.DeploymentTarget.init(platform:version:)();
  (*(v17 + 16))(v11, a1, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  swift_beginAccess();
  outlined assign with take of (URL, __REAsset)(v11, v1 + v15, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  return swift_endAccess();
}

uint64_t CompileSession.compilationOptions.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

void CompileSession.compatibilityFaults.getter()
{
  v1 = OBJC_IVAR____TtC9RealityIO14CompileSession__compatibilityFaults;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  for (i = MEMORY[0x277D84FA0]; v5; i = v13)
  {
    v9 = v7;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));

    specialized Set.union<A>(_:)(v12, i);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportSession.EvaluationFault(0);
  v21[0] = *(v4 - 8);
  v5 = *(v21[0] + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v14 = 0;
  v21[1] = a2;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    outlined init with copy of CompileSession.ImportSessionData(*(a1 + 48) + *(v21[0] + 72) * (v20 | (v19 << 6)), v13, type metadata accessor for ImportSession.EvaluationFault);
    outlined init with take of CompileSession.ImportSessionData(v13, v7, type metadata accessor for ImportSession.EvaluationFault);
    specialized Set._Variant.insert(_:)(v10, v7);
    outlined destroy of CompileSession.ImportSessionData(v10, type metadata accessor for ImportSession.EvaluationFault);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(a1 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t CompileSession.includeUnusedMaterials.getter()
{
  v1 = OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CompileSession.includeUnusedMaterials.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CompileSession.loadSubdsAsSubds.getter()
{
  v1 = OBJC_IVAR____TtC9RealityIO14CompileSession_loadSubdsAsSubds;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CompileSession.loadSubdsAsSubds.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9RealityIO14CompileSession_loadSubdsAsSubds;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t CompileSession.LoadError.errorDescription.getter(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(31);

    v8 = 0xD00000000000001DLL;
    v5 = a1;
    v6 = a2;
  }

  else
  {
    _StringGuts.grow(_:)(48);

    v8 = 0xD000000000000023;
    MEMORY[0x26670F080](a1, a2);
    v5 = 0x6E7562206E692022;
    v6 = 0xEB00000000656C64;
  }

  MEMORY[0x26670F080](v5, v6);
  return v8;
}

uint64_t CompileSession.__allocating_init(sourcePaths:exportOptions:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  CompileSession.init(sourcePaths:exportOptions:)(a1, a2);
  return v7;
}

uint64_t CompileSession.init(sourcePaths:exportOptions:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v86 = a1;
  v5 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v74 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for URL();
  v84 = *(v90 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v90);
  v75 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v73 - v12;
  v13 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = *(v87 + 64);
  MEMORY[0x28223BE20](v13);
  v73 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v80 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v85 = &v73 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v73 - v26;
  *(v3 + 16) = 514;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 2;
  (*(v6 + 56))(v3 + OBJC_IVAR____TtC9RealityIO14CompileSession____lazy_storage___DeploymentTarget_Default, 1, 1, v5, v25);
  v28 = OBJC_IVAR____TtC9RealityIO14CompileSession__compatibilityFaults;
  *(v3 + v28) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Shy9RealityIO13ImportSessionC15EvaluationFaultOGTt0g5Tf4g_nTm(MEMORY[0x277D84F90], &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
  *(v3 + OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials) = 0;
  *(v3 + OBJC_IVAR____TtC9RealityIO14CompileSession_loadSubdsAsSubds) = 1;
  static os_log_type_t.info.getter();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v29 = swift_allocObject();
  v89 = xmmword_2619891C0;
  *(v29 + 16) = xmmword_2619891C0;
  __REAssetBundle.ExportOptions.deploymentTarget.getter();
  v76 = v6;
  v30 = *(v6 + 48);
  LODWORD(v28) = v30(v27, 1, v5);
  outlined destroy of Any?(v27, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v82 = a2;
  v83 = v3;
  v81 = v5;
  v78 = v30;
  v79 = v6 + 48;
  if (v28 == 1)
  {
    v31 = 0xE400000000000000;
    v32 = 1701736302;
  }

  else
  {
    __REAssetBundle.ExportOptions.deploymentTarget.getter();
    result = (v30)(v23, 1, v5);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v34 = v73;
    __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
    (*(v76 + 8))(v23, v5);
    v32 = __REAssetBundle.ExportOptions.PlatformOS.rawValue.getter();
    v31 = v35;
    (*(v87 + 8))(v34, v88);
  }

  v36 = v86;
  v37 = v90;
  *(v29 + 56) = MEMORY[0x277D837D0];
  v88 = lazy protocol witness table accessor for type String and conformance String();
  *(v29 + 64) = v88;
  *(v29 + 32) = v32;
  *(v29 + 40) = v31;
  v87 = type metadata accessor for OS_os_log();
  v38 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v39 = *(v36 + 16);
  v40 = v91;
  if (v39)
  {
    v41 = *(v84 + 16);
    v42 = v86 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v43 = *(v84 + 72);
    v44 = (v84 + 8);
    do
    {
      v41(v40, v42, v37);
      static os_log_type_t.info.getter();
      v45 = swift_allocObject();
      *(v45 + 16) = v89;
      v46 = URL.path.getter();
      v47 = v88;
      *(v45 + 56) = MEMORY[0x277D837D0];
      *(v45 + 64) = v47;
      *(v45 + 32) = v46;
      *(v45 + 40) = v48;
      v49 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
      v37 = v90;

      v40 = v91;
      (*v44)(v91, v37);
      v42 += v43;
      --v39;
    }

    while (v39);
  }

  v50 = v83;
  v51 = v86;
  *(v83 + 48) = v86;
  v52 = OBJC_IVAR____TtC9RealityIO14CompileSession_exportOptions;
  v53 = type metadata accessor for __REAssetBundle.ExportOptions();
  v54 = *(v53 - 8);
  v55 = v82;
  (*(v54 + 16))(v50 + v52, v82, v53);
  if (*(v51 + 16))
  {
    v56 = v84;
    v57 = v75;
    (*(v84 + 16))(v75, v51 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v37);
    v58 = specialized static CompileSession.findRKAssets(sourcePath:)(v57);
    v60 = v59;
    (*(v56 + 8))(v57, v37);
  }

  else
  {
    v58 = 0;
    v60 = 0xE000000000000000;
  }

  v61 = v81;
  v62 = v85;
  v63 = v78;
  v64 = (v50 + OBJC_IVAR____TtC9RealityIO14CompileSession_basePath);
  *v64 = v58;
  v64[1] = v60;
  *(v50 + OBJC_IVAR____TtC9RealityIO14CompileSession_compilationOptions) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  __REAssetBundle.ExportOptions.deploymentTarget.getter();
  v65 = v80;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v62, v80, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  if (v63(v65, 1, v61) == 1)
  {
    v66 = MEMORY[0x277D84FA0];
  }

  else
  {
    v91 = v53;
    v67 = v76;
    v68 = v74;
    (*(v76 + 32))(v74, v65, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVGMR);
    v69 = *(v67 + 72);
    v70 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = v89;
    (*(v67 + 16))(v71 + v70, v68, v61);
    v66 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetV_Tt0g5Tf4g_n(v71);
    swift_setDeallocating();
    v72 = *(v67 + 8);
    v72(v71 + v70, v61);
    v62 = v85;
    swift_deallocClassInstance();
    v72(v68, v61);
    v53 = v91;
  }

  outlined destroy of Any?(v62, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  (*(v54 + 8))(v55, v53);
  *(v50 + OBJC_IVAR____TtC9RealityIO14CompileSession_deploymentTargets) = v66;
  return v50;
}

uint64_t CompileSession.__allocating_init(sourcePaths:exportOptions:compilationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for __REAssetBundle.ExportOptions();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v11, a2, v6, v9);
  v12 = type metadata accessor for CompileSession(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  CompileSession.init(sourcePaths:exportOptions:)(a1, v11);
  if (!*(a3 + 16))
  {

    goto LABEL_6;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000002619955B0);
  if ((v17 & 1) == 0)
  {
LABEL_6:

    (*(v7 + 8))(a2, v6);
    goto LABEL_7;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v16, v22);
  (*(v7 + 8))(a2, v6);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v18 = CompileSession.CompilationOption_ForceIncludeUnusedMaterials_Default.getter();
    goto LABEL_8;
  }

  v18 = v21[15];
LABEL_8:
  v19 = OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials;
  swift_beginAccess();
  *(v15 + v19) = v18 & 1;

  return v15;
}

uint64_t CompileSession.__allocating_init(basePath:sourcePaths:exportOptions:compilationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  CompileSession.init(basePath:sourcePaths:exportOptions:compilationOptions:)(a1, a2, a3, a4);
  return v11;
}

uint64_t CompileSession.init(basePath:sourcePaths:exportOptions:compilationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v88 = a4;
  v95 = a2;
  v92 = a1;
  v7 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v80 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v93 = *(v11 - 8);
  v94 = v11;
  v12 = *(v93 + 64);
  MEMORY[0x28223BE20](v11);
  v100 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v96 = *(v14 - 8);
  v97 = v14;
  v15 = *(v96 + 64);
  MEMORY[0x28223BE20](v14);
  v79 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v86 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v90 = &v79 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v79 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v79 - v27;
  *(v4 + 16) = 514;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 2;
  (*(v8 + 56))(v4 + OBJC_IVAR____TtC9RealityIO14CompileSession____lazy_storage___DeploymentTarget_Default, 1, 1, v7, v26);
  v29 = OBJC_IVAR____TtC9RealityIO14CompileSession__compatibilityFaults;
  *(v4 + v29) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Shy9RealityIO13ImportSessionC15EvaluationFaultOGTt0g5Tf4g_nTm(MEMORY[0x277D84F90], &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
  v30 = OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials;
  *(v4 + OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials) = 0;
  *(v4 + OBJC_IVAR____TtC9RealityIO14CompileSession_loadSubdsAsSubds) = 1;
  LODWORD(v98) = static os_log_type_t.info.getter();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v31 = swift_allocObject();
  v99 = xmmword_2619891C0;
  *(v31 + 16) = xmmword_2619891C0;
  v32 = a3;
  __REAssetBundle.ExportOptions.deploymentTarget.getter();
  v81 = v8;
  v33 = *(v8 + 48);
  v34 = v33(v28, 1, v7);
  outlined destroy of Any?(v28, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v89 = v5;
  v91 = v32;
  v82 = v30;
  v87 = v7;
  v85 = v8 + 48;
  v84 = v33;
  if (v34 == 1)
  {
    v35 = 0xE400000000000000;
    v36 = 1701736302;
    goto LABEL_5;
  }

  __REAssetBundle.ExportOptions.deploymentTarget.getter();
  result = (v33)(v24, 1, v7);
  if (result != 1)
  {
    v38 = v79;
    __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
    (*(v81 + 8))(v24, v7);
    v36 = __REAssetBundle.ExportOptions.PlatformOS.rawValue.getter();
    v35 = v39;
    (*(v96 + 8))(v38, v97);
LABEL_5:
    v40 = v100;
    *(v31 + 56) = MEMORY[0x277D837D0];
    v98 = lazy protocol witness table accessor for type String and conformance String();
    *(v31 + 64) = v98;
    *(v31 + 32) = v36;
    *(v31 + 40) = v35;
    v97 = type metadata accessor for OS_os_log();
    v41 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v42 = v94;
    v43 = *(v95 + 16);
    if (v43)
    {
      v96 = *(v93 + 16);
      v44 = v95 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
      v45 = *(v93 + 72);
      v46 = (v93 + 8);
      do
      {
        (v96)(v40, v44, v42);
        static os_log_type_t.info.getter();
        v47 = swift_allocObject();
        *(v47 + 16) = v99;
        v48 = URL.path.getter();
        v49 = v98;
        *(v47 + 56) = MEMORY[0x277D837D0];
        *(v47 + 64) = v49;
        *(v47 + 32) = v48;
        *(v47 + 40) = v50;
        v51 = static OS_os_log.default.getter();
        v40 = v100;
        os_log(_:dso:log:_:_:)();

        (*v46)(v40, v42);
        v44 += v45;
        --v43;
      }

      while (v43);
    }

    v52 = v89;
    *(v89 + 48) = v95;
    v53 = OBJC_IVAR____TtC9RealityIO14CompileSession_exportOptions;
    v54 = type metadata accessor for __REAssetBundle.ExportOptions();
    v55 = *(v54 - 8);
    v56 = v91;
    (*(v55 + 16))(v52 + v53, v91, v54);
    v57 = v92;
    v58 = URL.path.getter();
    v59 = (v52 + OBJC_IVAR____TtC9RealityIO14CompileSession_basePath);
    *v59 = v58;
    v59[1] = v60;
    v61 = v88;
    *(v52 + OBJC_IVAR____TtC9RealityIO14CompileSession_compilationOptions) = v88;

    v62 = v90;
    __REAssetBundle.ExportOptions.deploymentTarget.getter();
    v63 = v86;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v62, v86, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    v64 = v87;
    if (v84(v63, 1, v87) == 1)
    {
      v65 = MEMORY[0x277D84FA0];
    }

    else
    {
      v100 = v54;
      v66 = v81;
      v67 = v80;
      (*(v81 + 32))(v80, v63, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVGMR);
      v68 = *(v66 + 72);
      v69 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = v99;
      (*(v66 + 16))(v70 + v69, v67, v64);
      v65 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetV_Tt0g5Tf4g_n(v70);
      swift_setDeallocating();
      v71 = *(v66 + 8);
      v72 = v70 + v69;
      v62 = v90;
      v71(v72, v64);
      swift_deallocClassInstance();
      v73 = v67;
      v56 = v91;
      v71(v73, v64);
      v54 = v100;
      v57 = v92;
    }

    v74 = v94;
    outlined destroy of Any?(v62, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    *(v52 + OBJC_IVAR____TtC9RealityIO14CompileSession_deploymentTargets) = v65;
    if (*(v61 + 16) && (v75 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000002619955B0), (v76 & 1) != 0))
    {
      outlined init with copy of Any(*(v61 + 56) + 32 * v75, v102);
      (*(v55 + 8))(v56, v54);
      (*(v93 + 8))(v57, v74);

      if (swift_dynamicCast())
      {
        v77 = v101;
        v78 = v82;
LABEL_17:
        swift_beginAccess();
        *(v52 + v78) = v77 & 1;
        return v52;
      }
    }

    else
    {

      (*(v55 + 8))(v56, v54);
      (*(v93 + 8))(v57, v74);
    }

    v78 = v82;
    v77 = CompileSession.CompilationOption_ForceIncludeUnusedMaterials_Default.getter();
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static CompileSession.cartesianProduct(of:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2619891C0;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *a2 = v5;
}

uint64_t CompileSession.postOperationsAndExtraAssets(for:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v156 = a2;
  v147 = type metadata accessor for __AssetRef();
  v152 = *(v147 - 8);
  v5 = *(v152 + 64);
  MEMORY[0x28223BE20](v147);
  v146 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  v143 = *(v145 - 8);
  v7 = *(v143 + 64);
  MEMORY[0x28223BE20](v145);
  v154 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v144 = &v138 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v138 = &v138 - v13;
  v150 = type metadata accessor for Date();
  v142 = *(v150 - 8);
  v14 = v142[8];
  MEMORY[0x28223BE20](v150);
  v141 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for UUID();
  v139 = *(v140 - 1);
  v16 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v18 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for URL();
  v153 = *(v149 - 8);
  v19 = *(v153 + 64);
  MEMORY[0x28223BE20](v149);
  v151 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v155 = &v138 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v138 - v24;
  v26 = type metadata accessor for Entity.ChildCollection();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v138 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = a1;
  v31 = *(a1 + 24);
  v32 = dispatch thunk of Entity.name.getter();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {
    type metadata accessor for Entity();
    HasHierarchy.children.getter();
    lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection, MEMORY[0x277CDB190]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v36 = dispatch thunk of Collection.distance(from:to:)();
    v37 = *(v27 + 8);
    v37(v30, v26);
    if (v36 == 1)
    {
      HasHierarchy.children.getter();
      Entity.ChildCollection.subscript.getter();
      v37(v30, v26);
      dispatch thunk of Entity.name.getter();

      dispatch thunk of Entity.name.setter();
    }
  }

  v38 = OBJC_IVAR____TtC9RealityIO14CompileSession_compilationOptions;
  swift_beginAccess();
  v39 = *(v3 + v38);
  if (*(v39 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(0x67616944706D7544, 0xEF73636974736F6ELL), (v41 & 1) != 0))
  {
    outlined init with copy of Any(*(v39 + 56) + 32 * v40, &v161);
  }

  else
  {
    v162 = 0u;
    v161 = 0u;
  }

  swift_endAccess();
  if (*(&v162 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v160 != 1)
      {
        goto LABEL_28;
      }

LABEL_16:
      swift_beginAccess();
      v42 = *(v3 + v38);
      if (*(v42 + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x8000000261995590), (v44 & 1) != 0))
      {
        outlined init with copy of Any(*(v42 + 56) + 32 * v43, &v161);
      }

      else
      {
        v162 = 0u;
        v161 = 0u;
      }

      v45 = v140;
      swift_endAccess();
      if (*(&v162 + 1))
      {
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {
        outlined destroy of Any?(&v161, &_sypSgMd, &_sypSgMR);
      }

      CompileSession.CompilationOption_DumpDiagnosticsDirectory_Default.getter();
LABEL_25:
      v46 = v155;
      URL.init(fileURLWithPath:)();

      URL.lastPathComponent.getter();
      URL.appendingPathComponent(_:)();

      v140 = *(v153 + 8);
      (v140)(v46, v149);
      UUID.init()();
      v47 = UUID.uuidString.getter();
      v49 = v48;
      (*(v139 + 8))(v18, v45);
      *&v161 = v47;
      *(&v161 + 1) = v49;

      MEMORY[0x26670F080](45, 0xE100000000000000);

      v50 = *(&v161 + 1);
      v139 = v161;
      v51 = v141;
      Date.init()();
      v52 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v53 = MEMORY[0x26670EFB0](0xD000000000000016, 0x8000000261995940);
      [v52 setDateFormat_];

      isa = Date._bridgeToObjectiveC()().super.isa;
      v55 = [v52 stringFromDate_];

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = v140;
      (v142[1])(v51, v150);
      *&v161 = v139;
      *(&v161 + 1) = v50;

      MEMORY[0x26670F080](v56, v58);

      v60 = v161;
      v61 = v151;
      URL.deletingLastPathComponent()();
      *&v161 = URL.lastPathComponent.getter();
      *(&v161 + 1) = v62;

      MEMORY[0x26670F080](45, 0xE100000000000000);

      MEMORY[0x26670F080](v60, *(&v60 + 1));

      v63 = v155;
      URL.appendingPathComponent(_:)();

      v64 = v149;
      v59(v61, v149);
      v59(v25, v64);
      (*(v153 + 32))(v25, v63, v64);
      static os_log_type_t.info.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_26198A8E0;
      v66 = URL.path.getter();
      v68 = v67;
      v69 = MEMORY[0x277D837D0];
      *(v65 + 56) = MEMORY[0x277D837D0];
      v70 = lazy protocol witness table accessor for type String and conformance String();
      *(v65 + 64) = v70;
      *(v65 + 32) = v66;
      *(v65 + 40) = v68;
      v71 = URL.path.getter();
      *(v65 + 96) = v69;
      *(v65 + 104) = v70;
      *(v65 + 72) = v71;
      *(v65 + 80) = v72;
      type metadata accessor for OS_os_log();
      v73 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      URL.path.getter();
      v74 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      v75 = v148;
      swift_beginAccess();
      v76 = *(v75 + v74);
      String.utf8CString.getter();
      v77 = v76;

      LOBYTE(v63) = RIOImportSessionDumpDiagnostics();

      if ((v63 & 1) == 0)
      {
        static os_log_type_t.info.getter();
        v78 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();
      }

      v59(v25, v149);
      goto LABEL_28;
    }
  }

  else
  {
    outlined destroy of Any?(&v161, &_sypSgMd, &_sypSgMR);
  }

  if (CompileSession.CompilationOption_DumpDiagnosticsData_Default.getter())
  {
    goto LABEL_16;
  }

LABEL_28:
  v79 = OBJC_IVAR____TtC9RealityIO14CompileSession_deploymentTargets;
  swift_beginAccess();
  v80 = *(v3 + v79);

  v82 = v148;
  v83 = ImportSession.getCompatibilityFaultsByPrimPath(for:)(v81);

  v84 = OBJC_IVAR____TtC9RealityIO14CompileSession__compatibilityFaults;
  swift_beginAccess();
  v85 = *(v3 + v84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v159[0] = *(v3 + v84);
  *(v3 + v84) = 0x8000000000000000;
  v87 = 0;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v83, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v159);

  *(v3 + v84) = v159[0];
  swift_endAccess();
  v88 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v151 = v88;
  v89 = *(v82 + v88);
  v90 = RIOImportSessionCopyExtraAssetTags();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *&v161 = 0;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v161)
    {
      v91 = v161;
    }

    else
    {
      v91 = MEMORY[0x277D84F90];
    }
  }

  else
  {

    v91 = MEMORY[0x277D84F90];
  }

  v155 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation3URLV_10RealityKit9__REAssetCtTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v150 = *(v91 + 16);
  if (!v150)
  {
LABEL_58:

    return v155;
  }

  v142 = (v3 + OBJC_IVAR____TtC9RealityIO14CompileSession_basePath);
  swift_beginAccess();
  v92 = 0;
  v141 = (v153 + 16);
  v140 = (v152 + 8);
  v93 = (v91 + 40);
  v139 = v91;
  while (v92 < *(v91 + 16))
  {
    v94 = *(v93 - 1);
    v95 = *v93;
    v96 = *&v151[v82];
    v90 = String.utf8CString.getter();

    v87 = v96;
    ExtraAssetWithTag = RIOImportSessionGetExtraAssetWithTag();

    if (ExtraAssetWithTag)
    {
      v152 = v94;
      v153 = ExtraAssetWithTag;
      v99 = *v142;
      v98 = v142[1];

      v90 = URL.path.getter();
      v101 = v100;
      *&v161 = v90;
      *(&v161 + 1) = v100;
      v157 = v99;
      v158 = v98;
      lazy protocol witness table accessor for type String and conformance String();
      lazy protocol witness table accessor for type String and conformance String();
      if (BidirectionalCollection<>.starts<A>(with:)())
      {
        *&v161 = v90;
        *(&v161 + 1) = v101;
        v157 = v99;
        v158 = v98;
        v102 = type metadata accessor for Locale();
        v103 = v138;
        (*(*(v102 - 8) + 56))(v138, 1, 1, v102);
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.range<A>(of:options:range:locale:)();
        v105 = v104;
        v87 = v106;
        outlined destroy of Any?(v103, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

        if (v87)
        {
          v107 = 15;
        }

        else
        {
          v107 = v105;
        }

        v108 = HIBYTE(v101) & 0xF;
        if ((v101 & 0x2000000000000000) == 0)
        {
          v108 = v90 & 0xFFFFFFFFFFFFLL;
        }

        if (4 * v108 < v107 >> 14)
        {
          goto LABEL_61;
        }

        v109 = String.subscript.getter();
        v111 = v110;
        v113 = v112;
        v115 = v114;

        v90 = MEMORY[0x26670F020](v109, v111, v113, v115);
        v101 = v116;
      }

      *&v161 = v90;
      *(&v161 + 1) = v101;

      MEMORY[0x26670F080](58, 0xE100000000000000);

      MEMORY[0x26670F080](v152, v95);

      v90 = *(&v161 + 1);
      v117 = v161;
      v87 = *(v145 + 48);
      v118 = v144;
      (*v141)(v144, v156, v149);
      type metadata accessor for __REAsset();
      *(&v162 + 1) = MEMORY[0x277D841D8];
      *&v161 = v153;
      v119 = v146;
      static __AssetRef.__fromCore(_:)();
      __swift_destroy_boxed_opaque_existential_0(&v161);
      v120 = static __REAsset.__fromHandle(_:)();
      (*v140)(v119, v147);
      *(v118 + v87) = v120;
      outlined init with take of (URL, __REAsset)(v118, v154, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      v121 = v155;
      v122 = swift_isUniquelyReferenced_nonNull_native();
      *&v161 = v121;
      v123 = specialized __RawDictionaryStorage.find<A>(_:)(v117, v90);
      v125 = *(v121 + 2);
      v126 = (v124 & 1) == 0;
      v127 = __OFADD__(v125, v126);
      v128 = v125 + v126;
      if (v127)
      {
        goto LABEL_60;
      }

      v129 = v124;
      if (*(v121 + 3) >= v128)
      {
        if (v122)
        {
          goto LABEL_52;
        }

        v87 = v123;
        specialized _NativeDictionary.copy()();
        v123 = v87;
        if ((v129 & 1) == 0)
        {
          goto LABEL_55;
        }

LABEL_53:
        v131 = v123;

        v155 = v161;
        outlined assign with take of (URL, __REAsset)(v154, *(v161 + 56) + *(v143 + 72) * v131, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v128, v122);
        v123 = specialized __RawDictionaryStorage.find<A>(_:)(v117, v90);
        if ((v129 & 1) != (v130 & 1))
        {
          goto LABEL_63;
        }

LABEL_52:
        if (v129)
        {
          goto LABEL_53;
        }

LABEL_55:
        v132 = v161;
        *(v161 + 8 * (v123 >> 6) + 64) |= 1 << v123;
        v133 = (*(v132 + 6) + 16 * v123);
        *v133 = v117;
        v133[1] = v90;
        outlined init with take of (URL, __REAsset)(v154, *(v132 + 7) + *(v143 + 72) * v123, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
        v134 = *(v132 + 2);
        v127 = __OFADD__(v134, 1);
        v135 = v134 + 1;
        if (v127)
        {
          goto LABEL_62;
        }

        v155 = v132;
        *(v132 + 2) = v135;
      }

      v82 = v148;
      v91 = v139;
      goto LABEL_36;
    }

LABEL_36:
    ++v92;
    v93 += 2;
    if (v150 == v92)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  v137 = *(v92 + v90);
  *(v92 + v90) = v159[0];

  __break(1u);
  return result;
}

uint64_t CompileSession.compileSync(outputPath:)(unint64_t a1)
{
  v2 = v1;
  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2619891C0;
  v5 = URL.path.getter();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  type metadata accessor for OS_os_log();
  v8 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v22 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation3URLV_10RealityKit9__REAssetCtTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  type metadata accessor for USDImportService();
  inited = swift_initStackObject();

  static os_log_type_t.info.getter();
  v10 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v11 = (v2 + OBJC_IVAR____TtC9RealityIO14CompileSession_basePath);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];

  v14._countAndFlagsBits = 47;
  v14._object = 0xE100000000000000;
  LOBYTE(v8) = String.hasSuffix(_:)(v14);

  if ((v8 & 1) == 0)
  {
    swift_beginAccess();
    MEMORY[0x26670F080](47, 0xE100000000000000);
    swift_endAccess();
  }

  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Shy9RealityIO13ImportSessionC15EvaluationFaultOGTt0g5Tf4g_nTm(MEMORY[0x277D84F90], &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
  v16 = OBJC_IVAR____TtC9RealityIO14CompileSession__compatibilityFaults;
  swift_beginAccess();
  v17 = *(v2 + v16);
  *(v2 + v16) = v15;

  closure #1 in CompileSession.compileSync(outputPath:)(v2, inited, &v20, &v21, &v22, a1, &v19);
}

uint64_t closure #1 in CompileSession.compileSync(outputPath:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, size_t *a5, unint64_t a6, uint64_t *a7)
{
  v486 = a7;
  v513 = a6;
  v519 = a5;
  v516 = a4;
  v541 = a3;
  v560 = *MEMORY[0x277D85DE8];
  v502 = type metadata accessor for __AssetRef();
  v468 = *(v502 - 8);
  v9 = *(v468 + 64);
  MEMORY[0x28223BE20](v502);
  v501 = &v466 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE12WriteOptionsV15TextureFileSizeOSgMd, &_s10RealityKit6EntityC0A10FoundationE12WriteOptionsV15TextureFileSizeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v475 = &v466 - v13;
  v14 = type metadata accessor for Entity.WriteOptions.TextureFileSize();
  v479 = *(v14 - 8);
  v480 = v14;
  v15 = *(v479 + 64);
  MEMORY[0x28223BE20](v14);
  v473 = &v466 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v478 = &v466 - v18;
  v19 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v470 = *(v19 - 8);
  v471 = v19;
  v20 = *(v470 + 64);
  MEMORY[0x28223BE20](v19);
  v469 = &v466 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v514 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  RealityKitOptionBool = *(v514 - 8);
  v23 = *(RealityKitOptionBool + 64);
  MEMORY[0x28223BE20](v514);
  v472 = &v466 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtMd, &_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtMR);
  v485 = *(v532 - 8);
  v25 = *(v485 + 64);
  MEMORY[0x28223BE20](v532);
  v523 = (&v466 - v26);
  v507 = type metadata accessor for CompileSession.ImportSessionData(0);
  v525 = *(v507 - 8);
  v27 = *(v525 + 64);
  MEMORY[0x28223BE20](v507);
  v529 = &v466 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v499 = (&v466 - v30);
  MEMORY[0x28223BE20](v31);
  v509 = (&v466 - v32);
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  v550 = *(v515 - 8);
  v33 = *(v550 + 64);
  MEMORY[0x28223BE20](v515 - 8);
  v500 = &v466 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v521 = &v466 - v36;
  MEMORY[0x28223BE20](v37);
  v551 = &v466 - v38;
  MEMORY[0x28223BE20](v39);
  v546 = &v466 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMR);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v511 = (&v466 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v44);
  v508 = &v466 - v45;
  MEMORY[0x28223BE20](v46);
  *&v549 = &v466 - v47;
  MEMORY[0x28223BE20](v48);
  v548 = (&v466 - v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttSgMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttSgMR);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v544 = (&v466 - v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v476 = &v466 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v496 = &v466 - v57;
  MEMORY[0x28223BE20](v58);
  v488 = &v466 - v59;
  MEMORY[0x28223BE20](v60);
  v491 = &v466 - v61;
  MEMORY[0x28223BE20](v62);
  v490 = &v466 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v489 = &v466 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtSgMd, &_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtSgMR);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67 - 8);
  v540 = &v466 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v531 = (&v466 - v71);
  v72 = type metadata accessor for URL();
  v73 = *(v72 - 8);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  v520 = &v466 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v510 = &v466 - v77;
  MEMORY[0x28223BE20](v78);
  v80 = &v466 - v79;
  swift_beginAccess();
  v81 = *(a1 + 48);
  v82 = *(v81 + 16);
  v538 = v72;
  v522 = a1;
  v524 = v73;
  v528 = v82;
  v477 = RealityKitOptionBool;
  v543 = v7;
  if (!v82)
  {
    goto LABEL_145;
  }

  v492 = OBJC_IVAR____TtC9RealityIO14CompileSession_compilationOptions;
  v83 = (a1 + OBJC_IVAR____TtC9RealityIO14CompileSession_basePath);
  v84 = OBJC_IVAR____TtC9RealityIO14CompileSession_includeUnusedMaterials;
  v85 = OBJC_IVAR____TtC9RealityIO14CompileSession_deploymentTargets;
  v86 = OBJC_IVAR____TtC9RealityIO14CompileSession_loadSubdsAsSubds;
  v527 = v81 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
  v530 = v81;

  v505 = v84;
  swift_beginAccess();
  v504 = v85;
  swift_beginAccess();
  v503 = v86;
  v87 = v543;
  swift_beginAccess();
  v506 = v83;
  swift_beginAccess();
  v89 = v530;
  v90 = 0;
  v535 = v73 + 16;
  v533 = (v73 + 8);
  v487 = "unknown reducedTextureSize %@";
  v483 = "relativeCalibration";
  v484 = (RealityKitOptionBool + 32);
  v497 = (RealityKitOptionBool + 56);
  v498 = (RealityKitOptionBool + 48);
  v526 = v80;
  while (1)
  {
    if (v90 >= *(v89 + 16))
    {
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
      goto LABEL_252;
    }

    v91 = *(v73 + 72);
    v539 = v90;
    v534 = *(v73 + 16);
    v534(v80, v527 + v91 * v90, v72);
    LODWORD(v92) = URL.isFileURL.getter();
    if ((v92 & 1) == 0)
    {
      goto LABEL_4;
    }

    v93 = 0;
    v94 = MEMORY[0x277D84F90];
LABEL_9:
    v95 = 6;
    if (v93 > 6)
    {
      v95 = v93;
    }

    v96 = v95 + 1;
    v97 = (&outlined read-only object #0 of one-time initialization function for supportedFilePathExtensions + 16 * v93 + 40);
    while (v93 != 6)
    {
      if (v96 == ++v93)
      {
        __break(1u);
        goto LABEL_167;
      }

      v98 = v97 + 2;
      v99 = *v97;
      v97 += 2;
      if (v99)
      {
        v100 = *(v98 - 3);

        LODWORD(v92) = swift_isUniquelyReferenced_nonNull_native();
        if ((v92 & 1) == 0)
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 16) + 1, 1, v94);
          v94 = v92;
        }

        v102 = *(v94 + 16);
        v101 = *(v94 + 24);
        RealityKitOptionBool = v102 + 1;
        if (v102 >= v101 >> 1)
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v94);
          v94 = v92;
        }

        *(v94 + 16) = RealityKitOptionBool;
        v103 = v94 + 16 * v102;
        *(v103 + 32) = v100;
        *(v103 + 40) = v99;
        v80 = v526;
        goto LABEL_9;
      }
    }

    URL.pathExtension.getter();
    v104 = String.lowercased()();

    v557 = v104;
    MEMORY[0x28223BE20](v105);
    v464 = &v557;
    RealityKitOptionBool = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v466 - 4), v94);

    if ((RealityKitOptionBool & 1) == 0)
    {
      v72 = v538;
      v73 = v524;
LABEL_4:
      (*v533)(v80, v72);
      goto LABEL_5;
    }

    URL._bridgeToObjectiveC()(v106);
    RealityKitOptionBool = v107;
    v108 = RIOPxrUsdStageCreateWithFileURL();

    v72 = v538;
    v109 = v522;
    if (!v108)
    {
      (*v533)(v80, v538);
      v73 = v524;
      goto LABEL_5;
    }

    v110 = v492;
    swift_beginAccess();
    v111 = *(v109 + v110);
    if (*(v111 + 16) && (v112 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, v483 | 0x8000000000000000), (v113 & 1) != 0))
    {
      outlined init with copy of Any(*(v111 + 56) + 32 * v112, &v557);
    }

    else
    {
      v557 = 0u;
      v558 = 0u;
    }

    swift_endAccess();
    if (*(&v558 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v555 != 1)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else
    {
      outlined destroy of Any?(&v557, &_sypSgMd, &_sypSgMR);
    }

    if ((CompileSession.CompilationOption_RequireIncludeMetadata_Default.getter() & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_33:
    v114 = RIOPxrTfTokenCreateWithCString();
    RealityKitOptionBool = RIOPxrUsdUtilsStageGetRealityKitOptionBool();

    if ((RealityKitOptionBool & 1) == 0)
    {
      (*v533)(v80, v72);

      v73 = v524;
      goto LABEL_5;
    }

LABEL_34:
    type metadata accessor for Stage();
    inited = swift_initStackObject();
    *(inited + 16) = v108;
    v115 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
    v116 = v115;
    v117 = RIOPxrUsdStageCopyRootLayer();
    v118 = RIOPxrSdfLayerCopyCustomLayerDataValue();

    if (v118)
    {
      LOBYTE(v557) = 0;
      Bool = RIOPxrVtValueGetBool();
      v120 = v557;
      if (!Bool)
      {
        v120 = 2;
      }

      LOBYTE(v555) = v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
      if (swift_dynamicCast())
      {
        v121 = v557;
      }

      else
      {
        v121 = 0;
        LOBYTE(v557) = 2;
      }
    }

    else
    {

      v121 = 0;
    }

    v122 = RIOPxrUsdStageCopyDefaultPrim();
    IsValid = RIOPxrUsdObjectIsValid();

    if (IsValid)
    {
      v124 = RIOPxrUsdStageCopyDefaultPrim();
      RealityKitOptionBool = RIOPxrUsdPrimCopyVariantSets();

      type metadata accessor for VariantSets();
      v125 = swift_allocObject();
      *(v125 + 16) = RealityKitOptionBool;
      v126 = RIOPxrUsdVariantSetsCopySetNames();
      if (!v126)
      {
        goto LABEL_259;
      }

      RealityKitOptionBool = v126;
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      *&v557 = 0;
      static Array._forceBridgeFromObjectiveC(_:result:)();
      v127 = v557;
      if (!v557)
      {
        __break(1u);
LABEL_259:
        __break(1u);
        goto LABEL_260;
      }

      v128 = v125;
    }

    else
    {
      v128 = 0;
      v127 = MEMORY[0x277D84F90];
    }

    v547 = v128;
    v543 = v87;
    if (v121)
    {
      if (*(v127 + 16))
      {
        break;
      }
    }

    v257 = v538;
LABEL_127:
    v258 = v510;
    v534(v510, v80, v257);
    v259 = type metadata accessor for Entity();
    v260 = _s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityTypeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0nD9ThreadingVxmtc0A3Kit6EntityCRbzlufCAR_Tt3g5(v258, 0, 0, v259);
    if (!v260)
    {

      v361 = URL.path.getter();
      v363 = v362;
      lazy protocol witness table accessor for type CompileSession.LoadError and conformance CompileSession.LoadError();
      v359 = swift_allocError();
      *v364 = v361;
      *(v364 + 8) = v363;
      *(v364 + 16) = 0;
      swift_willThrow();

      result = (*v533)(v80, v538);
      goto LABEL_247;
    }

    v261 = v260;
    v262 = *(v109 + v505);
    v263 = *(*(v260 + 2) + 16);
    RIOPxrUsdStageSetIncludeUnusedMaterials();
    v264 = *(v109 + v504);

    v266 = v496;
    specialized Collection.first.getter(v265, v496);
    v267 = v266;

    v268 = *v498;
    v269 = v514;
    if ((*v498)(v267, 1, v514) == 1)
    {
      v270 = v488;
      CompileSession.DeploymentTarget_Default.getter(v488);
      v271 = v496;
      if (v268(v496, 1, v269) != 1)
      {
        outlined destroy of Any?(v271, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
      }
    }

    else
    {
      v270 = v488;
      (*v484)(v488, v267, v269);
    }

    (*v497)(v270, 0, 1, v269);
    v272 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
    swift_beginAccess();
    outlined assign with take of (URL, __REAsset)(v270, v261 + v272, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    swift_endAccess();
    v273 = *(v109 + v503);
    v274 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v554 = v274;
    v275 = *(v261 + v274);
    RIOImportSessionSetLoadSubdsAsSubds();
    v276 = *v506;
    v277 = v506[1];

    v278 = URL.path.getter();
    v280 = v279;
    *&v557 = v278;
    *(&v557 + 1) = v279;
    v555 = v276;
    v556 = v277;
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    if (BidirectionalCollection<>.starts<A>(with:)())
    {
      *&v557 = v278;
      *(&v557 + 1) = v280;
      v555 = v276;
      v556 = v277;
      v281 = type metadata accessor for Locale();
      v282 = v489;
      (*(*(v281 - 8) + 56))(v489, 1, 1, v281);
      v464 = lazy protocol witness table accessor for type String and conformance String();
      v465 = v464;
      StringProtocol.range<A>(of:options:range:locale:)();
      v284 = v283;
      v286 = v285;
      outlined destroy of Any?(v282, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

      if (v286)
      {
        v287 = 15;
      }

      else
      {
        v287 = v284;
      }

      v288 = specialized Collection.subscript.getter(v287, v278, v280);
      v290 = v289;
      v292 = v291;
      v294 = v293;

      v278 = MEMORY[0x26670F020](v288, v290, v292, v294);
      v280 = v295;
    }

    v296 = v507;
    v297 = v499;
    v298 = v538;
    v299 = v534;
    v534(v499 + *(v507 + 28), v513, v538);
    v299(v297 + *(v296 + 32), v526, v298);
    *v297 = v261;
    v297[1] = v278;
    v297[2] = v280;
    v297[3] = MEMORY[0x277D84F90];
    v300 = v519;
    v301 = *v519;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v300 = v301;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v301 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v301[2] + 1, 1, v301);
      *v519 = v301;
    }

    v303 = v543;
    v305 = v301[2];
    v304 = v301[3];
    if (v305 >= v304 >> 1)
    {
      v301 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v304 > 1, v305 + 1, 1, v301);
      *v519 = v301;
    }

    v301[2] = v305 + 1;
    outlined init with take of CompileSession.ImportSessionData(v499, v301 + ((*(v525 + 80) + 32) & ~*(v525 + 80)) + *(v525 + 72) * v305, type metadata accessor for CompileSession.ImportSessionData);
    v306 = *(v261 + v554);
    RIOImportSessionUpdateSynchronouslyOnEngineQueue();
    v80 = v526;
    v307 = CompileSession.postOperationsAndExtraAssets(for:with:)(v261, v526);
    RealityKitOptionBool = v516;
    v308 = *v516;
    v309 = swift_isUniquelyReferenced_nonNull_native();
    *&v557 = *RealityKitOptionBool;
    *RealityKitOptionBool = 0x8000000000000000;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v307, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v309, &v557);
    v87 = v303;
    if (v303)
    {
      goto LABEL_263;
    }

    v310 = v538;
    (*v533)(v80, v538);
    v72 = v310;

    v311 = *RealityKitOptionBool;
    *RealityKitOptionBool = v557;

    v73 = v524;
LABEL_5:
    v89 = v530;
    v90 = v539 + 1;
    if (v539 + 1 == v528)
    {
      v543 = v87;

LABEL_145:
      v555 = MEMORY[0x277D84F90];
      type metadata accessor for __AssetLoadRequest();
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      v554 = __AssetLoadRequest.__allocating_init(serviceLocator:)();
      v312 = *v519;
      v313 = (v485 + 56);
      v314 = (v485 + 48);

      v315 = 0;
      v316 = 0;
      v317 = &_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtSgMd;
      while (1)
      {
        v318 = *(v312 + 16);
        RealityKitOptionBool = v540;
        if (v316 == v318)
        {
          v319 = 1;
          v320 = v532;
        }

        else
        {
          v320 = v532;
          if (v316 >= v318)
          {
            goto LABEL_250;
          }

          v553 = v316 + 1;
          v321 = v312 + ((*(v525 + 80) + 32) & ~*(v525 + 80)) + *(v525 + 72) * v316;
          v322 = *(v532 + 48);
          v323 = v314;
          v324 = v313;
          v325 = v317;
          v326 = v312;
          v327 = v315;
          v328 = v523;
          *v523 = v316;
          outlined init with copy of CompileSession.ImportSessionData(v321, v328 + v322, type metadata accessor for CompileSession.ImportSessionData);
          v329 = v328;
          v315 = v327;
          v312 = v326;
          v317 = v325;
          v313 = v324;
          v314 = v323;
          outlined init with take of (URL, __REAsset)(v329, v540, &_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtMd, &_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtMR);
          v319 = 0;
          v316 = v553;
          RealityKitOptionBool = v540;
        }

        (*v313)(RealityKitOptionBool, v319, 1, v320);
        v330 = RealityKitOptionBool;
        v331 = v531;
        outlined init with take of (URL, __REAsset)(v330, v531, v317, &_sSi6offset_9RealityIO14CompileSessionC06ImportE4DataV7elementtSgMR);
        if ((*v314)(v331, 1, v320) == 1)
        {
          break;
        }

        v332 = v331;
        v333 = *v331;
        v334 = v332 + *(v320 + 48);
        v335 = v529;
        outlined init with take of CompileSession.ImportSessionData(v334, v529, type metadata accessor for CompileSession.ImportSessionData);
        v336 = v543;
        v337 = specialized CompileSession.handleLoad(of:with:assetLoadRequest:metadata:)(v335, v333, v554, &v555);
        v543 = v336;
        if (v336)
        {

          outlined destroy of CompileSession.ImportSessionData(v335, type metadata accessor for CompileSession.ImportSessionData);

          *v486 = v543;
          goto LABEL_248;
        }

        v338 = v337;
        outlined destroy of CompileSession.ImportSessionData(v335, type metadata accessor for CompileSession.ImportSessionData);
        v315 |= v338;
      }

      LODWORD(v553) = v315;

      v339 = RERealityFileWritingParametersCreate();
      swift_beginAccess();
      v340 = v476;
      __REAssetBundle.ExportOptions.deploymentTarget.getter();
      v341 = v477;
      v342 = v514;
      v343 = (*(v477 + 48))(v340, 1, v514);
      v539 = v339;
      if (v343 == 1)
      {
        outlined destroy of Any?(v340, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
        swift_endAccess();
        v108 = v543;
        v87 = v511;
        v94 = v479;
        RealityKitOptionBool = v480;
        goto LABEL_158;
      }

      v87 = v472;
      (*(v341 + 32))(v472, v340, v342);
      swift_endAccess();
      v345 = v469;
      __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
      v552 = __REAssetBundle.ExportOptions.PlatformOS.rawValue.getter();
      v346 = v341;
      v551 = v347;
      (*(v470 + 8))(v345, v471);
      v348 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
      v349 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter() >> 32;
      __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
      *&v350 = __PAIR64__(v349, v348);
      DWORD2(v350) = v351;
      v549 = v350;
      RealityKitOptionBool = String.utf8CString.getter();

      RERealityFileWriterGetVersionFromDeploymentTarget();

      v352 = v543;
      if (v339)
      {
        RERealityFileWritingParametersSetMajorVersion();
        (*(v346 + 8))(v87, v514);
        v87 = v511;
        v94 = v479;
        RealityKitOptionBool = v480;
        v108 = v352;
LABEL_158:
        swift_beginAccess();
        v80 = v475;
        __REAssetBundle.ExportOptions.reducedTextureFileSize.getter();
        if ((*(v94 + 48))(v80, 1, RealityKitOptionBool) == 1)
        {
          outlined destroy of Any?(v80, &_s10RealityKit6EntityC0A10FoundationE12WriteOptionsV15TextureFileSizeOSgMd, &_s10RealityKit6EntityC0A10FoundationE12WriteOptionsV15TextureFileSizeOSgMR);
          swift_endAccess();
          v80 = v108;
          if (!v539)
          {
            __break(1u);
            goto LABEL_161;
          }

LABEL_174:
          v368 = RERealityFileWriterCreateWithParameters();
          if (!v368)
          {
            v415 = type metadata accessor for __RealityFileError();
            lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90]);
            v416 = swift_allocError();
            v418 = v417;
            *&v557 = 0;
            *(&v557 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(44);

            *&v557 = 0xD000000000000029;
            *(&v557 + 1) = 0x80000002619959C0;
            v419 = URL.absoluteString.getter();
            MEMORY[0x26670F080](v419);

            MEMORY[0x26670F080](46, 0xE100000000000000);
            v420 = *(&v557 + 1);
            *v418 = v557;
            v418[1] = v420;
            (*(*(v415 - 8) + 104))(v418, *MEMORY[0x277CDAB88], v415);
            swift_willThrow();
            RERelease();

            *v486 = v416;
            goto LABEL_248;
          }

          v369 = v368;
          RERealityFileWriterCertifyFreeOfChangeSceneActions();
          v559 = 0;
          URL.absoluteString.getter();
          String.utf8CString.getter();

          v535 = v369;
          v370 = RERealityFileWriterOpen();

          if (v370)
          {
            v534 = RERealityFileAssetWriteReportCreate();
            if (v534)
            {
              v371 = *v516;
              v372 = *v516 + 64;
              v373 = 1 << *(*v516 + 32);
              v374 = -1;
              if (v373 < 64)
              {
                v374 = ~(-1 << v373);
              }

              v375 = v374 & *(*v516 + 64);
              v537 = (v373 + 63) >> 6;
              v544 = (v524 + 32);
              v542 = v468 + 8;
              v547 = (v524 + 8);
              v540 = v371;

              v376 = 0;
              v536 = xmmword_2619891C0;
              v545 = v372;
              while (1)
              {
                if (!v375)
                {
                  if (v537 <= v376 + 1)
                  {
                    v386 = v376 + 1;
                  }

                  else
                  {
                    v386 = v537;
                  }

                  v387 = v386 - 1;
                  while (1)
                  {
                    v385 = v376 + 1;
                    if (__OFADD__(v376, 1))
                    {
                      goto LABEL_241;
                    }

                    if (v385 >= v537)
                    {
                      v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
                      (*(*(v413 - 8) + 56))(v87, 1, 1, v413);
                      v389 = 0;
                      v376 = v387;
                      goto LABEL_193;
                    }

                    v375 = *(v372 + 8 * v385);
                    ++v376;
                    if (v375)
                    {
                      v543 = v80;
                      v376 = v385;
                      goto LABEL_192;
                    }
                  }
                }

                v543 = v80;
                v385 = v376;
LABEL_192:
                v388 = __clz(__rbit64(v375));
                v389 = (v375 - 1) & v375;
                v390 = v388 | (v385 << 6);
                v391 = *(v540 + 56);
                v392 = (*(v540 + 48) + 16 * v390);
                v394 = *v392;
                v393 = v392[1];
                v553 = v394;
                v552 = v393;
                v395 = v546;
                outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v391 + *(v550 + 72) * v390, v546, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
                v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
                v397 = *(v396 + 48);
                v398 = v395;
                v399 = v552;
                *v87 = v553;
                v87[1] = v399;
                outlined init with take of (URL, __REAsset)(v398, v87 + v397, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
                (*(*(v396 - 8) + 56))(v87, 0, 1, v396);

                v80 = v543;
LABEL_193:
                v400 = v508;
                outlined init with take of (URL, __REAsset)(v87, v508, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMR);
                v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
                if ((*(*(v401 - 8) + 48))(v400, 1, v401) == 1)
                {
                  break;
                }

                v551 = v389;
                v543 = v80;
                v402 = *(v400 + 8);
                v548 = *v400;
                *&v549 = v402;
                v403 = v515;
                v553 = *(v400 + *(v401 + 48) + *(v515 + 48));
                v404 = *v544;
                v405 = v500;
                v406 = v538;
                (*v544)(v500);
                v407 = v546;
                v552 = *(v403 + 48);
                v408 = v521;
                v404(v521, v405, v406);
                *(v408 + v552) = v553;
                outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v408, v407, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
                v409 = *(v407 + *(v403 + 48));
                v410 = v501;
                dispatch thunk of __REAsset.__handle.getter();

                __AssetRef.__as<A>(_:)();
                (*v542)(v410, v502);
                v552 = *v547;
                (v552)(v407, v406);
                v411 = REAssetWithMetadataCreate();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
                *(swift_allocObject() + 16) = v411;
                if (v411)
                {
                  String.utf8CString.getter();

                  REAssetWithMetadataSetLabel();

                  MEMORY[0x26670F130](v412);
                  if (*((v555 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v555 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v414 = *((v555 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  __AssetLoadRequest.add(asset:)();

                  v384 = v543;
                  v383 = v521;
                  v87 = v511;
                }

                else
                {

                  LODWORD(v553) = static os_log_type_t.error.getter();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                  v377 = swift_allocObject();
                  *(v377 + 16) = v536;
                  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v521, v407, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
                  v378 = *(v407 + *(v515 + 48));

                  v379 = URL.absoluteString.getter();
                  v381 = v380;
                  *(v377 + 56) = MEMORY[0x277D837D0];
                  *(v377 + 64) = lazy protocol witness table accessor for type String and conformance String();
                  *(v377 + 32) = v379;
                  *(v377 + 40) = v381;
                  (v552)(v407, v406);
                  type metadata accessor for OS_os_log();
                  v382 = static OS_os_log.default.getter();
                  os_log(_:dso:log:_:_:)();

                  v383 = v521;
                  v384 = v543;
                  v87 = v511;
                }

                v375 = v551;
                outlined destroy of Any?(v383, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
                v372 = v545;
                v80 = v384;
              }

              __AssetLoadRequest.waitForCompletion()();
              v88 = v555;
              RealityKitOptionBool = v555 >> 62;
              if (v555 >> 62)
              {
                goto LABEL_255;
              }

              for (i = *((v555 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = v462)
              {
                v550 = RealityKitOptionBool;
                RealityKitOptionBool = v88;
                *&v557 = MEMORY[0x277D84F90];
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
                if (i < 0)
                {
                  __break(1u);
LABEL_257:
                  __break(1u);
                }

                v425 = 0;
                v426 = v557;
                v88 = RealityKitOptionBool;
                v553 = RealityKitOptionBool & 0xC000000000000001;
                v551 = RealityKitOptionBool & 0xFFFFFFFFFFFFFF8;
                v552 = RealityKitOptionBool;
                while (1)
                {
                  v427 = v425 + 1;
                  if (__OFADD__(v425, 1))
                  {
                    break;
                  }

                  if (v553)
                  {
                    v428 = *(MEMORY[0x26670F670](v425, v88) + 16);
                    if (!v428)
                    {
                      goto LABEL_257;
                    }
                  }

                  else
                  {
                    if (v425 >= *(v551 + 16))
                    {
                      goto LABEL_254;
                    }

                    v429 = *(v88 + 8 * v425 + 32);
                    v428 = *( + 16);
                    if (!v428)
                    {
                      goto LABEL_257;
                    }
                  }

                  *&v557 = v426;
                  v431 = *(v426 + 16);
                  v430 = *(v426 + 24);
                  RealityKitOptionBool = v431 + 1;
                  if (v431 >= v430 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v430 > 1), v431 + 1, 1);
                    v426 = v557;
                  }

                  *(v426 + 16) = RealityKitOptionBool;
                  *(v426 + 8 * v431 + 32) = v428;
                  ++v425;
                  v88 = v552;
                  if (v427 == i)
                  {
                    RealityKitOptionBool = v550;
                    goto LABEL_221;
                  }
                }

LABEL_252:
                __break(1u);
LABEL_253:
                __break(1u);
LABEL_254:
                __break(1u);
LABEL_255:
                v461 = v88;
                v462 = __CocoaSet.count.getter();
                v88 = v461;
              }

LABEL_221:
              if (RealityKitOptionBool)
              {
                __CocoaSet.count.getter();
              }

              else
              {
                v440 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v441 = RERealityFileWriterWriteAssetArrayAndDependencies();

              if ((v441 & 1) == 0)
              {
                v444 = RERealityFileAssetWriteReportGetError();
                if (v444)
                {
                  v445 = v444;
                  type metadata accessor for CFErrorRef(0);
                  lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
                  v359 = swift_allocError();
                  *v446 = v445;
                }

                else
                {
                  v453 = type metadata accessor for __RealityFileError();
                  lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90]);
                  v359 = swift_allocError();
                  v455 = v454;
                  *&v557 = 0;
                  *(&v557 + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(41);

                  *&v557 = 0xD000000000000026;
                  *(&v557 + 1) = 0x80000002619959F0;
                  v456 = URL.absoluteString.getter();
                  MEMORY[0x26670F080](v456);

                  MEMORY[0x26670F080](46, 0xE100000000000000);
                  v457 = *(&v557 + 1);
                  *v455 = v557;
                  v455[1] = v457;
                  (*(*(v453 - 8) + 104))(v455, *MEMORY[0x277CDAB88], v453);
                }

                goto LABEL_243;
              }

              if (*(*v541 + 16))
              {
                v442 = *v541;

                isa = Array._bridgeToObjectiveC()().super.isa;

                RERealityFileWriterSetConfigurationSetNames();
              }

              if (RERealityFileWriterClose())
              {
                RERelease();
                if (v539)
                {
                  RERelease();
                }

                RERelease();

                goto LABEL_248;
              }

LABEL_234:
              v447 = v559;
              if (v559)
              {
                type metadata accessor for CFErrorRef(0);
                lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
                v448 = v447;
                v359 = swift_allocError();
                *v449 = v448;
              }

              else
              {
LABEL_242:
                v458 = type metadata accessor for __RealityFileError();
                lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90]);
                v359 = swift_allocError();
                *v459 = 0xD000000000000018;
                v459[1] = 0x8000000261995A50;
                (*(*(v458 - 8) + 104))(v459, *MEMORY[0x277CDAB88], v458);
              }

LABEL_243:
              swift_willThrow();
              RERelease();
              if (v539)
              {
                RERelease();
              }

              RERelease();
LABEL_246:

LABEL_247:
              *v486 = v359;
              goto LABEL_248;
            }

            v432 = type metadata accessor for __RealityFileError();
            lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90]);
            v359 = swift_allocError();
            v434 = v433;
            *&v557 = 0;
            *(&v557 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(48);

            v435 = 0x8000000261995A20;
            v436 = 0xD00000000000002DLL;
LABEL_219:
            *&v557 = v436;
            *(&v557 + 1) = v435;
            v438 = URL.absoluteString.getter();
            MEMORY[0x26670F080](v438);

            MEMORY[0x26670F080](46, 0xE100000000000000);
            v439 = *(&v557 + 1);
            *v434 = v557;
            v434[1] = v439;
            (*(*(v432 - 8) + 104))(v434, *MEMORY[0x277CDAB88], v432);
          }

          else
          {
            v421 = v559;
            if (!v559)
            {
              v432 = type metadata accessor for __RealityFileError();
              lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90]);
              v359 = swift_allocError();
              v434 = v437;
              *&v557 = 0;
              *(&v557 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(41);

              v435 = 0x80000002619959F0;
              v436 = 0xD000000000000026;
              goto LABEL_219;
            }

            type metadata accessor for CFErrorRef(0);
            lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
            v422 = v421;
            v359 = swift_allocError();
            *v423 = v422;
          }

          swift_willThrow();
          RERelease();
          RERelease();

          goto LABEL_246;
        }

LABEL_161:
        v353 = v478;
        (*(v94 + 32))(v478, v80, RealityKitOptionBool);
        swift_endAccess();
        v354 = v473;
        (*(v94 + 16))(v473, v353, RealityKitOptionBool);
        LODWORD(v92) = (*(v94 + 88))(v354, RealityKitOptionBool);
        if (v92 == *MEMORY[0x277CDB100])
        {
          v80 = v108;
        }

        else
        {
LABEL_164:
          v80 = v108;
          if (v92 != *MEMORY[0x277CDB0F0])
          {
LABEL_167:
            if (v92 != *MEMORY[0x277CDB0F8])
            {
              static os_log_type_t.error.getter();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v365 = swift_allocObject();
              *(v365 + 16) = xmmword_2619891C0;
              *&v557 = 0;
              *(&v557 + 1) = 0xE000000000000000;
              _print_unlocked<A, B>(_:_:)();
              v366 = v557;
              *(v365 + 56) = MEMORY[0x277D837D0];
              *(v365 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v365 + 32) = v366;
              type metadata accessor for OS_os_log();
              v367 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)();
              v94 = v479;
              RealityKitOptionBool = v480;

              (*(v94 + 8))(v473, RealityKitOptionBool);
            }
          }
        }

        if (v539)
        {
          RERealityFileWritingParametersSetReducedTextureSize();
          (*(v94 + 8))(v478, RealityKitOptionBool);
          goto LABEL_174;
        }

LABEL_261:
        __break(1u);
LABEL_262:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_263:

        v463 = *RealityKitOptionBool;
        *RealityKitOptionBool = v557;

        __break(1u);
        return result;
      }

LABEL_260:
      __break(1u);
      goto LABEL_261;
    }
  }

  v129 = v538;
  if (*(*v541 + 16))
  {
    goto LABEL_238;
  }

  specialized static CompileSession.computeVariantInstances(from:)(v128);
  RealityKitOptionBool = v130;
  v481 = *(v130 + 16);
  if (!v481)
  {

    v257 = v129;
    goto LABEL_127;
  }

  v131 = *v541;
  *v541 = v127;

  v482 = RealityKitOptionBool + 32;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v132 = 0;
  v467 = v108;
  v474 = RealityKitOptionBool;
  while (1)
  {
    if (v132 >= *(RealityKitOptionBool + 16))
    {
      goto LABEL_251;
    }

    v518 = v132;
    RealityKitOptionBool = *(v482 + 8 * v132);
    v133 = *(RealityKitOptionBool + 16);

    v545 = RealityKitOptionBool;
    v554 = v133;
    v80 = 0;
    if (v133)
    {
      break;
    }

    v129 = 0xE000000000000000;
LABEL_71:
    v140 = v547;
    v554 = *(*v541 + 16);
    if (v554)
    {
      if (v554 > *(RealityKitOptionBool + 16))
      {
        goto LABEL_253;
      }

      v141 = 0;
      v142 = 0;
      while (v142 < *(*v541 + 16))
      {
        if (v140)
        {
          v143 = RealityKitOptionBool + v141;
          v145 = *(RealityKitOptionBool + v141 + 32);
          v144 = *(v143 + 40);
          v146 = *v541 + v141;
          v147 = *(v146 + 32);
          v148 = *(v146 + 40);
          v149 = v140[2];
          String.utf8CString.getter();

          v150 = RIOPxrUsdVariantSetsCopyVariantSet();

          type metadata accessor for VariantSet();
          v108 = swift_initStackObject();
          *(v108 + 16) = v150;
          String.utf8CString.getter();

          RIOPxrUsdVariantSetSetVariantSelection();

          RealityKitOptionBool = v545;

          swift_setDeallocating();

          v140 = v547;
        }

        ++v142;
        v141 += 16;
        if (v554 == v142)
        {
          goto LABEL_78;
        }
      }

      goto LABEL_237;
    }

LABEL_78:
    v517 = Stage.createImportSession(engine:pipelineVersion:)(0);
    if (!v517)
    {

      v355 = v526;
      v356 = URL.path.getter();
      v358 = v357;
      lazy protocol witness table accessor for type CompileSession.LoadError and conformance CompileSession.LoadError();
      v359 = swift_allocError();
      *v360 = v356;
      *(v360 + 8) = v358;
      *(v360 + 16) = 0;
      swift_willThrow();

      result = (*v533)(v355, v538);
      goto LABEL_247;
    }

    v151 = v510;
    URL.deletingPathExtension()();
    v152 = URL.lastPathComponent.getter();
    v154 = v153;
    v155 = *v533;
    (*v533)(v151, v538);
    *&v557 = v152;
    *(&v557 + 1) = v154;

    MEMORY[0x26670F080](95, 0xE100000000000000);

    MEMORY[0x26670F080](v80, v129);

    MEMORY[0x26670F080](46, 0xE100000000000000);

    v156 = *(&v557 + 1);
    v157 = v557;
    v158 = URL.pathExtension.getter();
    v160 = v159;
    v557 = __PAIR128__(v156, v157);

    MEMORY[0x26670F080](v158, v160);

    URL.deletingLastPathComponent()();
    URL.appendingPathComponent(_:)();

    v495 = v155;
    v155(v151, v538);
    v162 = *v506;
    v161 = v506[1];

    v163 = URL.path.getter();
    v165 = v164;
    *&v557 = v163;
    *(&v557 + 1) = v164;
    v555 = v162;
    v556 = v161;
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    if (BidirectionalCollection<>.starts<A>(with:)())
    {
      *&v557 = v163;
      *(&v557 + 1) = v165;
      v555 = v162;
      v556 = v161;
      v166 = type metadata accessor for Locale();
      v167 = v489;
      (*(*(v166 - 8) + 56))(v489, 1, 1, v166);
      v464 = lazy protocol witness table accessor for type String and conformance String();
      v465 = v464;
      StringProtocol.range<A>(of:options:range:locale:)();
      v169 = v168;
      v171 = v170;
      outlined destroy of Any?(v167, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

      if (v171)
      {
        v172 = 15;
      }

      else
      {
        v172 = v169;
      }

      v173 = specialized Collection.subscript.getter(v172, v163, v165);
      v175 = v174;
      v177 = v176;
      v179 = v178;

      v493 = MEMORY[0x26670F020](v173, v175, v177, v179);
      v494 = v180;
    }

    else
    {
      v493 = v163;
      v494 = v165;
    }

    v87 = v548;
    v181 = v491;
    v182 = v522;
    v183 = *(v522 + v505);
    v184 = v516;
    v185 = *(*(v517 + 2) + 16);
    RIOPxrUsdStageSetIncludeUnusedMaterials();
    v186 = *(v182 + v504);

    specialized Collection.first.getter(v187, v181);

    v188 = *v498;
    v189 = v514;
    if ((*v498)(v181, 1, v514) == 1)
    {
      v190 = v490;
      CompileSession.DeploymentTarget_Default.getter(v490);
      if (v188(v181, 1, v189) != 1)
      {
        outlined destroy of Any?(v181, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
      }
    }

    else
    {
      v190 = v490;
      (*v484)(v490, v181, v189);
    }

    ++v518;
    (*v497)(v190, 0, 1, v189);
    v191 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
    v192 = v517;
    swift_beginAccess();
    outlined assign with take of (URL, __REAsset)(v190, v192 + v191, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
    swift_endAccess();
    RealityKitOptionBool = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v193 = *(v192 + RealityKitOptionBool);
    RIOImportSessionUpdateSynchronouslyOnEngineQueue();
    v194 = *(v182 + v503);
    v195 = *(v192 + RealityKitOptionBool);
    RIOImportSessionSetLoadSubdsAsSubds();
    v196 = CompileSession.postOperationsAndExtraAssets(for:with:)(v192, v520);
    v197 = *v184;
    v198 = swift_isUniquelyReferenced_nonNull_native();
    v554 = *v184;
    *&v557 = v554;
    *v184 = 0x8000000000000000;
    v199 = *(v196 + 64);
    v537 = v196 + 64;
    v200 = 1 << *(v196 + 32);
    if (v200 < 64)
    {
      v201 = ~(-1 << v200);
    }

    else
    {
      v201 = -1;
    }

    v202 = v201 & v199;
    *&v536 = (v200 + 63) >> 6;
    v542 = v196;

    v203 = 0;
    while (1)
    {
      v94 = v549;
      LODWORD(v553) = v198;
      if (!v202)
      {
        if (v536 <= v203 + 1)
        {
          v206 = v203 + 1;
        }

        else
        {
          v206 = v536;
        }

        while (1)
        {
          v108 = v203 + 1;
          if (__OFADD__(v203, 1))
          {
            break;
          }

          if (v108 >= v536)
          {
            v552 = v206 - 1;
            v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
            (*(*(v240 - 8) + 56))(v87, 1, 1, v240);
            v202 = 0;
            goto LABEL_104;
          }

          v202 = *(v537 + 8 * v108);
          ++v203;
          if (v202)
          {
            goto LABEL_103;
          }
        }

        __break(1u);
        goto LABEL_164;
      }

      v108 = v203;
LABEL_103:
      v207 = __clz(__rbit64(v202));
      v202 &= v202 - 1;
      v208 = v207 | (v108 << 6);
      v209 = (*(v542 + 48) + 16 * v208);
      v211 = *v209;
      v210 = v209[1];
      v212 = v546;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(*(v542 + 56) + *(v550 + 72) * v208, v546, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
      v214 = *(v213 + 48);
      v215 = v548;
      *v548 = v211;
      v215[1] = v210;
      v87 = v215;
      outlined init with take of (URL, __REAsset)(v212, v215 + v214, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      (*(*(v213 - 8) + 56))(v87, 0, 1, v213);

      v552 = v108;
      v94 = v549;
LABEL_104:
      outlined init with take of (URL, __REAsset)(v87, v94, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMR);
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
      if ((*(*(v216 - 8) + 48))(v94, 1, v216) == 1)
      {
        v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
        v218 = v544;
        (*(*(v217 - 8) + 56))(v544, 1, 1, v217);
      }

      else
      {
        v219 = *(v216 + 48);
        v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
        v222 = *v94;
        v221 = *(v94 + 8);
        v223 = v94 + v219;
        v108 = v544;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v223, v544 + *(v220 + 48), &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
        *v108 = v222;
        *(v108 + 8) = v221;

        v224 = v94;
        v218 = v108;
        outlined destroy of Any?(v224, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
        (*(*(v220 - 8) + 56))(v108, 0, 1, v220);
      }

      v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
      if ((*(*(v225 - 8) + 48))(v218, 1, v225) == 1)
      {
        break;
      }

      v226 = *v218;
      v87 = v218[1];
      outlined init with take of (URL, __REAsset)(v218 + *(v225 + 48), v551, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      v227 = v554;
      v229 = specialized __RawDictionaryStorage.find<A>(_:)(v226, v87);
      v230 = *(v227 + 16);
      v231 = (v228 & 1) == 0;
      v232 = v230 + v231;
      if (__OFADD__(v230, v231))
      {
        __break(1u);
        goto LABEL_234;
      }

      RealityKitOptionBool = v228;
      if (*(v227 + 24) >= v232)
      {
        if (v553)
        {
          if (v228)
          {
            goto LABEL_93;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (RealityKitOptionBool)
          {
            goto LABEL_93;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v232, v553 & 1);
        v233 = specialized __RawDictionaryStorage.find<A>(_:)(v226, v87);
        if ((RealityKitOptionBool & 1) != (v234 & 1))
        {
          goto LABEL_262;
        }

        v229 = v233;
        if (RealityKitOptionBool)
        {
LABEL_93:

          v204 = v557;
          RealityKitOptionBool = *(v550 + 72) * v229;
          v205 = v546;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(*(v557 + 56) + RealityKitOptionBool, v546, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
          outlined destroy of Any?(v551, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
          v554 = v204;
          LODWORD(v92) = outlined assign with take of (URL, __REAsset)(v205, *(v204 + 56) + RealityKitOptionBool, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
          goto LABEL_94;
        }
      }

      v235 = v557;
      *(v557 + 8 * (v229 >> 6) + 64) |= 1 << v229;
      v236 = (v235[6] + 16 * v229);
      *v236 = v226;
      v236[1] = v87;
      LODWORD(v92) = outlined init with take of (URL, __REAsset)(v551, v235[7] + *(v550 + 72) * v229, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      v237 = v235[2];
      v238 = __OFADD__(v237, 1);
      v239 = v237 + 1;
      if (v238)
      {
        __break(1u);
LABEL_241:
        __break(1u);
        goto LABEL_242;
      }

      v554 = v235;
      v235[2] = v239;
LABEL_94:
      v198 = 1;
      v203 = v552;
      v87 = v548;
    }

    v241 = *v516;
    *v516 = v554;

    v242 = v507;
    v243 = v509;
    v244 = v538;
    v245 = v534;
    v534(v509 + *(v507 + 28), v513, v538);
    v245(v243 + *(v242 + 32), v520, v244);
    v246 = v493;
    v247 = v494;
    *v243 = v517;
    v243[1] = v246;
    v248 = v545;
    v243[2] = v247;
    v243[3] = v248;
    v249 = v519;
    v250 = *v519;
    v251 = swift_isUniquelyReferenced_nonNull_native();
    *v249 = v250;
    if ((v251 & 1) == 0)
    {
      v250 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v250[2] + 1, 1, v250);
      *v519 = v250;
    }

    v87 = v543;
    v73 = v524;
    v80 = v526;
    v253 = v250[2];
    v252 = v250[3];
    if (v253 >= v252 >> 1)
    {
      v256 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v252 > 1, v253 + 1, 1, v250);
      *v519 = v256;
    }

    v254 = v495;
    v495(v520, v538);
    v255 = *v519;
    *(v255 + 16) = v253 + 1;
    outlined init with take of CompileSession.ImportSessionData(v509, v255 + ((*(v525 + 80) + 32) & ~*(v525 + 80)) + *(v525 + 72) * v253, type metadata accessor for CompileSession.ImportSessionData);
    v132 = v518;
    RealityKitOptionBool = v474;
    if (v518 == v481)
    {

      v72 = v538;
      v254(v80, v538);
      goto LABEL_5;
    }
  }

  v134 = 0;
  v135 = (RealityKitOptionBool + 40);
  v129 = 0xE000000000000000;
  while (v134 < *(RealityKitOptionBool + 16))
  {
    ++v134;
    v137 = *(v135 - 1);
    v136 = *v135;
    v138 = HIBYTE(v129) & 0xF;
    if ((v129 & 0x2000000000000000) == 0)
    {
      v138 = v80 & 0xFFFFFFFFFFFFLL;
    }

    if (v138)
    {
      v139 = 95;
    }

    else
    {
      v139 = 0;
    }

    if (v138)
    {
      v108 = 0xE100000000000000;
    }

    else
    {
      v108 = 0xE000000000000000;
    }

    *&v557 = v80;
    *(&v557 + 1) = v129;

    MEMORY[0x26670F080](v139, v108);

    MEMORY[0x26670F080](v137, v136);
    RealityKitOptionBool = v545;

    v129 = *(&v557 + 1);
    v80 = v557;
    v135 += 2;
    if (v554 == v134)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:

  v450 = type metadata accessor for __RealityFileError();
  lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90]);
  v451 = swift_allocError();
  *v452 = 0xD000000000000053;
  v452[1] = 0x8000000261995B00;
  (*(*(v450 - 8) + 104))(v452, *MEMORY[0x277CDAB88], v450);
  swift_willThrow();

  result = (*v533)(v80, v129);
  *v486 = v451;
LABEL_248:
  v460 = *MEMORY[0x277D85DE8];
  return result;
}

char *_s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityTypeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0nD9ThreadingVxmtc0A3Kit6EntityCRbzlufCAR_Tt3g5(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = a4;
  v26[3] = a3;
  v5 = type metadata accessor for __EngineRef();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a1, v10, v13);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v6 + 8))(v9, v5);
  v17 = 0;
  if (specialized static USDImportService.canLoad(url:)())
  {
    URL._bridgeToObjectiveC()(v16);
    v19 = v18;
    v20 = RIOImportSessionCreateWithURL();

    v21 = type metadata accessor for ImportSession(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v17 = specialized ImportSession.init<A>(core:entityType:)(v20, v27);
  }

  v24 = *(v11 + 8);
  v24(a1, v10);
  v24(v15, v10);
  return v17;
}

uint64_t CompileSession.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC9RealityIO14CompileSession_exportOptions;
  v4 = type metadata accessor for __REAssetBundle.ExportOptions();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC9RealityIO14CompileSession_compilationOptions);

  v6 = *(v0 + OBJC_IVAR____TtC9RealityIO14CompileSession_basePath + 8);

  v7 = *(v0 + OBJC_IVAR____TtC9RealityIO14CompileSession_deploymentTargets);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC9RealityIO14CompileSession____lazy_storage___DeploymentTarget_Default, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  v8 = *(v0 + OBJC_IVAR____TtC9RealityIO14CompileSession__compatibilityFaults);

  return v0;
}

uint64_t CompileSession.__deallocating_deinit()
{
  CompileSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
  v7 = *a1;
  v6 = a1[1];
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a1 + v4, a2 + *(v5 + 48), &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  *a2 = v7;
  a2[1] = v6;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

void specialized LazyMapSequence.Iterator.next()(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v49 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v18 = (&v42 - v17);
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  v48 = v22;
  if (v23)
  {
    v46 = v4;
    v47 = a1;
    v24 = v3;
    v25 = v21;
LABEL_11:
    v44 = v19;
    v45 = (v23 - 1) & v23;
    v29 = __clz(__rbit64(v23)) | (v25 << 6);
    v30 = (*(v19 + 48) + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(*(v19 + 56) + *(v8 + 72) * v29, v11, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
    v33 = *(v24 + 48);
    *v18 = v31;
    v18[1] = v32;
    v3 = v24;
    outlined init with take of (URL, __REAsset)(v11, v18 + v33, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
    v4 = v46;
    (*(v46 + 56))(v18, 0, 1, v3);

    v28 = v25;
    v35 = v44;
    v34 = v45;
    a1 = v47;
LABEL_12:
    *v1 = v35;
    v1[1] = v20;
    v36 = v49;
    v1[2] = v48;
    v1[3] = v28;
    v1[4] = v34;
    v37 = v1[5];
    v38 = v1[6];
    outlined init with take of (URL, __REAsset)(v18, v36, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetSgMR);
    v39 = 1;
    if ((*(v4 + 48))(v36, 1, v3) != 1)
    {
      v40 = v43;
      outlined init with take of (URL, __REAsset)(v36, v43, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
      v37(v40);
      outlined destroy of Any?(v40, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMd, &_sSS3key_10Foundation3URLV_10RealityKit9__REAssetCt5valuetMR);
      v39 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
    (*(*(v41 - 8) + 56))(a1, v39, 1, v41);
  }

  else
  {
    v26 = (v22 + 64) >> 6;
    if (v26 <= v21 + 1)
    {
      v27 = v21 + 1;
    }

    else
    {
      v27 = (v22 + 64) >> 6;
    }

    v28 = v27 - 1;
    while (1)
    {
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v25 >= v26)
      {
        v35 = v19;
        (*(v4 + 56))(v18, 1, 1, v3, v16);
        v34 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v25);
      ++v21;
      if (v23)
      {
        v46 = v4;
        v47 = a1;
        v24 = v3;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say10RealityKit29__RKEntityActionSpecificationOG0C2IO6InputsCcTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4UUIDVtMd, &_sSS_10Foundation4UUIDVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v10, v6, &_sSS_10Foundation4UUIDVtMd, &_sSS_10Foundation4UUIDVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for UUID();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_s13OpaquePointerVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVs13OpaquePointerVGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVs13OpaquePointerVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation3URLV_10RealityKit9__REAssetCtTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation3URLV_10RealityKit9__REAssetCtGMd, &_ss18_DictionaryStorageCySS10Foundation3URLV_10RealityKit9__REAssetCtGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    v23 = v9;

    while (1)
    {
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v10, v6, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
      v12 = *v6;
      v11 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v8[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      result = outlined init with take of (URL, __REAsset)(v6 + v23, v17 + *(*(v18 - 8) + 72) * v15, &_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v22;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo17RIOPxrSdfLayerRefa_9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMd, &_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGGMd, &_ss18_DictionaryStorageCySS9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9RealityIO13ImportSessionC17MeshAssetEstimateVGMd, &_ss18_DictionaryStorageCySS9RealityIO13ImportSessionC17MeshAssetEstimateVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Shy9RealityIO13ImportSessionC15EvaluationFaultOGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_SayAC05ToolsG0O5TokenVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC05ToolsG0O5TokenVGGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC05ToolsG0O5TokenVGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized static CompileSession.findRKAssets(sourcePath:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  v11 = *(v3 + 16);
  v3 += 16;
  v23[1] = a1;
  v11(v23 - v9, a1, v2, v8);
  v12 = (v3 - 8);
  v13 = (v3 + 16);
  while (1)
  {
    URL.lastPathComponent.getter();
    v15._countAndFlagsBits = 0x7374657373616B72;
    v15._object = 0xE800000000000000;
    v16 = String.hasSuffix(_:)(v15);

    v17 = URL.path.getter();
    if (v16)
    {
      break;
    }

    v23[4] = v17;
    v23[5] = v18;
    v23[2] = 0x7374657373616B72;
    v23[3] = 0xE800000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v19 = StringProtocol.contains<A>(_:)();

    if ((v19 & 1) == 0)
    {
      goto LABEL_8;
    }

    URL.deletingLastPathComponent()();
    (*v12)(v10, v2);
    (*v13)(v10, v6, v2);
    if (!URL.lastPathComponent.getter() && v20 == 0xE000000000000000)
    {

LABEL_8:
      v21 = URL.path.getter();
      goto LABEL_10;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_8;
    }
  }

  v21 = v17;
LABEL_10:
  (*v12)(v10, v2);
  return v21;
}

void type metadata completion function for CompileSession()
{
  v0 = type metadata accessor for __REAssetBundle.ExportOptions();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget?()
{
  if (!lazy cache variable for type metadata for __REAssetBundle.ExportOptions.DeploymentTarget?)
  {
    type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for __REAssetBundle.ExportOptions.DeploymentTarget?);
    }
  }
}

uint64_t specialized static CompileSession.cartesianProduct(of:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return a1;
  }

  v3 = a1 + 32;
  v29 = *(a1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v4 = Sequence.flatMap<A>(_:)();

  if (v2 == 1)
  {
    return v4;
  }

  v7 = 1;
  v22 = v2;
  v23 = v3;
  while (1)
  {
    v8 = *(v3 + 8 * v7);
    v28 = *(v8 + 16);
    if (v28)
    {
      break;
    }

    v5 = v4;
LABEL_8:
    if (++v7 == v2)
    {
      return v5;
    }
  }

  v24 = v7;
  v9 = *(v4 + 16);
  v25 = (v4 + 32);
  v26 = v8 + 32;

  v10 = 0;
  v5 = MEMORY[0x277D84F90];
  v27 = v8;
  while (v10 < *(v8 + 16))
  {
    if (v9)
    {
      v11 = (v26 + 16 * v10);
      v12 = *v11;
      v13 = v11[1];

      v14 = v25;
      v15 = v9;
      do
      {
        v16 = *v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
        }

        *(v16 + 2) = v18 + 1;
        v19 = &v16[16 * v18];
        *(v19 + 4) = v12;
        *(v19 + 5) = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
        }

        v21 = v5[2];
        v20 = v5[3];
        if (v21 >= v20 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v5);
        }

        v5[2] = v21 + 1;
        v5[v21 + 4] = v16;
        ++v14;
        --v15;
      }

      while (v15);

      v8 = v27;
    }

    if (++v10 == v28)
    {

      v4 = v5;
      v2 = v22;
      v3 = v23;
      v7 = v24;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void specialized static CompileSession.computeVariantInstances(from:)(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    if (RIOPxrUsdVariantSetsCopySetNames())
    {
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      static Array._forceBridgeFromObjectiveC(_:result:)();
LABEL_13:
      __break(1u);
      return;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = *(MEMORY[0x277D84F90] + 16);
  if (v5)
  {
    v2 = 0;
    v3 = MEMORY[0x277D84F90] + 40;
    v4 = MEMORY[0x277D84F90];
    while (v2 < *(MEMORY[0x277D84F90] + 16))
    {
      ++v2;
      v3 += 16;
      if (v5 == v2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_12;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_10:

  specialized static CompileSession.cartesianProduct(of:)(v4);
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v43 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v44 = v6;
  while (v9)
  {
    v47 = a4;
    v17 = v11;
LABEL_14:
    v19 = __clz(__rbit64(v9)) | (v17 << 6);
    v20 = (*(a1 + 48) + 16 * v19);
    v21 = v20[1];
    v22 = *(*(a1 + 56) + 8 * v19);
    v51[0] = *v20;
    v51[1] = v21;
    v51[2] = v22;

    a2(&v48, v51);

    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v49);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if ((v47 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      v33 = v52;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, v47 & 1);
      v34 = *v33;
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_27;
      }

      v28 = v35;
    }

    v9 &= v9 - 1;
    v37 = *v52;
    if (v32)
    {
      v12 = *(v37[7] + 8 * v28);

      specialized Set.union<A>(_:)(v25, v12);
      v14 = v13;

      v15 = v37[7];
      v16 = *(v15 + 8 * v28);
      *(v15 + 8 * v28) = v14;
    }

    else
    {
      v37[(v28 >> 6) + 8] |= 1 << v28;
      v38 = (v37[6] + 16 * v28);
      *v38 = v23;
      v38[1] = v24;
      *(v37[7] + 8 * v28) = v25;
      v39 = v37[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_26;
      }

      v37[2] = v41;
    }

    a4 = 1;
    v11 = v17;
    v6 = v44;
  }

  v18 = v11;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v10)
    {
      outlined consume of Set<PropertyDirtyState>.Iterator._Variant();
    }

    v9 = *(v6 + 8 * v17);
    ++v18;
    if (v9)
    {
      v47 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined assign with take of (URL, __REAsset)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t specialized CompileSession.handleLoad(of:with:assetLoadRequest:metadata:)(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v51 = a2;
  v45 = a4;
  v49 = a3;
  v5 = type metadata accessor for __AssetRef();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.assetService.getter();

  __swift_project_boxed_opaque_existential_1(&v55, v57);
  v50 = dispatch thunk of __REAssetService.__handle.getter();
  __swift_destroy_boxed_opaque_existential_0(&v55);
  v14 = *(a1 + 1);
  v13 = *(a1 + 2);
  v15 = *a1;
  v16 = *(type metadata accessor for CompileSession.ImportSessionData(0) + 28);
  v53 = v9;
  v54 = v8;
  (*(v9 + 16))(v12, &a1[v16], v8);
  String.utf8CString.getter();
  v17 = RESceneCreate();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
  *(swift_initStackObject() + 16) = v17;
  if (!v17)
  {
    v21 = type metadata accessor for __RealityFileError();
    lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90]);
    swift_allocError();
    v23 = v22;
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v55 = 0xD000000000000024;
    v56 = 0x8000000261995B80;
    MEMORY[0x26670F080](v14, v13);
LABEL_5:
    v24 = v56;
    *v23 = v55;
    v23[1] = v24;
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277CDAB88], v21);
    swift_willThrow();
    goto LABEL_6;
  }

  v44[0] = v14;
  v44[1] = v13;
  v18 = *(v15 + 24);
  Entity.coreEntity.getter();
  RESceneAddEntity();
  type metadata accessor for Scene();
  static Scene.fromCore(_:)();
  v19 = v52;
  v20 = dispatch thunk of Scene.containsChangeSceneActions()();
  if (v19)
  {

LABEL_6:

LABEL_7:
    (*(v53 + 8))(v12, v54);
    return v25 & 1;
  }

  v27 = v20;

  v55 = 0;
  v56 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v55 = 0x523A79726F6D656DLL;
  v56 = 0xEB00000000746F6FLL;
  v58 = v51;
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26670F080](v28);

  MEMORY[0x26670F080](0x656E65637365722ELL, 0xE800000000000000);
  String.utf8CString.getter();

  v29 = REAssetManagerSceneAssetCreate();

  inited = swift_initStackObject();
  *(inited + 16) = v29;
  if (!v29)
  {
    v21 = type metadata accessor for __RealityFileError();
    lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90]);
    swift_allocError();
    v23 = v36;
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    MEMORY[0x26670F080](0xD000000000000039, 0x8000000261995BB0);
    v37 = URL.absoluteString.getter();
    MEMORY[0x26670F080](v37);

    goto LABEL_5;
  }

  v52 = inited;
  LODWORD(v51) = v27;
  v57 = MEMORY[0x277D841D8];
  v55 = v29;
  v31 = v46;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v55);
  __AssetLoadRequest.add(asset:)();
  (*(v47 + 8))(v31, v48);
  v32 = REAssetWithMetadataCreate();
  *(swift_allocObject() + 16) = v32;
  if (!v32)
  {
    v38 = type metadata accessor for __RealityFileError();
    lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(&lazy protocol witness table cache variable for type __RealityFileError and conformance __RealityFileError, MEMORY[0x277CDAB90]);
    swift_allocError();
    v40 = v39;
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    MEMORY[0x26670F080](0xD000000000000041, 0x8000000261995BF0);
    v41 = URL.absoluteString.getter();
    MEMORY[0x26670F080](v41);

    v42 = v56;
    *v40 = v55;
    v40[1] = v42;
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277CDAB88], v38);
    swift_willThrow();

    swift_setDeallocating();
    RERelease();
    goto LABEL_7;
  }

  String.utf8CString.getter();
  REAssetWithMetadataSetLabel();

  v34 = v45;
  MEMORY[0x26670F130](v33);
  if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v43 = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (*(*(a1 + 3) + 16))
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    REAssetWithMetadataSetConfigurationNames();
  }

  else
  {
  }

  (*(v53 + 8))(v12, v54);
  v25 = v51;
  return v25 & 1;
}

uint64_t type metadata accessor for CompileSession(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type CompileSession.LoadError and conformance CompileSession.LoadError()
{
  result = lazy protocol witness table cache variable for type CompileSession.LoadError and conformance CompileSession.LoadError;
  if (!lazy protocol witness table cache variable for type CompileSession.LoadError and conformance CompileSession.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileSession.LoadError and conformance CompileSession.LoadError);
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = &_s10Foundation3URLV_10RealityKit9__REAssetCtMd;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttSgMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (v47 - v18);
  v20 = -1 << *(a1 + 32);
  v21 = ~v20;
  v22 = *(a1 + 64);
  v23 = -v20;
  v50 = a1;
  v51 = a1 + 64;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v52 = v21;
  v53 = 0;
  v54 = v24 & v22;
  v55 = a2;
  v56 = a3;

  v47[1] = a3;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()(v19);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMd, &_sSS_10Foundation3URLV_10RealityKit9__REAssetCttMR);
    if ((*(*(v27 - 8) + 48))(v19, 1, v27) == 1)
    {
      outlined consume of Set<PropertyDirtyState>.Iterator._Variant();
    }

    v29 = *v19;
    v28 = v19[1];
    v30 = v10;
    outlined init with take of (URL, __REAsset)(v19 + *(v27 + 48), v57, v10, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
    v31 = *a5;
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if (a4)
      {
        v41 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v41 = *a5;
        if ((v37 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v25 = v48;
      v26 = *(v49 + 72) * v33;
      v10 = v30;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v41[7] + v26, v48, v30, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      outlined destroy of Any?(v57, v30, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);

      outlined assign with take of (URL, __REAsset)(v25, v41[7] + v26, v30, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      a4 = 1;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, a4 & 1);
      v38 = *a5;
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_21;
      }

      v33 = v39;
      v41 = *a5;
      if (v37)
      {
        goto LABEL_5;
      }

LABEL_14:
      v41[(v33 >> 6) + 8] |= 1 << v33;
      v42 = (v41[6] + 16 * v33);
      *v42 = v29;
      v42[1] = v28;
      v10 = v30;
      outlined init with take of (URL, __REAsset)(v57, v41[7] + *(v49 + 72) * v33, v30, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
      v43 = v41[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_20;
      }

      v41[2] = v45;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with take of (URL, __REAsset)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of CompileSession.ImportSessionData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of CompileSession.ImportSessionData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CompileSession.ImportSessionData(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CompileSession.LoadError(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CompileSession.LoadError(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for CompileSession.ImportSessionData()
{
  type metadata accessor for ImportSession(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

uint64_t closure #1 in closure #1 in EntityAnchoringBuilder.stageSubscription.getter()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v1 = v0;
  type metadata accessor for NamedPropertyDirtyState();
  v2 = swift_allocObject();
  v2[4] = v1;
  v3 = v1;
  v4 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v2[2] = v4;
  v2[3] = v6;

  if (String.count.getter() < 1)
  {
    v7 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v7 = RIOPxrTfTokenCreateWithCString();
  }

  v8 = v7;
  v9 = swift_allocObject();
  v9[4] = v8;
  v10 = v8;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v4);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v9[2] = v4;
  v9[3] = v12;

  if (String.count.getter() < 1)
  {
    v13 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v13 = RIOPxrTfTokenCreateWithCString();
  }

  v14 = v13;
  v15 = swift_allocObject();
  v15[4] = v14;
  v16 = v14;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v4);
  v17 = Array._bridgeToObjectiveC()().super.isa;

  v18 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v15[2] = v4;
  v15[3] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A8D0;
  *(inited + 32) = v2;
  *(inited + 40) = v9;
  *(inited + 48) = v15;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v20 = *(inited + 16);
  swift_arrayDestroy();
  return v4;
}

uint64_t specialized EntityAnchoringBuilder.stageSubscription.getter()
{
  v0 = closure #1 in closure #1 in EntityAnchoringBuilder.stageSubscription.getter();
  type metadata accessor for PrimDirtyState();
  swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v2 = PrimDirtyState.init(primMetadataContainsAnyOf:propertiesContainAnyOf:core:)(MEMORY[0x277D84FA0], v0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v2;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v5 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v1, v1, 0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26198A640;
  *(v6 + 32) = v5;

  specialized Sequence.forEach(_:)(v6);

  swift_setDeallocating();
  v7 = *(v6 + 16);
  swift_arrayDestroy();
  return v1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5SIMD2Vys5Int32VGG_SayAIGs5NeverOTg5072_s9RealityIO25componentPrimToDictionary0C0So09NSMutableF0CAA0D0C_tFSays5e4VGs5D10VyAIGXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v5 = v18;
  v6 = (a1 + 32);
  do
  {
    *&v4 = *v6;
    v17 = v4;
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v2);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
    v11 = v9 + 1;
    if (v8 >> 1 <= v9)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
      v8 = *(v7 + 3);
      v10 = v8 >> 1;
    }

    *(v7 + 2) = v11;
    v4 = v17;
    *&v7[4 * v9 + 32] = v17;
    v12 = v9 + 2;
    if (v10 < v12)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v12, 1, v7);
      v4 = v17;
    }

    *(v7 + 2) = v12;
    *&v7[4 * v11 + 32] = DWORD1(v4);
    v14 = *(v18 + 16);
    v13 = *(v18 + 24);
    if (v14 >= v13 >> 1)
    {
      v15 = v7;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v7 = v15;
    }

    *(v18 + 16) = v14 + 1;
    *(v18 + 8 * v14 + 32) = v7;
    ++v6;
    --v1;
  }

  while (v1);
  return v5;
}