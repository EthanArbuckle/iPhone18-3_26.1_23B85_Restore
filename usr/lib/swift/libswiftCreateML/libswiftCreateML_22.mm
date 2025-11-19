id static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(void *a1, CMTimeValue a2, uint64_t a3, CMTimeEpoch a4, CMTimeValue a5, uint64_t a6, double a7, CMTimeEpoch a8)
{
  v68 = v8;
  *&v71 = a7;
  *&end.timescale = a6;
  end.value = a5;
  end.epoch = a4;
  start = a3;
  v66.value = a2;
  v70 = a1;
  v9 = type metadata accessor for URL(0);
  v10 = *(v9 - 8);
  v60 = v10[8];
  v72 = v10;
  v11 = alloca(v60);
  v12 = alloca(v60);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNVideoProcessor, VNVideoProcessor_ptr);
  v61 = v10[2];
  v62 = &v60;
  v63 = v9;
  v61(&v60, v70, v9);
  v66.epoch = VNVideoProcessor.__allocating_init(url:)(&v60);
  *&v66.timescale = swift_allocObject(&unk_392310, 24, 7);
  *(*&v66.timescale + 16) = _swiftEmptyArrayStorage;
  v69 = swift_allocObject(&unk_392338, 24, 7);
  *(v69 + 16) = 0;
  v67 = swift_allocObject(&unk_392360, 24, 7);
  *(v67 + 16) = 0;
  v61(&v60, v70, v9);
  v13 = *(v72 + 80);
  v14 = ~*(v72 + 80) & (v13 + 24);
  v15 = (v60 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject(&unk_392388, v16 + 8, v13 | 7);
  *(v17 + 16) = v69;
  (*(v72 + 4))(v17 + v14, v62, v63);
  *(v17 + v15) = v67;
  *(v17 + v16) = *&v66.timescale;
  objc_allocWithZone(VNDetectHumanHandPoseRequest);

  v18 = @nonobjc VNDetectHumanBodyPoseRequest.init(completionHandler:)(partial apply for closure #1 in static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:), v17, &block_descriptor_7);
  if (*&v71 >= 0.01)
  {
    v23 = *&v71;
  }

  else
  {
    v76.start.value = 0;
    *&v76.start.timescale = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v19._object = " frames with no hand in view." + 0x8000000000000000;
    v19._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v19);
    Double.write<A>(to:)(&v76, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v19._object = "Invalid target frame rate " + 0x8000000000000000;
    v19._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v19);
    Double.write<A>(to:)(&v76, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v19._countAndFlagsBits = 0x776F6E2073706620;
    v19._object = 0xE90000000000002ELL;
    String.append(_:)(v19);
    value = v76.start.value;
    v21 = *&v76.start.timescale;
    v22 = static os_log_type_t.default.getter(0x776F6E2073706620);
    v19._countAndFlagsBits = value;
    v19._object = v21;
    log(_:type:)(v19, v22);
    v21;
    v23 = 30.0;
  }

  *&v72 = 1.0 / v23;
  v24 = objc_allocWithZone(VNVideoProcessorRequestProcessingOptions);
  v25 = [v24 init];
  v26 = objc_allocWithZone(VNVideoProcessorTimeIntervalCadence);
  v27 = [v26 initWithTimeInterval:*&v72];
  [v25 setCadence:v27];

  v76.start.value = 0;
  epoch = v66.epoch;
  v29 = [v66.epoch addRequest:v18 processingOptions:v25 error:&v76];
  v30 = v76.start.value;
  if (v29)
  {
    v71 = v25;
    v72 = v18;
    v76.start.value;
    v78.value = v66.value;
    *&v78.timescale = start;
    v78.epoch = end.epoch;
    *&v77.timescale = *&end.timescale;
    v77.epoch = a8;
    v77.value = end.value;
    CMTimeRange.init(start:end:)(&v76, v78, v77);
    v74 = 0;
    v34 = [epoch analyzeTimeRange:&v74 error:{v31, v32, v33, v76.start.value, *&v76.start.timescale, v76.start.epoch, v76.duration.value, *&v76.duration.timescale, v76.duration.epoch}];
    v35 = epoch;
    v36 = v74;
    if (v34)
    {
      v37 = (v69 + 16);
      v38 = (v67 + 16);
      swift_beginAccess(v67 + 16, &v76, 0, 0);
      if (*v38 <= 0)
      {
        v36;
      }

      else
      {
        v74 = 0;
        v75 = 0xE000000000000000;
        v36;
        _StringGuts.grow(_:)(44);
        v39 = v75;
        v75;
        v74 = 0x206F65646956;
        v75 = 0xE600000000000000;
        v40._countAndFlagsBits = URL.path.getter(v39);
        object = v40._object;
        String.append(_:)(v40);
        object;
        v42._countAndFlagsBits = 0x2073616820;
        v42._object = 0xE500000000000000;
        String.append(_:)(v42);
        v73[0] = *v38;
        v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v44 = v43._object;
        String.append(_:)(v43);
        v44;
        v42._object = " cannot be empty." + 0x8000000000000000;
        v42._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v42);
        v45 = v74;
        v46 = v75;
        v47 = static os_log_type_t.info.getter();
        v42._countAndFlagsBits = v45;
        v42._object = v46;
        log(_:type:)(v42, v47);
        v46;
      }

      swift_beginAccess(v37, &v74, 0, 0);
      v54 = *v37;
      v55 = v71;
      if (!*v37)
      {
        v58 = *&v66.timescale;
        v59 = *&v66.timescale + 16;

        swift_beginAccess(v59, v73, 0, 0);
        v50 = *(v58 + 16);
        v50;

        return v50;
      }

      v56 = *v37;
      swift_willThrow(v37, &v74);
      swift_errorRetain(v54);
      v50 = v55;
      v68 = v54;
      v51 = v66.epoch;
      v35 = v72;
    }

    else
    {
      v52 = v74;
      v53 = _convertNSErrorToError(_:)(v36);

      v68 = v53;
      swift_willThrow(v52, "analyzeTimeRange:error:");
      v50 = v72;
      v51 = v71;
    }
  }

  else
  {
    v70 = v76.start.value;
    v48 = _convertNSErrorToError(_:)(v30);
    v49 = v70;

    v68 = v48;
    swift_willThrow(v49, "addRequest:processingOptions:error:");
    v50 = v18;
    v35 = epoch;
    v51 = v25;
  }

  return v50;
}

void (__cdecl **static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(void *a1, CMTimeValue a2, uint64_t a3, CMTimeEpoch a4, CMTimeValue a5, uint64_t a6, double a7, CMTimeEpoch a8))(id)
{
  v68 = v8;
  *&v72 = a7;
  *&end.timescale = a6;
  end.value = a5;
  end.epoch = a4;
  start = a3;
  v66.value = a2;
  v70 = a1;
  v9 = type metadata accessor for URL(0);
  v10 = *(v9 - 8);
  v60 = v10[8];
  v71 = v10;
  v11 = alloca(v60);
  v12 = alloca(v60);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNVideoProcessor, VNVideoProcessor_ptr);
  v61 = v10[2];
  v62 = &v60;
  v63 = v9;
  v61(&v60, v70, v9);
  v66.epoch = VNVideoProcessor.__allocating_init(url:)(&v60);
  *&v66.timescale = swift_allocObject(&unk_392310, 24, 7);
  *(*&v66.timescale + 16) = _swiftEmptyArrayStorage;
  v69 = swift_allocObject(&unk_392338, 24, 7);
  *(v69 + 16) = 0;
  v67 = swift_allocObject(&unk_392360, 24, 7);
  *(v67 + 16) = 0;
  v61(&v60, v70, v9);
  v13 = *(v71 + 80);
  v14 = ~*(v71 + 80) & (v13 + 24);
  v15 = (v60 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject(&unk_3923D8, v16 + 8, v13 | 7);
  *(v17 + 16) = v69;
  (*(v71 + 4))(v17 + v14, v62, v63);
  *(v17 + v15) = v67;
  *(v17 + v16) = *&v66.timescale;
  objc_allocWithZone(VNDetectHumanBodyPoseRequest);

  v18 = @nonobjc VNDetectHumanBodyPoseRequest.init(completionHandler:)(partial apply for closure #1 in static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:), v17, &block_descriptor_21);
  [v18 setRevision:1];
  v71 = v18;
  if (*&v72 >= 0.01)
  {
    v23 = *&v72;
  }

  else
  {
    v76.start.value = 0;
    *&v76.start.timescale = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v19._object = " frames with no hand in view." + 0x8000000000000000;
    v19._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v19);
    Double.write<A>(to:)(&v76, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v19._object = "Invalid target frame rate " + 0x8000000000000000;
    v19._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v19);
    Double.write<A>(to:)(&v76, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v19._countAndFlagsBits = 0x776F6E2073706620;
    v19._object = 0xE90000000000002ELL;
    String.append(_:)(v19);
    value = v76.start.value;
    v21 = *&v76.start.timescale;
    v22 = static os_log_type_t.default.getter(0x776F6E2073706620);
    v19._countAndFlagsBits = value;
    v18 = v71;
    v19._object = v21;
    log(_:type:)(v19, v22);
    v21;
    v23 = 30.0;
  }

  *&v72 = 1.0 / v23;
  v24 = objc_allocWithZone(VNVideoProcessorRequestProcessingOptions);
  v25 = [v24 init];
  v26 = objc_allocWithZone(VNVideoProcessorTimeIntervalCadence);
  v27 = [v26 initWithTimeInterval:*&v72];
  [v25 setCadence:v27];

  v76.start.value = 0;
  epoch = v66.epoch;
  v29 = [v66.epoch addRequest:v18 processingOptions:v25 error:&v76];
  v30 = v76.start.value;
  if (v29)
  {
    v72 = v25;
    v76.start.value;
    v78.value = v66.value;
    *&v78.timescale = start;
    v78.epoch = end.epoch;
    *&v77.timescale = *&end.timescale;
    v77.epoch = a8;
    v77.value = end.value;
    CMTimeRange.init(start:end:)(&v76, v78, v77);
    v74 = 0;
    v34 = [epoch analyzeTimeRange:&v74 error:{v31, v32, v33, v76.start.value, *&v76.start.timescale, v76.start.epoch, v76.duration.value, *&v76.duration.timescale, v76.duration.epoch}];
    v35 = epoch;
    v36 = v74;
    if (v34)
    {
      v37 = (v69 + 16);
      v38 = (v67 + 16);
      swift_beginAccess(v67 + 16, &v76, 0, 0);
      if (*v38 <= 0)
      {
        v36;
      }

      else
      {
        v74 = 0;
        v75 = 0xE000000000000000;
        v36;
        _StringGuts.grow(_:)(46);
        v39 = v75;
        v75;
        v74 = 0x206F65646956;
        v75 = 0xE600000000000000;
        v40._countAndFlagsBits = URL.path.getter(v39);
        object = v40._object;
        String.append(_:)(v40);
        object;
        v42._countAndFlagsBits = 0x2073616820;
        v42._object = 0xE500000000000000;
        String.append(_:)(v42);
        v73[0] = *v38;
        v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v44 = v43._object;
        String.append(_:)(v43);
        v44;
        v42._object = "seconds.fraction format." + 0x8000000000000000;
        v42._countAndFlagsBits = 0xD00000000000001FLL;
        String.append(_:)(v42);
        v45 = v74;
        v46 = v75;
        v47 = static os_log_type_t.info.getter();
        v42._countAndFlagsBits = v45;
        v42._object = v46;
        log(_:type:)(v42, v47);
        v46;
      }

      swift_beginAccess(v37, &v74, 0, 0);
      v53 = *v37;
      v54 = v72;
      if (!*v37)
      {
        v58 = *&v66.timescale;
        v59 = *&v66.timescale + 16;

        swift_beginAccess(v59, v73, 0, 0);
        v56 = *(v58 + 16);
        v56;

        return v56;
      }

      v55 = *v37;
      swift_willThrow(v37, &v74);
      swift_errorRetain(v53);
      v50 = v54;
      v68 = v53;
      v25 = v66.epoch;
      epoch = v71;
    }

    else
    {
      v51 = v74;
      v52 = _convertNSErrorToError(_:)(v36);

      v68 = v52;
      swift_willThrow(v51, "analyzeTimeRange:error:");
      v50 = v71;
      epoch = v35;
      v25 = v72;
    }
  }

  else
  {
    v70 = v76.start.value;
    v48 = _convertNSErrorToError(_:)(v30);
    v49 = v70;

    v68 = v48;
    swift_willThrow(v49, "addRequest:processingOptions:error:");
    v50 = v18;
  }

  v56 = &objc_release;

  return v56;
}

uint64_t static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v35 = v7;
  v32 = a6;
  v30 = a5;
  named = *a1;
  v38 = a1;
  v10 = *(a1 + 8);
  v33 = v10;
  v36 = named;
  LOBYTE(v37) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v11, v29);
  inited[2] = 3;
  inited[3] = 6;
  v31._object = a2;
  inited[4] = a2;
  inited[5] = a3;
  v31._countAndFlagsBits = a4;
  inited[6] = a4;
  v13 = v30;
  inited[7] = v30;
  inited[8] = v32;
  inited[9] = a7;
  outlined copy of Result<_DataTable, Error>(named, v33);
  named = a3;
  a3;
  v13;
  a7;
  v14 = v35;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v36, 0x2065727574616546, 0xEC00000061746164, inited);
  if (v14)
  {
    outlined consume of Result<_DataTable, Error>(v36, v37);
    swift_setDeallocating(inited);
    return specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    v35 = 0;
    v16 = v32;
    outlined consume of Result<_DataTable, Error>(v36, v37);
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v17 = v38;
    MLDataTable.willMutate()();
    v18._countAndFlagsBits = 0x5F6E6F6973736573;
    v18._object = 0xEA00000000006469;
    v19._countAndFlagsBits = v31._object;
    v19._object = named;
    MLDataTable.renameImpl(named:to:)(v19, v18);
    if (!*(v17 + 8))
    {
      v20 = *v38;
      outlined copy of Result<_DataTable, Error>(*v38, 0);
      _DataTable.columnNamesDidChange()();
      outlined consume of Result<_DataTable, Error>(v20, 0);
    }

    v21 = v38;
    MLDataTable.willMutate()();
    v22._countAndFlagsBits = 0x746E696F7079656BLL;
    v22._object = 0xE900000000000073;
    v23._countAndFlagsBits = v31._countAndFlagsBits;
    v23._object = v13;
    MLDataTable.renameImpl(named:to:)(v23, v22);
    if (!*(v21 + 8))
    {
      v24 = *v38;
      outlined copy of Result<_DataTable, Error>(*v38, 0);
      _DataTable.columnNamesDidChange()();
      outlined consume of Result<_DataTable, Error>(v24, 0);
    }

    v25 = v38;
    MLDataTable.willMutate()();
    v26._countAndFlagsBits = 0x6C6562616CLL;
    v26._object = 0xE500000000000000;
    v27._countAndFlagsBits = v16;
    v27._object = a7;
    result = MLDataTable.renameImpl(named:to:)(v27, v26);
    if (!*(v25 + 8))
    {
      v28 = *v38;
      outlined copy of Result<_DataTable, Error>(*v38, 0);
      _DataTable.columnNamesDidChange()();
      return outlined consume of Result<_DataTable, Error>(v28, 0);
    }
  }

  return result;
}

uint64_t static _VideoUtilities.generateVideoTable(_:)(uint64_t a1)
{
  v49 = v1;
  a1;
  v51 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);
  specialized MutableCollection<>.sort(by:)(&v51);
  if (v2)
  {

    BUG();
  }

  a1;
  v46 = *(v51 + 2);
  if (!v46)
  {

    v4 = _swiftEmptyArrayStorage;
    v56 = _swiftEmptyArrayStorage;
    goto LABEL_43;
  }

  v55 = a1;
  v54 = 0;
  v50 = v51;
  v47 = v51 + 32;
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  do
  {
    v53 = v4;
    v45 = v3;
    v5 = *&v47[16 * v3];
    v6 = *&v47[16 * v3 + 8];
    v7 = *(v55 + 16);
    v6;
    v8 = _swiftEmptyArrayStorage;
    if (v7)
    {
      v6;
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      v8 = _swiftEmptyArrayStorage;
      if (v10)
      {
        v8 = *(*(v55 + 56) + 8 * v9);
        v8;
      }

      v6;
    }

    v11 = v54;
    ML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation3URLVG_SSs5NeverOTg5148_s8CreateML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n(v8);
    v54 = v11;
    v8;
    v52 = ML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n;
    v13 = ML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n[2];
    if (!v13)
    {
      v6;
      v14 = _swiftEmptyArrayStorage;
LABEL_14:
      v18 = v56;
      goto LABEL_16;
    }

    v14 = static Array._allocateBufferUninitialized(minimumCapacity:)(v13, &type metadata for String);
    v14[2] = v13;
    v14[4] = v5;
    v14[5] = v6;
    if (v13 == 1)
    {
      goto LABEL_14;
    }

    v48 = v14;
    v15 = v14 + 6;
    v16 = v13 - 2;
    while (1)
    {
      *v15 = v5;
      v15[1] = v6;
      if (v16-- == 0)
      {
        break;
      }

      v15 += 2;
      v6;
    }

    v6;
    v18 = v56;
    v14 = v48;
LABEL_16:
    v19 = v14[2];
    v20 = v18[2];
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      BUG();
    }

    v22 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v18);
    v24 = v56;
    if (!isUniquelyReferenced_nonNull_native || v56[3] >> 1 < v21)
    {
      if (v20 > v21)
      {
        v21 = v20;
      }

      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21, 1, v56);
    }

    v25 = v22;
    v26 = v22[2] == 0;
    v56 = v24;
    if (v26)
    {
      v4 = v53;
      if (v19)
      {
        BUG();
      }
    }

    else
    {
      v27 = v24[2];
      v4 = v53;
      if ((v24[3] >> 1) - v27 < v19)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v24[2 * v27 + 4], v25 + 4, v19, &type metadata for String);
      if (v19)
      {
        v28 = __OFADD__(v56[2], v19);
        v29 = v56[2] + v19;
        if (v28)
        {
          BUG();
        }

        v56[2] = v29;
      }
    }

    v25;
    v30 = v52[2];
    v31 = v4[2];
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      BUG();
    }

    v33 = swift_isUniquelyReferenced_nonNull_native(v4);
    if (!v33 || v4[3] >> 1 < v32)
    {
      if (v31 > v32)
      {
        v32 = v31;
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v32, 1, v4);
    }

    v34 = v52;
    if (v52[2])
    {
      v35 = v4[2];
      if ((v4[3] >> 1) - v35 < v30)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v4[2 * v35 + 4], v52 + 4, v30, &type metadata for String);
      if (v30)
      {
        v28 = __OFADD__(v4[2], v30);
        v36 = v4[2] + v30;
        if (v28)
        {
          BUG();
        }

        v4[2] = v36;
      }
    }

    else if (v30)
    {
      BUG();
    }

    v3 = v45 + 1;
    v34;
  }

  while (v45 + 1 != v46);

LABEL_43:
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
  inited = swift_initStackObject(v37, v44);
  inited[2] = 2;
  inited[3] = 4;
  inited[4] = 0x6C6562616CLL;
  inited[5] = 0xE500000000000000;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  inited[9] = v39;
  v40 = lazy protocol witness table accessor for type [String] and conformance <A> [A]();
  inited[10] = v40;
  inited[6] = v56;
  inited[11] = 0x7461506F65646976;
  inited[12] = 0xE900000000000068;
  inited[16] = v39;
  inited[17] = v40;
  inited[13] = v4;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
  v42 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v41, &protocol witness table for String);
  return MLDataTable.init(dictionary:)(v42);
}

uint64_t static _VideoUtilities.validateVideoInput(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = v9;
  v27 = a6;
  _ = a5;
  v26._countAndFlagsBits = a4;
  v26._object = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
  v11 = swift_allocObject(v26._object, 40, 7);
  v11[2] = 1;
  v11[3] = 2;
  v11[4] = &type metadata for String;
  v12._countAndFlagsBits = a2;
  v12._object = a3;
  DataFrame.validateColumnTypes(_:_:context:)(v12, v11, __PAIR128__(0xEA00000000006874, 0x6170206F65646956));
  result = v11;
  if (!v14)
  {
    v15 = swift_allocObject(v26._object, 40, 7);
    v15[2] = 1;
    v15[3] = 2;
    v15[4] = &type metadata for String;
    v16._countAndFlagsBits = v26._countAndFlagsBits;
    v16._object = _;
    DataFrame.validateColumnTypes(_:_:context:)(v16, v15, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
    result = v15;
    if (!v17)
    {
      if (a7)
      {
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
        inited = swift_initStackObject(v18, v23);
        inited[2] = 1;
        inited[3] = 2;
        inited[4] = v27;
        inited[5] = a7;
        a7;
        DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xEA0000000000656DLL, 0x6974207472617453));
        if (v20)
        {
LABEL_8:
          swift_setDeallocating(inited);
          return specialized _ContiguousArrayStorage.__deallocating_deinit();
        }

        swift_setDeallocating(inited);
        result = specialized _ContiguousArrayStorage.__deallocating_deinit();
      }

      if (!a9)
      {
        return result;
      }

      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      inited = swift_initStackObject(v21, v22);
      inited[2] = 1;
      inited[3] = 2;
      inited[4] = a8;
      inited[5] = a9;
      a9;
      DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE800000000000000, 0x656D697420646E45));
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = v9;
  v29 = a6;
  v30 = a5;
  v31 = a4;
  v11 = *a1;
  v39 = *(a1 + 8);
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v33, v23);
  inited[2] = 1;
  inited[3] = 2;
  v28 = a2;
  inited[4] = a2;
  inited[5] = a3;
  v32 = v11;
  v34 = v11;
  v35 = v39;
  a3;
  v13 = v36;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v34, 0x7461506F65646976, 0xE900000000000068, inited);
  if (v13)
  {
    return inited;
  }

  v36 = a3;
  v34 = v32;
  v35 = v39;
  v14 = swift_initStackObject(v33, v24);
  v14[2] = 1;
  v14[3] = 2;
  v14[4] = v31;
  v15 = v30;
  v14[5] = v30;
  v15;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v34, 0x6C6562616CLL, 0xE500000000000000, v14);
  swift_setDeallocating(v14);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v34 = v32;
  v35 = v39;
  v17 = swift_initStackObject(v33, v25);
  v17[2] = 1;
  v17[3] = 2;
  v17[4] = v28;
  v18 = v36;
  v17[5] = v36;
  v37 = 2;
  v38 = 2;
  v18;
  static _ValidationUtilities.validateTableTypes(table:featureColumns:featureType:labelColumn:labelType:)(&v34, v17, &v37, v31, v30, &v38);
  v19 = v39;
  v20 = v32;
  swift_setDeallocating(v17);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (a7)
  {
    v36 = 0;
    v34 = v20;
    v35 = v19;
    v21 = swift_initStackObject(v33, v27);
    v21[2] = 1;
    v21[3] = 2;
    v21[4] = v29;
    v21[5] = a7;
    a7;
    v22 = v36;
    static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v34, 0xD000000000000011, (" a person from an observation." + 0x8000000000000000), v21);
    if (v22)
    {
LABEL_5:
      swift_setDeallocating(v21);
      return specialized _ContiguousArrayStorage.__deallocating_deinit();
    }

    swift_setDeallocating(v21);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    result = v32;
  }

  else
  {
    result = v20;
  }

  if (a9)
  {
    v34 = result;
    v35 = v19;
    v21 = swift_initStackObject(v33, v26);
    v21[2] = 1;
    v21[3] = 2;
    v21[4] = a8;
    v21[5] = a9;
    a9;
    static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v34, 0x656D697420646E65, 0xEF6E6D756C6F6320, v21);
    goto LABEL_5;
  }

  return result;
}

uint64_t static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *named, Swift::String a8)
{
  v34 = v8;
  v33._countAndFlagsBits = a6;
  v33._object = a5;
  v32 = a3;
  v10 = *a1;
  v31 = a1;
  v11 = *(a1 + 8);
  v28 = v10;
  v29 = v11;
  outlined copy of Result<_DataTable, Error>(v10, v11);
  v30._countAndFlagsBits = a2;
  v30._object = a4;
  static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v28, a2, v32, a4, v33._object, v33._countAndFlagsBits, named, a8._countAndFlagsBits, a8._object);
  result = outlined consume of Result<_DataTable, Error>(v10, v11);
  if (!v8)
  {
    countAndFlagsBits = v33._countAndFlagsBits;
    v34 = 0;
    object = v33._object;
    v15 = v31;
    if (named)
    {
      MLDataTable.willMutate()();
      v16._countAndFlagsBits = 0x7472617473;
      v17._countAndFlagsBits = countAndFlagsBits;
      v17._object = named;
      v16._object = 0xE500000000000000;
      MLDataTable.renameImpl(named:to:)(v17, v16);
      if (!*(v15 + 8))
      {
        v18 = *v15;
        outlined copy of Result<_DataTable, Error>(*v15, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v18, 0);
      }
    }

    v19 = v30._object;
    if (a8._object)
    {
      MLDataTable.willMutate()();
      v20._object = 0xE300000000000000;
      v20._countAndFlagsBits = 6581861;
      MLDataTable.renameImpl(named:to:)(a8, v20);
      if (!*(v15 + 8))
      {
        v21 = *v15;
        outlined copy of Result<_DataTable, Error>(*v15, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v21, 0);
      }
    }

    MLDataTable.willMutate()();
    v22._countAndFlagsBits = 0x7461506F65646976;
    v22._object = 0xE900000000000068;
    v23._countAndFlagsBits = v30._countAndFlagsBits;
    v23._object = v32;
    MLDataTable.renameImpl(named:to:)(v23, v22);
    if (!*(v15 + 8))
    {
      v24 = *v15;
      outlined copy of Result<_DataTable, Error>(*v15, 0);
      _DataTable.columnNamesDidChange()();
      outlined consume of Result<_DataTable, Error>(v24, 0);
    }

    MLDataTable.willMutate()();
    v25._countAndFlagsBits = 0x6C6562616CLL;
    v26._countAndFlagsBits = v19;
    v26._object = object;
    v25._object = 0xE500000000000000;
    result = MLDataTable.renameImpl(named:to:)(v26, v25);
    if (!*(v15 + 8))
    {
      v27 = *v15;
      outlined copy of Result<_DataTable, Error>(*v15, 0);
      _DataTable.columnNamesDidChange()();
      return outlined consume of Result<_DataTable, Error>(v27, 0);
    }
  }

  return result;
}

