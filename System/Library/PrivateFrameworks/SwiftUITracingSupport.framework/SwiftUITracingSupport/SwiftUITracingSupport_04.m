uint64_t (*specialized Atomic.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x48uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  if (v5)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(*(v8 - 8) + 64));
  }

  v11 = v10;
  v7[7] = v10;
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  if (v5)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(*(v12 - 8) + 64));
  }

  v7[8] = v14;
  if ((*(a3 + 4) & 1) == 0)
  {
    v18 = v14;
    os_unfair_lock_lock_with_options();
    *(a3 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v20 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    v7[4] = closure #1 in Atomic.subscript.modifyspecialized partial apply;
    v7[5] = v15;
    *v7 = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v7[3] = &block_descriptor_195;
    v19 = _Block_copy(v7);
    v16 = v7[5];

    static DispatchQoS.unspecified.getter();
    v7[6] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v18, v11, v19);
    _Block_release(v19);

    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v18, v12);
  }

  return Atomic.subscript.modifyspecialized ;
}

void Interpreter.Storage.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  free(*(*a1 + 64));
  free(v2);

  free(v1);
}

uint64_t Interpreter.Storage.subscript.setter(uint64_t a1, unsigned __int8 a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 116) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v16 = *(v2 + 104);
  if (!v16)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v17 = *(v16 + 8 * a2);
  if ((*(v17 + 4) & 1) == 0)
  {
    v23 = v13;
    v24 = result;
    os_unfair_lock_lock_with_options();
    *(v17 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v22 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    aBlock[4] = partial apply for specialized closure #1 in Atomic.subscript.modify;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_10;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v21;
    v19 = v22;
    MEMORY[0x26D69D2D0](0, v15, v9, v21);
    _Block_release(v20);

    (*(v6 + 8))(v9, v5);
    result = (*(v23 + 8))(v15, v24);
  }

  *(v17 + 8) = a1;
  return result;
}

unint64_t Interpreter.Storage.generation(index:)(unint64_t result)
{
  if (*(v1 + 132) <= result)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 120);
    if (v2)
    {
      return atomic_fetch_add_explicit(*(v2 + 8 * result), 0, memory_order_relaxed);
    }
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Interpreter.Symbols.process()()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v2(v1);
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

