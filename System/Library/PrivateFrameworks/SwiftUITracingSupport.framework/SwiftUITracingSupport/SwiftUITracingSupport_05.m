uint64_t specialized ArrayLike.describe(state:)(uint64_t *a1, uint64_t *a2)
{
  v5 = a2[2];
  if (*a1 >= 1 && v5)
  {
    v6 = a2;
    v61 = a2[2];
    v7 = a1[1];
    v8 = specialized Collection.prefix(_:)(v7);
    v12 = v11 >> 1;
    v13 = (v11 >> 1) - v10;
    if (__OFSUB__(v11 >> 1, v10))
    {
      goto LABEL_59;
    }

    v60 = v7;
    if (v13)
    {
      v3 = v9;
      v14 = v10;
      object = v8;
      v65 = MEMORY[0x277D84F90];
      v7 = (v13 & ~(v13 >> 63));

      v6 = &v65;
      v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      if (v13 < 0)
      {
        goto LABEL_60;
      }

      v7 = v65;
      if (v14 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v14;
      }

      v16 = v15 - v14;
      v17 = (v3 + 16 * v14 + 8);
      v2 = 0xE100000000000000;
      do
      {
        if (!v16)
        {
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v18 = *(v17 - 1);
        v19 = *v17;
        v66 = 40;
        v67 = 0xE100000000000000;
        if (v18 == -1)
        {
          v20 = 0xA300000000000000;
          v21 = 10389730;
        }

        else if (v18)
        {
          v21 = dispatch thunk of CustomStringConvertible.description.getter();
          v20 = v22;
        }

        else
        {
          v20 = 0xA400000000000000;
          v21 = 2659770925;
        }

        MEMORY[0x26D69CDB0](v21, v20);

        MEMORY[0x26D69CDB0](2108704, 0xE300000000000000);
        if (v19 == -1)
        {
          v23 = 0xA300000000000000;
          v24 = 10389730;
        }

        else if (v19)
        {
          v24 = dispatch thunk of CustomStringConvertible.description.getter();
          v23 = v25;
        }

        else
        {
          v23 = 0xA400000000000000;
          v24 = 2659770925;
        }

        MEMORY[0x26D69CDB0](v24, v23);

        v6 = &v66;
        v8 = MEMORY[0x26D69CDB0](41, 0xE100000000000000);
        v3 = v66;
        v26 = v67;
        v65 = v7;
        v12 = v7[2];
        v27 = v7[3];
        v4 = v12 + 1;
        if (v12 >= v27 >> 1)
        {
          v6 = &v65;
          v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v12 + 1, 1);
          v7 = v65;
        }

        v7[2] = v4;
        v28 = &v7[2 * v12];
        v28[4] = v3;
        v28[5] = v26;
        --v16;
        v17 += 2;
        --v13;
      }

      while (v13);
      v8 = swift_unknownObjectRelease();
    }

    else
    {

      v8 = swift_unknownObjectRelease();
      v7 = MEMORY[0x277D84F90];
    }

    v30 = (v7 + 5);
    v3 = -v7[2];
    v31 = -1;
    do
    {
      v12 = v3 + v31;
      if (v3 + v31 == -1)
      {
        break;
      }

      if (++v31 >= v7[2])
      {
        goto LABEL_56;
      }

      v4 = (v30 + 2);
      v32 = *(v30 - 1);
      v6 = *v30;

      v2 = String.count.getter();

      v30 = v4;
    }

    while (v2 < 56);
    v66 = 9051;
    v67 = 0xE200000000000000;
    v3 = v61;
    v65 = v61;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v2 = v34;
    MEMORY[0x26D69CDB0](v33);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v58 = v67;
    v59 = v66;
    if (v12 == -1)
    {
      v66 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v41 = BidirectionalCollection<>.joined(separator:)();
      v43 = v42;

      v44 = 0;
      v45 = 0xE000000000000000;
    }

    else
    {
      v35 = String.count.getter();
      v36._countAndFlagsBits = 32;
      v36._object = 0xE100000000000000;
      v37 = String.init(repeating:count:)(v36, v35);
      countAndFlagsBits = v37._countAndFlagsBits;
      v4 = v7[2];
      if (v4)
      {
        object = v37._object;
        v65 = MEMORY[0x277D84F90];
        v6 = &v65;
        v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
        v62 = v7[2];
        if (!v62)
        {
          goto LABEL_57;
        }

        v38 = v65;
        v12 = v7[4];
        v39 = v7[5];
        v2 = v65[2];
        v3 = v65[3];
        v6 = (v2 + 1);

        if (v2 >= v3 >> 1)
        {
          goto LABEL_61;
        }

        while (1)
        {
          *(v38 + 16) = v6;
          v40 = v38 + 16 * v2;
          *(v40 + 32) = v12;
          *(v40 + 40) = v8;
          if (v4 == 1)
          {
            break;
          }

          v3 = (v7 + 7);
          v50 = 1;
          while (v62 != v50)
          {
            if (v50 >= v7[2])
            {
              goto LABEL_58;
            }

            v51 = *(v3 - 8);
            v52 = *v3;
            v66 = countAndFlagsBits;
            v67 = object;

            v6 = &v66;
            v8 = MEMORY[0x26D69CDB0](v51, v52);
            v12 = v66;
            v2 = v67;
            v65 = v38;
            v54 = *(v38 + 16);
            v53 = *(v38 + 24);
            if (v54 >= v53 >> 1)
            {
              v6 = &v65;
              v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
              v38 = v65;
            }

            ++v50;
            *(v38 + 16) = v54 + 1;
            v55 = v38 + 16 * v54;
            *(v55 + 32) = v12;
            *(v55 + 40) = v2;
            v3 += 16;
            if (v4 == v50)
            {
              goto LABEL_36;
            }
          }

LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v56 = v3 > 1;
          v57 = v8;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v56, v6, 1);
          v8 = v57;
          v38 = v65;
        }

LABEL_36:

        v3 = v61;
      }

      else
      {

        v38 = MEMORY[0x277D84F90];
      }

      v66 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v44 = 10;
      v45 = 0xE100000000000000;
      v41 = BidirectionalCollection<>.joined(separator:)();
      v43 = v46;
    }

    v66 = v59;
    v67 = v58;
    MEMORY[0x26D69CDB0](v41, v43);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v60 >= v3)
    {
      v47 = 0;
    }

    else
    {
      v47 = 3026478;
    }

    if (v60 >= v3)
    {
      v48 = 0xE000000000000000;
    }

    else
    {
      v48 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v47, v48);

    MEMORY[0x26D69CDB0](v44, v45);
  }

  else
  {
    v66 = 9051;
    v67 = 0xE200000000000000;
    v65 = v5;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v29);
  }

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v66;
}

{
  v4 = a2[2];
  if (*a1 >= 1 && v4)
  {
    v5 = a2;
    v6 = a1[1];
    v7 = specialized Collection.prefix(_:)(v6);
    v11 = v10 >> 1;
    v12 = (v10 >> 1) - v9;
    if (__OFSUB__(v10 >> 1, v9))
    {
      goto LABEL_49;
    }

    v53 = v6;
    v54 = v4;
    if (v12)
    {
      v3 = v8;
      v13 = v9;
      object = v7;
      v59 = MEMORY[0x277D84F90];
      v6 = (v12 & ~(v12 >> 63));

      v5 = &v59;
      v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      if (v12 < 0)
      {
        goto LABEL_50;
      }

      v6 = v59;
      if (v13 <= v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = v13;
      }

      v15 = v14 - v13;
      v16 = (v3 + 16 * v13 + 8);
      do
      {
        if (!v15)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v17 = *(v16 - 1);
        v58 = *v16;
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v18;
        MEMORY[0x26D69CDB0](64, 0xE100000000000000);
        swift_getMetatypeMetadata();
        v19 = String.init<A>(describing:)();
        v5 = &v60;
        MEMORY[0x26D69CDB0](v19);

        v4 = v60;
        v2 = v61;
        v59 = v6;
        v3 = v6[2];
        v20 = v6[3];
        v11 = v3 + 1;
        if (v3 >= v20 >> 1)
        {
          v5 = &v59;
          v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v3 + 1, 1);
          v6 = v59;
        }

        v6[2] = v11;
        v21 = &v6[2 * v3];
        v21[4] = v4;
        v21[5] = v2;
        --v15;
        v16 += 2;
        --v12;
      }

      while (v12);
      v7 = swift_unknownObjectRelease();
    }

    else
    {
      v4 = v7;

      v7 = swift_unknownObjectRelease();
      v6 = MEMORY[0x277D84F90];
    }

    v23 = v6 + 5;
    v24 = -v6[2];
    v11 = -1;
    do
    {
      v3 = v24 + v11;
      if (v24 + v11 == -1)
      {
        break;
      }

      if (++v11 >= v6[2])
      {
        goto LABEL_46;
      }

      v4 = v23 + 2;
      v25 = *(v23 - 1);
      v5 = *v23;

      v2 = String.count.getter();

      v23 = v4;
    }

    while (v2 < 56);
    v60 = 9051;
    v61 = 0xE200000000000000;
    v59 = v54;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v2 = v27;
    MEMORY[0x26D69CDB0](v26);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v51 = v61;
    v52 = v60;
    if (v3 == -1)
    {
      v60 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v34 = BidirectionalCollection<>.joined(separator:)();
      v36 = v35;

      v37 = 0;
      v38 = 0xE000000000000000;
    }

    else
    {
      v28 = String.count.getter();
      v29._countAndFlagsBits = 32;
      v29._object = 0xE100000000000000;
      v30 = String.init(repeating:count:)(v29, v28);
      countAndFlagsBits = v30._countAndFlagsBits;
      v11 = v6[2];
      if (v11)
      {
        object = v30._object;
        v59 = MEMORY[0x277D84F90];
        v5 = &v59;
        v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
        v55 = v6[2];
        if (!v55)
        {
          goto LABEL_47;
        }

        v31 = v59;
        v4 = v6[4];
        v32 = v6[5];
        v2 = v59[2];
        v3 = v59[3];
        v5 = (v2 + 1);

        if (v2 >= v3 >> 1)
        {
          goto LABEL_51;
        }

        while (1)
        {
          *(v31 + 16) = v5;
          v33 = v31 + 16 * v2;
          *(v33 + 32) = v4;
          *(v33 + 40) = v7;
          if (v11 == 1)
          {
            break;
          }

          v3 = (v6 + 7);
          v43 = 1;
          while (v55 != v43)
          {
            if (v43 >= v6[2])
            {
              goto LABEL_48;
            }

            v44 = *(v3 - 8);
            v45 = *v3;
            v60 = countAndFlagsBits;
            v61 = object;

            v5 = &v60;
            v7 = MEMORY[0x26D69CDB0](v44, v45);
            v4 = v60;
            v2 = v61;
            v59 = v31;
            v47 = *(v31 + 16);
            v46 = *(v31 + 24);
            if (v47 >= v46 >> 1)
            {
              v5 = &v59;
              v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
              v31 = v59;
            }

            ++v43;
            *(v31 + 16) = v47 + 1;
            v48 = v31 + 16 * v47;
            *(v48 + 32) = v4;
            *(v48 + 40) = v2;
            v3 += 16;
            if (v11 == v43)
            {
              goto LABEL_26;
            }
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v49 = v3 > 1;
          v50 = v7;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49, v5, 1);
          v7 = v50;
          v31 = v59;
        }

LABEL_26:
      }

      else
      {

        v31 = MEMORY[0x277D84F90];
      }

      v60 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v37 = 10;
      v38 = 0xE100000000000000;
      v34 = BidirectionalCollection<>.joined(separator:)();
      v36 = v39;
    }

    v60 = v52;
    v61 = v51;
    MEMORY[0x26D69CDB0](v34, v36);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v53 >= v54)
    {
      v40 = 0;
    }

    else
    {
      v40 = 3026478;
    }

    if (v53 >= v54)
    {
      v41 = 0xE000000000000000;
    }

    else
    {
      v41 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v40, v41);

    MEMORY[0x26D69CDB0](v37, v38);
  }

  else
  {
    v60 = 9051;
    v61 = 0xE200000000000000;
    v59 = v4;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v22);
  }

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v60;
}

uint64_t specialized ArrayLike.describe(state:)(uint64_t *a1, __int128 *a2)
{
  v4 = *(a2 + 2);
  if (*a1 >= 1 && v4)
  {
    v5 = a2;
    v6 = a1;
    v56 = *(a2 + 2);
    v7 = a1[1];
    v8 = specialized Collection.prefix(_:)(v7);
    v12 = v11 >> 1;
    v13 = (v11 >> 1) - v10;
    if (__OFSUB__(v11 >> 1, v10))
    {
      goto LABEL_49;
    }

    v2 = v8;
    v55 = v7;
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v15 = v9;
      v3 = v10;
      v61 = MEMORY[0x277D84F90];
      v7 = (v13 & ~(v13 >> 63));

      v5 = &v61;
      v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      if (v13 < 0)
      {
        goto LABEL_50;
      }

      v7 = v61;
      if (v3 <= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v3;
      }

      v12 = v16 - v3;
      v3 = v15 + 8 * v3;
      do
      {
        if (!v12)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v17 = *v3;
        v18 = *(v6 + 16);
        v59 = *v6;
        v60[0] = v18;
        *(v60 + 10) = *(v6 + 26);
        v8 = TreeRef.describe(state:)(&v59, v17);
        v61 = v7;
        v21 = v7[2];
        v20 = v7[3];
        if (v21 >= v20 >> 1)
        {
          v5 = &v61;
          *(&v58 + 1) = v8;
          v23 = v19;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v19 = v23;
          v8 = *(&v58 + 1);
          v7 = v61;
        }

        v7[2] = v21 + 1;
        v22 = &v7[2 * v21];
        v22[4] = v8;
        v22[5] = v19;
        --v12;
        v3 += 8;
        --v13;
      }

      while (v13);
      v8 = swift_unknownObjectRelease();
    }

    else
    {

      v8 = swift_unknownObjectRelease();
      v7 = MEMORY[0x277D84F90];
    }

    v25 = (v7 + 5);
    v12 = -v7[2];
    v26 = -1;
    do
    {
      v2 = v12 + v26;
      if (v12 + v26 == -1)
      {
        break;
      }

      if (++v26 >= v7[2])
      {
        goto LABEL_46;
      }

      v3 = (v25 + 2);
      v27 = *(v25 - 1);
      v5 = *v25;

      v6 = String.count.getter();

      v25 = v3;
    }

    while (v6 < 56);
    *&v59 = 9051;
    *(&v59 + 1) = 0xE200000000000000;
    v12 = v56;
    v61 = v56;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v29;
    MEMORY[0x26D69CDB0](v28);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v53 = *(&v59 + 1);
    v54 = v59;
    if (v2 == -1)
    {
      *&v59 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v36 = BidirectionalCollection<>.joined(separator:)();
      v38 = v37;

      v39 = 0;
      v40 = 0xE000000000000000;
    }

    else
    {
      v30 = String.count.getter();
      v31._countAndFlagsBits = 32;
      v31._object = 0xE100000000000000;
      v32 = String.init(repeating:count:)(v31, v30);
      *&v58 = v32._countAndFlagsBits;
      v3 = v7[2];
      if (v3)
      {
        *(&v58 + 1) = v32._object;
        v61 = v14;
        v5 = &v61;
        v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
        v57 = v7[2];
        if (!v57)
        {
          goto LABEL_47;
        }

        v33 = v61;
        v2 = v7[4];
        v34 = v7[5];
        v6 = v61[2];
        v12 = v61[3];
        v5 = (v6 + 1);

        if (v6 >= v12 >> 1)
        {
          goto LABEL_51;
        }

        while (1)
        {
          v33[2] = v5;
          v35 = &v33[2 * v6];
          v35[4] = v2;
          v35[5] = v8;
          if (v3 == 1)
          {
            break;
          }

          v12 = (v7 + 7);
          v45 = 1;
          while (v57 != v45)
          {
            if (v45 >= v7[2])
            {
              goto LABEL_48;
            }

            v46 = *(v12 - 8);
            v47 = *v12;
            v59 = v58;

            v5 = &v59;
            v8 = MEMORY[0x26D69CDB0](v46, v47);
            v6 = *(&v59 + 1);
            v2 = v59;
            v61 = v33;
            v49 = v33[2];
            v48 = v33[3];
            if (v49 >= v48 >> 1)
            {
              v5 = &v61;
              v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
              v33 = v61;
            }

            ++v45;
            v33[2] = v49 + 1;
            v50 = &v33[2 * v49];
            v50[4] = v2;
            v50[5] = v6;
            v12 += 16;
            if (v3 == v45)
            {
              goto LABEL_26;
            }
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v51 = v12 > 1;
          v52 = v8;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51, v5, 1);
          v8 = v52;
          v33 = v61;
        }

LABEL_26:

        v12 = v56;
      }

      else
      {

        v33 = MEMORY[0x277D84F90];
      }

      *&v59 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v39 = 10;
      v40 = 0xE100000000000000;
      v36 = BidirectionalCollection<>.joined(separator:)();
      v38 = v41;
    }

    *&v59 = v54;
    *(&v59 + 1) = v53;
    MEMORY[0x26D69CDB0](v36, v38);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v55 >= v12)
    {
      v42 = 0;
    }

    else
    {
      v42 = 3026478;
    }

    if (v55 >= v12)
    {
      v43 = 0xE000000000000000;
    }

    else
    {
      v43 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v42, v43);

    MEMORY[0x26D69CDB0](v39, v40);
  }

  else
  {
    *&v59 = 9051;
    *(&v59 + 1) = 0xE200000000000000;
    v61 = v4;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v24);
  }

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v59;
}