void *static _VideoUtilities.getVideoURLsAndAnnotations(from:)(uint64_t a1, __m128 a2)
{
  *&v165 = v3;
  *v173 = a1;
  v159 = v2;
  *v169 = type metadata accessor for DataFrame(0);
  v175._countAndFlagsBits = *(*v169 - 8);
  v4 = *(v175._countAndFlagsBits + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  ML14_UntypedColumnC_s5Error_pTt1g5 = __src;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v168._object = __src;
  v9 = type metadata accessor for UTType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  *v167 = __src;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v168._countAndFlagsBits = __src;
  v172._object = type metadata accessor for URL(0);
  named = *(v172._object - 1);
  v16 = *(named + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v163 = __src;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v166 = __src;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v164 = __src;
  v23 = alloca(v16);
  v24 = alloca(v16);
  *v170 = __src;
  v25 = alloca(v16);
  v26 = alloca(v16);
  v172._countAndFlagsBits = __src;
  v27 = alloca(v16);
  v28 = alloca(v16);
  *v171 = __src;
  v29 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  outlined init with copy of MLHandActionClassifier.DataSource(*v173, __src);
  switch(swift_getEnumCaseMultiPayload(__src, v29))
  {
    case 0u:
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v34 = __src + v33[12];
      v35 = v33[16];
      v172._countAndFlagsBits = *(__src + v35);
      *v173 = *(__src + v35 + 8);
      v36 = v33[20];
      *v171 = *(__src + v36);
      v175._countAndFlagsBits = *(__src + v36 + 8);
      v37 = v33[24];
      *v167 = *(__src + v37);
      v168._object = *(__src + v37 + 8);
      v38 = v33[28];
      v168._countAndFlagsBits = *(__src + v38);
      *v169 = *(__src + v38 + 8);
      v39 = *(named + 32);
      object = v172._object;
      v39(*v170, __src, v172._object);
      v41 = v164;
      v39(v164, v34, object);
      v42 = v166;
      (*(named + 16))(v166, v41, object);
      LOBYTE(__src[0]) = 1;
      *(&__src[0] + 1) = 44;
      __src[1] = 0xE100000000000000;
      *&__src[2] = 0xE000000000000000;
      *(&__src[2] + 1) = 92;
      *&__src[3] = 0xE100000000000000;
      BYTE8(__src[3]) = 1;
      *&__src[4] = 34;
      *(&__src[4] + 1) = 0xE100000000000000;
      LOBYTE(__src[5]) = 1;
      *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      *&__src[6] = 10;
      *(&__src[6] + 1) = 0xE100000000000000;
      __src[7] = 0;
      LOBYTE(__src[8]) = 1;
      *(&__src[8] + 1) = 0;
      LOBYTE(__dst[0]) = 1;
      LOBYTE(v141) = 1;
      v142 = 44;
      v143 = 0xE100000000000000;
      v144 = 0;
      v145 = 0xE000000000000000;
      v146 = 92;
      v147 = 0xE100000000000000;
      v148 = 1;
      v149 = 34;
      v150 = 0xE100000000000000;
      v151 = 1;
      v152 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v153 = 10;
      v154 = 0xE100000000000000;
      v155 = 0;
      v156 = 1;
      v157 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v141, 92);
      memcpy(__dst, __src, sizeof(__dst));
      v43 = v165;
      MLDataTable.init(contentsOf:options:)(v42, __dst);
      if (v43)
      {
        v44 = *(named + 8);
        v45 = v172._object;
        v44(v164, v172._object);
        v175._countAndFlagsBits;
        *v173;
        v168._object;
        *v169;
        return (v44)(*v170, v45);
      }

      *&v165 = 0;
      v175._object = v160;
      LOBYTE(v176) = v161;
      v89._countAndFlagsBits = v172._countAndFlagsBits;
      v90 = *v173;
      v89._object = *v173;
      MLDataTable.subscript.getter(v89);
      v91 = *&__dst[0];
      v92 = BYTE8(__dst[0]);
      if (BYTE8(__dst[0]) || (outlined copy of Result<_DataTable, Error>(*&__dst[0], 0), v166 = v91, _UntypedColumn.type.getter(), v91 = v166, outlined consume of Result<_DataTable, Error>(v166, 0), v160 != 2))
      {
        outlined consume of Result<_DataTable, Error>(v91, v92);
        v175._countAndFlagsBits;
        v168._object;
        *v169;
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(26);
        *(&__dst[0] + 1);
        *&__dst[0] = 0x206E6D756C6F43;
        *(&__dst[0] + 1) = 0xE700000000000000;
        v111._countAndFlagsBits = v172._countAndFlagsBits;
        v111._object = v90;
        String.append(_:)(v111);
        v90;
        v111._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v111);
        v165 = __dst[0];
        v111._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v111._object, 0, 0);
        *v112 = v165;
        *(v112 + 16) = 0;
        *(v112 + 32) = 0;
        *(v112 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v111._object);
        v113 = *(named + 8);
        v114 = v164;
        v115 = v172._object;
LABEL_29:
        v113(v114, v115);
        v113(*v170, v115);
        return outlined consume of Result<_DataTable, Error>(v175._object, v176);
      }

      outlined copy of Result<_DataTable, Error>(v91, 0);
      _UntypedColumn.valueAtIndex(index:)(0, 0.0);
      v94 = *(&__dst[0] + 1);
      v93 = *&__dst[0];
      if (LOBYTE(__dst[1]) != 2)
      {
        outlined consume of MLDataValue(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
        v93 = 0;
        v94 = 0xE000000000000000;
      }

      outlined consume of Result<_DataTable, Error>(v166, 0);
      *&__dst[0] = v93;
      *(&__dst[0] + 1) = v94;
      v95 = String.init<A>(_:)(__dst, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v97 = v96;
      URL.init(fileURLWithPath:)(v95, v96);
      v97;
      v98 = objc_opt_self(NSFileManager);
      v99 = [v98 defaultManager];
      v100 = v99;
      URL.path.getter(v99);
      v102 = v101;
      v103 = String._bridgeToObjectiveC()();
      v102;
      LOBYTE(v102) = [v100 fileExistsAtPath:v103];

      if (v102)
      {
        v104 = v165;
        countAndFlagsBits = v175._countAndFlagsBits;
        v106 = v172._countAndFlagsBits;
      }

      else
      {
        v119 = v166;
        outlined copy of Result<_DataTable, Error>(v166, 0);
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v119, 0, 0.0);
        v121 = alloca(24);
        v122 = alloca(32);
        *&__src[1] = *v170;
        v123 = v165;
        v124 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg5(partial apply for closure #1 in static _VideoUtilities.getVideoURLsAndAnnotations(from:), __src, MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5);
        *&v165 = v123;
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        *&__dst[0] = v124;
        v125 = alloca(24);
        v126 = alloca(24);
        *&__src[1] = __dst;
        ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
        v128 = v127;
        *&__dst[0];
        v129 = *v173;
        v173[0];
        MLDataTable.willMutate()();
        *&__dst[0] = ML14_UntypedColumnC_s5Error_pTt1g5;
        BYTE8(__dst[0]) = v128 & 1;
        v106 = v172._countAndFlagsBits;
        MLDataTable.setColumnImpl(newColumn:named:)(__dst, v172._countAndFlagsBits, v129);
        v129;
        outlined consume of Result<_DataTable, Error>(*&__dst[0], SBYTE8(__dst[0]));
        if (!v176)
        {
          v130 = v175._object;
          outlined copy of Result<_DataTable, Error>(v175._object, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v130, 0);
        }

        v104 = v165;
        countAndFlagsBits = v175._countAndFlagsBits;
      }

      v131 = v106;
      v132 = *v173;
      v133 = *v169;
      v139._object = *v169;
      v139._countAndFlagsBits = v168._countAndFlagsBits;
      v134 = v168._object;
      static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v175._object, v131, *v173, *v171, countAndFlagsBits, *v167, v168._object, v139);
      if (v104)
      {
        v132;
        v175._countAndFlagsBits;
        v134;
        v133;
        outlined consume of Result<_DataTable, Error>(v166, 0);
        v113 = *(named + 8);
        v115 = v172._object;
        v113(v163, v172._object);
        v114 = v164;
        goto LABEL_29;
      }

      v132;
      v175._countAndFlagsBits;
      v134;
      v133;
      outlined consume of Result<_DataTable, Error>(v166, 0);
      v135 = *(named + 8);
      v136 = v172._object;
      v135(v163, v172._object);
      v135(v164, v136);
      v135(*v170, v136);
LABEL_15:
      result = v175._object;
      v76 = v176;
      v77 = v159;
      *v159 = v175._object;
      *(v77 + 8) = v76;
      return result;
    case 1u:
      v175._countAndFlagsBits = v9;
      *v173 = v10;
      v64 = v172._countAndFlagsBits;
      v55 = v172._object;
      v56 = named;
      (*(named + 32))(v172._countAndFlagsBits, __src, v172._object);
      v65 = *v167;
      static UTType.movie.getter();
      v66 = v165;
      v67 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v64, v65);
      if (v66)
      {
        (*(*v173 + 8))(*v167, v175._countAndFlagsBits);
        v60 = v172._countAndFlagsBits;
        return (*(v56 + 8))(v60, v55);
      }

      v107 = v67;
      (*(*v173 + 8))(*v167, v175._countAndFlagsBits);
      static _VideoUtilities.generateVideoTable(_:)(v107);
      v107;
      v117 = v141;
      LOBYTE(v107) = v142;
      v175._object = v141;
      LOBYTE(v176) = v142 & 1;
      LOBYTE(v142) = v142 & 1;
      outlined copy of Result<_DataTable, Error>(v141, v107);
      static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v141, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, 0);
      outlined consume of Result<_DataTable, Error>(v117, v107);
      v118 = v172._countAndFlagsBits;
      goto LABEL_31;
    case 2u:
      v175._countAndFlagsBits = v9;
      *v173 = v10;
      v54 = *v171;
      v55 = v172._object;
      v56 = named;
      (*(named + 32))(*v171, __src, v172._object);
      v57 = v168._countAndFlagsBits;
      static UTType.movie.getter();
      v58 = v165;
      v59 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v54, v57);
      if (v58)
      {
        (*(*v173 + 8))(v168._countAndFlagsBits, v175._countAndFlagsBits);
        v60 = *v171;
        return (*(v56 + 8))(v60, v55);
      }

      v88 = v59;
      (*(*v173 + 8))(v168._countAndFlagsBits, v175._countAndFlagsBits);
      static _VideoUtilities.generateVideoTable(_:)(v88);
      v88;
      v116 = v141;
      LOBYTE(v88) = v142;
      v175._object = v141;
      LOBYTE(v176) = v142 & 1;
      LOBYTE(v142) = v142 & 1;
      outlined copy of Result<_DataTable, Error>(v141, v88);
      static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v141, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, 0);
      outlined consume of Result<_DataTable, Error>(v116, v88);
      v118 = *v171;
LABEL_31:
      (*(named + 8))(v118, v172._object);
      goto LABEL_15;
    case 3u:
      v61 = *(&__src[1] + 1);
      v62 = *(&__src[2] + 1);
      v63 = *(&__src[3] + 1);
      outlined consume of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
      v63;
      v62;
      v61;
      goto LABEL_13;
    case 4u:
      v47 = *(&__src[1] + 1);
      v172._object = *&__src[1];
      v48 = *(&__src[2] + 1);
      *v169 = *&__src[2];
      v168._object = *(&__src[3] + 1);
      *v170 = *&__src[3];
      v49 = *(&__src[4] + 1);
      v175._countAndFlagsBits = *&__src[4];
      v175._object = *&__src[0];
      LOBYTE(v176) = BYTE8(__src[0]) & 1;
      *v173 = *&__src[0];
      LODWORD(named) = DWORD2(__src[0]);
      outlined copy of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
      v50 = v172._object;
      v172._object = v48;
      v51 = v48;
      v52 = v165;
      v137._object = v49;
      v137._countAndFlagsBits = v175._countAndFlagsBits;
      v53 = v168._object;
      static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v175._object, v50, v47, *v169, v51, *v170, v168._object, v137);
      if (!v52)
      {
        v47;
        v172._object;
        v49;
        v53;
        outlined consume of Result<_DataTable, Error>(*v173, named);
        goto LABEL_15;
      }

      v47;
      v172._object;
      v49;
      v53;
      outlined consume of Result<_DataTable, Error>(*v173, named);
      return outlined consume of Result<_DataTable, Error>(v175._object, v176);
    case 5u:
      v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(__src + v68[12] + 8);
      *(__src + v68[16] + 8);
      *(__src + v68[20] + 8);
      (*(v175._countAndFlagsBits + 8))(__src, *v169);
LABEL_13:
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v70 = empty;
      v71 = type metadata accessor for CMLTable();
      v72 = swift_allocObject(v71, 24, 7);
      *(v72 + 16) = v70;
      v73 = type metadata accessor for _DataTable();
      swift_allocObject(v73, 40, 7);
      v175._object = _DataTable.init(impl:)(v72);
      LOBYTE(v176) = 0;
      v74 = static os_log_type_t.info.getter();
      v75._countAndFlagsBits = 0xD0000000000000A7;
      v75._object = "array has unexpected dimension." + 0x8000000000000000;
      log(_:type:)(v75, v74);
      goto LABEL_15;
    case 6u:
      v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v79 = v78[12];
      v172._countAndFlagsBits = *(__src + v79);
      *v173 = *(__src + v79 + 8);
      v80 = v78[16];
      *v171 = *(__src + v80);
      *v170 = *(__src + v80 + 8);
      v81 = v78[20];
      *v167 = *(__src + v81);
      named = *(__src + v81 + 8);
      v82 = v78[24];
      v168._countAndFlagsBits = *(__src + v82);
      v172._object = *(__src + v82 + 8);
      v83 = v168._object;
      v84 = *v169;
      v85 = v175._countAndFlagsBits;
      (*(v175._countAndFlagsBits + 32))(v168._object, __src, *v169);
      v86 = ML14_UntypedColumnC_s5Error_pTt1g5;
      *a2.i64 = (*(v85 + 16))(ML14_UntypedColumnC_s5Error_pTt1g5, v83, v84);
      v87 = v165;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v86, 0, a2);
      if (v87)
      {
        (*(v175._countAndFlagsBits + 8))(v168._object, *v169);
        *v170;
        *v173;
        named;
        return v172._object;
      }

      v175._object = v141;
      LOBYTE(v176) = v142;
      v108 = *v170;
      v109 = v172._object;
      v138._object = v172._object;
      v138._countAndFlagsBits = v168._countAndFlagsBits;
      v110 = named;
      static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v175._object, v172._countAndFlagsBits, *v173, *v171, *v170, *v167, named, v138);
      (*(v175._countAndFlagsBits + 8))(v168._object, *v169);
      *v173;
      v108;
      v109;
      v110;
      goto LABEL_15;
  }
}

uint64_t *closure #1 in static _VideoUtilities.getVideoURLsAndAnnotations(from:)(void *a1)
{
  v13 = v1;
  v3 = type metadata accessor for URL(0);
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *a1;
  URL.appendingPathComponent(_:)(*a1, a1[1]);
  v8 = URL.path.getter();
  v10 = v9;
  (*(v14 + 8))(&v12, v3);
  result = v13;
  *v13 = v8;
  result[1] = v10;
  return result;
}

void static _VideoUtilities.renameVideoColumns(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *_, uint64_t a8, void *a9)
{
  v12 = a9;
  v13._object = _;
  if (_)
  {
    v14._countAndFlagsBits = 0x7472617473;
    v13._countAndFlagsBits = a6;
    v14._object = 0xE500000000000000;
    DataFrame.renameColumn(_:to:)(v13, v14);
    v12 = a9;
  }

  if (v12)
  {
    v15._countAndFlagsBits = a8;
    v16._object = 0xE300000000000000;
    v16._countAndFlagsBits = 6581861;
    v15._object = v12;
    DataFrame.renameColumn(_:to:)(v15, v16);
  }

  v17._countAndFlagsBits = 0x7461506F65646976;
  v17._object = 0xE900000000000068;
  v18._countAndFlagsBits = a2;
  v18._object = a3;
  DataFrame.renameColumn(_:to:)(v18, v17);
  v19._countAndFlagsBits = 0x6C6562616CLL;
  v18._countAndFlagsBits = a4;
  v18._object = a5;
  v19._object = 0xE500000000000000;
  DataFrame.renameColumn(_:to:)(v18, v19);
}

void static _VideoUtilities.renameFeatureColumns(dataFrame:sessionIdColumn:featureColumn:labelColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v18 = v7;
  v21._object = a6;
  v23._countAndFlagsBits = a4;
  v22 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v10, v17);
  inited[2] = 3;
  inited[3] = 6;
  v21._countAndFlagsBits = a2;
  inited[4] = a2;
  inited[5] = a3;
  inited[6] = v23._countAndFlagsBits;
  inited[7] = a5;
  inited[8] = v21._object;
  inited[9] = a7;
  _ = a3;
  a3;
  v19 = a5;
  a5;
  a7;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xEC00000061746164, 0x2065727574616546));
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (!v12)
  {
    v13._countAndFlagsBits = 0x5F6E6F6973736573;
    v13._object = 0xEA00000000006469;
    v14._countAndFlagsBits = v21._countAndFlagsBits;
    v14._object = _;
    DataFrame.renameColumn(_:to:)(v14, v13);
    v15._countAndFlagsBits = 0x746E696F7079656BLL;
    v15._object = 0xE900000000000073;
    v14._countAndFlagsBits = v23._countAndFlagsBits;
    v14._object = v19;
    DataFrame.renameColumn(_:to:)(v14, v15);
    v16._countAndFlagsBits = 0x6C6562616CLL;
    v16._object = 0xE500000000000000;
    v14._countAndFlagsBits = v21._object;
    v14._object = a7;
    DataFrame.renameColumn(_:to:)(v14, v16);
  }
}

void *static _VideoUtilities.videoURLsPerClass(from:)(uint64_t a1, __m128 a2)
{
  v3 = a1;
  v44 = type metadata accessor for URL(0);
  v45 = *(v44 - 8);
  v4 = *(v45 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v54 = &v42;
  v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  outlined init with copy of MLHandActionClassifier.DataSource(a1, &v42);
  if (swift_getEnumCaseMultiPayload(&v42, v7) == 3)
  {
    v11 = v45;
    v12 = v47;
    v13 = v49;
    outlined consume of Result<_DataTable, Error>(v42, v43);
    v13;
    v12;
    v11;
    return _swiftEmptyDictionarySingleton;
  }

  else
  {
    static _VideoUtilities.getVideoURLsAndAnnotations(from:)(a1, a2);
    if (v2)
    {
      outlined destroy of MLHandActionClassifier.DataSource(&v42);
    }

    else
    {
      v56 = &v42;
      v57 = 0;
      v14 = v60;
      v15 = v61;
      outlined copy of Result<_DataTable, Error>(v60, v61);
      v16._countAndFlagsBits = 0x6C6562616CLL;
      v16._object = 0xE500000000000000;
      specialized MLDataTable.subscript.getter(v16, v14, v15);
      v59 = v14;
      outlined consume of Result<_DataTable, Error>(v14, v15);
      v17 = v65;
      v18 = v66;
      specialized MLDataColumn.dropDuplicates()(v65, v66);
      outlined consume of Result<_DataTable, Error>(v17, v18);
      MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v60, v61, *a2.i64);
      v20 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2];
      v64 = v15;
      v51 = v20;
      if (v20)
      {
        v53 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 + 4;
        v3 = _swiftEmptyDictionarySingleton;
        v21 = 0;
        v52 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        do
        {
          if (v21 >= MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2])
          {
            BUG();
          }

          v46 = v3;
          v47 = v21;
          v55 = v53[2 * v21];
          v22 = v53[2 * v21 + 1];
          v60 = v59;
          v23 = v64;
          LOBYTE(v61) = v64;
          outlined copy of Result<_DataTable, Error>(v59, v64);
          v22;
          v24._countAndFlagsBits = 0x6C6562616CLL;
          v24._object = 0xE500000000000000;
          MLDataTable.subscript.getter(v24);
          outlined consume of Result<_DataTable, Error>(v60, v61);
          v69 = v67;
          LOBYTE(v70) = v68;
          v62 = &type metadata for String;
          v63 = &protocol witness table for String;
          v60 = v55;
          v61 = v22;
          v48 = v22;
          v22;
          static MLUntypedColumn.== infix(_:_:)(&v69, &v60);
          outlined consume of Result<_DataTable, Error>(v69, v70);
          __swift_destroy_boxed_opaque_existential_1Tm(&v60);
          v67 = v59;
          LOBYTE(v68) = v23;
          v69 = v65;
          LOBYTE(v70) = v66;
          outlined copy of Result<_DataTable, Error>(v59, v23);
          MLDataTable.subscript.getter(&v69);
          outlined consume of Result<_DataTable, Error>(v69, v70);
          outlined consume of Result<_DataTable, Error>(v67, v68);
          v25 = v60;
          v26 = v61;
          outlined copy of Result<_DataTable, Error>(v60, v61);
          v24._countAndFlagsBits = 0x7461506F65646976;
          v24._object = 0xE900000000000068;
          specialized MLDataTable.subscript.getter(v24, v25, v26);
          v49 = v25;
          v58 = v26;
          outlined consume of Result<_DataTable, Error>(v25, v26);
          v27 = v65;
          LOBYTE(v26) = v66;
          specialized MLDataColumn.dropDuplicates()(v65, v66);
          outlined consume of Result<_DataTable, Error>(v27, v26);
          v28 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v60, v61, *a2.i64);
          v29 = v28;
          v30 = v28[2];
          if (v30)
          {
            v60 = _swiftEmptyArrayStorage;
            v43 = v30;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
            v31 = v60;
            v50 = v29;
            v32 = v29 + 5;
            do
            {
              v42 = v31;
              v33 = *(v32 - 1);
              v34 = *v32;
              *v32;
              v31 = v42;
              URL.init(fileURLWithPath:)(v33, v34);
              v34;
              v60 = v31;
              v35 = v31[2];
              if (v31[3] >> 1 <= v35)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31[3] >= 2uLL, v35 + 1, 1);
                v31 = v60;
              }

              v31[2] = v35 + 1;
              (*(v45 + 32))(v31 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v35, v54, v44);
              v32 += 2;
              --v43;
            }

            while (v43);
            v50;
          }

          else
          {
            v28;
            v31 = _swiftEmptyArrayStorage;
          }

          v36 = v47 + 1;
          v37 = v46;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v46);
          v60 = v37;
          v39 = v48;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v55, v48, isUniquelyReferenced_nonNull_native);
          v21 = v36;
          v39;
          outlined consume of Result<_DataTable, Error>(v49, v58);
          v3 = v60;
          v40 = v56;
          MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = v52;
        }

        while (v21 != v51);
        v52;
      }

      else
      {
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        v3 = _swiftEmptyDictionarySingleton;
        v40 = v56;
      }

      outlined consume of Result<_DataTable, Error>(v59, v64);
      outlined destroy of MLHandActionClassifier.DataSource(v40);
    }
  }

  return v3;
}

char *static _VideoUtilities.keypointsToMultiArray(_:)(uint64_t a1, double a2, __m128d a3)
{
  v4 = a1;
  if (specialized Array._getCount()(a1) <= 0)
  {
    v30 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)(3);
    v15 = objc_allocWithZone(NSNumber);
    [v15 initWithInteger:1];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v15);
    v16 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v16);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v16);
    specialized ContiguousArray._endMutation()(v16);
    v17 = objc_allocWithZone(NSNumber);
    [v17 initWithInteger:3];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v17);
    v18 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v18);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18);
    specialized ContiguousArray._endMutation()(v18);
    v19 = objc_allocWithZone(NSNumber);
    [v19 initWithInteger:18];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v19);
    v20 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v20);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20);
    specialized ContiguousArray._endMutation()(v20);
    v4 = _swiftEmptyArrayStorage;
    objc_allocWithZone(MLMultiArray);
    v21 = @nonobjc MLMultiArray.init(shape:dataType:)(_swiftEmptyArrayStorage, 65600);
    if (!v3)
    {
      v4 = v21;
      v22 = UnsafeMutableBufferPointer.init(_:)(v4, &type metadata for Double);
      specialized UnsafeMutableBufferPointer.initialize(repeating:)(v22, v25, 0.0);
    }
  }

  else
  {
    v5 = static _VideoUtilities.pickSinglePerson(_:)(a1, a2, a3);
    if (!v3)
    {
      if (v5)
      {
        v30 = 0;
        v6 = v5;
        v7 = [v5 keypointsMultiArrayAndReturnError:&v30];
        v8 = v7;
        v9 = v30;
        if (v8)
        {
          v4 = v8;
          v29 = v6;
          v30;
          v10 = [v4 shape];
          v11 = v10;
          v12 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
          v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v11, v12);

          ML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg50113_s8CreateML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm(v13);
          v13;
          LOBYTE(v13) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(ML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm, &outlined read-only object #0 of static _VideoUtilities.keypointsToMultiArray(_:));
          ML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm;
          if (v13)
          {
          }

          else
          {
            v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
            *v27 = 0xD00000000000002FLL;
            *(v27 + 8) = " a hand from an observation." + 0x8000000000000000;
            *(v27 + 16) = 0;
            *(v27 + 32) = 0;
            *(v27 + 48) = 0;
            swift_willThrow(&type metadata for MLCreateError, v26);
          }
        }

        else
        {
          v4 = v30;
          _convertNSErrorToError(_:)(v9);

          swift_willThrow(v4, "keypointsMultiArrayAndReturnError:");
        }
      }

      else
      {
        v4 = "est for current frame from " + 0x8000000000000000;
        v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
        *v24 = 0xD00000000000002ELL;
        *(v24 + 8) = "est for current frame from " + 0x8000000000000000;
        *(v24 + 16) = 0;
        *(v24 + 32) = 0;
        *(v24 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v23);
      }
    }
  }

  return v4;
}

void specialized UnsafeMutableBufferPointer.initialize(repeating:)(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    if (a2 < 0)
    {
      BUG();
    }

    if (a2)
    {
      v3 = _mm_cvtepi8_epi64(256);
      v4 = 0;
      si128 = _mm_load_si128(&xmmword_33D700);
      v6 = _mm_xor_si128(_mm_shuffle_epi32((a2 - 1), 68), si128);
      v7 = _mm_cvtepi8_epi64(514);
      do
      {
        v8 = _mm_xor_si128(v3, si128);
        v9 = _mm_cmpgt_epi32(v8, v6);
        v10 = _mm_or_si128(_mm_shuffle_epi32(v9, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v8, v6), 245), v9));
        if (~_mm_cvtsi128_si32(v10))
        {
          *(a1 + 8 * v4) = a3;
        }

        if (_mm_extract_epi8(_mm_xor_si128(v10, -1), 8))
        {
          *(a1 + 8 * v4 + 8) = a3;
        }

        v4 += 2;
        v3 = _mm_add_epi64(v3, v7);
      }

      while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }
  }
}

char *static _VideoUtilities.handKeypointsToMultiArray(_:)(uint64_t a1, double a2, __m128d a3)
{
  v4 = a1;
  if (specialized Array._getCount()(a1) <= 0)
  {
    v33 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)(3);
    v15 = objc_allocWithZone(NSNumber);
    v16 = [v15 initWithInteger:1];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v15);
    v17 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v17);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v17, v16);
    specialized ContiguousArray._endMutation()();
    v18 = objc_allocWithZone(NSNumber);
    v19 = [v18 initWithInteger:3];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v18);
    v20 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v20);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20, v19);
    specialized ContiguousArray._endMutation()();
    v21 = objc_allocWithZone(NSNumber);
    v22 = [v21 initWithInteger:21];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v21);
    v23 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v23);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v23, v22);
    specialized ContiguousArray._endMutation()();
    v4 = _swiftEmptyArrayStorage;
    objc_allocWithZone(MLMultiArray);
    v24 = @nonobjc MLMultiArray.init(shape:dataType:)(_swiftEmptyArrayStorage, 65600);
    if (!v3)
    {
      v4 = v24;
      v25 = UnsafeMutableBufferPointer.init(_:)(v4, &type metadata for Double);
      specialized UnsafeMutableBufferPointer.initialize(repeating:)(v25, v28, 0.0);
    }
  }

  else
  {
    v5 = static _VideoUtilities.pickSinglePerson(_:)(a1, a2, a3);
    if (!v3)
    {
      if (v5)
      {
        v33 = 0;
        v6 = v5;
        v7 = [v5 keypointsMultiArrayAndReturnError:&v33];
        v8 = v7;
        v9 = v33;
        if (v8)
        {
          v4 = v8;
          v32 = v6;
          v33;
          v10 = [v4 shape];
          v11 = v10;
          v12 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
          v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v11, v12);

          ML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg50113_s8CreateML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm(v13);
          v13;
          LOBYTE(v13) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(ML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm, &outlined read-only object #0 of static _VideoUtilities.handKeypointsToMultiArray(_:));
          ML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm;
          if (v13)
          {
          }

          else
          {
            v29 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v29, 0, 0);
            *v30 = 0xD00000000000002FLL;
            *(v30 + 8) = " a hand from an observation." + 0x8000000000000000;
            *(v30 + 16) = 0;
            *(v30 + 32) = 0;
            *(v30 + 48) = 0;
            swift_willThrow(&type metadata for MLCreateError, v29);
          }
        }

        else
        {
          v4 = v33;
          _convertNSErrorToError(_:)(v9);

          swift_willThrow(v4, "keypointsMultiArrayAndReturnError:");
        }
      }

      else
      {
        v4 = "t keypoints to MlMultiArray." + 0x8000000000000000;
        v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
        *v27 = 0xD00000000000002CLL;
        *(v27 + 8) = "t keypoints to MlMultiArray." + 0x8000000000000000;
        *(v27 + 16) = 0;
        *(v27 + 32) = 0;
        *(v27 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v26);
      }
    }
  }

  return v4;
}

void *static _VideoUtilities.pickSinglePerson(_:)(uint64_t a1, double a2, __m128d a3)
{
  if ((a1 & 0x4000000000000001) != 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFF8;
    if (a1)
    {
      v18 = a1;
    }

    v5 = _CocoaArrayWrapper.endIndex.getter(v18);
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
  }

  if (!v5)
  {
    return 0;
  }

  v20 = v3;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000003) == 0, a1);
  v21 = a1;
  v6 = a1;
  if ((a1 & 0xC000000000000003) != 0)
  {
    a1;
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, a1);
  }

  else
  {
    v7 = *(a1 + 32);
    v6;
    v8 = v7;
  }

  v9 = v8;
  if (v5 == 1)
  {
    v10 = v21;
LABEL_16:
    v10;
  }

  else
  {
    v11 = 5;
    v10 = v21;
    v19 = v5;
    while (1)
    {
      v12 = v11 - 4;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v11 - 4, (v10 & 0xC000000000000003) == 0, v10);
      v13 = (v10 & 0xC000000000000003) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)(v11 - 4, v10) : *(v10 + 8 * v11);
      v14 = v13;
      v15 = __OFADD__(1, v12);
      v16 = v12 + 1;
      if (v15)
      {
        BUG();
      }

      static _VideoUtilities.measurePersonSize(_:)(v9, a2, a3);
      if (v20)
      {
        break;
      }

      static _VideoUtilities.measurePersonSize(_:)(v14, a2, a3);
      v20 = 0;

      ++v11;
      v10 = v21;
      if (v16 == v19)
      {
        goto LABEL_16;
      }
    }

    v21;
  }

  return v9;
}

uint64_t static _VideoUtilities.resetMultiArray(_:with:)(void *a1, double a2)
{
  v3 = a1;
  result = UnsafeMutableBufferPointer.init(_:)(v3, &type metadata for Double);
  if (v2 == 0 && result != 0)
  {
    if (v5 < 0)
    {
      BUG();
    }

    if (v5)
    {
      v7 = (v5 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v8 = _mm_shuffle_epi32((v5 - 1), 68);
      v9 = _mm_cvtepi8_epi64(256);
      v10 = 0;
      si128 = _mm_load_si128(&xmmword_33D700);
      v12 = _mm_xor_si128(v8, si128);
      v13 = _mm_cvtepi8_epi64(514);
      do
      {
        v14 = _mm_xor_si128(v9, si128);
        v15 = _mm_cmpgt_epi32(v14, v12);
        v16 = _mm_or_si128(_mm_shuffle_epi32(v15, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v14, v12), 245), v15));
        if (~_mm_cvtsi128_si32(v16))
        {
          *(result + 8 * v10) = a2;
        }

        if (_mm_extract_epi8(_mm_xor_si128(v16, -1), 8))
        {
          *(result + 8 * v10 + 8) = a2;
        }

        v10 += 2;
        v9 = _mm_add_epi64(v9, v13);
      }

      while (v7 != v10);
    }
  }

  return result;
}

NSURL *VNVideoProcessor.__allocating_init(url:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_allocWithZone(ObjCClassFromMetadata);
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v5 = [(NSURL *)v2 initWithURL:v3];

  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

void closure #1 in static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(void *a1, uint64_t a2, uint64_t a3, double a4, __m128d a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a3 + 16);
  if (a2)
  {
    swift_beginAccess(v8, &v33, 1, 0);
    v9 = *v8;
    *v8 = a2;
    swift_errorRetain(a2);
    v10 = v9;
LABEL_10:
    v10;
    return;
  }

  *&v34 = a8;
  v12 = outlined bridged method (pb) of @objc VNRequest.results.getter(a1);
  if (!v12 || (v13 = v12, v14 = specialized _arrayConditionalCast<A, B>(_:)(v12), v13, !v14))
  {
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v16._object = " frames with no person in view." + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v16);
    v17 = type metadata accessor for URL(0);
    v18 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v19 = dispatch thunk of CustomStringConvertible.description.getter(v17, v18);
    v21 = v20;
    v16._countAndFlagsBits = v19;
    v16._object = v20;
    String.append(_:)(v16);
    v21;
    v16._countAndFlagsBits = 46;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v34 = v33;
    v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v23 = swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
    *v24 = v33;
    *(v24 + 16) = 0;
    *(v24 + 32) = 0;
    *(v24 + 48) = 0;
    swift_beginAccess(v8, &v33, 1, 0);
    v10 = *v8;
    *v8 = v23;
    goto LABEL_10;
  }

  if (!specialized Array._getCount()(v14))
  {
    v15 = (a7 + 16);
    swift_beginAccess(v15, v31, 1, 0);
    if (__OFADD__(1, *v15))
    {
      BUG();
    }

    ++*v15;
  }

  v25 = static _VideoUtilities.keypointsToMultiArray(_:)(v14, a4, a5);
  v26 = (v34 + 16);
  v14;
  v27 = v25;
  MLDataValue.MultiArrayType.init(_:)(v27);
  v28 = v32;
  swift_beginAccess(v26, &v33, 1, 0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v29 = *(*v26 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v29);
  v30 = *v26;
  *(v30 + 16) = v29 + 1;
  *(v30 + 8 * v29 + 32) = v28;
  *v26 = v30;
}