unsigned __int8 *Interpreter.Storage.synthesizeTreesForGraphs(within:)(unsigned __int8 *result)
{
  if (result[48])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v1 = result;
  v2 = *(result + 22);
  v3 = *result;
  if (v3 >= *(v2 + 116))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = *(v2 + 104);
  if (!v4)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(*(v4 + 8 * v3) + 8);
  v6 = *(v5 + 148);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    while (v8 < *(v5 + 148))
    {
      v9 = *(v5 + 136);
      if (!v9)
      {
        goto LABEL_12;
      }

      result = closure #1 in Interpreter.Storage.synthesizeTreesForGraphs(within:)(v9 + v7, v1);
      ++v8;
      v7 += 80;
      if (v6 == v8)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t closure #1 in Interpreter.Storage.synthesizeTreesForGraphs(within:)(uint64_t result, unsigned __int8 *a2)
{
  if (*(result + 60))
  {
    return result;
  }

  if (a2[48])
  {
    goto LABEL_62;
  }

  v3 = *(a2 + 22);
  v4 = *a2;
  if (v4 >= *(v3 + 116))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v6 = result;
  v7 = *(result + 56);
  v8 = *(*(v5 + 8 * v4) + 8);
  if (v7 >= *(v8 + 124))
  {
    goto LABEL_52;
  }

  v9 = *(v8 + 112);
  if (v9)
  {
    v48 = *(result + 56);
    v10 = *(v9 + 168 * v7 + 96);
    v11 = *(v10 + 16);

    if (v11)
    {
      v12 = 0;
      while (v12 < *(v10 + 16))
      {
        if (a2[48])
        {
          goto LABEL_60;
        }

        v13 = *(a2 + 22);
        v14 = *a2;
        if (v14 >= *(v13 + 116))
        {
          goto LABEL_50;
        }

        v15 = *(v13 + 104);
        if (!v15)
        {
          goto LABEL_61;
        }

        v16 = *(v10 + 4 * v12 + 32);
        v17 = *(*(v15 + 8 * v14) + 8);
        if (one-time initialization token for externalViewValue != -1)
        {
          v18 = *(*(v15 + 8 * v14) + 8);
          swift_once();
          v17 = v18;
        }

        result = Attribute.Pattern.match(_:within:)(v16, v17);
        if (result)
        {

          if (a2[48])
          {
            goto LABEL_65;
          }

          v21 = *(a2 + 22);
          v22 = *a2;
          if (v22 >= *(v21 + 116))
          {
            goto LABEL_54;
          }

          v23 = *(v21 + 104);
          if (!v23)
          {
            goto LABEL_66;
          }

          v24 = *(*(v23 + 8 * v22) + 8);
          if (v16 < *(v24 + 84))
          {
            v25 = *(v24 + 72);
            if (!v25)
            {
              goto LABEL_67;
            }

            v26 = v25 + 312 * v16;
            if ((*(v26 + 101) & 1) == 0)
            {
              v20 = 0;
              v19 = *(v26 + 96);
              goto LABEL_25;
            }

            goto LABEL_68;
          }

          goto LABEL_55;
        }

        if (v11 == ++v12)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:

      v19 = 0;
      v20 = 1;
LABEL_25:
      v27 = *(v6 + 68);
      *(v6 + 64) = v19;
      *(v6 + 68) = v20;
      if (v27 != 1)
      {
        goto LABEL_53;
      }

      v28 = *(v6 + 48);
      v29 = *(v28 + 16);
      if (!v29)
      {
        return result;
      }

      v30 = 0;
      while (v30 < *(v28 + 16))
      {
        if (a2[48])
        {
          goto LABEL_56;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_45;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_57;
        }

        v34 = *(*(v33 + 8 * v32) + 8);
        v35 = *(v34 + 124);
        if (v48 >= v35)
        {
          goto LABEL_46;
        }

        v36 = *(v34 + 112);
        if (!v36)
        {
          goto LABEL_58;
        }

        v37 = *(v36 + 168 * v48 + 64);
        if (v37 >= v35)
        {
          goto LABEL_47;
        }

        v38 = *(v28 + 32 + 4 * v30);
        v39 = (v36 + 168 * v37);
        v40 = *v39;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v39 = v40;
        if (result)
        {
          if (!*(v40 + 16))
          {
            goto LABEL_42;
          }
        }

        else
        {
          result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(v40);
          *v39 = result;
          if (!*(result + 16))
          {
LABEL_42:
            __break(1u);
            return result;
          }
        }

        if (v32 >= *(v31 + 116))
        {
          goto LABEL_48;
        }

        v47 = *(v31 + 104);
        if (!v47)
        {
          goto LABEL_59;
        }

        ++v30;
        result = Tree.add(root:within:)(v38, (*(v47 + 8 * v32) + 8), v41, v42, v43, v44, v45, v46);
        if (v29 == v30)
        {
          return result;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

unsigned __int8 *Interpreter.Storage.consistencyCheckViewTree(within:)(unsigned __int8 *result)
{
  v2 = v1[9];
  v17[8] = v1[8];
  v17[9] = v2;
  v3 = v1[11];
  v17[10] = v1[10];
  v17[11] = v3;
  v4 = v1[5];
  v17[4] = v1[4];
  v17[5] = v4;
  v5 = v1[7];
  v17[6] = v1[6];
  v17[7] = v5;
  v6 = v1[1];
  v17[0] = *v1;
  v17[1] = v6;
  v7 = v1[3];
  v17[2] = v1[2];
  v17[3] = v7;
  if (result[48])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  v9 = *(result + 22);
  v10 = *result;
  if (v10 >= *(v9 + 116))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = *(v9 + 104);
  if (v11)
  {
    v12 = *(*(v11 + 8 * v10) + 8);
    v13 = *(v12 + 124);
    if (!v13)
    {
      return validateParentsContainChildren #1 () in Interpreter.Storage.consistencyCheckViewTree(within:)(v8, v17);
    }

    v14 = 0;
    v15 = 0;
    while (v15 < *(v12 + 124))
    {
      v16 = *(v12 + 112);
      if (!v16)
      {
        goto LABEL_12;
      }

      result = closure #1 in Interpreter.Storage.consistencyCheckViewTree(within:)(v16 + v14, v8);
      ++v15;
      v14 += 168;
      if (v13 == v15)
      {
        return validateParentsContainChildren #1 () in Interpreter.Storage.consistencyCheckViewTree(within:)(v8, v17);
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t closure #1 in Interpreter.Storage.consistencyCheckViewTree(within:)(unint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = *result;
  if (!*(*result + 16))
  {
    Tree.init(synthetic:within:)(*(result + 64), a2, v60);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_69:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    if (v6 >= v5 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 16) = v6 + 1;
    v7 = (v4 + 208 * v6);
    v7[2] = v60[0];
    v8 = v60[1];
    v9 = v60[2];
    v10 = v60[4];
    v7[5] = v60[3];
    v7[6] = v10;
    v7[3] = v8;
    v7[4] = v9;
    v11 = v60[5];
    v12 = v60[6];
    v13 = v60[8];
    v7[9] = v60[7];
    v7[10] = v13;
    v7[7] = v11;
    v7[8] = v12;
    v14 = v60[9];
    v15 = v60[10];
    v16 = v60[12];
    v7[13] = v60[11];
    v7[14] = v16;
    v7[11] = v14;
    v7[12] = v15;
    *v3 = v4;
    *(v3 + 112) = 1;
  }

  v17 = *(v3 + 96);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = 0;
    while (1)
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (a2[48])
      {
        break;
      }

      v21 = *(a2 + 22);
      v22 = *a2;
      if (v22 >= *(v21 + 116))
      {
        goto LABEL_54;
      }

      v23 = *(v21 + 104);
      if (!v23)
      {
        goto LABEL_71;
      }

      v24 = *(v17 + 32 + 4 * v19);
      v25 = *(*(v23 + 8 * v22) + 8);
      if (v24 >= *(v25 + 84))
      {
        goto LABEL_55;
      }

      v26 = *(v25 + 72);
      if (!v26)
      {
        goto LABEL_72;
      }

      v27 = v26 + 312 * v24;
      if (*(v27 + 136) == 1)
      {
        v28 = v3;
        v3 = *(v3 + 64);
        if (v3 >= *(v25 + 124))
        {
          goto LABEL_56;
        }

        v29 = *(v25 + 112);
        if (!v29)
        {
          goto LABEL_73;
        }

        v4 = v29 + 168 * v3;
        v30 = *v4;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v4 = v30;
        if (result)
        {
          if (!*(v30 + 16))
          {
            goto LABEL_51;
          }
        }

        else
        {
          result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(v30);
          v30 = result;
          *v4 = result;
          if (!*(result + 16))
          {
LABEL_51:
            __break(1u);
            return result;
          }
        }

        v31 = *(v30 + 164);
        if (v31 == *(v30 + 160))
        {
          v4 = v30 + 152;
          result = specialized UnsafeArray.growToCapacity(_:)(2 * v31);
        }

        v32 = *(v30 + 152);
        if (!v32)
        {
          goto LABEL_74;
        }

        v33 = *(v30 + 164);
        v34 = v32 + 40 * v33;
        *v34 = v24;
        *(v34 + 8) = 0;
        *(v34 + 16) = 0;
        *(v34 + 24) = 0;
        *(v34 + 28) = 1;
        *(v34 + 32) = 0x8000000100000000;
        if (v33 == -1)
        {
          goto LABEL_57;
        }

        *(v30 + 164) = v33 + 1;
        if (a2[48])
        {
          goto LABEL_75;
        }

        v35 = *(a2 + 22);
        v36 = *a2;
        if (v36 >= *(v35 + 116))
        {
          goto LABEL_58;
        }

        v37 = *(v35 + 104);
        if (!v37)
        {
          goto LABEL_76;
        }

        v38 = *(*(v37 + 8 * v36) + 8);
        if (v24 >= *(v38 + 84))
        {
          goto LABEL_59;
        }

        v39 = *(v38 + 72);
        if (!v39)
        {
          goto LABEL_77;
        }

        v40 = 312 * v24;
        v41 = v39 + v40;
        *(v41 + 128) = v3 << 32;
        *(v41 + 136) = 0;
        if (a2[48])
        {
          goto LABEL_78;
        }

        v42 = *(a2 + 22);
        v43 = *a2;
        if (v43 >= *(v42 + 116))
        {
          goto LABEL_60;
        }

        v44 = *(v42 + 104);
        if (!v44)
        {
          goto LABEL_79;
        }

        v45 = *(*(v44 + 8 * v43) + 8);
        if (v3 >= *(v45 + 124))
        {
          goto LABEL_61;
        }

        v46 = *(v45 + 112);
        if (!v46)
        {
          goto LABEL_80;
        }

        v47 = *(v46 + 168 * v3);
        if (!*(v47 + 16))
        {
          goto LABEL_62;
        }

        v48 = *(v47 + 164);
        if (!v48)
        {
          goto LABEL_63;
        }

        if (v24 >= *(v45 + 84))
        {
          goto LABEL_64;
        }

        v49 = *(v45 + 72);
        if (!v49)
        {
          goto LABEL_81;
        }

        v20 = v49 + v40;
        *(v20 + 160) = v48 - 1;
        *(v20 + 168) = 0;
        v3 = v28;
      }

      else if ((*(v27 + 152) & 1) == 0)
      {
        v50 = *(v27 + 128);
        if (HIDWORD(v50) >= *(v25 + 124))
        {
          goto LABEL_65;
        }

        v51 = *(v25 + 112);
        if (!v51)
        {
          goto LABEL_82;
        }

        if ((v50 & 0x80000000) != 0)
        {
          goto LABEL_66;
        }

        v52 = *(v51 + 168 * HIDWORD(v50));
        if (v50 >= *(v52 + 16))
        {
          goto LABEL_67;
        }

        if (*(v27 + 168))
        {
          goto LABEL_83;
        }

        v53 = *(v27 + 160);
        v54 = v52 + 208 * v50;
        v55 = *(v54 + 152);
        if (v53 >= *(v54 + 164))
        {
          goto LABEL_68;
        }

        if (!v55)
        {
          goto LABEL_84;
        }

        v56 = v55 + 40 * v53;
        v59 = *(v56 + 36);
        v57 = (v56 + 36);
        v58 = v59;
        if ((v59 & 1) == 0)
        {
          *v57 = v58 | 1;
        }
      }

      if (v18 == ++v19)
      {
        return result;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  return result;
}

unint64_t validateParentsContainChildren #1 () in Interpreter.Storage.consistencyCheckViewTree(within:)(unint64_t result, _OWORD *a2)
{
  v124 = *MEMORY[0x277D85DE8];
  if (*(result + 48))
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  v5 = result;
  v6 = *(result + 176);
  v7 = *result;
  if (v7 >= *(v6 + 116))
  {
    goto LABEL_44;
  }

  v8 = *(v6 + 104);
  if (!v8)
  {
    goto LABEL_66;
  }

  v9 = *(*(v8 + 8 * v7) + 8);
  v89 = *(v9 + 124);
  if (!v89)
  {
LABEL_31:
    v59 = *MEMORY[0x277D85DE8];
    return result;
  }

  v88 = *(v9 + 112);
  if (!v88)
  {
    __break(1u);
    goto LABEL_68;
  }

  v10 = 0;
  v2 = 208;
  while (1)
  {
    *&v90 = v10;
    v11 = *(v88 + 168 * v10);
    v12 = *(v11 + 16);

    if (v12)
    {
      break;
    }

LABEL_7:
    ++v10;

    if (v90 + 1 == v89)
    {
      goto LABEL_31;
    }
  }

  v13 = 0;
  while (v13 < *(v11 + 16))
  {
    v14 = v11 + 32 + 208 * v13;
    v15 = *(v14 + 48);
    v16 = *(v14 + 80);
    v121 = *(v14 + 64);
    v122 = v16;
    v17 = *(v14 + 16);
    v117 = *v14;
    v118 = v17;
    v18 = *(v14 + 48);
    v20 = *v14;
    v19 = *(v14 + 16);
    v119 = *(v14 + 32);
    v120 = v18;
    v21 = *(v14 + 128);
    v111 = *(v14 + 112);
    v112 = v21;
    v22 = *(v14 + 160);
    v23 = *(v14 + 192);
    v115 = *(v14 + 176);
    v116 = v23;
    v24 = *(v14 + 160);
    v25 = *(v14 + 112);
    v26 = *(v14 + 128);
    v113 = *(v14 + 144);
    v114 = v24;
    v27 = *(v14 + 80);
    v102 = v121;
    v103 = v27;
    v98 = v20;
    v99 = v19;
    v100 = v119;
    v101 = v15;
    v3 = *(v14 + 104);
    v123 = *(v14 + 96);
    *&v104 = *(v14 + 96);
    *(&v104 + 1) = v3;
    v105 = v25;
    v106 = v26;
    v28 = *(v14 + 192);
    v109 = v115;
    v110 = v28;
    v107 = v113;
    v108 = v22;
    v29 = v5[48];
    if (v5[48])
    {
      goto LABEL_48;
    }

    v30 = *(v5 + 22);
    v29 = *v5;
    if (v29 >= *(v30 + 116))
    {
      goto LABEL_33;
    }

    v31 = *(v30 + 104);
    if (!v31)
    {
      goto LABEL_49;
    }

    result = Tree.hasOwnAttributes(within:)(*(*(v31 + 8 * v29) + 8));
    if (result)
    {
      if (v5[48])
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:

        goto LABEL_64;
      }

      v38 = *(v5 + 22);
      v39 = *v5;
      if (v39 >= *(v38 + 116))
      {
        goto LABEL_34;
      }

      v40 = *(v38 + 104);
      if (!v40)
      {
        goto LABEL_58;
      }

      *&v97[0] = *(*(v40 + 8 * v39) + 8);
      v102 = v121;
      v103 = v122;
      v98 = v117;
      v99 = v118;
      v100 = v119;
      v101 = v120;
      *&v104 = v123;
      *(&v104 + 1) = v3;
      v105 = v111;
      v106 = v112;
      v109 = v115;
      v110 = v116;
      v107 = v113;
      v108 = v114;
      result = specialized Tree.parent(_:within:unabstracting:)(16, v97, v32, v33, v34, v35, v36, v37);
      if ((v41 & 1) == 0)
      {
        if (v5[48])
        {
          goto LABEL_59;
        }

        v42 = *(v5 + 22);
        v43 = *v5;
        if (v43 >= *(v42 + 116))
        {
          goto LABEL_35;
        }

        v44 = *(v42 + 104);
        if (!v44)
        {
          goto LABEL_60;
        }

        v45 = *(*(v44 + 8 * v43) + 8);
        v2 = HIDWORD(result);
        if (HIDWORD(result) >= *(v45 + 124))
        {
          goto LABEL_36;
        }

        v46 = *(v45 + 112);
        if (!v46)
        {
          goto LABEL_61;
        }

        if ((result & 0x80000000) != 0)
        {
          goto LABEL_37;
        }

        v4 = result;
        v47 = *(v46 + 168 * HIDWORD(result));
        if (result >= *(v47 + 16))
        {
          goto LABEL_38;
        }

        v91 = result;
        v48 = (v47 + 208 * result);
        v49 = v48[13];
        v108 = v48[12];
        v109 = v49;
        v110 = v48[14];
        v50 = v48[9];
        v104 = v48[8];
        v105 = v50;
        v51 = v48[11];
        v106 = v48[10];
        v107 = v51;
        v52 = v48[5];
        v100 = v48[4];
        v101 = v52;
        v53 = v48[7];
        v102 = v48[6];
        v103 = v53;
        v54 = v48[3];
        v98 = v48[2];
        v99 = v54;
        *&v97[0] = v45;
        v55 = Tree._childNodes(_:within:during:unabstracting:)(0x10u, v97, 0, -1, MEMORY[0x277D84FA0]);
        v56 = *(v55 + 16);
        v57 = 32;
        do
        {
          if (!v56)
          {
            goto LABEL_39;
          }

          v58 = *(v55 + v57);
          v57 += 8;
          --v56;
        }

        while (v58 != v3);

        v2 = 208;
      }
    }

    if (++v13 == v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:

  v60 = a2[9];
  v97[8] = a2[8];
  v97[9] = v60;
  v61 = a2[11];
  v97[10] = a2[10];
  v97[11] = v61;
  v62 = a2[5];
  v97[4] = a2[4];
  v97[5] = v62;
  v63 = a2[7];
  v97[6] = a2[6];
  v97[7] = v63;
  v64 = a2[1];
  v97[0] = *a2;
  v97[1] = v64;
  v65 = a2[3];
  v97[2] = a2[2];
  v97[3] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v66 = swift_allocObject();
  v90 = xmmword_26C328DC0;
  *(v66 + 16) = xmmword_26C328DC0;
  v98 = xmmword_26C32E080;
  LOBYTE(v99) = 1;
  *(&v99 + 1) = 0;
  *&v100 = v97;
  WORD4(v100) = 256;
  v67 = TreeRef.describe(state:)(&v98, v91);
  *(v66 + 56) = MEMORY[0x277D837D0];
  *(v66 + 32) = v67;
  *(v66 + 40) = v68;
  print(_:separator:terminator:)();

  v7 = v5[48];
  if (!v5[48])
  {
    v69 = *(v5 + 22);
    v7 = *v5;
    if (v7 < *(v69 + 116))
    {
      v6 = *(v69 + 104);
      if (v6)
      {
        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_43;
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  v70 = *(*(v6 + 8 * v7) + 8);
  if (v2 < *(v70 + 124))
  {
    v29 = *(v70 + 112);
    if (!v29)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    v71 = *(v29 + 168 * v2);
    if (v4 < *(v71 + 16))
    {
      v72 = v71 + 208 * v4;
      v73 = *(v72 + 108);
      if (v73)
      {
        v74 = *(v72 + 96);
        *&v92 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
        v75 = v92;
        v76 = v74;
        while (v74)
        {
          v77 = *v76;
          v78 = swift_allocObject();
          *(v78 + 16) = v90;
          v98 = xmmword_26C32DAD0;
          LOBYTE(v99) = 2;
          *(&v99 + 1) = 0;
          *&v100 = 0;
          WORD4(v100) = 512;
          v79 = TreeRef.describe(state:)(&v98, v77);
          *(v78 + 56) = MEMORY[0x277D837D0];
          *(v78 + 32) = v79;
          *(v78 + 40) = v80;
          print(_:separator:terminator:)();

          *&v92 = v75;
          v82 = *(v75 + 16);
          v81 = *(v75 + 24);
          v83 = v82 + 1;
          if (v82 >= v81 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1);
            v75 = v92;
          }

          *(v75 + 16) = v83;
          ++v76;
          if (!--v73)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_62;
      }

LABEL_64:
      v84 = swift_allocObject();
      *(v84 + 16) = v90;
      v102 = v121;
      v103 = v122;
      v98 = v117;
      v99 = v118;
      v100 = v119;
      v101 = v120;
      *&v104 = v123;
      *(&v104 + 1) = v3;
      v105 = v111;
      v106 = v112;
      v109 = v115;
      v110 = v116;
      v107 = v113;
      v108 = v114;
      v92 = xmmword_26C32DAD0;
      v93 = 1;
      v94 = 0;
      v95 = v97;
      v96 = 256;
      v85 = Tree.describe(state:)(&v92);
      *(v84 + 56) = MEMORY[0x277D837D0];
      *(v84 + 32) = v85;
      *(v84 + 40) = v86;
      print(_:separator:terminator:)();

      __break(1u);
      goto LABEL_65;
    }

    goto LABEL_70;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t Interpreter.Storage.abstractViewTree(within:)(uint64_t result)
{
  v2 = v1[7];
  v84 = v1[6];
  v85 = v2;
  v3 = v1[11];
  v88 = v1[10];
  v89 = v3;
  v4 = v1[9];
  v86 = v1[8];
  v87 = v4;
  v5 = v1[5];
  v82 = v1[4];
  v83 = v5;
  v6 = v1[1];
  v78 = *v1;
  v79 = v6;
  v7 = v1[3];
  v80 = v1[2];
  v81 = v7;
  if (*(result + 48))
  {
    goto LABEL_38;
  }

  v8 = result;
  v9 = *(result + 176);
  v10 = *result;
  if (v10 >= *(v9 + 116))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = *(v9 + 104);
  if (!v11)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v12 = *(v11 + 8 * v10) + 8;
  v13 = MEMORY[0x277D84F98];
  *&v66 = MEMORY[0x277D84F98];
  MEMORY[0x28223BE20](result);
  v62 = &v66;
  v63 = &v78;
  v64 = v14;
  v65 = 4;
  v15 = swift_allocObject();
  v16 = v1[9];
  v15[9] = v1[8];
  v15[10] = v16;
  v17 = v1[11];
  v15[11] = v1[10];
  v15[12] = v17;
  v18 = v1[5];
  v15[5] = v1[4];
  v15[6] = v18;
  v19 = v1[7];
  v15[7] = v1[6];
  v15[8] = v19;
  v20 = v1[1];
  v15[1] = *v1;
  v15[2] = v20;
  v21 = v1[3];
  v15[3] = v1[2];
  v15[4] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #1 in Interpreter.Storage.validateAcyclicViewTree(snapshot:kind:);
  *(v22 + 24) = v61;
  specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(EventTreeStats.count.modify, 0, partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v22, 1, partial apply for closure #3 in Interpreter.Storage.validateAcyclicViewTree(snapshot:kind:), v15, 0, 1, 0, 1);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    goto LABEL_26;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8[48])
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v24 = *(v8 + 22);
  v25 = *v8;
  if (v25 >= *(v24 + 116))
  {
    goto LABEL_28;
  }

  v26 = *(v24 + 104);
  if (!v26)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v27 = *(v26 + 8 * v25) + 8;
  *&v66 = v13;
  MEMORY[0x28223BE20](result);
  v62 = &v66;
  v63 = &v78;
  v64 = v28;
  v65 = 16;
  v29 = swift_allocObject();
  v30 = v87;
  v29[9] = v86;
  v29[10] = v30;
  v31 = v89;
  v29[11] = v88;
  v29[12] = v31;
  v32 = v83;
  v29[5] = v82;
  v29[6] = v32;
  v33 = v85;
  v29[7] = v84;
  v29[8] = v33;
  v34 = v79;
  v29[1] = v78;
  v29[2] = v34;
  v35 = v81;
  v29[3] = v80;
  v29[4] = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = closure #1 in Interpreter.Storage.validateAcyclicViewTree(snapshot:kind:)partial apply;
  *(v36 + 24) = v61;
  specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(EventTreeStats.count.modify, 0, thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v36, 1, closure #3 in Interpreter.Storage.validateAcyclicViewTree(snapshot:kind:)partial apply, v29, 0, 1, 0, 1);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    goto LABEL_29;
  }

  v37 = swift_isEscapingClosureAtFileLocation();

  if (v37)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v74 = v86;
  v75 = v87;
  v76 = v88;
  v77 = v89;
  v70 = v82;
  v71 = v83;
  v72 = v84;
  v73 = v85;
  v66 = v78;
  v67 = v79;
  v68 = v80;
  v69 = v81;
  if (v8[48])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v38 = *(v8 + 22);
  v39 = *v8;
  if (v39 >= *(v38 + 116))
  {
    goto LABEL_31;
  }

  v40 = *(v38 + 104);
  if (!v40)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v41 = Interpreter.Storage.validateParentsTerminate(snapshot:)(*(v40 + 8 * v39) + 8);
  MEMORY[0x28223BE20](v41);
  v64 = v8;
  v42 = swift_allocObject();
  *(v42 + 16) = partial apply for closure #1 in Interpreter.Storage.abstractViewTree(within:);
  *(v42 + 24) = &v62;
  specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(EventTreeStats.count.modify, 0, partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v42, 1, 0, 0, 0, 1, 0, 0, 0, 1);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    goto LABEL_32;
  }

  v43 = swift_isEscapingClosureAtFileLocation();

  if (v43)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v74 = v86;
  v75 = v87;
  v76 = v88;
  v77 = v89;
  v70 = v82;
  v71 = v83;
  v72 = v84;
  v73 = v85;
  v66 = v78;
  v67 = v79;
  v68 = v80;
  v69 = v81;
  if (v8[48])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v44 = *(v8 + 22);
  v45 = *v8;
  if (v45 >= *(v44 + 116))
  {
    goto LABEL_34;
  }

  v46 = *(v44 + 104);
  if (!v46)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  result = Interpreter.Storage.validateParentsTerminate(snapshot:)(*(v46 + 8 * v45) + 8);
  if (v8[48])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v47 = *(v8 + 22);
  v48 = *v8;
  if (v48 >= *(v47 + 116))
  {
    goto LABEL_35;
  }

  v49 = *(v47 + 104);
  if (v49)
  {
    v50 = *(v49 + 8 * v48) + 8;
    *&v66 = v13;
    MEMORY[0x28223BE20](result);
    v62 = &v66;
    v63 = &v78;
    v64 = v51;
    v65 = 16;
    v52 = swift_allocObject();
    v53 = v87;
    v52[9] = v86;
    v52[10] = v53;
    v54 = v89;
    v52[11] = v88;
    v52[12] = v54;
    v55 = v83;
    v52[5] = v82;
    v52[6] = v55;
    v56 = v85;
    v52[7] = v84;
    v52[8] = v56;
    v57 = v79;
    v52[1] = v78;
    v52[2] = v57;
    v58 = v81;
    v52[3] = v80;
    v52[4] = v58;
    v59 = swift_allocObject();
    *(v59 + 16) = closure #1 in Interpreter.Storage.validateAcyclicViewTree(snapshot:kind:)partial apply;
    *(v59 + 24) = v61;
    specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(EventTreeStats.count.modify, 0, thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()specialized partial apply, v59, 1, closure #3 in Interpreter.Storage.validateAcyclicViewTree(snapshot:kind:)partial apply, v52, 0, 1, 0, 1);

    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      v60 = swift_isEscapingClosureAtFileLocation();

      if ((v60 & 1) == 0)
      {
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t Interpreter.Storage.validateParentsTerminate(snapshot:)(uint64_t result)
{
  v1 = *(*result + 124);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    v4 = *(*result + 112);
    while (v4)
    {
      v5 = *(v4 + 168 * v3);
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = *(v4 + 168 * v3);

        v13 = 136;
        do
        {
          Interpreter.Storage.validateTreeTerminates(snapshot:tree:log:)(v2, *(v5 + v13), 0, v8, v9, v10, v11, v12);
          v13 += 208;
          --v6;
        }

        while (v6);
      }

      if (++v3 == v1)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t closure #1 in Interpreter.Storage.abstractViewTree(within:)(uint64_t a1, __int128 *a2, uint64_t *a3, unsigned __int8 *a4)
{
  v6 = a4;
  v7 = a3;
  v9 = a4[48];
  v10 = *(a4 + 22);
  v11 = *(v10 + 104);
  if (*(a1 + 8) == 1)
  {
    if (!a4[48])
    {
      v12 = *(v10 + 116);
      v13 = *a4;
      if (v13 >= v12)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      if (v11)
      {
        v14 = Snapshot.rootSubgraphs.getter(*(*(v11 + 8 * v13) + 8));
        v15 = *(v14 + 16);
        if (v15)
        {
          *&v108[0] = MEMORY[0x277D84F90];
          v16 = v14;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
          v17 = v16;
          v18 = *&v108[0];
          v19 = *(*&v108[0] + 16);
          v5 = 96;
          do
          {
            v20 = *(v17 + v5);
            *&v108[0] = v18;
            v21 = *(v18 + 24);
            if (v19 >= v21 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v19 + 1, 1);
              v17 = v16;
              v18 = *&v108[0];
            }

            *(v18 + 16) = v19 + 1;
            *(v18 + 8 * v19 + 32) = v20 << 32;
            v5 += 168;
            ++v19;
            --v15;
          }

          while (v15);

          v4 = *(v18 + 16);
          if (!v4)
          {
            goto LABEL_27;
          }
        }

        else
        {

          v18 = MEMORY[0x277D84F90];
          v4 = *(MEMORY[0x277D84F90] + 16);
          if (!v4)
          {
LABEL_27:
          }
        }

LABEL_68:
        v89 = v7[8];
        v107 = (v89 + 1);
        if (!__OFADD__(v89, 1))
        {
          v106 = *a2;
          v90 = *(a2 + 2);
          v91 = *(a2 + 24);
          v92 = v7[10];
          v93 = v7;
          v94 = 32;
          v5 = *v93;
          while (v92 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v95 = *(v18 + v94);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
            }

            v97 = *(v5 + 16);
            v96 = *(v5 + 24);
            if (v97 >= v96 >> 1)
            {
              v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v5);
            }

            *(v5 + 16) = v97 + 1;
            v98 = v5 + 56 * v97;
            *(v98 + 32) = v95;
            *(v98 + 40) = 0;
            *(v98 + 48) = v106;
            *(v98 + 64) = v90;
            *(v98 + 72) = v91;
            *(v98 + 80) = v107;
            v94 += 8;
            ++v92;
            if (!--v4)
            {

              *a3 = v5;
              a3[10] = v92;
              return result;
            }
          }

LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
        }

        __break(1u);
        goto LABEL_82;
      }

      goto LABEL_93;
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (a4[48])
  {
    goto LABEL_92;
  }

  v22 = *(v10 + 116);
  v23 = *a4;
  if (v23 >= v22)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (!v11)
  {
    goto LABEL_94;
  }

  v24 = *a1;
  v25 = *(*(v11 + 8 * v23) + 8);
  v26 = HIDWORD(*a1);
  if (v26 >= *(v25 + 124))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v27 = *(v25 + 112);
  if (!v27)
  {
    goto LABEL_95;
  }

  if ((v24 & 0x80000000) != 0)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_90:
      swift_once();
LABEL_35:
      v43 = *&attachmentAssertion.is_nil;
      v44 = (*&attachmentAssertion.is_nil + 40);
      v45 = -*(*&attachmentAssertion.is_nil + 16);
      v46 = -1;
      while (v45 + v46 != -1)
      {
        if (++v46 >= *(v43 + 16))
        {
          goto LABEL_80;
        }

        v47 = v44 + 2;
        v48 = *(v44 - 1);
        v49 = *v44;
        (*(*v44 + 16))(v108, v4, v107, v48, *v44);
        v50 = v108[0];
        v44 = v47;
        if (LOBYTE(v108[0]))
        {
          goto LABEL_41;
        }
      }

      v48 = 0;
      v49 = 0;
      v50 = 0;
LABEL_41:
      v51 = v103;
      v52 = v104;
      v53 = v103[1];
      v112[0] = *v103;
      v112[1] = v53;
      v113[0] = v103[2];
      *(v113 + 9) = *(v103 + 41);
      v7 = a3;
      v54 = v106;
      v55 = v5;
      v24 = v4;
      v4 = v102;
      while (1)
      {
        v56 = *v55;
        if (*v52 >= 2u)
        {
          v57 = *v54;
          if ((*(v57 + 12) & 1) == 0)
          {
            break;
          }
        }

        if (!v56)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v112);
        }

        v54 = (v56 + 16);
        v52 = (v56 + 28);
        v55 = (v56 + 48);
        v51 = v56;
      }

      v58 = *v51;
      if (!v58)
      {
        goto LABEL_102;
      }

      v59 = *(*(v58 + 24 * *(v57 + 8)) + 112);
      if (!v59)
      {
        goto LABEL_99;
      }

      v60 = *(v59 + 96);
      v61 = *v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v108[0] = *v60;
      *v60 = 0x8000000000000000;
      LOBYTE(v110[0]) = 0;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, v49, v50, v102, isUniquelyReferenced_nonNull_native);
      v63 = *v60;
      *v60 = *&v108[0];

      v65 = v103;
      v64 = v104;
      v66 = v103[1];
      v110[0] = *v103;
      v110[1] = v66;
      v111[0] = v103[2];
      *(v111 + 9) = *(v103 + 41);
      v26 = v100;
      a2 = v101;
      v6 = v107;
      v28 = v99;
      v67 = v106;
      while (1)
      {
        v68 = *v5;
        if (*v64 >= 2u && (*(*v67 + 12) & 1) == 0)
        {
          break;
        }

        if (!v68)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v110);
        }

        v67 = v68 + 16;
        v64 = (v68 + 28);
        v5 = v68 + 48;
        v65 = v68;
      }

      if (!*v65)
      {
        goto LABEL_103;
      }

      v69 = *(*(*v65 + 24 * *(*v67 + 8)) + 112);
      if (!v69)
      {
        goto LABEL_100;
      }

      v40 = **(v69 + 96);
      if (!*(v40 + 16))
      {
        goto LABEL_104;
      }

      LOBYTE(v108[0]) = 0;
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v102);
      if ((v70 & 1) == 0)
      {
        goto LABEL_104;
      }

LABEL_59:
      v71 = *(v40 + 56) + 24 * v41;
      v72 = *v71;
      if (*v71 && (v73 = *(v71 + 8), LOBYTE(v108[0]) = *(v71 + 16), v74 = (*(v73 + 40))(v24, v6, v108, *(a2 + 2), *(a2 + 24), v72, v73), (v75 & 1) == 0))
      {
        *a2 = v72;
        *(a2 + 1) = v73;
        *(a2 + 2) = v74;
        *(a2 + 24) = 0;
        if (v6[48])
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }
      }

      else
      {
        *a2 = 0;
        *(a2 + 1) = 0;
        *(a2 + 2) = 0;
        *(a2 + 24) = 1;
        if (v6[48])
        {
          goto LABEL_78;
        }
      }

      v76 = *(v6 + 22);
      v77 = *v6;
      if (v77 >= *(v76 + 116))
      {
        goto LABEL_87;
      }

      v78 = *(v76 + 104);
      if (!v78)
      {
        goto LABEL_97;
      }

      v79 = *(*(v78 + 8 * v77) + 8);
      if (v26 >= *(v79 + 124))
      {
        goto LABEL_88;
      }

      v80 = *(v79 + 112);
      if (!v80)
      {
        goto LABEL_98;
      }

      v81 = *(v80 + 168 * v26);
      if (v28 < *(v81 + 16))
      {
        v82 = (v81 + 208 * v28);
        v83 = v82[13];
        v108[10] = v82[12];
        v108[11] = v83;
        v108[12] = v82[14];
        v84 = v82[9];
        v108[6] = v82[8];
        v108[7] = v84;
        v85 = v82[11];
        v108[8] = v82[10];
        v108[9] = v85;
        v86 = v82[5];
        v108[2] = v82[4];
        v108[3] = v86;
        v87 = v82[7];
        v108[4] = v82[6];
        v108[5] = v87;
        v88 = v82[3];
        v108[0] = v82[2];
        v108[1] = v88;
        v109 = v79;
        v18 = Tree._childNodes(_:within:during:unabstracting:)(0x10u, &v109, 0, -1, MEMORY[0x277D84FA0]);
        v4 = *(v18 + 16);
        if (!v4)
        {
          goto LABEL_27;
        }

        goto LABEL_68;
      }
    }
  }

  v28 = v24;
  v29 = *(v27 + 168 * v26);
  if (v24 >= *(v29 + 16))
  {
    goto LABEL_86;
  }

  v4 = *(v29 + 208 * v24 + 120);
  v30 = *(a4 + 72);
  v114[0] = *(a4 + 56);
  v114[1] = v30;
  v115[0] = *(a4 + 88);
  v31 = (a4 + 72);
  v32 = a4 + 84;
  v5 = (a4 + 104);
  *(v115 + 9) = *(a4 + 97);
  v33 = (a4 + 56);
  *&v106 = a4 + 72;
  v104 = a4 + 84;
  v34 = (a4 + 104);
  while (1)
  {
    v35 = *v34;
    if (*v32 >= 2u)
    {
      v36 = *v31;
      if ((*(v36 + 12) & 1) == 0)
      {
        break;
      }
    }

    if (!v35)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v114);
    }

    v31 = (v35 + 16);
    v32 = (v35 + 28);
    v34 = (v35 + 48);
    v33 = v35;
  }

  v38 = *v33;
  if (v38)
  {
    v39 = *(*(v38 + 24 * *(v36 + 8)) + 112);
    if (v39)
    {
      v40 = **(v39 + 96);
      if (!*(v40 + 16) || (LOBYTE(v108[0]) = 0, v41 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v42 & 1) == 0))
      {
        v102 = v4;
        v103 = v6 + 56;
        v4 = v24;
        v99 = v24;
        v100 = v26;
        v107 = v6;
        v101 = a2;
        if (one-time initialization token for treeAbstractions == -1)
        {
          goto LABEL_35;
        }

        goto LABEL_90;
      }

      goto LABEL_59;
    }

    goto LABEL_96;
  }

LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in Interpreter.Storage.validateAcyclicViewTree(snapshot:kind:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t *a6, int a7)
{
  LODWORD(v105) = a7;
  v7 = a6;
  v133 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v108 = *(a1 + 8);
  v106 = a6;
  v107 = *a1;
  if ((v108 & 1) == 0)
  {
    v14 = a4;
    if (*(*a4 + 16))
    {
      v19 = a2;
      specialized __RawDictionaryStorage.find<A>(_:)(v8);
      v21 = v20;
      a2 = v19;
      if (v21)
      {
        goto LABEL_98;
      }
    }

    if (*(a2 + 8) != 1)
    {
      goto LABEL_13;
    }

    if (one-time initialization token for invalid != -1)
    {
      goto LABEL_84;
    }

    goto LABEL_12;
  }

  v9 = Snapshot.rootSubgraphs.getter(*a6);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    *&v109 = MEMORY[0x277D84F90];
    v12 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v13 = v12;
    v14 = v109;
    v15 = *(v109 + 16);
    v16 = 96;
    do
    {
      v17 = *(v13 + v16);
      *&v109 = v14;
      v18 = *(v14 + 24);
      if (v15 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v15 + 1, 1);
        v13 = v12;
        v14 = v109;
      }

      *(v14 + 16) = v15 + 1;
      *(v14 + 8 * v15 + 32) = v17 << 32;
      v16 += 168;
      ++v15;
      --v10;
    }

    while (v10);

    v7 = v106;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  if (v105 == 16)
  {
    *&v122 = v11;
    v39 = *(v14 + 16);
    if (v39)
    {
      v40 = 0;
      v7 = v14 + 32;
      v104 = xmmword_26C328DC0;
      do
      {
        if (v40 >= *(v14 + 16))
        {
          goto LABEL_74;
        }

        v42 = *(v7 + 8 * v40);
        v43 = *v106;
        if (HIDWORD(v42) >= *(*v106 + 124))
        {
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v44 = *(v43 + 112);
        if (!v44)
        {
          goto LABEL_92;
        }

        if ((v42 & 0x80000000) != 0)
        {
          goto LABEL_76;
        }

        v45 = *(v44 + 168 * HIDWORD(v42));
        if (v42 >= *(v45 + 16))
        {
          goto LABEL_77;
        }

        v46 = (v45 + 208 * v42);
        v118 = v46[11];
        v119 = v46[12];
        v120 = v46[13];
        v121 = v46[14];
        v114 = v46[7];
        v115 = v46[8];
        v116 = v46[9];
        v117 = v46[10];
        v110 = v46[3];
        v111 = v46[4];
        v112 = v46[5];
        v113 = v46[6];
        v109 = v46[2];
        if (Tree.hasOwnAttributes(within:)(v43))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMR);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_26C328DC0;
          *(v41 + 32) = v42;
        }

        else
        {
          v47 = *v106;
          if (HIDWORD(v42) >= *(*v106 + 124))
          {
            goto LABEL_78;
          }

          v48 = *(v47 + 112);
          if (!v48)
          {
            goto LABEL_93;
          }

          v49 = *(v48 + 168 * HIDWORD(v42));
          if (v42 >= *(v49 + 16))
          {
            goto LABEL_79;
          }

          v50 = (v49 + 208 * v42);
          v118 = v50[11];
          v119 = v50[12];
          v120 = v50[13];
          v121 = v50[14];
          v114 = v50[7];
          v115 = v50[8];
          v116 = v50[9];
          v117 = v50[10];
          v110 = v50[3];
          v111 = v50[4];
          v112 = v50[5];
          v113 = v50[6];
          v109 = v50[2];
          *&v128 = v47;
          v41 = Tree._childNodes(_:within:during:unabstracting:)(0x10u, &v128, 0, -1, MEMORY[0x277D84FA0]);
        }

        ++v40;
        specialized Array.append<A>(contentsOf:)(v41);
      }

      while (v39 != v40);
      v11 = v122;
      v7 = v106;
    }

    v14 = v11;
  }

LABEL_40:
  v51 = *(v14 + 16);
  if (!v51)
  {
    goto LABEL_56;
  }

  v8 = 0;
  while (1)
  {
    if (v8 >= *(v14 + 16))
    {
      goto LABEL_70;
    }

    v52 = *(v14 + 32 + 8 * v8);
    v53 = *v7;
    if (HIDWORD(v52) >= *(*v7 + 124))
    {
      goto LABEL_71;
    }

    v54 = *(v53 + 112);
    if (!v54)
    {
      __break(1u);
      goto LABEL_86;
    }

    if ((v52 & 0x80000000) != 0)
    {
      goto LABEL_72;
    }

    v7 = v52;
    v55 = *(v54 + 168 * HIDWORD(v52));
    if (v52 >= *(v55 + 16))
    {
      goto LABEL_73;
    }

    v56 = (v55 + 208 * v52);
    v118 = v56[11];
    v119 = v56[12];
    v120 = v56[13];
    v121 = v56[14];
    v114 = v56[7];
    v115 = v56[8];
    v116 = v56[9];
    v117 = v56[10];
    v110 = v56[3];
    v111 = v56[4];
    v112 = v56[5];
    v113 = v56[6];
    v109 = v56[2];
    *&v122 = v53;
    v57 = specialized Tree.parent(_:within:unabstracting:)(v105, &v122, v33, v34, v35, v36, v37, v38);
    if (a2)
    {
      if (!v108)
      {
        break;
      }

      goto LABEL_43;
    }

    v58 = v108;
    if (v57 != v107)
    {
      v58 = 1;
    }

    if (v58)
    {
      break;
    }

LABEL_43:
    ++v8;
    v7 = v106;
    if (v51 == v8)
    {
      goto LABEL_56;
    }
  }

  v59 = v57;
  v60 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v14 = swift_allocObject();
  v105 = xmmword_26C328DC0;
  *(v14 + 16) = xmmword_26C328DC0;
  *&v109 = 0;
  *(&v109 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  MEMORY[0x26D69CDB0](0x20646C696863, 0xE600000000000000);
  *&v122 = v52;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](8251, 0xE200000000000000);
  *&v122 = v59;
  BYTE8(v122) = v60 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](540877088, 0xE400000000000000);
  *&v122 = v107;
  BYTE8(v122) = v108;
  _print_unlocked<A, B>(_:_:)();
  v61 = v109;
  v8 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 32) = v61;
  print(_:separator:terminator:)();

  v62 = a5[9];
  v117 = a5[8];
  v118 = v62;
  v63 = a5[11];
  v119 = a5[10];
  v120 = v63;
  v64 = a5[5];
  v113 = a5[4];
  v114 = v64;
  v65 = a5[7];
  v115 = a5[6];
  v116 = v65;
  v66 = a5[1];
  v109 = *a5;
  v110 = v66;
  v67 = a5[3];
  v111 = a5[2];
  v112 = v67;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_26C328DC0;
  v104 = xmmword_26C32DAD0;
  v122 = xmmword_26C32DAD0;
  LOBYTE(v123) = 1;
  *(&v123 + 1) = 0;
  *&v124 = &v109;
  WORD4(v124) = 256;
  v69 = TreeRef.describe(state:)(&v122, v52);
  *(v68 + 56) = v8;
  *(v68 + 32) = v69;
  *(v68 + 40) = v70;
  print(_:separator:terminator:)();

  if (HIDWORD(v52) >= *(*v106 + 124))
  {
    goto LABEL_95;
  }

  v53 = *(*v106 + 112);
  if (v53)
  {
LABEL_86:
    v84 = *(v53 + 168 * HIDWORD(v52));
    if (v7 >= *(v84 + 16))
    {
      goto LABEL_97;
    }

    v85 = v84 + 208 * v7;
    v86 = *(v85 + 80);
    v87 = *(v85 + 88);
    v88 = swift_allocObject();
    *(v88 + 16) = v105;
    if (v87)
    {
      v89 = 0xE300000000000000;
      v90 = 7104878;
    }

    else
    {
      *&v124 = &protocol witness table for TreeRef;
      *(&v123 + 1) = &type metadata for TreeRef;
      *&v122 = v86;
      v91 = *__swift_project_boxed_opaque_existential_1(&v122, &type metadata for TreeRef);
      v128 = xmmword_26C32E080;
      v129 = 1;
      v130 = 0;
      v131 = &v109;
      v132 = 256;
      v90 = specialized InspectionState.wrapDescription<A>(_:)(v91);
      v89 = v92;
      __swift_destroy_boxed_opaque_existential_1(&v122);
    }

    *(v88 + 56) = v8;
    *(v88 + 32) = v90;
    *(v88 + 40) = v89;
    print(_:separator:terminator:)();

    if ((v108 & 1) == 0)
    {
      v97 = swift_allocObject();
      *(v97 + 16) = v105;
      v122 = v104;
      LOBYTE(v123) = 1;
      *(&v123 + 1) = 0;
      *&v124 = &v109;
      WORD4(v124) = 256;
      v98 = TreeRef.describe(state:)(&v122, v107);
      *(v97 + 56) = v8;
      *(v97 + 32) = v98;
      *(v97 + 40) = v99;
      print(_:separator:terminator:)();

      v100 = *(a3 + 48);
      v124 = *(a3 + 32);
      v125 = v100;
      v126 = *(a3 + 64);
      v127 = *(a3 + 80);
      v101 = *(a3 + 16);
      v122 = *a3;
      v123 = v101;
      specialized IterativeTreeTraversal.backtrace()();
      goto LABEL_96;
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
  }

  __break(1u);
LABEL_56:
  v71 = specialized _arrayForceCast<A, B>(_:)(v14);

  v106 = specialized Sequence.reversed()(v71);
  v72 = v106[2];
  if (v72)
  {
    v73 = *(a3 + 64);
    v8 = v73 + 1;
    if (!__OFADD__(v73, 1))
    {
      v74 = *(a3 + 80);
      v75 = *a3;
      v14 = (v106 + 5);
      v7 = 40;
      while (v74 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v76 = *(v14 - 8);
        v77 = *v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 2) + 1, 1, v75);
        }

        v79 = *(v75 + 2);
        v78 = *(v75 + 3);
        if (v79 >= v78 >> 1)
        {
          v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v75);
        }

        *(v75 + 2) = v79 + 1;
        v80 = &v75[40 * v79];
        *(v80 + 4) = v76;
        v80[40] = v77;
        *(v80 + 6) = v107;
        v80[56] = v108;
        *(v80 + 8) = v8;
        v14 += 16;
        ++v74;
        if (!--v72)
        {

          *a3 = v75;
          *(a3 + 80) = v74;
          v82 = *MEMORY[0x277D85DE8];
          return result;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_84:
      swift_once();
LABEL_12:
      a2 = &static TreeRef.invalid;
LABEL_13:
      v22 = *a2;
      v23 = *v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v109 = *v14;
      *v14 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v8, isUniquelyReferenced_nonNull_native);
      v25 = *v14;
      *v14 = v109;

      v26 = *v7;
      if (HIDWORD(v8) >= *(*v7 + 124))
      {
        goto LABEL_81;
      }

      v27 = *(v26 + 112);
      if (!v27)
      {
        break;
      }

      if ((v8 & 0x80000000) != 0)
      {
        goto LABEL_82;
      }

      v28 = *(v27 + 168 * HIDWORD(v8));
      if (v8 < *(v28 + 16))
      {
        v29 = (v28 + 208 * v8);
        v118 = v29[11];
        v119 = v29[12];
        v120 = v29[13];
        v121 = v29[14];
        v114 = v29[7];
        v115 = v29[8];
        v116 = v29[9];
        v117 = v29[10];
        v110 = v29[3];
        v111 = v29[4];
        v112 = v29[5];
        v113 = v29[6];
        v109 = v29[2];
        *&v122 = v26;
        v30 = Tree._childNodes(_:within:during:unabstracting:)(v105, &v122, 0, -1, MEMORY[0x277D84FA0]);
        v14 = v30;
        v31 = *(v30 + 16);
        if (v31)
        {
          v32 = 32;
          while (*(v30 + v32) != v8)
          {
            v32 += 8;
            if (!--v31)
            {
              goto LABEL_40;
            }
          }

          while (1)
          {
LABEL_96:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            v93 = *(a3 + 48);
            v111 = *(a3 + 32);
            v112 = v93;
            v113 = *(a3 + 64);
            *&v114 = *(a3 + 80);
            v94 = *(a3 + 16);
            v109 = *a3;
            v110 = v94;
            v95 = a2;
            specialized IterativeTreeTraversal.backtrace()();
            *&v122 = 0;
            *(&v122 + 1) = 0xE000000000000000;
            *&v128 = v8;
            _print_unlocked<A, B>(_:_:)();
            MEMORY[0x26D69CDB0](2112032, 0xE300000000000000);
            v96 = *(v95 + 8);
            *&v128 = *v95;
            BYTE8(v128) = v96;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
            _print_unlocked<A, B>(_:_:)();
          }
        }

        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v83 = *MEMORY[0x277D85DE8];
}

uint64_t specialized IterativeTreeTraversal.backtrace()()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed A, @in_guaranteed B, @unowned Int, @unowned Int) -> ();
  }

  else
  {
    v5 = specialized closure #1 in implicit closure #1 in IterativeTreeTraversal.backtrace();
  }

  v6 = *(v1 + 56);
  v7 = *(v6 + 16);
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v2);
  if (v7)
  {
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [(index: TreeRef?, TreeRef?, returnAfter: Int, depth: Int)] and conformance [A], &_sSay21SwiftUITracingSupport7TreeRefVSg5index_ADSi11returnAfterSi5depthtGMd, &_sSay21SwiftUITracingSupport7TreeRefVSg5index_ADSi11returnAfterSi5depthtGMR);

    v8 = v7 - 1;
    v21 = v6;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SwiftUITracingSupport7TreeRefVSg5index_ADSi11returnAfterSi5depthtGMd, &_sSay21SwiftUITracingSupport7TreeRefVSg5index_ADSi11returnAfterSi5depthtGMR);
      v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v28, v8, v6);
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = v10[2];
      v14 = *(v10 + 24);
      v15 = v5;
      v17 = v10[4];
      v16 = v10[5];
      (v9)(v28, 0);
      v18 = *(v1 + 48);
      v28[2] = *(v1 + 32);
      v28[3] = v18;
      v28[4] = *(v1 + 64);
      v29 = *(v1 + 80);
      v19 = *(v1 + 16);
      v28[0] = *v1;
      v28[1] = v19;
      v22 = v11;
      v23 = v12;
      v24 = v13;
      v25 = v14;
      v26 = v17;
      v27 = v16;
      v5 = v15;
      v6 = v21;
      (v5)(v28, &v22);
      --v8;
    }

    while (v8 != -1);
  }

  else
  {
  }
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
      swift_dynamicCast();
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 16 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v11;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t closure #3 in Interpreter.Storage.validateAcyclicViewTree(snapshot:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, _OWORD *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = a6[9];
  v29[8] = a6[8];
  v29[9] = v9;
  v10 = a6[11];
  v29[10] = a6[10];
  v29[11] = v10;
  v11 = a6[5];
  v29[4] = a6[4];
  v29[5] = v11;
  v12 = a6[7];
  v29[6] = a6[6];
  v29[7] = v12;
  v13 = a6[1];
  v29[0] = *a6;
  v29[1] = v13;
  v14 = a6[3];
  v29[2] = a6[2];
  v29[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26C328DC0;
  v16._countAndFlagsBits = 45;
  v16._object = 0xE100000000000000;
  v17 = String.init(repeating:count:)(v16, a5);
  if (v8)
  {
    v18 = 0xE300000000000000;
    v19 = 7104878;
  }

  else
  {
    v24 = xmmword_26C32DAD0;
    v25 = 1;
    v26 = 0;
    v27 = v29;
    v28 = 256;
    v19 = TreeRef.describe(state:)(&v24, v7);
    v18 = v20;
  }

  v24 = v17;

  MEMORY[0x26D69CDB0](v19, v18);

  v21 = v24;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 32) = v21;
  print(_:separator:terminator:)();

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Interpreter.Storage.validateTreeTerminates(snapshot:tree:log:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v68 = MEMORY[0x277D84FA0];
  while (1)
  {
    v11 = HIDWORD(v9);
    if (v8)
    {
      v12 = *a1;
      if (v11 >= *(*a1 + 124))
      {
        goto LABEL_35;
      }

      v13 = v12[14];
      if (!v13)
      {
        goto LABEL_41;
      }

      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_36;
      }

      v14 = *(v13 + 168 * HIDWORD(v9));
      if (v9 >= *(v14 + 16))
      {
        goto LABEL_37;
      }

      v15 = (v14 + 208 * v9);
      v16 = v15[13];
      v65 = v15[12];
      v66 = v16;
      v67 = v15[14];
      v17 = v15[9];
      v61 = v15[8];
      v62 = v17;
      v18 = v15[11];
      v63 = v15[10];
      v64 = v18;
      v19 = v15[5];
      v57 = v15[4];
      v58 = v19;
      v20 = v15[7];
      v59 = v15[6];
      v60 = v20;
      v21 = v15[3];
      v55 = v15[2];
      v56 = v21;
      v22 = *v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_26C328DC0;
      v50 = xmmword_26C32DAD0;
      v51 = 1;
      v52 = 0;
      v53 = v22;
      v54 = 256;
      v24 = Tree.describe(state:)(&v50);
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 32) = v24;
      *(v23 + 40) = v25;
      print(_:separator:terminator:)();
    }

    v26 = *a1;
    if (v11 >= *(*a1 + 124))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v27 = v26[14];
    if (!v27)
    {
      goto LABEL_40;
    }

    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_33;
    }

    v28 = *(v27 + 168 * HIDWORD(v9));
    if (v9 >= *(v28 + 16))
    {
      goto LABEL_34;
    }

    v29 = (v28 + 208 * v9);
    v30 = v29[13];
    v65 = v29[12];
    v66 = v30;
    v67 = v29[14];
    v31 = v29[9];
    v61 = v29[8];
    v62 = v31;
    v32 = v29[11];
    v63 = v29[10];
    v64 = v32;
    v33 = v29[5];
    v57 = v29[4];
    v58 = v33;
    v34 = v29[7];
    v59 = v29[6];
    v60 = v34;
    v35 = v29[3];
    v55 = v29[2];
    v56 = v35;
    *&v50 = v26;
    v36 = specialized Tree.parent(_:within:unabstracting:)(16, &v50, a3, a4, a5, a6, a7, a8);
    v37 = v68;
    if (v38)
    {
      break;
    }

    v9 = v36;
    if (*(v68 + 16))
    {
      v39 = *(v68 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x26D69DC00](v9);
      v40 = Hasher._finalize()();
      v41 = -1 << *(v37 + 32);
      v42 = v40 & ~v41;
      if ((*(v37 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        v43 = ~v41;
        while (*(*(v37 + 48) + 8 * v42) != v9)
        {
          v42 = (v42 + 1) & v43;
          if (((*(v37 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_2;
          }
        }

        if (v8)
        {
          goto LABEL_43;
        }

        if (HIDWORD(v9) >= *(v26 + 31))
        {
          goto LABEL_38;
        }

        v44 = v26[14];
        if (!v44)
        {
          goto LABEL_42;
        }

        v45 = (v44 + 168 * HIDWORD(v9));
        NewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0 = *v45;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v45 = NewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0;
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v9 & 0x80000000) != 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          NewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(NewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0);
          *v45 = NewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0;
          if ((v9 & 0x80000000) != 0)
          {
LABEL_28:
            __break(1u);
            break;
          }
        }

        if (v9 >= *(NewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0 + 2))
        {
          goto LABEL_39;
        }

        Tree.breakParent(within:)(a1);
        Interpreter.Storage.validateTreeTerminates(snapshot:tree:log:)(a1, a2, 1);
      }
    }

LABEL_2:
    specialized Set._Variant.insert(_:)(&v55, v9);
  }
}

uint64_t Interpreter.owner.setter()
{
  swift_beginAccess();
  swift_unknownObjectUnownedAssign();
  return swift_unknownObjectRelease();
}

void (*Interpreter.owner.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectUnownedLoadStrong();
  return Interpreter.owner.modify;
}

void Interpreter.owner.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_unknownObjectUnownedAssign();
  if (a2)
  {
    v6 = v3[3];
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

NSUInteger Interpreter.Range.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    v6 = (a3 - a2);
    if (!a2)
    {
      v6 = 0.0;
    }

    if (v6 / (8 * result) <= 0.1)
    {
      v11 = 0x6E696E69616D6572;
      v12 = 0xEA00000000002067;
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v7);
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
      MEMORY[0x26D69CDB0](37, 0xE100000000000000);
      Double.write<A>(to:)();
    }

    if (a2)
    {
      v8 = String.init<A>(describing:)();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    MEMORY[0x26D69CDB0](v8, v10);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    MEMORY[0x26D69CDB0](v11, v12);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);
    return 540949544;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *Interpreter.Context.init(name:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = *a3;
  v7 = MEMORY[0x277D84F90];
  v8 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA11InterpreterC5RangeV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = v9;
  v36 = v8;
  v37 = HIDWORD(v9);
  v40 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA11InterpreterC7ContextV15AttachmentIndexV_SayALGTt0g5Tf4g_n(v7);
  v39 = v11;
  v41 = HIDWORD(v11);
  v12 = swift_slowAlloc();
  *v12 = a1;
  v12[1] = a2;
  v13 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA14EvolutionTableV5EntryVyAA11InterpreterC8IteratorV4ModeV_G_SayAQGTt0g5Tf4g_n(v7);
  LODWORD(a1) = v14;
  v34 = v13;
  v35 = HIDWORD(v14);
  v15 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v7);
  v17 = v16;
  v32 = v15;
  v33 = HIDWORD(v16);
  v29 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v7);
  v19 = v18;
  v31 = HIDWORD(v18);
  v28 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA14EvolutionTableV5EntryVyAA11InterpreterC8IteratorV4ModeV_G_SayAQGTt0g5Tf4g_n(v7);
  v21 = v20;
  v30 = HIDWORD(v20);
  v22 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v7);
  LODWORD(a2) = v23;
  v27 = HIDWORD(v23);
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v7);
  *a4 = v12;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = v36;
  *(a4 + 40) = v10;
  *(a4 + 44) = v37;
  *(a4 + 48) = 0;
  *(a4 + 56) = v34;
  *(a4 + 64) = a1;
  *(a4 + 68) = v35;
  *(a4 + 72) = v32;
  *(a4 + 80) = v17;
  *(a4 + 84) = v33;
  *(a4 + 88) = v29;
  *(a4 + 96) = v19;
  *(a4 + 100) = v31;
  *(a4 + 104) = 0;
  *(a4 + 112) = v38;
  *(a4 + 120) = v28;
  *(a4 + 128) = v21;
  *(a4 + 132) = v30;
  *(a4 + 136) = v22;
  *(a4 + 144) = a2;
  *(a4 + 148) = v27;
  *(a4 + 152) = result;
  *(a4 + 160) = v25;
  *(a4 + 164) = v26;
  *(a4 + 168) = 0;
  *(a4 + 176) = v38;
  *(a4 + 184) = v40;
  *(a4 + 192) = v39;
  *(a4 + 196) = v41;
  *(a4 + 200) = 0;
  return result;
}