uint64_t specialized ArrayLike.describe(state:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void *))
{
  v5 = a2[2];
  if (*a1 >= 1 && v5)
  {
    v6 = a2;
    v7 = a1[1];
    v8 = a3(v7);
    v12 = v11 >> 1;
    v13 = (v11 >> 1) - v10;
    if (__OFSUB__(v11 >> 1, v10))
    {
      goto LABEL_49;
    }

    v3 = v8;
    v53 = v7;
    v54 = v5;
    if (v13)
    {
      v4 = v9;
      v14 = v10;
      v59 = MEMORY[0x277D84F90];
      v7 = (v13 & ~(v13 >> 63));

      v6 = &v59;
      v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      if (v13 < 0)
      {
        goto LABEL_50;
      }

      v7 = v59;
      if (v14 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v14;
      }

      v16 = v15 - v14;
      v17 = (v4 + 4 * v14);
      v4 = MEMORY[0x277D84CC0];
      do
      {
        if (!v16)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        LODWORD(v58) = *v17;
        v6 = &v58;
        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v7;
        v5 = v7[2];
        v19 = v7[3];
        v12 = v5 + 1;
        if (v5 >= v19 >> 1)
        {
          v6 = &v59;
          object = v8;
          v21 = v18;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v5 + 1, 1);
          v18 = v21;
          v8 = object;
          v7 = v59;
        }

        v7[2] = v12;
        v20 = &v7[2 * v5];
        v20[4] = v8;
        v20[5] = v18;
        --v16;
        ++v17;
        --v13;
      }

      while (v13);
      v8 = swift_unknownObjectRelease();
    }

    else
    {

      v8 = swift_unknownObjectRelease();
      v7 = MEMORY[0x277D84F90];
    }

    v23 = (v7 + 5);
    v24 = -v7[2];
    v12 = -1;
    do
    {
      v4 = v24 + v12;
      if (v24 + v12 == -1)
      {
        break;
      }

      if (++v12 >= v7[2])
      {
        goto LABEL_46;
      }

      v5 = (v23 + 2);
      v25 = *(v23 - 1);
      v6 = *v23;

      v3 = String.count.getter();

      v23 = v5;
    }

    while (v3 < 56);
    v59 = 9051;
    v60 = 0xE200000000000000;
    v58 = v54;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v3 = v27;
    MEMORY[0x26D69CDB0](v26);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v51 = v60;
    v52 = v59;
    if (v4 == -1)
    {
      v59 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v34 = BidirectionalCollection<>.joined(separator:)();
      v36 = v35;

      v37 = 0;
      v38 = 0xE000000000000000;
    }

    else
    {
      v28 = String.count.getter();
      v29._countAndFlagsBits = 32;
      v29._object = 0xE100000000000000;
      v30 = String.init(repeating:count:)(v29, v28);
      countAndFlagsBits = v30._countAndFlagsBits;
      v12 = v7[2];
      if (v12)
      {
        object = v30._object;
        v58 = MEMORY[0x277D84F90];
        v6 = &v58;
        v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
        v55 = v7[2];
        if (!v55)
        {
          goto LABEL_47;
        }

        v31 = v58;
        v5 = v7[4];
        v32 = v7[5];
        v3 = *(v58 + 16);
        v4 = *(v58 + 24);
        v6 = (v3 + 1);

        if (v3 >= v4 >> 1)
        {
          goto LABEL_51;
        }

        while (1)
        {
          *(v31 + 16) = v6;
          v33 = v31 + 16 * v3;
          *(v33 + 32) = v5;
          *(v33 + 40) = v8;
          if (v12 == 1)
          {
            break;
          }

          v4 = (v7 + 7);
          v43 = 1;
          while (v55 != v43)
          {
            if (v43 >= v7[2])
            {
              goto LABEL_48;
            }

            v44 = *(v4 - 8);
            v45 = *v4;
            v59 = countAndFlagsBits;
            v60 = object;

            v6 = &v59;
            v8 = MEMORY[0x26D69CDB0](v44, v45);
            v5 = v59;
            v3 = v60;
            v58 = v31;
            v47 = *(v31 + 16);
            v46 = *(v31 + 24);
            if (v47 >= v46 >> 1)
            {
              v6 = &v58;
              v8 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
              v31 = v58;
            }

            ++v43;
            *(v31 + 16) = v47 + 1;
            v48 = v31 + 16 * v47;
            *(v48 + 32) = v5;
            *(v48 + 40) = v3;
            v4 += 16;
            if (v12 == v43)
            {
              goto LABEL_26;
            }
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v49 = v4 > 1;
          v50 = v8;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49, v6, 1);
          v8 = v50;
          v31 = v58;
        }

LABEL_26:
      }

      else
      {

        v31 = MEMORY[0x277D84F90];
      }

      v59 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v37 = 10;
      v38 = 0xE100000000000000;
      v34 = BidirectionalCollection<>.joined(separator:)();
      v36 = v39;
    }

    v59 = v52;
    v60 = v51;
    MEMORY[0x26D69CDB0](v34, v36);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v53 >= v54)
    {
      v40 = 0;
    }

    else
    {
      v40 = 3026478;
    }

    if (v53 >= v54)
    {
      v41 = 0xE000000000000000;
    }

    else
    {
      v41 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v40, v41);

    MEMORY[0x26D69CDB0](v37, v38);
  }

  else
  {
    v59 = 9051;
    v60 = 0xE200000000000000;
    v58 = v5;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v22);
  }

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v59;
}