void closure #1 in static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(void *a1, uint64_t a2, uint64_t a3, double a4, __m128d a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a3 + 16);
  if (a2)
  {
    swift_beginAccess(v8, &v33, 1, 0);
    v9 = *v8;
    *v8 = a2;
    swift_errorRetain(a2);
    v10 = v9;
LABEL_10:
    v10;
    return;
  }

  *&v34 = a8;
  v12 = outlined bridged method (pb) of @objc VNRequest.results.getter(a1);
  if (!v12 || (v13 = v12, v14 = specialized _arrayConditionalCast<A, B>(_:)(v12), v13, !v14))
  {
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v16._object = "v24@?0@VNRequest8@NSError16" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v16);
    v17 = type metadata accessor for URL(0);
    v18 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v19 = dispatch thunk of CustomStringConvertible.description.getter(v17, v18);
    v21 = v20;
    v16._countAndFlagsBits = v19;
    v16._object = v20;
    String.append(_:)(v16);
    v21;
    v16._countAndFlagsBits = 46;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v34 = v33;
    v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v23 = swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
    *v24 = v33;
    *(v24 + 16) = 0;
    *(v24 + 32) = 0;
    *(v24 + 48) = 0;
    swift_beginAccess(v8, &v33, 1, 0);
    v10 = *v8;
    *v8 = v23;
    goto LABEL_10;
  }

  if (!specialized Array._getCount()(v14))
  {
    v15 = (a7 + 16);
    swift_beginAccess(v15, v31, 1, 0);
    if (__OFADD__(1, *v15))
    {
      BUG();
    }

    ++*v15;
  }

  v25 = static _VideoUtilities.handKeypointsToMultiArray(_:)(v14, a4, a5);
  v26 = (v34 + 16);
  v14;
  v27 = v25;
  MLDataValue.MultiArrayType.init(_:)(v27);
  v28 = v32;
  swift_beginAccess(v26, &v33, 1, 0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v29 = *(*v26 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v29);
  v30 = *v26;
  *(v30 + 16) = v29 + 1;
  *(v30 + 8 * v29 + 32) = v28;
  *v26 = v30;
}

NSURL *static _VideoUtilities.measurePersonSize(_:)(id a1, double a2, __m128d a3)
{
  v3 = String._bridgeToObjectiveC()();
  v26 = 0;
  v4 = [a1 recognizedPointsForGroupKey:v3 error:&v26];
  v5 = v4;

  v6 = v26;
  if (!v5)
  {
    v22 = v26;
    _convertNSErrorToError(_:)(v6);

    swift_willThrow(v22, "recognizedPointsForGroupKey:error:");
    return __stack_chk_guard;
  }

  v7 = 0;
  v24 = type metadata accessor for VNRecognizedPointKey(0);
  v8 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNRecognizedPoint, VNRecognizedPoint_ptr);
  v9 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNRecognizedPointKey and conformance VNRecognizedPointKey, type metadata accessor for VNRecognizedPointKey, &protocol conformance descriptor for VNRecognizedPointKey);
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v5, v24, v8, v9);
  v6;

  v11 = 1 << *(v10 + 32);
  v12 = ~(-1 << v11);
  if (v11 >= 64)
  {
    v12 = -1;
  }

  v13 = *(v10 + 64) & v12;
  v25 = (v11 + 63) >> 6;
  v14 = xmmword_343950;
  v15 = xmmword_343960;
  while (1)
  {
    v16 = v7;
    if (v13)
    {
LABEL_6:
      v7 = v16;
      goto LABEL_21;
    }

    v17 = v7 + 1;
    if (__OFADD__(1, v7))
    {
      BUG();
    }

    if (v17 >= v25)
    {
      goto LABEL_28;
    }

    v13 = *(v10 + 8 * v17 + 64);
    if (v13)
    {
      ++v7;
      goto LABEL_21;
    }

    v7 += 2;
    if (v16 + 2 >= v25)
    {
      goto LABEL_28;
    }

    v13 = *(v10 + 8 * v17 + 72);
    if (!v13)
    {
      v7 = v16 + 3;
      if (v16 + 3 >= v25)
      {
        goto LABEL_28;
      }

      v13 = *(v10 + 8 * v17 + 80);
      if (!v13)
      {
        v7 = v16 + 4;
        if (v16 + 4 >= v25)
        {
          goto LABEL_28;
        }

        v13 = *(v10 + 8 * v17 + 88);
        if (!v13)
        {
          v7 = v16 + 5;
          if (v16 + 5 >= v25)
          {
            goto LABEL_28;
          }

          v13 = *(v10 + 8 * v17 + 96);
          if (!v13)
          {
            v7 = v16 + 6;
            if (v16 + 6 >= v25)
            {
              goto LABEL_28;
            }

            v13 = *(v10 + 8 * v17 + 104);
            if (!v13)
            {
              break;
            }
          }
        }
      }
    }

LABEL_21:
    _BitScanForward64(&v18, v13);
    v13 &= v13 - 1;
    v19 = *(*(v10 + 56) + ((v7 << 9) | (8 * v18)));
    [v19 confidence];
    if (*v15.f64 > 0.2)
    {
      [v19 location];
      [v19 location];
      [v19 location];
      [v19 location];

      v14 = _mm_min_pd(v14, _mm_unpacklo_pd(a3, v15));
      v21 = _mm_unpacklo_pd(a3, v15);
      a3 = v15;
      v15 = _mm_blendv_pd(v21, v15, _mm_cmple_pd(v21, v15));
    }

    else
    {
    }
  }

  v20 = v16 + 7;
  while (v20 < v25)
  {
    v13 = *(v10 + 8 * v20++ + 64);
    if (v13)
    {
      v16 = v20 - 1;
      goto LABEL_6;
    }
  }

LABEL_28:

  return __stack_chk_guard;
}

uint64_t _sSdySdSgxcSyRzlufCSS_Tt0g5(unint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v12[2] = v14;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in closure #1 in Double.init<A>(_:), v12, a1, a2, &type metadata for Bool);
    a2;
    v7 = v13[0];
  }

  else
  {
    v3 = alloca(32);
    v4 = alloca(32);
    v12[0] = partial apply for closure #1 in closure #1 in Double.init<A>(_:);
    v12[1] = v12;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v13[0] = a1;
      v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = (a1 > 0x20u || (v8 = 0x100003E01, !_bittest64(&v8, a1))) && (v9 = _swift_stdlib_strtod_clocale(v13, v14)) != 0 && *v9 == 0;
      a2;
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v6 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = _StringObject.sharedUTF8.getter(a1, a2);
        v6 = v11;
      }

      v7 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TG5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(v5, v6, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
      a2;
    }
  }

  if (v7)
  {
    return v14[0];
  }

  else
  {
    return 0;
  }
}

void closure #1 in static _VideoUtilities.reformatKeypointsDataTable(table:featureColumn:keypointsShape:)(uint64_t a1, uint64_t a2)
{
  v5[0] = v2;
  if (*(a1 + 16) == 3)
  {
    v4 = *(a1 + 8);
    v5[0] = *a1;
    v3 = v5[0];

    static _VideoUtilities.convertKeypointsSequenceToMultiArray(value:keypointsShape:)(v5, a2);
    outlined consume of MLDataValue(v3, v4, 3);
  }

  else
  {
    *v2 = 0;
  }
}

void static _VideoUtilities.convertKeypointsSequenceToMultiArray(value:keypointsShape:)(uint64_t *a1, uint64_t a2)
{
  v148 = v2;
  v3 = *a1;
  objc_allocWithZone(MLMultiArray);
  a2;
  v4 = @nonobjc MLMultiArray.init(shape:dataType:)(a2, 65600);
  if (!v4)
  {
    goto LABEL_74;
  }

  v138 = a2;
  v5 = v4;
  v133 = UnsafeMutableBufferPointer.init(_:)(v5, &type metadata for Double);
  v149 = v5;

  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  if (v7 != 1)
  {

LABEL_74:
    *v148 = 0;
    return;
  }

  v129 = v3;
  v8 = 0.0;
  v130 = 0;
  v128 = v138 & 0xFFFFFFFFFFFFF8;

LABEL_4:
  specialized EnumeratedSequence.Iterator.next()(v8);
  v9 = v144;
  v10 = v145;
  v11 = v147;
  if (v147 == 3)
  {
    v12 = (v138 & 0xC000000000000003) == 0;
    v13 = v146;
    outlined copy of MLDataValue(v145, v146, 3u);
    outlined copy of MLDataValue(v10, v13, 3u);
    v14 = CMLSequence.size.getter();
    v150 = COERCE_DOUBLE(specialized RandomAccessCollection<>.distance(from:to:)(0, v14));
    v141 = v9;
    v142 = v10;
    v143 = v13;
    outlined consume of (offset: Int, element: MLDataValue)?(v9, v10, v13, 3);
    v15 = v12;
    v16 = v138;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v15, v138);
    if ((v16 & 0xC000000000000003) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)(1, v16);
    }

    else
    {
      v17 = *(v16 + 40);
    }

    v18 = v17;
    v19 = v149;
    v20 = [v17 integerValue];

    if (*&v150 == v20)
    {
      v21 = v142;
      outlined copy of MLDataValue(v142, v143, 3u);
      v22 = 0;
      while (1)
      {
        if (v22 == CMLSequence.size.getter())
        {

          v110 = v141;
          v111 = v143;
          outlined consume of (offset: Int, element: MLDataValue)?(v141, v21, v143, 3);
          outlined consume of (offset: Int, element: MLDataValue)?(v110, v21, v111, 3);
          goto LABEL_4;
        }

        v24 = v22;
        v23 = CMLSequence.value(at:)(v22);
        MLDataValue.init(_:)(v23, v8);
        v25 = v144;
        v140 = v145;
        v26 = v146;
        v27 = CMLSequence.size.getter();
        v132 = v24;
        if (v24 >= v27)
        {
          BUG();
        }

        v28 = v140;
        if (v26 != 3)
        {
          break;
        }

        outlined copy of MLDataValue(v25, v140, 3u);
        outlined copy of MLDataValue(v25, v28, 3u);
        v29 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v30 = v25;
        v31 = CMLSequence.size.getter();
        v139 = v30;
        outlined consume of MLDataValue(v30, v28, 3);
        if (v29 < 0 || v31 < v29)
        {
          BUG();
        }

        if ((v138 & 0xC000000000000003) != 0)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v138);
        }

        else
        {
          if (*(v128 + 16) < 3uLL)
          {
            BUG();
          }

          v32 = *(v138 + 48);
        }

        v33 = v32;
        v34 = [v32 integerValue];

        if (v29 != v34)
        {
          v25 = v139;
          v28 = v140;
          outlined consume of MLDataValue(v139, v140, 3);
          v26 = 3;
          break;
        }

        v35 = v139;

        if (CMLSequence.size.getter())
        {
          v36 = 0;
          while (1)
          {
            v37 = CMLSequence.value(at:)(v36);
            v38 = CMLFeatureValue.type.getter();
            v131 = v36;
            switch(v38)
            {
              case 0:
                v39 = v37[2];

                v151 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v39));
                v37;
                object = 0;
                countAndFlagsBits = 0;
                goto LABEL_45;
              case 1:
                v76 = v37[2];

                specialized handling<A, B>(_:_:)(v76);
                v150 = v8;
                *&v75 = COERCE_DOUBLE(v37);
                v8 = v150;
                v151 = v150;
                LOBYTE(v75) = 1;
                goto LABEL_43;
              case 2:

                v69 = CMLFeatureValue.stringValue()();
                v151 = *&v69._countAndFlagsBits;
                if (v70)
                {
                  v70;

                  BUG();
                }

                object = v69._object;
                v71 = v37;
                LOBYTE(v71) = 2;
                countAndFlagsBits = v71;
                goto LABEL_45;
              case 3:
                v72 = v37[2];

                v73 = specialized handling<A, B>(_:_:)(v72);
                if (!v73)
                {
                  BUG();
                }

                v37;
                v74 = type metadata accessor for CMLSequence();
                *&v75 = COERCE_DOUBLE(swift_allocObject(v74, 25, 7));
                *(v75 + 16) = v73;
                v151 = *&v75;
                *(v75 + 24) = 1;
                LOBYTE(v75) = 3;
                goto LABEL_43;
              case 4:
                v41 = v37[2];

                v42 = specialized handling<A, B>(_:_:)(v41);
                if (!v42)
                {
                  BUG();
                }

                v137 = v37;
                v43 = type metadata accessor for CMLDictionary();
                *&v44 = COERCE_DOUBLE(swift_initStackObject(v43, v124));
                *(v44 + 16) = v42;
                v136 = _swiftEmptyDictionarySingleton;
                swift_retain_n(v44, 2);
                v45 = 0;
                v151 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
                v150 = *&v44;
                while (v45 != CMLDictionary.size.getter())
                {
                  CMLDictionary.keyAndValue(at:)(v45);
                  v47 = v46;
                  v45 = specialized RandomAccessCollection<>.index(after:)(v45);
                  v48 = CMLFeatureValue.stringValue()();
                  if (v49)
                  {
                    v49;

                    *&v44 = v150;
                  }

                  else
                  {
                    v50 = v48._object;
                    countAndFlagsBits = v48._countAndFlagsBits;

                    MLDataValue.init(_:)(v47, v8);

                    v135 = v144;
                    v134 = v145;
                    v153 = v146;
                    *&v51 = countAndFlagsBits;
                    v144 = countAndFlagsBits;
                    v145 = v50;
                    LOBYTE(v146) = 2;
                    v52 = v50;
                    *(&v51 + 1) = v50;
                    v53 = v151;
                    specialized __RawDictionaryStorage.find<A>(_:)(v51, 2, v8);
                    *&v51 = (v55 & 1) == 0;
                    v56 = __OFADD__(*(*&v53 + 16), v51);
                    v57 = *(*&v53 + 16) + v51;
                    if (v56)
                    {
                      BUG();
                    }

                    v58 = v55;
                    if (*(*&v53 + 24) < v57)
                    {
                      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, 1u);
                      *&v59 = countAndFlagsBits;
                      *(&v59 + 1) = v52;
                      specialized __RawDictionaryStorage.find<A>(_:)(v59, 2, v8);
                      LOBYTE(v61) = v61 & 1;
                      v62 = v58;
                      if ((v58 & 1) != v61)
                      {
                        LOBYTE(v62) = v58 & 1;
                        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v52, v61, v62, v60);
                        BUG();
                      }
                    }

                    if (v58)
                    {
                      v121 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                      swift_willThrow(&type metadata for _MergeError, &protocol witness table for _MergeError);
                      v127 = v121;
                      swift_errorRetain(v121);
                      v122 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                      if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v127, v122, &type metadata for _MergeError, 0))
                      {
                        v125 = 0;
                        v126 = 0xE000000000000000;
                        _StringGuts.grow(_:)(30);
                        v123._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                        v123._countAndFlagsBits = 0xD00000000000001BLL;
                        String.append(_:)(v123);
                        _print_unlocked<A, B>(_:_:)(&v144, &v125, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                        v123._countAndFlagsBits = 39;
                        v123._object = 0xE100000000000000;
                        String.append(_:)(v123);
                        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v125, v126, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                        BUG();
                      }

                      outlined consume of MLDataValue(v135, v134, v153);
                      outlined consume of MLDataValue(v144, v145, v146);

                      v127;
                      swift_unexpectedError(v121, "Swift/Dictionary.swift", 22, 1, 489);
                      BUG();
                    }

                    v63 = v136;
                    v136[(v54 >> 6) + 8] |= 1 << v54;
                    v64 = v63[6];
                    v65 = 24 * v54;
                    *(v64 + v65) = countAndFlagsBits;
                    *(v64 + v65 + 8) = v52;
                    *(v64 + v65 + 16) = 2;
                    v66 = v63[7];
                    *(v66 + v65) = v135;
                    *(v66 + v65 + 8) = v134;
                    *(v66 + v65 + 16) = v153;
                    v67 = v63[2];
                    v56 = __OFADD__(1, v67);
                    v68 = v67 + 1;
                    if (v56)
                    {
                      BUG();
                    }

                    v151 = *&v63;
                    v63[2] = v68;
                    *&v44 = v150;
                  }
                }

                v137;
                v106 = v44;
                LOBYTE(v106) = 4;
                countAndFlagsBits = v106;
                object = 0;
                v36 = v131;
                goto LABEL_45;
              case 5:

                LOBYTE(v77) = 6;
                countAndFlagsBits = v77;
                v151 = 0.0;
                goto LABEL_44;
              case 6:

                MLDataValue.MultiArrayType.init(from:)(v37);
                v151 = *&v144;
                if (*&v144 == 0.0)
                {
                  BUG();
                }

                *&v75 = COERCE_DOUBLE();
                LOBYTE(v75) = 5;
LABEL_43:
                countAndFlagsBits = v75;
LABEL_44:
                object = 0;
LABEL_45:
                if (v36 >= CMLSequence.size.getter())
                {
                  BUG();
                }

                v137 = object;
                v78 = v149;
                v79 = [v149 strides];
                v80 = v79;
                v150 = COERCE_DOUBLE(type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr));
                v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v80, *&v150);

                if ((v81 & 0xC000000000000003) != 0)
                {
                  v82 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v81);
                }

                else
                {
                  if (!*(&dword_10 + (v81 & 0xFFFFFFFFFFFFF8)))
                  {
                    BUG();
                  }

                  v82 = *(v81 + 32);
                }

                v83 = v82;
                v81;
                v84 = [v83 integerValue];

                v86 = v84;
                v85 = v141 * v84;
                if (!is_mul_ok(v141, v86))
                {
                  BUG();
                }

                v87 = [v78 strides];
                v88 = v87;
                v89 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v88, *&v150);

                if ((v89 & 0xC000000000000003) != 0)
                {
                  v90 = specialized _ArrayBuffer._getElementSlowPath(_:)(1, v89);
                }

                else
                {
                  if (*(&dword_10 + (v89 & 0xFFFFFFFFFFFFF8)) < 2uLL)
                  {
                    BUG();
                  }

                  v90 = *(v89 + 40);
                }

                v91 = v90;
                v89;
                v92 = [v91 integerValue];

                v94 = v92;
                v93 = v132 * v92;
                if (!is_mul_ok(v132, v94))
                {
                  BUG();
                }

                v56 = __OFADD__(v93, v85);
                v95 = v93 + v85;
                if (v56)
                {
                  BUG();
                }

                v96 = [v149 strides];
                v97 = v96;
                v98 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v97, *&v150);
                (objc_release)(v97);
                if ((v98 & 0xC000000000000003) != 0)
                {
                  v100 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v98);
                  v99 = v140;
                }

                else
                {
                  v99 = v140;
                  if (*(&dword_10 + (v98 & 0xFFFFFFFFFFFFF8)) < 3uLL)
                  {
                    BUG();
                  }

                  v100 = *(v98 + 48);
                }

                v98;
                v101 = [v100 integerValue];

                v102 = v131;
                v104 = v101;
                v103 = v131 * v101;
                if (!is_mul_ok(v131, v104))
                {
                  BUG();
                }

                v56 = __OFADD__(v103, v95);
                v105 = v103 + v95;
                if (v56)
                {
                  BUG();
                }

                if (countAndFlagsBits)
                {
                  v35 = v139;
                  if (countAndFlagsBits != 1)
                  {
                    outlined consume of MLDataValue(*&v151, v137, countAndFlagsBits);
                    outlined consume of MLDataValue(v35, v99, 3);
                    outlined consume of MLDataValue(v35, v99, 3);
                    v112 = v141;
                    v113 = v142;
                    v114 = v143;
                    outlined consume of (offset: Int, element: MLDataValue)?(v141, v142, v143, 3);
                    outlined consume of (offset: Int, element: MLDataValue)?(v112, v113, v114, 3);

                    goto LABEL_78;
                  }

                  *(v133 + 8 * v105) = v151;
                }

                else
                {
                  v8 = SLODWORD(v151);
                  *(v133 + 8 * v105) = SLODWORD(v151);
                  v35 = v139;
                }

                v36 = v102 + 1;
                if (v36 == CMLSequence.size.getter())
                {
                  goto LABEL_70;
                }

                break;
            }
          }
        }

LABEL_70:
        v107 = v132 + 1;

        v108 = v140;
        outlined consume of MLDataValue(v35, v140, 3);
        v109 = v35;
        v22 = v107;
        outlined consume of MLDataValue(v109, v108, 3);
        v21 = v142;
      }

      outlined consume of MLDataValue(v25, v28, v26);
      v115 = v141;
      v116 = v142;
      v117 = v143;
      outlined consume of (offset: Int, element: MLDataValue)?(v141, v142, v143, 3);
      outlined consume of (offset: Int, element: MLDataValue)?(v115, v116, v117, 3);
LABEL_78:

      goto LABEL_74;
    }

    v118 = v141;
    v10 = v142;
    v119 = v143;
    outlined consume of (offset: Int, element: MLDataValue)?(v141, v142, v143, 3);
    v11 = 3;
  }

  else
  {
    if (v147 == 255)
    {

      MLDataValue.MultiArrayType.init(_:)(v149);
      *v148 = *&v144;
      return;
    }

    v118 = v144;
    v119 = v146;
  }

  v120 = v148;
  outlined consume of (offset: Int, element: MLDataValue)?(v118, v10, v119, v11);
  *v120 = 0;
}

void thunk for @escaping @callee_guaranteed (@guaranteed VNRequest, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v5;
  v6 = a2;
  v7 = a3;
  v4(v6, a3);
  v5;
}

id @nonobjc VNDetectHumanBodyPoseRequest.init(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed VNRequest, @guaranteed Error?) -> ();
    aBlock[3] = a3;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 initWithCompletionHandler:v4];
  _Block_release(v4);
  return v5;
}

uint64_t specialized Array._checkIndex(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x4000000000000001) != 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFF8;
    if (a2)
    {
      v4 = a2;
    }

    result = _CocoaArrayWrapper.endIndex.getter(v4);
  }

  else
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFF8));
  }

  if (result < a1)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  return result;
}

void outlined consume of (offset: Int, element: MLDataValue)?(uint64_t a1, void *a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    outlined consume of MLDataValue(a2, a3, a4);
  }
}

BOOL closure #1 in closure #1 in Double.init<A>(_:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  result = (v3 > 0x20 || (v4 = 0x100003E01, !_bittest64(&v4, v3))) && (v6 = _swift_stdlib_strtod_clocale()) != 0 && *v6 == 0;
  *v2 = result;
  return result;
}

uint64_t outlined bridged method (pb) of @objc VNRequest.results.getter(void *a1)
{
  v1 = [a1 results];
  v2 = v1;
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNObservation, VNObservation_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v3, v4);

  return v5;
}

void partial apply for closure #1 in static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(void *a1, uint64_t a2, double a3, __m128d a4)
{
  partial apply for closure #1 in static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(a1, a2, a3, a4);
}

{
  v5 = *(type metadata accessor for URL(0) - 8);
  v6 = ~*(v5 + 80) & (*(v5 + 80) + 24);
  v7 = (v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(a1, a2, *(v4 + 16), a3, a4, v4 + v6, *(v4 + v7), *(v4 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  return v2;
}

uint64_t outlined init with copy of MLHandActionClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLHandActionClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String);
    lazy protocol witness table cache variable for type String and conformance String = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String);
    lazy protocol witness table cache variable for type String and conformance String = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String);
    lazy protocol witness table cache variable for type String and conformance String = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String);
    lazy protocol witness table cache variable for type String and conformance String = result;
  }

  return result;
}

void partial apply for closure #1 in static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(void *a1, uint64_t a2, double a3, __m128d a4)
{
  v5 = *(type metadata accessor for URL(0) - 8);
  v6 = ~*(v5 + 80) & (*(v5 + 80) + 24);
  v7 = (v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(a1, a2, *(v4 + 16), a3, a4, v4 + v6, *(v4 + v7), *(v4 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_11Tm()
{
  v7 = type metadata accessor for URL(0);
  v1 = *(v7 - 8);
  v2 = *(v1 + 80);
  v8 = v1;
  v3 = ~v2 & (v2 + 24);
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + 16);
  (*(v8 + 8))(v0 + v3, v7);
  *(v0 + v4);
  *(v0 + v5);
  return swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t MLFewShotSoundClassifier.validationData(features:labels:device:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v4;
  v28 = a2;
  v25 = v3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ScalarType?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v26 = type metadata accessor for Tensor(0);
  v10 = *(*(v26 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v27 = v19;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v21 = v5;
  v22 = a3;
  v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_14NeuralNetworks6TensorVs5NeverOTg5(partial apply for closure #1 in MLFewShotSoundClassifier.validationData(features:labels:device:), v20, v28);
  v24 = a3;
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo12MLMultiArrayCG_14NeuralNetworks6TensorVs5NeverOTg5(partial apply for closure #2 in MLFewShotSoundClassifier.validationData(features:labels:device:), v23, a1);
  v16 = type metadata accessor for ScalarType(0);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v16);
  Tensor.init(concatenating:alongAxis:scalarType:)(v15, 0, v19);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v16);
  v17 = v27;
  Tensor.init(stacking:alongAxis:scalarType:)(v28, 0, v19);
  return DataSample.init(features:labels:)(v19, v17, v26, v26);
}

uint64_t closure #1 in MLFewShotSoundClassifier.makeSoundDataset<A>(from:batchSize:device:)(uint64_t *a1, void *a2, void (*a3)(void *, uint64_t))
{
  v54 = a3;
  v50 = a2;
  v44 = v3;
  v39 = type metadata accessor for FloatingPointRoundingRule(0);
  v40 = *(v39 - 8);
  v4 = *(v40 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v41 = &v38;
  v52 = type metadata accessor for ScalarType(0);
  v42 = *(v52 - 1);
  v7 = *(v42 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v43 = &v38;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v45 = type metadata accessor for Tensor(0);
  v48 = *(v45 - 8);
  v13 = *(v48 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v51 = &v38;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v47 = &v38;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v53 = &v38;
  v20 = alloca(v13);
  v21 = alloca(v13);
  v22 = *a1;
  v23 = a1[1];
  v24 = type metadata accessor for ComputeDevice(0);
  v49 = *(*(v24 - 8) + 16);
  v49(&v38, v54, v24);
  __swift_storeEnumTagSinglePayload(&v38, 0, 1, v24);
  v46 = &v38;
  Tensor.init(oneHotAtIndex:depth:onValue:offValue:on:)(v22, v50, &v38, 1.0, 0.0);
  v50 = v23;
  v25 = MLMultiArray.cast(to:)(&loc_10020);
  v49(&v38, v54, v24);
  __swift_storeEnumTagSinglePayload(&v38, 0, 1, v24);
  v52 = v25;
  v26 = v47;
  Tensor.init(_:device:)(v52, &v38, COERCE_DOUBLE(1065353216), 0.0);
  v27 = v53;
  Tensor.squeezingShape(at:)(&outlined read-only object #1 of closure #1 in MLFewShotSoundClassifier.makeSoundDataset<A>(from:batchSize:device:));
  v28 = v48;
  v29 = v45;
  v54 = *(v48 + 8);
  v54(v26, v45);
  v30 = *(v28 + 16);
  v30(v26, v27, v29);
  v31 = v51;
  v32 = v46;
  v30(v51, v46, v29);
  v33 = v32;
  DataSample.init(features:labels:)(v26, v31, v29, v29);
  v34 = v53;

  v35 = v34;
  v36 = v54;
  v54(v35, v29);
  return v36(v33, v29);
}

uint64_t closure #1 in MLFewShotSoundClassifier.validationData(features:labels:device:)(id *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  v11[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = [*a1 integerValue];
  v8 = *(*(a2 + *(type metadata accessor for MLFewShotSoundClassifier(0) + 32)) + 16);
  v9 = type metadata accessor for ComputeDevice(0);
  (*(*(v9 - 8) + 16))(v11, v12, v9);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v9);
  return Tensor.init(oneHotAtIndex:depth:onValue:offValue:on:)(v7, v8, v11, 1.0, 0.0);
}

void closure #2 in MLFewShotSoundClassifier.validationData(features:labels:device:)(void **a1, uint64_t a2, double a3, double a4)
{
  v29 = v5;
  v39 = a2;
  v38 = v4;
  v30 = type metadata accessor for FloatingPointRoundingRule(0);
  v31 = *(v30 - 8);
  v6 = *(v31 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v32 = &v29;
  v36 = type metadata accessor for ScalarType(0);
  v35 = *(v36 - 8);
  v9 = *(v35 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v37 = &v29;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v33 = type metadata accessor for Tensor(0);
  v34 = *(v33 - 8);
  v15 = *(v34 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = *a1;
  v19 = v29;
  v20 = MLMultiArray.cast(to:)(&loc_10020);
  if (v19)
  {
    v19;
    v21 = type metadata accessor for ComputeDevice(0);
    (*(*(v21 - 8) + 16))(&v29, v39, v21);
    __swift_storeEnumTagSinglePayload(&v29, 0, 1, v21);
    v22 = v18;
    v40 = &v29;
    Tensor.init(_:device:)(v22, &v29, a3, a4);
    v23 = v37;
    (*(v35 + 104))(v37, enum case for ScalarType.float32(_:), v36);
    v24 = v32;
    v25 = v30;
    v26 = v31;
    (*(v31 + 104))(v32, enum case for FloatingPointRoundingRule.towardZero(_:), v30);
    Tensor.cast(to:roundingRule:)(v23, v24);
    (*(v26 + 8))(v24, v25);
    (*(v35 + 8))(v37, v36);
    (*(v34 + 8))(v40, v33);
  }

  else
  {
    v27 = v20;
    v28 = type metadata accessor for ComputeDevice(0);
    (*(*(v28 - 8) + 16))(&v29, v39, v28);
    __swift_storeEnumTagSinglePayload(&v29, 0, 1, v28);
    Tensor.init(_:device:)(v27, &v29, a3, a4);
  }
}

void *initializeBufferWithCopyOfBuffer for AnyTreeClassifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v4 + 16) & ~v4));
    v11;
  }

  else
  {
    *a1 = *a2;
    v5 = a2[1];
    *(a1 + 8) = v5;
    v6 = a2[2];
    *(a1 + 16) = v6;
    v16 = a2[3];
    v7 = *(a2 + 32);
    *(a1 + 24) = v16;
    *(a1 + 32) = v7;
    v14 = a2[5];
    *(a1 + 40) = v14;
    *(a1 + 48) = a2[6];
    v15 = a2[7];
    *(a1 + 56) = v15;
    v8 = *(a3 + 32);
    v13 = a1 + v8;
    v9 = a2 + v8;
    v10 = type metadata accessor for BaseTreeClassifier(0);
    v17 = *(*(v10 - 8) + 16);
    v5;
    v6;
    v16;
    v14;
    v15;
    v17(v13, v9, v10);
  }

  return v3;
}

uint64_t destroy for AnyTreeClassifier(void *a1, uint64_t a2)
{
  a1[1], a2;
  a1[2], a2;
  a1[3], a2;
  a1[5], a2;
  a1[7], a2;
  v2 = a1 + *(a2 + 32);
  v3 = type metadata accessor for BaseTreeClassifier(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

uint64_t initializeWithCopy for AnyTreeClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v13 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 24) = v13;
  *(a1 + 32) = v5;
  v11 = *(a2 + 40);
  *(a1 + 40) = v11;
  *(a1 + 48) = *(a2 + 48);
  v12 = *(a2 + 56);
  *(a1 + 56) = v12;
  v6 = *(a3 + 32);
  v10 = a1 + v6;
  v7 = v6 + a2;
  v8 = type metadata accessor for BaseTreeClassifier(0);
  v14 = *(*(v8 - 8) + 16);
  v3;
  v4;
  v13;
  v11;
  v12;
  v14(v10, v7, v8);
  return a1;
}

uint64_t assignWithCopy for AnyTreeClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;
  v5;
  v6, a2;
  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  v7;
  v8, a2;
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a1 + 24);
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  v9;
  v11, a2;
  v12 = *(a2 + 40);
  v13 = *(a1 + 40);
  *(a1 + 40) = v12;
  v12;
  v13, a2;
  *(a1 + 48) = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a1 + 56);
  *(a1 + 56) = v14;
  v14;
  v15, a2;
  v16 = *(a3 + 32);
  v17 = a1 + v16;
  v18 = v16 + a2;
  v19 = type metadata accessor for BaseTreeClassifier(0);
  (*(*(v19 - 8) + 24))(v17, v18, v19);
  return a1;
}

uint64_t initializeWithTake for AnyTreeClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a3 + 32);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for BaseTreeClassifier(0);
  (*(*(v6 - 8) + 32))(v4, v5, v6);
  return a1;
}

uint64_t assignWithTake for AnyTreeClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v5, a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v6, a2;
  v7 = *(a2 + 32);
  v8 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  v8, a2;
  v9 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  v9, a2;
  *(a1 + 48) = *(a2 + 48);
  v10 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  v10, a2;
  v11 = *(a3 + 32);
  v12 = a1 + v11;
  v13 = v11 + a2;
  v14 = type metadata accessor for BaseTreeClassifier(0);
  (*(*(v14 - 8) + 40))(v12, v13, v14);
  return a1;
}