uint64_t Interpreter.Context.type.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t Interpreter.Context.type.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Interpreter.Context.describe(state:)(uint64_t *a1)
{
  v2 = 7104878;
  v3 = *(a1 + 16);
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  v8 = *v1;
  v9 = *(v1 + 8);
  v22 = *(v1 + 32);
  v23 = *a1;
  v21 = *(v1 + 40);
  v10 = *(v1 + 72);
  v33[0] = *(v1 + 56);
  v33[1] = v10;
  v34[0] = *(v1 + 88);
  *(v34 + 9) = *(v1 + 97);
  *&v25[9] = *(v1 + 161);
  v11 = *(v1 + 152);
  v12 = *(v1 + 120);
  v24[1] = *(v1 + 136);
  *v25 = v11;
  v24[0] = v12;
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  MEMORY[0x26D69CDB0](0xD000000000000015, 0x800000026C33B6F0);
  if (v9 && swift_conformsToProtocol2())
  {
    v42 = v9;
    swift_getMetatypeMetadata();
    v2 = String.init<A>(describing:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  MEMORY[0x26D69CDB0](v2, v14);

  MEMORY[0x26D69CDB0](2108704, 0xE300000000000000);
  v15 = *v8;
  v16 = v8[1];

  MEMORY[0x26D69CDB0](v15, v16);

  result = MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  if (__OFSUB__(v23, 1))
  {
    __break(1u);
  }

  else
  {
    v42 = v23 - 1;
    v43 = 0x7FFFFFFFFFFFFFFFLL;
    v44 = v3;
    v45 = v4;
    v46 = v5;
    v47 = v6;
    v48 = v7;
    v18 = specialized InspectionState.wrapDescription<A>(_:)(v22, v21, specialized ArrayLike.describe(state:));
    MEMORY[0x26D69CDB0](v18);

    MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
    v35 = v23 - 1;
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    v37 = v3;
    v38 = v4;
    v39 = v5;
    v40 = v6;
    v41 = v7;
    v19 = specialized InspectionState.wrapDescription<A>(_:)(v33, specialized EvolutionTable.describe(state:));
    MEMORY[0x26D69CDB0](v19);

    MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
    v26 = v23 - 1;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = v3;
    v29 = v4;
    v30 = v5;
    v31 = v6;
    v32 = v7;
    v20 = specialized InspectionState.wrapDescription<A>(_:)(v24, specialized EvolutionTable.describe(state:));
    MEMORY[0x26D69CDB0](v20);

    MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
    return 0;
  }

  return result;
}

__n128 Interpreter.Context.interpreter.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 144);
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = v3;
  v4 = *(v2 + 176);
  *(a1 + 160) = *(v2 + 160);
  *(a1 + 176) = v4;
  v5 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v5;
  v6 = *(v2 + 112);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 112) = v6;
  v7 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v7;
  result = *(v2 + 32);
  v9 = *(v2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v9;
  return result;
}

__n128 Interpreter.Context.interpreter.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v3;
  v4 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  v6 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v6;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v9;
  return result;
}