uint64_t specialized ArrayLike.describe(state:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  if (*a1 >= 1 && v5)
  {
    v6 = a2;
    v55 = *(a2 + 16);
    v7 = a1[1];
    v8 = specialized Collection.prefix(_:)(v7);
    v12 = v11 >> 1;
    v13 = (v11 >> 1) - v10;
    if (__OFSUB__(v11 >> 1, v10))
    {
      goto LABEL_49;
    }

    v54 = v7;
    if (v13)
    {
      v14 = v9;
      v2 = v10;
      object = v8;
      v60 = MEMORY[0x277D84F90];
      v7 = (v13 & ~(v13 >> 63));

      v6 = &v60;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      if (v13 < 0)
      {
        goto LABEL_50;
      }

      v7 = v60;
      if (v2 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v2;
      }

      v4 = v15 - v2;
      v16 = v14 + 32 * v2 + 16;
      do
      {
        if (!v4)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v17 = *(v16 - 16);
        v18 = *(v16 - 8);
        v19 = *v16;
        v20 = *(v16 + 8);
        v61 = 0;
        v62 = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        MEMORY[0x26D69CDB0](0x2072656666756228, 0xE800000000000000);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26D69CDB0](v21);

        MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
        v59[1] = v19;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x26D69CDB0](0x6F7028202020200ALL, 0xEF206E6F69746973);
        v59[0] = v20;
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26D69CDB0](v22);

        v6 = &v61;
        MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
        v2 = v61;
        v3 = v62;
        v60 = v7;
        v12 = v7[2];
        v23 = v7[3];
        if (v12 >= v23 >> 1)
        {
          v6 = &v60;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v12 + 1, 1);
          v7 = v60;
        }

        v7[2] = v12 + 1;
        v24 = &v7[2 * v12];
        v24[4] = v2;
        v24[5] = v3;
        --v4;
        v16 += 32;
        --v13;
      }

      while (v13);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      v7 = MEMORY[0x277D84F90];
    }

    v26 = v7 + 5;
    v12 = -v7[2];
    v3 = -1;
    do
    {
      v2 = v12 + v3;
      if (v12 + v3 == -1)
      {
        break;
      }

      if (++v3 >= v7[2])
      {
        goto LABEL_46;
      }

      v27 = v26 + 2;
      v29 = *(v26 - 1);
      v28 = *v26;

      v6 = String.count.getter();

      v26 = v27;
    }

    while (v6 < 56);
    v61 = 9051;
    v62 = 0xE200000000000000;
    v12 = v55;
    v59[0] = v55;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v30);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v52 = v62;
    v53 = v61;
    if (v2 == -1)
    {
      v61 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v36 = BidirectionalCollection<>.joined(separator:)();
      v38 = v37;

      v39 = 0;
      v40 = 0xE000000000000000;
    }

    else
    {
      v31 = String.count.getter();
      v32._countAndFlagsBits = 32;
      v32._object = 0xE100000000000000;
      v33 = String.init(repeating:count:)(v32, v31);
      countAndFlagsBits = v33._countAndFlagsBits;
      v3 = v7[2];
      if (v3)
      {
        object = v33._object;
        v59[0] = MEMORY[0x277D84F90];
        v6 = v59;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
        v56 = v7[2];
        if (!v56)
        {
          goto LABEL_47;
        }

        v34 = v59[0];
        v12 = v7[4];
        v13 = v7[5];
        v2 = *(v59[0] + 16);
        v6 = *(v59[0] + 24);
        v4 = v2 + 1;

        if (v2 >= v6 >> 1)
        {
          goto LABEL_51;
        }

        while (1)
        {
          *(v34 + 16) = v4;
          v35 = v34 + 16 * v2;
          *(v35 + 32) = v12;
          *(v35 + 40) = v13;
          if (v3 == 1)
          {
            break;
          }

          v12 = (v7 + 7);
          v45 = 1;
          while (v56 != v45)
          {
            if (v45 >= v7[2])
            {
              goto LABEL_48;
            }

            v47 = *(v12 - 8);
            v46 = *v12;
            v61 = countAndFlagsBits;
            v62 = object;

            v6 = &v61;
            MEMORY[0x26D69CDB0](v47, v46);
            v4 = v61;
            v2 = v62;
            v59[0] = v34;
            v49 = *(v34 + 16);
            v48 = *(v34 + 24);
            v13 = v49 + 1;
            if (v49 >= v48 >> 1)
            {
              v6 = v59;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
              v34 = v59[0];
            }

            ++v45;
            *(v34 + 16) = v13;
            v50 = v34 + 16 * v49;
            *(v50 + 32) = v4;
            *(v50 + 40) = v2;
            v12 += 16;
            if (v3 == v45)
            {
              goto LABEL_26;
            }
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v51 = v6 > 1;
          v6 = v59;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51, v4, 1);
          v34 = v59[0];
        }

LABEL_26:

        v12 = v55;
      }

      else
      {

        v34 = MEMORY[0x277D84F90];
      }

      v61 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v39 = 10;
      v40 = 0xE100000000000000;
      v36 = BidirectionalCollection<>.joined(separator:)();
      v38 = v41;
    }

    v61 = v53;
    v62 = v52;
    MEMORY[0x26D69CDB0](v36, v38);

    MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
    if (v54 >= v12)
    {
      v42 = 0;
    }

    else
    {
      v42 = 3026478;
    }

    if (v54 >= v12)
    {
      v43 = 0xE000000000000000;
    }

    else
    {
      v43 = 0xE300000000000000;
    }

    MEMORY[0x26D69CDB0](v42, v43);

    MEMORY[0x26D69CDB0](v39, v40);
  }

  else
  {
    v61 = 9051;
    v62 = 0xE200000000000000;
    v59[0] = v5;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v25);
  }

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v61;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 32);
  if (*(v1 + 41))
  {
    if (*(v1 + 41) != 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v3 = *(v3 + 176);
  }

  v4 = *(v3 + 136);
  v20 = v4[3];
  v21 = v4[4];
  v22 = v4[5];
  v23 = v4[6];
  v17 = *v4;
  v18 = v4[1];
  v19 = v4[2];
  v5 = Interpreter.Storage.Types.subscript.getter(a1);
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();
  v7 = *(v1 + 24);
  if (*(v6 + 16) == 1)
  {
    if ((v7 & 2) == 0)
    {

      return v5;
    }

    goto LABEL_10;
  }

  if ((v7 & 2) != 0)
  {
LABEL_10:
    v9 = *v2;
    goto LABEL_11;
  }

  v9 = 1;
LABEL_11:
  v10._countAndFlagsBits = 8224;
  v10._object = 0xE200000000000000;
  v11 = String.init(repeating:count:)(v10, v9);
  v12 = *(v6 + 16);
  if (!v12)
  {
LABEL_17:

    return 0;
  }

  v13 = 0;
  v14 = (v6 + 40);
  while (v13 < *(v6 + 16))
  {
    v16 = *(v14 - 1);
    v15 = *v14;

    MEMORY[0x26D69CDB0](v16, v15);

    MEMORY[0x26D69CDB0](v11._countAndFlagsBits, v11._object);

    if (v12 != 1)
    {
      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v14 += 2;
    ++v13;
    if (!--v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  if (*(v3 + 16) == 1 && (v1[3] & 2) == 0)
  {

    return a1;
  }

  if ((v1[3] & 2) != 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = 1;
  }

  v6._countAndFlagsBits = 8224;
  v6._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v6, v5);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (!v9)
  {
LABEL_15:

    return 0;
  }

  v10 = 0;
  v11 = (v3 + 40);
  while (v10 < *(v3 + 16))
  {
    v13 = *(v11 - 1);
    v12 = *v11;

    MEMORY[0x26D69CDB0](v13, v12);

    MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

    if (v9 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v11 += 2;
    ++v10;
    if (!--v9)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized EvolutionTable.describe(state:));
}

{
  v2 = v1;
  v3 = *(a1 + 112);
  v22[8] = *(a1 + 96);
  v22[9] = v3;
  v22[10] = *(a1 + 128);
  v23 = *(a1 + 144);
  v4 = *(a1 + 48);
  v22[4] = *(a1 + 32);
  v22[5] = v4;
  v5 = *(a1 + 80);
  v22[6] = *(a1 + 64);
  v22[7] = v5;
  v6 = *(a1 + 16);
  v22[2] = *a1;
  v22[3] = v6;
  v7 = v1[1];
  v21 = *v1;
  v22[0] = v7;
  *(v22 + 10) = *(v1 + 26);
  v8 = Interpreter.Iterator.Mode.describe(state:)(&v21);
  *&v21 = v8;
  *(&v21 + 1) = v9;
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.components<A>(separatedBy:)();
  v11 = *(v1 + 3);
  if (*(v10 + 16) == 1)
  {
    if ((v11 & 2) == 0)
    {

      return v8;
    }

    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    if ((v11 & 2) == 0)
    {
      v13 = 1;
      goto LABEL_8;
    }
  }

  v13 = *v2;
LABEL_8:
  v14._countAndFlagsBits = 8224;
  v14._object = 0xE200000000000000;
  v15 = String.init(repeating:count:)(v14, v13);
  result = v15._countAndFlagsBits;
  v16 = *(v10 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = (v10 + 40);
    while (v17 < *(v10 + 16))
    {
      v20 = *(v18 - 1);
      v19 = *v18;

      MEMORY[0x26D69CDB0](v20, v19);

      MEMORY[0x26D69CDB0](v15._countAndFlagsBits, v15._object);

      if (v16 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v18 += 2;
      ++v17;
      if (!--v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v21;
  }

  return result;
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized EvolutionTable.describe(state:));
}

{
  v2 = v1;
  v3 = v1[1];
  v17 = *v1;
  v18[0] = v3;
  *(v18 + 10) = *(v1 + 26);
  v4 = TreeRef.describe(state:)(&v17, a1);
  *&v17 = v4;
  *(&v17 + 1) = v5;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();
  v7 = *(v1 + 3);
  if (*(v6 + 16) == 1)
  {
    if ((v7 & 2) == 0)
    {

      return v4;
    }

    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
    if ((v7 & 2) == 0)
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  v9 = *v2;
LABEL_8:
  v10._countAndFlagsBits = 8224;
  v10._object = 0xE200000000000000;
  v11 = String.init(repeating:count:)(v10, v9);
  result = v11._countAndFlagsBits;
  v12 = *(v6 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v6 + 40);
    while (v13 < *(v6 + 16))
    {
      v16 = *(v14 - 1);
      v15 = *v14;

      MEMORY[0x26D69CDB0](v16, v15);

      MEMORY[0x26D69CDB0](v11._countAndFlagsBits, v11._object);

      if (v12 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v14 += 2;
      ++v13;
      if (!--v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v17;
  }

  return result;
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized ArrayLike.describe(state:));
}

{
  v2 = v1;
  v3 = *(a1 + 16);
  v19[2] = *a1;
  v19[3] = v3;
  v20 = *(a1 + 32);
  v4 = *(v1 + 16);
  v18 = *v1;
  v19[0] = v4;
  *(v19 + 10) = *(v1 + 26);
  v5 = Snapshot.Kind.describe(state:)(&v18);
  *&v18 = v5;
  *(&v18 + 1) = v6;
  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.components<A>(separatedBy:)();
  v8 = *(v1 + 24);
  if (*(v7 + 16) == 1)
  {
    if ((v8 & 2) == 0)
    {

      return v5;
    }

    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
    if ((v8 & 2) == 0)
    {
      v10 = 1;
      goto LABEL_8;
    }
  }

  v10 = *v2;
LABEL_8:
  v11._countAndFlagsBits = 8224;
  v11._object = 0xE200000000000000;
  v12 = String.init(repeating:count:)(v11, v10);
  result = v12._countAndFlagsBits;
  v13 = *(v7 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v7 + 40);
    while (v14 < *(v7 + 16))
    {
      v17 = *(v15 - 1);
      v16 = *v15;

      MEMORY[0x26D69CDB0](v17, v16);

      MEMORY[0x26D69CDB0](v12._countAndFlagsBits, v12._object);

      if (v13 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v15 += 2;
      ++v14;
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v18;
  }

  return result;
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized EvolutionTable.describe(state:));
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized EvolutionTable.describe(state:));
}

{
  v2 = v1;
  v3 = *(a1 + 16);
  v19[2] = *a1;
  v19[3] = v3;
  v19[4] = *(a1 + 32);
  v20 = *(a1 + 48);
  v4 = v1[1];
  v18 = *v1;
  v19[0] = v4;
  *(v19 + 10) = *(v1 + 26);
  v5 = Interpreter.Iterator.Kind.describe(state:)(&v18);
  *&v18 = v5;
  *(&v18 + 1) = v6;
  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.components<A>(separatedBy:)();
  v8 = *(v1 + 3);
  if (*(v7 + 16) == 1)
  {
    if ((v8 & 2) == 0)
    {

      return v5;
    }

    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
    if ((v8 & 2) == 0)
    {
      v10 = 1;
      goto LABEL_8;
    }
  }

  v10 = *v2;
LABEL_8:
  v11._countAndFlagsBits = 8224;
  v11._object = 0xE200000000000000;
  v12 = String.init(repeating:count:)(v11, v10);
  result = v12._countAndFlagsBits;
  v13 = *(v7 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v7 + 40);
    while (v14 < *(v7 + 16))
    {
      v17 = *(v15 - 1);
      v16 = *v15;

      MEMORY[0x26D69CDB0](v17, v16);

      MEMORY[0x26D69CDB0](v12._countAndFlagsBits, v12._object);

      if (v13 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v15 += 2;
      ++v14;
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v18;
  }

  return result;
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized ArrayLike.describe(state:));
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, specialized ArrayLike.describe(state:));
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(int a1)
{
  v2 = v1;
  if (a1)
  {
    result = TreeValueFlags.name.getter();
    if (!v4)
    {
      goto LABEL_20;
    }

    MEMORY[0x26D69CDB0](result);
  }

  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v1[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return 0;
    }

    goto LABEL_10;
  }

  if ((v6 & 2) != 0)
  {
LABEL_10:
    v7 = *v2;
    goto LABEL_11;
  }

  v7 = 1;
LABEL_11:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v8, v7);
  result = v9._countAndFlagsBits;
  v10 = *(v5 + 16);
  if (!v10)
  {
LABEL_17:

    return 0;
  }

  v11 = 0;
  v12 = (v5 + 40);
  while (v11 < *(v5 + 16))
  {
    v14 = *(v12 - 1);
    v13 = *v12;

    MEMORY[0x26D69CDB0](v14, v13);

    MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

    if (v10 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v12 += 2;
    ++v11;
    if (!--v10)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

{
  v2 = v1;
  TreeValue.Position.names()(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v3 = BidirectionalCollection<>.joined(separator:)();
  v5 = v4;

  MEMORY[0x26D69CDB0](v3, v5);

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  v6 = 91;
  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.components<A>(separatedBy:)();
  v8 = v1[3];
  if (*(v7 + 16) == 1)
  {
    if ((v8 & 2) == 0)
    {

      return v6;
    }
  }

  else
  {

    if ((v8 & 2) == 0)
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  v9 = *v2;
LABEL_8:
  v10._countAndFlagsBits = 8224;
  v10._object = 0xE200000000000000;
  v12 = String.init(repeating:count:)(v10, v9);
  result = v12._countAndFlagsBits;
  v13 = *(v7 + 16);
  if (!v13)
  {
LABEL_14:

    return 0;
  }

  v14 = 0;
  v15 = (v7 + 40);
  while (v14 < *(v7 + 16))
  {
    v17 = *(v15 - 1);
    v16 = *v15;

    MEMORY[0x26D69CDB0](v17, v16);

    MEMORY[0x26D69CDB0](v12._countAndFlagsBits, v12._object);

    if (v13 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v15 += 2;
    ++v14;
    if (!--v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = v1;
  v4 = (a1 & 0x2000) == 0;
  if ((a1 & 0x2000) != 0)
  {
    v5 = 82;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  MEMORY[0x26D69CDB0](v5, v6);

  if ((a1 & 0xC000) == 0x8000)
  {
    v8 = 0xEA00000000006D61;
    v9 = 0x657274736E776F44;
  }

  else if ((a1 & 0xC000) == 0x4000)
  {
    v8 = 0xE800000000000000;
    v9 = 0x6D61657274737055;
  }

  else
  {
    if (a1 < 0xC000u)
    {
      goto LABEL_29;
    }

    v8 = 0xE300000000000000;
    v9 = 7105601;
  }

  MEMORY[0x26D69CDB0](v9, v8);

  MEMORY[0x26D69CDB0](58, 0xE100000000000000);
  v10 = Event.Relationship.name.getter(a1 & 0xFFFFDFFF);
  MEMORY[0x26D69CDB0](v10);

  lazy protocol witness table accessor for type String and conformance String();
  v11 = StringProtocol.components<A>(separatedBy:)();
  v12 = v1[3];
  if (*(v11 + 16) == 1)
  {
    if ((v12 & 2) == 0)
    {

      return 0;
    }

    goto LABEL_19;
  }

  if ((v12 & 2) != 0)
  {
LABEL_19:
    v13 = *v2;
    goto LABEL_20;
  }

  v13 = 1;
LABEL_20:
  v14._countAndFlagsBits = 8224;
  v14._object = 0xE200000000000000;
  v15 = String.init(repeating:count:)(v14, v13);
  result = v15._countAndFlagsBits;
  v16 = *(v11 + 16);
  if (!v16)
  {
LABEL_26:

    return 0;
  }

  v17 = 0;
  v18 = (v11 + 40);
  while (v17 < *(v11 + 16))
  {
    v20 = *(v18 - 1);
    v19 = *v18;

    MEMORY[0x26D69CDB0](v20, v19);

    MEMORY[0x26D69CDB0](v15._countAndFlagsBits, v15._object);

    if (v16 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v18 += 2;
    ++v17;
    if (!--v16)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(unint64_t a1)
{
  v2 = v1;
  v3 = specialized AttachmentID.Typed<>.describe(state:)(v1, a1);
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  v5 = *(v1 + 24);
  if (*(v4 + 16) == 1)
  {
    if ((v5 & 2) == 0)
    {

      return v3;
    }
  }

  else
  {

    if ((v5 & 2) == 0)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  v7 = *v2;
LABEL_8:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v8, v7);
  result = v9._countAndFlagsBits;
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v4 + 40);
    while (v11 < *(v4 + 16))
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      MEMORY[0x26D69CDB0](v14, v13);

      MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

      if (v10 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v12 += 2;
      ++v11;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v2 = v1;
  v3 = v1[1];
  v17 = *v1;
  v18[0] = v3;
  *(v18 + 10) = *(v1 + 26);
  v4 = Attribute.AttributeType.describe(state:)(&v17, a1);
  *&v17 = v4;
  *(&v17 + 1) = v5;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();
  v7 = *(v1 + 3);
  if (*(v6 + 16) == 1)
  {
    if ((v7 & 2) == 0)
    {

      return v4;
    }

    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
    if ((v7 & 2) == 0)
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  v9 = *v2;
LABEL_8:
  v10._countAndFlagsBits = 8224;
  v10._object = 0xE200000000000000;
  v11 = String.init(repeating:count:)(v10, v9);
  result = v11._countAndFlagsBits;
  v12 = *(v6 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v6 + 40);
    while (v13 < *(v6 + 16))
    {
      v16 = *(v14 - 1);
      v15 = *v14;

      MEMORY[0x26D69CDB0](v16, v15);

      MEMORY[0x26D69CDB0](v11._countAndFlagsBits, v11._object);

      if (v12 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v14 += 2;
      ++v13;
      if (!--v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v17;
  }

  return result;
}

{
  v2 = v1;
  v3 = specialized Optional.describe(state:)(v1, a1 | ((HIDWORD(a1) & 1) << 32));
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  v5 = v1[3];
  if (*(v4 + 16) == 1)
  {
    if ((v5 & 2) == 0)
    {

      return v3;
    }
  }

  else
  {

    if ((v5 & 2) == 0)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  v7 = *v2;
LABEL_8:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v8, v7);
  result = v9._countAndFlagsBits;
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v4 + 40);
    while (v11 < *(v4 + 16))
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      MEMORY[0x26D69CDB0](v14, v13);

      MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

      if (v10 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v12 += 2;
      ++v11;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v2 = v1;
  v4 = HIDWORD(a1);
  v5 = specialized InspectionState.describe<A>(_:_:)(1852141679, 0xE400000000000000, BYTE2(a1) | ((BYTE3(a1) & 1) << 8));
  MEMORY[0x26D69CDB0](v5);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v6 = specialized InspectionState.describe<A>(_:_:)(0x7365686374616DLL, 0xE700000000000000, a1 & 0x1FF);
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v7 = specialized InspectionState.describe<A>(_:_:)(0x7465657263736964, 0xE800000000000000, v4 | (((HIDWORD(a1) >> 8) & 1) << 8));
  MEMORY[0x26D69CDB0](v7);

  v8 = 40;
  lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = v1[3];
  if (*(v9 + 16) == 1)
  {
    if ((v10 & 2) == 0)
    {

      return v8;
    }
  }

  else
  {

    if ((v10 & 2) == 0)
    {
      v11 = 1;
      goto LABEL_8;
    }
  }

  v11 = *v2;
LABEL_8:
  v12._countAndFlagsBits = 8224;
  v12._object = 0xE200000000000000;
  v14 = String.init(repeating:count:)(v12, v11);
  result = v14._countAndFlagsBits;
  v15 = *(v9 + 16);
  if (!v15)
  {
LABEL_14:

    return 0;
  }

  v16 = 0;
  v17 = (v9 + 40);
  while (v16 < *(v9 + 16))
  {
    v19 = *(v17 - 1);
    v18 = *v17;

    MEMORY[0x26D69CDB0](v19, v18);

    MEMORY[0x26D69CDB0](v14._countAndFlagsBits, v14._object);

    if (v15 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v17 += 2;
    ++v16;
    if (!--v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, unint64_t a2)
{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, a2, specialized EvolutionTable.Entry.describe(state:));
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, a2, specialized EvolutionTable.Entry.describe(state:));
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, a2, specialized EvolutionTable.Entry.describe(state:));
}

{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, a2, specialized EvolutionTable.Entry.describe(state:));
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)()
{
  v1 = v0;
  v2 = Interpreter.Context.describe(state:)(v0);
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = v0[3];
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v1 = v0;
  v2 = *(v0 + 16);
  v16 = *v0;
  v17[0] = v2;
  *(v17 + 10) = *(v0 + 26);
  v3 = Subgraph.describe(state:)(&v16);
  *&v16 = v3;
  *(&v16 + 1) = v4;
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = *(v0 + 24);
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v3;
    }

    *&v16 = 0;
    *(&v16 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v16 = 0;
    *(&v16 + 1) = 0xE000000000000000;
    if ((v6 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = *v1;
LABEL_8:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v9, v8);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      MEMORY[0x26D69CDB0](v15, v14);

      MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

      if (v11 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v13 += 2;
      ++v12;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v16;
  }

  return result;
}

{
  v1 = v0;
  v2 = specialized Optional.describe(state:)(v0);
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = *(v0 + 24);
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v1 = v0;
  v14 = *v0;
  *v15 = v0[1];
  *&v15[10] = *(v0 + 26);
  v2 = CircularBuffer.Buffer.describe(state:)();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = *(v0 + 3);
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v1 = v0;
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v2);

  MEMORY[0x26D69CDB0](46, 0xE100000000000000);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v3);

  v4 = 64;
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v0[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v6 & 2) == 0)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  v7 = *v1;
LABEL_8:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v8, v7);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (!v11)
  {
LABEL_14:

    return 0;
  }

  v12 = 0;
  v13 = (v5 + 40);
  while (v12 < *(v5 + 16))
  {
    v15 = *(v13 - 1);
    v14 = *v13;

    MEMORY[0x26D69CDB0](v15, v14);

    MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

    if (v11 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v13 += 2;
    ++v12;
    if (!--v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = v0;
  v14 = *v0;
  *v15 = v0[1];
  *&v15[10] = *(v0 + 26);
  v2 = Tracepoint_Entry.describe(state:)();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = *(v0 + 3);
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v1 = v0;
  v2 = Interpreter.Storage.debugName.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = v0[3];
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v1 = v0;
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = v0[3];
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v1 = v0;
  v14 = *v0;
  *v15 = v0[1];
  *&v15[10] = *(v0 + 26);
  v2 = T_Header.describe(state:)();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = *(v0 + 3);
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v1 = v0;
  v2 = specialized UnsafeTree.Node.describe(state:)();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();
  v4 = v0[3];
  if (*(v3 + 16) == 1)
  {
    if ((v4 & 2) == 0)
    {

      return v2;
    }
  }

  else
  {

    if ((v4 & 2) == 0)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

  v6 = *v1;
LABEL_8:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  result = v8._countAndFlagsBits;
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 40);
    while (v10 < *(v3 + 16))
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      MEMORY[0x26D69CDB0](v13, v12);

      MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

      if (v9 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v11 += 2;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t *specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = 0xE300000000000000;
    v5 = 7104878;
  }

  else
  {
    v21 = &type metadata for TreeRef;
    v22 = &protocol witness table for TreeRef;
    v19 = a1;
    result = __swift_project_boxed_opaque_existential_1(&v19, &type metadata for TreeRef);
    if (__OFSUB__(*v2, 1))
    {
      goto LABEL_21;
    }

    v7 = *result;
    v24 = *v2 - 1;
    v25 = *(v2 + 1);
    v26 = *(v2 + 3);
    v27 = *(v2 + 20);
    v5 = specialized InspectionState.wrapDescription<A>(_:)(v7);
    v4 = v8;
    __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  v19 = v5;
  v20 = v4;
  v23._countAndFlagsBits = 10;
  v23._object = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = v2[3];
  if (*(v9 + 16) == 1)
  {
    if ((v10 & 2) == 0)
    {

      return v5;
    }

    v19 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_11;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  if ((v10 & 2) != 0)
  {
LABEL_11:
    v11 = *v3;
    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:
  v12._countAndFlagsBits = 8224;
  v12._object = 0xE200000000000000;
  v13 = String.init(repeating:count:)(v12, v11);
  result = v13._countAndFlagsBits;
  v14 = *(v9 + 16);
  if (!v14)
  {
LABEL_18:

    return v19;
  }

  v15 = 0;
  v16 = (v9 + 40);
  while (v15 < *(v9 + 16))
  {
    v18 = *(v16 - 1);
    v17 = *v16;
    v23 = v13;

    MEMORY[0x26D69CDB0](v18, v17);

    MEMORY[0x26D69CDB0](v23._countAndFlagsBits, v23._object);

    if (v14 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v16 += 2;
    ++v15;
    if (!--v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unsigned int *specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 0x100000000) != 0)
  {
    v9 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v22 = a2;
    v23 = a3;
    LODWORD(v20) = a1;
    result = __swift_project_boxed_opaque_existential_1(&v20, a2);
    if (__OFSUB__(*v3, 1))
    {
      goto LABEL_21;
    }

    v6 = *result;
    v25 = *v3 - 1;
    v26 = *(v3 + 1);
    v27 = *(v3 + 3);
    v28 = *(v3 + 20);
    v7 = specialized InspectionState.wrapDescription<A>(_:)();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  v20 = v7;
  v21 = v9;
  v24._countAndFlagsBits = 10;
  v24._object = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.components<A>(separatedBy:)();
  v11 = v3[3];
  if (*(v10 + 16) == 1)
  {
    if ((v11 & 2) == 0)
    {

      return v7;
    }

    v20 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_11;
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  if ((v11 & 2) != 0)
  {
LABEL_11:
    v12 = *v4;
    goto LABEL_12;
  }

  v12 = 1;
LABEL_12:
  v13._countAndFlagsBits = 8224;
  v13._object = 0xE200000000000000;
  v14 = String.init(repeating:count:)(v13, v12);
  result = v14._countAndFlagsBits;
  v15 = *(v10 + 16);
  if (!v15)
  {
LABEL_18:

    return v20;
  }

  v16 = 0;
  v17 = (v10 + 40);
  while (v16 < *(v10 + 16))
  {
    v19 = *(v17 - 1);
    v18 = *v17;
    v24 = v14;

    MEMORY[0x26D69CDB0](v19, v18);

    MEMORY[0x26D69CDB0](v24._countAndFlagsBits, v24._object);

    if (v15 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v17 += 2;
    ++v16;
    if (!--v15)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t result)
{
  v2 = *v1;
  if (!__OFSUB__(*v1, 1))
  {
    v15 = *v1 - 1;
    v16 = *(v1 + 1);
    v17 = *(v1 + 3);
    v18 = *(v1 + 20);
    v3 = specialized InspectionState.wrapDescription<A>(_:)(result, specialized ArrayLike.describe(state:));
    lazy protocol witness table accessor for type String and conformance String();
    v4 = StringProtocol.components<A>(separatedBy:)();
    v5 = v1[3];
    if (*(v4 + 16) == 1 && (v5 & 2) == 0)
    {
    }

    else
    {

      if ((v5 & 2) != 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = 1;
      }

      v8._countAndFlagsBits = 8224;
      v8._object = 0xE200000000000000;
      v9 = String.init(repeating:count:)(v8, v7);
      result = v9._countAndFlagsBits;
      v10 = *(v4 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = (v4 + 40);
        while (v11 < *(v4 + 16))
        {
          v14 = *(v12 - 1);
          v13 = *v12;

          MEMORY[0x26D69CDB0](v14, v13);

          MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

          if (v10 != 1)
          {
            result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
          }

          v12 += 2;
          ++v11;
          if (!--v10)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_19;
      }

LABEL_16:

      return 0;
    }

    return v3;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(_OWORD *a1)
{
  v2 = v1;
  v3 = a1[11];
  v24[12] = a1[10];
  v24[13] = v3;
  v24[14] = a1[12];
  v4 = a1[7];
  v24[8] = a1[6];
  v24[9] = v4;
  v5 = a1[9];
  v24[10] = a1[8];
  v24[11] = v5;
  v6 = a1[3];
  v24[4] = a1[2];
  v24[5] = v6;
  v7 = a1[5];
  v24[6] = a1[4];
  v24[7] = v7;
  v8 = a1[1];
  v24[2] = *a1;
  v24[3] = v8;
  v9 = v1[1];
  v23 = *v1;
  v24[0] = v9;
  *(v24 + 10) = *(v1 + 26);
  v10 = Tree.describe(state:)(&v23);
  *&v23 = v10;
  *(&v23 + 1) = v11;
  lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.components<A>(separatedBy:)();
  v13 = *(v1 + 3);
  if (*(v12 + 16) == 1)
  {
    if ((v13 & 2) == 0)
    {

      return v10;
    }

    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
    if ((v13 & 2) == 0)
    {
      v15 = 1;
      goto LABEL_8;
    }
  }

  v15 = *v2;
LABEL_8:
  v16._countAndFlagsBits = 8224;
  v16._object = 0xE200000000000000;
  v17 = String.init(repeating:count:)(v16, v15);
  result = v17._countAndFlagsBits;
  v18 = *(v12 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = (v12 + 40);
    while (v19 < *(v12 + 16))
    {
      v22 = *(v20 - 1);
      v21 = *v20;

      MEMORY[0x26D69CDB0](v22, v21);

      MEMORY[0x26D69CDB0](v17._countAndFlagsBits, v17._object);

      if (v18 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v20 += 2;
      ++v19;
      if (!--v18)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v23;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized InspectionState.wrapDescription<A>(_:)(a1, a2, specialized ArrayLike.describe(state:));
}

{
  v3 = v2;
  v4 = Interpreter.Range.describe(state:)(a1, a1, a2);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v2[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v6 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = *v3;
LABEL_8:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v9, v8);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      MEMORY[0x26D69CDB0](v15, v14);

      MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

      if (v11 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v13 += 2;
      ++v12;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t (*a2)(Swift::Int *, uint64_t))
{
  v3 = v2;
  v4 = a2(v2, a1);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v2[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v6 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = *v3;
LABEL_8:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v9, v8);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      MEMORY[0x26D69CDB0](v15, v14);

      MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

      if (v11 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v13 += 2;
      ++v12;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

{
  v3 = v2;
  v4 = a2(v2, a1);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v2[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v6 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = *v3;
LABEL_8:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v9, v8);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      MEMORY[0x26D69CDB0](v15, v14);

      MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

      if (v11 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v13 += 2;
      ++v12;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(__int128 *a1)
{
  v2 = v1;
  v19 = a1[2];
  v20 = a1[3];
  v21 = a1[4];
  v17 = *a1;
  v18 = a1[1];
  v15 = *v1;
  *v16 = v1[1];
  *&v16[10] = *(v1 + 26);
  v3 = BufferCompressor.describe(state:)();
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  v5 = *(v1 + 3);
  if (*(v4 + 16) == 1)
  {
    if ((v5 & 2) == 0)
    {

      return v3;
    }
  }

  else
  {

    if ((v5 & 2) == 0)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  v7 = *v2;
LABEL_8:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v8, v7);
  result = v9._countAndFlagsBits;
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v4 + 40);
    while (v11 < *(v4 + 16))
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      MEMORY[0x26D69CDB0](v14, v13);

      MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

      if (v10 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v12 += 2;
      ++v11;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if ((a4 & 0xFF00000000) == 0x200000000)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v32 = &type metadata for CircularBuffer.Buffer;
    v33 = &protocol witness table for CircularBuffer.Buffer;
    v12 = swift_allocObject();
    v30 = v12;
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    *(v12 + 44) = BYTE4(a4) & 1;
    result = __swift_project_boxed_opaque_existential_1(&v30, &type metadata for CircularBuffer.Buffer);
    if (__OFSUB__(*v5, 1))
    {
      goto LABEL_21;
    }

    v14 = *(result + 28);
    v15 = *(result + 24);
    v16 = *(result + 8);
    v17 = *(result + 16);
    v18 = *result;
    v35 = *v5 - 1;
    v36 = *(v5 + 1);
    v37 = *(v5 + 3);
    v38 = *(v5 + 20);
    v7 = specialized InspectionState.wrapDescription<A>(_:)();
    v6 = v19;
    __swift_destroy_boxed_opaque_existential_1(&v30);
  }

  v30 = v7;
  v31 = v6;
  v34._countAndFlagsBits = 10;
  v34._object = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v20 = StringProtocol.components<A>(separatedBy:)();
  v21 = v5[3];
  if (*(v20 + 16) == 1)
  {
    if ((v21 & 2) == 0)
    {

      return v7;
    }

    v30 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_11;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  if ((v21 & 2) != 0)
  {
LABEL_11:
    v22 = *v5;
    goto LABEL_12;
  }

  v22 = 1;
LABEL_12:
  v23._countAndFlagsBits = 8224;
  v23._object = 0xE200000000000000;
  v24 = String.init(repeating:count:)(v23, v22);
  result = v24._countAndFlagsBits;
  v25 = *(v20 + 16);
  if (!v25)
  {
LABEL_18:

    return v30;
  }

  v26 = 0;
  v27 = (v20 + 40);
  while (v26 < *(v20 + 16))
  {
    v29 = *(v27 - 1);
    v28 = *v27;
    v34 = v24;

    MEMORY[0x26D69CDB0](v29, v28);

    MEMORY[0x26D69CDB0](v34._countAndFlagsBits, v34._object);

    if (v25 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v27 += 2;
    ++v26;
    if (!--v25)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t *a1, uint64_t (*a2)(void *))
{
  v3 = v2;
  v4 = specialized ArrayLike.describe(state:)(v2, a1, a2);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v2[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v6 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = *v3;
LABEL_8:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v9, v8);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      MEMORY[0x26D69CDB0](v15, v14);

      MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

      if (v11 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v13 += 2;
      ++v12;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v5 = v3[1];
  v19 = *v3;
  v20[0] = v5;
  *(v20 + 10) = *(v3 + 26);
  v6 = Attachment_Entry.describe(state:)(&v19, a1, a2, a3);
  *&v19 = v6;
  *(&v19 + 1) = v7;
  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.components<A>(separatedBy:)();
  v9 = *(v3 + 3);
  if (*(v8 + 16) == 1)
  {
    if ((v9 & 2) == 0)
    {

      return v6;
    }

    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
  }

  else
  {

    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    if ((v9 & 2) == 0)
    {
      v11 = 1;
      goto LABEL_8;
    }
  }

  v11 = *v4;
LABEL_8:
  v12._countAndFlagsBits = 8224;
  v12._object = 0xE200000000000000;
  v13 = String.init(repeating:count:)(v12, v11);
  result = v13._countAndFlagsBits;
  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (v8 + 40);
    while (v15 < *(v8 + 16))
    {
      v18 = *(v16 - 1);
      v17 = *v16;

      MEMORY[0x26D69CDB0](v18, v17);

      MEMORY[0x26D69CDB0](v13._countAndFlagsBits, v13._object);

      if (v14 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v16 += 2;
      ++v15;
      if (!--v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v19;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t (*a2)(Swift::Int *))
{
  v3 = v2;
  v4 = a2(v2);
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.components<A>(separatedBy:)();
  v6 = v2[3];
  if (*(v5 + 16) == 1)
  {
    if ((v6 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v6 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = *v3;
LABEL_8:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v10 = String.init(repeating:count:)(v9, v8);
  result = v10._countAndFlagsBits;
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v5 + 40);
    while (v12 < *(v5 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      MEMORY[0x26D69CDB0](v15, v14);

      MEMORY[0x26D69CDB0](v10._countAndFlagsBits, v10._object);

      if (v11 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v13 += 2;
      ++v12;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, unint64_t a2, int64_t a3)
{
  v4 = v3;
  v5 = specialized ArrayLike.describe(state:)(v3, a1, a2, a3);
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();
  v7 = v3[3];
  if (*(v6 + 16) == 1)
  {
    if ((v7 & 2) == 0)
    {

      return v5;
    }
  }

  else
  {

    if ((v7 & 2) == 0)
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  v9 = *v4;
LABEL_8:
  v10._countAndFlagsBits = 8224;
  v10._object = 0xE200000000000000;
  v11 = String.init(repeating:count:)(v10, v9);
  result = v11._countAndFlagsBits;
  v12 = *(v6 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v6 + 40);
    while (v13 < *(v6 + 16))
    {
      v16 = *(v14 - 1);
      v15 = *v14;

      MEMORY[0x26D69CDB0](v16, v15);

      MEMORY[0x26D69CDB0](v11._countAndFlagsBits, v11._object);

      if (v12 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v14 += 2;
      ++v13;
      if (!--v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = 0;
  }

  else if (*(v2 + 16))
  {
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v5);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);
    v4 = 2127912;
  }

  else
  {
    v4 = 0x6C65636E6163;
  }

  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();
  v7 = *(v2 + 24);
  if (*(v6 + 16) == 1)
  {
    if ((v7 & 2) == 0)
    {

      return v4;
    }
  }

  else
  {

    if ((v7 & 2) == 0)
    {
      v8 = 1;
      goto LABEL_13;
    }
  }

  v8 = *v3;
LABEL_13:
  v9._countAndFlagsBits = 8224;
  v9._object = 0xE200000000000000;
  v11 = String.init(repeating:count:)(v9, v8);
  result = v11._countAndFlagsBits;
  v12 = *(v6 + 16);
  if (!v12)
  {
LABEL_19:

    return 0;
  }

  v13 = 0;
  v14 = (v6 + 40);
  while (v13 < *(v6 + 16))
  {
    v16 = *(v14 - 1);
    v15 = *v14;

    MEMORY[0x26D69CDB0](v16, v15);

    MEMORY[0x26D69CDB0](v11._countAndFlagsBits, v11._object);

    if (v12 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v14 += 2;
    ++v13;
    if (!--v12)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(char a1)
{
  v2 = v1;
  if (a1 == 2)
  {
    v3 = 0x6C6961746564;
  }

  else if (a1 == 1)
  {
    v3 = 0x7972616D6D7573;
  }

  else
  {
    if (a1)
    {
      goto LABEL_23;
    }

    v3 = 0x656E696C656D6974;
  }

  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  v5 = v1[3];
  if (*(v4 + 16) == 1)
  {
    if ((v5 & 2) == 0)
    {

      return v3;
    }

    goto LABEL_13;
  }

  if ((v5 & 2) != 0)
  {
LABEL_13:
    v6 = *v2;
    goto LABEL_14;
  }

  v6 = 1;
LABEL_14:
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  v8 = String.init(repeating:count:)(v7, v6);
  v9 = *(v4 + 16);
  if (!v9)
  {
LABEL_20:

    return 0;
  }

  v10 = 0;
  v11 = (v4 + 40);
  while (v10 < *(v4 + 16))
  {
    v13 = *(v11 - 1);
    v12 = *v11;

    MEMORY[0x26D69CDB0](v13, v12);

    MEMORY[0x26D69CDB0](v8._countAndFlagsBits, v8._object);

    if (v9 != 1)
    {
      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v11 += 2;
    ++v10;
    if (!--v9)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(unsigned __int8 a1)
{
  v2 = v1;
  if (a1 <= 2u)
  {
    v6 = 1701603654;
    if (a1 != 1)
    {
      v6 = 0x7275746375727473;
    }

    if (a1)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0x737961776C61;
    }
  }

  else
  {
    v3 = 0x656D686361747461;
    if (a1 != 5)
    {
      v3 = 1885956979;
    }

    v4 = 0xD000000000000011;
    if (a1 != 3)
    {
      v4 = 0x73657461647075;
    }

    if (a1 <= 4u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }
  }

  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.components<A>(separatedBy:)();
  v8 = v1[3];
  if (*(v7 + 16) == 1)
  {
    if ((v8 & 2) == 0)
    {

      return v5;
    }
  }

  else
  {

    if ((v8 & 2) == 0)
    {
      v9 = 1;
      goto LABEL_21;
    }
  }

  v9 = *v2;
LABEL_21:
  v10._countAndFlagsBits = 8224;
  v10._object = 0xE200000000000000;
  v12 = String.init(repeating:count:)(v10, v9);
  result = v12._countAndFlagsBits;
  v13 = *(v7 + 16);
  if (!v13)
  {
LABEL_27:

    return 0;
  }

  v14 = 0;
  v15 = (v7 + 40);
  while (v14 < *(v7 + 16))
  {
    v17 = *(v15 - 1);
    v16 = *v15;

    MEMORY[0x26D69CDB0](v17, v16);

    MEMORY[0x26D69CDB0](v12._countAndFlagsBits, v12._object);

    if (v13 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v15 += 2;
    ++v14;
    if (!--v13)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(Swift::Int *, uint64_t, uint64_t))
{
  v4 = v3;
  v5 = a3(v3, a1, a2);
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();
  v7 = v3[3];
  if (*(v6 + 16) == 1)
  {
    if ((v7 & 2) == 0)
    {

      return v5;
    }
  }

  else
  {

    if ((v7 & 2) == 0)
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  v9 = *v4;
LABEL_8:
  v10._countAndFlagsBits = 8224;
  v10._object = 0xE200000000000000;
  v11 = String.init(repeating:count:)(v10, v9);
  result = v11._countAndFlagsBits;
  v12 = *(v6 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v6 + 40);
    while (v13 < *(v6 + 16))
    {
      v16 = *(v14 - 1);
      v15 = *v14;

      MEMORY[0x26D69CDB0](v16, v15);

      MEMORY[0x26D69CDB0](v11._countAndFlagsBits, v11._object);

      if (v12 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v14 += 2;
      ++v13;
      if (!--v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized InspectionState.wrapDescription<A>(_:)(__int16 a1)
{
  v2 = v1;
  v3 = _s21SwiftUITracingSupport9DefaultedO8describe5stateSSAA15InspectionStateV_tFSb_Ttg5(a1 & 0x1FF);
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.components<A>(separatedBy:)();
  v5 = v1[3];
  if (*(v4 + 16) == 1)
  {
    if ((v5 & 2) == 0)
    {

      return v3;
    }
  }

  else
  {

    if ((v5 & 2) == 0)
    {
      v7 = 1;
      goto LABEL_8;
    }
  }

  v7 = *v2;
LABEL_8:
  v8._countAndFlagsBits = 8224;
  v8._object = 0xE200000000000000;
  v9 = String.init(repeating:count:)(v8, v7);
  result = v9._countAndFlagsBits;
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v4 + 40);
    while (v11 < *(v4 + 16))
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      MEMORY[0x26D69CDB0](v14, v13);

      MEMORY[0x26D69CDB0](v9._countAndFlagsBits, v9._object);

      if (v10 != 1)
      {
        result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      }

      v12 += 2;
      ++v11;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t specialized Optional.describe(state:)(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    return 7104878;
  }

  v16[3] = &type metadata for BufferCompressor;
  v16[4] = &protocol witness table for BufferCompressor;
  v4 = swift_allocObject();
  v16[0] = v4;
  v5 = v1[3];
  v4[3] = v1[2];
  v4[4] = v5;
  v4[5] = v1[4];
  v6 = v1[1];
  v4[1] = *v1;
  v4[2] = v6;
  result = __swift_project_boxed_opaque_existential_1(v16, &type metadata for BufferCompressor);
  v7 = *(result + 48);
  v18[2] = *(result + 32);
  v18[3] = v7;
  v18[4] = *(result + 64);
  v8 = *(result + 16);
  v18[0] = *result;
  v18[1] = v8;
  v9 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v20 = *(a1 + 8);
    v21 = *(a1 + 24);
    v10 = v1[2];
    v11 = v1[3];
    v12 = *v1;
    v17[1] = v1[1];
    v17[2] = v10;
    v13 = v1[4];
    v17[3] = v11;
    v17[4] = v13;
    v19 = v9;
    v22 = *(a1 + 40);
    v17[0] = v12;
    outlined init with copy of BufferCompressor(v17, v15);
    v14 = specialized InspectionState.wrapDescription<A>(_:)(v18);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v14;
  }

  return result;
}

uint64_t specialized Optional.describe(state:)(_OWORD *a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    return 7104878;
  }

  v2 = a2;
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Inspectable(v10, v12);
    v4 = v13;
    v5 = v14;
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = a1[1];
    *v10 = *a1;
    *&v10[16] = v7;
    *&v10[26] = *(a1 + 26);
    v8 = InspectionState.describe<A>(_:)(v6, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v8;
  }

  else
  {
    memset(v10, 0, 40);
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v10, &_s21SwiftUITracingSupport11Inspectable_pSgMd, &_s21SwiftUITracingSupport11Inspectable_pSgMR);
    *v10 = v2;
    return String.init<A>(describing:)();
  }
}

uint64_t specialized AttachmentID.Typed<>.describe(state:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 7104878;
  }

  if (!*(a1 + 16))
  {
    LODWORD(v74) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12AttachmentIDV5TypedVy_SSGMd, &_s21SwiftUITracingSupport12AttachmentIDV5TypedVy_SSGMR);
    v74 = String.init<A>(describing:)();
    *&v75 = v24;
    MEMORY[0x26D69CDB0](8992, 0xE200000000000000);
    LODWORD(v93[0]) = a2;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v25);

    return v74;
  }

  if (*(a1 + 41))
  {
    goto LABEL_70;
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 116);
  v10 = *(v8 + 176);
  v11 = (v10 + 40);
  v12 = *(v10 + 56);
  v93[0] = *(v10 + 40);
  v93[1] = v12;
  v94[0] = *(v10 + 72);
  v13 = (v10 + 72);
  v14 = (v10 + 84);
  v15 = (v10 + 88);
  v16 = 8 * v9;
  *(v94 + 9) = *(v10 + 81);
  v17 = (v10 + 40);
  v18 = (v10 + 72);
  v19 = (v10 + 84);
  v20 = (v10 + 88);
  v70 = v7;
  v71 = v10;
  while (1)
  {
    v21 = *v20;
    if (v9 < *v19)
    {
      v22 = (*v18 + v16);
      if ((v22[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v21)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v93);
    }

    v18 = (v21 + 32);
    v19 = (v21 + 44);
    v20 = (v21 + 48);
    v17 = v21;
  }

  v26 = *v17;
  if (!v26)
  {
    goto LABEL_67;
  }

  v27 = (v26 + 24 * *v22);
  v28 = *v27;
  v29 = *(*v27 + 196);
  v30 = 0uLL;
  v69 = a1;
  if (v29)
  {
    v31 = *(v28 + 184);
    if (!v31)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v32 = v29 - 1;
    if (*(v31 + 32 * (v29 - 1)) >= a2)
    {
      v36 = v29 >> 1;
      v37 = *(v31 + 32 * (v29 >> 1));
      if (v29 != 1 && v37 != a2)
      {
        v39 = *(v28 + 192) | (v29 << 32);
        v68 = *(v28 + 184);
        if (v37 <= a2)
        {
          v41 = v36 + 1;
          v40 = a2;
          v36 = v29;
        }

        else
        {
          v40 = a2;
          v41 = 0;
        }

        v47 = specialized Collection<>.binarySearch(for:)(v40, v41, v36, v31, v39);
        if (v48)
        {
          v36 = v29 - 1;
        }

        else
        {
          v36 = v47;
        }

        v30 = 0uLL;
        v31 = v68;
      }

      v49 = (v31 + 32 * v36);
      v32 = v36;
      while (v36 < v29)
      {
        if (*v49 <= a2)
        {
          goto LABEL_16;
        }

        if (!v32)
        {
          goto LABEL_43;
        }

        --v32;
        v49 -= 8;
        if (v32 > v29)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_16:
    v33 = v11[1];
    v91[0] = *v11;
    v91[1] = v33;
    v92[0] = v11[2];
    *(v92 + 9) = *(v11 + 41);
    while (1)
    {
      v34 = *v15;
      if (v9 < *v14)
      {
        v35 = (*v13 + v16);
        if ((v35[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v34)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v9, 0, v91);
      }

      v13 = (v34 + 32);
      v14 = (v34 + 44);
      v15 = (v34 + 48);
      v11 = v34;
    }

    if (!*v11)
    {
      goto LABEL_69;
    }

    v42 = *v11 + 24 * *v35;
    if (v32 >= *(*v42 + 196))
    {
      goto LABEL_61;
    }

    v43 = *(*v42 + 184);
    if (!v43)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v44 = (v43 + 32 * v32);
    v45 = *v44;
    v46 = *(v44 + 1);
    v30 = *(v44 + 1);
  }

  else
  {
LABEL_43:
    v45 = 0;
    v46 = 0;
  }

  v82 = 0;
  *&v88 = v9 | 0x200000000;
  *(&v88 + 1) = a2 << 32;
  *&v89 = v45;
  *(&v89 + 1) = v46;
  v90[0] = v30;
  LOBYTE(v90[1]) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v71, &v88, 0, 0, &v74);
  Interpreter.Iterator.read()();
  v88 = v78;
  v89 = v79;
  v90[0] = *v80;
  *(v90 + 9) = *&v80[9];
  v50 = v78;
  v51 = *v80;
  v52 = *&v80[16];
  if (v81 >= *&v80[12])
  {
    goto LABEL_46;
  }

  while (1)
  {
    v53 = (v51 + 8 * v81);
    if ((v53[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_46:
      if (!v52)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v81, 0, &v88);
      }

      v50 = *v52;
      v51 = v52[4];
      v54 = *(v52 + 11);
      v52 = v52[6];
    }

    while (v81 >= v54);
  }

  if (!v50)
  {
    goto LABEL_68;
  }

  v55 = (v50 + 24 * *v53);
  v56 = *v55;
  v57 = *(*v55 + 96);
  if (v57 == 2)
  {
    goto LABEL_62;
  }

  v58 = *(v56 + 104);
  v59 = *(v56 + 88);
  v83 = *(v56 + 72);
  v84 = v59;
  v85 = v57 & 0x101;
  v86 = HIDWORD(v57);
  v87 = v58 & 1;
  v60 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v62)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v63 = v61 - v60;
  if (!v60)
  {
    v63 = 0;
  }

  v72 = v60;
  v73 = v63;
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  v64 = String.init<A>(bytes:encoding:)();
  if (!v65)
  {
    goto LABEL_64;
  }

  v66 = v64;
  specialized EvolutionTable.deallocate()();
  if (__OFSUB__(*v69, 1))
  {
    goto LABEL_60;
  }

  v74 = *v69 - 1;
  v75 = *(v69 + 8);
  v76 = *(v69 + 24);
  v77 = *(v69 + 40);
  v67 = specialized InspectionState.wrapDescription<A>(_:)(v66);

  return v67;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport8IntervalV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AF10ChangelistC2IdOAF10Subforest2V4ItemVG_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 29;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 2);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_21SwiftUITracingSupport10ChangelistC2IdOt_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport10ChangelistC2IdOtGMd, &_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport10ChangelistC2IdOtGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport5PTypeV5FieldV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 5);
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport4HostC16ClientConnectionV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMR);
  v4 = *(type metadata accessor for Host.ClientConnection(0) - 8);
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11SubgraphRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11SubgraphRefVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport12AttributeRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport12AttributeRefVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16EventAbstraction_pXp_AC0H8PositionVtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport16EventAbstraction_pXp_AC0H8PositionVtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport10Tracepoint_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport10Tracepoint_pXpGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport10Attachment_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport10Attachment_pXpGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVG5index_ytSi11returnAfterSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVG5index_ytSi11returnAfterSi5depthtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVG5index_ytSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVG5index_ytSi5depthtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV5index_ytSi11returnAfterSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV5index_ytSi11returnAfterSi5depthtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV5index_ytSi5depthtGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8EventRefV5index_ytSi5depthtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport10ChangelistC2IdOtGMd, &_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport10ChangelistC2IdOtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV9SyncPointVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9ARTraceV3V9TraceinfoV17NetworkTimeDomainV9SyncPointVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport14CircularBufferV0H0VGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport14CircularBufferV0H0VGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 24 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 32 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport10TraceChunkVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport10TraceChunkVGMR, type metadata accessor for TraceChunk);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMR, type metadata accessor for Host.ClientConnection);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyy21SwiftUITracingSupport5TraceVzcGMd, &_ss23_ContiguousArrayStorageCyy21SwiftUITracingSupport5TraceVzcGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32V_s5Int64V16uncompressedSizeSiSg010compressedG0SStGMd, &_ss23_ContiguousArrayStorageCys5Int32V_s5Int64V16uncompressedSizeSiSg010compressedG0SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32V_s5Int64V16uncompressedSizeSiSg010compressedD0SStMd, &_ss5Int32V_s5Int64V16uncompressedSizeSiSg010compressedD0SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AF5TraceV0G2UIVztF7ContextL_VSi11returnAfterSi5depthtGMd, &_ss23_ContiguousArrayStorageCySo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AF5TraceV0G2UIVztF7ContextL_VSi11returnAfterSi5depthtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AD5TraceV0D2UIVztF7ContextL_VSi11returnAfterSi5depthtMd, &_sSo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AD5TraceV0D2UIVztF7ContextL_VSi11returnAfterSi5depthtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AF5TraceV0G2UIVztF7ContextL_VSi5depthtGMd, &_ss23_ContiguousArrayStorageCySo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AF5TraceV0G2UIVztF7ContextL_VSi5depthtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AD5TraceV0D2UIVztF7ContextL_VSi5depthtMd, &_sSo13AGTreeElementa5index_21SwiftUITracingSupport14writeTreeState8subgraph6handleySo13AGSubgraphRefa_AD5TraceV0D2UIVztF7ContextL_VSi5depthtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized closure #1 in implicit closure #1 in IterativeTreeTraversal.backtrace()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
  v5 = String.init<A>(describing:)();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  print(_:separator:terminator:)();
}

uint64_t specialized static IntervalSet.== infix(_:_:)(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_s64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t specialized Interpreter.Control.Events.describe(state:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v17;
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 + 8);
      v16 = *(v5 - 2);
      v14 = v5[1];
      v15 = *v5;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D69CDB0](538979616, 0xE400000000000000);
      _print_unlocked<A, B>(_:_:)();
      v8 = *(v17 + 16);
      v7 = *(v17 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      v5 += 3;
      *(v17 + 16) = v8 + 1;
      v9 = v17 + 16 * v8;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0xE000000000000000;
      --v2;
    }

    while (v2);
  }

  v10 = MEMORY[0x26D69CFC0](v3, MEMORY[0x277D837D0]);
  v12 = v11;

  MEMORY[0x26D69CDB0](v10, v12);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0x206B6361747328;
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

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  v11 = 24 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 32 * result + 32 * a3;
  v10 = (v6 + 32 + 32 * a2);
  v11 = 32 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SwiftUITracingSupport19ViewGraphRootValuesV_AC12AttributeRefVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SwiftUITracingSupport19ViewGraphRootValuesVAC12AttributeRefVGMd, &_ss18_DictionaryStorageCy21SwiftUITracingSupport19ViewGraphRootValuesVAC12AttributeRefVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = v5;
      *(v3[7] + 4 * result) = v6;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SwiftUITracingSupport9TreeValueV8PositionVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SwiftUITracingSupport9TreeValueV8PositionVGMd, &_ss18_DictionaryStorageCySS21SwiftUITracingSupport9TreeValueV8PositionVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 6)
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
      *(v3[7] + 4 * result) = v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So14T_TracepointIDa21SwiftUITracingSupportE5FlagsVTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
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
      *(v5[7] + result) = v9;
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
      outlined init with copy of ResourceSet<Interpreter, ()>(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
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

void specialized ResourceSet.data.setter(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 24) - 8) + 24))(v2 + *(a2 + 40), a1);

  ResourceSet.post()();
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined assign with take of ResourceSet<Interpreter, ()>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TraceChunk(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TraceChunk(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TraceChunk(uint64_t a1)
{
  v2 = type metadata accessor for TraceChunk(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void partial apply for specialized closure #1 in Atomic.subscript.modify()
{
  v1 = *(v0 + 16);
  *(v1 + 4) = 0;
  os_unfair_lock_unlock(v1);
}

void partial apply for closure #1 in Interpreter.updateSnapshot(for:kind:generation:onEvent:)(_BYTE *a1@<X8>)
{
  partial apply for closure #1 in Interpreter.updateSnapshot(for:kind:generation:onEvent:)(a1);
}

{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 24);
  v9 = *(v1 + 16);
  Interpreter._updateSnapshot(_:_:_:onEvent:)(v8, v3, v4, v5, v6, v7);
  *a1 = v10 & 1;
}

unint64_t lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI()
{
  result = lazy protocol witness table cache variable for type Trace.SwiftUI and conformance Trace.SwiftUI;
  if (!lazy protocol witness table cache variable for type Trace.SwiftUI and conformance Trace.SwiftUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Trace.SwiftUI and conformance Trace.SwiftUI);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Interpreter.Storage.Types.Iterator and conformance Interpreter.Storage.Types.Iterator()
{
  result = lazy protocol witness table cache variable for type Interpreter.Storage.Types.Iterator and conformance Interpreter.Storage.Types.Iterator;
  if (!lazy protocol witness table cache variable for type Interpreter.Storage.Types.Iterator and conformance Interpreter.Storage.Types.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Interpreter.Storage.Types.Iterator and conformance Interpreter.Storage.Types.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentID and conformance AttachmentID()
{
  result = lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID;
  if (!lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID;
  if (!lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID;
  if (!lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID;
  if (!lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentID and conformance AttachmentID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Interpreter.Request and conformance Interpreter.Request()
{
  result = lazy protocol witness table cache variable for type Interpreter.Request and conformance Interpreter.Request;
  if (!lazy protocol witness table cache variable for type Interpreter.Request and conformance Interpreter.Request)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Interpreter.Request and conformance Interpreter.Request);
  }

  return result;
}

void *sub_26C1B411C(void *result, void *a2)
{
  if (a2[1] < *result)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

void *sub_26C1B4144(void *result, void *a2)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    a2[1] = *result;
  }

  return result;
}

uint64_t sub_26C1B4160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2 + a3;
  v7 = *(a2 + a3 - 16);
  v8 = *(v6 - 8);
  v9 = type metadata accessor for ResourceSet();
  v10 = *(*(v8 - 8) + 16);
  v11 = a1 + *(v9 + 40);

  return v10(a4, v11, v8);
}

void sub_26C1B41E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for ResourceSet();
  specialized ResourceSet.data.setter(a1, v7);
}

__n128 sub_26C1B4230(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26C1B426C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 136);
  v4 = v2[1];
  v3 = v2[2];
  v15[0] = *v2;
  v15[1] = v4;
  v15[2] = v3;
  v5 = v2[6];
  v7 = v2[3];
  v6 = v2[4];
  v15[5] = v2[5];
  v15[6] = v5;
  v15[3] = v7;
  v15[4] = v6;
  v8 = v2[1];
  *a2 = *v2;
  a2[1] = v8;
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[6];
  a2[5] = v2[5];
  a2[6] = v11;
  v12 = v2[4];
  a2[3] = v10;
  a2[4] = v12;
  a2[2] = v9;
  return outlined init with copy of Interpreter.Storage.Types(v15, &v14);
}

uint64_t sub_26C1B42D8(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v20[0] = *a1;
  v20[1] = v2;
  v4 = a1[6];
  v6 = a1[3];
  v5 = a1[4];
  v7 = v5;
  v24 = a1[5];
  v3 = v24;
  v25 = v4;
  v23 = v5;
  v8 = a1[3];
  v9 = *a1;
  v10 = a1[1];
  v21 = a1[2];
  v11 = v21;
  v22 = v8;
  v12 = *(a2 + 136);
  v13 = *v12;
  v14 = v12[2];
  v26[1] = v12[1];
  v26[2] = v14;
  v26[0] = v13;
  v15 = v12[3];
  v16 = v12[4];
  v17 = v12[6];
  v26[5] = v12[5];
  v26[6] = v17;
  v26[3] = v15;
  v26[4] = v16;
  v12[4] = v7;
  v12[5] = v3;
  v12[6] = a1[6];
  *v12 = v9;
  v12[1] = v10;
  v12[2] = v11;
  v12[3] = v6;
  outlined init with copy of Interpreter.Storage.Types(v20, &v19);
  return outlined destroy of Interpreter.Storage.Types(v26);
}

uint64_t sub_26C1B43A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectUnownedLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_26C1B43F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectUnownedAssign();
}

__n128 sub_26C1B443C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 144);
  *(a2 + 128) = *(v2 + 128);
  *(a2 + 144) = v3;
  v4 = *(v2 + 176);
  *(a2 + 160) = *(v2 + 160);
  *(a2 + 176) = v4;
  v5 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v5;
  v6 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v6;
  v7 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v7;
  result = *(v2 + 32);
  v9 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

__n128 sub_26C1B4474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
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

uint64_t sub_26C1B44AC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt32) -> (@owned String);
  a2[1] = v5;
}

uint64_t sub_26C1B451C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UInt64) -> (@owned String)partial apply;
  a2[1] = v5;
}

uint64_t sub_26C1B458C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UInt64) -> (@owned String);
  a2[1] = v5;
}

uint64_t type metadata completion function for ResourceSet(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Unowned();
  type metadata accessor for Array();
  result = type metadata accessor for Unique();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResourceSet(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 32) & ~v6);
      }

      v16 = *(v15 + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for ResourceSet(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 32) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    v19[2] = 0;
    v19[3] = 0;
    *v19 = a2 & 0x7FFFFFFF;
    v19[1] = 0;
  }

  else
  {
    v19[3] = a2 - 1;
  }
}

__n128 __swift_memcpy125_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.SwiftUI(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 125))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 104);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.SwiftUI(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 125) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 125) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Storage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[192])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Storage.Mode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for Interpreter.Storage.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Storage.Types(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for Interpreter.Storage.Types(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Storage.Types.Iterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for Interpreter.Storage.Types.Iterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy201_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 201))
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

uint64_t storeEnumTagSinglePayload for Interpreter.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 201) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 201) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Context.AttachmentIndex(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Interpreter.Context.AttachmentIndex(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Symbols(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for Interpreter.Symbols(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Request(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Interpreter.Request(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.Control(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for Interpreter.Control(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Interpreter.TreeAbstractionCache(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for Interpreter.TreeAbstractionCache(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Interpreter.Storage.Types.TypeMatchKey and conformance Interpreter.Storage.Types.TypeMatchKey()
{
  result = lazy protocol witness table cache variable for type Interpreter.Storage.Types.TypeMatchKey and conformance Interpreter.Storage.Types.TypeMatchKey;
  if (!lazy protocol witness table cache variable for type Interpreter.Storage.Types.TypeMatchKey and conformance Interpreter.Storage.Types.TypeMatchKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Interpreter.Storage.Types.TypeMatchKey and conformance Interpreter.Storage.Types.TypeMatchKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Trace.Control and conformance Trace.Control()
{
  result = lazy protocol witness table cache variable for type Trace.Control and conformance Trace.Control;
  if (!lazy protocol witness table cache variable for type Trace.Control and conformance Trace.Control)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Trace.Control and conformance Trace.Control);
  }

  return result;
}

uint64_t sub_26C1B5560()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32, @in_guaranteed UInt64) -> (@out String)(int a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v8 = a1;
  v7 = a2;
  v3(&v6, &v8, &v7);
  return v6;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UInt64) -> (@owned String)@<X0>(unsigned int *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(*a1, *a2);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32) -> (@out String)(int a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt32) -> (@owned String)@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t outlined assign with copy of ResourceSet<Interpreter, ()>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized Interpreter.init(chunk:symbols:owner:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v112 = a1;
  v111 = a3;
  v4 = type metadata accessor for TraceChunk(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v109 = *(v8 - 8);
  v110 = v8;
  v9 = *(v109 + 64);
  MEMORY[0x28223BE20](v8);
  v108 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  LODWORD(v103) = *a2;
  v15 = *(a2 + 8);
  v105 = *(a2 + 24);
  v106 = v15;
  v104 = *(a2 + 40);
  v107 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v130[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v109 + 104))(v108, *MEMORY[0x277D85260], v110);
  v17 = v112;
  v16 = v113;
  *(v16 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_beginAccess();
  swift_unknownObjectUnownedInit();
  v18 = TraceChunk.dataBufferPointer.getter();
  v20 = v19;
  outlined init with copy of TraceChunk(v17, v7);
  v21 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA10TraceChunkV_Tt0g5(v7);
  outlined init with copy of TraceChunk(v21, v7);
  v22 = *(*v7 + 32);
  v91 = v7;
  outlined destroy of TraceChunk(v7);
  result = specialized T_Header.init(loadedFrom:)(v22, &v117);
  v24 = v118;
  if (v118 - 3 < 0xFFFFFFFE)
  {
    __break(1u);
    goto LABEL_36;
  }

  v111 = *v17;
  result = specialized T_Header.init(loadedFrom:)(*(v111 + 32), &v119);
  v25 = v120;
  if (v120 - 3 < 0xFFFFFFFE)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v108 = v21;
  v109 = v20;
  v110 = v18;
  v26 = MEMORY[0x277D84F90];
  v107 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA14EvolutionTableV5EntryVyAA11InterpreterC8IteratorV4ModeV_G_SayAQGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v102 = v27;
  v28 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v26);
  v100 = v29;
  v101 = v28;
  v99 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v26);
  v31 = v30;
  v32 = swift_slowAlloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11InterpreterC0C0V5TypesV7KeypathVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11InterpreterC0C0V5TypesV7KeypathVGMR);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_26C328DC0;
  *(v33 + 32) = xmmword_26C32E070;
  v34 = 1;
  *(v33 + 48) = 1;
  *(v33 + 52) = -1;
  v35 = swift_slowAlloc();
  *v35 = 0;
  *(v35 + 4) = 0;
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(v35);
  if (*(v35 + 5))
  {
    __break(1u);
    goto LABEL_34;
  }

  v98 = v25 != 1;
  v36 = MEMORY[0x277D84F98];
  v93 = v24 != 1;
  v96 = v31;
  v97 = HIDWORD(v31);
  v37 = v100;
  v38 = v102;
  v94 = HIDWORD(v102);
  v95 = HIDWORD(v100);
  *(v35 + 8) = MEMORY[0x277D84F98];
  *(v35 + 5) = 1;
  os_unfair_lock_unlock(v35);
  v156[0] = v32;
  v156[1] = 1000;
  v156[2] = v33;
  v156[3] = v36;
  v156[4] = v26;
  v157 = v103;
  v158 = v106;
  v159 = v105;
  v160 = v104;
  v161 = 0;
  v162 = v35;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC7StorageV5TypesV_Tt0B5(v156);
  *&v106 = v39;
  *&v104 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(v26);
  v41 = v40;
  *&v105 = HIDWORD(v40);
  v92 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA7TreeRefV_SayAHGTt0g5Tf4g_n(v26);
  v43 = v42;
  v103 = HIDWORD(v42);
  v44 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v26);
  v46 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_n(v26, v45);
  v48 = v47;
  v49 = HIDWORD(v47);
  v50 = swift_slowAlloc();
  *v50 = v46;
  *(v50 + 8) = v48;
  *(v50 + 12) = v49;
  v51 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(MEMORY[0x277D84F98]);
  v116 = 0;
  LOBYTE(v130[0]) = v93;
  v130[1] = v110;
  v130[2] = v109;
  v130[3] = v108;
  v131 = 0;
  v132 = v107;
  v133 = v38;
  v134 = v94;
  v135 = v101;
  v136 = v37;
  v137 = v95;
  v138 = v99;
  v139 = v96;
  v140 = v97;
  v141 = 0;
  v142 = v98;
  v143 = v104;
  v144 = v41;
  v145 = v105;
  v146 = v92;
  v147 = v43;
  v34 = v113;
  v148 = v103;
  v149 = v106;
  v150 = v44;
  v151 = 0;
  v152 = 1;
  v153 = 0;
  v154 = v50;
  v155 = v51;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC7StorageV_Tt0B5(v130);
  v53 = v52;
  *(v34 + 24) = v52;
  specialized T_Header.init(loadedFrom:)(*(v111 + 32), v121);
  *(*(v53 + 136) + 40) = v121[4];
  v54 = lazy protocol witness table accessor for type Interpreter.Control and conformance Interpreter.Control();
  v55 = *(v34 + 24);
  v56 = *(v54 + 16);

  specialized EvolutionTable.add(_:impl:)(0x8000000287CD69E8, v56, 0, v55 + 40, v34);

  v57 = *(v34 + 24);
  if (*(v57 + 32))
  {
    v58 = &v125;
    specialized T_Header.init()(&v124);
  }

  else
  {
    v58 = &v123;
    v59 = v91;
    outlined init with copy of TraceChunk(*(v57 + 24), v91);
    v60 = *(*v59 + 32);
    outlined destroy of TraceChunk(v59);
    specialized T_Header.init(loadedFrom:)(v60, &v122);
  }

  v61 = *v58;
  if (v61 == 1)
  {
    v62 = lazy protocol witness table accessor for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI();
    v63 = *(v34 + 24);
    v64 = *(v62 + 16);
    v65 = (v63 + 40);

    specialized EvolutionTable.add(_:impl:)(0x8000000287CD6370, v64, 0, v63 + 40, v34);

    v66 = *(v63 + 56);
    v128[0] = *(v63 + 40);
    v128[1] = v66;
    v129[0] = *(v63 + 72);
    v67 = v63 + 56;
    v68 = (v63 + 68);
    v69 = (v63 + 88);
    *(v129 + 9) = *(v63 + 81);
    v70 = (v63 + 40);
    v71 = (v63 + 56);
    v72 = (v63 + 68);
    v73 = (v63 + 88);
    while (1)
    {
      v74 = *v73;
      if (*v72)
      {
        v75 = *v71;
        if ((v75[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v74)
      {
        goto LABEL_15;
      }

      v71 = (v74 + 16);
      v72 = (v74 + 28);
      v73 = (v74 + 48);
      v70 = v74;
    }

    v76 = *v70;
    if (v76)
    {
      v77 = (v76 + 24 * *v75);
      v78 = v65[1];
      v126[0] = *v65;
      v126[1] = v78;
      v127[0] = v65[2];
      *(v127 + 9) = *(v65 + 41);
      while (1)
      {
        v79 = *v69;
        if (*v68 > 1u && (*(*v67 + 12) & 1) == 0)
        {
          break;
        }

        if (!v79)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(1u, 1, v126);
        }

        v67 = v79 + 16;
        v68 = (v79 + 28);
        v69 = (v79 + 48);
        v65 = v79;
      }

      if (*v65)
      {
        v31 = v112;
        v80 = *(*v65 + 24 * *(*v67 + 8));
        *(v80 + 104) = *v77 + 56;
        *(v80 + 168) = *v77 + 120;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
      return result;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v31 = v112;
  if (v61 != 2)
  {
    __break(1u);
LABEL_15:
    specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v128);
  }

LABEL_25:
  if (one-time initialization token for shared != -1)
  {
LABEL_34:
    swift_once();
  }

  v81 = static Interpreters.shared;
  os_unfair_lock_lock_with_options();
  outlined init with copy of ResourceSet<Interpreter, ()>(&v81[2], v115, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  os_unfair_lock_unlock(v81);
  v82 = v115[0];
  v83 = *v115[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v82 = v83;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v83 + 2) + 1, 1, v83, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7UnownedVyAC11InterpreterCGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7UnownedVyAC11InterpreterCGGMR);
    *v82 = v83;
  }

  v86 = *(v83 + 2);
  v85 = *(v83 + 3);
  if (v86 >= v85 >> 1)
  {
    v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v83, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7UnownedVyAC11InterpreterCGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7UnownedVyAC11InterpreterCGGMR);
    *v82 = v83;
  }

  *(v83 + 2) = v86 + 1;
  *&v83[8 * v86 + 32] = v34;
  v87 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for resourceSetDidChange != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v88 = static NSNotificationName.resourceSetDidChange;
  outlined init with copy of ResourceSet<Interpreter, ()>(v115, &v114, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  v89 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  [v87 postNotificationName:v89 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v115, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  outlined destroy of TraceChunk(v31);
  return v34;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, &_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport10ChangelistC2IdOtGMd, &_ss23_ContiguousArrayStorageCySi_21SwiftUITracingSupport10ChangelistC2IdOtGMR, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport14CircularBufferV0H0VGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport14CircularBufferV0H0VGMR, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = v9 + v11;
  if (__OFADD__(v9, v11))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v15 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v8 + 24) >> 1)
  {
    v8 = a5();
    *v6 = v8;
  }

  result = a6(v10, a2, 0);
  *v6 = v8;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t outlined init with copy of ResourceSet<Interpreter, ()>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Host.ClientConnection(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport4HostC16ClientConnectionVGMR, type metadata accessor for Host.ClientConnection);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_26C1B688C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 88);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t lazy protocol witness table accessor for type Interpreter.Control and conformance Interpreter.Control()
{
  result = lazy protocol witness table cache variable for type Interpreter.Control and conformance Interpreter.Control;
  if (!lazy protocol witness table cache variable for type Interpreter.Control and conformance Interpreter.Control)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Interpreter.Control and conformance Interpreter.Control);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI()
{
  result = lazy protocol witness table cache variable for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI;
  if (!lazy protocol witness table cache variable for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Interpreter.SwiftUI and conformance Interpreter.SwiftUI);
  }

  return result;
}

uint64_t outlined init with take of TraceChunk(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TraceChunk(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  return v2(&v6);
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v5 = *(a1 + 3);
  v6 = a1[2];
  v7 = *(a1 + 6);
  v9 = *a1;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  return v2(&v9);
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed A, @in_guaranteed B, @unowned Int, @unowned Int) -> ()(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v5;
  v17[4] = *(a1 + 64);
  v18 = *(a1 + 80);
  v6 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v6;
  v7 = *(a2 + 8);
  v8 = a2[2];
  v9 = *(a2 + 24);
  v10 = a2[4];
  v11 = a2[5];
  v15 = *a2;
  v16 = v7;
  v13 = v8;
  v14 = v9;
  return v3(v17, &v15, &v13, v10, v11);
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IteratorData #1 in Interpreter.Storage.abstractViewTree(within:)(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for IteratorData #1 in Interpreter.Storage.abstractViewTree(within:)(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21SwiftUITracingSupport5EventVAA8SnapshotVSVIegyyd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for Interpreter.Control.Events(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Interpreter.Control.Events(uint64_t result, int a2, int a3)
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

uint64_t specialized Interpreter.Iterator.subscript.getter(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 116);
  v4 = *(v1 + 176);
  v5 = (v4 + 40);
  v6 = *(v4 + 56);
  v85[0] = *(v4 + 40);
  v85[1] = v6;
  v86[0] = *(v4 + 72);
  v7 = (v4 + 72);
  v8 = (v4 + 84);
  v9 = (v4 + 88);
  v10 = 8 * v3;
  *(v86 + 9) = *(v4 + 81);
  v11 = (v4 + 40);
  v12 = (v4 + 72);
  v13 = (v4 + 84);
  v14 = (v4 + 88);
  v65 = result;
  while (1)
  {
    v15 = *v14;
    if (v3 < *v13)
    {
      v16 = (*v12 + v10);
      if ((v16[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v85);
    }

    v12 = (v15 + 32);
    v13 = (v15 + 44);
    v14 = (v15 + 48);
    v11 = v15;
  }

  v17 = *v11;
  if (!v17)
  {
    goto LABEL_69;
  }

  result = v17 + 24 * *v16;
  v18 = *result;
  v19 = *(*result + 196);
  v20 = 0uLL;
  if (!v19)
  {
LABEL_38:
    v38 = 0;
    v39 = 0;
    goto LABEL_39;
  }

  v21 = *(v18 + 184);
  if (!v21)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v22 = v19 - 1;
  if (*(v21 + 32 * (v19 - 1)) >= v2)
  {
    v30 = v19 >> 1;
    v31 = *(v21 + 32 * (v19 >> 1));
    if (v19 != 1 && v31 != v2)
    {
      if (v31 <= v2)
      {
        v34 = v30 + 1;
        v33 = v2;
        v30 = v19;
      }

      else
      {
        v33 = v2;
        v34 = 0;
      }

      result = specialized Collection<>.binarySearch(for:)(v33, v34, v30, v21, *(v18 + 192) | (v19 << 32));
      if (v40)
      {
        v30 = v19 - 1;
      }

      else
      {
        v30 = result;
      }

      v2 = v65;
      v20 = 0uLL;
    }

    v41 = (v21 + 32 * v30);
    v22 = v30;
    while (v30 < v19)
    {
      if (*v41 <= v2)
      {
        goto LABEL_11;
      }

      if (!v22)
      {
        goto LABEL_38;
      }

      --v22;
      v41 -= 8;
      if (v22 > v19)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_11:
  v23 = *(v4 + 56);
  v83[0] = *v5;
  v83[1] = v23;
  v84[0] = *(v4 + 72);
  *(v84 + 9) = *(v4 + 81);
  v24 = (v4 + 40);
  v25 = (v4 + 72);
  v26 = (v4 + 84);
  v27 = (v4 + 88);
  while (1)
  {
    v28 = *v27;
    if (v3 < *v26)
    {
      v29 = (*v25 + v10);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v83);
    }

    v25 = (v28 + 32);
    v26 = (v28 + 44);
    v27 = (v28 + 48);
    v24 = v28;
  }

  v35 = *v24;
  if (!v35)
  {
    goto LABEL_73;
  }

  result = v35 + 24 * *v29;
  if (v22 >= *(*result + 196))
  {
    goto LABEL_64;
  }

  v36 = *(*result + 184);
  if (!v36)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v37 = (v36 + 32 * v22);
  v38 = *v37;
  v39 = *(v37 + 1);
  v20 = *(v37 + 1);
LABEL_39:
  v71 = 0;
  *&v80 = v3 | 0x1400000000;
  *(&v80 + 1) = v2 << 32;
  *&v81 = v38;
  *(&v81 + 1) = v39;
  *v82 = v20;
  v82[16] = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v4, &v80, 0, 0, v66);
  Interpreter.Iterator.read()();
  v80 = v67;
  v81 = v68;
  *v82 = *v69;
  *&v82[9] = *&v69[9];
  v42 = v67;
  v43 = *v69;
  result = v70;
  v44 = *&v69[16];
  if (v70 >= *&v69[12])
  {
    goto LABEL_41;
  }

  while (1)
  {
    v45 = (v43 + 8 * v70);
    if ((v45[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_41:
      if (!v44)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v70, 0, &v80);
      }

      v42 = *v44;
      v43 = v44[4];
      v46 = *(v44 + 11);
      v44 = v44[6];
    }

    while (v70 >= v46);
  }

  if (!v42)
  {
    goto LABEL_70;
  }

  result = v42 + 24 * *v45;
  v47 = *result;
  v48 = *(*result + 96);
  if (v48 == 2)
  {
    goto LABEL_65;
  }

  v49 = *(v47 + 104);
  v50 = *(v47 + 88);
  v75[2] = *(v47 + 72);
  v76 = v50;
  v77 = v48 & 0x101;
  v78 = HIDWORD(v48);
  v79 = v49 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v52)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v53 = result;
  v54 = v5[1];
  v74[0] = *v5;
  v74[1] = v54;
  v75[0] = v5[2];
  *(v75 + 9) = *(v5 + 41);
  while (1)
  {
    v55 = *v9;
    if (v3 < *v8)
    {
      v56 = (*v7 + v10);
      if ((v56[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v55)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v74);
    }

    v7 = (v55 + 32);
    v8 = (v55 + 44);
    v9 = (v55 + 48);
    v5 = v55;
  }

  if (*v5)
  {
    result = *v5 + 24 * *v56;
    v57 = *result;
    v58 = (*result + 120);
    v59 = *(*result + 136);
    v72[0] = *v58;
    v72[1] = v59;
    v73[0] = *(v57 + 152);
    *(v73 + 9) = *(v57 + 161);
    v60 = v57 + 152;
    v61 = (v57 + 164);
    v62 = (v57 + 168);
    while (1)
    {
      v63 = *v62;
      if (*v61 >= 0x15u && (*(*v60 + 164) & 1) == 0)
      {
        break;
      }

      if (!v63)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x14u, 0, v72);
      }

      v60 = v63 + 32;
      v61 = (v63 + 44);
      v62 = (v63 + 48);
      v58 = v63;
    }

    if (*v58)
    {
      v64 = _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo13T_RawTreeNodea_Tt1g5Tf4nd_n(v53, v51);
      specialized EvolutionTable.deallocate()();
      return v64;
    }

    goto LABEL_72;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

{
  v2 = result;
  v3 = *(v1 + 116);
  v4 = *(v1 + 176);
  v5 = (v4 + 40);
  v6 = *(v4 + 56);
  v85[0] = *(v4 + 40);
  v85[1] = v6;
  v86[0] = *(v4 + 72);
  v7 = (v4 + 72);
  v8 = (v4 + 84);
  v9 = (v4 + 88);
  v10 = 8 * v3;
  *(v86 + 9) = *(v4 + 81);
  v11 = (v4 + 40);
  v12 = (v4 + 72);
  v13 = (v4 + 84);
  v14 = (v4 + 88);
  v65 = result;
  while (1)
  {
    v15 = *v14;
    if (v3 < *v13)
    {
      v16 = (*v12 + v10);
      if ((v16[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v85);
    }

    v12 = (v15 + 32);
    v13 = (v15 + 44);
    v14 = (v15 + 48);
    v11 = v15;
  }

  v17 = *v11;
  if (!v17)
  {
    goto LABEL_69;
  }

  result = v17 + 24 * *v16;
  v18 = *result;
  v19 = *(*result + 196);
  v20 = 0uLL;
  if (!v19)
  {
LABEL_38:
    v38 = 0;
    v39 = 0;
    goto LABEL_39;
  }

  v21 = *(v18 + 184);
  if (!v21)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v22 = v19 - 1;
  if (*(v21 + 32 * (v19 - 1)) >= v2)
  {
    v30 = v19 >> 1;
    v31 = *(v21 + 32 * (v19 >> 1));
    if (v19 != 1 && v31 != v2)
    {
      if (v31 <= v2)
      {
        v34 = v30 + 1;
        v33 = v2;
        v30 = v19;
      }

      else
      {
        v33 = v2;
        v34 = 0;
      }

      result = specialized Collection<>.binarySearch(for:)(v33, v34, v30, v21, *(v18 + 192) | (v19 << 32));
      if (v40)
      {
        v30 = v19 - 1;
      }

      else
      {
        v30 = result;
      }

      v2 = v65;
      v20 = 0uLL;
    }

    v41 = (v21 + 32 * v30);
    v22 = v30;
    while (v30 < v19)
    {
      if (*v41 <= v2)
      {
        goto LABEL_11;
      }

      if (!v22)
      {
        goto LABEL_38;
      }

      --v22;
      v41 -= 8;
      if (v22 > v19)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_11:
  v23 = *(v4 + 56);
  v83[0] = *v5;
  v83[1] = v23;
  v84[0] = *(v4 + 72);
  *(v84 + 9) = *(v4 + 81);
  v24 = (v4 + 40);
  v25 = (v4 + 72);
  v26 = (v4 + 84);
  v27 = (v4 + 88);
  while (1)
  {
    v28 = *v27;
    if (v3 < *v26)
    {
      v29 = (*v25 + v10);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v83);
    }

    v25 = (v28 + 32);
    v26 = (v28 + 44);
    v27 = (v28 + 48);
    v24 = v28;
  }

  v35 = *v24;
  if (!v35)
  {
    goto LABEL_73;
  }

  result = v35 + 24 * *v29;
  if (v22 >= *(*result + 196))
  {
    goto LABEL_64;
  }

  v36 = *(*result + 184);
  if (!v36)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v37 = (v36 + 32 * v22);
  v38 = *v37;
  v39 = *(v37 + 1);
  v20 = *(v37 + 1);
LABEL_39:
  v71 = 0;
  *&v80 = v3 | 0x1500000000;
  *(&v80 + 1) = v2 << 32;
  *&v81 = v38;
  *(&v81 + 1) = v39;
  *v82 = v20;
  v82[16] = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v4, &v80, 0, 0, v66);
  Interpreter.Iterator.read()();
  v80 = v67;
  v81 = v68;
  *v82 = *v69;
  *&v82[9] = *&v69[9];
  v42 = v67;
  v43 = *v69;
  result = v70;
  v44 = *&v69[16];
  if (v70 >= *&v69[12])
  {
    goto LABEL_41;
  }

  while (1)
  {
    v45 = (v43 + 8 * v70);
    if ((v45[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_41:
      if (!v44)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v70, 0, &v80);
      }

      v42 = *v44;
      v43 = v44[4];
      v46 = *(v44 + 11);
      v44 = v44[6];
    }

    while (v70 >= v46);
  }

  if (!v42)
  {
    goto LABEL_70;
  }

  result = v42 + 24 * *v45;
  v47 = *result;
  v48 = *(*result + 96);
  if (v48 == 2)
  {
    goto LABEL_65;
  }

  v49 = *(v47 + 104);
  v50 = *(v47 + 88);
  v75[2] = *(v47 + 72);
  v76 = v50;
  v77 = v48 & 0x101;
  v78 = HIDWORD(v48);
  v79 = v49 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v52)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v53 = result;
  v54 = v5[1];
  v74[0] = *v5;
  v74[1] = v54;
  v75[0] = v5[2];
  *(v75 + 9) = *(v5 + 41);
  while (1)
  {
    v55 = *v9;
    if (v3 < *v8)
    {
      v56 = (*v7 + v10);
      if ((v56[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v55)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v74);
    }

    v7 = (v55 + 32);
    v8 = (v55 + 44);
    v9 = (v55 + 48);
    v5 = v55;
  }

  if (*v5)
  {
    result = *v5 + 24 * *v56;
    v57 = *result;
    v58 = (*result + 120);
    v59 = *(*result + 136);
    v72[0] = *v58;
    v72[1] = v59;
    v73[0] = *(v57 + 152);
    *(v73 + 9) = *(v57 + 161);
    v60 = v57 + 152;
    v61 = (v57 + 164);
    v62 = (v57 + 168);
    while (1)
    {
      v63 = *v62;
      if (*v61 >= 0x16u && (*(*v60 + 172) & 1) == 0)
      {
        break;
      }

      if (!v63)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(0x15u, 0, v72);
      }

      v60 = v63 + 32;
      v61 = (v63 + 44);
      v62 = (v63 + 48);
      v58 = v63;
    }

    if (*v58)
    {
      v64 = _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo15T_TreeValueNodea_Tt1g5Tf4nd_n(v53, v51);
      specialized EvolutionTable.deallocate()();
      return v64;
    }

    goto LABEL_72;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

{
  v2 = result;
  v3 = *(v1 + 116);
  v4 = *(v1 + 176);
  v5 = (v4 + 40);
  v6 = *(v4 + 56);
  v85[0] = *(v4 + 40);
  v85[1] = v6;
  v86[0] = *(v4 + 72);
  v7 = (v4 + 72);
  v8 = (v4 + 84);
  v9 = (v4 + 88);
  v10 = 8 * v3;
  *(v86 + 9) = *(v4 + 81);
  v11 = (v4 + 40);
  v12 = (v4 + 72);
  v13 = (v4 + 84);
  v14 = (v4 + 88);
  v65 = result;
  while (1)
  {
    v15 = *v14;
    if (v3 < *v13)
    {
      v16 = (*v12 + v10);
      if ((v16[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v85);
    }

    v12 = (v15 + 32);
    v13 = (v15 + 44);
    v14 = (v15 + 48);
    v11 = v15;
  }

  v17 = *v11;
  if (!v17)
  {
    goto LABEL_69;
  }

  result = v17 + 24 * *v16;
  v18 = *result;
  v19 = *(*result + 196);
  v20 = 0uLL;
  if (!v19)
  {
LABEL_38:
    v38 = 0;
    v39 = 0;
    goto LABEL_39;
  }

  v21 = *(v18 + 184);
  if (!v21)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v22 = v19 - 1;
  if (*(v21 + 32 * (v19 - 1)) >= v2)
  {
    v30 = v19 >> 1;
    v31 = *(v21 + 32 * (v19 >> 1));
    if (v19 != 1 && v31 != v2)
    {
      if (v31 <= v2)
      {
        v34 = v30 + 1;
        v33 = v2;
        v30 = v19;
      }

      else
      {
        v33 = v2;
        v34 = 0;
      }

      result = specialized Collection<>.binarySearch(for:)(v33, v34, v30, v21, *(v18 + 192) | (v19 << 32));
      if (v40)
      {
        v30 = v19 - 1;
      }

      else
      {
        v30 = result;
      }

      v2 = v65;
      v20 = 0uLL;
    }

    v41 = (v21 + 32 * v30);
    v22 = v30;
    while (v30 < v19)
    {
      if (*v41 <= v2)
      {
        goto LABEL_11;
      }

      if (!v22)
      {
        goto LABEL_38;
      }

      --v22;
      v41 -= 8;
      if (v22 > v19)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_11:
  v23 = *(v4 + 56);
  v83[0] = *v5;
  v83[1] = v23;
  v84[0] = *(v4 + 72);
  *(v84 + 9) = *(v4 + 81);
  v24 = (v4 + 40);
  v25 = (v4 + 72);
  v26 = (v4 + 84);
  v27 = (v4 + 88);
  while (1)
  {
    v28 = *v27;
    if (v3 < *v26)
    {
      v29 = (*v25 + v10);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v83);
    }

    v25 = (v28 + 32);
    v26 = (v28 + 44);
    v27 = (v28 + 48);
    v24 = v28;
  }

  v35 = *v24;
  if (!v35)
  {
    goto LABEL_73;
  }

  result = v35 + 24 * *v29;
  if (v22 >= *(*result + 196))
  {
    goto LABEL_64;
  }

  v36 = *(*result + 184);
  if (!v36)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v37 = (v36 + 32 * v22);
  v38 = *v37;
  v39 = *(v37 + 1);
  v20 = *(v37 + 1);
LABEL_39:
  v71 = 0;
  *&v80 = v3 | 0x500000000;
  *(&v80 + 1) = v2 << 32;
  *&v81 = v38;
  *(&v81 + 1) = v39;
  *v82 = v20;
  v82[16] = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v4, &v80, 0, 0, v66);
  Interpreter.Iterator.read()();
  v80 = v67;
  v81 = v68;
  *v82 = *v69;
  *&v82[9] = *&v69[9];
  v42 = v67;
  v43 = *v69;
  result = v70;
  v44 = *&v69[16];
  if (v70 >= *&v69[12])
  {
    goto LABEL_41;
  }

  while (1)
  {
    v45 = (v43 + 8 * v70);
    if ((v45[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_41:
      if (!v44)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v70, 0, &v80);
      }

      v42 = *v44;
      v43 = v44[4];
      v46 = *(v44 + 11);
      v44 = v44[6];
    }

    while (v70 >= v46);
  }

  if (!v42)
  {
    goto LABEL_70;
  }

  result = v42 + 24 * *v45;
  v47 = *result;
  v48 = *(*result + 96);
  if (v48 == 2)
  {
    goto LABEL_65;
  }

  v49 = *(v47 + 104);
  v50 = *(v47 + 88);
  v75[2] = *(v47 + 72);
  v76 = v50;
  v77 = v48 & 0x101;
  v78 = HIDWORD(v48);
  v79 = v49 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v52)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v53 = result;
  v54 = v5[1];
  v74[0] = *v5;
  v74[1] = v54;
  v75[0] = v5[2];
  *(v75 + 9) = *(v5 + 41);
  while (1)
  {
    v55 = *v9;
    if (v3 < *v8)
    {
      v56 = (*v7 + v10);
      if ((v56[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v55)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v74);
    }

    v7 = (v55 + 32);
    v8 = (v55 + 44);
    v9 = (v55 + 48);
    v5 = v55;
  }

  if (*v5)
  {
    result = *v5 + 24 * *v56;
    v57 = *result;
    v58 = (*result + 120);
    v59 = *(*result + 136);
    v72[0] = *v58;
    v72[1] = v59;
    v73[0] = *(v57 + 152);
    *(v73 + 9) = *(v57 + 161);
    v60 = v57 + 152;
    v61 = (v57 + 164);
    v62 = (v57 + 168);
    while (1)
    {
      v63 = *v62;
      if (*v61 >= 6u && (*(*v60 + 44) & 1) == 0)
      {
        break;
      }

      if (!v63)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(5u, 0, v72);
      }

      v60 = v63 + 32;
      v61 = (v63 + 44);
      v62 = (v63 + 48);
      v58 = v63;
    }

    if (*v58)
    {
      v64 = _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo11T_TypeFielda_Tt1g5Tf4nd_n(v53, v51);
      specialized EvolutionTable.deallocate()();
      return v64;
    }

    goto LABEL_72;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

{
  v2 = result;
  v3 = *(v1 + 116);
  v4 = *(v1 + 176);
  v5 = (v4 + 40);
  v6 = *(v4 + 56);
  v85[0] = *(v4 + 40);
  v85[1] = v6;
  v86[0] = *(v4 + 72);
  v7 = (v4 + 72);
  v8 = (v4 + 84);
  v9 = (v4 + 88);
  v10 = 8 * v3;
  *(v86 + 9) = *(v4 + 81);
  v11 = (v4 + 40);
  v12 = (v4 + 72);
  v13 = (v4 + 84);
  v14 = (v4 + 88);
  v65 = result;
  while (1)
  {
    v15 = *v14;
    if (v3 < *v13)
    {
      v16 = (*v12 + v10);
      if ((v16[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v15)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v85);
    }

    v12 = (v15 + 32);
    v13 = (v15 + 44);
    v14 = (v15 + 48);
    v11 = v15;
  }

  v17 = *v11;
  if (!v17)
  {
    goto LABEL_69;
  }

  result = v17 + 24 * *v16;
  v18 = *result;
  v19 = *(*result + 196);
  v20 = 0uLL;
  if (!v19)
  {
LABEL_38:
    v38 = 0;
    v39 = 0;
    goto LABEL_39;
  }

  v21 = *(v18 + 184);
  if (!v21)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v22 = v19 - 1;
  if (*(v21 + 32 * (v19 - 1)) >= v2)
  {
    v30 = v19 >> 1;
    v31 = *(v21 + 32 * (v19 >> 1));
    if (v19 != 1 && v31 != v2)
    {
      if (v31 <= v2)
      {
        v34 = v30 + 1;
        v33 = v2;
        v30 = v19;
      }

      else
      {
        v33 = v2;
        v34 = 0;
      }

      result = specialized Collection<>.binarySearch(for:)(v33, v34, v30, v21, *(v18 + 192) | (v19 << 32));
      if (v40)
      {
        v30 = v19 - 1;
      }

      else
      {
        v30 = result;
      }

      v2 = v65;
      v20 = 0uLL;
    }

    v41 = (v21 + 32 * v30);
    v22 = v30;
    while (v30 < v19)
    {
      if (*v41 <= v2)
      {
        goto LABEL_11;
      }

      if (!v22)
      {
        goto LABEL_38;
      }

      --v22;
      v41 -= 8;
      if (v22 > v19)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_11:
  v23 = *(v4 + 56);
  v83[0] = *v5;
  v83[1] = v23;
  v84[0] = *(v4 + 72);
  *(v84 + 9) = *(v4 + 81);
  v24 = (v4 + 40);
  v25 = (v4 + 72);
  v26 = (v4 + 84);
  v27 = (v4 + 88);
  while (1)
  {
    v28 = *v27;
    if (v3 < *v26)
    {
      v29 = (*v25 + v10);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v83);
    }

    v25 = (v28 + 32);
    v26 = (v28 + 44);
    v27 = (v28 + 48);
    v24 = v28;
  }

  v35 = *v24;
  if (!v35)
  {
    goto LABEL_73;
  }

  result = v35 + 24 * *v29;
  if (v22 >= *(*result + 196))
  {
    goto LABEL_64;
  }

  v36 = *(*result + 184);
  if (!v36)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v37 = (v36 + 32 * v22);
  v38 = *v37;
  v39 = *(v37 + 1);
  v20 = *(v37 + 1);
LABEL_39:
  v71 = 0;
  *&v80 = v3 | 0x400000000;
  *(&v80 + 1) = v2 << 32;
  *&v81 = v38;
  *(&v81 + 1) = v39;
  *v82 = v20;
  v82[16] = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(v4, &v80, 0, 0, v66);
  Interpreter.Iterator.read()();
  v80 = v67;
  v81 = v68;
  *v82 = *v69;
  *&v82[9] = *&v69[9];
  v42 = v67;
  v43 = *v69;
  result = v70;
  v44 = *&v69[16];
  if (v70 >= *&v69[12])
  {
    goto LABEL_41;
  }

  while (1)
  {
    v45 = (v43 + 8 * v70);
    if ((v45[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_41:
      if (!v44)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v70, 0, &v80);
      }

      v42 = *v44;
      v43 = v44[4];
      v46 = *(v44 + 11);
      v44 = v44[6];
    }

    while (v70 >= v46);
  }

  if (!v42)
  {
    goto LABEL_70;
  }

  result = v42 + 24 * *v45;
  v47 = *result;
  v48 = *(*result + 96);
  if (v48 == 2)
  {
    goto LABEL_65;
  }

  v49 = *(v47 + 104);
  v50 = *(v47 + 88);
  v75[2] = *(v47 + 72);
  v76 = v50;
  v77 = v48 & 0x101;
  v78 = HIDWORD(v48);
  v79 = v49 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v52)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v53 = result;
  v54 = v5[1];
  v74[0] = *v5;
  v74[1] = v54;
  v75[0] = v5[2];
  *(v75 + 9) = *(v5 + 41);
  while (1)
  {
    v55 = *v9;
    if (v3 < *v8)
    {
      v56 = (*v7 + v10);
      if ((v56[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v55)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v74);
    }

    v7 = (v55 + 32);
    v8 = (v55 + 44);
    v9 = (v55 + 48);
    v5 = v55;
  }

  if (*v5)
  {
    result = *v5 + 24 * *v56;
    v57 = *result;
    v58 = (*result + 120);
    v59 = *(*result + 136);
    v72[0] = *v58;
    v72[1] = v59;
    v73[0] = *(v57 + 152);
    *(v73 + 9) = *(v57 + 161);
    v60 = v57 + 152;
    v61 = (v57 + 164);
    v62 = (v57 + 168);
    while (1)
    {
      v63 = *v62;
      if (*v61 >= 5u && (*(*v60 + 36) & 1) == 0)
      {
        break;
      }

      if (!v63)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(4u, 0, v72);
      }

      v60 = v63 + 32;
      v61 = (v63 + 44);
      v62 = (v63 + 48);
      v58 = v63;
    }

    if (*v58)
    {
      v64 = _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo17T_ValueDefinitiona_Tt1g5Tf4nd_n(v53, v51);
      specialized EvolutionTable.deallocate()();
      return v64;
    }

    goto LABEL_72;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}