uint64_t sub_1701A2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*(a1 + 8) & 0xFFFFFFFF00000001) == 0)
    {
      return (*(a1 + 8) >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for BaseTreeClassifier(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 32) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_17022A(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseTreeClassifier(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 32) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for AnyTreeClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnyTreeClassifier;
  if (!type metadata singleton initialization cache for AnyTreeClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for AnyTreeClassifier);
  }

  return result;
}

uint64_t type metadata completion function for AnyTreeClassifier(uint64_t a1)
{
  v3[0] = &unk_3439A8;
  v3[1] = &value witness table for Builtin.BridgeObject + 64;
  v3[2] = &unk_3439C0;
  v3[3] = &unk_3439D8;
  result = type metadata accessor for BaseTreeClassifier(319);
  if (v2 <= 0x3F)
  {
    v3[4] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 5, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v8 = a1;
  v9 = v5;
  v49 = type metadata accessor for BoostedTreeConfiguration(0);
  v50 = *(v49 - 8);
  v10 = *(v50 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v52 = &v42;
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[5] = a4;
  v9[6] = 0xD000000000000013;
  v51 = v9;
  v9[7] = "raining samples." + 0x8000000000000000;
  v13 = *(a1 + 16);
  if (v13)
  {
    v55[0] = _swiftEmptyArrayStorage;
    a4;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v55[0];
    v15 = specialized _NativeSet.startIndex.getter(a1);
    v17 = v16;
    v19 = v18;
    v47 = a1;
    do
    {
      if (v15 < 0 || v15 >= 1 << *(v8 + 32))
      {
        BUG();
      }

      v20 = *(v8 + 8 * (v15 >> 6) + 56);
      if (!_bittest64(&v20, v15))
      {
        BUG();
      }

      if (*(v8 + 36) != v17)
      {
        BUG();
      }

      v45 = v17;
      v44 = v13;
      v21 = *(v8 + 48);
      v22 = *(v21 + 16 * v15 + 8);
      v23 = *(v21 + 16 * v15);
      if (!v22)
      {
        v23 = 0;
      }

      v46 = v23;
      v24 = v22;
      if (!v22)
      {
        v24 = 0xE000000000000000;
      }

      v55[0] = v14;
      v25 = v14[2];
      v26 = v14[3];
      v43 = v14;
      v48 = v26;
      v27 = v26 >> 1;
      v53 = v25 + 1;
      v22;
      v28 = v27 <= v25;
      v14 = v43;
      if (v28)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48 >= 2, v53, 1);
        v14 = v55[0];
      }

      v14[2] = v53;
      v29 = 2 * v25;
      v14[v29 + 4] = v46;
      v14[v29 + 5] = v24;
      v8 = v47;
      v30 = specialized _NativeSet.index(after:)(v15, v45, v19 & 1, v47);
      v15 = v30;
      v17 = v31;
      v19 = v32;
      v13 = v44 - 1;
    }

    while (v44 != 1);
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(v30, v31, v32);
    v8;
  }

  else
  {
    a4;
    a1;
    v14 = _swiftEmptyArrayStorage;
  }

  v33 = v54;
  v55[0] = v14;
  v14;
  specialized MutableCollection<>.sort(by:)(v55, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  v14;
  v34 = v51;
  v51[3] = v55[0];
  *(v34 + 32) = 1;
  v35 = v52;
  v36 = v33;
  v37 = v49;
  v38 = v33;
  v39 = v50;
  (*(v50 + 16))(v52, v36, v49);
  v40 = *(type metadata accessor for AnyTreeClassifier(0) + 32);
  BaseTreeClassifier.init(configuration:)(v35);
  return (*(v39 + 8))(v38, v37);
}

{
  v39 = a5;
  v8 = v5;
  v40 = type metadata accessor for BoostedTreeConfiguration(0);
  v41 = *(v40 - 8);
  v9 = *(v41 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v43 = &v36;
  *v8 = a2;
  v12 = a1;
  v8[1] = a3;
  v42 = v8;
  v8[2] = a4;
  v13 = *(a1 + 16);
  v44 = a4;
  if (v13)
  {
    v47[0] = _swiftEmptyArrayStorage;
    a4;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v47[0];
    v15 = specialized _NativeSet.startIndex.getter(a1);
    v17 = v16;
    v19 = v18;
    v38 = a1;
    do
    {
      if (v15 < 0 || v15 >= 1 << *(v12 + 32))
      {
        BUG();
      }

      v20 = *(v12 + 8 * (v15 >> 6) + 56);
      if (!_bittest64(&v20, v15))
      {
        BUG();
      }

      if (*(v12 + 36) != v17)
      {
        BUG();
      }

      v21 = *(v12 + 48);
      v22 = *(v21 + 16 * v15 + 8) == 0;
      v37 = v13;
      if (v22)
      {
        v23 = *(v21 + 16 * v15);
      }

      else
      {
        v23 = 0;
      }

      v47[0] = v14;
      v24 = v14[2];
      v25 = v14[3];
      if (v25 >> 1 <= v24)
      {
        v45 = v17;
        v46 = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 >= 2, v24 + 1, 1);
        v23 = v46;
        LODWORD(v17) = v45;
        v14 = v47[0];
      }

      v14[2] = v24 + 1;
      v14[v24 + 4] = v23;
      v12 = v38;
      v26 = specialized _NativeSet.index(after:)(v15, v17, v19 & 1, v38);
      v15 = v26;
      v17 = v27;
      v19 = v28;
      v13 = v37 - 1;
    }

    while (v37 != 1);
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(v26, v27, v28);
    v12;
  }

  else
  {
    a4;
    a1;
    v14 = _swiftEmptyArrayStorage;
  }

  v47[0] = v14;
  v14;
  specialized MutableCollection<>.sort(by:)(v47, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  v14;
  v29 = v42;
  v42[3] = v47[0];
  *(v29 + 32) = 0;
  v29[5] = v44;
  v29[6] = 0xD000000000000013;
  v29[7] = "raining samples." + 0x8000000000000000;
  v30 = v43;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  (*(v41 + 16))(v43, v39, v40);
  v34 = *(type metadata accessor for AnyTreeClassifier(0) + 32);
  BaseTreeClassifier.init(configuration:)(v30);
  return (*(v33 + 8))(v31, v32);
}

uint64_t AnyTreeClassifier.makeTransformer()()
{
  v2 = v0;
  v15 = type metadata accessor for BaseTreeClassifierModel(0);
  v16 = *(v15 - 8);
  v3 = *(v16 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v19 = *v1;
  v6 = v1[1];
  v7 = v1[3];
  v20 = *(v1 + 32);
  v17 = v7;
  v8 = *(v7 + 16);
  v9 = v1 + *(type metadata accessor for AnyTreeClassifier(0) + 32);
  v6;
  v18 = &v14;
  BaseTreeClassifier.makeTransformer(classCount:featureCount:)(v8, 0);
  *v2 = v19;
  *(v2 + 8) = v6;
  v10 = type metadata accessor for AnyTreeClassifierModel(0);
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  (*(v16 + 32))(v2 + *(v10 + 24), v18, v15);
  v11 = *(v10 + 28);
  v12 = v17;
  *(v2 + v11) = v17;
  *(v2 + v11 + 8) = v20 & 1;
  return v12;
}

uint64_t AnyTreeClassifier.update(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a2;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?);
  v5[10] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyColumn(0);
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5[13] = swift_task_alloc(v11);
  v5[14] = swift_task_alloc(v11);
  return swift_task_switch(AnyTreeClassifier.update(_:with:eventHandler:), 0, 0);
}

uint64_t AnyTreeClassifier.update(_:with:eventHandler:)()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  if (v2)
  {
    v29 = v1[3];
    v31 = v1[4];
  }

  else
  {
    v13 = *(v0 + 24);
    v14 = *(*(v0 + 48) + 16);
    v15 = swift_task_alloc(32);
    *(v15 + 16) = v13;
    v14;
    ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(partial apply for closure #1 in FeatureVectorizer.fitted(to:), v15, v14);
    v14;
    v15;
    v1[2] = ML16ColumnDescriptorVsAE_pTg5;
    v29 = 0xD000000000000013;
    v1[3] = 0xD000000000000013;
    v31 = "raining samples." + 0x8000000000000000;
    v1[4] = "raining samples." + 0x8000000000000000;
    v1 = *(v0 + 16);
    v2 = ML16ColumnDescriptorVsAE_pTg5;
  }

  v3 = type metadata accessor for AnyTreeClassifierModel(0);
  v4 = *(v3 + 28);
  v33 = *(v1 + v4);
  if (*(v33 + 16))
  {
    v41 = *(v1 + v4 + 8);
  }

  else
  {
    v37 = v2;
    v26 = v3;
    v39 = *(v0 + 112);
    v42 = *(v0 + 88);
    v16 = *(v0 + 80);
    v17 = *(v0 + 24);
    DataFrame.subscript.getter(**(v0 + 48), *(*(v0 + 48) + 8));
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v42);
    v18 = static Labels.collected(from:_:)(v39, v16);
    v40 = *(v0 + 112);
    v43 = *(v0 + 96);
    v19 = *(v0 + 88);
    LOBYTE(v16) = v21;
    v28 = v18;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 80), &demangling cache variable for type metadata for AnyColumn?);
    (*(v43 + 8))(v40, v19);
    v33;
    *(v1 + v4) = v28;
    v41 = v16;
    *(v1 + v4 + 8) = v16 & 1;
    v33 = v28;
    v3 = v26;
    v2 = v37;
  }

  v5 = *(v0 + 72);
  specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(*(v0 + 24), 0, v2, v29, v31);
  v6 = *(v0 + 104);
  v23 = *(v0 + 96);
  v24 = *(v0 + 88);
  v35 = *(v0 + 72);
  v30 = *(v0 + 64);
  v32 = *(v0 + 56);
  v7 = *(v0 + 48);
  v38 = *(v0 + 40);
  v27 = *(v0 + 32);
  v22 = *(v0 + 16);
  v25 = v3;
  v8 = *(v0 + 24);
  DataFrame.subscript.getter(*v7, v7[1]);
  v34 = Labels.encodeAnnotations(_:)(v6, v33, v41 & 1);
  (*(v23 + 8))(v6, v24);
  v9 = v7 + *(type metadata accessor for AnyTreeClassifier(0) + 32);
  BaseTreeClassifier.update(_:features:annotations:eventHandler:)(v22 + *(v25 + 24), v35, v34, v27, v38);
  (*(v30 + 8))(v35, v32);
  v34;
  v10 = *(v0 + 104);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  *(v0 + 112);
  v10;
  v12;
  v11;
  return (*(v0 + 8))();
}

uint64_t AnyTreeClassifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:configuration:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v90 = a3;
  v9 = v6;
  v96 = a2;
  v87 = v7;
  v89 = a6;
  v95 = a1;
  v83 = type metadata accessor for BoostedTreeConfiguration(0);
  v84 = *(v83 - 8);
  v11 = *(v84 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v75 = &v74;
  v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v79 = *(v88 - 8);
  v14 = *(v79 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v78 = &v74;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v98 = &v74;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v80 = &v74;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v77 = &v74;
  v25 = type metadata accessor for AnyColumn(0);
  v100 = *(v25 - 8);
  v26 = *(v100 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v92 = &v74;
  v29 = alloca(v26);
  v30 = alloca(v26);
  v97 = &v74;
  v85 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v91 = *(v85 - 8);
  v31 = *(v91 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v86 = &v74;
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v101 = &v74;
  *v9 = v90;
  v81 = a4;
  v9[1] = a4;
  v9[2] = a5;
  v9[5] = a5;
  v9[6] = 0xD000000000000013;
  v90 = v9;
  v9[7] = "raining samples." + 0x8000000000000000;
  v82 = a5;
  a5;
  v37 = AnyColumn.wrappedElementType.getter();
  v76 = swift_dynamicCastMetatype(v37, &type metadata for String);
  v99 = v25;
  if (!v76)
  {
    v45 = v78;
    if (!swift_dynamicCastMetatype(v37, &type metadata for Int))
    {
      v60 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v60, 0, 0);
      *v61 = 0xD000000000000025;
      *(v61 + 8) = "start time column" + 0x8000000000000000;
      *(v61 + 16) = 0;
      *(v61 + 32) = 0;
      *(v61 + 48) = 1;
      swift_willThrow(&type metadata for MLCreateError, v60);
      (*(v84 + 8))(v89, v83);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v96, &demangling cache variable for type metadata for AnyColumn?);
      (*(v100 + 8))(v95, v99);
      swift_bridgeObjectRelease_n(v82, 2);
      return v81;
    }

    v46 = v45;
    v47 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    v93 = 0;
    v48 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v49 = v88;
    v101 = v48;
    OptionalColumnProtocol.filled(with:)(&v93, v88, v48);
    v97 = *(v79 + 8);
    (v97)(v46, v49, v47);
    v50 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_11TabularData12FilledColumnVyAD0E0VySiGGTt0g5();
    v51 = v80;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v96, v80, &demangling cache variable for type metadata for AnyColumn?);
    v52 = v99;
    if (__swift_getEnumTagSinglePayload(v51, 1, v99) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51, &demangling cache variable for type metadata for AnyColumn?);
    }

    else
    {
      (*(v100 + 32))(v92, v51, v52);
      v63 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      v93 = 0;
      v64 = v88;
      OptionalColumnProtocol.filled(with:)(&v93, v88, v101);
      (v97)(v46, v64, v63);
      v65 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_11TabularData12FilledColumnVyAD0E0VySiGGTt0g5();
      v50 = specialized Set.union<A>(_:)(v65, v50);
      (*(v100 + 8))(v92, v99);
    }

    v50;
    v66 = specialized _copyCollectionToContiguousArray<A>(_:)(v50);
    v50;
    v93 = v66;
    v67 = v87;
    specialized MutableCollection<>.sort(by:)(&v93);
    if (!v67)
    {
      v101 = 0;
      v59 = v50;
      goto LABEL_14;
    }

LABEL_15:

    BUG();
  }

  v38 = v86;
  v39 = AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
  v93 = 0;
  v94 = 0xE000000000000000;
  v40 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v41 = v85;
  v98 = v40;
  OptionalColumnProtocol.filled(with:)(&v93, v85, v40);
  v91 = *(v91 + 8);
  (v91)(v38, v41, v39);
  v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
  v43 = v77;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v96, v77, &demangling cache variable for type metadata for AnyColumn?);
  v44 = v99;
  if (__swift_getEnumTagSinglePayload(v43, 1, v99) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v43, &demangling cache variable for type metadata for AnyColumn?);
  }

  else
  {
    (*(v100 + 32))(v97, v43, v44);
    v53 = v86;
    v54 = AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v93 = 0;
    v94 = 0xE000000000000000;
    v55 = v85;
    OptionalColumnProtocol.filled(with:)(&v93, v85, v98);
    (v91)(v53, v55, v54);
    v56 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
    v42 = specialized Set.union<A>(_:)(v56, v42);
    (*(v100 + 8))(v97, v99);
  }

  v42;
  v57 = specialized _copyCollectionToContiguousArray<A>(_:)(v42);
  v42;
  v93 = v57;
  v58 = v87;
  specialized MutableCollection<>.sort(by:)(&v93);
  if (v58)
  {
    goto LABEL_15;
  }

  v101 = 0;
  v59 = v42;
LABEL_14:
  v59;
  v68 = v76 == 0;
  v69 = v90;
  v90[3] = v93;
  *(v69 + 32) = !v68;
  v70 = v75;
  v71 = v83;
  v72 = v84;
  (*(v84 + 16))(v75, v89, v83);
  v73 = *(type metadata accessor for AnyTreeClassifier(0) + 32);
  BaseTreeClassifier.init(configuration:)(v70);
  (*(v72 + 8))(v89, v71);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v96, &demangling cache variable for type metadata for AnyColumn?);
  return (*(v100 + 8))(v95, v99);
}

uint64_t AnyTreeClassifier.fitted(to:validateOn:eventHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = v5;
  v85 = a4;
  v86 = a3;
  v78 = a2;
  v79 = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v77 = v75;
  v97 = type metadata accessor for DataFrame(0);
  v95 = *(v97 - 8);
  v10 = *(v95 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v87 = v75;
  v81 = type metadata accessor for BaseTreeClassifierModel(0);
  v80 = *(v81 - 8);
  v13 = *(v80 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v88 = v75;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v90 = v75;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v89 = v75;
  v83 = type metadata accessor for AnyColumn(0);
  v94 = *(v83 - 8);
  v20 = *(v94 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v84 = v75;
  v98 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v23 = *(v98 - 8);
  v24 = *(v23 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v99 = v75;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v104 = v75;
  v29 = v6[5];
  v93 = v6[6];
  v82 = v6;
  v103 = v6[7];
  v105 = a1;
  v76 = a1;
  v29;
  v30 = v106;
  ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(closure #1 in FeatureVectorizer.fitted(to:)partial apply, v75, v29);
  result = v29;
  v106 = v30;
  if (!v30)
  {
    v100 = v23;
    v33 = v103;
    v103;
    v34 = v106;
    specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v105, 0, ML16ColumnDescriptorVsAE_pTg5, v93, v33);
    v106 = v34;
    if (v34)
    {
      v33;
      v35 = ML16ColumnDescriptorVsAE_pTg5;
      return v35;
    }

    v101 = ML16ColumnDescriptorVsAE_pTg5;
    v36 = v82;
    v96 = v82[3];
    v37 = *(v82 + 32);
    v38 = v82[1];
    v39 = v84;
    v92 = *v82;
    v91 = v38;
    DataFrame.subscript.getter(v92, v38);
    v40 = v96;
    v102 = v37;
    v105 = Labels.encodeAnnotations(_:)(v39, v96, v37);
    v94 = *(v94 + 8);
    (v94)(v39, v83);
    v41 = v77;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v78, v77, &demangling cache variable for type metadata for DataFrame?);
    v42 = v97;
    if (__swift_getEnumTagSinglePayload(v41, 1, v97) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, &demangling cache variable for type metadata for DataFrame?);
      v43 = *(v40 + 16);
      v44 = type metadata accessor for AnyTreeClassifier(0);
      v45 = v104;
      v46 = v36 + *(v44 + 32);
      v47 = v106;
      BaseTreeClassifier.fitted(features:annotations:classCount:eventHandler:)(v104, v105, v43, v86, v85);
      (*(v100 + 8))(v45, v98);
      v106 = v47;
      if (v47)
      {
        v103;
        v101;
        v35 = v105;
        return v35;
      }

      v105;
      v56 = v88;
    }

    else
    {
      v48 = v87;
      v49 = v41;
      v50 = v95;
      (*(v95 + 32))(v87, v49, v42);
      v51 = v48;
      v52 = v48;
      v53 = v101;
      v54 = v103;
      v55 = v106;
      specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v52, 0, v101, v93, v103);
      v106 = v55;
      if (v55)
      {
        v54;
        v53;
        v105;
        (*(v50 + 8))(v51, v97);
        return (*(v100 + 8))(v104, v98);
      }

      v57 = v84;
      DataFrame.subscript.getter(v92, v91);
      v58 = v96;
      v59 = Labels.encodeAnnotations(_:)(v57, v96, v102);
      (v94)(v57, v83);
      v60 = *(v58 + 16);
      v61 = v82 + *(type metadata accessor for AnyTreeClassifier(0) + 32);
      v62 = v105;
      v63 = v106;
      BaseTreeClassifier.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:classCount:eventHandler:)(v104, v105, v99, v59, v60, v86, v85);
      v106 = v63;
      v64 = v87;
      if (v63)
      {
        v103;
        v101;
        v59;
        v62;
        v65 = *(v100 + 8);
        v66 = v98;
        v65(v99, v98);
        (*(v95 + 8))(v64, v97);
        return (v65)(v104, v66);
      }

      v59;
      v62;
      v67 = *(v100 + 8);
      v68 = v98;
      v67(v99, v98);
      (*(v95 + 8))(v64, v97);
      v67(v104, v68);
      v56 = v90;
    }

    v69 = *(v80 + 32);
    v70 = v81;
    v69(v89, v56, v81);
    v71 = type metadata accessor for AnyTreeClassifierModel(0);
    v72 = v79;
    v69(v79 + *(v71 + 24), v89, v70);
    *v72 = v92;
    v73 = v91;
    v72[1] = v91;
    v72[2] = v101;
    v72[3] = v93;
    v72[4] = v103;
    v74 = *(v71 + 28);
    LOBYTE(v71) = v96;
    *(v72 + v74) = v96;
    *(v72 + v74 + 8) = v102;
    v73;
    return v71;
  }

  return result;
}

uint64_t AnyTreeClassifier.encode(_:to:)(uint64_t a1, uint64_t a2)
{
  v16 = v2;
  v3 = *(a1 + 32);
  v15 = a1;
  v13 = *(a1 + 16);
  v14 = v3;
  v4 = *(a2 + 24);
  v17 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer?);
  v6 = lazy protocol witness table accessor for type FeatureVectorizer<Float>.Transformer? and conformance <A> A?();
  result = (dispatch thunk of EstimatorEncoder.encode<A>(_:))(&v13, v5, v6, v4, v17, v7);
  if (!v2)
  {
    v9 = *(type metadata accessor for AnyTreeClassifierModel(0) + 24) + v15;
    v17 = *(a2 + 24);
    v16 = *(a2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
    v10 = type metadata accessor for BaseTreeClassifierModel(0);
    v11 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseTreeClassifierModel and conformance BaseTreeClassifierModel, &type metadata accessor for BaseTreeClassifierModel, &protocol conformance descriptor for BaseTreeClassifierModel);
    return dispatch thunk of EstimatorEncoder.encode<A>(_:)(v9, v10, v11, v17, v16, v12, v13, *(&v13 + 1), v14);
  }

  return result;
}

uint64_t AnyTreeClassifier.decode(from:)(uint64_t a1)
{
  v29 = v2;
  v22 = v3;
  v21 = v1;
  v26 = type metadata accessor for BaseTreeClassifierModel(0);
  v23 = *(v26 - 8);
  v4 = *(v23 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v27 = v20;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
  v8 = *(a1 + 24);
  v30 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v9 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FeatureVectorizer<Float>.Transformer and conformance FeatureVectorizer<A>.Transformer, &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
  v10 = v29;
  result = dispatch thunk of EstimatorDecoder.decode<A>(_:)(v7, v7, v9, v8, v30);
  if (!v10)
  {
    v29 = v20[1];
    v24 = v20[2];
    v30 = v20[3];
    v12 = *(a1 + 24);
    v28 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseTreeClassifierModel and conformance BaseTreeClassifierModel, &type metadata accessor for BaseTreeClassifierModel, &protocol conformance descriptor for BaseTreeClassifierModel);
    dispatch thunk of EstimatorDecoder.decode<A>(_:)(v26, v26, v13, v12, v28);
    v14 = v22;
    v28 = *v22;
    v25 = v22[1];
    v15 = type metadata accessor for AnyTreeClassifierModel(0);
    v16 = v21;
    (*(v23 + 32))(v21 + *(v15 + 24), v27, v26);
    v17 = v14[3];
    v18 = *(v14 + 32);
    *v16 = v28;
    LOBYTE(v14) = v25;
    v16[1] = v25;
    v16[2] = v29;
    v16[3] = v24;
    v16[4] = v30;
    v19 = *(v15 + 28);
    *(v16 + v19) = v17;
    *(v16 + v19 + 8) = v18;
    v17;
    return v14;
  }

  return result;
}

uint64_t protocol witness for UpdatableSupervisedTabularEstimator.update(_:with:eventHandler:) in conformance AnyTreeClassifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc(128);
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = protocol witness for SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:) in conformance MLImageClassifier.Classifier;
  return AnyTreeClassifier.update(_:with:eventHandler:)(a1, a2, a3, a4);
}

char specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a3 - a2;
  v9 = (a3 - a2) / 16;
  if (v7 / 16 >= v9)
  {
    v34 = (a3 - a2) / 16;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v9, a4);
    v10 = a4;
    v11 = &a4[16 * v34];
    if (v8 < 16 || v6 >= a2)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v21 = (v4 - 16);
      v22 = *(v11 - 2);
      v23 = *(v11 - 1);
      v24 = *(v5 - 2);
      v25 = *(v5 - 1);
      if (v22 == v24 && v23 == v25)
      {
        break;
      }

      v35 = v5;
      v26 = v4;
      v27 = v11;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)(v22, v23, v24, v25, 1);
      v11 = v27;
      v4 = v26;
      v5 = v35;
      v10 = a4;
      if ((v28 & 1) == 0)
      {
        break;
      }

      v29 = v35 - 16;
      v5 = v35 - 16;
      if (v4 != v35)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (v5 > v6)
      {
        v4 = v21;
        if (v11 > v10)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    v29 = v11 - 16;
    v20 = v4 == v11;
    v11 -= 16;
    if (v20)
    {
      goto LABEL_21;
    }

LABEL_20:
    *v21 = *v29;
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v7 / 16, a4);
  v10 = a4;
  v11 = &a4[16 * (v7 / 16)];
  if (v7 >= 16 && a2 < v4)
  {
    while (1)
    {
      v12 = *v5;
      v13 = *(v5 + 1);
      v14 = *(v10 + 1);
      if (*v5 == *v10 && v13 == v14)
      {
        break;
      }

      v15 = v10;
      v33 = v5;
      v16 = v4;
      v17 = v11;
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v12, v13, *v10, v14, 1);
      v11 = v17;
      v4 = v16;
      v5 = v33;
      v10 = v15;
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v33;
      v5 = v33 + 16;
      if (v6 != v33)
      {
        goto LABEL_9;
      }

LABEL_10:
      v6 += 16;
      if (v10 >= v11 || v5 >= v4)
      {
        goto LABEL_12;
      }
    }

    v19 = v10;
    v20 = v6 == v10;
    v10 += 16;
    if (v20)
    {
      goto LABEL_10;
    }

LABEL_9:
    *v6 = *v19;
    goto LABEL_10;
  }

LABEL_12:
  v5 = v6;
LABEL_23:
  v30 = v11 - v10;
  if (v5 != v10 || v5 >= &v10[16 * (v30 / 16)])
  {
    memmove(v5, v10, 16 * (v30 / 16));
  }

  return 1;
}

uint64_t specialized _NativeSet.index(after:)(uint64_t a1, int a2, char a3, uint64_t a4)
{
  return specialized _NativeSet.index(after:)(a1, a2, a3, a4);
}

{
  if (a3)
  {
    BUG();
  }

  result = 1 << *(a4 + 32);
  if (a1 < 0 || result <= a1)
  {
    BUG();
  }

  v6 = a1 >> 6;
  v7 = *(a4 + 8 * (a1 >> 6) + 56);
  v8 = a1 & 0x3F;
  if (!_bittest64(&v7, v8))
  {
    BUG();
  }

  if (*(a4 + 36) != a2)
  {
    BUG();
  }

  v9 = (-2 << v8) & v7;
  if (v9)
  {
    _BitScanForward64(&v10, v9);
    v11 = a1 & 0x7FFFFFFFFFFFFFC0;
    return v10 | v11;
  }

  v12 = v6 + 1;
  v13 = (result + 63) >> 6;
  if (v6 + 1 < v13)
  {
    v14 = *(a4 + 8 * v6 + 64);
    if (v14)
    {
LABEL_12:
      _BitScanForward64(&v10, v14);
      v11 = v12 << 6;
      return v10 | v11;
    }

    v12 = v6 + 2;
    if (v6 + 2 < v13)
    {
      v14 = *(a4 + 8 * v6 + 72);
      if (v14)
      {
        goto LABEL_12;
      }

      v12 = v6 + 3;
      if (v6 + 3 < v13)
      {
        v14 = *(a4 + 8 * v6 + 80);
        if (v14)
        {
          goto LABEL_12;
        }

        while (v6 + 4 < v13)
        {
          v14 = *(a4 + 8 * v6++ + 88);
          if (v14)
          {
            v12 = v6 + 3;
            goto LABEL_12;
          }
        }
      }
    }
  }

  return result;
}