Swift::Void __swiftcall Interpreter.Context.deallocate()()
{
  v1 = v0;
  v2 = *v0;
  if (v2)
  {
    outlined destroy of String(v2);
    MEMORY[0x26D69EAB0](v2, -1, -1);
    *v1 = 0;
    v3 = v1[4];
    if (v3)
    {
      MEMORY[0x26D69EAB0](v3, -1, -1);
      v1[4] = 0;
    }

    specialized EvolutionTable.deallocate()();
    specialized EvolutionTable.deallocate()();
    v4 = v1[23];
    if (v4)
    {
      MEMORY[0x26D69EAB0](v4, -1, -1);
      v1[23] = 0;
    }
  }

  else
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t protocol witness for Evolution_Entry.type.getter in conformance Interpreter.Context()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t protocol witness for Evolution_Entry.type.setter in conformance Interpreter.Context(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

unint64_t Interpreter.incrementGeneration(index:)(unint64_t result)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = *(v1 + 24);
  if (*(v2 + 132) <= result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v2 + 120);
  if (v3)
  {
    return atomic_fetch_add_explicit(*(v3 + 8 * result), 1uLL, memory_order_relaxed) + 1;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t Interpreter.generation(index:)(unint64_t result)
{
  v2 = *(v1 + 24);
  if (*(v2 + 132) <= result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 120);
    if (v3)
    {
      return atomic_fetch_add_explicit(*(v3 + 8 * result), 0, memory_order_relaxed);
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for Interpreter.Symbols.processProvider : Interpreter.Symbols(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 16);

  *(a2 + 8) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32) -> (@out String);
  *(a2 + 16) = v5;
  return result;
}

uint64_t Interpreter.Symbols.processProvider.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Interpreter.Symbols.processProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t key path setter for Interpreter.Symbols.moduleProvider : Interpreter.Symbols(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 32);

  *(a2 + 24) = thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32, @in_guaranteed UInt64) -> (@out String)partial apply;
  *(a2 + 32) = v5;
  return result;
}

uint64_t Interpreter.Symbols.moduleProvider.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Interpreter.Symbols.moduleProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

Swift::String __swiftcall Interpreter.Symbols.module(address:)(Swift::UInt64 address)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = v4(v3, address);
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t key path setter for Interpreter.Symbols.functionProvider : Interpreter.Symbols(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 48);

  *(a2 + 40) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32, @in_guaranteed UInt64) -> (@out String);
  *(a2 + 48) = v5;
  return result;
}

uint64_t Interpreter.Symbols.functionProvider.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Interpreter.Symbols.functionProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

Swift::String __swiftcall Interpreter.Symbols.function(address:)(Swift::UInt64 address)
{
  v3 = *v1;
  v4 = *(v1 + 5);
  v5 = *(v1 + 6);
  v6 = v4(v3, address);
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t Interpreter.Symbols.init(pid:processName:moduleName:functionName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t static Interpreter.Symbols.inProcessProvider.getter@<X0>(uint64_t a1@<X8>)
{
  result = getpid();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    *(a1 + 8) = closure #1 in static Interpreter.Symbols.inProcessProvider.getter;
    *(a1 + 16) = 0;
    *(a1 + 24) = closure #2 in static Interpreter.Symbols.inProcessProvider.getter;
    *(a1 + 32) = 0;
    *(a1 + 40) = closure #3 in static Interpreter.Symbols.inProcessProvider.getter;
    *(a1 + 48) = 0;
  }

  return result;
}

uint64_t closure #2 in static Interpreter.Symbols.inProcessProvider.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v3);

  return a3;
}

uint64_t Interpreter.Index.describe(state:)(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 0:
      return 0x656E696C656D6974;
    case 2:
      return 0x6C6961746564;
    case 1:
      return 0x7972616D6D7573;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Interpreter.Index.init(prefix:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMR);
  v20 = *(v0 - 8);
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - v2;
  v21 = 94;
  v22 = 0xE100000000000000;
  v4 = String.lowercased()();

  MEMORY[0x26D69CDB0](v4._countAndFlagsBits, v4._object);

  Regex<A>.init(_:)();
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So14T_TracepointIDa21SwiftUITracingSupportE5FlagsVTt0g5Tf4g_nTm(&outlined read-only object #0 of Interpreter.Index.init(prefix:), &_ss18_DictionaryStorageCySS21SwiftUITracingSupport11InterpreterC5IndexVGMd, &_ss18_DictionaryStorageCySS21SwiftUITracingSupport11InterpreterC5IndexVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21SwiftUITracingSupport11InterpreterC5IndexVtMd, &_sSS_21SwiftUITracingSupport11InterpreterC5IndexVtMR);
  swift_arrayDestroy();
  v6 = 0;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v6;
LABEL_10:
    v12 = __clz(__rbit64(v9)) | (v11 << 6);
    v13 = (*(v5 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v5 + 56) + v12);
    v9 &= v9 - 1;
    v21 = v15;
    v22 = v14;
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Regex<AnyRegexOutput> and conformance Regex<A>, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMR);
    if (BidirectionalCollection<>.contains<A>(_:)())
    {
      v17 = 0;
LABEL_13:

      (*(v20 + 8))(v3, v0);
      return v16 | (v17 << 8);
    }
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      v16 = 0;
      v17 = 1;
      goto LABEL_13;
    }

    v9 = *(v5 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance Interpreter.Index()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return 0x6C6961746564;
  }

  if (v1 == 1)
  {
    return 0x7972616D6D7573;
  }

  if (!*v0)
  {
    return 0x656E696C656D6974;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void Interpreter.initializedIndicies.getter()
{
  v1 = 0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 104);
  v4 = *(v2 + 116);
  v5 = MEMORY[0x277D84F90];
  while (v4 != v1)
  {
    if (v1 >= v4)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    if (!v3)
    {
      goto LABEL_17;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v3 + 8 * v1);
    os_unfair_lock_lock_with_options();
    v8 = *(v7 + 5);
    os_unfair_lock_unlock(v7);
    ++v1;
    if (v8 == 1)
    {
      if ((v1 - 1) > 2)
      {
        goto LABEL_16;
      }

      v9 = outlined read-only object #0 of Interpreter.initializedIndicies.getter[v1 + 31];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v5[v11 + 32] = v9;
      v1 = v6;
    }
  }
}

void closure #1 in Interpreter.prepareSnapshot(within:)(uint64_t a1, unsigned __int8 *a2)
{
  if (a2[48])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v3 = *(a2 + 22);
  v4 = *a2;
  if (v4 >= *(v3 + 116))
  {
    goto LABEL_39;
  }

  v5 = *(v3 + 104);
  if (v5)
  {
    v6 = *(*(v5 + 8 * v4) + 8);
    v7 = *(v6 + 124);
    if (v7)
    {
      v8 = 0;
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 124))
        {
          __break(1u);
          goto LABEL_37;
        }

        v20 = *(v6 + 112);
        if (!v20)
        {
          goto LABEL_41;
        }

        if (!*(*(v20 + v8) + 16))
        {
          Tree.init(synthetic:within:)(*(v20 + v8 + 64), a2, v42);
          v21 = *(v20 + v8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v20 + v8) = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
            *(v20 + v8) = v21;
          }

          v24 = *(v21 + 2);
          v23 = *(v21 + 3);
          if (v24 >= v23 >> 1)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
            *(v20 + v8) = v21;
          }

          *(v21 + 2) = v24 + 1;
          v10 = &v21[208 * v24];
          *(v10 + 2) = v42[0];
          v11 = v42[1];
          v12 = v42[2];
          v13 = v42[4];
          *(v10 + 5) = v42[3];
          *(v10 + 6) = v13;
          *(v10 + 3) = v11;
          *(v10 + 4) = v12;
          v14 = v42[5];
          v15 = v42[6];
          v16 = v42[8];
          *(v10 + 9) = v42[7];
          *(v10 + 10) = v16;
          *(v10 + 7) = v14;
          *(v10 + 8) = v15;
          v17 = v42[9];
          v18 = v42[10];
          v19 = v42[12];
          *(v10 + 13) = v42[11];
          *(v10 + 14) = v19;
          *(v10 + 11) = v17;
          *(v10 + 12) = v18;
          *(v20 + v8 + 112) = 1;
        }

        v8 += 168;
      }

      if (a2[48])
      {
        goto LABEL_47;
      }

      v3 = *(a2 + 22);
      v5 = *(v3 + 104);
    }

    v25 = *(v3 + 116);
    v26 = *a2;
    if (v26 >= v25)
    {
      goto LABEL_40;
    }

    if (!v5)
    {
      goto LABEL_46;
    }

    v27 = Snapshot.rootSubgraphs.getter(*(*(v5 + 8 * v26) + 8));
    v28 = *(v27 + 16);
    if (v28)
    {
      *&v42[0] = MEMORY[0x277D84F90];
      v29 = v27;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
      v30 = v29;
      v31 = *&v42[0];
      v32 = *(*&v42[0] + 16);
      v33 = 96;
      do
      {
        v34 = *(v30 + v33);
        *&v42[0] = v31;
        v35 = *(v31 + 24);
        if (v32 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v32 + 1, 1);
          v30 = v29;
          v31 = *&v42[0];
        }

        *(v31 + 16) = v32 + 1;
        *(v31 + 8 * v32 + 32) = v34 << 32;
        v33 += 168;
        ++v32;
        --v28;
      }

      while (v28);

      v36 = *(v31 + 16);
      if (!v36)
      {
        goto LABEL_33;
      }
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
      v36 = *(MEMORY[0x277D84F90] + 16);
      if (!v36)
      {
LABEL_33:

        return;
      }
    }

    v37 = 0;
    while (v37 < *(v31 + 16))
    {
      if (a2[48])
      {
        goto LABEL_42;
      }

      v38 = *(a2 + 22);
      v39 = *a2;
      if (v39 >= *(v38 + 116))
      {
        goto LABEL_38;
      }

      v40 = *(v38 + 104);
      if (!v40)
      {
        goto LABEL_43;
      }

      v41 = *(v31 + 32 + 8 * v37++);
      build_tree_profile_and_levels #1 (_:_:_:_:) in closure #1 in Interpreter.prepareSnapshot(within:)(v41, 0, 1, 0, (*(v40 + 8 * v39) + 8));
      if (v36 == v37)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t build_tree_profile_and_levels #1 (_:_:_:_:) in closure #1 in Interpreter.prepareSnapshot(within:)(unint64_t a1, uint64_t a2, char a3, unint64_t a4, unint64_t *a5)
{
  LOBYTE(v6) = a3;
  v134 = MEMORY[0x277D84FA0];
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v10 = result;
  v12 = *(result + 16);
  v11 = *(result + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    goto LABEL_184;
  }

LABEL_2:
  *(v10 + 16) = v13;
  v14 = (v10 + 32 * v12);
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  v14[48] = v6 & 1;
  *(v14 + 7) = a4;
  v15 = MEMORY[0x277D84F90];
  LOBYTE(v6) = 24;
  if (!v13)
  {
LABEL_95:
    if (*(v15 + 16))
    {
      goto LABEL_96;
    }

LABEL_133:
  }

  while (1)
  {
    v16 = *(v15 + 16);
    if (!v16 || *(v15 + 24 * v16 + 16))
    {
      break;
    }

LABEL_96:
    v74 = *(v15 + 16);
    if (!v74 || *(v15 + 24 * v74 + 16))
    {
      goto LABEL_4;
    }

    v11 = *(v15 + 16);
    if (!v11)
    {
      goto LABEL_176;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v75 = *(v15 + 16);
      if (!v75)
      {
        goto LABEL_132;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v15 = result;
      v75 = *(result + 16);
      if (!v75)
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }
    }

    v76 = v75 - 1;
    v11 = *(v15 + 32 + 24 * (v75 - 1));
    *(v15 + 16) = v76;
    a4 = *a5;
    v6 = HIDWORD(v11);
    if (HIDWORD(v11) >= *(*a5 + 124))
    {
      goto LABEL_177;
    }

    v77 = *(a4 + 112);
    if (!v77)
    {
      goto LABEL_198;
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

    a1 = v11;
    v11 = *(v77 + 168 * HIDWORD(v11));
    if (a1 >= *(v11 + 16))
    {
      goto LABEL_179;
    }

    v111 = v15 + 32;
    v107 = v15;
    v78 = (v11 + 208 * a1);
    v79 = v78[13];
    v128 = v78[12];
    v129 = v79;
    v130 = v78[14];
    v80 = v78[9];
    v124 = v78[8];
    v125 = v80;
    v81 = v78[11];
    v126 = v78[10];
    v127 = v81;
    v82 = v78[5];
    v120 = v78[4];
    v121 = v82;
    v83 = v78[7];
    v122 = v78[6];
    v123 = v83;
    v84 = v78[3];
    v118 = v78[2];
    v119 = v84;
    v131 = a4;
    v13 = &v118;
    result = Tree._childNodes(_:within:during:unabstracting:)(0x10u, &v131, 0, -1, MEMORY[0x277D84FA0]);
    v115 = *(result + 16);
    v117 = result;
    if (v115)
    {
      v85 = 0;
      v113 = result + 32;
      while (1)
      {
        v11 = *(v117 + 16);
        if (v85 >= v11)
        {
          break;
        }

        v13 = v10;
        v11 = v113;
        v86 = *(v113 + 8 * v85);
        v10 = HIDWORD(v86);
        v87 = *(a4 + 124);
        if (HIDWORD(v86) >= v87)
        {
          goto LABEL_151;
        }

        v11 = *(a4 + 112);
        if (!v11)
        {
          goto LABEL_191;
        }

        if ((v86 & 0x80000000) != 0)
        {
          goto LABEL_152;
        }

        v12 = v86;
        v88 = *(v11 + 168 * HIDWORD(v86));
        if (v12 >= *(v88 + 16))
        {
          goto LABEL_153;
        }

        if (v6 >= v87)
        {
          goto LABEL_154;
        }

        v89 = *(v88 + 208 * v12 + 72);
        v90 = (v11 + 168 * v6);
        a2 = *v90;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v90 = a2;
        if ((result & 1) == 0)
        {
          result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(a2);
          a2 = result;
          *v90 = result;
        }

        v11 = *(a2 + 16);
        if (a1 >= v11)
        {
          goto LABEL_155;
        }

        v91 = a2 + 208 * a1;
        v92 = *(v91 + 72);
        v11 = v91 + 72;
        v93 = v92 + v89;
        if (__OFADD__(v92, v89))
        {
          goto LABEL_156;
        }

        *v11 = v93;
        v94 = *(a4 + 124);
        if (v10 >= v94)
        {
          goto LABEL_157;
        }

        v11 = *(a4 + 112);
        if (!v11)
        {
          goto LABEL_192;
        }

        v95 = *(v11 + 168 * v10);
        if (v12 >= *(v95 + 16))
        {
          goto LABEL_158;
        }

        if (v6 >= v94)
        {
          goto LABEL_159;
        }

        v12 = *(v95 + 208 * v12 + 40);
        v96 = (v11 + 168 * v6);
        a2 = *v96;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v96 = a2;
        if ((result & 1) == 0)
        {
          result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(a2);
          a2 = result;
          *v96 = result;
        }

        v10 = v13;
        v11 = *(a2 + 16);
        if (a1 >= v11)
        {
          goto LABEL_160;
        }

        v97 = a2 + 208 * a1;
        v98 = *(v97 + 40);
        v11 = v97 + 40;
        v99 = v98 + v12;
        if (__OFADD__(v98, v12))
        {
          goto LABEL_161;
        }

        ++v85;
        *v11 = v99;
        if (v115 == v85)
        {
          goto LABEL_126;
        }
      }

LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v13, 1, v10);
      v10 = result;
      goto LABEL_2;
    }

LABEL_126:

    v15 = v107;
    v100 = *(v107 + 16);
    if (v100)
    {
      LOBYTE(v6) = 24;
      v11 = v111 + 24 * v100;
      v101 = *(v11 - 16);
      v38 = __OFSUB__(v101, 1);
      v102 = v101 - 1;
      if (v38)
      {
        goto LABEL_183;
      }

      *(v11 - 16) = v102;
LABEL_4:
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_95;
      }
    }

    else
    {
      LOBYTE(v6) = 24;
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_95;
      }
    }
  }

  v17 = (v10 + 32 * v13);
  v18 = *v17;
  v19 = *(v17 + 3);
  *(v10 + 16) = v13 - 1;
  v12 = *a5;
  a1 = HIDWORD(v18);
  v11 = *(*a5 + 124);
  if (HIDWORD(v18) >= v11)
  {
    goto LABEL_164;
  }

  v11 = *(v12 + 112);
  if (!v11)
  {
    goto LABEL_194;
  }

  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_165;
  }

  v106 = v15;
  v20 = v18;
  v11 = *(v11 + 168 * HIDWORD(v18));
  if (v18 >= *(v11 + 16))
  {
    goto LABEL_166;
  }

  v104 = v10;
  v105 = v19;
  v110 = v18;
  v112 = *a5;
  a2 = 0;
  v10 = 0;
  v21 = 0;
  v6 = 0;
  v22 = v11 + 208 * v18;
  v23 = *(v22 + 136);
  v24 = *(v22 + 216);
  v25 = *(v22 + 228);
  v26 = v25 != 0;
  v108 = v25;
  v109 = v24;
  if (v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = v23;
  }

  v114 = v27;
  v133 = v26;
  v28 = 1;
  v132 = 1;
  while (1)
  {
    if (v28)
    {
      if (v26)
      {
        v11 = v108;
        if (v6 == v108)
        {
          goto LABEL_49;
        }

        if (v6 >= v108)
        {
          goto LABEL_162;
        }

        if (!v109)
        {
          goto LABEL_193;
        }

        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_163;
        }

        v29 = *(v109 + 8 * v6++);
      }

      else
      {
        v29 = v114;
      }

      v11 = HIDWORD(v29);
      if (HIDWORD(v29) >= *(v12 + 124))
      {
        goto LABEL_139;
      }

      v30 = *(v12 + 112);
      if (!v30)
      {
        goto LABEL_186;
      }

      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_140;
      }

      v11 = *(v30 + 168 * HIDWORD(v29));
      if (v29 >= *(v11 + 16))
      {
        goto LABEL_141;
      }

      v21 = 0;
      v114 = 0;
      v31 = v11 + 208 * v29;
      a2 = *(v31 + 152);
      v10 = *(v31 + 160);
      v26 = 1;
    }

    v11 = HIDWORD(v10);
    if (v21 == HIDWORD(v10))
    {
LABEL_49:
      v11 = v105;
      v12 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_167;
      }

      v11 = *(v112 + 124);
      if (a1 >= v11)
      {
        goto LABEL_168;
      }

      v46 = *(v112 + 112);
      if (!v46)
      {
        goto LABEL_195;
      }

      v47 = (v46 + 168 * a1);
      v13 = *v47;
      v11 = *(*v47 + 16);
      v10 = v104;
      if (v20 >= v11)
      {
        goto LABEL_169;
      }

      v48 = *v47;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v47 = v13;
      if ((result & 1) == 0)
      {
        result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(v13);
        v13 = result;
        *v47 = result;
      }

      v11 = *(v13 + 16);
      if (v20 >= v11)
      {
        goto LABEL_170;
      }

      *(v13 + 208 * v20 + 72) = 0;
      v11 = *(v112 + 124);
      if (a1 >= v11)
      {
        goto LABEL_171;
      }

      v49 = *(v112 + 112);
      if (!v49)
      {
        goto LABEL_196;
      }

      a4 = v49 + 168 * a1;
      v13 = *a4;
      v11 = *(*a4 + 16);
      if (v20 >= v11)
      {
        goto LABEL_172;
      }

      v50 = *(v13 + 208 * v20 + 32);
      v51 = *a4;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v13;
      if ((result & 1) == 0)
      {
        result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(v13);
        v13 = result;
        *a4 = result;
      }

      v11 = *(v13 + 16);
      if (v20 >= v11)
      {
        goto LABEL_173;
      }

      *(v13 + 208 * v20 + 40) = v50;
      v11 = *(v112 + 124);
      if (a1 >= v11)
      {
        goto LABEL_174;
      }

      v52 = *(v112 + 112);
      if (!v52)
      {
        goto LABEL_197;
      }

      v11 = *(v52 + 168 * a1);
      if (v20 >= *(v11 + 16))
      {
        goto LABEL_175;
      }

      v53 = (v11 + 208 * v20);
      v54 = v53[13];
      v128 = v53[12];
      v129 = v54;
      v130 = v53[14];
      v55 = v53[9];
      v124 = v53[8];
      v125 = v55;
      v56 = v53[11];
      v126 = v53[10];
      v127 = v56;
      v57 = v53[5];
      v120 = v53[4];
      v121 = v57;
      v58 = v53[7];
      v122 = v53[6];
      v123 = v58;
      v59 = v53[3];
      v118 = v53[2];
      v119 = v59;
      v131 = v112;
      v13 = &v118;
      a2 = Tree._childNodes(_:within:during:unabstracting:)(0x10u, &v131, 0, -1, MEMORY[0x277D84FA0]);
      a4 = *(a2 + 16);
      if (a4)
      {
        v60 = 0;
        v6 = 0;
        while (1)
        {
          v11 = *(a2 + 16);
          if (v6 >= v11)
          {
            goto LABEL_137;
          }

          a1 = *(a2 + 32 + 8 * v6);
          v61 = v134;
          if (*(v134 + 16) && (v62 = *(v134 + 40), Hasher.init(_seed:)(), MEMORY[0x26D69DC00](a1), v13 = &v118, v63 = Hasher._finalize()(), v64 = -1 << *(v61 + 32), v65 = v63 & ~v64, ((*(v61 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) != 0))
          {
            v66 = ~v64;
            while (*(*(v61 + 48) + 8 * v65) != a1)
            {
              v65 = (v65 + 1) & v66;
              if (((*(v61 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
              {
                goto LABEL_74;
              }
            }
          }

          else
          {
LABEL_74:
            specialized Set._Variant.insert(_:)(&v118, a1);
            v68 = *(v10 + 16);
            v67 = *(v10 + 24);
            v13 = v68 + 1;
            if (v68 >= v67 >> 1)
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v10);
            }

            *(v10 + 16) = v13;
            v11 = v10 + 32 * v68;
            *(v11 + 32) = a1;
            *(v11 + 40) = v110;
            *(v11 + 48) = 0;
            *(v11 + 56) = v12;
            v38 = __OFADD__(v60++, 1);
            if (v38)
            {
              goto LABEL_138;
            }
          }

          if (++v6 == a4)
          {

            v15 = v106;
            if (v60 >= 1)
            {
              v38 = __OFSUB__(v12, 1);
              v12 = v105;
              LOBYTE(v6) = 24;
              if (v38)
              {
                goto LABEL_180;
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 16) + 1, 1, v106);
                v15 = result;
              }

              a4 = *(v15 + 16);
              v69 = *(v15 + 24);
              v13 = a4 + 1;
              if (a4 >= v69 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), a4 + 1, 1, v15);
                v15 = result;
              }

              *(v15 + 16) = v13;
              v70 = (v15 + 24 * a4);
              v70[4] = v110;
              v70[5] = v60;
              v70[6] = v105;
              goto LABEL_96;
            }

            LOBYTE(v6) = 24;
            if (v60)
            {
              goto LABEL_96;
            }

            goto LABEL_87;
          }
        }
      }

      LOBYTE(v6) = 24;
      v15 = v106;
LABEL_87:
      v12 = *(v15 + 16);
      if (v12)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
          v15 = result;
        }

        v11 = *(v15 + 16);
        if (v12 > v11)
        {
          goto LABEL_181;
        }

        v71 = v15 + 24 * v12;
        v72 = *(v71 + 16);
        v11 = v71 + 16;
        v73 = v72 - 1;
        if (__OFSUB__(v72, 1))
        {
          goto LABEL_182;
        }

        *v11 = v73;
      }

      goto LABEL_96;
    }

    if (v21 >= HIDWORD(v10))
    {
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (!a2)
    {
      break;
    }

    v28 = 0;
    v32 = (a2 + 40 * v21++);
    if (v32[9])
    {
      a4 = *v32;
      v11 = *(v12 + 84);
      if (a4 >= v11)
      {
        goto LABEL_142;
      }

      v11 = *(v12 + 72);
      if (!v11)
      {
        goto LABEL_187;
      }

      if (*(v12 + 124) <= a1)
      {
        goto LABEL_143;
      }

      v116 = v26;
      v33 = *(v12 + 112);
      if (!v33)
      {
        goto LABEL_188;
      }

      v34 = *(v11 + 312 * a4 + 232);
      v12 = a1;
      a1 = v33 + 168 * a1;
      v13 = *a1;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v13;
      if ((result & 1) == 0)
      {
        result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(v13);
        v13 = result;
        *a1 = result;
      }

      v11 = *(v13 + 16);
      if (v20 >= v11)
      {
        goto LABEL_144;
      }

      v35 = v34 & ~(v34 >> 63);
      v36 = v13 + 208 * v20;
      v37 = *(v36 + 32);
      v11 = v36 + 32;
      v38 = __OFADD__(v37, v35);
      v39 = v37 + v35;
      if (v38)
      {
        goto LABEL_145;
      }

      a1 = v12;
      *v11 = v39;
      v12 = v112;
      v11 = *(v112 + 84);
      if (a4 >= v11)
      {
        goto LABEL_146;
      }

      v11 = *(v112 + 72);
      if (!v11)
      {
        goto LABEL_189;
      }

      if (*(v112 + 124) <= a1)
      {
        goto LABEL_147;
      }

      v40 = *(v112 + 112);
      if (!v40)
      {
        goto LABEL_190;
      }

      v41 = *(v11 + 312 * a4 + 248);
      a4 = v40 + 168 * a1;
      v13 = *a4;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v13;
      if ((result & 1) == 0)
      {
        result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(v13);
        v13 = result;
        *a4 = result;
      }

      v11 = *(v13 + 16);
      if (v20 >= v11)
      {
        goto LABEL_148;
      }

      v11 = v41 & ~(v41 >> 63);
      v42 = v13 + 208 * v20;
      v44 = *(v42 + 48);
      v43 = (v42 + 48);
      v45 = v44 + v11;
      if (__OFADD__(v44, v11))
      {
        goto LABEL_149;
      }

      v28 = 0;
      *v43 = v45;
      v26 = v116;
    }
  }

  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
  return result;
}

__n128 Interpreter.subscript.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v3;
  v4 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  v6 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v6;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v9;
  return result;
}