{
  return specialized _NativeSet.index(after:)(a1, a2, a3, a4);
}

unint64_t specialized _NativeSet.startIndex.getter(uint64_t a1)
{
  return specialized _NativeSet.startIndex.getter(a1);
}

{
  v1 = *(a1 + 32);
  result = 1 << v1;
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = 0;
LABEL_3:
    _BitScanForward64(&v5, v3);
    result = v4 | v5;
    goto LABEL_4;
  }

  v7 = v1 & 0x3F;
  if (v7 < 7u)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = 64;
    goto LABEL_3;
  }

  if (v7 == 7)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 72);
  v4 = 128;
  if (v3)
  {
    goto LABEL_3;
  }

  v3 = *(a1 + 80);
  v4 = 192;
  if (v3)
  {
    goto LABEL_3;
  }

  v8 = 11;
  while (v8 - 7 < (result + 63) >> 6)
  {
    v3 = *(a1 + 8 * v8);
    v4 += 64;
    ++v8;
    if (v3)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  v6 = *(a1 + 36);
  return result;
}

{
  return specialized _NativeSet.startIndex.getter(a1);
}

_BYTE *assignWithCopy for MLRandomForestRegressor.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLRandomForestRegressor.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRandomForestRegressor.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLRandomForestRegressor.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRandomForestRegressor.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLRandomForestRegressor.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLRandomForestRegressor.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLRandomForestRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_343AC8;
  v5[1] = &unk_343AE0;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLRandomForestRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = &v44;
  v47 = type metadata accessor for DataFrame.Slice(0);
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v44;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v44;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v44;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v51 = &v44;
  v20 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLRandomForestRegressor.ModelParameters.ValidationData(v3, &v44);
  switch(swift_getEnumCaseMultiPayload(&v44, v20))
  {
    case 0u:
      v57 = v4;
      v24 = v51;
      v25 = v50;
      DataFrame.randomSplit(strategy:)(v51, v50, &v44);
      v26 = v46;
      v27 = v52;
      v28 = v25;
      v29 = v47;
      v56 = *(v46 + 16);
      v56(v52, v28, v47);
      DataFrame.init(_:)(v27);
      v30 = v48;
      outlined init with copy of DataFrame.Slice?(v24, v48);
      v31 = v29;
      if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
      {
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
        (*(v26 + 8))(v50, v29);
      }

      else
      {
        v41 = v52;
        (*(v26 + 32))(v52, v30, v31);
        v42 = v49;
        v56(v49, v41, v31);
        DataFrame.init(_:)(v42);
        v43 = *(v26 + 8);
        v43(v41, v31);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
        v43(v50, v31);
      }

      return outlined destroy of DataFrame.Slice?(v51);
    case 1u:
      v36 = v44;
      v37 = v45;
      (*(v57 + 16))(v54, v56, v4);
      v44 = v36;
      v45 = v37;
      v38 = v55;
      DataFrame.init(_:)(&v44);
      v34 = v38;
      goto LABEL_10;
    case 2u:
      v32 = *(v57 + 32);
      v32(v53, &v44, v4);
      if (DataFrameProtocol.isEmpty.getter(v4, &protocol witness table for DataFrame))
      {
        v33 = v57;
        (*(v57 + 8))(v53, v4);
        (*(v33 + 16))(v54, v56, v4);
LABEL_7:
        v34 = v55;
        v35 = 1;
      }

      else
      {
        (*(v57 + 16))(v54, v56, v4);
        v39 = v55;
        v32(v55, v53, v4);
        v34 = v39;
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v4);
    case 3u:
      (*(v57 + 16))(v54, v56, v4);
      goto LABEL_7;
  }
}

uint64_t MLRandomForestRegressor.ModelParameters.ValidationData.table.getter(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v25;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v28 = &v25;
  v10 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLRandomForestRegressor.ModelParameters.ValidationData(v2, &v25);
  result = swift_getEnumCaseMultiPayload(&v25, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      result = v25;
      v15 = v26;
      goto LABEL_7;
    case 2:
      v16 = v28;
      v17 = v27;
      (*(v27 + 32))(v28, &v25, v4);
      v18 = v29;
      *a1.i64 = (*(v17 + 16))(v29, v16, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v18, 1, a1);
      (*(v17 + 8))(v16, v4);
      result = v30;
      v15 = v31;
LABEL_7:
      *v3 = result;
      *(v3 + 8) = v15;
      break;
    case 3:
      v19 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v21 = empty;
      v22 = type metadata accessor for CMLTable();
      v23 = swift_allocObject(v22, 24, 7);
      *(v23 + 16) = v21;
      v24 = type metadata accessor for _DataTable();
      swift_allocObject(v24, 40, 7);
      result = _DataTable.init(impl:)(v23);
      *v19 = result;
      *(v19 + 8) = 0;
      break;
  }

  return result;
}

uint64_t outlined init with copy of MLRandomForestRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.DataBatcher(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
    v13;
  }

  else
  {
    v6 = type metadata accessor for DataFrame(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = a3[5];
    *(a1 + v7) = *(a2 + v7);
    v8 = *(a2 + v7 + 8);
    *(v3 + v7 + 8) = v8;
    v9 = a3[6];
    *(v3 + v9) = *(a2 + v9);
    v10 = *(a2 + v9 + 8);
    *(v3 + v9 + 8) = v10;
    v11 = a3[7];
    v12 = *(a2 + v11);
    *(v3 + v11) = v12;
    *(v3 + a3[8]) = *(a2 + a3[8]);
    *(v3 + a3[9]) = *(a2 + a3[9]);
    *(v3 + a3[10]) = *(a2 + a3[10]);
    *(v3 + a3[11]) = *(a2 + a3[11]);
    *(v3 + a3[12]) = *(a2 + a3[12]);
    v8;
    v10;
    v12;
  }

  return v3;
}

uint64_t destroy for MLActivityClassifier.DataBatcher(uint64_t a1, int *a2)
{
  v3 = type metadata accessor for DataFrame(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  *(a1 + a2[5] + 8), v3;
  *(a1 + a2[6] + 8), v3;
  return *(a1 + a2[7]), v3;
}

uint64_t initializeWithCopy for MLActivityClassifier.DataBatcher(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  v6 = a3[5];
  *(a1 + v6) = *(a2 + v6);
  v7 = *(a2 + v6 + 8);
  *(a1 + v6 + 8) = v7;
  v8 = a3[6];
  *(a1 + v8) = *(a2 + v8);
  v9 = *(a2 + v8 + 8);
  *(a1 + v8 + 8) = v9;
  v10 = a3[7];
  v11 = *(a2 + v10);
  *(a1 + v10) = v11;
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  v7;
  v9;
  v11;
  return a1;
}

uint64_t assignWithCopy for MLActivityClassifier.DataBatcher(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  (*(*(v5 - 8) + 24))(a1, a2, v5);
  v6 = a3[5];
  *(a1 + v6) = *(a2 + v6);
  v7 = *(a2 + v6 + 8);
  v8 = *(a1 + v6 + 8);
  *(a1 + v6 + 8) = v7;
  v7;
  v8, a2;
  v9 = a3[6];
  *(a1 + v9) = *(a2 + v9);
  v10 = *(a2 + v9 + 8);
  v11 = *(a1 + v9 + 8);
  *(a1 + v9 + 8) = v10;
  v10;
  v11, a2;
  v12 = a3[7];
  v13 = *(a2 + v12);
  v14 = *(a1 + v12);
  *(a1 + v12) = v13;
  v13;
  v14, a2;
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  return a1;
}

uint64_t initializeWithTake for MLActivityClassifier.DataBatcher(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = type metadata accessor for DataFrame(0);
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  return a1;
}

uint64_t assignWithTake for MLActivityClassifier.DataBatcher(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  (*(*(v5 - 8) + 40))(a1, a2, v5);
  v6 = a3[5];
  *(a1 + v6) = *(a2 + v6);
  v7 = *(a1 + v6 + 8);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  v7, a2;
  v8 = a3[6];
  *(a1 + v8) = *(a2 + v8);
  v9 = *(a1 + v8 + 8);
  *(a1 + v8 + 8) = *(a2 + v8 + 8);
  v9, a2;
  v10 = a3[7];
  v11 = *(a1 + v10);
  *(a1 + v10) = *(a2 + v10);
  v11, a2;
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  return a1;
}

uint64_t sub_173D9A(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for DataFrame(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v5);
  }

  if ((*(a1 + *(a3 + 20) + 8) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20) + 8) >> 1) + 1;
  }

  return v4;
}

uint64_t sub_173E24(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for DataFrame(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result + 8) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata accessor for MLActivityClassifier.DataBatcher(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActivityClassifier.DataBatcher;
  if (!type metadata singleton initialization cache for MLActivityClassifier.DataBatcher)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActivityClassifier.DataBatcher);
  }

  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.DataBatcher(uint64_t a1)
{
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &unk_343B18;
    v3[2] = &unk_343B18;
    v3[3] = &value witness table for Builtin.BridgeObject + 64;
    v3[4] = &unk_343B30;
    v3[5] = &value witness table for Builtin.Int64 + 64;
    v3[6] = &value witness table for Builtin.Int64 + 64;
    v3[7] = &unk_343B48;
    v3[8] = &value witness table for Builtin.Int64 + 64;
    swift_initStructMetadata(a1, 256, 9, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySSG_AF0E5FrameV5SliceVSgs5NeverOTg5(void (*a1)(__int128 *), uint64_t a2)
{
  v45 = v2;
  v38 = a2;
  v39 = a1;
  v40 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8);
  v4 = *(v40 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v46 = &v34;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v37 = &v34;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  *&v44 = &v34;
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  v13 = *(*(v42 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v51 = &v34;
  v47 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v16 = dispatch thunk of Sequence.underestimatedCount.getter(v9, v47);
  v48 = _swiftEmptyArrayStorage;
  v17 = 0;
  if (v16 > 0)
  {
    v17 = v16;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
  v49 = v48;
  (*(v50 + 16))(v44, v3, v9);
  dispatch thunk of Sequence.makeIterator()(v9, v47);
  v36 = v16;
  if (v16 < 0)
  {
    BUG();
  }

  v41 = v9;
  if (v16)
  {
    v50 = v51 + *(v42 + 36);
    v18 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    do
    {
      dispatch thunk of Collection.endIndex.getter(v9, v18);
      if (*v50 == v35[0])
      {
        BUG();
      }

      v47 = dispatch thunk of Collection.subscript.read(v35, v50, v9, v18);
      v44 = *v19;
      *(v19 + 1);
      v47(v35, 0);
      dispatch thunk of Collection.formIndex(after:)(v50, v9, v18);
      v43 = v44;
      v20 = v45;
      v39(&v43);
      v45 = v20;
      if (v20)
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51, &demangling cache variable for type metadata for IndexingIterator<Column<String>>);

        *(&v43 + 1);
LABEL_22:
        BUG();
      }

      *(&v43 + 1);
      v21 = v49;
      v48 = v49;
      v22 = v49[2];
      if (v49[3] >> 1 <= v22)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49[3] >= 2uLL, v22 + 1, 1);
        v21 = v48;
      }

      v21[2] = v22 + 1;
      v23 = *(v40 + 80);
      v49 = v21;
      outlined init with take of DataFrame.Slice?(v46, v21 + ((v23 + 32) & ~v23) + *(v40 + 72) * v22);
      v24 = v36-- == 1;
      v9 = v41;
    }

    while (!v24);
  }

  v46 = (v51 + *(v42 + 36));
  v25 = v9;
  v50 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  while (1)
  {
    v26 = v50;
    dispatch thunk of Collection.endIndex.getter(v25, v50);
    if (*v46 == v35[0])
    {
      break;
    }

    v47 = dispatch thunk of Collection.subscript.read(v35, v46, v25, v26);
    v44 = *v27;
    v28 = *(v27 + 1);
    v28;
    v47(v35, 0);
    dispatch thunk of Collection.formIndex(after:)(v46, v25, v50);
    v43 = v44;
    v29 = v45;
    v39(&v43);
    v45 = v29;
    if (v29)
    {
      v28;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51, &demangling cache variable for type metadata for IndexingIterator<Column<String>>);

      goto LABEL_22;
    }

    v28;
    v30 = v49;
    v48 = v49;
    v31 = v49[2];
    if (v49[3] >> 1 <= v31)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49[3] >= 2uLL, v31 + 1, 1);
      v30 = v48;
    }

    v30[2] = v31 + 1;
    v32 = *(v40 + 80);
    v49 = v30;
    outlined init with take of DataFrame.Slice?(v37, v30 + ((v32 + 32) & ~v32) + *(v40 + 72) * v31);
    v25 = v41;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51, &demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  return v49;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Algorithms15UniquedSequenceVy11TabularData6ColumnVySiGSiSgG_AI0H5FrameV5SliceVSgs5NeverOTg5(void (*a1)(uint64_t *, Swift::UInt, uint64_t, void *), uint64_t a2)
{
  v62 = v2;
  v50 = a2;
  v51 = a1;
  v52 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8);
  v4 = *(v52 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v59 = v47;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v7 = *(v61 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<Int>>);
  v11 = *(*(v64 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v67 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UniquedSequence<Column<Int>, Int?>.Iterator);
  v14 = *(*(v48 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v66 = v47;
  v60 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v63 = v60;
  v17 = v61;
  (*(v7 + 16))(v47, v3, v61);
  v65 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v18 = v67;
  dispatch thunk of Sequence.makeIterator()(v17, v65);
  v19 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UniquedSequence<Column<Int>, Int?>) + 52);
  v20 = *(v3 + v19);
  v21 = *(v3 + v19 + 8);

  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  v23 = lazy protocol witness table accessor for type Int? and conformance <A> A?();
  v24 = v20;
  v25 = v66;
  UniquedSequence.Iterator.init(base:projection:)(v18, v24, v21, v61, v22, v65, v23);
  v64 = v25 + *(v64 + 36);
  v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v67 = v26;
LABEL_2:
  v27 = v61;
  while (1)
  {
    v28 = v26;
    dispatch thunk of Collection.endIndex.getter(v27, v26);
    if (*v64 == v47[0])
    {
      break;
    }

    v29 = v64;
    v30 = v66;
    v31 = dispatch thunk of Collection.subscript.read(v47, v64, v27, v28);
    v33 = *v32;
    LOBYTE(v65) = *(v32 + 8);
    v31(v47, 0);
    dispatch thunk of Collection.formIndex(after:)(v29, v27, v67);
    v49 = v33;
    v55 = v33;
    v56 = v65;
    v34 = v30;
    v35 = v48;
    v36 = *(v48 + 52);
    v37 = *(v30 + v36 + 8);
    (*(v34 + v36))(&v55);
    v38 = v34 + *(v35 + 56);
    v39 = v57;
    v40 = specialized Set._Variant.insert(_:)(v47, v57, v58);
    v26 = v67;
    if (v40)
    {
      v53 = v49;
      v54 = v65;
      v42 = v62;
      v51(&v53, v39, v41, v67);
      v43 = v63;
      if (v42)
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v66, &demangling cache variable for type metadata for UniquedSequence<Column<Int>, Int?>.Iterator);

        BUG();
      }

      v62 = 0;
      v60 = v63;
      v44 = v63[2];
      if (v63[3] >> 1 <= v44)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v63[3] >= 2uLL, v44 + 1, 1);
        v43 = v60;
      }

      v43[2] = v44 + 1;
      v45 = *(v52 + 80);
      v63 = v43;
      outlined init with take of DataFrame.Slice?(v59, v43 + ((v45 + 32) & ~v45) + *(v52 + 72) * v44);
      v26 = v67;
      goto LABEL_2;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v66, &demangling cache variable for type metadata for UniquedSequence<Column<Int>, Int?>.Iterator);
  return v63;
}

char *specialized Sequence.sorted(by:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  (*(v3 + 16))(&v10, a1, v2);
  v7 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v10 = dispatch thunk of Sequence._copyToContiguousArray()(v2, v7);
  specialized MutableCollection<>.sort(by:)(&v10);
  v8 = v10;
  if (v1)
  {
  }

  return v8;
}

uint64_t MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, double a7, uint64_t a8, char a9, char a10)
{
  v113 = a4;
  v13 = v10;
  v116 = a2;
  v114 = a6;
  v108 = a5;
  v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v95 = *(v96 - 8);
  v14 = *(v95 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v99 = &v93;
  v98 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v97 = *(v98 - 8);
  v17 = *(v97 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v100 = &v93;
  v105 = type metadata accessor for DataFrame(0);
  v102 = *(v105 - 8);
  v20 = *(v102 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v109 = &v93;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v94 = &v93;
  v107 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v25 = v107[12];
  v104 = v13;
  *(v13 + v25) = 0;
  v101 = a1;
  v26 = DataFrame.columns.getter();
  MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v26);
  v103 = v11;
  v26;
  v106 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
  v28 = specialized Set._Variant.remove(_:)(v116, a3);
  v30 = v29;
  a3;
  if (!v30)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000018, "f type String or Int." + 0x8000000000000000, "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 52, 0);
    goto LABEL_33;
  }

  v31 = v107[5];
  v115 = v28;
  v32 = v104;
  *(v104 + v31) = v28;
  *(v32 + v31 + 8) = v30;
  v116 = v30;
  v30;
  v33 = v108;
  v34 = specialized Set._Variant.remove(_:)(v113, v108);
  v36 = v35;
  v33;
  v37 = v32;
  v38 = v107;
  if (!v36)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000016, "Session column not found" + 0x8000000000000000, "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 56, 0);
LABEL_33:
    BUG();
  }

  v39 = v107[6];
  v108 = v34;
  *(v37 + v39) = v34;
  *(v37 + v39 + 8) = v36;
  v40 = v114;
  v113 = v36;
  if (v114)
  {
    *(v37 + v38[7]) = v114;
    v36;
  }

  else
  {
    v41 = v106;
    swift_bridgeObjectRetain_n(v106, 2);
    v36;
    v42 = specialized _copyCollectionToContiguousArray<A>(_:)(v41);
    v41;
    v111 = v42;
    v43 = v103;
    specialized MutableCollection<>.sort(by:)(&v111);
    v103 = v43;
    if (v43)
    {

      BUG();
    }

    v41;
    v40 = v111;
    v38 = v107;
    *(v37 + v107[7]) = v111;
  }

  *(v37 + v38[9]) = a8;
  v44 = *(v40 + 2);
  v45 = v40;
  v46 = v44 + 2;
  if (__OFADD__(2, v44))
  {
    BUG();
  }

  v114 = v44;
  v116;
  v113;
  v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v45);
  if (!isUniquelyReferenced_nonNull_native || (v48 = v45, *(v45 + 3) >> 1 < v46))
  {
    if (v114 > v46)
    {
      v46 = v114;
    }

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v46, 1, v45);
  }

  v114 = v45;
  v49 = *(v48 + 2);
  v110 = *(v48 + 3);
  v50 = v110 >> 1;
  v51 = v49 + 1;
  v116;
  if (v50 <= v49)
  {
    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v110 >= 2, v49 + 1, 1, v48);
  }

  *(v48 + 2) = v51;
  v52 = 16 * v49;
  *&v48[v52 + 32] = v115;
  *&v48[v52 + 40] = v116;
  v110 = *(v48 + 3);
  v53 = v110 >> 1;
  v54 = v49 + 2;
  v113;
  if (v53 < v54)
  {
    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v110 >= 2, v54, 1, v48);
  }

  *(v48 + 2) = v54;
  v55 = 16 * v51;
  *&v48[v55 + 32] = v108;
  v56 = v113;
  *&v48[v55 + 40] = v113;
  v116;
  v56;
  v111 = v48;
  v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v58 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  v59 = v109;
  v110 = v57;
  v60 = v57;
  v61 = v101;
  DataFrame.selecting<A>(columnNames:)(&v111, v60, v58);
  v48;
  v62 = v94;
  v63 = v59;
  v64 = v114;
  v65 = v56;
  v66 = v116;
  v67 = v103;
  v68 = static MLActivityClassifier.DataBatcher.preprocess(_:_:_:_:_:_:)(v94, v63, v114, v108, v65, v115, v116, a8, a9);
  v115 = v67;
  if (v67)
  {
    v66;
    v69 = v113;
    v113;
    v70 = *(v102 + 8);
    v71 = v61;
    v72 = v64;
    v73 = v105;
    v70(v71, v105);
    v70(v109, v73);
    v74 = v106;
    v72;
    v69;
    v116;
    return v74;
  }

  else
  {
    v76 = v102;
    v114 = v68;
    v77 = v109;
    v78 = v105;
    v109 = *(v102 + 8);
    (v109)(v77, v105);
    v66;
    v79 = v104;
    (*(v76 + 32))(v104, v62, v78);
    *(v79 + v107[8]) = v114;
    v80 = v99;
    v81 = v113;
    DataFrame.subscript.getter(v108, v113, v110);
    v81;
    v82 = v100;
    v83 = v96;
    v84 = v115;
    Column.mapNonNil<A>(_:)(closure #1 in MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:), 0, v96, &type metadata for Int, a7);
    v115 = v84;
    (*(v95 + 8))(v80, v83);
    v85 = v98;
    Column<A>.max()(v98, &protocol witness table for Int);
    v86 = v85;
    v87 = 0;
    (*(v97 + 8))(v82, v86);
    if (!v112)
    {
      v87 = v111;
    }

    v88 = __OFADD__(a8, v87);
    v89 = &v87[a8];
    if (v88)
    {
      BUG();
    }

    v88 = __OFSUB__(v89, 1);
    v90 = v89 - 1;
    if (v88)
    {
      BUG();
    }

    if (!a8)
    {
      BUG();
    }

    if (!(v90 ^ 0x8000000000000000 | ~a8))
    {
      BUG();
    }

    (v109)(v101, v105);
    v106;
    v91 = v107;
    v92 = v104;
    *(v104 + v107[10]) = v90 / a8;
    result = v91[11];
    *(v92 + result) = a10 & 1;
  }

  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t a1)
{
  v17 = closure #2 in static MLActivityClassifier.DataBatcher.preprocess(_:_:_:_:_:_:);
  v18 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v3 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  result = dispatch thunk of MutableCollection.withContiguousMutableStorageIfAvailable<A>(_:)(partial apply for specialized closure #1 in MutableCollection<>.sort(by:), v16, &type metadata for () + 8, v2, v3);
  if (!v1 && v25)
  {
    v5 = specialized Sequence.sorted(by:)(a1);
    v28 = 0;
    v29 = v5;
    v6 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    dispatch thunk of Collection.indices.getter(v2, v6);
    v7 = v25;
    v27 = v26;
    if (v25 != v26)
    {
      v8 = v29;
      if (v25 > v26)
      {
        BUG();
      }

      if (v25 >= v26)
      {
        BUG();
      }

      v9 = *(v29 + 2);
      if (!v9)
      {
        return v8;
      }

      v22 = v3;
      v21 = v2;
      v10 = 0;
      v11 = 0;
      if (v9 > 0)
      {
        v11 = v9;
      }

      v20 = v11;
      v12 = v29 + 40;
      v23 = v27 + ~v25;
      v24 = v9;
      while (1)
      {
        if (v20 == v10)
        {
          BUG();
        }

        v19 = v7 + v10;
        if (v10 >= *(v8 + 2))
        {
          BUG();
        }

        v13 = v7;
        v14 = *v12;
        v25 = *(v12 - 1);
        LOBYTE(v26) = v14;
        dispatch thunk of MutableCollection.subscript.setter(&v25, &v19, v21, v22);
        if (v23 == v10)
        {
          break;
        }

        v15 = v13 + v10 + 1;
        v8 = v29;
        if (v15 < v13 || v15 >= v27)
        {
          BUG();
        }

        v7 = v13;
        ++v10;
        v12 += 16;
        if (v24 == v10)
        {
          return v8;
        }
      }
    }

    v8 = v29;
    return v8;
  }

  return result;
}

uint64_t static MLActivityClassifier.DataBatcher.preprocess(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v107 = v9;
  v104 = a6;
  v93 = a5;
  v99 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v88 = *(v87 - 8);
  v13 = *(v88 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v89 = &v79;
  v86 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UniquedSequence<Column<Int>, Int?>);
  v16 = *(*(v86 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v85 = &v79;
  v95 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of DataFrameProtocol.grouped(by:)>>.0);
  v94 = *(v95 - 8);
  v19 = *(v94 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v90 = &v79;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v92 = &v79;
  v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v100 = *(v101 - 8);
  v24 = *(v100 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v103 = &v79;
  v97 = type metadata accessor for AnyColumn(0);
  v98 = *(v97 - 8);
  v27 = *(v98 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v91 = &v79;
  v108._countAndFlagsBits = DataFrame.columns.getter();
  v30 = a3[2];
  if (!v30)
  {
    BUG();
  }

  v96 = a4;
  v31 = a3[4];
  v106 = a3;
  v32 = a3[5];
  v32;
  v33._countAndFlagsBits = v31;
  v33._object = v32;
  v102 = a2;
  v34 = DataFrame.indexOfColumn(_:)(v33);
  value = v34.value;
  LOBYTE(v31) = v34.is_nil;
  v32;
  if (v31)
  {
    BUG();
  }

  countAndFlagsBits = v108._countAndFlagsBits;
  if (value < 0)
  {
    BUG();
  }

  if (value >= *(v108._countAndFlagsBits + 16))
  {
    BUG();
  }

  v84 = v30;
  v37 = v98;
  v81 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v38 = *(v98 + 16);
  v83 = *(v98 + 72);
  v39 = v91;
  v82 = v38;
  v38(v91, v81 + v108._countAndFlagsBits + v83 * value, v97);
  countAndFlagsBits;
  v40 = AnyColumn.wrappedElementType.getter();
  v98 = *(v37 + 8);
  (v98)(v39, v97);
  v41 = v106;
  v106;
  v42 = (v41 + 40);
  v105 = v40;
  do
  {
    v108._countAndFlagsBits = *(v42 - 1);
    v43 = *v42;
    *v42;
    v44 = DataFrame.columns.getter();
    v45._countAndFlagsBits = v108._countAndFlagsBits;
    v45._object = v43;
    v46 = DataFrame.indexOfColumn(_:)(v45);
    if (v46.is_nil)
    {
      BUG();
    }

    if (v46.value < 0)
    {
      BUG();
    }

    if (v46.value >= *(v44 + 16))
    {
      BUG();
    }

    v47 = v91;
    v108._countAndFlagsBits = v43;
    v48 = v97;
    v82(v91, v81 + v44 + v83 * v46.value, v97);
    v44;
    v49 = AnyColumn.wrappedElementType.getter();
    (v98)(v47, v48);
    v108._countAndFlagsBits;
    if (v49 != v105)
    {
      v106;
      v66 = 0xD000000000000037;
      v67 = "Label column not found";
LABEL_20:
      v68 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v68, 0, 0);
      *v69 = v66;
      *(v69 + 8) = v67 | 0x8000000000000000;
      *(v69 + 16) = 0;
      *(v69 + 32) = 0;
      *(v69 + 48) = 0;
      return swift_willThrow(&type metadata for MLCreateError, v68);
    }

    v42 += 2;
    --v84;
  }

  while (v84);
  v50 = v105;
  v106;
  v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v52 = v102;
  if (v50 == v51 || (v53 = v51, v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]), v50 == v54))
  {
    v70 = type metadata accessor for DataFrame(0);
    (*(*(v70 - 8) + 16))(v99, v52, v70);
    return v105;
  }

  if (v50 != &type metadata for Float && v50 != &type metadata for Double)
  {
    v66 = 0xD000000000000040;
    v67 = "pe in the training data";
    goto LABEL_20;
  }

  v108._countAndFlagsBits = v54;
  v55 = v103;
  DataFrame.subscript.getter(v104, a7, &type metadata for Int);
  if (a9)
  {
    v56 = v107;
    specialized MutableCollection<>.sort(by:)(v55);
    v107 = v56;
  }

  v57 = v105;
  if (swift_dynamicCastMetatype(v105, &type metadata for Double))
  {
    v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    v59 = swift_allocObject(v58, 48, 7);
    v59[2] = 1;
    v59[3] = 2;
    v59[4] = v104;
    v59[5] = a7;
    v60 = type metadata accessor for DataFrame(0);
    a7;
    DataFrameProtocol.grouped(by:)(v59, v60, &protocol witness table for DataFrame);
    v59;
    v61 = v85;
    (*(v100 + 16))(v85, v103, v101);
    v62 = *(v86 + 52);
    *(v61 + v62) = specialized closure #1 in Sequence<>.uniqued();
    *(v61 + v62 + 8) = 0;
    v63 = v92;
    v64 = v107;
    _s8CreateML20MLActivityClassifierV11DataBatcherV9aggregate6groups8groupIds12featureNames9labelName10windowSize_07TabularE00E5FrameVq0__q1_SaySSGSSSiq_mtK7ElementQy1_RszAL19RowGroupingProtocolR0_STR1_r2_lFZSiSg_SdAL0erV0PALE7grouped2byQrSSd_tFQOyAN_Qo_10Algorithms15UniquedSequenceVyAL6ColumnVySiGASGTt5t6g5(v92, v61, v106, v96, v93);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for UniquedSequence<Column<Int>, Int?>);
    (*(v94 + 8))(v63, v95);
    result = (*(v100 + 8))(v103, v101);
    if (v64)
    {
      return result;
    }

    return v53;
  }

  else
  {
    if (!swift_dynamicCastMetatype(v57, &type metadata for Float))
    {
      v79 = 0;
      v80 = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      v80;
      v79 = 0xD000000000000015;
      v80 = "ble], or [Float]" + 0x8000000000000000;
      v77._countAndFlagsBits = _typeName(_:qualified:)(v57, 0);
      object = v77._object;
      String.append(_:)(v77);
      object;
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v79, v80, "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 204, 0);
      BUG();
    }

    v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    v72 = swift_allocObject(v71, 48, 7);
    v72[2] = 1;
    v72[3] = 2;
    v72[4] = v104;
    v72[5] = a7;
    v73 = type metadata accessor for DataFrame(0);
    a7;
    v74 = v90;
    DataFrameProtocol.grouped(by:)(v72, v73, &protocol witness table for DataFrame);
    v72;
    v75 = v89;
    DataFrame.subscript.getter(v104, a7, &type metadata for String);
    v76 = v107;
    _s8CreateML20MLActivityClassifierV11DataBatcherV9aggregate6groups8groupIds12featureNames9labelName10windowSize_07TabularE00E5FrameVq0__q1_SaySSGSSSiq_mtK7ElementQy1_RszAL19RowGroupingProtocolR0_STR1_r2_lFZSSSg_SfAL0erV0PALE7grouped2byQrSSd_tFQOyAN_Qo_AL6ColumnVySSGTt5t6g5(v74, v75, v106, v96, v93);
    (*(v88 + 8))(v75, v87);
    (*(v94 + 8))(v74, v95);
    result = (*(v100 + 8))(v103, v101);
    if (!v76)
    {
      return v108._countAndFlagsBits;
    }
  }

  return result;
}

uint64_t closure #1 in MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(uint64_t a1)
{
  *result = *(*a1 + 16);
  *(result + 8) = 0;
  return result;
}

uint64_t _s8CreateML20MLActivityClassifierV11DataBatcherV9aggregate6groups8groupIds12featureNames9labelName10windowSize_07TabularE00E5FrameVq0__q1_SaySSGSSSiq_mtK7ElementQy1_RszAL19RowGroupingProtocolR0_STR1_r2_lFZSiSg_SdAL0erV0PALE7grouped2byQrSSd_tFQOyAN_Qo_10Algorithms15UniquedSequenceVyAL6ColumnVySiGASGTt5t6g5(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v176 = v6;
  v144 = a4;
  v171 = a3;
  v172 = a2;
  v136 = v5;
  v150 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Double>>);
  v8 = *(*(v150 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v151 = &v132;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v135 = &v132;
  v170 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DiscontiguousColumnSlice<Double>);
  v167 = *(v170 - 8);
  v13 = *(v167 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v152 = &v132;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v169 = &v132;
  v146 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
  v18 = *(*(v146 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v154 = &v132;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v155 = &v132;
  v175 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DiscontiguousColumnSlice<String>);
  v156 = *(v175 - 1);
  v23 = *(v156 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v147 = &v132;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v168 = &v132;
  v145 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8);
  v28 = *(v145 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v149 = &v132;
  v158 = type metadata accessor for DataFrame.Slice(0);
  v157 = *(v158 - 8);
  v31 = *(v157 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v165 = &v132;
  v163 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v164 = *(v163 - 8);
  v34 = *(v164 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v133 = &v132;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v173 = &v132;
  v159 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v148 = *(v159 - 8);
  v39 = *(v148 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of DataFrameProtocol.grouped(by:)>>.0);
  v162[0] = type metadata accessor for DataFrame(255);
  v162[1] = &protocol witness table for DataFrame;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2(v162, &opaque type descriptor for <<opaque return type of DataFrameProtocol.grouped(by:)>>, 1);
  v160 = a1;
  v44 = v42;
  v45 = v171;
  v46 = dispatch thunk of RowGroupingProtocol.count.getter(v44, OpaqueTypeConformance2);
  a5;
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v166 = &v132;
  v134 = a5;
  v174 = v46;
  v137 = v47;
  Column.init(name:capacity:)(v144, a5, v46, v47);
  v153 = *(v45 + 16);
  v48 = v153;
  if (v153)
  {
    v162[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v153, 0);
    v49 = v162[0];
    v50 = (v45 + 40);
    do
    {
      v178 = v48;
      v177 = v50;
      v51 = *(v50 - 1);
      v52 = *v50;
      *v50;
      v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
      Column.init(name:capacity:)(v51, v52, v174, v53);
      v162[0] = v49;
      v54 = *(v49 + 2);
      if (*(v49 + 3) >> 1 <= v54)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v49 + 3) >= 2uLL, v54 + 1, 1);
        v49 = v162[0];
      }

      *(v49 + 2) = v54 + 1;
      (*(v164 + 32))(&v49[((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v54], v173, v163);
      v50 = (v177 + 16);
      v48 = (v178 - 1);
    }

    while (v178 != (&dword_0 + 1));
    v174 = v49;
  }

  else
  {
    v174 = _swiftEmptyArrayStorage;
  }

  v55 = alloca(24);
  v56 = alloca(32);
  v134 = v160;
  v57 = v176;
  v58 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Algorithms15UniquedSequenceVy11TabularData6ColumnVySiGSiSgG_AI0H5FrameV5SliceVSgs5NeverOTg5(partial apply for specialized closure #2 in static MLActivityClassifier.DataBatcher.aggregate<A, B, C, D>(groups:groupIds:featureNames:labelName:windowSize:_:), &v132);
  v59 = v58;
  v160 = v57;
  v60 = v58[2];
  v61 = v175;
  if (v60)
  {
    v62 = v58 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v138 = v171 + 32;
    v63 = 0;
    v64 = v158;
    v65 = v149;
    v172 = v58;
    v140 = v60;
    v141 = v62;
    while (2)
    {
      if (v63 >= v59[2])
      {
        BUG();
      }

      outlined init with copy of DataFrame.Slice?(&v62[v63 * *(v145 + 72)], v65);
      if (__swift_getEnumTagSinglePayload(v65, 1, v64) == 1)
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, &demangling cache variable for type metadata for DataFrame.Slice?);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000017, "Unknown column type: " + 0x8000000000000000, "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 110, 0);
        BUG();
      }

      v139 = v63 + 1;
      (*(v157 + 32))(v165, v65, v64);
      v66 = v168;
      DataFrame.Slice.subscript.getter(v144, v134, &type metadata for String);
      v173 = *(v156 + 16);
      (v173)(v147, v66, v61);
      v67 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<String> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<String>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
      v68 = v155;
      v176 = v67;
      dispatch thunk of Sequence.makeIterator()(v61, v67);
      v69 = v68;
      v177 = v68 + *(v146 + 36);
      v70 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<String> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<String>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
      while (1)
      {
        dispatch thunk of Collection.endIndex.getter(v61, v70);
        if (*v177 == v162[0])
        {
          break;
        }

        v178 = dispatch thunk of Collection.subscript.read(v162, v177, v61, v70);
        v72 = *(v71 + 8);
        v72;
        (v178)(v162, 0);
        dispatch thunk of Collection.formIndex(after:)(v177, v175, v70);
        if (!v72)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v155, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
          v174;
          v172;
          v126 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v126, 0, 0);
          *v127 = 0xD000000000000038;
          *(v127 + 8) = "Unknown feature type: " + 0x8000000000000000;
          *(v127 + 16) = 0;
          *(v127 + 32) = 0;
          *(v127 + 48) = 0;
          swift_willThrow(&type metadata for MLCreateError, v126);
LABEL_55:
          (*(v156 + 8))(v168, v175);
          (*(v157 + 8))(v165, v158);
          return (*(v148 + 8))(v166, v159);
        }

        v72;
        v61 = v175;
        v69 = v155;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v69, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
      (v173)(v147, v168, v61);
      v73 = v154;
      dispatch thunk of Sequence.makeIterator()(v61, v176);
      v74 = (v73 + *(v146 + 36));
      v176 = _swiftEmptyArrayStorage;
      v178 = v74;
      while (1)
      {
        dispatch thunk of Collection.endIndex.getter(v175, v70);
        if (*v74 == v162[0])
        {
          break;
        }

        v75 = dispatch thunk of Collection.subscript.read(v162, v74, v175, v70);
        v173 = *v76;
        v177 = v76[1];
        v177;
        v75(v162, 0);
        v74 = v178;
        dispatch thunk of Collection.formIndex(after:)(v178, v175, v70);
        if (v177)
        {
          v77 = v173;
          v161 = v70;
          v78 = v176;
          if (!swift_isUniquelyReferenced_nonNull_native(v176))
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1, v78);
          }

          v79 = v78[2];
          v80 = v78[3];
          v81 = (v79 + 1);
          if (v80 >> 1 <= v79)
          {
            v176 = (v79 + 1);
            v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v80 >= 2, v79 + 1, 1, v78);
            v81 = v176;
            v82 = v77;
            v78 = v84;
          }

          else
          {
            v82 = v77;
          }

          v78[2] = v81;
          v83 = 2 * v79;
          v78[v83 + 4] = v82;
          v176 = v78;
          v78[v83 + 5] = v177;
          v70 = v161;
          v74 = v178;
        }
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v154, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
      v85 = v176;
      v162[0] = v176;
      Column.append(_:)(v162, v159);
      v85;
      v61 = v175;
      v143 = DiscontiguousColumnSlice.count.getter(v175);
      if (v153)
      {
        v171;
        v86 = 0;
        v87 = v167;
        v88 = v169;
        while (1)
        {
          v89 = *(v138 + 16 * v86);
          v90 = *(v138 + 16 * v86 + 8);
          v161 = v86;
          v142 = (v86 + 1);
          swift_bridgeObjectRetain_n(v90, 2);
          DataFrame.Slice.subscript.getter(v89, v90, &type metadata for Double);
          v173 = v90;
          v90;
          v91 = v170;
          v178 = *(v87 + 16);
          (v178)(v152, v88, v170);
          v92 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<Double> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<Double>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
          v93 = v135;
          v94 = v91;
          v176 = v92;
          dispatch thunk of Sequence.makeIterator()(v91, v92);
          v95 = v93;
          v177 = v93 + *(v150 + 36);
          v96 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<Double> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<Double>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
          v97 = v94;
          while (1)
          {
            dispatch thunk of Collection.endIndex.getter(v97, v96);
            if (*v177 == v162[0])
            {
              break;
            }

            v98 = v177;
            v99 = dispatch thunk of Collection.subscript.read(v162, v177, v97, v96);
            v101 = *(v100 + 8);
            v99(v162, 0);
            dispatch thunk of Collection.formIndex(after:)(v98, v170, v96);
            v102 = v101 == 0;
            v97 = v170;
            if (!v102)
            {
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Double>>);
              v174;
              v172;
              v171;
              v173;
              v128 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v128, 0, 0);
              v130 = "Failed to look up group" + 0x8000000000000000;
              v131 = 0xD00000000000001ALL;
              goto LABEL_54;
            }
          }

          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Double>>);
          (v178)(v152, v169, v97);
          v103 = v151;
          dispatch thunk of Sequence.makeIterator()(v97, v176);
          v176 = (v103 + *(v150 + 36));
          v178 = _swiftEmptyArrayStorage;
          v104 = v96;
LABEL_32:
          v105 = v151;
          v106 = v176;
          while (1)
          {
            dispatch thunk of Collection.endIndex.getter(v97, v104);
            if (*v106 == v162[0])
            {
              break;
            }

            v107 = dispatch thunk of Collection.subscript.read(v162, v106, v97, v104);
            v177 = *v108;
            v109 = *(v108 + 8);
            v107(v162, 0);
            dispatch thunk of Collection.formIndex(after:)(v106, v170, v104);
            v102 = v109 == 0;
            v97 = v170;
            if (v102)
            {
              v110 = v178;
              if (!swift_isUniquelyReferenced_nonNull_native(v178))
              {
                v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v110[2] + 1, 1, v110);
              }

              v111 = v110[2];
              v178 = v110;
              v112 = v177;
              if (v110[3] >> 1 <= v111)
              {
                v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v110[3] >= 2uLL, v111 + 1, 1, v178);
                v112 = v177;
                v178 = v114;
              }

              v113 = v178;
              v178[2] = v111 + 1;
              v113[v111 + 4] = v112;
              v97 = v170;
              goto LABEL_32;
            }
          }

          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v105, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Double>>);
          v115 = v178;
          if (v178[2] != v143)
          {
            break;
          }

          v162[0] = v178;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v174);
          v61 = v175;
          if (isUniquelyReferenced_nonNull_native)
          {
            v117 = v174;
          }

          else
          {
            v117 = specialized _ArrayBuffer._consumeAndCreateNew()(v174);
          }

          if (v161 >= v117[2])
          {
            BUG();
          }

          v118 = *(v164 + 80);
          v174 = v117;
          v119 = v117 + ((v118 + 32) & ~v118) + *(v164 + 72) * v161;
          Column.append(_:)(v162, v163);
          v173;
          v88 = v169;
          v87 = v167;
          (*(v167 + 8))(v169, v97);
          v178;
          v86 = v142;
          if (v142 == v153)
          {
            v171;
            goto LABEL_47;
          }
        }

        v174;
        v172;
        v171;
        v173;
        v115;
        v128 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v128, 0, 0);
        v130 = "Feature values contain nil" + 0x8000000000000000;
        v131 = 0xD000000000000036;
LABEL_54:
        *v129 = v131;
        *(v129 + 8) = v130;
        *(v129 + 16) = 0;
        *(v129 + 32) = 0;
        *(v129 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v128);
        (*(v167 + 8))(v169, v97);
        goto LABEL_55;
      }

LABEL_47:
      (*(v156 + 8))(v168, v61);
      v64 = v158;
      (*(v157 + 8))(v165, v158);
      v63 = v139;
      v65 = v149;
      v59 = v172;
      v62 = v141;
      if (v139 != v140)
      {
        continue;
      }

      break;
    }
  }

  v59;
  DataFrame.init()();
  DataFrame.append<A>(column:)(v166, v137);
  v120 = v174;
  v121 = v174[2];
  if (v121)
  {
    v122 = v174 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
    v175 = *(v164 + 16);
    v177 = *(v164 + 72);
    v123 = v133;
    do
    {
      (v175)(v123, v122, v163);
      v124 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
      DataFrame.append<A>(column:)(v123, v124);
      (*(v164 + 8))(v123, v163);
      v122 += v177;
      --v121;
    }

    while (v121);
    v120 = v174;
  }

  v120;
  return (*(v148 + 8))(v166, v159);
}

uint64_t _s8CreateML20MLActivityClassifierV11DataBatcherV9aggregate6groups8groupIds12featureNames9labelName10windowSize_07TabularE00E5FrameVq0__q1_SaySSGSSSiq_mtK7ElementQy1_RszAL19RowGroupingProtocolR0_STR1_r2_lFZSSSg_SfAL0erV0PALE7grouped2byQrSSd_tFQOyAN_Qo_AL6ColumnVySSGTt5t6g5(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v176 = v6;
  v144 = a4;
  v171 = a3;
  v172 = a2;
  v136 = v5;
  v150 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Float>>);
  v8 = *(*(v150 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v151 = &v132;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v135 = &v132;
  v170 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DiscontiguousColumnSlice<Float>);
  v167 = *(v170 - 8);
  v13 = *(v167 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v152 = &v132;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v169 = &v132;
  v146 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
  v18 = *(*(v146 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v154 = &v132;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v155 = &v132;
  v175 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DiscontiguousColumnSlice<String>);
  v156 = *(v175 - 1);
  v23 = *(v156 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v147 = &v132;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v168 = &v132;
  v145 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8);
  v28 = *(v145 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v149 = &v132;
  v158 = type metadata accessor for DataFrame.Slice(0);
  v157 = *(v158 - 8);
  v31 = *(v157 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v165 = &v132;
  v163 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v164 = *(v163 - 8);
  v34 = *(v164 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v133 = &v132;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v173 = &v132;
  v159 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v148 = *(v159 - 8);
  v39 = *(v148 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of DataFrameProtocol.grouped(by:)>>.0);
  v162[0] = type metadata accessor for DataFrame(255);
  v162[1] = &protocol witness table for DataFrame;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2(v162, &opaque type descriptor for <<opaque return type of DataFrameProtocol.grouped(by:)>>, 1);
  v160 = a1;
  v44 = v42;
  v45 = v171;
  v46 = dispatch thunk of RowGroupingProtocol.count.getter(v44, OpaqueTypeConformance2);
  a5;
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v166 = &v132;
  v134 = a5;
  v174 = v46;
  v137 = v47;
  Column.init(name:capacity:)(v144, a5, v46, v47);
  v153 = *(v45 + 16);
  v48 = v153;
  if (v153)
  {
    v162[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v153, 0);
    v49 = v162[0];
    v50 = (v45 + 40);
    do
    {
      v178 = v48;
      v177 = v50;
      v51 = *(v50 - 1);
      v52 = *v50;
      *v50;
      v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      Column.init(name:capacity:)(v51, v52, v174, v53);
      v162[0] = v49;
      v54 = *(v49 + 2);
      if (*(v49 + 3) >> 1 <= v54)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v49 + 3) >= 2uLL, v54 + 1, 1);
        v49 = v162[0];
      }

      *(v49 + 2) = v54 + 1;
      (*(v164 + 32))(&v49[((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v54], v173, v163);
      v50 = (v177 + 16);
      v48 = (v178 - 1);
    }

    while (v178 != (&dword_0 + 1));
    v174 = v49;
  }

  else
  {
    v174 = _swiftEmptyArrayStorage;
  }

  v55 = alloca(24);
  v56 = alloca(32);
  v134 = v160;
  v57 = v176;
  v58 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySSG_AF0E5FrameV5SliceVSgs5NeverOTg5(partial apply for specialized closure #2 in static MLActivityClassifier.DataBatcher.aggregate<A, B, C, D>(groups:groupIds:featureNames:labelName:windowSize:_:), &v132);
  v59 = v58;
  v160 = v57;
  v60 = v58[2];
  v61 = v175;
  if (v60)
  {
    v62 = v58 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v138 = v171 + 32;
    v63 = 0;
    v64 = v158;
    v65 = v149;
    v172 = v58;
    v140 = v60;
    v141 = v62;
    while (2)
    {
      if (v63 >= v59[2])
      {
        BUG();
      }

      outlined init with copy of DataFrame.Slice?(&v62[v63 * *(v145 + 72)], v65);
      if (__swift_getEnumTagSinglePayload(v65, 1, v64) == 1)
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, &demangling cache variable for type metadata for DataFrame.Slice?);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000017, "Unknown column type: " + 0x8000000000000000, "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 110, 0);
        BUG();
      }

      v139 = v63 + 1;
      (*(v157 + 32))(v165, v65, v64);
      v66 = v168;
      DataFrame.Slice.subscript.getter(v144, v134, &type metadata for String);
      v173 = *(v156 + 16);
      (v173)(v147, v66, v61);
      v67 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<String> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<String>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
      v68 = v155;
      v176 = v67;
      dispatch thunk of Sequence.makeIterator()(v61, v67);
      v69 = v68;
      v177 = v68 + *(v146 + 36);
      v70 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<String> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<String>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
      while (1)
      {
        dispatch thunk of Collection.endIndex.getter(v61, v70);
        if (*v177 == v162[0])
        {
          break;
        }

        v178 = dispatch thunk of Collection.subscript.read(v162, v177, v61, v70);
        v72 = *(v71 + 8);
        v72;
        (v178)(v162, 0);
        dispatch thunk of Collection.formIndex(after:)(v177, v175, v70);
        if (!v72)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v155, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
          v174;
          v172;
          v126 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v126, 0, 0);
          *v127 = 0xD000000000000038;
          *(v127 + 8) = "Unknown feature type: " + 0x8000000000000000;
          *(v127 + 16) = 0;
          *(v127 + 32) = 0;
          *(v127 + 48) = 0;
          swift_willThrow(&type metadata for MLCreateError, v126);
LABEL_55:
          (*(v156 + 8))(v168, v175);
          (*(v157 + 8))(v165, v158);
          return (*(v148 + 8))(v166, v159);
        }

        v72;
        v61 = v175;
        v69 = v155;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v69, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
      (v173)(v147, v168, v61);
      v73 = v154;
      dispatch thunk of Sequence.makeIterator()(v61, v176);
      v74 = (v73 + *(v146 + 36));
      v176 = _swiftEmptyArrayStorage;
      v178 = v74;
      while (1)
      {
        dispatch thunk of Collection.endIndex.getter(v175, v70);
        if (*v74 == v162[0])
        {
          break;
        }

        v75 = dispatch thunk of Collection.subscript.read(v162, v74, v175, v70);
        v173 = *v76;
        v177 = v76[1];
        v177;
        v75(v162, 0);
        v74 = v178;
        dispatch thunk of Collection.formIndex(after:)(v178, v175, v70);
        if (v177)
        {
          v77 = v173;
          v161 = v70;
          v78 = v176;
          if (!swift_isUniquelyReferenced_nonNull_native(v176))
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1, v78);
          }

          v79 = v78[2];
          v80 = v78[3];
          v81 = (v79 + 1);
          if (v80 >> 1 <= v79)
          {
            v176 = (v79 + 1);
            v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v80 >= 2, v79 + 1, 1, v78);
            v81 = v176;
            v82 = v77;
            v78 = v84;
          }

          else
          {
            v82 = v77;
          }

          v78[2] = v81;
          v83 = 2 * v79;
          v78[v83 + 4] = v82;
          v176 = v78;
          v78[v83 + 5] = v177;
          v70 = v161;
          v74 = v178;
        }
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v154, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<String>>);
      v85 = v176;
      v162[0] = v176;
      Column.append(_:)(v162, v159);
      v85;
      v61 = v175;
      v143 = DiscontiguousColumnSlice.count.getter(v175);
      if (v153)
      {
        v171;
        v86 = 0;
        v87 = v167;
        v88 = v169;
        while (1)
        {
          v89 = *(v138 + 16 * v86);
          v90 = *(v138 + 16 * v86 + 8);
          v161 = v86;
          v142 = (v86 + 1);
          swift_bridgeObjectRetain_n(v90, 2);
          DataFrame.Slice.subscript.getter(v89, v90, &type metadata for Float);
          v173 = v90;
          v90;
          v91 = v170;
          v178 = *(v87 + 16);
          (v178)(v152, v88, v170);
          v92 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<Float> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<Float>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
          v93 = v135;
          v94 = v91;
          v176 = v92;
          dispatch thunk of Sequence.makeIterator()(v91, v92);
          v95 = v93;
          v177 = v93 + *(v150 + 36);
          v96 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DiscontiguousColumnSlice<Float> and conformance DiscontiguousColumnSlice<A>, &demangling cache variable for type metadata for DiscontiguousColumnSlice<Float>, &protocol conformance descriptor for DiscontiguousColumnSlice<A>);
          v97 = v94;
          while (1)
          {
            dispatch thunk of Collection.endIndex.getter(v97, v96);
            if (*v177 == v162[0])
            {
              break;
            }

            v98 = v177;
            v99 = dispatch thunk of Collection.subscript.read(v162, v177, v97, v96);
            v101 = *(v100 + 4);
            v99(v162, 0);
            dispatch thunk of Collection.formIndex(after:)(v98, v170, v96);
            v102 = v101 == 0;
            v97 = v170;
            if (!v102)
            {
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Float>>);
              v174;
              v172;
              v171;
              v173;
              v128 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v128, 0, 0);
              v130 = "Failed to look up group" + 0x8000000000000000;
              v131 = 0xD00000000000001ALL;
              goto LABEL_54;
            }
          }

          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Float>>);
          (v178)(v152, v169, v97);
          v103 = v151;
          dispatch thunk of Sequence.makeIterator()(v97, v176);
          v176 = (v103 + *(v150 + 36));
          v178 = _swiftEmptyArrayStorage;
          v104 = v96;
LABEL_32:
          v105 = v151;
          v106 = v176;
          while (1)
          {
            dispatch thunk of Collection.endIndex.getter(v97, v104);
            if (*v106 == v162[0])
            {
              break;
            }

            v107 = dispatch thunk of Collection.subscript.read(v162, v106, v97, v104);
            LODWORD(v177) = *v108;
            v109 = *(v108 + 4);
            v107(v162, 0);
            dispatch thunk of Collection.formIndex(after:)(v106, v170, v104);
            v102 = v109 == 0;
            v97 = v170;
            if (v102)
            {
              v110 = v178;
              if (!swift_isUniquelyReferenced_nonNull_native(v178))
              {
                v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v110[2] + 1, 1, v110);
              }

              v111 = v110[2];
              v178 = v110;
              v112 = v177;
              if (v110[3] >> 1 <= v111)
              {
                v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v110[3] >= 2uLL, v111 + 1, 1, v178);
                v112 = v177;
                v178 = v114;
              }

              v113 = v178;
              v178[2] = v111 + 1;
              *(v113 + v111 + 8) = v112;
              v97 = v170;
              goto LABEL_32;
            }
          }

          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v105, &demangling cache variable for type metadata for IndexingIterator<DiscontiguousColumnSlice<Float>>);
          v115 = v178;
          if (v178[2] != v143)
          {
            break;
          }

          v162[0] = v178;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v174);
          v61 = v175;
          if (isUniquelyReferenced_nonNull_native)
          {
            v117 = v174;
          }

          else
          {
            v117 = specialized _ArrayBuffer._consumeAndCreateNew()(v174);
          }

          if (v161 >= v117[2])
          {
            BUG();
          }

          v118 = *(v164 + 80);
          v174 = v117;
          v119 = v117 + ((v118 + 32) & ~v118) + *(v164 + 72) * v161;
          Column.append(_:)(v162, v163);
          v173;
          v88 = v169;
          v87 = v167;
          (*(v167 + 8))(v169, v97);
          v178;
          v86 = v142;
          if (v142 == v153)
          {
            v171;
            goto LABEL_47;
          }
        }

        v174;
        v172;
        v171;
        v173;
        v115;
        v128 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v128, 0, 0);
        v130 = "Feature values contain nil" + 0x8000000000000000;
        v131 = 0xD000000000000036;
LABEL_54:
        *v129 = v131;
        *(v129 + 8) = v130;
        *(v129 + 16) = 0;
        *(v129 + 32) = 0;
        *(v129 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v128);
        (*(v167 + 8))(v169, v97);
        goto LABEL_55;
      }

LABEL_47:
      (*(v156 + 8))(v168, v61);
      v64 = v158;
      (*(v157 + 8))(v165, v158);
      v63 = v139;
      v65 = v149;
      v59 = v172;
      v62 = v141;
      if (v139 != v140)
      {
        continue;
      }

      break;
    }
  }

  v59;
  DataFrame.init()();
  DataFrame.append<A>(column:)(v166, v137);
  v120 = v174;
  v121 = v174[2];
  if (v121)
  {
    v122 = v174 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
    v175 = *(v164 + 16);
    v177 = *(v164 + 72);
    v123 = v133;
    do
    {
      (v175)(v123, v122, v163);
      v124 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      DataFrame.append<A>(column:)(v123, v124);
      (*(v164 + 8))(v123, v163);
      v122 += v177;
      --v121;
    }

    while (v121);
    v120 = v174;
  }

  v120;
  return (*(v148 + 8))(v166, v159);
}

uint64_t specialized closure #2 in static MLActivityClassifier.DataBatcher.aggregate<A, B, C, D>(groups:groupIds:featureNames:labelName:windowSize:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any?>);
  v4 = swift_allocObject(v3, 64, 7);
  v4[2] = 1;
  v4[3] = 2;
  v4[7] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
  v4[4] = a1;
  v4[5] = a2;
  a2;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of DataFrameProtocol.grouped(by:)>>.0);
  v8[0] = type metadata accessor for DataFrame(255);
  v8[1] = &protocol witness table for DataFrame;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2(v8, &opaque type descriptor for <<opaque return type of DataFrameProtocol.grouped(by:)>>, 1);
  dispatch thunk of RowGroupingProtocol.subscript.getter(v4, v5, OpaqueTypeConformance2);
  return v4;
}

uint64_t specialized closure #2 in static MLActivityClassifier.DataBatcher.aggregate<A, B, C, D>(groups:groupIds:featureNames:labelName:windowSize:_:)(uint64_t a1, char a2, uint64_t a3)
{
  v8[3] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any?>);
  v4 = swift_allocObject(v3, 64, 7);
  *(v4 + 16) = 1;
  *(v4 + 24) = 2;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  *(v4 + 32) = a1;
  *(v4 + 40) = a2 & 1;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for <<opaque return type of DataFrameProtocol.grouped(by:)>>.0);
  v8[0] = type metadata accessor for DataFrame(255);
  v8[1] = &protocol witness table for DataFrame;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2(v8, &opaque type descriptor for <<opaque return type of DataFrameProtocol.grouped(by:)>>, 1);
  dispatch thunk of RowGroupingProtocol.subscript.getter(v4, v5, OpaqueTypeConformance2);
  return v4;
}

BOOL closure #2 in static MLActivityClassifier.DataBatcher.preprocess(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    BUG();
  }

  if (*(a2 + 8))
  {
    BUG();
  }

  return *a1 < *a2;
}

uint64_t MLActivityClassifier.DataBatcher.generateBatch(startingAt:rowCount:seed:)(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + *(type metadata accessor for MLActivityClassifier.DataBatcher(0) + 32));
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  if (swift_dynamicCastMetatype(v4, v5))
  {
    return _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D210startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSd_Tt3g5(a1, a2, a3);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (!swift_dynamicCastMetatype(v4, v7))
  {
    _StringGuts.grow(_:)(24);
    0xE000000000000000;
    v8._countAndFlagsBits = _typeName(_:qualified:)(v4, 0);
    object = v8._object;
    String.append(_:)(v8);
    object;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000016, "ityClassifier+Batching.swift" + 0x8000000000000000, "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 334, 0);
    BUG();
  }

  return _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D210startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSf_Tt3g5(a1, a2, a3);
}