id Interpreter.rq.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void Interpreter.rq.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t Interpreter.add(handle:)(ValueMetadata *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v3 + 24);
  v6 = *(a2 + 16);
  v7 = (v5 + 40);

  specialized EvolutionTable.add(_:impl:)(a1 | 0x8000000000000000, v6, 0, v5 + 40, v3);

  if (a1 != &type metadata for Interpreter.Control)
  {
    result = (*(v6 + 24))(a1, v6);
    v9 = *(v5 + 56);
    v27[0] = *v7;
    v27[1] = v9;
    v28[0] = *(v5 + 72);
    v10 = (v5 + 56);
    v11 = (v5 + 68);
    v12 = (v5 + 88);
    *(v28 + 9) = *(v7 + 41);
    v13 = v7;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    while (1)
    {
      v17 = *v16;
      if (*v15)
      {
        v18 = *v14;
        if ((v18[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v17)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v27);
      }

      v14 = (v17 + 16);
      v15 = (v17 + 28);
      v16 = (v17 + 48);
      v13 = v17;
    }

    v19 = *v13;
    if (v19)
    {
      v20 = (v19 + 24 * *v18);
      v21 = v7[1];
      v25[0] = *v7;
      v25[1] = v21;
      v26[0] = v7[2];
      *(v26 + 9) = *(v7 + 41);
      while (1)
      {
        v22 = *v12;
        if (result < *v11)
        {
          v23 = &(*v10)[2 * result];
          if ((v23[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v22)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 1, v25);
        }

        v10 = (v22 + 16);
        v11 = (v22 + 28);
        v12 = (v22 + 48);
        v7 = v22;
      }

      if (*v7)
      {
        result = *v7 + 24 * *v23;
        v24 = *result;
        *(v24 + 104) = *v20 + 56;
        *(v24 + 168) = *v20 + 120;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t Interpreter.deinit()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static Interpreters.shared;
  os_unfair_lock_lock_with_options();
  outlined init with copy of ResourceSet<Interpreter, ()>(&v2[2], v6, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  os_unfair_lock_unlock(v2);
  specialized ResourceSet.remove(instance:)(v1);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v6, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  v3 = *(v1 + 24);
  Interpreter.Storage.deallocate()();
  v4 = *(v1 + 24);
  if (v4)
  {
    MEMORY[0x26D69EAB0](v4, -1, -1);
    *(v1 + 24) = 0;
    outlined destroy of unowned Swift.AnyObject(v1 + 16);

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Interpreter.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static Interpreters.shared;
  os_unfair_lock_lock_with_options();
  outlined init with copy of ResourceSet<Interpreter, ()>(&v2[2], v6, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  os_unfair_lock_unlock(v2);
  specialized ResourceSet.remove(instance:)(v1);
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v6, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  v3 = *(v1 + 24);
  Interpreter.Storage.deallocate()();
  v4 = *(v1 + 24);
  if (v4)
  {
    MEMORY[0x26D69EAB0](v4, -1, -1);
    *(v1 + 24) = 0;
    outlined destroy of unowned Swift.AnyObject(v1 + 16);

    return swift_deallocClassInstance();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Interpreter.read()()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t Interpreter.updateSnapshot(for:kind:generation:onEvent:)(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 32);
  swift_beginAccess();
  v3 = *(v2 + 32);
  OS_dispatch_queue.sync<A>(execute:)();

  return v5;
}

void Interpreter._updateSnapshot(_:_:_:onEvent:)(unsigned __int8 a1, uint64_t *a2, unint64_t add_explicit, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *a2;
  v49 = a2[2];
  v50 = a2[1];
  v48 = a2[3];
  v47 = *(a2 + 32);
  Interpreter.initializeSnapshots()();
  v14 = *(v6 + 24);
  v51 = v13;
  if (a4)
  {
    v15 = a1;
    if (*(v14 + 132) <= a1)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v16 = *(v14 + 120);
    if (!v16)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v17 = a1;
    add_explicit = atomic_fetch_add_explicit(*(v16 + 8 * a1), 0, memory_order_relaxed);
  }

  else
  {
    v17 = a1;
    v15 = a1;
  }

  if (*(v14 + 132) <= v15)
  {
    __break(1u);
    goto LABEL_50;
  }

  v18 = *(v14 + 120);
  if (!v18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v19 = *(v18 + 8 * v17);
  v20 = *(v6 + 24);
  if (a1)
  {
    if (!*(v20 + 116))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v21 = *(v20 + 104);
    if (!v21)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v22 = *v21;
    os_unfair_lock_lock_with_options();
    v20 = *(v6 + 24);
  }

  if (*(v20 + 116) <= v15)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v23 = *(v20 + 104);
  if (!v23)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v24 = *(v23 + 8 * v17);
  os_unfair_lock_lock_with_options();
  if (add_explicit != atomic_fetch_add_explicit(v19, 0, memory_order_relaxed))
  {
    atomic_fetch_add_explicit(v19, 0, memory_order_relaxed);
LABEL_31:
    if (!a1)
    {
      goto LABEL_36;
    }

    v32 = 1;
LABEL_33:
    v33 = *(v7 + 24);
    if (*(v33 + 116))
    {
      v34 = *(v33 + 104);
      if (!v34)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      os_unfair_lock_unlock(*v34);
      if (!v32)
      {
        goto LABEL_39;
      }

LABEL_36:
      v35 = *(v7 + 24);
      if (*(v35 + 116) > v15)
      {
        v36 = *(v35 + 104);
        if (v36)
        {
          goto LABEL_48;
        }

        __break(1u);
LABEL_39:
        v37 = *(v7 + 24);
        v52[0] = v17 | 0x400;
        v52[1] = add_explicit;
        v53 = 0u;
        v54 = 0u;
        v55 = 0;
        outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a5);
        Interpreter.Iterator.init(_:kind:onEvent:)(v37, v52, a5, a6, v56);
        if (v57)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        if (v56[0] < *(v58 + 116))
        {
          v38 = *(v58 + 104);
          if (!v38)
          {
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          v39 = *(*(*(v38 + 8 * v56[0]) + 8) + 8);
          v40 = *v39;
          v41 = v39[1];
          v42 = v39[2];
          v43 = v39[3];
          v44 = *(v39 + 32);
          *v39 = v51;
          v39[1] = v50;
          v39[2] = v49;
          v39[3] = v48;
          *(v39 + 32) = v47;
          outlined copy of Snapshot.Kind();
          outlined consume of Snapshot.Kind();
          if (Interpreter.Iterator.read()())
          {
            closure #1 in Interpreter.prepareSnapshot(within:)(*(v7 + 24), v56);
            specialized EvolutionTable.deallocate()();
            v45 = *(v7 + 24);
            if (*(v45 + 116) > v15)
            {
              v36 = *(v45 + 104);
              if (v36)
              {
                goto LABEL_48;
              }

              goto LABEL_73;
            }

            goto LABEL_59;
          }

          specialized EvolutionTable.deallocate()();
          v46 = *(v7 + 24);
          if (*(v46 + 116) <= v15)
          {
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v36 = *(v46 + 104);
          if (!v36)
          {
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

LABEL_48:
          os_unfair_lock_unlock(*(v36 + 8 * v17));
          return;
        }

        goto LABEL_56;
      }

      goto LABEL_53;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (*(v14 + 116) <= v15)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v25 = *(v14 + 104);
  if (!v25)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (a1 && *(*(v25 + 8 * v17) + 5))
  {
    Snapshot.deallocate()();
    if (*(v14 + 116) <= v15)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v26 = *(v14 + 104);
    if (!v26)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v27 = *(v26 + 8 * v17);
    os_unfair_lock_assert_owner(v27);
    if (*(v27 + 5) != 1)
    {
      goto LABEL_58;
    }

    *(v27 + 5) = 0;
  }

  if (add_explicit != atomic_fetch_add_explicit(v19, 0, memory_order_relaxed))
  {
    goto LABEL_31;
  }

  if (!a1)
  {
    goto LABEL_39;
  }

  v28 = *(v14 + 116);
  if (!v28)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v29 = *(v14 + 104);
  if (v29)
  {
    v30 = *v29;
    os_unfair_lock_assert_owner(*v29);
    *v56 = *&v30[2]._os_unfair_lock_opaque;
    Snapshot.copy()();
    if (v28 <= v15)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v31 = v29[v17];
    os_unfair_lock_assert_owner(v31);
    if ((v31[1]._os_unfair_lock_opaque & 0x100) != 0)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v32 = 0;
    *&v31[2]._os_unfair_lock_opaque = *v56;
    BYTE1(v31[1]._os_unfair_lock_opaque) = 1;
    goto LABEL_33;
  }

LABEL_75:
  __break(1u);
}

uint64_t closure #1 in closure #1 in Interpreter.add(handle:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for TraceChunk(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *(a3 + 24);
  *(a1 + 24) = v10;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = *(a1 + 8);
    v13 = swift_conformsToProtocol2();
    if (v13)
    {
      (*(v13 + 56))(v45, v11, v13);
      v47 = v9;
      Evolution_Types.available(version:)(&v47, &v48);

      v14 = v48;
      v15 = v49;
      v16 = *(v48 + 16);
      if (!v16)
      {
LABEL_23:
      }

      v17 = 0;
      v18 = *(&v48 + 1);
      v19 = v48 + 32;
      v40 = v48;
      v39 = v16;
      v42 = v48 + 32;
      v43 = *(&v48 + 1);
      while (v17 < *(v14 + 16))
      {
        v44 = *(v19 + 16 * v17);
        v45[0] = v44;
        if (v18(v45))
        {
          LOBYTE(v45[0]) = v9;
          v20 = v44;
          v22 = (*(*(&v44 + 1) + 64))(v45, v44);
          if (v22)
          {
            v23 = v21;
            if (*(v10 + 32))
            {
              specialized T_Header.init()(v45);
            }

            else
            {
              v25 = *(v10 + 24);
              v26 = v15;
              v27 = v10;
              v28 = v9;
              v29 = v41;
              outlined init with copy of TraceChunk(v25, v41);
              v30 = a1;
              v31 = *(*v29 + 32);
              v32 = v29;
              v9 = v28;
              v10 = v27;
              v15 = v26;
              v14 = v40;
              outlined destroy of TraceChunk(v32);
              v33 = v31;
              a1 = v30;
              v16 = v39;
              specialized T_Header.init(loadedFrom:)(v33, v45);
            }

            v48 = v45[0];
            v49 = v45[1];
            v50 = v45[2];
            v51 = v46;
            v24 = (*(v23 + 24))(&v48, v22, v23);
          }

          else
          {
            v24 = 0;
          }

          v34 = swift_conformsToProtocol2();
          if (v34)
          {
            v35 = v20 == 0;
          }

          else
          {
            v35 = 1;
          }

          if (v35)
          {
            v36 = swift_conformsToProtocol2();
            if (!v36 || !v20)
            {
              goto LABEL_26;
            }

            specialized EvolutionTable.add(_:impl:)(v20 | 0x8000000000000000, *(v36 + 8), 0, a1 + 120, v24 | ((v22 == 0) << 16));
          }

          else
          {
            specialized EvolutionTable.add(_:impl:)(v20 | 0x8000000000000000, *(v34 + 8), 0, a1 + 56, v24 | ((v22 == 0) << 16));
          }

          v19 = v42;
          v18 = v43;
        }

        if (v16 == ++v17)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }
  }

  __break(1u);
LABEL_26:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall Interpreter.initializeSnapshots()()
{
  v1 = *(v0 + 24);
  if ((*(*(v1 + 136) + 96) & 1) == 0)
  {
    memset(v2, 0, sizeof(v2));
    v3 = 2;
    Interpreter.Iterator.init(_:kind:onEvent:)(v1, v2, 0, 0, v4);
    if (!Interpreter.Iterator.read()())
    {
      __break(1u);
      return;
    }

    *(*(v1 + 136) + 96) = 1;
    specialized EvolutionTable.deallocate()();
    v1 = *(v0 + 24);
  }

  closure #1 in Interpreter.initializeSnapshots()(v1, v0);
}

void closure #1 in Interpreter.initializeSnapshots()(__int128 *a1, uint64_t a2)
{
  if (*(a1 + 29))
  {
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = *(a1 + 33);
  v6 = 2 * v5;
  do
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    *(v7 + 4) = 0;
    v8 = *(a1 + 28);
    if (v4 == v8)
    {
      if (v8)
      {
        v9 = v3;
      }

      else
      {
        v9 = 1;
      }

      if (HIDWORD(v9))
      {
        goto LABEL_35;
      }

      v10 = *(a1 + 13);
      *(a1 + 28) = v9;
      if (v10)
      {
        v11 = realloc(v10, 8 * v9);
        if (!v11)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v11 = swift_slowAlloc();
      }

      v12 = v11;
      *(a1 + 13) = v11;
      if (!v11)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = *(a1 + 13);
      if (!v12)
      {
        goto LABEL_40;
      }
    }

    v12[v4] = v7;
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = *(a1 + 32);
    if (v5 + v4 == v14)
    {
      if (v14)
      {
        v15 = v6;
      }

      else
      {
        v15 = 1;
      }

      if (HIDWORD(v15))
      {
        goto LABEL_36;
      }

      v16 = *(a1 + 15);
      *(a1 + 32) = v15;
      if (v16)
      {
        v17 = realloc(v16, 8 * v15);
        if (!v17)
        {
          goto LABEL_43;
        }

        *(a1 + 15) = v17;
      }

      else
      {
        v17 = swift_slowAlloc();
        *(a1 + 15) = v17;
        if (!v17)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v17 = *(a1 + 15);
      if (!v17)
      {
        goto LABEL_41;
      }
    }

    *(v17 + 8 * v5 + 8 * v4) = v13;
    if (~v5 == v4)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    ++v4;
    v6 += 2;
    v3 += 2;
  }

  while (v4 != 3);
  v60 = v17;
  *(a1 + 33) = v5 + 3;
  *(a1 + 29) = 3;
  v18 = *v12;
  os_unfair_lock_lock_with_options();
  v81 = *(a2 + 24);
  v4 = MEMORY[0x277D84F90];
  v127[0] = MEMORY[0x277D84F90];
  memset(&v127[1], 0, 24);
  v128 = 1;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA8SnapshotV4KindO_Tt0B5(v127);
  v72 = v19;
  v20 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV_SayAHGTt0g5Tf4g_n(v4);
  v76 = v21;
  v79 = v20;
  v80 = HIDWORD(v21);
  v75 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA8SnapshotV10EventIndexV_SayAJGTt0g5Tf4g_n(v4);
  v73 = v22;
  v78 = HIDWORD(v22);
  v74 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9AttributeV_SayAHGTt0g5Tf4g_n(v4);
  v24 = v23;
  v77 = HIDWORD(v23);
  v25 = MEMORY[0x277D84F98];
  v71 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(MEMORY[0x277D84F98]);
  v26 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA4EdgeV_SayAHGTt0g5Tf4g_n(v4);
  v28 = v27;
  v69 = v26;
  v70 = HIDWORD(v27);
  v29 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA8SubgraphV_SayAHGTt0g5Tf4g_n(v4);
  v31 = v30;
  v67 = v29;
  v68 = HIDWORD(v30);
  v66 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v25);
  v32 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12GraphContextV_SayAHGTt0g5Tf4g_n(v4);
  v34 = v33;
  v64 = v32;
  v65 = HIDWORD(v33);
  v63 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v25);
  v35 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA14ReuseEventItemO_SayAHGTt0g5Tf4g_n(v4);
  v37 = v36;
  v61 = v35;
  v62 = HIDWORD(v36);
  updated = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA11UpdateReuseV_SayAHGTt0g5Tf4g_n(v4);
  LODWORD(v5) = v39;
  v92[0] = v81;
  v92[1] = v72;
  v93 = xmmword_26C32E060;
  v94 = v79;
  v95 = v76;
  v96 = v80;
  v97 = v75;
  v98 = v73;
  v99 = v78;
  v100 = 0;
  v101 = v74;
  v102 = v24;
  v103 = v77;
  v104 = v71;
  v105 = v69;
  v106 = v28;
  v107 = v70;
  v108 = v67;
  v109 = v31;
  v110 = v68;
  v111 = v66;
  v112 = v64;
  v113 = v34;
  v114 = v65;
  v115 = v63;
  v116 = v61;
  v117 = v37;
  v118 = v62;
  v119 = updated;
  v120 = v39;
  v121 = v40;
  v122 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v25);
  v123 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA8SnapshotV11AbstractionV_SayAJGTt0g5Tf4g_n(v4);
  v124 = v41;
  v125 = v42;
  v126 = 0;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA8SnapshotV7StorageV_Tt0g5(v92);
  v44 = v43;
  v45 = *v12;
  os_unfair_lock_assert_owner(v45);
  if (*(v45 + 5))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v45 + 8) = v44;
  *(v45 + 5) = 1;
  v46 = *(a2 + 24);
  v47 = **v60;
  *&v83 = 512;
  *(&v83 + 1) = v47;
  v84 = 0u;
  v85 = 0u;
  LOBYTE(v86) = 0;
  Interpreter.Iterator.init(_:kind:onEvent:)(v46, &v83, 0, 0, v91);
  if (!Interpreter.Iterator.read()())
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v48 = a1[9];
  *&v90[16] = a1[8];
  *&v90[32] = v48;
  v49 = a1[11];
  *&v90[48] = a1[10];
  *&v90[64] = v49;
  v50 = a1[5];
  v87 = a1[4];
  v88 = v50;
  v51 = a1[7];
  v89 = a1[6];
  *v90 = v51;
  v52 = a1[1];
  v83 = *a1;
  v84 = v52;
  v53 = a1[3];
  v85 = a1[2];
  v86 = v53;
  Interpreter.Storage.consistencyCheckViewTree(within:)(v91);
  Interpreter.Storage.synthesizeTreesForGraphs(within:)(v91);
  v54 = a1[5];
  v87 = a1[4];
  v88 = v54;
  v55 = a1[1];
  v83 = *a1;
  v84 = v55;
  v56 = a1[3];
  v85 = a1[2];
  v86 = v56;
  v57 = *(a1 + 12);
  v58 = *(a1 + 13);
  *&v90[72] = *(a1 + 23);
  v59 = *(a1 + 28);
  LODWORD(v4) = *(a1 + 29);
  *&v90[56] = *(a1 + 168);
  *&v90[40] = *(a1 + 152);
  *&v90[24] = *(a1 + 136);
  *&v90[8] = *(a1 + 120);
  *&v89 = v57;
  *(&v89 + 1) = v58;
  *v90 = v59;
  *&v90[4] = v4;
  Interpreter.Storage.abstractViewTree(within:)(v91);
  if (!v4)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    *(a1 + 33) = v5 + v4;
    *(a1 + 29) = v4;
    __break(1u);
LABEL_41:
    *(a1 + 33) = v5 + v4;
    *(a1 + 29) = v4 + 1;
    __break(1u);
LABEL_42:
    *(a1 + 33) = v5 + v4;
    *(a1 + 29) = v4;
    __break(1u);
LABEL_43:
    *(a1 + 33) = v5 + v4;
    *(a1 + 29) = v4 + 1;
    __break(1u);
    goto LABEL_44;
  }

  if (v58)
  {
    os_unfair_lock_unlock(*v58);
    specialized EvolutionTable.deallocate()();
    return;
  }

LABEL_44:
  __break(1u);
}

uint64_t Interpreter.appsName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TraceChunk(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  strcpy(v20, "[interpreter ");
  HIWORD(v20[1]) = -4864;
  v6 = *(v0 + 24);
  if (*(v6 + 32))
  {
    specialized T_Header.init()(v21);
  }

  else
  {
    outlined init with copy of TraceChunk(*(v6 + 24), v5);
    v7 = *(*v5 + 32);
    outlined destroy of TraceChunk(v5);
    specialized T_Header.init(loadedFrom:)(v7, v21);
  }

  v19[1] = v22;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v9 = *(*(v1 + 24) + 136);
  v10 = *(v9 + 40);
  v12 = *(v9 + 48);
  v11 = *(v9 + 56);
  v13 = *(v9 + 72);
  v14 = *(v9 + 88);

  v15 = v12(v10);
  v17 = v16;

  MEMORY[0x26D69CDB0](v15, v17);

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v20[0];
}

uint64_t Interpreter.debugName.getter()
{
  v1 = *(v0 + 24);
  v11 = v1[8];
  v12 = v1[9];
  v13 = v1[10];
  v14 = v1[11];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return Interpreter.Storage.debugName.getter();
}

uint64_t Interpreter.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = HIDWORD(a2);
  v9 = *(v4 + 24);
  v10 = (v9 + 40);
  v11 = *(v9 + 56);
  v78[0] = *(v9 + 40);
  v78[1] = v11;
  v79[0] = *(v9 + 72);
  *(v79 + 9) = *(v9 + 81);
  v12 = (v9 + 72);
  v13 = (v9 + 84);
  v14 = (v9 + 88);
  while (1)
  {
    v15 = *v14;
    if (a1 < *v13)
    {
      v16 = (*v12 + 8 * a1);
      if ((v16[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(a1, 0, v78);
    }

    v12 = (v15 + 32);
    v13 = (v15 + 44);
    v14 = (v15 + 48);
    v10 = v15;
  }

  v17 = *v10;
  if (!v17)
  {
    goto LABEL_46;
  }

  v18 = (v17 + 24 * *v16);
  v19 = *v18;
  v20 = *(*v18 + 196);
  v21 = 0uLL;
  if (v20)
  {
    v22 = *(v19 + 184);
    if (!v22)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v23 = v20 - 1;
    if (v8 <= *(v22 + 32 * (v20 - 1)))
    {
      v26 = v20 >> 1;
      v27 = *(v22 + 32 * (v20 >> 1));
      if (v20 != 1 && v27 != HIDWORD(a2))
      {
        if (v8 >= v27)
        {
          v30 = v26 + 1;
          v29 = v8;
          v26 = v20;
        }

        else
        {
          v29 = HIDWORD(a2);
          v30 = 0;
        }

        v31 = specialized Collection<>.binarySearch(for:)(v29, v30, v26, v22, *(v19 + 192) | (v20 << 32));
        if (v32)
        {
          v26 = v20 - 1;
        }

        else
        {
          v26 = v31;
        }

        v21 = 0uLL;
      }

      v33 = (v22 + 32 * v26);
      v23 = v26;
      while (v26 < v20)
      {
        if (*v33 <= v8)
        {
          goto LABEL_11;
        }

        if (!v23)
        {
          goto LABEL_30;
        }

        --v23;
        v33 -= 8;
        if (v23 > v20)
        {
          __break(1u);
LABEL_30:
          v24 = 0;
          v25 = 0;
          v5 = a4;
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

LABEL_11:
    *&v48 = v23;
    LOBYTE(v62) = a2 & 1;
    v5 = a4;
    closure #1 in Interpreter.subscript.getter(&v48, v4, a1, &v62);
    v24 = v62;
    v25 = *(&v62 + 1);
    v21 = v63;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

LABEL_31:
  v61 = a2 & 1;
  *&v48 = a1;
  *(&v48 + 1) = a2 & 0xFFFFFFFF00000001;
  *&v49 = v24;
  *(&v49 + 1) = v25;
  v50 = v21;
  LOBYTE(v51) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v9, &v48, 0, 0, &v62);
  if (Interpreter.Iterator.read()())
  {
    v76[0] = *&v65[8];
    v76[1] = *&v65[24];
    v77[0] = *&v65[40];
    *(v77 + 9) = *&v65[49];
    v34 = *&v65[8];
    v35 = *&v65[40];
    v36 = *&v65[56];
    if (*&v65[68] >= *&v65[52])
    {
      goto LABEL_36;
    }

    while (1)
    {
      v38 = (v35 + 8 * *&v65[68]);
      if ((v38[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_36:
        if (!v36)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*&v65[68], 0, v76);
        }

        v34 = *v36;
        v35 = v36[4];
        v37 = *(v36 + 11);
        v36 = v36[6];
      }

      while (*&v65[68] >= v37);
    }

    if (!v34)
    {
      goto LABEL_47;
    }

    v39 = (v34 + 24 * *v38);
    v40 = *v39;
    v41 = *(*v39 + 96);
    if (v41 != 2)
    {
      v42 = *(v40 + 104);
      v43 = *(v40 + 88);
      v71 = *(v40 + 72);
      v72 = v43;
      v73 = v41 & 0x101;
      v74 = HIDWORD(v41);
      v75 = v42 & 1;
      v44 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
      if ((v45 & 1) == 0)
      {
        v58 = v68;
        v59 = v69;
        v60 = v70;
        v54 = *&v65[48];
        v55 = *&v65[64];
        v56 = v66;
        v57 = v67;
        v50 = v64;
        v51 = *v65;
        v52 = *&v65[16];
        v53 = *&v65[32];
        v48 = v62;
        v49 = v63;
        (*(v5 + 16))(v44);
        return specialized EvolutionTable.deallocate()();
      }

      goto LABEL_44;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_48:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t *closure #1 in Interpreter.subscript.getter@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *result;
  v6 = *(a2 + 24);
  v7 = (v6 + 40);
  v8 = *(v6 + 56);
  v18[0] = *(v6 + 40);
  v18[1] = v8;
  v19[0] = *(v6 + 72);
  *(v19 + 9) = *(v6 + 81);
  v9 = (v6 + 72);
  v10 = (v6 + 84);
  v11 = (v6 + 88);
  while (1)
  {
    v12 = *v11;
    if (a3 < *v10)
    {
      v13 = (*v9 + 8 * a3);
      if ((v13[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v12)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(a3, 0, v18);
    }

    v9 = (v12 + 32);
    v10 = (v12 + 44);
    v11 = (v12 + 48);
    v7 = v12;
  }

  v14 = *v7;
  if (v14)
  {
    result = (v14 + 24 * *v13);
    if (v5 >= *(*result + 196))
    {
      __break(1u);
    }

    else
    {
      v15 = *(*result + 184);
      if (v15)
      {
        v16 = v15 + 32 * v5;
        v17 = *(v16 + 8);
        *a4 = *v16;
        *(a4 + 8) = v17;
        *(a4 + 16) = *(v16 + 16);
        return result;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double one-time initialization function for eventAbstractions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16EventAbstraction_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16EventAbstraction_pXpGMR);
  v0 = swift_allocObject();
  *&result = 17;
  *(v0 + 16) = xmmword_26C32E090;
  *(v0 + 32) = &type metadata for Allocation;
  *(v0 + 40) = &protocol witness table for Allocation;
  *(v0 + 48) = &type metadata for EnvironmentWriting;
  *(v0 + 56) = &protocol witness table for EnvironmentWriting;
  *(v0 + 64) = &type metadata for DisplayList;
  *(v0 + 72) = &protocol witness table for DisplayList;
  *(v0 + 80) = &type metadata for PlatformItemList;
  *(v0 + 88) = &protocol witness table for PlatformItemList;
  *(v0 + 96) = &type metadata for ViewBodies;
  *(v0 + 104) = &protocol witness table for ViewBodies;
  *(v0 + 112) = &type metadata for ViewList;
  *(v0 + 120) = &protocol witness table for ViewList;
  *(v0 + 128) = &type metadata for PreferenceList;
  *(v0 + 136) = &protocol witness table for PreferenceList;
  *(v0 + 144) = &type metadata for Layout;
  *(v0 + 152) = &protocol witness table for Layout;
  *(v0 + 160) = &type metadata for AccessibilityNodeList;
  *(v0 + 168) = &protocol witness table for AccessibilityNodeList;
  *(v0 + 176) = &type metadata for PhaseWriting;
  *(v0 + 184) = &protocol witness table for PhaseWriting;
  *(v0 + 192) = &type metadata for Transactions;
  *(v0 + 200) = &protocol witness table for Transactions;
  *(v0 + 208) = &type metadata for PlatformViews;
  *(v0 + 216) = &protocol witness table for PlatformViews;
  *(v0 + 224) = &type metadata for ConditionalContent;
  *(v0 + 232) = &protocol witness table for ConditionalContent;
  *(v0 + 240) = &type metadata for ViewCreation;
  *(v0 + 248) = &protocol witness table for ViewCreation;
  *(v0 + 256) = &type metadata for ResolvedContent;
  *(v0 + 264) = &protocol witness table for ResolvedContent;
  *(v0 + 272) = &type metadata for ViewResponder;
  *(v0 + 280) = &protocol witness table for ViewResponder;
  *(v0 + 288) = &type metadata for ViewTransform;
  *(v0 + 296) = &protocol witness table for ViewTransform;
  static Interpreter.eventAbstractions = v0;
  return result;
}

uint64_t static Interpreter.eventAbstractions.getter()
{
  if (one-time initialization token for eventAbstractions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Interpreter.eventAbstractions.setter(void *a1)
{
  if (one-time initialization token for eventAbstractions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Interpreter.eventAbstractions = a1;
}

uint64_t (*static Interpreter.eventAbstractions.modify())()
{
  if (one-time initialization token for eventAbstractions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return AggregateContainer.root.modify;
}

uint64_t key path getter for static Interpreter.eventAbstractions : Interpreter.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for eventAbstractions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static Interpreter.eventAbstractions;
}

uint64_t key path setter for static Interpreter.eventAbstractions : Interpreter.Type(void **a1)
{
  v1 = *a1;
  v2 = one-time initialization token for eventAbstractions;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Interpreter.eventAbstractions = v1;
}

double one-time initialization function for treeAbstractions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport18TreeAbstractionImp_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport18TreeAbstractionImp_pXpGMR);
  v0 = swift_allocObject();
  *&result = 13;
  *(v0 + 16) = xmmword_26C32E0A0;
  *(v0 + 32) = &type metadata for ChargeToParentA;
  *(v0 + 40) = &protocol witness table for ChargeToParentA;
  *(v0 + 48) = &type metadata for VariadicViewTreeA;
  *(v0 + 56) = &protocol witness table for VariadicViewTreeA;
  *(v0 + 64) = &type metadata for TextA;
  *(v0 + 72) = &protocol witness table for TextA;
  *(v0 + 80) = &type metadata for AnyViewA;
  *(v0 + 88) = &protocol witness table for AnyViewA;
  *(v0 + 96) = &type metadata for ConditionalViewA;
  *(v0 + 104) = &protocol witness table for ConditionalViewA;
  *(v0 + 112) = &type metadata for TupleViewA;
  *(v0 + 120) = &protocol witness table for TupleViewA;
  *(v0 + 128) = &type metadata for ConditionalViewA;
  *(v0 + 136) = &protocol witness table for ConditionalViewA;
  *(v0 + 144) = &type metadata for NavigationSplitViewA;
  *(v0 + 152) = &protocol witness table for NavigationSplitViewA;
  *(v0 + 160) = &type metadata for ButtonA;
  *(v0 + 168) = &protocol witness table for ButtonA;
  *(v0 + 176) = &type metadata for ColorA;
  *(v0 + 184) = &protocol witness table for ColorA;
  *(v0 + 192) = &type metadata for TabViewA;
  *(v0 + 200) = &protocol witness table for TabViewA;
  *(v0 + 208) = &type metadata for OpacityRendererEffectA;
  *(v0 + 216) = &protocol witness table for OpacityRendererEffectA;
  *(v0 + 224) = &type metadata for ModifierAbstraction;
  *(v0 + 232) = &protocol witness table for ModifierAbstraction;
  *&attachmentAssertion.is_nil = v0;
  return result;
}

uint64_t Interpreter.Request.describe(state:)(__int128 *a1)
{
  v5 = *a1;
  *v6 = a1[1];
  *&v6[10] = *(a1 + 26);
  if (*(v1 + 8))
  {
    v2 = 0x73656469766F7270;
    v3 = 0xE800000000000000;
  }

  else
  {
    v2 = 0x736465656ELL;
    v3 = 0xE500000000000000;
  }

  return specialized InspectionState.describe<A>(_:_:)(v2, v3, *v1, specialized InspectionState.wrapDescription<A>(_:));
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x26D69CDB0]();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v6 = specialized InspectionState.wrapDescription<A>(_:)(a3, a4 & 1);
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v7 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v7;
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, a4, specialized ArrayLike.describe(state:));
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, a4, specialized ArrayLike.describe(state:));
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, a4, specialized ArrayLike.describe(state:));
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, a4, specialized ArrayLike.describe(state:));
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, a4, specialized ArrayLike.describe(state:));
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, a4, specialized ArrayLike.describe(state:));
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, &type metadata for SubgraphRef, &protocol witness table for SubgraphRef);
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, &type metadata for AttributeRef, &protocol witness table for AttributeRef);
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, specialized Collection.prefix(_:), specialized InspectionState.wrapDescription<A>(_:));
}

{
  MEMORY[0x26D69CDB0]();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v4 = specialized InspectionState.wrapDescription<A>(_:)(a3);
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v5 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v5;
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, specialized InspectionState.wrapDescription<A>(_:));
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, specialized ArrayLike.describe(state:), specialized InspectionState.wrapDescription<A>(_:));
}

{
  return specialized InspectionState.describe<A>(_:_:)(a1, a2, a3, specialized InspectionState.wrapDescription<A>(_:));
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x26D69CDB0]();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v8 = specialized InspectionState.wrapDescription<A>(_:)(a3 | ((HIDWORD(a3) & 1) << 32), a4, a5);
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v9 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v9;
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  MEMORY[0x26D69CDB0]();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v6 = a4(a3);
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v7 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v7;
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(Swift::Int *, uint64_t, uint64_t))
{
  MEMORY[0x26D69CDB0]();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v8 = specialized InspectionState.wrapDescription<A>(_:)(a3, a4, a5);
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v9 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v9;
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  MEMORY[0x26D69CDB0]();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v8 = a5(a3, a4);
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v9 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v9;
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x26D69CDB0]();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v10 = specialized InspectionState.wrapDescription<A>(_:)(a3, a4, a5, a6 & 0xFFFFFFFFFFLL);
  MEMORY[0x26D69CDB0](v10);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v11 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v11;
}

uint64_t specialized InspectionState.describe<A>(_:_:)()
{
  MEMORY[0x26D69CDB0]();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v0 = specialized InspectionState.wrapDescription<A>(_:)();
  MEMORY[0x26D69CDB0](v0);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v1 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v1;
}

{
  MEMORY[0x26D69CDB0]();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v0 = specialized InspectionState.wrapDescription<A>(_:)();
  MEMORY[0x26D69CDB0](v0);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v1 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v1;
}

uint64_t specialized InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  MEMORY[0x26D69CDB0]();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v4 = specialized InspectionState.wrapDescription<A>(_:)(a3 & 0x1FF);
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v5 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v5;
}

uint64_t Interpreter.Request.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x26D69DBC0](*(v0 + 8));
  return MEMORY[0x26D69DC00](v1);
}

Swift::Int Interpreter.Request.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v2);
  MEMORY[0x26D69DC00](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Interpreter.Request()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v2);
  MEMORY[0x26D69DC00](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Interpreter.Request()
{
  v1 = *v0;
  MEMORY[0x26D69DBC0](*(v0 + 8));
  return MEMORY[0x26D69DC00](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Interpreter.Request()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v2);
  MEMORY[0x26D69DC00](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance Interpreter.Request(__int128 *a1)
{
  v5 = *a1;
  *v6 = a1[1];
  *&v6[10] = *(a1 + 26);
  if (*(v1 + 8))
  {
    v2 = 0x73656469766F7270;
    v3 = 0xE800000000000000;
  }

  else
  {
    v2 = 0x736465656ELL;
    v3 = 0xE500000000000000;
  }

  return specialized InspectionState.describe<A>(_:_:)(v2, v3, *v1, specialized InspectionState.wrapDescription<A>(_:));
}

uint64_t _s21SwiftUITracingSupport9DefaultedO8describe5stateSSAA15InspectionStateV_tFSb_Ttg5(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    v1 = 29992;
  }

  else
  {
    v1 = 25640;
  }

  MEMORY[0x26D69CDB0](v1 | 0x200000u, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = HIDWORD(a5);
  if (HIDWORD(a5) < result || v5 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - result;
  if (a2 >= 1)
  {
    if (v7 < 0 || v7 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v7 <= 0 && v7 > a2)
  {
    return 0;
  }

LABEL_13:
  v8 = __OFADD__(result, a2);
  result += a2;
  if (v8)
  {
    goto LABEL_16;
  }

  if (result > v5)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

char *specialized ArrayLike.describe(state:)(uint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v9 = HIDWORD(a3);
  if (*a1 < 1 || v9 == 0)
  {
    v64 = 9051;
    v65 = 0xE200000000000000;
    v63 = HIDWORD(a3);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v11);
LABEL_41:

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return v64;
  }

  v13 = a1[1];
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  v6 = a4;
  v7 = a2;
  v14 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v13, HIDWORD(a3), a2, a3);
  if (v15)
  {
    object = v9;
  }

  else
  {
    object = v14;
  }

  if ((object & 0x8000000000000000) != 0)
  {
    goto LABEL_53;
  }

  if (v9 < object)
  {
    goto LABEL_54;
  }

  v58 = v13;
  v59 = v9;
  v16 = MEMORY[0x277D84F90];
  if (!object)
  {
    v25 = *(MEMORY[0x277D84F90] + 16);
    v5 = MEMORY[0x277D84F90];
LABEL_21:
    v29 = v5 + 5;
    v6 = -v25;
    v7 = -1;
    do
    {
      v9 = (v7 - v25);
      if (v7 - v25 == -1)
      {
        break;
      }

      if (++v7 >= v5[2])
      {
        __break(1u);
        goto LABEL_50;
      }

      v30 = v29 + 2;
      v31 = *(v29 - 1);
      v13 = *v29;

      v4 = String.count.getter();

      v29 = v30;
    }

    while (v4 < 56);
    v64 = 9051;
    v65 = 0xE200000000000000;
    v63 = v59;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = v33;
    MEMORY[0x26D69CDB0](v32);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v7 = v64;
    v34 = v65;
    if (v9 == -1)
    {
      v64 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v40 = BidirectionalCollection<>.joined(separator:)();
      v42 = v41;

      v43 = 0;
      v44 = 0xE000000000000000;
      v45 = v59;
    }

    else
    {
      v56 = v65;
      v57 = v64;
      v35 = String.count.getter();
      v36._countAndFlagsBits = 32;
      v36._object = 0xE100000000000000;
      v37 = String.init(repeating:count:)(v36, v35);
      countAndFlagsBits = v37._countAndFlagsBits;
      object = v37._object;
      v9 = v5[2];
      if (v9)
      {
        v63 = v16;
        v13 = &v63;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
        v60 = v5[2];
        if (!v60)
        {
          goto LABEL_50;
        }

        v62 = v9;
        v38 = v63;
        v9 = v5[4];
        v4 = v5[5];
        v7 = *(v63 + 16);
        v13 = *(v63 + 24);
        v6 = v7 + 1;

        if (v7 >= v13 >> 1)
        {
          goto LABEL_55;
        }

        while (1)
        {
          *(v38 + 16) = v6;
          v39 = v38 + 16 * v7;
          *(v39 + 32) = v9;
          *(v39 + 40) = v4;
          if (v62 == 1)
          {
            break;
          }

          v9 = v5 + 7;
          v49 = 1;
          while (v60 != v49)
          {
            if (v49 >= v5[2])
            {
              goto LABEL_51;
            }

            v51 = *(v9 - 1);
            v50 = *v9;
            v64 = countAndFlagsBits;
            v65 = object;

            v13 = &v64;
            MEMORY[0x26D69CDB0](v51, v50);
            v6 = v64;
            v7 = v65;
            v63 = v38;
            v53 = *(v38 + 16);
            v52 = *(v38 + 24);
            v4 = v53 + 1;
            if (v53 >= v52 >> 1)
            {
              v13 = &v63;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
              v38 = v63;
            }

            ++v49;
            *(v38 + 16) = v4;
            v54 = v38 + 16 * v53;
            *(v54 + 32) = v6;
            *(v54 + 40) = v7;
            v9 += 2;
            if (v62 == v49)
            {
              goto LABEL_30;
            }
          }

LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v55 = v13 > 1;
          v13 = &v63;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55, v6, 1);
          v38 = v63;
        }

LABEL_30:
      }

      else
      {

        v38 = MEMORY[0x277D84F90];
      }

      v64 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v43 = 10;
      v44 = 0xE100000000000000;
      v40 = BidirectionalCollection<>.joined(separator:)();
      v42 = v46;

      v45 = v59;
      v34 = v56;
      v7 = v57;
    }

    v64 = v7;
    v65 = v34;
    MEMORY[0x26D69CDB0](v40, v42);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v58 >= v45)
    {
      v47 = 0;
    }

    else
    {
      v47 = 3026478;
    }

    if (v58 >= v45)
    {
      v48 = 0xE000000000000000;
    }

    else
    {
      v48 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v47, v48);

    MEMORY[0x26D69CDB0](v43, v44);
    goto LABEL_41;
  }

  v64 = MEMORY[0x277D84F90];
  v13 = &v64;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, object, 0);
  v5 = v64;
  v18 = v7 + 12;
  while (v7)
  {
    v19 = *(v18 - 12);
    v20 = *(v18 - 4);
    v21 = *(v18 + 4);
    v22 = *(v18 + 8);
    LOBYTE(v63) = *v18;
    result = (v6)(a1, v19, v20 | (v63 << 32), v21 | (v22 << 32));
    v64 = v5;
    v4 = v5[2];
    v24 = v5[3];
    v25 = v4 + 1;
    if (v4 >= v24 >> 1)
    {
      v13 = &v64;
      v62 = result;
      v27 = v16;
      v28 = v23;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v4 + 1, 1);
      v23 = v28;
      v16 = v27;
      result = v62;
      v5 = v64;
    }

    v5[2] = v25;
    v26 = &v5[2 * v4];
    v26[4] = result;
    v26[5] = v23;
    v18 += 24;
    if (!--object)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized ArrayLike.describe(state:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = HIDWORD(a3);
  countAndFlagsBits = *a1 - 1;
  v60 = a2;
  if (*a1 < 1 || v8 == 0)
  {
    *&v64 = 0xE200000000000000;
    v61 = HIDWORD(a3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v10);

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return 9051;
  }

  else
  {
    v13 = (a1 + 1);
    v12 = a1[1];
    if (v12 < 0)
    {
      goto LABEL_54;
    }

    v14 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v12, HIDWORD(a3), a2, a3);
    if (v15)
    {
      v16 = v8;
    }

    else
    {
      v16 = v14;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v8 < v16)
    {
      goto LABEL_56;
    }

    v56 = v12;
    v17 = MEMORY[0x277D84F90];
    v57 = v8;
    if (v16)
    {
      v63[0] = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v18 = (v60 + 16);
      v5 = v63[0];
      while (v60)
      {
        v19 = *(v18 - 4);
        v20 = *v18;
        v61 = 40;
        v62 = 0xE100000000000000;
        v21 = *(v13 + 16);
        v64 = *v13;
        v65 = v21;
        v66 = *(v13 + 32);
        v63[1] = countAndFlagsBits;
        v22 = specialized InspectionState.wrapDescription<A>(_:)();
        MEMORY[0x26D69CDB0](v22);

        MEMORY[0x26D69CDB0](32, 0xE100000000000000);
        if (v20 == -1)
        {
          v23 = 94;
        }

        else
        {
          v23 = 120;
        }

        MEMORY[0x26D69CDB0](v23, 0xE100000000000000);
        v3 = &v61;
        result = MEMORY[0x26D69CDB0](41, 0xE100000000000000);
        v4 = v61;
        v24 = v62;
        v63[0] = v5;
        v26 = v5[2];
        v25 = v5[3];
        object = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v3 = v63;
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v5 = v63[0];
        }

        v5[2] = object;
        v27 = &v5[2 * v26];
        v27[4] = v4;
        v27[5] = v24;
        v18 += 5;
        if (!--v16)
        {
          v8 = v57;
          v17 = MEMORY[0x277D84F90];
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
      object = *(MEMORY[0x277D84F90] + 16);
      v5 = MEMORY[0x277D84F90];
LABEL_24:
      v28 = v5 + 5;
      v6 = -object;
      v13 = -1;
      do
      {
        v12 = v13 - object;
        if (v13 - object == -1)
        {
          break;
        }

        if (++v13 >= v5[2])
        {
          __break(1u);
          goto LABEL_52;
        }

        v29 = v28 + 2;
        v30 = *(v28 - 1);
        v3 = *v28;

        v4 = String.count.getter();

        v28 = v29;
      }

      while (v4 < 56);
      v61 = 9051;
      v62 = 0xE200000000000000;
      v63[0] = v8;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v4 = v32;
      MEMORY[0x26D69CDB0](v31);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v13 = v61;
      v33 = v62;
      if (v12 == -1)
      {
        v61 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v39 = BidirectionalCollection<>.joined(separator:)();
        v41 = v40;

        v42 = 0;
        v43 = 0xE000000000000000;
      }

      else
      {
        v54 = v62;
        v55 = v61;
        v34 = String.count.getter();
        v35._countAndFlagsBits = 32;
        v35._object = 0xE100000000000000;
        v36 = String.init(repeating:count:)(v35, v34);
        countAndFlagsBits = v36._countAndFlagsBits;
        object = v36._object;
        v12 = v5[2];
        if (v12)
        {
          v63[0] = v17;
          v3 = v63;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
          v58 = v5[2];
          if (!v58)
          {
            goto LABEL_52;
          }

          v60 = v12;
          v37 = v63[0];
          v12 = v5[4];
          v4 = v5[5];
          v13 = *(v63[0] + 16);
          v3 = *(v63[0] + 24);
          v6 = v13 + 1;

          if (v13 >= v3 >> 1)
          {
            goto LABEL_57;
          }

          while (1)
          {
            *(v37 + 16) = v6;
            v38 = v37 + 16 * v13;
            *(v38 + 32) = v12;
            *(v38 + 40) = v4;
            if (v60 == 1)
            {
              break;
            }

            v12 = (v5 + 7);
            v47 = 1;
            while (v58 != v47)
            {
              if (v47 >= v5[2])
              {
                goto LABEL_53;
              }

              v49 = *(v12 - 8);
              v48 = *v12;
              v61 = countAndFlagsBits;
              v62 = object;

              v3 = &v61;
              MEMORY[0x26D69CDB0](v49, v48);
              v6 = v61;
              v13 = v62;
              v63[0] = v37;
              v51 = *(v37 + 16);
              v50 = *(v37 + 24);
              v4 = v51 + 1;
              if (v51 >= v50 >> 1)
              {
                v3 = v63;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
                v37 = v63[0];
              }

              ++v47;
              *(v37 + 16) = v4;
              v52 = v37 + 16 * v51;
              *(v52 + 32) = v6;
              *(v52 + 40) = v13;
              v12 += 16;
              if (v60 == v47)
              {
                goto LABEL_33;
              }
            }

LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            v53 = v3 > 1;
            v3 = v63;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53, v6, 1);
            v37 = v63[0];
          }

LABEL_33:
        }

        else
        {

          v37 = MEMORY[0x277D84F90];
        }

        v61 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v42 = 10;
        v43 = 0xE100000000000000;
        v39 = BidirectionalCollection<>.joined(separator:)();
        v41 = v44;

        v33 = v54;
        v13 = v55;
      }

      v61 = v13;
      v62 = v33;
      MEMORY[0x26D69CDB0](v39, v41);

      MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
      if (v56 >= v57)
      {
        v45 = 0;
      }

      else
      {
        v45 = 3026478;
      }

      if (v56 >= v57)
      {
        v46 = 0xE000000000000000;
      }

      else
      {
        v46 = 0xE300000000000000;
      }

      MEMORY[0x26D69CDB0](v45, v46);

      MEMORY[0x26D69CDB0](v42, v43);

      MEMORY[0x26D69CDB0](93, 0xE100000000000000);
      return v61;
    }
  }

  return result;
}

{
  v8 = HIDWORD(a3);
  if (*a1 < 1 || v8 == 0)
  {
    *(&v66[0] + 1) = 0xE200000000000000;
    *&v63 = HIDWORD(a3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v10);

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return 9051;
  }

  else
  {
    v12 = a1;
    v13 = a1[1];
    if (v13 < 0)
    {
      goto LABEL_51;
    }

    v6 = a2;
    v14 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v13, HIDWORD(a3), a2, a3);
    if (v15)
    {
      v16 = v8;
    }

    else
    {
      v16 = v14;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    if (v8 < v16)
    {
      goto LABEL_53;
    }

    v59 = v13;
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v65 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v5 = v65;
      v4 = v6;
      while (v6)
      {
        v18 = *(v4 + 80);
        v66[4] = *(v4 + 64);
        v66[5] = v18;
        v19 = *(v4 + 112);
        v66[6] = *(v4 + 96);
        v66[7] = v19;
        v20 = *(v4 + 16);
        v66[0] = *v4;
        v66[1] = v20;
        v21 = *(v4 + 48);
        v66[2] = *(v4 + 32);
        v66[3] = v21;
        v22 = *(v12 + 16);
        v63 = *v12;
        v64[0] = v22;
        *(v64 + 10) = *(v12 + 26);
        v3 = v66;
        result = Event.describe(state:)(&v63);
        v65 = v5;
        v25 = v5[2];
        v24 = v5[3];
        object = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v3 = &v65;
          v62 = result;
          v27 = v17;
          v28 = v8;
          v29 = v23;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
          v23 = v29;
          v8 = v28;
          v17 = v27;
          result = v62;
          v5 = v65;
        }

        v5[2] = object;
        v26 = &v5[2 * v25];
        v26[4] = result;
        v26[5] = v23;
        v4 += 128;
        if (!--v16)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      object = *(MEMORY[0x277D84F90] + 16);
      v5 = MEMORY[0x277D84F90];
LABEL_21:
      v30 = v5 + 5;
      v6 = -object;
      v12 = -1;
      do
      {
        v13 = v12 - object;
        if (v12 - object == -1)
        {
          break;
        }

        if (++v12 >= v5[2])
        {
          __break(1u);
          goto LABEL_49;
        }

        v31 = v30 + 2;
        v32 = *(v30 - 1);
        v3 = *v30;

        v4 = String.count.getter();

        v30 = v31;
      }

      while (v4 < 56);
      *&v63 = 9051;
      *(&v63 + 1) = 0xE200000000000000;
      v65 = v8;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v4 = v34;
      MEMORY[0x26D69CDB0](v33);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v35 = *(&v63 + 1);
      v12 = v63;
      v58 = v8;
      if (v13 == -1)
      {
        *&v63 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v41 = BidirectionalCollection<>.joined(separator:)();
        v43 = v42;

        v44 = 0;
        v45 = 0xE000000000000000;
      }

      else
      {
        v56 = *(&v63 + 1);
        v57 = v63;
        v36 = String.count.getter();
        v37._countAndFlagsBits = 32;
        v37._object = 0xE100000000000000;
        v38 = String.init(repeating:count:)(v37, v36);
        countAndFlagsBits = v38._countAndFlagsBits;
        object = v38._object;
        v13 = v5[2];
        if (v13)
        {
          v65 = v17;
          v3 = &v65;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
          v60 = v5[2];
          if (!v60)
          {
            goto LABEL_49;
          }

          v62 = v13;
          v39 = v65;
          v13 = v5[4];
          v4 = v5[5];
          v12 = v65[2];
          v3 = v65[3];
          v6 = v12 + 1;

          if (v12 >= v3 >> 1)
          {
            goto LABEL_54;
          }

          while (1)
          {
            v39[2] = v6;
            v40 = &v39[2 * v12];
            v40[4] = v13;
            v40[5] = v4;
            if (v62 == 1)
            {
              break;
            }

            v13 = (v5 + 7);
            v49 = 1;
            while (v60 != v49)
            {
              if (v49 >= v5[2])
              {
                goto LABEL_50;
              }

              v51 = *(v13 - 8);
              v50 = *v13;
              *&v63 = countAndFlagsBits;
              *(&v63 + 1) = object;

              v3 = &v63;
              MEMORY[0x26D69CDB0](v51, v50);
              v12 = *(&v63 + 1);
              v6 = v63;
              v65 = v39;
              v53 = v39[2];
              v52 = v39[3];
              v4 = v53 + 1;
              if (v53 >= v52 >> 1)
              {
                v3 = &v65;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
                v39 = v65;
              }

              ++v49;
              v39[2] = v4;
              v54 = &v39[2 * v53];
              v54[4] = v6;
              v54[5] = v12;
              v13 += 16;
              if (v62 == v49)
              {
                goto LABEL_30;
              }
            }

LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            v55 = v3 > 1;
            v3 = &v65;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55, v6, 1);
            v39 = v65;
          }

LABEL_30:
        }

        else
        {

          v39 = MEMORY[0x277D84F90];
        }

        *&v63 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v44 = 10;
        v45 = 0xE100000000000000;
        v41 = BidirectionalCollection<>.joined(separator:)();
        v43 = v46;

        v35 = v56;
        v12 = v57;
      }

      *&v63 = v12;
      *(&v63 + 1) = v35;
      MEMORY[0x26D69CDB0](v41, v43);

      MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
      if (v59 >= v58)
      {
        v47 = 0;
      }

      else
      {
        v47 = 3026478;
      }

      if (v59 >= v58)
      {
        v48 = 0xE000000000000000;
      }

      else
      {
        v48 = 0xE300000000000000;
      }

      MEMORY[0x26D69CDB0](v47, v48);

      MEMORY[0x26D69CDB0](v44, v45);

      MEMORY[0x26D69CDB0](93, 0xE100000000000000);
      return v63;
    }
  }

  return result;
}

{
  v66 = a2;
  v8 = HIDWORD(a3);
  if (*a1 < 1 || v8 == 0)
  {
    *(&v72[0] + 1) = 0xE200000000000000;
    v67 = HIDWORD(a3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v10);

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return 9051;
  }

  else
  {
    v12 = a1;
    v13 = a1[1];
    if (v13 < 0)
    {
      goto LABEL_51;
    }

    v14 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v13, HIDWORD(a3), a2, a3);
    if (v15)
    {
      v16 = v8;
    }

    else
    {
      v16 = v14;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    if (v8 < v16)
    {
      goto LABEL_53;
    }

    v62 = v13;
    v17 = MEMORY[0x277D84F90];
    v63 = v8;
    if (v16)
    {
      v4 = &v69;
      v71 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v5 = v71;
      v18 = v66;
      while (v66)
      {
        v19 = *v18;
        v20 = *(v18 + 32);
        v72[1] = *(v18 + 16);
        v72[2] = v20;
        v72[0] = v19;
        v21 = *(v18 + 48);
        v22 = *(v18 + 64);
        v23 = *(v18 + 96);
        v72[5] = *(v18 + 80);
        v72[6] = v23;
        v72[3] = v21;
        v72[4] = v22;
        v24 = *(v18 + 112);
        v25 = *(v18 + 128);
        v26 = *(v18 + 144);
        v73 = *(v18 + 160);
        v72[8] = v25;
        v72[9] = v26;
        v72[7] = v24;
        v27 = *(v12 + 16);
        v69 = *v12;
        v70[0] = v27;
        *(v70 + 10) = *(v12 + 26);
        outlined init with copy of Subgraph(v72, &v67);
        v3 = v72;
        v28 = Subgraph.describe(state:)(&v69);
        v30 = v29;
        result = outlined destroy of Subgraph(v72);
        v71 = v5;
        v32 = v5[2];
        v31 = v5[3];
        object = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v3 = &v71;
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v5 = v71;
        }

        v5[2] = object;
        v33 = &v5[2 * v32];
        v33[4] = v28;
        v33[5] = v30;
        v18 += 168;
        if (!--v16)
        {
          v8 = v63;
          v17 = MEMORY[0x277D84F90];
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      object = *(MEMORY[0x277D84F90] + 16);
      v5 = MEMORY[0x277D84F90];
LABEL_21:
      v34 = (v5 + 5);
      v6 = -object;
      v12 = -1;
      do
      {
        v13 = v12 - object;
        if (v12 - object == -1)
        {
          break;
        }

        if (++v12 >= v5[2])
        {
          __break(1u);
          goto LABEL_49;
        }

        v35 = v34 + 2;
        v36 = *(v34 - 1);
        v3 = *v34;

        v4 = String.count.getter();

        v34 = v35;
      }

      while (v4 < 56);
      v67 = 9051;
      v68 = 0xE200000000000000;
      *&v69 = v8;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v4 = v38;
      MEMORY[0x26D69CDB0](v37);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v12 = v67;
      v39 = v68;
      if (v13 == -1)
      {
        v67 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v45 = BidirectionalCollection<>.joined(separator:)();
        v47 = v46;

        v48 = 0;
        v49 = 0xE000000000000000;
      }

      else
      {
        v60 = v68;
        v61 = v67;
        v40 = String.count.getter();
        v41._countAndFlagsBits = 32;
        v41._object = 0xE100000000000000;
        v42 = String.init(repeating:count:)(v41, v40);
        countAndFlagsBits = v42._countAndFlagsBits;
        object = v42._object;
        v13 = v5[2];
        if (v13)
        {
          *&v69 = v17;
          v3 = &v69;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
          v64 = v5[2];
          if (!v64)
          {
            goto LABEL_49;
          }

          v66 = v13;
          v43 = v69;
          v13 = v5[4];
          v4 = v5[5];
          v12 = *(v69 + 16);
          v3 = *(v69 + 24);
          v6 = v12 + 1;

          if (v12 >= v3 >> 1)
          {
            goto LABEL_54;
          }

          while (1)
          {
            *(v43 + 16) = v6;
            v44 = v43 + 16 * v12;
            *(v44 + 32) = v13;
            *(v44 + 40) = v4;
            if (v66 == 1)
            {
              break;
            }

            v13 = (v5 + 7);
            v53 = 1;
            while (v64 != v53)
            {
              if (v53 >= v5[2])
              {
                goto LABEL_50;
              }

              v55 = *(v13 - 8);
              v54 = *v13;
              v67 = countAndFlagsBits;
              v68 = object;

              v3 = &v67;
              MEMORY[0x26D69CDB0](v55, v54);
              v6 = v67;
              v12 = v68;
              *&v69 = v43;
              v57 = *(v43 + 16);
              v56 = *(v43 + 24);
              v4 = v57 + 1;
              if (v57 >= v56 >> 1)
              {
                v3 = &v69;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
                v43 = v69;
              }

              ++v53;
              *(v43 + 16) = v4;
              v58 = v43 + 16 * v57;
              *(v58 + 32) = v6;
              *(v58 + 40) = v12;
              v13 += 16;
              if (v66 == v53)
              {
                goto LABEL_30;
              }
            }

LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            v59 = v3 > 1;
            v3 = &v69;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v59, v6, 1);
            v43 = v69;
          }

LABEL_30:
        }

        else
        {

          v43 = MEMORY[0x277D84F90];
        }

        v67 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v48 = 10;
        v49 = 0xE100000000000000;
        v45 = BidirectionalCollection<>.joined(separator:)();
        v47 = v50;

        v39 = v60;
        v12 = v61;
      }

      v67 = v12;
      v68 = v39;
      MEMORY[0x26D69CDB0](v45, v47);

      MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
      if (v62 >= v63)
      {
        v51 = 0;
      }

      else
      {
        v51 = 3026478;
      }

      if (v62 >= v63)
      {
        v52 = 0xE000000000000000;
      }

      else
      {
        v52 = 0xE300000000000000;
      }

      MEMORY[0x26D69CDB0](v51, v52);

      MEMORY[0x26D69CDB0](v48, v49);

      MEMORY[0x26D69CDB0](93, 0xE100000000000000);
      return v67;
    }
  }

  return result;
}

{
  __src = a2;
  object = HIDWORD(a3);
  if (*a1 < 1 || object == 0)
  {
    __dst[1] = 0xE200000000000000;
    v58 = HIDWORD(a3);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v9);

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return 9051;
  }

  else
  {
    v11 = a1;
    v12 = a1[1];
    if (v12 < 0)
    {
      goto LABEL_51;
    }

    v13 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v12, HIDWORD(a3), a2, a3);
    if (v14)
    {
      v15 = object;
    }

    else
    {
      v15 = v13;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    if (object < v15)
    {
      goto LABEL_53;
    }

    v53 = v12;
    v16 = MEMORY[0x277D84F90];
    v54 = object;
    if (v15)
    {
      v62 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
      v5 = v62;
      v17 = __src;
      while (__src)
      {
        memcpy(__dst, v17, 0x131uLL);
        v18 = *(v11 + 16);
        v60 = *v11;
        v61[0] = v18;
        *(v61 + 10) = *(v11 + 26);
        outlined init with copy of Attribute(__dst, &v58);
        v3 = __dst;
        v19 = Attribute.describe(state:)(&v60);
        v4 = v20;
        result = outlined destroy of Attribute(__dst);
        v62 = v5;
        v22 = v5[2];
        v21 = v5[3];
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v3 = &v62;
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
          v5 = v62;
        }

        v5[2] = v23;
        v24 = &v5[2 * v22];
        v24[4] = v19;
        v24[5] = v4;
        v17 += 312;
        if (!--v15)
        {
          object = v54;
          v16 = MEMORY[0x277D84F90];
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      v23 = *(MEMORY[0x277D84F90] + 16);
      v5 = MEMORY[0x277D84F90];
LABEL_21:
      v25 = (v5 + 5);
      v6 = -v23;
      v11 = -1;
      do
      {
        v12 = v11 - v23;
        if (v11 - v23 == -1)
        {
          break;
        }

        if (++v11 >= v5[2])
        {
          __break(1u);
          goto LABEL_49;
        }

        v26 = v25 + 2;
        v27 = *(v25 - 1);
        v3 = *v25;

        v4 = String.count.getter();

        v25 = v26;
      }

      while (v4 < 56);
      v58 = 9051;
      v59 = 0xE200000000000000;
      *&v60 = object;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v4 = v29;
      MEMORY[0x26D69CDB0](v28);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v11 = v58;
      v30 = v59;
      if (v12 == -1)
      {
        v58 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v36 = BidirectionalCollection<>.joined(separator:)();
        v38 = v37;

        v39 = 0;
        v40 = 0xE000000000000000;
      }

      else
      {
        v51 = v59;
        v52 = v58;
        v31 = String.count.getter();
        v32._countAndFlagsBits = 32;
        v32._object = 0xE100000000000000;
        v33 = String.init(repeating:count:)(v32, v31);
        countAndFlagsBits = v33._countAndFlagsBits;
        object = v33._object;
        v12 = v5[2];
        if (v12)
        {
          *&v60 = v16;
          v3 = &v60;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
          v55 = v5[2];
          if (!v55)
          {
            goto LABEL_49;
          }

          __src = v12;
          v34 = v60;
          v12 = v5[4];
          v4 = v5[5];
          v11 = *(v60 + 16);
          v3 = *(v60 + 24);
          v6 = v11 + 1;

          if (v11 >= v3 >> 1)
          {
            goto LABEL_54;
          }

          while (1)
          {
            *(v34 + 16) = v6;
            v35 = v34 + 16 * v11;
            *(v35 + 32) = v12;
            *(v35 + 40) = v4;
            if (__src == 1)
            {
              break;
            }

            v12 = (v5 + 7);
            v44 = 1;
            while (v55 != v44)
            {
              if (v44 >= v5[2])
              {
                goto LABEL_50;
              }

              v46 = *(v12 - 8);
              v45 = *v12;
              v58 = countAndFlagsBits;
              v59 = object;

              v3 = &v58;
              MEMORY[0x26D69CDB0](v46, v45);
              v6 = v58;
              v11 = v59;
              *&v60 = v34;
              v48 = *(v34 + 16);
              v47 = *(v34 + 24);
              v4 = v48 + 1;
              if (v48 >= v47 >> 1)
              {
                v3 = &v60;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
                v34 = v60;
              }

              ++v44;
              *(v34 + 16) = v4;
              v49 = v34 + 16 * v48;
              *(v49 + 32) = v6;
              *(v49 + 40) = v11;
              v12 += 16;
              if (__src == v44)
              {
                goto LABEL_30;
              }
            }

LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            v50 = v3 > 1;
            v3 = &v60;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v50, v6, 1);
            v34 = v60;
          }

LABEL_30:
        }

        else
        {

          v34 = MEMORY[0x277D84F90];
        }

        v58 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v39 = 10;
        v40 = 0xE100000000000000;
        v36 = BidirectionalCollection<>.joined(separator:)();
        v38 = v41;

        v30 = v51;
        v11 = v52;
      }

      v58 = v11;
      v59 = v30;
      MEMORY[0x26D69CDB0](v36, v38);

      MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
      if (v53 >= v54)
      {
        v42 = 0;
      }

      else
      {
        v42 = 3026478;
      }

      if (v53 >= v54)
      {
        v43 = 0xE000000000000000;
      }

      else
      {
        v43 = 0xE300000000000000;
      }

      MEMORY[0x26D69CDB0](v42, v43);

      MEMORY[0x26D69CDB0](v39, v40);

      MEMORY[0x26D69CDB0](93, 0xE100000000000000);
      return v58;
    }
  }

  return result;
}

{
  v62 = a2;
  v7 = HIDWORD(a3);
  v8 = *a1 - 1;
  if (*a1 < 1 || v7 == 0)
  {
    *&v71 = 0xE200000000000000;
    v66 = HIDWORD(a3);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v10);

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return 9051;
  }

  else
  {
    v13 = (a1 + 1);
    v12 = a1[1];
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v14 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v12, HIDWORD(a3), a2, a3);
    if (v15)
    {
      v16 = v7;
    }

    else
    {
      v16 = v14;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    if (v7 < v16)
    {
      goto LABEL_53;
    }

    v58 = v12;
    v59 = v7;
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v65 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v4 = v65;
      v18 = v62 + 1;
      while (v62)
      {
        v19 = *v18;
        v20 = *(v18 - 2);
        v21 = *(v13 + 16);
        v71 = *v13;
        v72 = v21;
        v73 = *(v13 + 32);
        v70 = v8;
        v63 = specialized InspectionState.wrapDescription<A>(_:)();
        v64 = v22;
        MEMORY[0x26D69CDB0](58, 0xE100000000000000);
        v23 = *(v13 + 16);
        v67 = *v13;
        v68 = v23;
        v69 = *(v13 + 32);
        v66 = v8;
        v24 = specialized InspectionState.wrapDescription<A>(_:)(v20);
        v12 = &v63;
        MEMORY[0x26D69CDB0](v24);

        v3 = v63;
        v25 = v64;
        v65 = v4;
        v27 = v4[2];
        v26 = v4[3];
        object = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v12 = &v65;
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
          v4 = v65;
        }

        v4[2] = object;
        v28 = &v4[2 * v27];
        v28[4] = v3;
        v28[5] = v25;
        v18 += 2;
        if (!--v16)
        {
          v17 = MEMORY[0x277D84F90];
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      object = *(MEMORY[0x277D84F90] + 16);
      v4 = MEMORY[0x277D84F90];
LABEL_21:
      v29 = v4 + 5;
      v5 = -object;
      v13 = -1;
      do
      {
        v7 = (v13 - object);
        if (v13 - object == -1)
        {
          break;
        }

        if (++v13 >= v4[2])
        {
          __break(1u);
          goto LABEL_49;
        }

        v30 = v29 + 2;
        v31 = *(v29 - 1);
        v12 = *v29;

        v3 = String.count.getter();

        v29 = v30;
      }

      while (v3 < 56);
      v63 = 9051;
      v64 = 0xE200000000000000;
      v65 = v59;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v3 = v33;
      MEMORY[0x26D69CDB0](v32);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v13 = v63;
      v34 = v64;
      if (v7 == -1)
      {
        v63 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v40 = BidirectionalCollection<>.joined(separator:)();
        v42 = v41;

        v43 = 0;
        v44 = 0xE000000000000000;
        v45 = v59;
      }

      else
      {
        v56 = v64;
        v57 = v63;
        v35 = String.count.getter();
        v36._countAndFlagsBits = 32;
        v36._object = 0xE100000000000000;
        v37 = String.init(repeating:count:)(v36, v35);
        countAndFlagsBits = v37._countAndFlagsBits;
        object = v37._object;
        v7 = v4[2];
        if (v7)
        {
          v65 = v17;
          v12 = &v65;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
          v60 = v4[2];
          if (!v60)
          {
            goto LABEL_49;
          }

          v62 = v7;
          v38 = v65;
          v7 = v4[4];
          v3 = v4[5];
          v13 = v65[2];
          v12 = v65[3];
          v5 = v13 + 1;

          if (v13 >= v12 >> 1)
          {
            goto LABEL_54;
          }

          while (1)
          {
            *(v38 + 16) = v5;
            v39 = v38 + 16 * v13;
            *(v39 + 32) = v7;
            *(v39 + 40) = v3;
            if (v62 == 1)
            {
              break;
            }

            v7 = v4 + 7;
            v49 = 1;
            while (v60 != v49)
            {
              if (v49 >= v4[2])
              {
                goto LABEL_50;
              }

              v51 = *(v7 - 1);
              v50 = *v7;
              v63 = countAndFlagsBits;
              v64 = object;

              v12 = &v63;
              MEMORY[0x26D69CDB0](v51, v50);
              v5 = v63;
              v13 = v64;
              v65 = v38;
              v53 = *(v38 + 16);
              v52 = *(v38 + 24);
              v3 = v53 + 1;
              if (v53 >= v52 >> 1)
              {
                v12 = &v65;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
                v38 = v65;
              }

              ++v49;
              *(v38 + 16) = v3;
              v54 = v38 + 16 * v53;
              *(v54 + 32) = v5;
              *(v54 + 40) = v13;
              v7 += 2;
              if (v62 == v49)
              {
                goto LABEL_30;
              }
            }

LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            v55 = v12 > 1;
            v12 = &v65;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55, v5, 1);
            v38 = v65;
          }

LABEL_30:
        }

        else
        {

          v38 = MEMORY[0x277D84F90];
        }

        v63 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v43 = 10;
        v44 = 0xE100000000000000;
        v40 = BidirectionalCollection<>.joined(separator:)();
        v42 = v46;

        v45 = v59;
        v34 = v56;
        v13 = v57;
      }

      v63 = v13;
      v64 = v34;
      MEMORY[0x26D69CDB0](v40, v42);

      MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
      if (v58 >= v45)
      {
        v47 = 0;
      }

      else
      {
        v47 = 3026478;
      }

      if (v58 >= v45)
      {
        v48 = 0xE000000000000000;
      }

      else
      {
        v48 = 0xE300000000000000;
      }

      MEMORY[0x26D69CDB0](v47, v48);

      MEMORY[0x26D69CDB0](v43, v44);

      MEMORY[0x26D69CDB0](93, 0xE100000000000000);
      return v63;
    }
  }

  return result;
}