uint64_t MLActivityClassifier.DataBatcher.generateNextBatch(rowCount:seed:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(type metadata accessor for MLActivityClassifier.DataBatcher(0) + 32));
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  if (swift_dynamicCastMetatype(v3, v4))
  {
    return _s8CreateML20MLActivityClassifierV11DataBatcherV17generateNextBatch33_B38BBA08EC64E268F7AB3D1A029502D28rowCount4seed_07TabularE00E5FrameVSi_SixmtKSjRzlFSd_Tt2g5(a1, a2);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (!swift_dynamicCastMetatype(v3, v6))
  {
    _StringGuts.grow(_:)(24);
    0xE000000000000000;
    v7._countAndFlagsBits = _typeName(_:qualified:)(v3, 0);
    object = v7._object;
    String.append(_:)(v7);
    object;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000016, "ityClassifier+Batching.swift" + 0x8000000000000000, "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 348, 0);
    BUG();
  }

  return _s8CreateML20MLActivityClassifierV11DataBatcherV17generateNextBatch33_B38BBA08EC64E268F7AB3D1A029502D28rowCount4seed_07TabularE00E5FrameVSi_SixmtKSjRzlFSf_Tt2g5(a1, a2);
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(uint64_t *, uint64_t *))
{
  v3 = v2[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 < 0)
    {
      BUG();
    }

    if (v3)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
    }
  }

  else
  {
    if (v3 < -1)
    {
      BUG();
    }

    v98 = v3;
    v85 = v4;
    v87 = v2;
    if (v3 >= 2)
    {
      v5 = v3 / 2;
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)(v5, v6);
      *(v7 + 16) = v5;
      v100 = v7;
      v8 = (v7 + 32);
      goto LABEL_10;
    }

    if (v3 == 1)
    {
      v100 = _swiftEmptyArrayStorage;
      v8 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v89 = v8;
      v9 = *v2;
      v86 = *v2 + 40;
      v10 = _swiftEmptyArrayStorage;
      v11 = 0;
      v12 = v98;
      v97 = *v2;
      while (1)
      {
        v13 = v11;
        v14 = v11 + 1;
        v99 = v11;
        if (v11 + 1 < v12)
        {
          v102 = v10;
          v15 = 16 * v14;
          v16 = *(v9 + v15 + 8);
          v93 = *(v9 + v15);
          v94 = v16;
          v17 = 16 * v13;
          v18 = *(v9 + 16 * v13 + 8);
          v95 = *(v9 + 16 * v13);
          v96 = v18;
          LOBYTE(v101) = a1(&v93, &v95);
          if (v1)
          {
            goto LABEL_104;
          }

          v14 = v13 + 2;
          if (v13 + 2 < v98)
          {
            v19 = (v86 + 16 * v13);
            while (1)
            {
              v20 = v14;
              v21 = *v19;
              v93 = *(v19 - 1);
              v94 = v21;
              v22 = *(v19 - 16);
              v95 = *(v19 - 3);
              v96 = v22;
              v23 = a1(&v93, &v95);
              if ((v101 ^ v23))
              {
                break;
              }

              ++v14;
              v19 += 16;
              if (v20 + 1 >= v98)
              {
                v14 = v98;
                break;
              }
            }

            v13 = v99;
          }

          if (v101)
          {
            v9 = v97;
            if (v14 < v13)
            {
              BUG();
            }

            v10 = v102;
            if (v14 > v13)
            {
              v24 = 16 * v14 - 16;
              v25 = v14;
              v26 = v13;
              do
              {
                if (v26 != --v25)
                {
                  if (!v9)
                  {
                    BUG();
                  }

                  v27 = (v9 + v17);
                  v28 = *(v9 + v17);
                  v29 = *(v9 + v17 + 8);
                  if (v17 != v24 || v27 >= v9 + v24 + 16)
                  {
                    *v27 = *(v9 + v24);
                  }

                  *(v9 + v24) = v28;
                  *(v9 + v24 + 8) = v29 & 1;
                }

                ++v26;
                v24 -= 16;
                v17 += 16;
              }

              while (v26 < v25);
            }
          }

          else
          {
            v10 = v102;
            v9 = v97;
          }
        }

        if (v14 < v98)
        {
          if (__OFSUB__(v14, v13))
          {
            BUG();
          }

          if (v14 - v13 < v85)
          {
            v30 = (v85 + v13);
            if (__OFADD__(v85, v13))
            {
              BUG();
            }

            if (v30 >= v98)
            {
              v30 = v98;
            }

            if (v30 < v13)
            {
              BUG();
            }

            if (v14 != v30)
            {
              v102 = v10;
              v65 = (v9 + 16 * v14);
              __dsta = v30;
              do
              {
                v66 = v13;
                v101 = v65;
                v67 = v65;
                do
                {
                  v68 = v67[8];
                  v93 = *v67;
                  v94 = v68;
                  v69 = *(v67 - 8);
                  v95 = *(v67 - 2);
                  v96 = v69;
                  v70 = a1(&v93, &v95);
                  if (v1)
                  {
                    goto LABEL_104;
                  }

                  if ((v70 & 1) == 0)
                  {
                    break;
                  }

                  if (!v97)
                  {
                    BUG();
                  }

                  v71 = *v67;
                  v72 = v67[8];
                  *v67 = *(v67 - 1);
                  *(v67 - 2) = v71;
                  *(v67 - 8) = v72;
                  ++v66;
                  v67 -= 16;
                }

                while (v14 != v66);
                ++v14;
                v65 = v101 + 16;
                v13 = v99;
              }

              while (v14 != __dsta);
              v14 = __dsta;
              v10 = v102;
              v9 = v97;
            }
          }
        }

        if (v14 < v13)
        {
          BUG();
        }

        v31 = v10;
        v88 = v14;
        if (swift_isUniquelyReferenced_nonNull_native(v10))
        {
          v10 = v31;
        }

        else
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
        }

        v32 = *(v10 + 2);
        v33 = v32 + 1;
        if (*(v10 + 3) >> 1 <= v32)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v10 + 3) >= 2uLL, v32 + 1, 1, v10);
        }

        *(v10 + 2) = v33;
        v34 = 16 * v32;
        *&v10[v34 + 32] = v99;
        *&v10[v34 + 40] = v88;
        if (v32)
        {
          break;
        }

        v33 = 1;
LABEL_80:
        v12 = v98;
        v11 = v88;
        if (v88 >= v98)
        {
          goto LABEL_92;
        }
      }

      v35 = v10 + 32;
      v102 = v10;
      v101 = v10 + 32;
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          v41 = 16 * v33;
          v42 = *&v35[16 * v33 - 56];
          v38 = __OFSUB__(v42, *&v35[16 * v33 - 64]);
          v43 = v42 - *&v35[16 * v33 - 64];
          if (v38)
          {
            BUG();
          }

          v44 = *&v35[v41 - 40];
          v38 = __OFSUB__(v44, *&v35[v41 - 48]);
          v39 = v44 - *&v35[v41 - 48];
          v40 = v38;
          if (v38)
          {
            BUG();
          }

          v45 = *&v10[v41 + 8];
          v38 = __OFSUB__(v45, *&v10[16 * v33]);
          v46 = v45 - *&v10[16 * v33];
          if (v38)
          {
            BUG();
          }

          v38 = __OFADD__(v39, v46);
          v47 = v39 + v46;
          if (v38)
          {
            BUG();
          }

          if (v47 >= v43)
          {
            v56 = *&v35[16 * v36 + 8];
            v38 = __OFSUB__(v56, *&v35[16 * v36]);
            v57 = v56 - *&v35[16 * v36];
            if (v38)
            {
              BUG();
            }

            if (v39 < v57)
            {
LABEL_70:
              v36 = v33 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v33 != 3)
          {
            if (v33 < 2)
            {
              BUG();
            }

            v53 = *&v10[16 * v33 + 8];
            v38 = __OFSUB__(v53, *&v10[16 * v33]);
            v49 = v53 - *&v10[16 * v33];
            v50 = v38;
LABEL_64:
            if (v50)
            {
              BUG();
            }

            v54 = *&v35[16 * v36 + 8];
            v38 = __OFSUB__(v54, *&v35[16 * v36]);
            v55 = v54 - *&v35[16 * v36];
            if (v38)
            {
              BUG();
            }

            if (v55 < v49)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v37 = *(v10 + 5);
          v38 = __OFSUB__(v37, *(v10 + 4));
          v39 = v37 - *(v10 + 4);
          v40 = v38;
        }

        if (v40)
        {
          BUG();
        }

        v48 = *&v10[16 * v33 + 8];
        v38 = __OFSUB__(v48, *&v10[16 * v33]);
        v49 = v48 - *&v10[16 * v33];
        v50 = v38;
        if (v38)
        {
          BUG();
        }

        v51 = *&v35[16 * v36 + 8];
        v38 = __OFSUB__(v51, *&v35[16 * v36]);
        v52 = v51 - *&v35[16 * v36];
        if (v38)
        {
          BUG();
        }

        if (__OFADD__(v52, v49))
        {
          BUG();
        }

        if (v52 + v49 < v39)
        {
          goto LABEL_64;
        }

        if (v39 < v52)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v36 - 1 >= v33)
        {
          BUG();
        }

        if (!v9)
        {
          BUG();
        }

        v58 = 16 * (v36 - 1);
        v99 = v36;
        v59 = *&v35[v58];
        v60 = *&v35[16 * v36 + 8];
        __dst = &v35[16 * v36];
        specialized _merge<A>(low:mid:high:buffer:by:)((v9 + 16 * v59), (v9 + 16 * *__dst), v9 + 16 * v60, v89, a1);
        if (v1)
        {
          goto LABEL_104;
        }

        if (v60 < v59)
        {
          BUG();
        }

        v61 = &v101[v58];
        v62 = *(v102 + 2);
        v63 = v99;
        v64 = v99 < v62;
        if (v99 > v62)
        {
          BUG();
        }

        *v61 = v59;
        *(v61 + 1) = v60;
        if (!v64)
        {
          BUG();
        }

        v33 = v62 - 1;
        memmove(__dst, __dst + 16, 16 * (v62 - 1 - v63));
        v35 = v101;
        v10 = v102;
        *(v102 + 2) = v62 - 1;
        v64 = v62 <= 2;
        v9 = v97;
        if (v64)
        {
          goto LABEL_80;
        }
      }
    }

    v10 = _swiftEmptyArrayStorage;
    v89 = &_swiftEmptyArrayStorage[4];
    v33 = _swiftEmptyArrayStorage[2];
    v100 = _swiftEmptyArrayStorage;
LABEL_92:
    if (v33 < 2)
    {
LABEL_105:
      v10;
      v84 = v100;
      v100[2] = 0;
      v84;
    }

    else
    {
      v73 = *v87;
      v97 = *v87;
      while (1)
      {
        if (!v73)
        {
          BUG();
        }

        v74 = 16 * (v33 - 1);
        v75 = *&v10[16 * v33];
        v102 = v10;
        v76 = (v73 + 16 * *&v10[v74 + 32]);
        v101 = *&v10[v74 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v73 + 16 * v75), v76, v73 + 16 * v101, v89, a1);
        if (v1)
        {
          break;
        }

        if (v101 < v75)
        {
          BUG();
        }

        v99 = v75;
        if (swift_isUniquelyReferenced_nonNull_native(v102))
        {
          v77 = v102;
        }

        else
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew()(v102);
        }

        v78 = *(v77 + 2);
        if (v33 - 2 >= v78)
        {
          BUG();
        }

        *&v77[16 * v33] = v99;
        *&v77[16 * v33 + 8] = v101;
        v79 = v78 - v33;
        if (v78 < v33)
        {
          BUG();
        }

        v33 = v78 - 1;
        v80 = &v77[v74 + 32];
        v81 = &v77[v74 + 48];
        v82 = v77;
        memmove(v80, v81, 16 * v79);
        v10 = v82;
        *(v82 + 2) = v78 - 1;
        v73 = v97;
        if (v78 <= 2)
        {
          goto LABEL_105;
        }
      }

LABEL_104:
      v102;
      v83 = v100;
      v100[2] = 0;
      v83;
    }
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = a1;
    v15 = *v5;
    v8 = *v5 + 16 * a3;
LABEL_4:
    v16 = v8;
    while (1)
    {
      v9 = *(v8 + 8);
      v17 = *v8;
      v18 = v9;
      v10 = *(v8 - 8);
      v19 = *(v8 - 16);
      v20 = v10;
      v11 = a4(&v17, &v19);
      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v15)
        {
          BUG();
        }

        v12 = *v8;
        v13 = *(v8 + 8);
        *v8 = *(v8 - 16);
        *(v8 - 16) = v12;
        *(v8 - 8) = v13;
        ++v7;
        v8 -= 16;
        if (v6 != v7)
        {
          continue;
        }
      }

      ++v6;
      v8 = v16 + 16;
      v7 = a1;
      if (v6 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

char specialized _merge<A>(low:mid:high:buffer:by:)(_BYTE *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v44 = v5;
  v7 = a2;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  __dst = a1;
  if (v8 < v9)
  {
    v10 = a2 - a1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v11 = a4;
    v12 = &a4[16 * v8];
    if (v10 >= 16 && v7 < a3)
    {
      v13 = v44;
      while (1)
      {
        v14 = v12;
        v15 = v7[8];
        v39 = *v7;
        v40 = v15;
        v16 = v11;
        v17 = v11[8];
        v41 = *v11;
        v42 = v17;
        v18 = a5(&v39, &v41);
        if (v13)
        {
          v32 = v14 - v11;
          if (__dst < v11 || __dst >= &v11[16 * (v32 / 16)] || __dst != v11)
          {
            memmove(__dst, v11, 16 * (v32 / 16));
          }

          return 1;
        }

        v19 = __dst;
        if ((v18 & 1) == 0)
        {
          break;
        }

        v20 = v7;
        v21 = __dst == v7;
        v7 += 16;
        if (!v21)
        {
          goto LABEL_9;
        }

LABEL_10:
        v22 = v19 + 16;
        v12 = v14;
        if (v11 >= v14)
        {
          v44 = 0;
          v7 = v22;
          goto LABEL_36;
        }

        __dst = v22;
        if (v7 >= a3)
        {
          v44 = 0;
          goto LABEL_13;
        }
      }

      v20 = v11;
      v11 += 16;
      if (__dst == v16)
      {
        goto LABEL_10;
      }

LABEL_9:
      *__dst = *v20;
      goto LABEL_10;
    }

LABEL_13:
    v7 = __dst;
LABEL_36:
    v34 = v12 - v11;
    if (v7 < v11 || v7 >= &v11[16 * (v34 / 16)] || v7 != v11)
    {
      memmove(v7, v11, 16 * (v34 / 16));
    }

    return 1;
  }

  v23 = (a3 - a2) / 16;
  v24 = a3 - a2;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v9, a4);
  v11 = a4;
  v12 = &a4[16 * v23];
  if (v24 < 16 || __dst >= v7)
  {
    goto LABEL_36;
  }

  v25 = v44;
  v26 = a3;
  while (1)
  {
    v27 = *(v12 - 8);
    v39 = *(v12 - 2);
    v40 = v27;
    v28 = *(v7 - 8);
    v41 = *(v7 - 2);
    v42 = v28;
    v29 = a5(&v39, &v41);
    if (v25)
    {
      break;
    }

    v11 = a4;
    v30 = __dst;
    if ((v29 & 1) == 0)
    {
      v31 = v12 - 16;
      v21 = v26 == v12;
      v12 -= 16;
      if (v21)
      {
        goto LABEL_22;
      }

LABEL_21:
      *(v26 - 1) = *v31;
      goto LABEL_22;
    }

    v31 = v7 - 16;
    v21 = v26 == v7;
    v7 -= 16;
    if (!v21)
    {
      goto LABEL_21;
    }

LABEL_22:
    if (v7 > v30)
    {
      v26 -= 16;
      if (v12 > a4)
      {
        continue;
      }
    }

    v44 = 0;
    goto LABEL_36;
  }

  v33 = 16 * ((v12 - a4) / 16);
  if (v7 < a4 || v7 >= &a4[v33] || v7 != a4)
  {
    memmove(v7, a4, v33);
  }

  return 1;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v25 = v2;
  v5 = *v2;
  Hasher.init(_seed:)(*(*v2 + 40));
  v5;
  String.hash(into:)(v23, a1);
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  v8 = v7 & v6;
  v9 = *(v5 + 8 * ((v7 & v6) >> 6) + 56);
  if (_bittest64(&v9, v8))
  {
    v10 = *(v5 + 48);
    v11 = *(v10 + 16 * v8);
    v24 = v10;
    v12 = *(v10 + 16 * v8 + 8);
    if (a1 ^ v11 | a2 ^ v12)
    {
      v19 = a2;
      v20 = a1;
      while ((_stringCompareWithSmolCheck(_:_:expecting:)(v11, v12, v20, v19, 0) & 1) == 0)
      {
        v8 = v7 & (v8 + 1);
        v21 = *(v5 + 8 * (v8 >> 6) + 56);
        if (!_bittest64(&v21, v8))
        {
          goto LABEL_11;
        }

        v11 = *(v24 + 16 * v8);
        v12 = *(v24 + 16 * v8 + 8);
        if (!(a1 ^ v11 | a2 ^ v12))
        {
          break;
        }

        v20 = a1;
        v19 = a2;
      }
    }

    v5;
    v13 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v25);
    v15 = *v13;
    v23[0] = *v13;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeSet.copy()();
      v15 = v23[0];
    }

    v16 = *(v15 + 48);
    v17 = *(v16 + 16 * v8);
    v18 = *(v16 + 16 * v8 + 8);
    specialized _NativeSet._delete(at:)(v8);
    *v13 = v23[0];
  }

  else
  {
LABEL_11:
    v5;
    return 0;
  }

  return v17;
}

uint64_t specialized _NativeSet._delete(at:)(unint64_t a1)
{
  v2 = *v1;
  v3 = ~(-1 << *(v2 + 32));
  v4 = v3 & (a1 + 1);
  v5 = *(v2 + 8 * (v4 >> 6) + 56);
  if (_bittest64(&v5, v4))
  {
    v27 = a1;
    v26 = v2 + 56;
    v2;
    v6 = _HashTable.previousHole(before:)(a1, v2 + 56, v3);
    if (((1 << (v3 & (a1 + 1))) & *(v2 + 8 * (v4 >> 6) + 56)) != 0)
    {
      v28 = v2;
      v24 = v3;
      v25 = v3 & (v6 + 1);
      do
      {
        v7 = *(v2 + 40);
        v8 = *(v2 + 48);
        v9 = 16 * v4;
        v10 = *(v8 + 16 * v4);
        v11 = *(v8 + 16 * v4 + 8);
        Hasher.init(_seed:)(v7);
        v11;
        v12 = v10;
        String.hash(into:)(v23, v10);
        v13 = Hasher._finalize()();
        v11, v12;
        v14 = v24;
        v15 = v24 & v13;
        v16 = v27;
        if (v27 >= v25)
        {
          if (v15 < v25)
          {
            goto LABEL_9;
          }
        }

        else if (v15 >= v25)
        {
          goto LABEL_10;
        }

        if (v27 >= v15)
        {
LABEL_10:
          v2 = v28;
          v17 = *(v28 + 48);
          v18 = (v17 + 16 * v27);
          v16 = v4;
          if (v18 >= v17 + v9 + 16 || v27 != v4)
          {
            *v18 = *(v9 + v17);
            v16 = v4;
          }

          goto LABEL_12;
        }

LABEL_9:
        v2 = v28;
LABEL_12:
        v27 = v16;
        v4 = v14 & (v4 + 1);
        v19 = *(v26 + 8 * (v4 >> 6));
      }

      while (_bittest64(&v19, v4));
    }

    *(v2 + 8 * (v27 >> 6) + 56) &= (-1 << v27) - 1;
    v2;
  }

  else
  {
    *(v2 + 56 + 8 * (a1 >> 6)) &= (-1 << a1) - 1;
  }

  v20 = *(v2 + 16);
  v21 = __OFSUB__(v20, 1);
  result = v20 - 1;
  if (v21)
  {
    BUG();
  }

  *(v2 + 16) = result;
  ++*(v2 + 36);
  return result;
}

uint64_t specialized closure #1 in Sequence<>.uniqued()(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  result = specialized closure #1 in Sequence<>.uniqued()(*a1);
  *v2 = result;
  *(v2 + 8) = v5 & 1;
  return result;
}

{
  return a1;
}

uint64_t lazy protocol witness table accessor for type Int? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Int? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Int? and conformance <A> A?)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Int?);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v1);
    lazy protocol witness table cache variable for type Int? and conformance <A> A? = result;
  }

  return result;
}

uint64_t outlined init with take of DataFrame.Slice?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MLActivityClassifier.DataBatcher.Mode and conformance MLActivityClassifier.DataBatcher.Mode()
{
  result = lazy protocol witness table cache variable for type MLActivityClassifier.DataBatcher.Mode and conformance MLActivityClassifier.DataBatcher.Mode;
  if (!lazy protocol witness table cache variable for type MLActivityClassifier.DataBatcher.Mode and conformance MLActivityClassifier.DataBatcher.Mode)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLActivityClassifier.DataBatcher.Mode, &type metadata for MLActivityClassifier.DataBatcher.Mode);
    lazy protocol witness table cache variable for type MLActivityClassifier.DataBatcher.Mode and conformance MLActivityClassifier.DataBatcher.Mode = result;
  }

  return result;
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  return specialized Sequence.first(where:)(a1, a2, a3);
}

{
  v4 = a3;
  v13 = a1;
  v5 = a3 & 0xFFFFFFFFFFFFF8;
  if ((a3 & 0x4000000000000001) != 0)
  {
    if (a3)
    {
      v5 = a3;
    }

    v6 = _CocoaArrayWrapper.endIndex.getter(v5);
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFF8));
  }

  if (!v6)
  {
    return 0;
  }

  v14 = v6;
  v4;
  v7 = 0;
  v15 = v4;
  while (1)
  {
    if ((v4 & 0xC000000000000003) != 0)
    {
      a2 = v4;
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)(v7, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
      v8;
    }

    if (__OFADD__(1, v7++))
    {
      BUG();
    }

    v12 = v8;
    v10 = v13(&v12);
    if (v3)
    {
      v15, a2;
      v8;
      return v8;
    }

    if (v10)
    {
      break;
    }

    v8;
    v4 = v15;
    if (v7 == v14)
    {
      v15, a2;
      return 0;
    }
  }

  v15, a2;
  return v8;
}

{
  return specialized Sequence.first(where:)(a1, a2, a3);
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(Swift::String *))
{
  v2 = v1;

  v3 = CMLSequence.size.getter();
  if (specialized RandomAccessCollection<>.distance(from:to:)(0, v3))
  {
    v4 = 0;
    while (1)
    {
      CMLSequence.value(at:)(v4);
      if (v2)
      {
        swift_unexpectedError(v2, "CreateML/SequenceType.swift", 27, 1, 76);
        BUG();
      }

      v17 = CMLFeatureValue.stringValue()();
      if (v5)
      {
        v5;

        v16._countAndFlagsBits = 0;
        v16._object = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        v16._object;
        v16._countAndFlagsBits = 0xD000000000000022;
        v16._object = "able.ColumnNames.swift" + 0x8000000000000000;
        v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        object = v12._object;
        String.append(_:)(v12);
        object;
        v14._countAndFlagsBits = 46;
        v14._object = 0xE100000000000000;
        String.append(_:)(v14);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v16._countAndFlagsBits, v16._object, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
        BUG();
      }

      v6 = CMLSequence.size.getter();
      v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

      if (v4 >= v7)
      {
        BUG();
      }

      v16 = v17;
      if (a1(&v16))
      {
        break;
      }

      ++v4;
      *(&v17 + 1);

      v8 = CMLSequence.size.getter();
      v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v8);

      v10 = v4 == v9;
      v2 = 0;
      if (v10)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:

    return 0;
  }

  return v17;
}

uint64_t specialized LazyMapSequence.Iterator.next()()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  if (v3)
  {
LABEL_2:
    v4 = v2;
LABEL_3:
    _BitScanForward64(&v5, v3);
    v6 = (v4 << 10) | (16 * v5);
    v7 = *(v1 + 48);
    v8 = *(v1 + 56);
    v9 = *(v7 + v6);
    v10 = *(v7 + v6 + 8);
    v11 = *(v8 + v6);
    v12 = *(v8 + v6 + 8);
    v0[3] = v4;
    v0[4] = v3 & (v3 - 1);
    v22 = v0[5];
    v13 = v0[6];
    v21[0] = v9;
    v21[1] = v10;
    v21[2] = v11;
    v21[3] = v12;
    v10;
    v12;
    v22(v21);
    v12, v11;
    v10, v11;
    return v21[4];
  }

  v15 = v2 + 1;
  if (__OFADD__(1, v2))
  {
    BUG();
  }

  v16 = (v0[2] + 64) >> 6;
  if (v15 >= v16)
  {
    v18 = v0[3];
  }

  else
  {
    v17 = v0[1];
    v3 = *(v17 + 8 * v15);
    if (v3)
    {
      v4 = v2 + 1;
      goto LABEL_3;
    }

    v18 = v2 + 2;
    if (v2 + 2 >= v16)
    {
      v18 = v2 + 1;
    }

    else
    {
      v3 = *(v17 + 8 * v15 + 8);
      if (v3)
      {
        v4 = v2 + 2;
        goto LABEL_3;
      }

      v4 = v2 + 3;
      if (v2 + 3 < v16)
      {
        v3 = *(v17 + 8 * v15 + 16);
        if (v3)
        {
          goto LABEL_3;
        }

        v19 = v2 + 4;
        v18 = v2 + 3;
        if (v2 + 4 < v16)
        {
          v3 = *(v17 + 8 * v15 + 24);
          if (v3)
          {
LABEL_18:
            v4 = v19;
            goto LABEL_3;
          }

          v4 = v2 + 5;
          v18 = v2 + 4;
          if (v2 + 5 < v16)
          {
            v3 = *(v17 + 8 * v15 + 32);
            if (v3)
            {
              goto LABEL_3;
            }

            v19 = v2 + 6;
            v18 = v2 + 5;
            if (v2 + 6 < v16)
            {
              v3 = *(v17 + 8 * v15 + 40);
              if (v3)
              {
                goto LABEL_18;
              }

              v4 = v2 + 7;
              v18 = v2 + 6;
              if (v2 + 7 < v16)
              {
                v3 = *(v17 + 8 * v15 + 48);
                if (v3)
                {
                  goto LABEL_3;
                }

                v18 = v16 - 1;
                v20 = v2 + 8;
                while (v20 < v16)
                {
                  v3 = *(v17 + 8 * v20++);
                  if (v3)
                  {
                    v2 = v20 - 1;
                    goto LABEL_2;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v0[3] = v18;
  v0[4] = 0;
  return 0;
}

{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  if (v6)
  {
    v25 = v1[2];
    v26 = v3;
    v24 = result;
LABEL_3:
    v7 = v5;
    goto LABEL_4;
  }

  v12 = v5 + 1;
  if (__OFADD__(1, v5))
  {
    BUG();
  }

  v13 = (v4 + 64) >> 6;
  if (v12 >= v13)
  {
    v14 = v1[3];
  }

  else
  {
    v6 = *(v3 + 8 * v12);
    if (v6)
    {
      v25 = v1[2];
      v26 = v3;
      v24 = result;
      v7 = v5 + 1;
LABEL_4:
      _BitScanForward64(&v8, v6);
      v9 = v6 & (v6 - 1);
      v10 = v8 | (v7 << 6);
      LOBYTE(v21) = *(*(v2 + 48) + v10);
      outlined init with copy of Any(*(v2 + 56) + 32 * v10, &v21 + 8);
      v11 = v23;
      result = v24;
      v3 = v26;
      v4 = v25;
      goto LABEL_11;
    }

    v14 = v5 + 2;
    if (v5 + 2 >= v13)
    {
      v14 = v5 + 1;
    }

    else
    {
      v6 = *(v3 + 8 * v12 + 8);
      if (v6)
      {
        v25 = v1[2];
        v26 = v3;
        v24 = result;
        v7 = v5 + 2;
        goto LABEL_4;
      }

      v7 = v5 + 3;
      if (v5 + 3 < v13)
      {
        v6 = *(v3 + 8 * v12 + 16);
        if (v6)
        {
LABEL_20:
          v25 = v1[2];
          v26 = v3;
          v24 = result;
          goto LABEL_4;
        }

        v17 = v5 + 4;
        v14 = v5 + 3;
        if (v5 + 4 < v13)
        {
          v6 = *(v3 + 8 * v12 + 24);
          if (v6)
          {
            v25 = v1[2];
            v26 = v3;
            v24 = result;
LABEL_24:
            v7 = v17;
            goto LABEL_4;
          }

          v7 = v5 + 5;
          v14 = v5 + 4;
          if (v5 + 5 < v13)
          {
            v6 = *(v3 + 8 * v12 + 32);
            if (v6)
            {
              goto LABEL_20;
            }

            v17 = v5 + 6;
            v14 = v5 + 5;
            if (v5 + 6 < v13)
            {
              v25 = v1[2];
              v24 = result;
              v26 = v3;
              v6 = *(v3 + 8 * v12 + 40);
              if (v6)
              {
                goto LABEL_24;
              }

              v7 = v5 + 7;
              v14 = v5 + 6;
              result = v24;
              v3 = v26;
              v4 = v25;
              if (v5 + 7 < v13)
              {
                v6 = *(v26 + 8 * v12 + 48);
                if (v6)
                {
                  goto LABEL_4;
                }

                v14 = v13 - 1;
                v18 = v5 + 8;
                while (v18 < v13)
                {
                  v6 = *(v26 + 8 * v18++);
                  if (v6)
                  {
                    v5 = v18 - 1;
                    goto LABEL_3;
                  }
                }

                result = v24;
                v3 = v26;
                v4 = v25;
              }
            }
          }
        }
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v21 = 0;
  v11 = 0;
  v9 = 0;
  v7 = v14;
LABEL_11:
  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v7;
  v1[4] = v9;
  if (v11)
  {
    v15 = v1[5];
    v16 = v1[6];
    v19[1] = v22;
    v19[0] = v21;
    v20 = v11;
    v15(v19);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for (key: MLProgress.Metric, value: Any));
  }

  else
  {
    *(result + 16) = 0;
    *result = 0;
    *(result + 32) = 0;
  }

  return result;
}

{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  if (v3)
  {
LABEL_2:
    v4 = v2;
LABEL_3:
    _BitScanForward64(&v5, v3);
    v6 = v5 | (v4 << 6);
    v7 = *(*(v1 + 56) + 8 * v6);
    v6 *= 16;
    v8 = *(v1 + 48);
    v9 = *(v8 + v6);
    v10 = *(v8 + v6 + 8);
    v0[3] = v4;
    v0[4] = v3 & (v3 - 1);
    v20 = v0[5];
    v11 = v0[6];
    v19[0] = v9;
    v19[1] = v10;
    v19[2] = v7;
    v10;
    v7;
    v20(v19);
    v7, v6;
    v10, v6;
    return v19[3];
  }

  v13 = v2 + 1;
  if (__OFADD__(1, v2))
  {
    BUG();
  }

  v14 = (v0[2] + 64) >> 6;
  if (v13 >= v14)
  {
    v16 = v0[3];
  }

  else
  {
    v15 = v0[1];
    v3 = *(v15 + 8 * v13);
    if (v3)
    {
      v4 = v2 + 1;
      goto LABEL_3;
    }

    v16 = v2 + 2;
    if (v2 + 2 >= v14)
    {
      v16 = v2 + 1;
    }

    else
    {
      v3 = *(v15 + 8 * v13 + 8);
      if (v3)
      {
        v4 = v2 + 2;
        goto LABEL_3;
      }

      v4 = v2 + 3;
      if (v2 + 3 < v14)
      {
        v3 = *(v15 + 8 * v13 + 16);
        if (v3)
        {
          goto LABEL_3;
        }

        v17 = v2 + 4;
        v16 = v2 + 3;
        if (v2 + 4 < v14)
        {
          v3 = *(v15 + 8 * v13 + 24);
          if (v3)
          {
LABEL_18:
            v4 = v17;
            goto LABEL_3;
          }

          v4 = v2 + 5;
          v16 = v2 + 4;
          if (v2 + 5 < v14)
          {
            v3 = *(v15 + 8 * v13 + 32);
            if (v3)
            {
              goto LABEL_3;
            }

            v17 = v2 + 6;
            v16 = v2 + 5;
            if (v2 + 6 < v14)
            {
              v3 = *(v15 + 8 * v13 + 40);
              if (v3)
              {
                goto LABEL_18;
              }

              v4 = v2 + 7;
              v16 = v2 + 6;
              if (v2 + 7 < v14)
              {
                v3 = *(v15 + 8 * v13 + 48);
                if (v3)
                {
                  goto LABEL_3;
                }

                v16 = v14 - 1;
                v18 = v2 + 8;
                while (v18 < v14)
                {
                  v3 = *(v15 + 8 * v18++);
                  if (v3)
                  {
                    v2 = v18 - 1;
                    goto LABEL_2;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v0[3] = v16;
  v0[4] = 0;
  return 0;
}

uint64_t specialized Conv2D.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t *), uint64_t (*a7)(void, uint64_t), uint64_t (*a8)(_BYTE *, void, void), void (*a9)(void *, uint64_t *), uint64_t (*a10)(uint64_t), uint64_t *a11, uint64_t a12, uint64_t (*a13)(uint64_t *), uint64_t (*a14)(uint64_t *))
{
  v188 = a6;
  v193 = v14;
  v187 = v15;
  v171 = a5;
  v172 = a4;
  v190 = a3;
  v189._countAndFlagsBits = a2;
  v173 = a1;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v168 = v163;
  v176 = type metadata accessor for Parameter(0);
  v184 = *(v176 - 8);
  v19 = *(v184 + 8);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v177 = v163;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v181 = v163;
  v185 = type metadata accessor for TensorShape(0);
  v189._object = *(v185 - 8);
  v24 = *(v189._object + 8);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v175 = v163;
  v27 = alloca(v24);
  v28 = alloca(v24);
  *&v191 = v163;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v192 = type metadata accessor for Tensor(0);
  v180 = *(v192 - 8);
  v31 = *(v180 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v186 = v163;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [Double])>);
  inited = swift_initStackObject(v36, v163);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  *&v182[0] = a2;
  *(&v182[0] + 1) = v190;
  v190;
  v38._countAndFlagsBits = 0x7468676965772ELL;
  v38._object = 0xE700000000000000;
  String.append(_:)(v38);
  *(inited + 32) = v182[0];
  Conv2D.weight.getter();
  Tensor.shape.getter();
  v39 = TensorShape.contiguousSize.getter();
  v40 = *(v189._object + 1);
  v170 = v163;
  v174 = v40;
  v40(v163, v185);
  v167 = v163;
  v41 = v193;
  v42 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v39, v188, v166);
  v189._object = v41;
  v180 = *(v180 + 8);
  v169 = v163;
  (v180)(v163, v192);
  *(inited + 48) = v42;
  *&v182[0] = v189._countAndFlagsBits;
  *(&v182[0] + 1) = v190;
  v190;
  v38._countAndFlagsBits = 0x2E7468676965772ELL;
  v38._object = 0xED00006570616873;
  String.append(_:)(v38);
  v178 = inited;
  *(inited + 56) = v182[0];
  v43 = v186;
  Conv2D.weight.getter();
  Tensor.shape.getter();
  v38._countAndFlagsBits = v43;
  v44 = v185;
  (v180)(v38._countAndFlagsBits, v192);
  v45 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
  v46 = dispatch thunk of Collection.count.getter(v44, v45);
  v193 = v45;
  if (v46)
  {
    v47 = v46;
    v183 = _swiftEmptyArrayStorage;
    v48 = 0;
    if (v46 > 0)
    {
      v48 = v46;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
    v186 = v183;
    dispatch thunk of Collection.startIndex.getter(v44, v193);
    if (v47 < 0)
    {
      BUG();
    }

    v188 = v47;
    v49 = v193;
    v50 = v186;
    v51 = v185;
    do
    {
      v52 = v49;
      v53 = v51;
      v54 = dispatch thunk of Collection.subscript.read(v182, v179, v51, v52);
      v56 = *v55;
      v54(v182, 0);
      v183 = v50;
      v57 = v53;
      v58 = v50[2];
      v59 = v58 + 1;
      if (v50[3] >> 1 <= v58)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v50[3] >= 2uLL, v59, 1);
        v57 = v185;
        v50 = v183;
      }

      v50[2] = v59;
      *&v50[v58 + 4] = v56;
      v60 = v191;
      v61 = v57;
      v49 = v193;
      dispatch thunk of Collection.formIndex(after:)(v179, v57, v193);
      v62 = v188 == (&dword_0 + 1);
      v188 = (v188 - 1);
      v51 = v61;
    }

    while (!v62);
    v63 = v60;
  }

  else
  {
    v50 = _swiftEmptyArrayStorage;
    v63 = v191;
    v51 = v44;
  }

  v174(v63, v51);
  v64 = v178;
  *(v178 + 72) = v50;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  *&v191 = Dictionary.init(dictionaryLiteral:)(v64, &type metadata for String, v65, &protocol witness table for String);
  v66 = v171;
  if (v171 && (v67 = v181, Conv2D.$weight.getter(), v68 = Parameter.id.getter(v64), v69 = *(v184 + 1), (v69)(v67, v176), (v186 = a7(v68, v66)) != 0))
  {
    v181 = v69;
  }

  else
  {
    v70 = v181;
    Conv2D.$weight.getter();
    v71 = a10(0);
    v72 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a11, a10, a12);
    v73 = v173;
    v74 = Layer.parameterKeyPaths(recursively:)(1, v71, v72);
    v75 = alloca(32);
    v76 = alloca(32);
    v164 = v73;
    v165 = v70;
    object = v189._object;
    v78 = specialized Sequence.first(where:)(a14, v163, v74);
    v189._object = object;
    v74;
    v181 = *(v184 + 1);
    (v181)(v70, v176);
    v186 = v78;
    if (!v78)
    {
      v191;
      *&v182[0] = 0;
      *(&v182[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v115._object = "zed in the observation" + 0x8000000000000000;
      v115._countAndFlagsBits = 0xD00000000000001BLL;
      String.append(_:)(v115);
      v115._countAndFlagsBits = v189._countAndFlagsBits;
      v115._object = v190;
      String.append(_:)(v115);
      v115._object = ".optimizer.velocity.shape" + 0x8000000000000000;
      v115._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v115);
      v191 = v182[0];
      v115._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v115._object, 0, 0);
      *v116 = v191;
      *(v116 + 16) = 0;
      *(v116 + 32) = 0;
      *(v116 + 48) = 2;
      return swift_willThrow(&type metadata for MLCreateError, v115._object);
    }
  }

  *&v182[0] = v189._countAndFlagsBits;
  *(&v182[0] + 1) = v190;
  v190;
  v79._countAndFlagsBits = 0x7468676965772ELL;
  v79._object = 0xE700000000000000;
  String.append(_:)(v79);
  v80 = *(&v182[0] + 1);
  v81 = a8(v186, *&v182[0], *(&v182[0] + 1));
  v80;
  v82 = v191;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v191);
  *&v182[0] = v82;
  v84 = v189._object;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v81, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v182);
  v189._object = *&v182[0];
  v85 = v168;
  Conv2D.$bias.getter();
  v86 = v176;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v85, 1, v176);
  v188 = v84;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v85, &demangling cache variable for type metadata for Parameter?);
LABEL_34:
    *&v182[0] = v189._countAndFlagsBits;
    *(&v182[0] + 1) = v190;
    v190;
    v139._countAndFlagsBits = 0x736564697274732ELL;
    v139._object = 0xE800000000000000;
    String.append(_:)(v139);
    v192 = *(&v182[0] + 1);
    v193 = *&v182[0];
    *&v191 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
    v140 = swift_allocObject(v191, 48, 7);
    *(v140 + 16) = 2;
    *(v140 + 24) = 4;
    *(v140 + 32) = Conv2D.stride.getter();
    Conv2D.stride.getter();
    *(v140 + 40) = v141;
    v142 = v189._object;
    v143 = swift_isUniquelyReferenced_nonNull_native(v189._object);
    *&v182[0] = v142;
    v144 = v192;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v140, v193, v192, v143);
    v144;
    v193 = *&v182[0];
    countAndFlagsBits = v189._countAndFlagsBits;
    *&v182[0] = v189._countAndFlagsBits;
    *(&v182[0] + 1) = v190;
    v190;
    v139._countAndFlagsBits = 0x676E69646461702ELL;
    v139._object = 0xE800000000000000;
    String.append(_:)(v139);
    v146 = *(&v182[0] + 1);
    v192 = *&v182[0];
    v147 = swift_allocObject(v191, 48, 7);
    *(v147 + 16) = 2;
    *(v147 + 24) = 4;
    *(v147 + 32) = Conv2D.padding.getter();
    Conv2D.padding.getter();
    *(v147 + 40) = v148;
    v149 = v193;
    v150 = swift_isUniquelyReferenced_nonNull_native(v193);
    *&v182[0] = v149;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v147, v192, v146, v150);
    v146;
    v193 = *&v182[0];
    *&v182[0] = countAndFlagsBits;
    v151 = v190;
    *(&v182[0] + 1) = v190;
    v190;
    v139._countAndFlagsBits = 0x6F6974616C69642ELL;
    v139._object = 0xEA0000000000736ELL;
    String.append(_:)(v139);
    v152 = *(&v182[0] + 1);
    v192 = *&v182[0];
    v153 = swift_allocObject(v191, 48, 7);
    *(v153 + 16) = 2;
    *(v153 + 24) = 4;
    *(v153 + 32) = Conv2D.dilation.getter();
    Conv2D.dilation.getter();
    *(v153 + 40) = v154;
    v155 = v193;
    v156 = swift_isUniquelyReferenced_nonNull_native(v193);
    *&v182[0] = v155;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v153, v192, v152, v156);
    v152;
    v193 = *&v182[0];
    *&v182[0] = v189._countAndFlagsBits;
    *(&v182[0] + 1) = v151;
    v151;
    v139._object = 0xEB00000000746E75;
    v139._countAndFlagsBits = 0x6F4370756F72672ELL;
    String.append(_:)(v139);
    v157 = *(&v182[0] + 1);
    v192 = *&v182[0];
    v158 = swift_allocObject(v191, 40, 7);
    *(v158 + 16) = 1;
    *(v158 + 24) = 2;
    *(v158 + 32) = Conv2D.groupCount.getter();
    v159 = v193;
    v160 = swift_isUniquelyReferenced_nonNull_native(v193);
    *&v182[0] = v159;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v158, v192, v157, v160);

    v157;
    return *&v182[0];
  }

  (*(v184 + 4))(v177, v85, v86);
  *&v182[0] = v189._countAndFlagsBits;
  *(&v182[0] + 1) = v190;
  v190;
  v88._countAndFlagsBits = 0x736169622ELL;
  v88._object = 0xE500000000000000;
  String.append(_:)(v88);
  v178 = *(&v182[0] + 1);
  *&v191 = *&v182[0];
  v89 = v169;
  Parameter.value.getter();
  v90 = v170;
  Tensor.shape.getter();
  v91 = TensorShape.contiguousSize.getter();
  v174(v90, v185);
  v92 = alloca(24);
  v93 = alloca(32);
  v164 = v89;
  v94 = v188;
  v95 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v91, a9, v163);
  v184 = v94;
  (v180)(v89, v192);
  v96 = v189._object;
  v97 = swift_isUniquelyReferenced_nonNull_native(v189._object);
  *&v182[0] = v96;
  v98 = v178;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v95, v191, v178, v97);
  v98;
  v189._object = *&v182[0];
  *&v182[0] = v189._countAndFlagsBits;
  *(&v182[0] + 1) = v190;
  v190;
  v88._countAndFlagsBits = 0x68732E736169622ELL;
  v88._object = 0xEB00000000657061;
  String.append(_:)(v88);
  v180 = *(&v182[0] + 1);
  v178 = *&v182[0];
  Parameter.shape.getter();
  v99 = v193;
  v100 = dispatch thunk of Collection.count.getter(v185, v193);
  if (v100)
  {
    v183 = _swiftEmptyArrayStorage;
    v103 = 0;
    if (v100 > 0)
    {
      v103 = v100;
    }

    *&v191 = v100;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v103, 0);
    v188 = v183;
    v104 = v185;
    dispatch thunk of Collection.startIndex.getter(v185, v99);
    v105 = v191;
    if (v191 < 0)
    {
      BUG();
    }

    v106 = v193;
    v107 = v188;
    do
    {
      *&v191 = v105;
      v108 = dispatch thunk of Collection.subscript.read(v182, v179, v104, v106);
      v192 = *v109;
      v108(v182, 0);
      v183 = v107;
      v110 = v106;
      v111 = v107[2];
      v112 = v111 + 1;
      v113 = v107;
      if (v107[3] >> 1 <= v111)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v107[3] >= 2uLL, v112, 1);
        v110 = v193;
        v113 = v183;
      }

      v188 = v113;
      v114 = v192;
      v113[2] = v112;
      *&v113[v111 + 4] = v114;
      v106 = v110;
      dispatch thunk of Collection.formIndex(after:)(v179, v104, v110);
      v105 = v191 - 1;
      v102 = v179;
      v107 = v188;
    }

    while (v191 != 1);
  }

  else
  {
    v107 = _swiftEmptyArrayStorage;
  }

  (v174)(v175, v185, v101, v102);
  v118 = v189._object;
  v119 = swift_isUniquelyReferenced_nonNull_native(v189._object);
  *&v182[0] = v118;
  v120 = v180;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v107, v178, v180, v119);
  v120;
  *&v191 = *&v182[0];
  v121 = v171;
  v122 = v177;
  if (v171)
  {
    v123 = Parameter.id.getter(v120);
    v124 = a7(v123, v121);
    if (v124)
    {
      v125 = v124;
LABEL_33:
      *&v182[0] = v189._countAndFlagsBits;
      *(&v182[0] + 1) = v190;
      v190;
      v133._countAndFlagsBits = 0x736169622ELL;
      v133._object = 0xE500000000000000;
      String.append(_:)(v133);
      v134 = *(&v182[0] + 1);
      v135 = a8(v125, *&v182[0], *(&v182[0] + 1));
      v134;
      v136 = v191;
      v137 = swift_isUniquelyReferenced_nonNull_native(v191);
      *&v182[0] = v136;
      v138 = v184;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v135, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v137, v182);
      v188 = v138;

      v189._object = *&v182[0];
      (v181)(v177, v176);
      goto LABEL_34;
    }
  }

  v126 = a10(0);
  v127 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a11, a10, a12);
  v128 = v173;
  v129 = Layer.parameterKeyPaths(recursively:)(1, v126, v127);
  v130 = alloca(32);
  v131 = alloca(32);
  v164 = v128;
  v165 = v122;
  v132 = v184;
  v125 = specialized Sequence.first(where:)(a13, v163, v129);
  v129;
  if (v125)
  {
    v184 = v132;
    goto LABEL_33;
  }

  *&v182[0] = 0;
  *(&v182[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v161._object = "zed in the observation" + 0x8000000000000000;
  v161._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v161);
  v161._countAndFlagsBits = v189._countAndFlagsBits;
  v161._object = v190;
  String.append(_:)(v161);
  v161._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v161);
  v191 = v182[0];
  v161._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v161._object, 0, 0);
  *v162 = v191;
  *(v162 + 16) = 0;
  *(v162 + 32) = 0;
  *(v162 + 48) = 2;
  swift_willThrow(&type metadata for MLCreateError, v161._object);

  return (v181)(v177, v176);
}

uint64_t specialized LSTM.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t), uint64_t (*a7)(uint64_t, void, void), uint64_t (*a8)(uint64_t), uint64_t *a9, uint64_t a10, uint64_t (*a11)(uint64_t *), uint64_t (*a12)(uint64_t *))
{
  v172 = a6;
  v195 = v12;
  v171 = a4;
  v194 = a3;
  v196._countAndFlagsBits = a2;
  v173 = a1;
  v165 = type metadata accessor for TensorShape(0);
  v166 = *(v165 - 8);
  v15 = *(v166 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v181 = &v153;
  v182 = type metadata accessor for Parameter(0);
  v183 = *(v182 - 8);
  v18 = *(v183 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v196._object = &v153;
  v177 = type metadata accessor for Tensor(0);
  v170 = *(v177 - 8);
  v21 = *(v170 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v178 = &v153;
  v175 = type metadata accessor for LayerState(0);
  v176 = *(v175 - 8);
  v24 = *(v176 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v184 = &v153;
  v199 = _swiftEmptyDictionarySingleton;
  v27 = type metadata accessor for LSTM(0);
  v180 = v13;
  v28 = Layer.namedParameterKeyPaths(recursively:)(1, v27, &protocol witness table for LSTM);
  v163 = *(v28 + 16);
  v169 = a5;
  if (v163)
  {
    v168 = v27;
    v164 = v28 + 32;
    v167 = "r key path for layer " + 0x8000000000000000;
    v29 = 0;
    object = v196._object;
    v174 = v28;
    do
    {
      if (v29 >= *(v28 + 16))
      {
        BUG();
      }

      v185 = v29;
      v31 = *(v164 + 24 * v29);
      v32 = *(v164 + 24 * v29 + 8);
      v33 = *(v164 + 24 * v29 + 16);
      swift_retain_n(v33, 2);
      v32;
      swift_getAtKeyPath(v180, v33);
      v188 = v33;
      v34 = v33;

      v35 = v178;
      Parameter.value.getter(v34);
      v190[0] = v31;
      v36 = v31;
      v37 = object;
      v189 = v32;
      v38 = v32;
      v39 = v169;
      Dictionary<>.updateValue(tensor:forKey:prefix:)(v35, v36, v38, v196._countAndFlagsBits, v194);
      v162 = *(v170 + 8);
      v162(v35, v177);
      if (v39 && (v40 = Parameter.id.getter(v35), (v41 = v172(v40, v39)) != 0))
      {
        v42 = v41;
      }

      else
      {
        v43 = a8(0);
        v44 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a9, a8, a10);
        v45 = v173;
        v46 = Layer.parameterKeyPaths(recursively:)(1, v43, v44);
        v47 = alloca(32);
        v48 = alloca(32);
        *(&v154 + 1) = v45;
        *&v155 = v37;
        v49 = v195;
        v50 = specialized Sequence.first(where:)(a12, &v153, v46);
        v195 = v49;
        v46;
        if (!v50)
        {
          v174;
          v199;
          v190[1] = 0;
          v190[2] = 0xE000000000000000;
          _StringGuts.grow(_:)(52);
          v142._countAndFlagsBits = 0xD000000000000025;
          String.append(_:)(v142);
          v142._countAndFlagsBits = v196._countAndFlagsBits;
          v142._object = v194;
          String.append(_:)(v142);
          v142._countAndFlagsBits = 0x74656D6172617020;
          v142._object = 0xEB00000000207265;
          String.append(_:)(v142);
          v142._countAndFlagsBits = v190[0];
          v143 = v189;
          v142._object = v189;
          String.append(_:)(v142);
          v200 = *&v190[1];
          v142._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          v144 = swift_allocError(&type metadata for MLCreateError, v142._object, 0, 0);
          *v145 = v200;
          *(v145 + 16) = 0;
          *(v145 + 32) = 0;
          *(v145 + 48) = 0;
          v143;
          v195 = v144;
          swift_willThrow(v143, v142._object);

          v146 = v196._object;
          v147 = v182;
          v148 = v183;
          return (*(v148 + 8))(v146, v147);
        }

        v42 = v50;
      }

      ++v185;
      v190[1] = v196._countAndFlagsBits;
      v190[2] = v194;
      v194;
      v51._countAndFlagsBits = 46;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);
      v51._countAndFlagsBits = v190[0];
      v51._object = v189;
      String.append(_:)(v51);
      v52 = v190[2];
      v186 = v42;
      v53 = a7(v42, v190[1], v190[2]);
      v52;
      v54 = v199;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v199);
      v200._countAndFlagsBits = v54;
      v197 = v54;
      specialized LazyMapSequence.makeIterator()(v53, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0);
      v193 = v157;
      v192 = v156;
      v191 = v155;
      *&v190[1] = v154;
      v179 = v53;
      v56 = v53;
      v53;
      while (1)
      {
        v57 = specialized LazyMapSequence.Iterator.next()(v56);
        if (!v58)
        {
          break;
        }

        v198 = v59;
        v187 = v57;
        v201 = v58;
        countAndFlagsBits = v200._countAndFlagsBits;
        v62 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v58);
        v63 = (v61 & 1) == 0;
        v64 = __OFADD__(*(countAndFlagsBits + 16), v63);
        v56 = *(countAndFlagsBits + 16) + v63;
        if (v64)
        {
          BUG();
        }

        v65 = v61;
        if (*(countAndFlagsBits + 24) >= v56)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
            _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, isUniquelyReferenced_nonNull_native);
          v56 = v187;
          v66 = v201;
          v62 = specialized __RawDictionaryStorage.find<A>(_:)(v187, v201);
          LOBYTE(v69) = v69 & 1;
          if ((v65 & 1) != v69)
          {
LABEL_60:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v66, v69, v67, v68);
            BUG();
          }
        }

        v70 = v197;
        v200._countAndFlagsBits = v197;
        if (v65)
        {
          v71 = *(*(v197 + 56) + 8 * v62);
          v71;
          v201;
          v198;
          v72 = v70[7];
          v56 = *(v72 + 8 * v62);
          v56;
          *(v72 + 8 * v62) = v71;
          isUniquelyReferenced_nonNull_native = 1;
        }

        else
        {
          *(v197 + 8 * (v62 >> 6) + 64) |= 1 << v62;
          v73 = v70[6];
          v74 = 16 * v62;
          *(v73 + v74) = v187;
          *(v73 + v74 + 8) = v201;
          *(v70[7] + 8 * v62) = v198;
          v75 = v70[2];
          v64 = __OFADD__(1, v75);
          v76 = v75 + 1;
          if (v64)
          {
            BUG();
          }

          v70[2] = v76;
          isUniquelyReferenced_nonNull_native = 1;
        }
      }

      v179;
      outlined consume of [String : [Double]].Iterator._Variant(v190[1]);

      v199 = v200._countAndFlagsBits;
      v77._countAndFlagsBits = 0x6E65727275636572;
      v77._object = 0xEF74686769655774;
      v78 = v189;
      v79 = String.hasSuffix(_:)(v77);
      v78;
      if (v79)
      {
        v80 = v178;
        Parameter.value.getter(v78);
        Tensor.shape.getter();
        v162(v80, v177);
        v81 = TensorShape.dimensions.getter();
        v82 = *(v81 + 16);
        v81;
        v83 = 0;
        v84 = 0x3FF0000000000000;
        if (v82 != 3)
        {
          v84 = 0;
        }

        v200._countAndFlagsBits = v84;
        LOBYTE(v83) = v82 == 3;
        v85 = TensorShape.subscript.getter(v83 + 1);
        v190[1] = v196._countAndFlagsBits;
        v86 = v194;
        v190[2] = v194;
        v194;
        v87._countAndFlagsBits = 0x756F4374696E752ELL;
        v87._object = 0xEA0000000000746ELL;
        String.append(_:)(v87);
        v88 = v190[2];
        v198 = v190[1];
        v201 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
        v89 = swift_allocObject(v201, 40, 7);
        *(v89 + 16) = 1;
        *(v89 + 24) = 2;
        *(v89 + 32) = v85;
        v90 = v199;
        v91 = swift_isUniquelyReferenced_nonNull_native(v199);
        v190[1] = v90;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, v198, v88, v91);
        v88;
        v198 = v190[1];
        v190[1] = 0;
        v190[2] = 0xE000000000000000;
        _StringGuts.grow(_:)(18);
        v92 = v190[2];
        v86;
        v92;
        v190[1] = v196._countAndFlagsBits;
        v190[2] = v86;
        v87._countAndFlagsBits = 0xD000000000000010;
        v87._object = v167;
        String.append(_:)(v87);
        v93 = *&v190[1];
        v94 = swift_allocObject(v201, 40, 7);
        v94[2] = 1;
        v94[3] = 2;
        v94[4] = v200._countAndFlagsBits;
        v95 = v198;
        v96 = swift_isUniquelyReferenced_nonNull_native(v198);
        v190[1] = v95;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, v93, *(&v93 + 1), v96);

        *(&v93 + 1);
        v200._countAndFlagsBits = v190[1];
        v199 = v190[1];
        (*(v166 + 8))(v181, v165);
        object = v196._object;
        (*(v183 + 8))(v196._object, v182);
      }

      else
      {
        object = v196._object;
        (*(v183 + 8))(v196._object, v182);
      }

      v29 = v185;
      v28 = v174;
    }

    while (v185 != v163);
    v174;
    v27 = v168;
  }

  else
  {
    v200._countAndFlagsBits = _swiftEmptyDictionarySingleton;
    v28;
  }

  v97 = Layer.namedLayerStateKeyPaths(recursively:)(1, v27, &protocol witness table for LSTM);
  v186 = v97[2];
  if (!v186)
  {
    v97;
    return v200._countAndFlagsBits;
  }

  v179 = v97 + 4;
  v98 = 0;
  v196._object = v97;
  while (1)
  {
    if (v98 >= v97[2])
    {
      BUG();
    }

    v189 = v98;
    v200._countAndFlagsBits = v179[3 * v98];
    v99 = v179[3 * v98 + 1];
    v100 = v179[3 * v98 + 2];
    swift_retain_n(v100, 2);
    v99;
    swift_getAtKeyPath(v180, v100);
    v190[0] = v100;
    v101 = v100;

    v102 = v178;
    LayerState.value.getter(v101);
    v201 = v99;
    Dictionary<>.updateValue(tensor:forKey:prefix:)(v102, v200._countAndFlagsBits, v99, v196._countAndFlagsBits, v194);
    (*(v170 + 8))(v102, v177);
    v103 = v169;
    if (v169)
    {
      v104 = LayerState.id.getter();
      v105 = v172(v104, v103);
      if (v105)
      {
        v106 = v105;
        goto LABEL_36;
      }
    }

    v107 = LayerState.id.getter();
    v108 = a8(0);
    v109 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a9, a8, a10);
    v110 = v173;
    v111 = Layer.parameterKeyPaths(recursively:)(1, v108, v109);
    v112 = alloca(28);
    v113 = alloca(32);
    *(&v154 + 1) = v110;
    LODWORD(v155) = v107;
    v114 = v195;
    v115 = specialized Sequence.first(where:)(a11, &v153, v111);
    v195 = v114;
    v116 = v111;
    v106 = v115;
    v116;
    if (!v106)
    {
      break;
    }

LABEL_36:
    v117 = v201;
    v118 = v200._countAndFlagsBits;
    ++v189;
    v190[1] = v196._countAndFlagsBits;
    v190[2] = v194;
    v194;
    v119._countAndFlagsBits = 46;
    v119._object = 0xE100000000000000;
    String.append(_:)(v119);
    v119._countAndFlagsBits = v118;
    v119._object = v117;
    String.append(_:)(v119);
    v117;
    v120 = v190[2];
    v185 = v106;
    v121 = a7(v106, v190[1], v190[2]);
    v120;
    v122 = v199;
    LOBYTE(v201) = swift_isUniquelyReferenced_nonNull_native(v199);
    v200._countAndFlagsBits = v122;
    v197 = v122;
    specialized LazyMapSequence.makeIterator()(v121, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0);
    v193 = v161;
    v192 = v160;
    v191 = v159;
    *&v190[1] = v158;
    v188 = v121;
    v123 = v121;
    v121;
    while (1)
    {
      v124 = specialized LazyMapSequence.Iterator.next()(v123);
      if (!v125)
      {
        break;
      }

      v127 = v125;
      v198 = v126;
      v187 = v124;
      v128 = v200._countAndFlagsBits;
      v130 = specialized __RawDictionaryStorage.find<A>(_:)(v124, v125);
      v131 = (v129 & 1) == 0;
      v64 = __OFADD__(*(v128 + 16), v131);
      v123 = *(v128 + 16) + v131;
      if (v64)
      {
        BUG();
      }

      v132 = v129;
      if (*(v128 + 24) >= v123)
      {
        if ((v201 & 1) == 0)
        {
          v123 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v123, v201);
        v123 = v187;
        v66 = v127;
        v130 = specialized __RawDictionaryStorage.find<A>(_:)(v187, v127);
        LOBYTE(v69) = v69 & 1;
        if ((v132 & 1) != v69)
        {
          goto LABEL_60;
        }
      }

      v133 = v197;
      v200._countAndFlagsBits = v197;
      if (v132)
      {
        v134 = *(*(v197 + 56) + 8 * v130);
        v134;
        v127;
        v198;
        v135 = v133[7];
        v123 = *(v135 + 8 * v130);
        v123;
        *(v135 + 8 * v130) = v134;
        LOBYTE(v201) = 1;
      }

      else
      {
        *(v197 + 8 * (v130 >> 6) + 64) |= 1 << v130;
        v136 = v133[6];
        v137 = 16 * v130;
        *(v136 + v137) = v187;
        *(v136 + v137 + 8) = v127;
        *(v133[7] + 8 * v130) = v198;
        v138 = v133[2];
        v64 = __OFADD__(1, v138);
        v139 = v138 + 1;
        if (v64)
        {
          BUG();
        }

        v133[2] = v139;
        LOBYTE(v201) = 1;
      }
    }

    v188;
    outlined consume of [String : [Double]].Iterator._Variant(v190[1]);

    v140 = v200._countAndFlagsBits;
    v199 = v200._countAndFlagsBits;
    (*(v176 + 8))(v184, v175);
    v98 = v189;
    v97 = v196._object;
    if (v189 == v186)
    {
      v196._object;
      return v140;
    }
  }

  v196._object;
  v199;
  v190[1] = 0;
  v190[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v149._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v149);
  v149._countAndFlagsBits = v196._countAndFlagsBits;
  v149._object = v194;
  String.append(_:)(v149);
  v149._countAndFlagsBits = 0x74656D6172617020;
  v149._object = 0xEB00000000207265;
  String.append(_:)(v149);
  v149._countAndFlagsBits = v200._countAndFlagsBits;
  v150 = v201;
  v149._object = v201;
  String.append(_:)(v149);
  v200 = *&v190[1];
  v149._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v151 = swift_allocError(&type metadata for MLCreateError, v149._object, 0, 0);
  *v152 = v200;
  *(v152 + 16) = 0;
  *(v152 + 32) = 0;
  *(v152 + 48) = 0;
  v150;
  v195 = v151;
  swift_willThrow(v150, v149._object);

  v146 = v184;
  v147 = v175;
  v148 = v176;
  return (*(v148 + 8))(v146, v147);
}