{
  v9 = HIDWORD(a3);
  if (*a1 < 1 || v9 == 0)
  {
    v57 = 9051;
    v58 = 0xE200000000000000;
    v56 = HIDWORD(a3);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v11);
LABEL_41:

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return v57;
  }

  v12 = a1[1];
  if (v12 < 0)
  {
    goto LABEL_52;
  }

  v6 = a2;
  v13 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v12, HIDWORD(a3), a2, a3);
  if (v14)
  {
    v7 = v9;
  }

  else
  {
    v7 = v13;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_53;
  }

  if (v9 < v7)
  {
    goto LABEL_54;
  }

  v52 = v12;
  v15 = MEMORY[0x277D84F90];
  if (!v7)
  {
    v20 = *(MEMORY[0x277D84F90] + 16);
    v5 = MEMORY[0x277D84F90];
LABEL_21:
    v23 = v5 + 5;
    v6 = -v20;
    v7 = -1;
    do
    {
      v12 = v6 + v7;
      if (v6 + v7 == -1)
      {
        break;
      }

      if (++v7 >= v5[2])
      {
        __break(1u);
        goto LABEL_50;
      }

      v24 = v23 + 2;
      v25 = *(v23 - 1);
      v3 = *v23;

      v4 = String.count.getter();

      v23 = v24;
    }

    while (v4 < 56);
    v57 = 9051;
    v58 = 0xE200000000000000;
    v56 = v9;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = v27;
    MEMORY[0x26D69CDB0](v26);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v7 = v57;
    v28 = v58;
    v51 = v9;
    if (v12 == -1)
    {
      v57 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v34 = BidirectionalCollection<>.joined(separator:)();
      v36 = v35;

      v37 = 0;
      v38 = 0xE000000000000000;
    }

    else
    {
      v49 = v58;
      v50 = v57;
      v29 = String.count.getter();
      v30._countAndFlagsBits = 32;
      v30._object = 0xE100000000000000;
      v31 = String.init(repeating:count:)(v30, v29);
      countAndFlagsBits = v31._countAndFlagsBits;
      object = v31._object;
      v12 = v5[2];
      if (v12)
      {
        v56 = v15;
        v3 = &v56;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
        v53 = v5[2];
        if (!v53)
        {
          goto LABEL_50;
        }

        v55 = v12;
        v32 = v56;
        v12 = v5[4];
        v4 = v5[5];
        v7 = *(v56 + 16);
        v3 = *(v56 + 24);
        v6 = v7 + 1;

        if (v7 >= v3 >> 1)
        {
          goto LABEL_55;
        }

        while (1)
        {
          *(v32 + 16) = v6;
          v33 = v32 + 16 * v7;
          *(v33 + 32) = v12;
          *(v33 + 40) = v4;
          if (v55 == 1)
          {
            break;
          }

          v12 = (v5 + 7);
          v42 = 1;
          while (v53 != v42)
          {
            if (v42 >= v5[2])
            {
              goto LABEL_51;
            }

            v44 = *(v12 - 8);
            v43 = *v12;
            v57 = countAndFlagsBits;
            v58 = object;

            v3 = &v57;
            MEMORY[0x26D69CDB0](v44, v43);
            v6 = v57;
            v7 = v58;
            v56 = v32;
            v46 = *(v32 + 16);
            v45 = *(v32 + 24);
            v4 = v46 + 1;
            if (v46 >= v45 >> 1)
            {
              v3 = &v56;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
              v32 = v56;
            }

            ++v42;
            *(v32 + 16) = v4;
            v47 = v32 + 16 * v46;
            *(v47 + 32) = v6;
            *(v47 + 40) = v7;
            v12 += 16;
            if (v55 == v42)
            {
              goto LABEL_30;
            }
          }

LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v48 = v3 > 1;
          v3 = &v56;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48, v6, 1);
          v32 = v56;
        }

LABEL_30:
      }

      else
      {

        v32 = MEMORY[0x277D84F90];
      }

      v57 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v37 = 10;
      v38 = 0xE100000000000000;
      v34 = BidirectionalCollection<>.joined(separator:)();
      v36 = v39;

      v28 = v49;
      v7 = v50;
    }

    v57 = v7;
    v58 = v28;
    MEMORY[0x26D69CDB0](v34, v36);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v52 >= v51)
    {
      v40 = 0;
    }

    else
    {
      v40 = 3026478;
    }

    if (v52 >= v51)
    {
      v41 = 0xE000000000000000;
    }

    else
    {
      v41 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v40, v41);

    MEMORY[0x26D69CDB0](v37, v38);
    goto LABEL_41;
  }

  v57 = MEMORY[0x277D84F90];
  v3 = &v57;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v5 = v57;
  v17 = (v6 + 8);
  while (v6)
  {
    result = Interpreter.Range.describe(state:)(result, *(v17 - 1), *v17);
    v57 = v5;
    v4 = v5[2];
    v19 = v5[3];
    v20 = v4 + 1;
    if (v4 >= v19 >> 1)
    {
      v3 = &v57;
      v22 = result;
      object = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v4 + 1, 1);
      v18 = object;
      result = v22;
      v5 = v57;
    }

    v5[2] = v20;
    v21 = &v5[2 * v4];
    v21[4] = result;
    v21[5] = v18;
    v17 += 2;
    if (!--v7)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

char *specialized ArrayLike.describe(state:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v7 = HIDWORD(a3);
  if (*a1 < 1 || v7 == 0)
  {
    *&v70[0] = 9051;
    *(&v70[0] + 1) = 0xE200000000000000;
    *&v69[0] = HIDWORD(a3);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v9);
LABEL_42:

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return *&v70[0];
  }

  v10 = a1;
  v11 = a1[1];
  if (v11 < 0)
  {
    goto LABEL_53;
  }

  v6 = a2;
  v12 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, v11, HIDWORD(a3), a2, a3);
  if (v13)
  {
    v14 = v7;
  }

  else
  {
    v14 = v12;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_54;
  }

  if (v7 < v14)
  {
    goto LABEL_55;
  }

  v15 = MEMORY[0x277D84F90];
  v58 = v11;
  v59 = v7;
  if (!v14)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v71 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  if (v6)
  {
    v5 = v71;
    for (i = v6; ; i += 5)
    {
      v69[0] = *i;
      v18 = i[1];
      v19 = i[2];
      v20 = i[4];
      v69[3] = i[3];
      v69[4] = v20;
      v69[1] = v18;
      v69[2] = v19;
      v21 = i[3];
      v66 = i[2];
      v67 = v21;
      v68 = i[4];
      v22 = i[1];
      v64 = *i;
      v65 = v22;
      v23 = *(v10 + 16);
      v62 = *v10;
      v63[0] = v23;
      *(v63 + 10) = *(v10 + 26);
      outlined init with copy of GraphContext(v69, v70);
      outlined init with copy of GraphContext(v69, v70);
      v3 = &v64;
      v24 = GraphContext.describe(state:)(&v62);
      v26 = v25;
      v70[2] = v66;
      v70[3] = v67;
      v70[4] = v68;
      v70[0] = v64;
      v70[1] = v65;
      outlined destroy of GraphContext(v70);
      outlined destroy of GraphContext(v69);
      v71 = v5;
      v28 = v5[2];
      v27 = v5[3];
      v4 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v3 = &v71;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v5 = v71;
      }

      v5[2] = v4;
      v29 = &v5[2 * v28];
      v29[4] = v24;
      v29[5] = v26;
      if (!--v14)
      {
        break;
      }
    }

    v7 = v59;
    v15 = MEMORY[0x277D84F90];
LABEL_22:
    v30 = v5 + 5;
    v6 = -v5[2];
    v10 = -1;
    do
    {
      v11 = v6 + v10;
      if (v6 + v10 == -1)
      {
        break;
      }

      if (++v10 >= v5[2])
      {
        __break(1u);
        goto LABEL_51;
      }

      v31 = v30 + 2;
      v32 = *(v30 - 1);
      v3 = *v30;

      v4 = String.count.getter();

      v30 = v31;
    }

    while (v4 < 56);
    *&v70[0] = 9051;
    *(&v70[0] + 1) = 0xE200000000000000;
    *&v69[0] = v7;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = v34;
    MEMORY[0x26D69CDB0](v33);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v35 = *(&v70[0] + 1);
    v10 = *&v70[0];
    if (v11 == -1)
    {
      *&v70[0] = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v41 = BidirectionalCollection<>.joined(separator:)();
      v43 = v42;

      v44 = 0;
      v45 = 0xE000000000000000;
    }

    else
    {
      v56 = *(&v70[0] + 1);
      v57 = *&v70[0];
      v36 = String.count.getter();
      v37._countAndFlagsBits = 32;
      v37._object = 0xE100000000000000;
      v38 = String.init(repeating:count:)(v37, v36);
      *&v61 = v38._countAndFlagsBits;
      v7 = v5[2];
      if (v7)
      {
        *(&v61 + 1) = v38._object;
        *&v69[0] = v15;
        v3 = v69;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v60 = v5[2];
        if (!v60)
        {
          goto LABEL_51;
        }

        v39 = *&v69[0];
        v11 = v5[4];
        v4 = v5[5];
        v10 = *(*&v69[0] + 16);
        v3 = *(*&v69[0] + 24);
        v6 = v10 + 1;

        if (v10 >= v3 >> 1)
        {
          goto LABEL_56;
        }

        while (1)
        {
          *(v39 + 16) = v6;
          v40 = v39 + 16 * v10;
          *(v40 + 32) = v11;
          *(v40 + 40) = v4;
          if (v7 == 1)
          {
            break;
          }

          v11 = (v5 + 7);
          v49 = 1;
          while (v60 != v49)
          {
            if (v49 >= v5[2])
            {
              goto LABEL_52;
            }

            v51 = *(v11 - 8);
            v50 = *v11;
            v70[0] = v61;

            v3 = v70;
            MEMORY[0x26D69CDB0](v51, v50);
            v10 = *(&v70[0] + 1);
            v6 = *&v70[0];
            *&v69[0] = v39;
            v53 = *(v39 + 16);
            v52 = *(v39 + 24);
            v4 = v53 + 1;
            if (v53 >= v52 >> 1)
            {
              v3 = v69;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
              v39 = *&v69[0];
            }

            ++v49;
            *(v39 + 16) = v4;
            v54 = v39 + 16 * v53;
            *(v54 + 32) = v6;
            *(v54 + 40) = v10;
            v11 += 16;
            if (v7 == v49)
            {
              goto LABEL_31;
            }
          }

LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          v55 = v3 > 1;
          v3 = v69;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55, v6, 1);
          v39 = *&v69[0];
        }

LABEL_31:
      }

      else
      {

        v39 = MEMORY[0x277D84F90];
      }

      *&v70[0] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v44 = 10;
      v45 = 0xE100000000000000;
      v41 = BidirectionalCollection<>.joined(separator:)();
      v43 = v46;

      v35 = v56;
      v10 = v57;
    }

    *&v70[0] = v10;
    *(&v70[0] + 1) = v35;
    MEMORY[0x26D69CDB0](v41, v43);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v58 >= v59)
    {
      v47 = 0;
    }

    else
    {
      v47 = 3026478;
    }

    if (v58 >= v59)
    {
      v48 = 0xE000000000000000;
    }

    else
    {
      v48 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v47, v48);

    MEMORY[0x26D69CDB0](v44, v45);
    goto LABEL_42;
  }

  __break(1u);
  return result;
}

uint64_t specialized ArrayLike.describe(state:)(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v5 = HIDWORD(a3);
  if (*a1 < 1 || ((v6 = a3, v8 = a1, swift_conformsToProtocol2()) ? (v9 = v5 == 0) : (v9 = 1), v9))
  {
    *&v60 = 9051;
    *(&v60 + 1) = 0xE200000000000000;
    v62[0] = v5;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v10);
LABEL_42:

    MEMORY[0x26D69CDB0](93, 0xE100000000000000);
    return v60;
  }

  v11 = *(v8 + 8);
  if (v11 < 0)
  {
    goto LABEL_53;
  }

  v12 = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(0, *(v8 + 8), v5, a2, v6);
  if (v13)
  {
    v14 = v5;
  }

  else
  {
    v14 = v12;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_54;
  }

  if (v5 < v14)
  {
    goto LABEL_55;
  }

  v56 = v11;
  v15 = MEMORY[0x277D84F90];
  v57 = v5;
  if (!v14)
  {
    v27 = *(MEMORY[0x277D84F90] + 16);
    v4 = MEMORY[0x277D84F90];
LABEL_22:
    v29 = v4 + 5;
    a2 = -v27;
    v8 = -1;
    do
    {
      v3 = a2 + v8;
      if (a2 + v8 == -1)
      {
        break;
      }

      if (++v8 >= v4[2])
      {
        __break(1u);
        goto LABEL_51;
      }

      v30 = v29 + 2;
      v31 = *(v29 - 1);
      v6 = *v29;

      v11 = String.count.getter();

      v29 = v30;
    }

    while (v11 < 56);
    *&v60 = 9051;
    *(&v60 + 1) = 0xE200000000000000;
    v62[0] = v5;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v33;
    MEMORY[0x26D69CDB0](v32);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v8 = *(&v60 + 1);
    a2 = v60;
    if (v3 == -1)
    {
      *&v60 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v39 = BidirectionalCollection<>.joined(separator:)();
      v41 = v40;

      v42 = 0;
      v43 = 0xE000000000000000;
    }

    else
    {
      v34 = String.count.getter();
      v35._countAndFlagsBits = 32;
      v35._object = 0xE100000000000000;
      v36 = String.init(repeating:count:)(v35, v34);
      *&v59 = v36._countAndFlagsBits;
      v5 = v4[2];
      if (v5)
      {
        *(&v59 + 1) = v36._object;
        v54 = v8;
        v55 = a2;
        v62[0] = v15;
        v11 = v62;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v58 = v4[2];
        if (!v58)
        {
          goto LABEL_51;
        }

        v37 = v62[0];
        v8 = v4[4];
        v6 = v4[5];
        a2 = *(v62[0] + 16);
        v11 = *(v62[0] + 24);
        v3 = a2 + 1;

        if (a2 >= v11 >> 1)
        {
          goto LABEL_56;
        }

        while (1)
        {
          *(v37 + 16) = v3;
          v38 = v37 + 16 * a2;
          *(v38 + 32) = v8;
          *(v38 + 40) = v6;
          if (v5 == 1)
          {
            break;
          }

          v8 = (v4 + 7);
          v47 = 1;
          while (v58 != v47)
          {
            if (v47 >= v4[2])
            {
              goto LABEL_52;
            }

            v49 = *(v8 - 8);
            v48 = *v8;
            v60 = v59;

            v11 = &v60;
            MEMORY[0x26D69CDB0](v49, v48);
            a2 = *(&v60 + 1);
            v3 = v60;
            v62[0] = v37;
            v51 = *(v37 + 16);
            v50 = *(v37 + 24);
            v6 = v51 + 1;
            if (v51 >= v50 >> 1)
            {
              v11 = v62;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
              v37 = v62[0];
            }

            ++v47;
            *(v37 + 16) = v6;
            v52 = v37 + 16 * v51;
            *(v52 + 32) = v3;
            *(v52 + 40) = a2;
            v8 += 16;
            if (v5 == v47)
            {
              goto LABEL_31;
            }
          }

LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          v53 = v11 > 1;
          v11 = v62;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53, v3, 1);
          v37 = v62[0];
        }

LABEL_31:

        v8 = v54;
        a2 = v55;
      }

      else
      {

        v37 = MEMORY[0x277D84F90];
      }

      *&v60 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v42 = 10;
      v43 = 0xE100000000000000;
      v39 = BidirectionalCollection<>.joined(separator:)();
      v41 = v44;
    }

    *&v60 = a2;
    *(&v60 + 1) = v8;
    MEMORY[0x26D69CDB0](v39, v41);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v56 >= v57)
    {
      v45 = 0;
    }

    else
    {
      v45 = 3026478;
    }

    if (v56 >= v57)
    {
      v46 = 0xE000000000000000;
    }

    else
    {
      v46 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v45, v46);

    MEMORY[0x26D69CDB0](v42, v43);
    goto LABEL_42;
  }

  v68 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v4 = v68;
  v17 = (a2 + 16);
  while (a2)
  {
    v18 = *(v17 - 1);
    v19 = *v17;
    v65 = *(v17 - 2);
    v66 = v18;
    v67 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
    swift_dynamicCast();
    v20 = v63;
    v21 = v64;
    v11 = __swift_project_boxed_opaque_existential_1(v62, v63);
    v22 = *(v8 + 16);
    v60 = *v8;
    v61[0] = v22;
    *(v61 + 10) = *(v8 + 26);
    v6 = (*(v21 + 32))(&v60, v20, v21);
    v24 = v23;
    result = __swift_destroy_boxed_opaque_existential_1(v62);
    v68 = v4;
    v26 = v4[2];
    v25 = v4[3];
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v11 = &v68;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      v4 = v68;
    }

    v4[2] = v27;
    v28 = &v4[2 * v26];
    v28[4] = v6;
    v28[5] = v24;
    v17 += 6;
    if (!--v14)
    {
      v5 = v57;
      v15 = MEMORY[0x277D84F90];
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}