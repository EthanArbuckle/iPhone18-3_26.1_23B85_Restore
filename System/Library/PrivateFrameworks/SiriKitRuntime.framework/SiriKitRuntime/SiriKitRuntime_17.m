uint64_t UsoTask.hasCarPlayCannedDialog.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v16 - v2;
  if (UsoTask.verbString.getter() == 1852141679 && v4 == 0xE400000000000000)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (one-time initialization token for kAppNameMatches != -1)
  {
    swift_once();
  }

  if (UsoTask.firstAppContaining(names:)(static CarCommandsAffinityScorer.kAppNameMatches))
  {

    v6 = 1;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of UsoTask.hasCarPlayCannedDialog.getter);
  outlined destroy of String(&unk_1F5824D68);
  UsoTask.firstSettingMatch(on:)(v7, v3);

  v8 = type metadata accessor for SpanProperty();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v10 = 0;
  }

  else
  {
    v11 = SpanProperty.valueString.getter();
    v13 = v12;
    (*(v9 + 8))(v3, v8);
    if (v13)
    {
      if (v11 == 0x61635F7075746573 && v13 == 0xED000079616C7072)
      {

        v10 = 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return (v6 | v10) & 1;
}

uint64_t CarCommandsAffinityScoringData.hasFullyAttachedNamesNodeWithoutUnattachedSettingSpan.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  if (*v0)
  {
    return 0;
  }

  if (v0[16] != 1)
  {
    return 1;
  }

  v6 = type metadata accessor for CarCommandsAffinityScoringData();
  outlined init with copy of ReferenceResolutionClientProtocol?(&v0[*(v6 + 28)], v4, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v7 = type metadata accessor for SpanProperty();
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  return v8;
}

uint64_t CarCommandsAffinityScorer.floatSettingPotentiallyMatchingVolume(task:)@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for SpanProperty();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of CarCommandsAffinityScorer.floatSettingPotentiallyMatchingVolume(task:));
  outlined destroy of String(&unk_1F5824E18);
  UsoTask.firstSettingMatch(on:)(v11, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
LABEL_9:
    v16 = 1;
    return (*(v7 + 56))(a1, v16, 1, v6);
  }

  v12 = *(v7 + 32);
  v12(v10, v5, v6);
  v13 = SpanProperty.valueString.getter();
  if (!v14)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for kFloatSettingValuesForVolume != -1)
  {
    v18 = v13;
    v19 = v14;
    swift_once();
    v13 = v18;
    v14 = v19;
  }

  v15 = specialized Set.contains(_:)(v13, v14, static CarCommandsAffinityScorer.kFloatSettingValuesForVolume);

  if ((v15 & 1) == 0)
  {
LABEL_8:
    (*(v7 + 8))(v10, v6);
    goto LABEL_9;
  }

  v12(a1, v10, v6);
  v16 = 0;
  return (*(v7 + 56))(a1, v16, 1, v6);
}

uint64_t UsoTask.firstSettingMatch(on:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = UsoTask.arguments.getter();
  if (!*(v4 + 16))
  {
    goto LABEL_12;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = *(*(v4 + 56) + 8 * v5);

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = dispatch thunk of UsoValue.getAsEntity()();

  if (v10)
  {
    type metadata accessor for UsoEntity_common_Setting();

    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v16)
    {
      v11 = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();
      if (v11)
      {
        Array<A>.firstSpanPropertyWithKeyMatchingAny(values:)(a1, v11, a2);
      }

      else
      {
        v15 = type metadata accessor for SpanProperty();
        (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
      }
    }

    else
    {

      v14 = type metadata accessor for SpanProperty();
      return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
    }
  }

LABEL_13:
  v12 = type metadata accessor for SpanProperty();
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, 1, 1, v12);
}

BOOL CarCommandsAffinityScoringData.hasUnmatchedSettingSpan.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v5 = type metadata accessor for CarCommandsAffinityScoringData();
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + *(v5 + 28), v4, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v6 = type metadata accessor for SpanProperty();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) == 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  return v7;
}

Swift::Int CarCommandsAffinityScoringData.NamesNodeAttachmentType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

uint64_t UsoTask.namesNodeAttachmentInfo()()
{
  v107 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v100 = *(v107 - 8);
  v0 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v102 = &v99 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  v2 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v99 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v99 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v99 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v108 = &v99 - v15;
  v16 = type metadata accessor for SpanProperty();
  v140 = *(v16 - 8);
  v141 = v16;
  v17 = *(v140 + 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v116 = &v99 - v22;
  v23 = type metadata accessor for UsoEntitySpan();
  v133 = *(v23 - 8);
  v24 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v109 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v128 = &v99 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v99 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v122 = (&v99 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v135 = &v99 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v115 = &v99 - v36;
  v37 = UsoTask.userEntityNamesNodes()();
  v101 = v37 >> 62;
  if (v37 >> 62)
  {
    goto LABEL_86;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
LABEL_87:

    return 4;
  }

LABEL_3:
  v39 = 0;
  v114 = v37 & 0xC000000000000001;
  v117 = v37 & 0xFFFFFFFFFFFFFF8;
  v99 = v37;
  v113 = v37 + 32;
  v130 = v133 + 16;
  v136 = (v140 + 8);
  v137 = (v140 + 16);
  v129 = (v133 + 32);
  v124 = (v133 + 8);
  v111 = (v133 + 56);
  v110 = (v133 + 48);
  v118 = MEMORY[0x1E69E7CC0];
  v103 = v11;
  v123 = v23;
  v138 = v19;
  v119 = v7;
  v125 = v30;
  v112 = v38;
  while (1)
  {
    if (v114)
    {
      v79 = v39;
      v37 = MEMORY[0x1E12A1FE0](v39, v99);
      v121 = v37;
      v41 = __OFADD__(v79, 1);
      v11 = v79 + 1;
      if (v41)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v39 >= *(v117 + 16))
      {
        goto LABEL_84;
      }

      v121 = *(v113 + 8 * v39);
      v40 = v39;

      v41 = __OFADD__(v40, 1);
      v11 = v40 + 1;
      if (v41)
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        v97 = v37;
        v98 = __CocoaSet.count.getter();
        v37 = v97;
        v38 = v98;
        if (!v98)
        {
          goto LABEL_87;
        }

        goto LABEL_3;
      }
    }

    v120 = v11;
    v42 = UsoEntity.entitySpans.getter();
    v127 = *(v42 + 16);
    if (v127)
    {
      break;
    }

    v44 = MEMORY[0x1E69E7CC0];
LABEL_38:

    v64 = v44;
    v65 = *(v44 + 16);
    v7 = v119;
    if (v65)
    {
      v66 = v64 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
      v67 = *(v133 + 16);
      v68 = v67(v122, v66, v23);
      if (v65 != 1)
      {
        v73 = 1;
        while (1)
        {
          v74 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            break;
          }

          v75 = v133;
          v67(v30, v66 + *(v133 + 72) * v73, v23);
          v76 = v122;
          v77 = closure #1 in UsoTask.namesNodeAttachmentInfo()(v30, v122);
          v78 = *(v75 + 8);
          if (v77)
          {
            v78(v76, v23);
            v68 = (*v129)(v76, v30, v23);
          }

          else
          {
            v68 = (v78)(v30, v23);
          }

          ++v73;
          if (v74 == v65)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_81:
        outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
        return 1;
      }

LABEL_40:
      v11 = v116;
      (*v129)(v116, v122, v23);
      (*v111)(v11, 0, 1, v23);

      v19 = v138;
      v7 = v119;
    }

    else
    {
      v11 = v116;
      (*v111)(v116, 1, 1, v23);
    }

    if ((*v110)(v11, 1, v23) == 1)
    {
      v37 = outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    }

    else
    {
      v69 = *v129;
      (*v129)(v115, v11, v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
      }

      v71 = *(v118 + 2);
      v70 = *(v118 + 3);
      v11 = (v71 + 1);
      if (v71 >= v70 >> 1)
      {
        v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v70 > 1, v71 + 1, 1, v118);
      }

      v72 = v118;
      *(v118 + 2) = v11;
      v37 = v69(&v72[((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v71], v115, v23);
    }

    v39 = v120;
    if (v120 == v112)
    {
      v141 = *(v118 + 2);
      if (!v141)
      {
        goto LABEL_61;
      }

      if (!v101)
      {
        v80 = *(v117 + 16);
        goto LABEL_64;
      }

LABEL_63:
      v80 = __CocoaSet.count.getter();
LABEL_64:

      if (v141 < v80)
      {
        return 2;
      }

      v82 = 0;
      v140 = &v118[(*(v133 + 80) + 32) & ~*(v133 + 80)];
      v83 = (v100 + 56);
      LODWORD(v139) = *MEMORY[0x1E69D1B60];
      v138 = (v100 + 104);
      v19 = (v100 + 48);
      v132 = (v100 + 32);
      v135 = (v100 + 8);
      v30 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR;
      v11 = v104;
      v136 = (v100 + 56);
      v137 = (v100 + 48);
      while (2)
      {
        if (v82 >= *(v118 + 2))
        {
          goto LABEL_85;
        }

        (*(v133 + 16))(v109, &v140[*(v133 + 72) * v82], v23);
        UsoEntitySpan.payloadAttachmentInfo.getter();
        v84 = type metadata accessor for PayloadAttachmentInfo();
        v85 = *(v84 - 8);
        if ((*(v85 + 48))(v7, 1, v84) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
          v86 = v108;
          v87 = v107;
          (*v83)(v108, 1, 1, v107);
        }

        else
        {
          v88 = v108;
          PayloadAttachmentInfo.attachmentType.getter();
          v89 = v7;
          v86 = v88;
          (*(v85 + 8))(v89, v84);
          v87 = v107;
        }

        (*v138)(v11, v139, v87);
        (*v83)(v11, 0, 1, v87);
        v90 = *(v106 + 48);
        v91 = v105;
        outlined init with copy of ReferenceResolutionClientProtocol?(v86, v105, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v11, v91 + v90, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
        v19 = v137;
        v92 = *v137;
        if ((*v137)(v91, 1, v87) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v86, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
          v23 = v123;
          (*v124)(v109, v123);
          v59 = v92(v91 + v90, 1, v87) == 1;
          v68 = v91;
          if (v59)
          {
            goto LABEL_81;
          }

LABEL_68:
          v37 = outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
        }

        else
        {
          v93 = v103;
          outlined init with copy of ReferenceResolutionClientProtocol?(v91, v103, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
          if (v92(v91 + v90, 1, v87) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v108, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
            v23 = v123;
            (*v124)(v109, v123);
            (*v135)(v93, v87);
            v68 = v91;
            goto LABEL_68;
          }

          v94 = v102;
          (*v132)(v102, v91 + v90, v87);
          lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType();
          LODWORD(v134) = dispatch thunk of static Equatable.== infix(_:_:)();
          v95 = *v135;
          v96 = v94;
          v11 = v104;
          (*v135)(v96, v87);
          outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v108, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
          v19 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd;
          v23 = v123;
          (*v124)(v109, v123);
          v95(v93, v87);
          v37 = outlined destroy of ReferenceResolutionClientProtocol?(v91, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
          if (v134)
          {
            return 1;
          }
        }

        ++v82;
        v7 = v119;
        v83 = v136;
        if (v141 == v82)
        {
          return 0;
        }

        continue;
      }
    }
  }

  v43 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  v126 = v42;
LABEL_14:
  if (v43 >= *(v42 + 16))
  {
    __break(1u);
    goto LABEL_63;
  }

  v134 = v44;
  v132 = ((*(v133 + 80) + 32) & ~*(v133 + 80));
  v131 = *(v133 + 72);
  (*(v133 + 16))(v135, v132 + v42 + v131 * v43, v23);
  v45 = UsoEntitySpan.properties.getter();
  v46 = v45;
  v47 = *(v45 + 16);
  if (!v47)
  {

LABEL_12:
    v44 = v134;
    (*v124)(v135, v23);
    v30 = v125;
    goto LABEL_13;
  }

  v48 = 0;
  v139 = v45 + ((v140[80] + 32) & ~v140[80]);
  while (v48 < *(v46 + 16))
  {
    (*(v140 + 2))(v19, v139 + *(v140 + 9) * v48, v141);
    if (one-time initialization token for kUserEntityNamespaceMatches != -1)
    {
      swift_once();
    }

    v49 = static CarCommandsAffinityScorer.kUserEntityNamespaceMatches;
    v50 = SpanProperty.key.getter();
    v52 = v51;
    if (*(v49 + 16))
    {
      v53 = v50;
      v54 = *(v49 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v55 = Hasher._finalize()();
      v56 = -1 << *(v49 + 32);
      v7 = v55 & ~v56;
      if ((*(v49 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
      {
        v57 = ~v56;
        while (1)
        {
          v58 = (*(v49 + 48) + 16 * v7);
          v59 = *v58 == v53 && v58[1] == v52;
          if (v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v7 = (v7 + 1) & v57;
          if (((*(v49 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v19 = v138;
        (*v136)(v138, v141);
        v60 = *v129;
        v23 = v123;
        (*v129)(v128, v135, v123);
        v44 = v134;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v142 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 16) + 1, 1);
          v44 = v142;
        }

        v30 = v125;
        v63 = *(v44 + 16);
        v62 = *(v44 + 24);
        if (v63 >= v62 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v63 + 1, 1);
          v44 = v142;
        }

        *(v44 + 16) = v63 + 1;
        v60(v132 + v44 + v63 * v131, v128, v23);
LABEL_13:
        v42 = v126;
        if (++v43 == v127)
        {
          goto LABEL_38;
        }

        goto LABEL_14;
      }
    }

LABEL_17:
    ++v48;
    v19 = v138;
    (*v136)(v138, v141);

    if (v48 == v47)
    {

      v23 = v123;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_61:

  return 3;
}

uint64_t UsoTask.settingSpanInfo()(uint64_t a1)
{
  v2 = UsoTask.arguments.getter();
  if (!*(v2 + 16))
  {
    goto LABEL_13;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = *(*(v2 + 56) + 8 * v3);

  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v6 = *(v5 + 32);
  }

  v7 = dispatch thunk of UsoValue.getAsEntity()();

  if (v7)
  {
    type metadata accessor for UsoEntity_common_Setting();

    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v11)
    {
      v8 = UsoTask.settingSpans()();
      if (v8)
      {
        v5 = v8;
        if (one-time initialization token for kSettingsNamespaceMatches == -1)
        {
LABEL_12:
          Array<A>.firstSpanPropertyWithKeyMatchingAny(values:)(static CarCommandsAffinityScorer.kSettingsNamespaceMatches, v5, a1);

          return 1;
        }

LABEL_22:
        swift_once();
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  v10 = type metadata accessor for SpanProperty();
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  return 0;
}

uint64_t UsoTask.firstUserEntityMatch(on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = UsoTask.userEntityNamesNodes()();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12A1FE0](v5, v3);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v9 = UsoEntity.entitySpans.getter();

      v10 = *(v9 + 16);
      v11 = v6[2];
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v12 <= v6[3] >> 1)
      {
        if (*(v9 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v6);
        if (*(v9 + 16))
        {
LABEL_18:
          v15 = (v6[3] >> 1) - v6[2];
          v16 = *(type metadata accessor for UsoEntitySpan() - 8);
          if (v15 < v10)
          {
            goto LABEL_28;
          }

          v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
          v18 = *(v16 + 72);
          swift_arrayInitWithCopy();

          if (v10)
          {
            v19 = v6[2];
            v20 = __OFADD__(v19, v10);
            v21 = v19 + v10;
            if (v20)
            {
              goto LABEL_29;
            }

            v6[2] = v21;
          }

          goto LABEL_5;
        }
      }

      if (v10)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v5;
      if (v8 == i)
      {
        goto LABEL_32;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v7 = *(v3 + 8 * v5 + 32);

    v8 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_32:

  Array<A>.firstSpanPropertyWithKeyValueMatchingAny(identifiers:)(a1, v6, a2);
}

uint64_t UsoTask.userEntityNamesNodes()()
{
  v0 = UsoTask.arguments.getter();
  if (!*(v0 + 16))
  {
    goto LABEL_17;
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x69746E4572657375, 0xEC00000073656974);
  if ((v2 & 1) == 0)
  {
    goto LABEL_17;
  }

  v3 = *(*(v0 + 56) + 8 * v1);

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_17:

    return MEMORY[0x1E69E7CC0];
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_26:
      result = __CocoaSet.count.getter();
      if (result)
      {
        goto LABEL_13;
      }

LABEL_20:

      v11 = 0;
      goto LABEL_21;
    }

    v4 = *(v3 + 32);
  }

  v5 = dispatch thunk of UsoValue.getAsEntity()();

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = UsoEntity.attributes.getter();
  if (!*(v6 + 16))
  {
    goto LABEL_20;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x80000001DCA7DFB0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_20;
  }

  v0 = *(*(v6 + 56) + 8 * v7);

  if (v0 >> 62)
  {
    goto LABEL_26;
  }

  if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((v0 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v0);
    goto LABEL_16;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v0 + 32);

LABEL_16:

    v11 = dispatch thunk of UsoValue.getAsEntity()();

LABEL_21:

    v13 = closure #1 in UsoTask.userEntityNamesNodes()(v12);

    v14 = closure #1 in UsoTask.userEntityNamesNodes()(v11);
    specialized Array.append<A>(contentsOf:)(v14);

    return v13;
  }

  __break(1u);
  return result;
}

BOOL closure #1 in UsoTask.namesNodeAttachmentInfo()(uint64_t a1, void (*a2)(_BYTE *, uint64_t, void *))
{
  v67 = a2;
  v66 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v69 = *(v66 - 1);
  v2 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v58[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  v4 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v64 = &v58[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v61 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v58[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v58[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v71 = &v58[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v58[-v29];
  UsoEntitySpan.payloadAttachmentInfo.getter();
  v31 = type metadata accessor for PayloadAttachmentInfo();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v15, 1, v31);
  v70 = v30;
  if (v34 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
    v35 = v69;
    v36 = v30;
    v37 = v66;
    (*(v69 + 56))(v36, 1, 1, v66);
  }

  else
  {
    PayloadAttachmentInfo.attachmentType.getter();
    (*(v32 + 8))(v15, v31);
    v35 = v69;
    v37 = v66;
  }

  UsoEntitySpan.payloadAttachmentInfo.getter();
  if (v33(v12, 1, v31) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
    (*(v35 + 56))(v71, 1, 1, v37);
  }

  else
  {
    PayloadAttachmentInfo.attachmentType.getter();
    (*(v32 + 8))(v12, v31);
  }

  v38 = *MEMORY[0x1E69D1B60];
  v67 = *(v35 + 104);
  v67(v25, v38, v37);
  v66 = *(v35 + 56);
  (v66)(v25, 0, 1, v37);
  v39 = *(v68 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v70, v8, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v25, &v8[v39], &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v40 = *(v35 + 48);
  if (v40(v8, 1, v37) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    if (v40(&v8[v39], 1, v37) != 1)
    {
LABEL_18:
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
      goto LABEL_19;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
LABEL_12:
    v25 = v63;
    v67(v63, *MEMORY[0x1E69D1B58], v37);
    (v66)(v25, 0, 1, v37);
    v47 = *(v68 + 48);
    v8 = v64;
    outlined init with copy of ReferenceResolutionClientProtocol?(v71, v64, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v25, &v8[v47], &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    if (v40(v8, 1, v37) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      if (v40(&v8[v47], 1, v37) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
LABEL_24:
        v52 = 0;
        v51 = v70;
        goto LABEL_25;
      }

      goto LABEL_18;
    }

    v48 = v40;
    v49 = v61;
    outlined init with copy of ReferenceResolutionClientProtocol?(v8, v61, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    v50 = v48;
    if (v48(&v8[v47], 1, v37) == 1)
    {
      v41 = v49;
      v40 = v50;
      goto LABEL_17;
    }

    v53 = v69;
    v54 = &v8[v47];
    v55 = v62;
    (*(v69 + 32))(v62, v54, v37);
    lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType();
    LODWORD(v68) = dispatch thunk of static Equatable.== infix(_:_:)();
    v56 = *(v53 + 8);
    v56(v55, v37);
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    v56(v49, v37);
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    v40 = v48;
    if (v68)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v41 = v65;
  outlined init with copy of ReferenceResolutionClientProtocol?(v8, v65, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  if (v40(&v8[v39], 1, v37) == 1)
  {
LABEL_17:
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    (*(v69 + 8))(v41, v37);
    goto LABEL_18;
  }

  v42 = v69;
  v43 = *(v69 + 32);
  v60 = v40;
  v44 = v62;
  v43(v62, &v8[v39], v37);
  lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType();
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v42 + 8);
  v46 = v44;
  v40 = v60;
  v45(v46, v37);
  outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v45(v65, v37);
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  if (v59)
  {
    goto LABEL_12;
  }

LABEL_19:
  v51 = v70;
  v52 = v40(v70, 1, v37) != 1 || v40(v71, 1, v37) == 1;
LABEL_25:
  outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v71, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  return v52;
}

uint64_t UsoTask.settingSpans()()
{
  v0 = UsoTask.arguments.getter();
  if (!*(v0 + 16))
  {
    goto LABEL_11;
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  v3 = *(*(v0 + 56) + 8 * v1);

  if (v3 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:

    return 0;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = dispatch thunk of UsoValue.getAsEntity()();

  if (v6)
  {
    type metadata accessor for UsoEntity_common_Setting();

    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v8)
    {
      v7 = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();

      return v7;
    }
  }

  return 0;
}

void Array<A>.firstSpanAlternativeWithKeyContainingAny(of:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v42 = a1;
  v43 = type metadata accessor for AsrAlternative();
  v48 = *(v43 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for UsoEntitySpan();
  v7 = *(*(v47 - 8) + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v47);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v15 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v44 = *(v13 + 56);
    v45 = (v13 - 8);
    v46 = v14;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = v6;
      v18 = v47;
      v19 = v13;
      v46(v11, v15, v47, v9);
      v20 = UsoEntitySpan.alternatives.getter();
      (*v45)(v11, v18);
      v21 = *(v20 + 16);
      v22 = v16[2];
      v23 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v23 <= v16[3] >> 1)
      {
        if (*(v20 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v22 <= v23)
        {
          v25 = v22 + v21;
        }

        else
        {
          v25 = v22;
        }

        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25, 1, v16);
        if (*(v20 + 16))
        {
LABEL_14:
          if ((v16[3] >> 1) - v16[2] < v21)
          {
            goto LABEL_29;
          }

          v26 = (*(v48 + 80) + 32) & ~*(v48 + 80);
          v27 = *(v48 + 72);
          swift_arrayInitWithCopy();

          v6 = v17;
          if (v21)
          {
            v28 = v16[2];
            v29 = __OFADD__(v28, v21);
            v30 = v28 + v21;
            if (v29)
            {
              goto LABEL_31;
            }

            v16[2] = v30;
          }

          goto LABEL_4;
        }
      }

      v6 = v17;
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_4:
      v15 += v44;
      --v12;
      v13 = v19;
      if (!v12)
      {
        goto LABEL_19;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v31 = v16[2];
  v33 = v42;
  v32 = v43;
  if (v31)
  {
    v34 = 0;
    v35 = (v48 + 8);
    while (v34 < v16[2])
    {
      v36 = (*(v48 + 16))(v6, v16 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v34, v32, v9);
      MEMORY[0x1EEE9AC00](v36);
      *(&v40 - 2) = v6;
      if (specialized Sequence.contains(where:)(partial apply for closure #1 in closure #2 in Array<A>.firstSpanAlternativeWithKeyContainingAny(of:), (&v40 - 4), v33))
      {

        v39 = v41;
        (*(v48 + 32))(v41, v6, v32);
        v38 = v39;
        v37 = 0;
        goto LABEL_26;
      }

      ++v34;
      (*v35)(v6, v32);
      if (v31 == v34)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_30;
  }

LABEL_24:

  v37 = 1;
  v38 = v41;
LABEL_26:
  (*(v48 + 56))(v38, v37, 1, v32);
}

void Array<A>.firstSpanPropertyWithKeyMatchingAny(values:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a1;
  v52 = a3;
  v4 = type metadata accessor for SpanProperty();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for UsoEntitySpan();
  v7 = *(*(v59 - 8) + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v59);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v15 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v57 = *(v13 + 56);
    v58 = v14;
    v16 = (v13 - 8);
    v17 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v18 = v59;
      v19 = v13;
      v58(v11, v15, v59, v9);
      v20 = UsoEntitySpan.properties.getter();
      (*v16)(v11, v18);
      v21 = *(v20 + 16);
      v22 = v17[2];
      v23 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v23 <= v17[3] >> 1)
      {
        if (*(v20 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v22 <= v23)
        {
          v25 = v22 + v21;
        }

        else
        {
          v25 = v22;
        }

        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25, 1, v17);
        if (*(v20 + 16))
        {
LABEL_14:
          if ((v17[3] >> 1) - v17[2] < v21)
          {
            goto LABEL_39;
          }

          v26 = (*(v55 + 80) + 32) & ~*(v55 + 80);
          v27 = *(v55 + 72);
          swift_arrayInitWithCopy();

          if (v21)
          {
            v28 = v17[2];
            v29 = __OFADD__(v28, v21);
            v30 = v28 + v21;
            if (v29)
            {
              goto LABEL_40;
            }

            v17[2] = v30;
          }

          goto LABEL_4;
        }
      }

      if (v21)
      {
        goto LABEL_38;
      }

LABEL_4:
      v15 += v57;
      --v12;
      v13 = v19;
      if (!v12)
      {
        goto LABEL_19;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v31 = v17[2];
  if (v31)
  {
    v32 = 0;
    v34 = v55;
    v33 = v56;
    v59 = v17 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v35 = v54 + 7;
    v36 = (v55 + 8);
    while (v32 < v17[2])
    {
      (*(v34 + 16))(v53, v59 + *(v34 + 72) * v32, v33, v9);
      v37 = SpanProperty.key.getter();
      v39 = v38;
      if (v54[2])
      {
        v40 = v37;
        v41 = v54;
        v42 = v54[5];
        Hasher.init(_seed:)();
        String.hash(into:)();
        v43 = Hasher._finalize()();
        v44 = -1 << *(v41 + 32);
        v45 = v43 & ~v44;
        if ((*(v35 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
        {
          v46 = ~v44;
          while (1)
          {
            v47 = (v54[6] + 16 * v45);
            v48 = *v47 == v40 && v47[1] == v39;
            if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v45 = (v45 + 1) & v46;
            if (((*(v35 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v34 = v55;
          v33 = v56;
          v49 = v52;
          (*(v55 + 32))(v52, v53, v56);
          v50 = 0;
          goto LABEL_35;
        }
      }

LABEL_21:
      ++v32;

      v33 = v56;
      (*v36)(v53, v56);
      v34 = v55;
      if (v32 == v31)
      {

        v50 = 1;
        v49 = v52;
        goto LABEL_35;
      }
    }

    goto LABEL_41;
  }

  v50 = 1;
  v49 = v52;
  v34 = v55;
  v33 = v56;
LABEL_35:
  (*(v34 + 56))(v49, v50, 1, v33);
}

uint64_t UsoTask.firstAppContaining(names:)(void *a1)
{
  v2 = type metadata accessor for SpanProperty();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v54 - v9;
  v11 = type metadata accessor for UsoEntitySpan();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = UsoTask.arguments.getter();
  if (!*(v16 + 16))
  {
    goto LABEL_13;
  }

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  if (v19 >> 62)
  {
    goto LABEL_64;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    return 0;
  }

LABEL_5:
  v60 = a1;
  if ((v19 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      return result;
    }

    v21 = *(v19 + 32);
  }

  v22 = dispatch thunk of UsoValue.getAsEntity()();

  if (!v22)
  {
    return 0;
  }

  type metadata accessor for UsoEntity_common_App();

  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v65)
  {
    v57 = v65;
    v23 = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();
    if (v23)
    {
      v54[1] = v22;
      v55 = v10;
      v58 = v6;
      v59 = v2;
      v61 = v3;
      v2 = *(v23 + 16);
      v56 = v23;
      if (v2)
      {
        v25 = *(v12 + 16);
        v24 = v12 + 16;
        v26 = v23 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
        v62 = *(v24 + 56);
        v63 = v25;
        v64 = v24;
        v3 = v24 - 8;
        a1 = MEMORY[0x1E69E7CC0];
        (v25)(v15, v26, v11);
        while (1)
        {
          v6 = UsoEntitySpan.properties.getter();
          (*v3)(v15, v11);
          v19 = *(v6 + 2);
          v12 = a1[2];
          v10 = (v12 + v19);
          if (__OFADD__(v12, v19))
          {
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            result = __CocoaSet.count.getter();
            if (!result)
            {
              goto LABEL_13;
            }

            goto LABEL_5;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v10 <= a1[3] >> 1)
          {
            if (!*(v6 + 2))
            {
              goto LABEL_16;
            }
          }

          else
          {
            if (v12 <= v10)
            {
              v28 = v12 + v19;
            }

            else
            {
              v28 = v12;
            }

            a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v28, 1, a1);
            if (!*(v6 + 2))
            {
LABEL_16:

              if (v19)
              {
                goto LABEL_61;
              }

              goto LABEL_17;
            }
          }

          if ((a1[3] >> 1) - a1[2] < v19)
          {
            goto LABEL_62;
          }

          v29 = (*(v61 + 80) + 32) & ~*(v61 + 80);
          v30 = *(v61 + 72);
          swift_arrayInitWithCopy();

          if (v19)
          {
            v31 = a1[2];
            v32 = __OFADD__(v31, v19);
            v33 = v31 + v19;
            if (v32)
            {
              goto LABEL_63;
            }

            a1[2] = v33;
          }

LABEL_17:
          v26 += v62;
          if (!--v2)
          {
            goto LABEL_35;
          }

          (v63)(v15, v26, v11);
        }
      }

      a1 = MEMORY[0x1E69E7CC0];
LABEL_35:

      v64 = a1[2];
      if (v64)
      {
        v34 = 0;
        v3 = v61;
        v35 = a1 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
        v2 = v59;
        v36 = v60 + 7;
        v62 = v61 + 16;
        v63 = (v61 + 8);
        while (1)
        {
          if (v34 >= a1[2])
          {
            goto LABEL_68;
          }

          v37 = v58;
          (*(v3 + 16))(v58, &v35[*(v3 + 72) * v34], v2);
          v38 = SpanProperty.valueString.getter();
          if (v39)
          {
            break;
          }

LABEL_38:
          ++v34;
          result = (*v63)(v37, v2);
          if (v34 == v64)
          {

            goto LABEL_58;
          }
        }

        v40 = v38;
        v41 = v39;
        if (SpanProperty.key.getter() == 0x656D614E707061 && v42 == 0xE700000000000000)
        {
        }

        else
        {
          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v43 & 1) == 0)
          {
LABEL_37:

            v3 = v61;
            v37 = v58;
            goto LABEL_38;
          }
        }

        if (v60[2])
        {
          v44 = v60;
          v45 = v60[5];
          Hasher.init(_seed:)();
          String.hash(into:)();
          v46 = Hasher._finalize()();
          v47 = -1 << *(v44 + 32);
          v48 = v46 & ~v47;
          if ((*(v36 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
          {
            v49 = ~v47;
            while (1)
            {
              v50 = (v60[6] + 16 * v48);
              v51 = *v50 == v40 && v41 == v50[1];
              if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v48 = (v48 + 1) & v49;
              if (((*(v36 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            v52 = v61;
            v53 = v55;
            (*(v61 + 32))(v55, v58, v2);
            (*(v52 + 56))(v53, 0, 1, v2);
            outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
            return v57;
          }
        }

        goto LABEL_37;
      }

      v2 = v59;
      v3 = v61;
LABEL_58:
      v10 = v55;
    }

    else
    {
    }

    (*(v3 + 56))(v10, 1, 1, v2);
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  }

  else
  {
  }

  return 0;
}

void Array<A>.firstSpanPropertyWithKeyValueMatchingAny(identifiers:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v42 = a1;
  v43 = type metadata accessor for SpanProperty();
  v48 = *(v43 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for UsoEntitySpan();
  v7 = *(*(v47 - 8) + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v47);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v15 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v44 = *(v13 + 56);
    v45 = (v13 - 8);
    v46 = v14;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = v6;
      v18 = v47;
      v19 = v13;
      v46(v11, v15, v47, v9);
      v20 = UsoEntitySpan.properties.getter();
      (*v45)(v11, v18);
      v21 = *(v20 + 16);
      v22 = v16[2];
      v23 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v23 <= v16[3] >> 1)
      {
        if (*(v20 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v22 <= v23)
        {
          v25 = v22 + v21;
        }

        else
        {
          v25 = v22;
        }

        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25, 1, v16);
        if (*(v20 + 16))
        {
LABEL_14:
          if ((v16[3] >> 1) - v16[2] < v21)
          {
            goto LABEL_29;
          }

          v26 = (*(v48 + 80) + 32) & ~*(v48 + 80);
          v27 = *(v48 + 72);
          swift_arrayInitWithCopy();

          v6 = v17;
          if (v21)
          {
            v28 = v16[2];
            v29 = __OFADD__(v28, v21);
            v30 = v28 + v21;
            if (v29)
            {
              goto LABEL_31;
            }

            v16[2] = v30;
          }

          goto LABEL_4;
        }
      }

      v6 = v17;
      if (v21)
      {
        goto LABEL_28;
      }

LABEL_4:
      v15 += v44;
      --v12;
      v13 = v19;
      if (!v12)
      {
        goto LABEL_19;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v31 = v16[2];
  v33 = v42;
  v32 = v43;
  if (v31)
  {
    v34 = 0;
    v35 = (v48 + 8);
    while (v34 < v16[2])
    {
      v36 = (*(v48 + 16))(v6, v16 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v34, v32, v9);
      MEMORY[0x1EEE9AC00](v36);
      *(&v40 - 2) = v6;
      if (specialized Sequence.contains(where:)(partial apply for closure #1 in closure #2 in Array<A>.firstSpanPropertyWithKeyValueMatchingAny(identifiers:), (&v40 - 4), v33))
      {

        v39 = v41;
        (*(v48 + 32))(v41, v6, v32);
        v38 = v39;
        v37 = 0;
        goto LABEL_26;
      }

      ++v34;
      (*v35)(v6, v32);
      if (v31 == v34)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_30;
  }

LABEL_24:

  v37 = 1;
  v38 = v41;
LABEL_26:
  (*(v48 + 56))(v38, v37, 1, v32);
}

uint64_t closure #1 in UsoTask.userEntityNamesNodes()(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (a1)
  {

    v2 = UsoEntity.attributes.getter();
    if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x73656D616ELL, 0xE500000000000000), (v4 & 1) != 0))
    {
      v5 = *(*(v2 + 56) + 8 * v3);

      v14 = v1;
      if (v5 >> 62)
      {
LABEL_23:
        v6 = __CocoaSet.count.getter();
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = 0;
      while (v6 != v7)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }
        }

        v10 = dispatch thunk of UsoValue.getAsEntity()();

        ++v7;
        if (v10)
        {
          MEMORY[0x1E12A1680](v11);
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = v14;
          v7 = v9;
        }
      }
    }

    else
    {
    }
  }

  return v1;
}

uint64_t closure #1 in closure #2 in Array<A>.firstSpanPropertyWithKeyValueMatchingAny(identifiers:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (!v3)
  {
    if (v1 == SpanProperty.key.getter() && v2 == v10)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v4 = a1[2];
  if (v1 == SpanProperty.key.getter() && v2 == v5)
  {

    v8 = SpanProperty.valueString.getter();
    if (v9)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = SpanProperty.valueString.getter();
  if (!v9)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v8 && v3 == v9)
  {
LABEL_18:

    return 1;
  }

LABEL_19:
  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v13 & 1;
}

uint64_t closure #1 in closure #2 in Array<A>.firstSpanAlternativeWithKeyContainingAny(of:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  AsrAlternative.value.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.contains<A>(_:)();

  return v3 & 1;
}

uint64_t type metadata accessor for CarCommandsAffinityScoringData()
{
  result = type metadata singleton initialization cache for CarCommandsAffinityScoringData;
  if (!type metadata singleton initialization cache for CarCommandsAffinityScoringData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized CarCommandsAffinityScorer.isAmbiguousTemperatureRequest(task:)()
{
  v1 = type metadata accessor for SpanProperty();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UsoEntitySpan();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v45 - v11;
  if (UsoTask.verbString.getter() == 0x757361654D746573 && v12 == 0xEE00746E656D6572)
  {
    goto LABEL_3;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_5;
  }

  v0 = 0xD000000000000015;
  if (UsoTask.verbString.getter() == 0xD000000000000015 && 0x80000001DCA7DF50 == v28)
  {
    goto LABEL_3;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_5;
  }

  if (UsoTask.verbString.getter() == 0xD000000000000015 && 0x80000001DCA7DF70 == v30)
  {
LABEL_3:
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_5:
  v14 = UsoTask.arguments.getter();
  if (!*(v14 + 16))
  {
    goto LABEL_25;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D6572757361656DLL, 0xEB00000000746E65);
  if ((v16 & 1) == 0)
  {
    goto LABEL_25;
  }

  v17 = *(*(v14 + 56) + 8 * v15);

  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_25:

    return 0;
  }

LABEL_64:
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_25;
  }

LABEL_9:
  if ((v17 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v18 = *(v17 + 32);
  }

  v19 = dispatch thunk of UsoValue.getAsEntity()();

  if (!v19)
  {
    return 0;
  }

  type metadata accessor for UsoEntity_common_Measurement();

  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  v20 = v63;
  if (!v63)
  {
LABEL_62:

    return 0;
  }

  v21 = dispatch thunk of UsoEntity_common_Measurement.components.getter();
  if (!v21)
  {
LABEL_57:

    goto LABEL_62;
  }

  v17 = v21;
  v49 = v20;
  v50 = v19;
  v0 = v21 & 0xFFFFFFFFFFFFFF8;
  if (!(v21 >> 62))
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = __CocoaSet.count.getter();
  if (!result)
  {
LABEL_70:

    goto LABEL_25;
  }

LABEL_17:
  if ((v17 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v17);
LABEL_20:

    dispatch thunk of CodeGenListEntry.entry.getter();

    v24 = v63;
    if (v63)
    {
      v25 = dispatch thunk of UsoEntity_common_MeasurementComponent.unit.getter();
      if (v25)
      {
        v17 = v25;
        v45 = v24;
        v26 = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();

        if (v26)
        {
          v55 = *(v26 + 16);
          if (v55)
          {
            v27 = 0;
            v54 = v7 + 16;
            v59 = 0x80000001DCA7DF90;
            v62 = v2 + 16;
            v0 = v2 + 8;
            v46 = (v7 + 32);
            v48 = (v7 + 8);
            v47 = MEMORY[0x1E69E7CC0];
            v52 = v7;
            v53 = v6;
            v51 = v26;
            while (1)
            {
              if (v27 >= *(v26 + 16))
              {
                goto LABEL_68;
              }

              v57 = (*(v7 + 80) + 32) & ~*(v7 + 80);
              v58 = v27;
              v56 = *(v7 + 72);
              v17 = v61;
              (*(v7 + 16))(v61, v26 + v57 + v56 * v27, v6);
              v32 = UsoEntitySpan.properties.getter();
              v33 = v32;
              v34 = *(v32 + 16);
              if (!v34)
              {
LABEL_34:

                v6 = v53;
                (*v48)(v61, v53);
                goto LABEL_35;
              }

              v6 = 0;
              v7 = v32 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
              while (1)
              {
                if (v6 >= *(v33 + 16))
                {
                  __break(1u);
                  goto LABEL_64;
                }

                (*(v2 + 16))(v5, v7 + *(v2 + 72) * v6, v1);
                if (SpanProperty.key.getter() == 0x6D6572757361656DLL && v35 == 0xEF74696E55746E65)
                {
                }

                else
                {
                  v17 = v35;
                  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v36 & 1) == 0)
                  {
                    goto LABEL_39;
                  }
                }

                v17 = v5;
                v37 = SpanProperty.valueString.getter();
                if (!v38)
                {
LABEL_39:
                  (*v0)(v5, v1);
                  goto LABEL_40;
                }

                if (v37 == 0xD000000000000015 && v38 == v59)
                {
                  break;
                }

                v17 = v38;
                v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

                (*v0)(v5, v1);
                if (v39)
                {
                  goto LABEL_52;
                }

LABEL_40:
                if (v34 == ++v6)
                {
                  goto LABEL_34;
                }
              }

              (*v0)(v5, v1);
LABEL_52:

              v40 = *v46;
              v6 = v53;
              (*v46)(v60, v61, v53);
              v17 = v47;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v63 = v17;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1);
                v17 = v63;
              }

              v43 = *(v17 + 16);
              v42 = *(v17 + 24);
              if (v43 >= v42 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1);
                v17 = v63;
              }

              *(v17 + 16) = v43 + 1;
              v47 = v17;
              v40((v17 + v57 + v43 * v56), v60, v6);
LABEL_35:
              v27 = v58 + 1;
              v26 = v51;
              v7 = v52;
              if (v58 + 1 == v55)
              {

                v44 = v47[2];

                return v44 != 0;
              }
            }
          }
        }

        else
        {
        }

        goto LABEL_62;
      }
    }

    goto LABEL_57;
  }

  if (*(v0 + 16))
  {
    v23 = *(v17 + 32);

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t specialized UsoTask.isValidRadioParse(namespaces:)()
{
  if (UsoTask.verbString.getter() == 2036427888 && v0 == 0xE400000000000000)
  {
    goto LABEL_3;
  }

  v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v1 & 1) == 0)
  {
    if (UsoTask.verbString.getter() == 7628147 && v5 == 0xE300000000000000)
    {
      goto LABEL_3;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      goto LABEL_5;
    }

    if (UsoTask.verbString.getter() == 1851876211 && v7 == 0xE400000000000000)
    {
LABEL_3:

      goto LABEL_5;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      if (UsoTask.verbString.getter() != 0x656C62616E65 || v9 != 0xE600000000000000)
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v3 = 0;
        if ((v10 & 1) == 0)
        {
          return v3 & 1;
        }

        goto LABEL_5;
      }

      goto LABEL_3;
    }
  }

LABEL_5:
  if (UsoTask.baseEntityAsString.getter() == 0xD000000000000013 && 0x80000001DCA7DF30 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

uint64_t specialized CarCommandsAffinityScorer.hasHighProbabilityMatch(on:with:in:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CarCommandsAffinityScoringData();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v31 - v12;
  if (*a1)
  {
    return 0;
  }

  if (a1[16] == 1)
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(&a1[*(v6 + 28)], v13, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v15 = type metadata accessor for SpanProperty();
    v16 = (*(*(v15 - 8) + 48))(v13, 1, v15);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    if (v16 == 1)
    {
      return 0;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  outlined init with copy of CarCommandsAffinityScoringData(a1, v9);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31[2] = a3;
    v32 = v21;
    *v20 = 136315394;
    v31[1] = a2;

    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v32);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = *(v9 + 1);
    v26 = type metadata accessor for UsoEntitySpan();
    v27 = MEMORY[0x1E12A16D0](v25, v26);
    v29 = v28;
    outlined destroy of CarCommandsAffinityScoringData(v9);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v32);

    *(v20 + 14) = v30;
    _os_log_impl(&dword_1DC659000, v18, v19, "%s found basic carCommandsUserEntityNoun match (%s)", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v21, -1, -1);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  else
  {

    outlined destroy of CarCommandsAffinityScoringData(v9);
  }

  return 1;
}

uint64_t specialized CarCommandsAffinityScorer.hasMediumProbabilityMatch(on:with:)(unsigned __int8 *a1, uint64_t a2, NSObject *a3)
{
  v65 = a2;
  v66 = a3;
  v4 = type metadata accessor for SpanProperty();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62[-v13];
  v15 = type metadata accessor for CarCommandsAffinityScoringData();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v62[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62[-v24];
  v26 = *a1;
  if (v26 == 4)
  {
    if (a1[16] == 1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(&a1[*(v15 + 28)], v22, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
      if ((*(v5 + 48))(v22, 1, v4) != 1)
      {
        (*(v5 + 32))(v14, v22, v4);
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logger.executor);
        v45 = *(v5 + 16);
        v45(v11, v14, v4);
        v46 = v66;

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v63 = v48;
          v50 = v49;
          v64 = swift_slowAlloc();
          v68 = v46;
          v69 = v64;
          *v50 = 136315394;
          v67 = v65;

          v51 = String.init<A>(describing:)();
          v66 = v47;
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v69);

          *(v50 + 4) = v53;
          *(v50 + 12) = 2080;
          v45(v8, v11, v4);
          v54 = String.init<A>(describing:)();
          v56 = v55;
          v57 = *(v5 + 8);
          v57(v11, v4);
          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v69);

          *(v50 + 14) = v58;
          v59 = v66;
          _os_log_impl(&dword_1DC659000, v66, v63, "%s found basic setting match (%s)", v50, 0x16u);
          v60 = v64;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v60, -1, -1);
          MEMORY[0x1E12A2F50](v50, -1, -1);

          v57(v14, v4);
        }

        else
        {

          v61 = *(v5 + 8);
          v61(v11, v4);
          v61(v14, v4);
        }

        return 1;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    }

    return 0;
  }

  if (v26 != 1)
  {
    return 0;
  }

  if (a1[16] == 1)
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(&a1[*(v15 + 28)], &v62[-v24], &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v27 = (*(v5 + 48))(v25, 1, v4);
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    if (v27 == 1)
    {
      return 0;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.executor);
  outlined init with copy of CarCommandsAffinityScoringData(a1, v18);
  v29 = v66;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v68 = v29;
    v69 = v33;
    *v32 = 136315394;
    v67 = v65;

    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v69);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = *(v18 + 1);
    v38 = type metadata accessor for UsoEntitySpan();
    v39 = MEMORY[0x1E12A16D0](v37, v38);
    v41 = v40;
    outlined destroy of CarCommandsAffinityScoringData(v18);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v69);

    *(v32 + 14) = v42;
    _os_log_impl(&dword_1DC659000, v30, v31, "%s found carCommandsUserEntityNoun with partial attachment (%s)", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v33, -1, -1);
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  else
  {

    outlined destroy of CarCommandsAffinityScoringData(v18);
  }

  return 1;
}

uint64_t specialized CarCommandsAffinityScorer.hasLowProbabilityMatch(on:with:in:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = *a2;
  if (v13 == 2)
  {
    return 1;
  }

  if (v13 == 1)
  {
    if (a2[16] == 1)
    {
      v19 = type metadata accessor for CarCommandsAffinityScoringData();
      outlined init with copy of ReferenceResolutionClientProtocol?(&a2[*(v19 + 28)], v9, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
      v20 = type metadata accessor for SpanProperty();
      v16 = 1;
      v17 = (*(*(v20 - 8) + 48))(v9, 1, v20);
      v18 = v9;
LABEL_8:
      outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
      if (v17 == 1)
      {
        return v16;
      }
    }
  }

  else if (!*a2 && a2[16] == 1)
  {
    v14 = type metadata accessor for CarCommandsAffinityScoringData();
    outlined init with copy of ReferenceResolutionClientProtocol?(&a2[*(v14 + 28)], v12, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v15 = type metadata accessor for SpanProperty();
    v16 = 1;
    v17 = (*(*(v15 - 8) + 48))(v12, 1, v15);
    v18 = v12;
    goto LABEL_8;
  }

  v21 = type metadata accessor for CarCommandsAffinityScoringData();
  outlined init with copy of ReferenceResolutionClientProtocol?(&a2[*(v21 + 28)], v6, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v22 = type metadata accessor for SpanProperty();
  v16 = 1;
  v23 = (*(*(v22 - 8) + 48))(v6, 1, v22);
  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  if (v23 == 1)
  {
    SiriEnvironment.currentDevice.getter();
    v24 = dispatch thunk of CurrentDevice.supportsVehicleData.getter();

    if ((v24 & 1) == 0)
    {
      return 0;
    }

    if (UsoTask.verbString.getter() != 0x77726F4670696B73 || v25 != 0xEB00000000647261)
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        return v16;
      }

      if (UsoTask.verbString.getter() != 0x6B63614270696B73 || v27 != 0xEC00000064726177)
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v28)
        {
          return v16;
        }

        return 0;
      }
    }
  }

  return v16;
}

uint64_t outlined destroy of CarCommandsAffinityScoringData(uint64_t a1)
{
  v2 = type metadata accessor for CarCommandsAffinityScoringData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CarCommandsAffinityScoringData.NamesNodeAttachmentType and conformance CarCommandsAffinityScoringData.NamesNodeAttachmentType()
{
  result = lazy protocol witness table cache variable for type CarCommandsAffinityScoringData.NamesNodeAttachmentType and conformance CarCommandsAffinityScoringData.NamesNodeAttachmentType;
  if (!lazy protocol witness table cache variable for type CarCommandsAffinityScoringData.NamesNodeAttachmentType and conformance CarCommandsAffinityScoringData.NamesNodeAttachmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarCommandsAffinityScoringData.NamesNodeAttachmentType and conformance CarCommandsAffinityScoringData.NamesNodeAttachmentType);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for CarCommandsAffinityScoringData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    v6 = *(a3 + 28);
    v7 = type metadata accessor for SpanProperty();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);

    if (v9(a2 + v6, 1, v7))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
      memcpy(&v4[v6], a2 + v6, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(&v4[v6], a2 + v6, v7);
      (*(v8 + 56))(&v4[v6], 0, 1, v7);
    }
  }

  return v4;
}

uint64_t destroy for CarCommandsAffinityScoringData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a2 + 28);
  v6 = type metadata accessor for SpanProperty();
  v9 = *(v6 - 8);
  result = (*(v9 + 48))(a1 + v5, 1, v6);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(a1 + v5, v6);
  }

  return result;
}

uint64_t initializeWithCopy for CarCommandsAffinityScoringData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for SpanProperty();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);

  if (v8(a2 + v5, 1, v6))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    memcpy((a1 + v5), (a2 + v5), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithCopy for CarCommandsAffinityScoringData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 28);
  v8 = type metadata accessor for SpanProperty();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  LODWORD(v6) = v10(a1 + v7, 1, v8);
  v11 = v10(a2 + v7, 1, v8);
  if (!v6)
  {
    if (!v11)
    {
      (*(v9 + 24))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    memcpy((a1 + v7), (a2 + v7), *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v9 + 16))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

uint64_t initializeWithTake for CarCommandsAffinityScoringData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for SpanProperty();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for CarCommandsAffinityScoringData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 28);
  v8 = type metadata accessor for SpanProperty();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

void type metadata completion function for CarCommandsAffinityScoringData()
{
  type metadata accessor for SpanProperty?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void type metadata accessor for SpanProperty?()
{
  if (!lazy cache variable for type metadata for SpanProperty?)
  {
    type metadata accessor for SpanProperty();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SpanProperty?);
    }
  }
}

uint64_t outlined init with copy of CarCommandsAffinityScoringData(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsAffinityScoringData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType()
{
  result = lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType;
  if (!lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType)
  {
    type metadata accessor for PayloadAttachmentInfo.AttachmentType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType);
  }

  return result;
}

uint64_t ResultSelected.endpointMode.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t ResultSelected.init(isMitigated:endpointMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t CommitResultCandidate.resultCandidateId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void CommitResultCandidate.resultSelectedMessage.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t CommitResultCandidate.__allocating_init(resultCandidateId:resultSelectedMessage:)(uint64_t a1, uint64_t a2, char *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = a3[16];
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v7;
  *(result + 40) = v8;
  *(result + 48) = v9;
  return result;
}

uint64_t CommitResultCandidate.init(resultCandidateId:resultSelectedMessage:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  v5 = *(a3 + 1);
  v6 = a3[16];
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  return v3;
}

uint64_t CommitResultCandidate.debugDescription.getter()
{
  _StringGuts.grow(_:)(26);
  v1 = *v0;
  v2 = _typeName(_:qualified:)();

  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA7E000);
  MEMORY[0x1E12A1580](v0[2], v0[3]);
  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return v2;
}

uint64_t CommitResultCandidate.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CommitResultCandidate.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ResultSelected(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ResultSelected(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t CommitResultCandidateId.resultCandidateId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CommitResultCandidateId.conversationUserInputId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *CommitResultCandidateId.__allocating_init(resultCandidateId:conversationUserInputId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *CommitResultCandidateId.init(resultCandidateId:conversationUserInputId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t CommitResultCandidateId.debugDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(55);
  v2 = *v0;
  v3 = _typeName(_:qualified:)();
  MEMORY[0x1E12A1580](v3);

  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA7E000);
  MEMORY[0x1E12A1580](v1[2], v1[3]);
  MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA7E070);
  MEMORY[0x1E12A1580](v1[4], v1[5]);
  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return 0;
}

uint64_t CommitResultCandidateId.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t CommitResultCandidateId.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void ComponentIdGeneratorImpl.derivedIdentifier(for:from:)(uint64_t a1)
{
  v2 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 derivedIdentifierForComponent:a1 fromSourceIdentifier:isa];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void protocol witness for ComponentIdGenerator.derivedIdentifier(for:from:) in conformance ComponentIdGeneratorImpl(uint64_t a1)
{
  v2 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 derivedIdentifierForComponent:a1 fromSourceIdentifier:isa];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t static CompositeExecutionOverrides.newBuilder()()
{
  type metadata accessor for CompositeExecutionOverrides.Builder();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t CompositeExecutionOverrides.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t CompositeExecutionOverrides.Builder.add(rule:)(uint64_t a1)
{
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v16);
  swift_beginAccess();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v1 + 16) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
    *(v1 + 16) = v2;
  }

  v6 = v17;
  v7 = v18;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  v9 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, v10);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v5, v12, (v1 + 16), v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  *(v1 + 16) = v2;
  swift_endAccess();
}

uint64_t CompositeExecutionOverrides.Builder.addAll(rules:)()
{
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v0);
  swift_endAccess();
}

uint64_t CompositeExecutionOverrides.Builder.build()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  type metadata accessor for CompositeExecutionOverrides();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t CompositeExecutionOverrides.Builder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CompositeExecutionOverrides.Builder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t CompositeExecutionOverrides.Builder.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of ReferenceResolutionClientProtocol(&v12, v10 + 40 * a1 + 32);
}

uint64_t static CompositePreExecutionRules.newBuilder()()
{
  type metadata accessor for CompositePreExecutionRules.Builder();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t CompositePreExecutionRules.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t CompositePreExecutionRules.Builder.add(rule:)(uint64_t a1)
{
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v16);
  swift_beginAccess();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v1 + 16) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
    *(v1 + 16) = v2;
  }

  v6 = v17;
  v7 = v18;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  v9 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, v10);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v5, v12, (v1 + 16), v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  *(v1 + 16) = v2;
  swift_endAccess();
}

uint64_t CompositePreExecutionRules.Builder.addAll(rules:)()
{
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v0);
  swift_endAccess();
}

uint64_t CompositePreExecutionRules.Builder.build()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  type metadata accessor for CompositePreExecutionRules();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t CompositePreExecutionRules.Builder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CompositePreExecutionRules.Builder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t CompositePreExecutionRules.Builder.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ConcurrentTaskPool.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ConcurrentTaskPool.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t ConcurrentTaskPool.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t dispatch thunk of ConcurrentTaskPool.wait()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6();
}

uint64_t dispatch thunk of Waitable.wait()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v9(a1, a2);
}

SiriKitRuntime::ContactsAffinityScorer __swiftcall ContactsAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CA70;
  v1 = 0xD000000000000029;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t USOParse.usoIdentifiers.getter()
{
  v23 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v0 = *(v23 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Siri_Nlu_External_UserParse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v22 - v16;
  USOParse.userParse.getter();
  Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(v17);
  (*(v10 + 8))(v13, v9);
  v18 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    (*(v19 + 8))(v17, v18);
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v5 + 8))(v8, v4);
    v21 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    (*(v0 + 8))(v3, v23);
    return v21;
  }
}

uint64_t Array<A>.containsContactIdentifier.getter(uint64_t a1)
{
  v27 = type metadata accessor for Google_Protobuf_StringValue();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (!v12)
  {
    return 0;
  }

  v14 = *(v7 + 16);
  v13 = v7 + 16;
  v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v28 = *(v13 + 56);
  v29 = v14;
  v16 = (v13 - 8);
  v17 = (v2 + 8);
  v14(v11, v15, v6, v9);
  while (1)
  {
    if (Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter() == 0x73746361746E6F43 && v20 == 0xE800000000000000)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        (*v16)(v11, v6);
        goto LABEL_4;
      }
    }

    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v22 = Google_Protobuf_StringValue.value.getter();
    v24 = v23;
    (*v17)(v5, v27);
    if (v22 == 0x64695F6D657469 && v24 == 0xE700000000000000)
    {
      break;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v16)(v11, v6);
    if (v18)
    {
      return 1;
    }

LABEL_4:
    v15 += v28;
    if (!--v12)
    {
      return 0;
    }

    v29(v11, v15, v6, v19);
  }

  (*v16)(v11, v6);
  return 1;
}

uint64_t UsoTask.isAgeRequest.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v9)
  {
    goto LABEL_17;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v8, v7, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_noVerb_common_Person();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_checkExistence_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      if (!v6 || (v1 = dispatch thunk of UsoEntity_common_Person.age.getter(), , !v1))
      {
        dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
        goto LABEL_19;
      }

LABEL_15:

      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      v4 = 1;
      goto LABEL_23;
    }

    type metadata accessor for UsoTask_request_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
      if (!v6 || (v2 = dispatch thunk of UsoEntity_common_Person.age.getter(), , !v2))
      {
        dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
        if (!v6 || (v3 = dispatch thunk of UsoEntity_common_Person.age.getter(), , !v3))
        {
          dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
          goto LABEL_19;
        }
      }

      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v7);
LABEL_17:
    v4 = 0;
    goto LABEL_23;
  }

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  if (v6)
  {
    v0 = dispatch thunk of UsoEntity_common_Person.age.getter();

    if (v0)
    {
      goto LABEL_15;
    }
  }

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
LABEL_19:

  if (v6)
  {
    v4 = UsoEntity_common_Person.isAgeRequestPerson.getter();
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
LABEL_23:
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sypSgMd, &_sypSgMR);
  return v4 & 1;
}

uint64_t UsoTask.hasPartialContactsSpanMatches.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v7)
  {
    goto LABEL_26;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v6, v5, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_summarise_common_Person();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      goto LABEL_6;
    }

    type metadata accessor for UsoTask_read_common_Person();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_update_common_Person();
      if (swift_dynamicCast())
      {

        dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
        if (v4)
        {
          v1 = UsoEntity_common_Person.hasOnlyPartialContactsSpans.getter();
        }

        else
        {
          v1 = 0;
        }

        dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
LABEL_21:

        if (v4)
        {
          v2 = UsoEntity_common_Person.hasOnlyPartialContactsSpans.getter();
        }

        else
        {
          v2 = 0;
        }

        v0 = v1 | v2;
        goto LABEL_10;
      }

      type metadata accessor for UsoTask_checkExistence_common_Person();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_request_common_Person();
        if (swift_dynamicCast())
        {

          dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
          if (v4)
          {
            v1 = UsoEntity_common_Person.hasOnlyPartialContactsSpans.getter();
          }

          else
          {
            v1 = 0;
          }

          dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
          goto LABEL_21;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v5);
LABEL_26:
        v0 = 0;
        goto LABEL_27;
      }
    }
  }

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
LABEL_6:

  if (v4)
  {
    v0 = UsoEntity_common_Person.hasOnlyPartialContactsSpans.getter();
  }

  else
  {
    v0 = 0;
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
LABEL_27:
  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_sypSgMd, &_sypSgMR);
  return v0 & 1;
}

BOOL UsoTask.hasContactIDs.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v11)
  {
    goto LABEL_26;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v10, v9, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_summarise_common_Person();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      goto LABEL_6;
    }

    type metadata accessor for UsoTask_read_common_Person();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_update_common_Person();
      if (swift_dynamicCast())
      {

        dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
        if (v8)
        {
          v3 = UsoEntity_common_Person.contactIDs.getter();
        }

        else
        {
          v3 = MEMORY[0x1E69E7CC0];
        }

        v5 = *(v3 + 16);

        dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
LABEL_21:

        if (v8)
        {
          v6 = UsoEntity_common_Person.contactIDs.getter();
        }

        else
        {

          v6 = MEMORY[0x1E69E7CC0];
        }

        v1 = v5 | *(v6 + 16);
        goto LABEL_10;
      }

      type metadata accessor for UsoTask_checkExistence_common_Person();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_request_common_Person();
        if (swift_dynamicCast())
        {

          dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
          if (v8)
          {
            v4 = UsoEntity_common_Person.contactIDs.getter();
          }

          else
          {
            v4 = MEMORY[0x1E69E7CC0];
          }

          v5 = *(v4 + 16);

          dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
          goto LABEL_21;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v9);
LABEL_26:
        v2 = 0;
        goto LABEL_27;
      }
    }
  }

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
LABEL_6:

  if (v8)
  {
    v0 = UsoEntity_common_Person.contactIDs.getter();
  }

  else
  {

    v0 = MEMORY[0x1E69E7CC0];
  }

  v1 = *(v0 + 16);
LABEL_10:

  v2 = v1 != 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
LABEL_27:
  outlined destroy of ReferenceResolutionClientProtocol?(v10, &_sypSgMd, &_sypSgMR);
  return v2;
}

uint64_t UsoTask.isMeCardTask.getter()
{
  v0 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v1 = *(v0 - 8);
  v185 = v0;
  v186 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v182 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  v4 = *(*(v184 - 8) + 64);
  MEMORY[0x1EEE9AC00](v184);
  v162 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v166 = &v160 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v171 = &v160 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v173 = &v160 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v178 = &v160 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v181 = &v160 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v183 = &v160 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v160 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v160 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v161 = &v160 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v164 = &v160 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v163 = &v160 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v168 = &v160 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v169 = &v160 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v165 = &v160 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v175 = (&v160 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v170 = &v160 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v167 = &v160 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v172 = &v160 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v176 = &v160 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v174 = &v160 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v179 = (&v160 - v49);
  MEMORY[0x1EEE9AC00](v50);
  v180 = &v160 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v177 = &v160 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v160 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v160 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v160 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v160 - v64;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v160 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v160 - v70;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v160 - v73;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v160 - v76;
  static UsoTask_CodegenConverter.convert(task:)();
  if (v191)
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v190, v189, &_sypSgMd, &_sypSgMR);
    type metadata accessor for UsoTask_summarise_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (v187)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();

        v79 = v185;
        v78 = v186;
      }

      else
      {
        v79 = v185;
        v78 = v186;
        (*(v186 + 56))(v77, 1, 1, v185);
      }

      (*(v78 + 104))(v74, *MEMORY[0x1E69D1BE0], v79);
      (*(v78 + 56))(v74, 0, 1, v79);
      v85 = *(v184 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v77, v20, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v74, &v20[v85], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v86 = *(v78 + 48);
      if (v86(v20, 1, v79) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v77, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v86(&v20[v85], 1, v79) == 1)
        {
          v87 = v20;
LABEL_61:
          outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v93 = 1;
          goto LABEL_67;
        }

        goto LABEL_17;
      }

      outlined init with copy of ReferenceResolutionClientProtocol?(v20, v71, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      if (v86(&v20[v85], 1, v79) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v77, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v186 + 8))(v71, v79);
LABEL_17:
        v88 = v20;
LABEL_66:
        outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
        v93 = 0;
        goto LABEL_67;
      }

      v91 = v186;
      v92 = v182;
      (*(v186 + 32))(v182, &v20[v85], v79);
      lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
      v93 = dispatch thunk of static Equatable.== infix(_:_:)();

      v94 = *(v91 + 8);
      v94(v92, v79);
      outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v77, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v94(v71, v79);
      v95 = v20;
      goto LABEL_43;
    }

    type metadata accessor for UsoTask_noVerb_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

      v80 = v186;
      if (v187)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();

        v81 = v185;
      }

      else
      {
        v81 = v185;
        (*(v186 + 56))(v68, 1, 1, v185);
      }

      (*(v80 + 104))(v65, *MEMORY[0x1E69D1BE0], v81);
      (*(v80 + 56))(v65, 0, 1, v81);
      v96 = v183;
      v97 = *(v184 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v68, v183, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v98 = v96;
      outlined init with copy of ReferenceResolutionClientProtocol?(v65, v96 + v97, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v99 = *(v80 + 48);
      if (v99(v98, 1, v81) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        v100 = v183;
        outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v99(v100 + v97, 1, v81) == 1)
        {
          v87 = v100;
          goto LABEL_61;
        }

        goto LABEL_28;
      }

      outlined init with copy of ReferenceResolutionClientProtocol?(v98, v62, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      if (v99(v98 + v97, 1, v81) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        v100 = v183;
        outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v80 + 8))(v62, v81);
LABEL_28:
        v88 = v100;
        goto LABEL_66;
      }

      v102 = v182;
      (*(v80 + 32))(v182, v98 + v97, v81);
      lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
      v103 = v98;
      v93 = dispatch thunk of static Equatable.== infix(_:_:)();

      v104 = *(v80 + 8);
      v104(v102, v81);
      outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v104(v62, v81);
      v95 = v103;
LABEL_43:
      outlined destroy of ReferenceResolutionClientProtocol?(v95, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
LABEL_67:
      __swift_destroy_boxed_opaque_existential_1Tm(v189);
      goto LABEL_68;
    }

    type metadata accessor for UsoTask_read_common_Person();
    v82 = swift_dynamicCast();
    v83 = v185;
    v84 = v186;
    if (v82)
    {

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (v187)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();
      }

      else
      {
        (*(v84 + 56))(v59, 1, 1, v83);
      }

      v105 = v181;
      (*(v84 + 104))(v56, *MEMORY[0x1E69D1BE0], v83);
      (*(v84 + 56))(v56, 0, 1, v83);
      v106 = *(v184 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v59, v105, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v56, v105 + v106, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v107 = *(v84 + 48);
      if (v107(v105, 1, v83) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v107(v105 + v106, 1, v83) == 1)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v108 = v177;
        outlined init with copy of ReferenceResolutionClientProtocol?(v105, v177, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v107(v105 + v106, 1, v83) != 1)
        {
          v111 = v182;
          (*(v84 + 32))(v182, v105 + v106, v83);
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
          v112 = v108;
          v93 = dispatch thunk of static Equatable.== infix(_:_:)();

          v113 = *(v84 + 8);
          v113(v111, v83);
          outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v113(v112, v83);
          v95 = v105;
          goto LABEL_43;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v84 + 8))(v108, v83);
      }

LABEL_65:
      v88 = v105;
      goto LABEL_66;
    }

    type metadata accessor for UsoTask_update_common_Person();
    if (swift_dynamicCast())
    {
      v89 = v188;

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
      v183 = v89;

      v90 = v180;
      if (v187)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();
      }

      else
      {
        (*(v84 + 56))(v180, 1, 1, v83);
      }

      v114 = v178;
      v115 = v179;
      v116 = *(v84 + 104);
      LODWORD(v178) = *MEMORY[0x1E69D1BE0];
      v181 = (v84 + 104);
      v177 = v116;
      v116(v179);
      v175 = *(v84 + 56);
      (v175)(v115, 0, 1, v83);
      v117 = *(v184 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v90, v114, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v115, v114 + v117, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v118 = *(v84 + 48);
      if (v118(v114, 1, v83) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v115, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v118(v114 + v117, 1, v83) == 1)
        {
LABEL_47:
          outlined destroy of ReferenceResolutionClientProtocol?(v114, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
LABEL_56:

          v93 = 1;
          goto LABEL_67;
        }
      }

      else
      {
        v119 = v174;
        outlined init with copy of ReferenceResolutionClientProtocol?(v114, v174, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v118(v114 + v117, 1, v83) != 1)
        {
          v123 = v114;
          v124 = v186;
          v125 = v182;
          (*(v186 + 32))(v182, v123 + v117, v83);
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
          LODWORD(v171) = dispatch thunk of static Equatable.== infix(_:_:)();
          v126 = *(v124 + 8);
          v126(v125, v83);
          outlined destroy of ReferenceResolutionClientProtocol?(v179, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v180, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v126(v174, v83);
          outlined destroy of ReferenceResolutionClientProtocol?(v123, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          if (v171)
          {
            goto LABEL_56;
          }

          goto LABEL_51;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v179, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v180, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v186 + 8))(v119, v83);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v114, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
LABEL_51:
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
      v120 = v176;
      if (v187)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();

        v121 = v185;
        v122 = v175;
      }

      else
      {
        v121 = v185;
        v122 = v175;
        (v175)(v176, 1, 1, v185);
      }

      v127 = v172;
      (v177)(v172, v178, v121);
      (v122)(v127, 0, 1, v121);
      v128 = v127;
      v129 = *(v184 + 48);
      v105 = v173;
      outlined init with copy of ReferenceResolutionClientProtocol?(v120, v173, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v127, v105 + v129, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      if (v118(v105, 1, v121) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v127, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v120, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v118(v105 + v129, 1, v121) != 1)
        {
          goto LABEL_65;
        }

LABEL_60:
        v87 = v105;
        goto LABEL_61;
      }

      v130 = v167;
      outlined init with copy of ReferenceResolutionClientProtocol?(v105, v167, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      if (v118(v105 + v129, 1, v121) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v127, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        v131 = v176;
LABEL_64:
        outlined destroy of ReferenceResolutionClientProtocol?(v131, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v186 + 8))(v130, v121);
        goto LABEL_65;
      }

      v138 = v186;
      v139 = v182;
      (*(v186 + 32))(v182, v105 + v129, v121);
      lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
      v93 = dispatch thunk of static Equatable.== infix(_:_:)();

      v140 = *(v138 + 8);
      v140(v139, v121);
      outlined destroy of ReferenceResolutionClientProtocol?(v128, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v141 = v176;
      goto LABEL_77;
    }

    type metadata accessor for UsoTask_checkExistence_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      v101 = v170;
      if (v187)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();
      }

      else
      {
        (*(v84 + 56))(v170, 1, 1, v83);
      }

      v133 = v171;
      v134 = v175;
      (*(v84 + 104))(v175, *MEMORY[0x1E69D1BE0], v83);
      (*(v84 + 56))(v134, 0, 1, v83);
      v135 = *(v184 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v101, v133, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v134, v133 + v135, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v136 = *(v84 + 48);
      if (v136(v133, 1, v83) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v134, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v101, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v136(v133 + v135, 1, v83) == 1)
        {
          v87 = v133;
          goto LABEL_61;
        }
      }

      else
      {
        v137 = v165;
        outlined init with copy of ReferenceResolutionClientProtocol?(v133, v165, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v136(v133 + v135, 1, v83) != 1)
        {
          v142 = v182;
          (*(v84 + 32))(v182, v133 + v135, v83);
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
          v93 = dispatch thunk of static Equatable.== infix(_:_:)();

          v143 = *(v84 + 8);
          v143(v142, v83);
          outlined destroy of ReferenceResolutionClientProtocol?(v175, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v101, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v143(v137, v83);
          v95 = v133;
          goto LABEL_43;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v175, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v101, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v84 + 8))(v137, v83);
      }

      v88 = v133;
      goto LABEL_66;
    }

    type metadata accessor for UsoTask_request_common_Person();
    if (swift_dynamicCast())
    {
      v109 = v188;

      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
      v183 = v109;

      v110 = v169;
      if (v187)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();
      }

      else
      {
        (*(v84 + 56))(v169, 1, 1, v83);
      }

      v114 = v166;
      v144 = v168;
      v145 = *(v84 + 104);
      LODWORD(v180) = *MEMORY[0x1E69D1BE0];
      v181 = (v84 + 104);
      v179 = v145;
      (v145)(v168);
      v178 = *(v84 + 56);
      (v178)(v144, 0, 1, v83);
      v146 = *(v184 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v110, v114, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v144, v114 + v146, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v147 = *(v84 + 48);
      if (v147(v114, 1, v83) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v144, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v147(v114 + v146, 1, v83) == 1)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v148 = v163;
        outlined init with copy of ReferenceResolutionClientProtocol?(v114, v163, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v147(v114 + v146, 1, v83) != 1)
        {
          v151 = v114;
          v152 = v186;
          v153 = v182;
          (*(v186 + 32))(v182, v151 + v146, v83);
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
          LODWORD(v177) = dispatch thunk of static Equatable.== infix(_:_:)();
          v154 = *(v152 + 8);
          v154(v153, v83);
          outlined destroy of ReferenceResolutionClientProtocol?(v168, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v169, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v154(v163, v83);
          outlined destroy of ReferenceResolutionClientProtocol?(v151, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          if (v177)
          {
            goto LABEL_56;
          }

          goto LABEL_86;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v168, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v169, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v186 + 8))(v148, v83);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v114, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
LABEL_86:
      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
      v149 = v164;
      if (v187)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();

        v121 = v185;
        v150 = v178;
      }

      else
      {
        v121 = v185;
        v150 = v178;
        (v178)(v164, 1, 1, v185);
      }

      v155 = v161;
      (v179)(v161, v180, v121);
      v150(v155, 0, 1, v121);
      v156 = v155;
      v157 = *(v184 + 48);
      v105 = v162;
      outlined init with copy of ReferenceResolutionClientProtocol?(v149, v162, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v155, v105 + v157, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      if (v147(v105, 1, v121) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v155, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v149, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v147(v105 + v157, 1, v121) != 1)
        {
          goto LABEL_65;
        }

        goto LABEL_60;
      }

      v130 = v160;
      outlined init with copy of ReferenceResolutionClientProtocol?(v105, v160, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      if (v147(v105 + v157, 1, v121) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v155, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        v131 = v164;
        goto LABEL_64;
      }

      v158 = v186;
      v159 = v182;
      (*(v186 + 32))(v182, v105 + v157, v121);
      lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
      v93 = dispatch thunk of static Equatable.== infix(_:_:)();

      v140 = *(v158 + 8);
      v140(v159, v121);
      outlined destroy of ReferenceResolutionClientProtocol?(v156, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v141 = v164;
LABEL_77:
      outlined destroy of ReferenceResolutionClientProtocol?(v141, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v140(v130, v121);
      v95 = v105;
      goto LABEL_43;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v189);
  }

  v93 = 0;
LABEL_68:
  outlined destroy of ReferenceResolutionClientProtocol?(v190, &_sypSgMd, &_sypSgMR);
  return v93 & 1;
}

uint64_t UsoEntity_common_Person.contactIDs.getter()
{
  v0 = type metadata accessor for IdentifierAppBundle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UsoIdentifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!result)
  {
    result = MEMORY[0x1E69E7CC0];
  }

  v52 = *(result + 16);
  if (v52)
  {
    v15 = 0;
    v49 = (v1 + 8);
    v50 = (v6 + 16);
    v45 = (v6 + 8);
    v46 = (v6 + 32);
    v48 = MEMORY[0x1E69E7CC0];
    v43 = v0;
    v44 = v6;
    v51 = result;
    while (1)
    {
      if (v15 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v17 = *(v6 + 72);
      (*(v6 + 16))(v13, result + v16 + v17 * v15, v5);
      UsoIdentifier.appBundleSemantic.getter();
      v18 = IdentifierAppBundle.rawValue.getter();
      v20 = v19;
      (*v49)(v4, v0);
      if (v18 == 0x73746361746E6F43 && v20 == 0xE800000000000000)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v22 = UsoIdentifier.namespace.getter();
      if (v23)
      {
        if (v22 == 0x64695F6D657469 && v23 == 0xE700000000000000)
        {

LABEL_17:
          v25 = *v46;
          (*v46)(v47, v13, v5);
          v26 = v48;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1);
            v26 = v54;
          }

          v29 = *(v26 + 16);
          v28 = *(v26 + 24);
          if (v29 >= v28 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
            v26 = v54;
          }

          *(v26 + 16) = v29 + 1;
          v48 = v26;
          v25((v26 + v16 + v29 * v17), v47, v5);
          v0 = v43;
          v6 = v44;
          goto LABEL_6;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_17;
        }
      }

LABEL_5:
      (*v45)(v13, v5);
LABEL_6:
      ++v15;
      result = v51;
      if (v52 == v15)
      {
        goto LABEL_23;
      }
    }
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_23:

  v30 = *(v48 + 16);
  if (v30)
  {
    v54 = MEMORY[0x1E69E7CC0];
    v31 = v48;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
    v32 = v54;
    v34 = *(v6 + 16);
    v33 = v6 + 16;
    v35 = v31 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v51 = *(v33 + 56);
    v52 = v34;
    v50 = (v33 - 8);
    do
    {
      v36 = v53;
      v52(v53, v35, v5);
      v37 = UsoIdentifier.value.getter();
      v39 = v38;
      (*v50)(v36, v5);
      v54 = v32;
      v41 = *(v32 + 16);
      v40 = *(v32 + 24);
      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v32 = v54;
      }

      *(v32 + 16) = v41 + 1;
      v42 = v32 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      v35 += v51;
      --v30;
    }

    while (v30);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v32;
}

uint64_t UsoEntity_common_Person.hasOnlyPartialContactsSpans.getter()
{
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v0 = *(matched - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v68 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v58 - v8);
  v70 = type metadata accessor for MatchInfo();
  v10 = *(v70 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v58 - v14;
  v15 = type metadata accessor for UsoEntitySpan();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  result = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();
  if (result)
  {
    v26 = result;
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v76 = *(v26 + 16);
  if (!v76)
  {
    v42 = MEMORY[0x1E69E7CC0];
LABEL_36:

    v57 = *(v42 + 16);

    return v57 != 0;
  }

  v67 = v9;
  v27 = v10;
  v28 = 0;
  v58 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v59 = v6;
  v29 = v26 + v58;
  v75 = v16 + 16;
  v71 = (v27 + 48);
  v72 = v15;
  v64 = (v0 + 8);
  v65 = (v27 + 32);
  v63 = (v27 + 8);
  v73 = (v16 + 8);
  v30 = v16;
  v66 = v16;
  while (v28 < *(v26 + 16))
  {
    v77 = *(v30 + 72);
    v74 = *(v30 + 16);
    v74(v24, v29 + v77 * v28, v15);
    v31 = UsoEntitySpan.originAppId.getter();
    if (v32)
    {
      if (v31 == 0x73746361746E6F43 && v32 == 0xE800000000000000)
      {

LABEL_14:
        v34 = v26;
        v35 = v21;
        v36 = v67;
        UsoEntitySpan.matchInfo.getter();
        v37 = v70;
        if ((*v71)(v36, 1, v70) == 1)
        {
          (*v73)(v24, v15);
          result = outlined destroy of ReferenceResolutionClientProtocol?(v36, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
          v21 = v35;
          v26 = v34;
          v30 = v66;
        }

        else
        {
          v38 = v62;
          (*v65)(v62, v36, v37);
          v39 = v68;
          static MatchInfo.MatchSignals.exactMatch.getter();
          v40 = MatchInfo.hasMatchSignals(_:)();
          (*v64)(v39, matched);
          (*v63)(v38, v37);
          result = (*v73)(v24, v15);
          v21 = v35;
          v26 = v34;
          v30 = v66;
          if (v40)
          {

            return 0;
          }
        }

        goto LABEL_7;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v33)
      {
        goto LABEL_14;
      }
    }

    result = (*v73)(v24, v15);
LABEL_7:
    ++v28;
    v15 = v72;
    if (v76 == v28)
    {
      v41 = 0;
      v42 = MEMORY[0x1E69E7CC0];
      v67 = (v30 + 32);
      v43 = v59;
      v44 = v70;
      while (1)
      {
        if (v41 >= *(v26 + 16))
        {
          goto LABEL_38;
        }

        v74(v21, v29, v15);
        v45 = UsoEntitySpan.originAppId.getter();
        if (!v46)
        {
          goto LABEL_20;
        }

        if (v45 == 0x73746361746E6F43 && v46 == 0xE800000000000000)
        {
        }

        else
        {
          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v47 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        UsoEntitySpan.matchInfo.getter();
        if ((*v71)(v43, 1, v44) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
        }

        else
        {
          v48 = v61;
          (*v65)(v61, v43, v44);
          v49 = v68;
          static MatchInfo.MatchSignals.partialMatch.getter();
          v50 = MatchInfo.hasMatchSignals(_:)();
          v51 = v49;
          v44 = v70;
          (*v64)(v51, matched);
          (*v63)(v48, v44);
          if (v50)
          {
            v52 = *v67;
            (*v67)(v60, v21, v15);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v78 = v42;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 16) + 1, 1);
              v42 = v78;
            }

            v54 = v42;
            v56 = *(v42 + 16);
            v55 = *(v42 + 24);
            if (v56 >= v55 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55 > 1, v56 + 1, 1);
              v54 = v78;
            }

            *(v54 + 16) = v56 + 1;
            v42 = v54;
            result = (v52)(v54 + v58 + v56 * v77, v60, v15);
            v43 = v59;
            v44 = v70;
            goto LABEL_21;
          }
        }

LABEL_20:
        result = (*v73)(v21, v15);
LABEL_21:
        ++v41;
        v29 += v77;
        if (v76 == v41)
        {
          goto LABEL_36;
        }
      }
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t UsoEntity_common_Person.isAgeRequestPerson.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v90 = v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v91 = v88 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v92 = v88 - v6;
  v7 = type metadata accessor for DateTimeResolver();
  v106 = *(v7 - 8);
  v107 = v7;
  v8 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v105 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v108 = v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGMR);
  v110 = *(v13 - 8);
  v111 = v13;
  v14 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v96 = v88 - v18;
  v104 = type metadata accessor for DateTimeResolutionSpec.DateTimeConvergenceStrategy();
  v102 = *(v104 - 8);
  v19 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DateTimeResolutionSpec.ExpandToType();
  v99 = *(v21 - 8);
  v100 = v21;
  v22 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v101 = v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DateTimeResolutionSpec();
  v97 = *(v24 - 8);
  v98 = v24;
  v25 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v109 = v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Date();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = type metadata accessor for Calendar();
  v94 = *(v29 - 8);
  v95 = v29;
  v30 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v112 = v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DateTimeResolutionContext.Hemisphere();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TimeZone();
  v93 = *(v37 - 8);
  v38 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v113 = v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Locale();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  MEMORY[0x1EEE9AC00](v42);
  MEMORY[0x1EEE9AC00](v43);
  result = dispatch thunk of UsoEntity_common_Person.associatedDate.getter();
  if (!result)
  {
    return result;
  }

  v88[0] = v37;
  v89 = v16;
  v45 = result;
  if (!UsoEntity_common_Date.toDate()())
  {

    return 0;
  }

  v88[1] = v45;
  v46 = type metadata accessor for DateTime.Time();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();

  DateTime.Time.init(withHour:)();
  v49 = type metadata accessor for DateTime();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v88[2] = DateTime.init(withDate:time:)();
  static Locale.autoupdatingCurrent.getter();
  static Locale.autoupdatingCurrent.getter();
  static Locale.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  (*(v33 + 104))(v36, *MEMORY[0x1E69CE610], v32);
  static Calendar.autoupdatingCurrent.getter();
  static Date.now.getter();
  v52 = type metadata accessor for DateTimeResolutionContext();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v55 = DateTimeResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)();
  (*(v99 + 104))(v101, *MEMORY[0x1E69CE600], v100);
  (*(v102 + 104))(v103, *MEMORY[0x1E69CE5F0], v104);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC13SiriInference8DateTimeC0eF5RangeC07DefinedefG0O_AETt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v56 = v109;
  DateTimeResolutionSpec.init(expandToType:dateTimeConvergenceStrategy:overridesForDefinedDateTimeRanges:inferDurationAsInterval:witchingHourRoundOffEnabled:convergeToOperatingHours:)();
  v57 = v105;
  DateTimeResolver.init()();
  v58 = v108;
  DateTimeResolver.makeRecommendation(value:context:spec:)();
  v104 = v55;
  (*(v106 + 8))(v57, v107);
  v60 = v110;
  v59 = v111;
  (*(v110 + 56))(v58, 0, 1, v111);
  v61 = v96;
  (*(v60 + 32))(v96, v58, v59);
  v62 = v89;
  (*(v60 + 16))(v89, v61, v59);
  v63 = (*(v60 + 88))(v62, v59);
  if (v63 == *MEMORY[0x1E69CE5E8] || v63 == *MEMORY[0x1E69CE5D8])
  {
    v73 = v89;
    (*(v60 + 96))(v89, v59);
    v74 = *v73;
    v75 = v112;
    static Calendar.current.getter();
    v76 = v113;
    static TimeZone.current.getter();
    v77 = DateTime.toINDateComponentsRange(calendar:timeZone:)();

    (*(v93 + 8))(v76, v88[0]);
    (*(v94 + 8))(v75, v95);
    v78 = [v77 startDateComponents];

    v79 = v78 != 0;
    if (v78)
    {
      v80 = v92;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v81 = 0;
    }

    else
    {

      v81 = 1;
      v80 = v92;
    }

    (*(v60 + 8))(v61, v59);
    (*(v97 + 8))(v56, v98);
    v83 = type metadata accessor for DateComponents();
    (*(*(v83 - 8) + 56))(v80, v81, 1, v83);
    outlined destroy of ReferenceResolutionClientProtocol?(v80, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    return v79;
  }

  v64 = v113;
  if (v63 != *MEMORY[0x1E69CE5E0])
  {

    v82 = *(v60 + 8);
    v82(v61, v59);
    (*(v97 + 8))(v56, v98);
    v82(v89, v59);
    return 0;
  }

  v65 = v89;
  (*(v60 + 96))(v89, v59);
  v66 = *v65;
  if (v66 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  result = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_25:

    (*(v60 + 8))(v61, v59);
    (*(v97 + 8))(v56, v98);
    return 0;
  }

LABEL_12:
  if ((v66 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v66);
  }

  else
  {
    if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v67 = *(v66 + 32);
  }

  v68 = v112;
  static Calendar.current.getter();
  static TimeZone.current.getter();
  v69 = DateTime.toINDateComponentsRange(calendar:timeZone:)();

  (*(v93 + 8))(v64, v88[0]);
  (*(v94 + 8))(v68, v95);
  v70 = [v69 startDateComponents];

  if (v70)
  {
    v71 = v90;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = 0;
  }

  else
  {

    v72 = 1;
    v71 = v90;
  }

  (*(v60 + 8))(v61, v59);
  (*(v97 + 8))(v56, v98);
  v84 = type metadata accessor for DateComponents();
  v85 = *(v84 - 8);
  (*(v85 + 56))(v71, v72, 1, v84);
  v86 = v91;
  outlined init with take of DateComponents?(v71, v91);
  v87 = (*(v85 + 48))(v86, 1, v84) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v86, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  return v87;
}

unint64_t specialized ContactsAffinityScorer.getContactTask(from:)()
{
  v0 = specialized static AffinityScorerUtils.getTask(_:)();
  if (!v0)
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_16;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!*(&v4 + 1))
  {

LABEL_15:
    v0 = 0;
    goto LABEL_16;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(&v3, v2, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_summarise_common_Person();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_Person();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_read_common_Person();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_update_common_Person();
        if (!swift_dynamicCast())
        {
          type metadata accessor for UsoTask_checkExistence_common_Person();
          if (!swift_dynamicCast())
          {
            type metadata accessor for UsoTask_request_common_Person();
            if (!swift_dynamicCast())
            {
              type metadata accessor for UsoTask_create_common_Person();
              if (!swift_dynamicCast())
              {
                type metadata accessor for UsoTask_delete_common_Person();
                if (!swift_dynamicCast())
                {
                  type metadata accessor for UsoTask_update_common_Communication();
                  if (!swift_dynamicCast())
                  {

                    __swift_destroy_boxed_opaque_existential_1Tm(v2);
                    goto LABEL_15;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
LABEL_16:
  outlined destroy of ReferenceResolutionClientProtocol?(&v3, &_sypSgMd, &_sypSgMR);
  return v0;
}

uint64_t specialized ContactsAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Locale();
  v70 = *(v0 - 8);
  v1 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for USOParse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Parse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v10 + 88))(v13, v9) != *MEMORY[0x1E69D0168])
  {
    (*(v10 + 8))(v13, v9);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.executor);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v35, v36))
    {

      return 2;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1DC659000, v35, v36, "#ContactsAffinityScorer returning default affinity score.", v37, 2u);
    MEMORY[0x1E12A2F50](v37, -1, -1);

    return 2;
  }

  (*(v10 + 96))(v13, v9);
  v68 = v4;
  v69 = v5;
  v14 = *(v5 + 32);
  v67 = v8;
  v14(v8, v13, v4);
  v15 = (v70 + 8);
  v16 = &unk_1F5824A30;
  v17 = 10;
  while (1)
  {
    if (!--v17)
    {
      v38 = v67;
      if (!specialized ContactsAffinityScorer.getContactTask(from:)())
      {
        v59 = v68;
        v58 = v69;
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        __swift_project_value_buffer(v60, static Logger.executor);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_1DC659000, v61, v62, "#ContactsAffinityScorer did not find any relevant usoIdentifiers or tasks, returning low affinity score.", v63, 2u);
          MEMORY[0x1E12A2F50](v63, -1, -1);
        }

        (*(v58 + 8))(v38, v59);
        return 1;
      }

      v39 = UsoTask.isAgeRequest.getter();
      v41 = v68;
      v40 = v69;
      if (v39 & 1) != 0 && (UsoTask.hasPartialContactsSpanMatches.getter())
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static Logger.executor);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          v46 = "#ContactsAffinityScorer found recognized task but with partial span matches, returning default affinity score.";
LABEL_53:
          _os_log_impl(&dword_1DC659000, v43, v44, v46, v45, 2u);
          MEMORY[0x1E12A2F50](v45, -1, -1);

          (*(v40 + 8))(v38, v41);
          return 2;
        }

        goto LABEL_54;
      }

      if (UsoTask.hasContactIDs.getter())
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        __swift_project_value_buffer(v53, static Logger.executor);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v54, v55))
        {
          goto LABEL_48;
        }

        v56 = swift_slowAlloc();
        *v56 = 0;
        v57 = "#ContactsAffinityScorer found recognized task with contact IDs, returning high affinity score.";
      }

      else
      {
        if ((UsoTask.isMeCardTask.getter() & 1) == 0)
        {
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          __swift_project_value_buffer(v65, static Logger.executor);
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            v46 = "#ContactsAffinityScorer found recognized task but no contact IDs, returning default affinity score.";
            goto LABEL_53;
          }

LABEL_54:

          (*(v40 + 8))(v38, v41);
          return 2;
        }

        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        __swift_project_value_buffer(v64, static Logger.executor);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v54, v55))
        {
LABEL_48:

          (*(v40 + 8))(v38, v41);
          return 3;
        }

        v56 = swift_slowAlloc();
        *v56 = 0;
        v57 = "#ContactsAffinityScorer found recognized task for user, returning high affinity score.";
      }

      _os_log_impl(&dword_1DC659000, v54, v55, v57, v56, 2u);
      MEMORY[0x1E12A2F50](v56, -1, -1);
      goto LABEL_48;
    }

    v20 = *(v16 - 1);
    v19 = *v16;

    SiriEnvironment.currentDevice.getter();
    dispatch thunk of CurrentDevice.siriLocale.getter();

    v21 = Locale.identifier.getter();
    v23 = v22;
    (*v15)(v3, v0);
    if (v20 == v21 && v19 == v23)
    {
      break;
    }

    v16 += 2;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v24 = v67;
  v25 = USOParse.usoIdentifiers.getter();
  v26 = Array<A>.containsContactIdentifier.getter(v25);

  if ((v26 & 1) == 0)
  {
    v48 = v68;
    v47 = v69;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.executor);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1DC659000, v50, v51, "#ContactsAffinityScorer did not find any relevant usoIdentifier, returning low affinity score.", v52, 2u);
      MEMORY[0x1E12A2F50](v52, -1, -1);
    }

    (*(v47 + 8))(v24, v48);
    return 1;
  }

  v28 = v68;
  v27 = v69;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.executor);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = 2;
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1DC659000, v30, v31, "#ContactsAffinityScorer preventing any domain boosting logic from executing in reported locale, returning .default", v33, 2u);
    MEMORY[0x1E12A2F50](v33, -1, -1);

    (*(v27 + 8))(v24, v28);
    return v32;
  }

  (*(v27 + 8))(v24, v28);
  return 2;
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_Person.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues);
  }

  return result;
}

uint64_t outlined init with take of DateComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ContextTypeKey.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  if (a1 == 1)
  {
    return 0x4C4E79636167656CLL;
  }

  return 0xD00000000000001ALL;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ContextTypeKey(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF747865746E6F43;
  v3 = 0x4C4E79636167656CLL;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x4C4E79636167656CLL;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v4 == 1)
  {
    v6 = 0xEF747865746E6F43;
  }

  else
  {
    v6 = 0x80000001DCA7A620;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001DCA7A5F0;
  }

  if (*a2 != 1)
  {
    v3 = 0xD00000000000001ALL;
    v2 = 0x80000001DCA7A620;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001DCA7A5F0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContextTypeKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ContextTypeKey()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContextTypeKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContextTypeKey@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ContextTypeKey.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ContextTypeKey(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF747865746E6F43;
  v4 = 0x4C4E79636167656CLL;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x80000001DCA7A620;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (v5)
  {
    v3 = 0x80000001DCA7A5F0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t specialized ContextTypeKey.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContextTypeKey.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type ContextTypeKey and conformance ContextTypeKey()
{
  result = lazy protocol witness table cache variable for type ContextTypeKey and conformance ContextTypeKey;
  if (!lazy protocol witness table cache variable for type ContextTypeKey and conformance ContextTypeKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContextTypeKey and conformance ContextTypeKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ContextTypeKey] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ContextTypeKey] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ContextTypeKey] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14SiriKitRuntime14ContextTypeKeyOGMd, &_sSay14SiriKitRuntime14ContextTypeKeyOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ContextTypeKey] and conformance [A]);
  }

  return result;
}

void key path setter for ContextUpdater.finalNativeFlowContextCommand : ContextUpdater(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;
  v5 = v2;
}

uint64_t key path setter for ContextUpdater.finalActiveTasks : ContextUpdater(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 264);
  *(v3 + 264) = v2;
}

uint64_t key path setter for ContextUpdater.finalExecutedTasks : ContextUpdater(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 272);
  *(v3 + 272) = v2;
}

uint64_t key path setter for ContextUpdater.userId : ContextUpdater(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v9 - v6, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  return (*(**a2 + 368))(v7);
}

uint64_t ContextUpdater.userId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(a1, v1 + v3, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  return swift_endAccess();
}

uint64_t ContextUpdater.domainHints.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_domainHints;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

char *ContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userId:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(v13 + 48);
  v20 = *(v13 + 52);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 30) = MEMORY[0x1E69E7CC0];
  *(v21 + 32) = 0;
  *(v21 + 33) = v22;
  *(v21 + 35) = 0;
  *(v21 + 36) = 0;
  *(v21 + 34) = v22;
  v23 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  v24 = type metadata accessor for UserID();
  (*(*(v24 - 8) + 56))(&v21[v23], 1, 1, v24);
  *&v21[OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_domainHints] = v22;
  outlined init with copy of ReferenceResolutionClientProtocol(a1, (v21 + 16));
  outlined init with copy of ReferenceResolutionClientProtocol(a2, (v21 + 56));
  outlined init with copy of ReferenceResolutionClientProtocol(a3, (v21 + 96));
  *(v21 + 17) = a4;
  *(v21 + 18) = a5;
  *(v21 + 19) = a6;
  *(v21 + 20) = a7;
  *(v21 + 21) = a8;
  *(v21 + 22) = a9;
  *(v21 + 23) = a10;
  outlined init with copy of ReferenceResolutionClientProtocol(a11, (v21 + 192));
  *(v21 + 31) = a12;
  type metadata accessor for SessionStateContextKeysManager();
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v25[2] = v26;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pTt0g5Tf4g_n(v22);
  v28 = MEMORY[0x1E69E7CD0];
  v25[3] = v27;
  v25[4] = v28;
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v21 + 29) = v25;
  v29 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(a13, &v21[v29], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  swift_endAccess();
  return v21;
}

char *ContextUpdater.init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userId:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v19 = MEMORY[0x1E69E7CC0];
  *(v13 + 30) = MEMORY[0x1E69E7CC0];
  *(v13 + 32) = 0;
  *(v13 + 33) = v19;
  *(v13 + 35) = 0;
  *(v13 + 36) = 0;
  *(v13 + 34) = v19;
  v20 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  v21 = type metadata accessor for UserID();
  (*(*(v21 - 8) + 56))(&v13[v20], 1, 1, v21);
  *&v13[OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_domainHints] = v19;
  outlined init with copy of ReferenceResolutionClientProtocol(a1, (v13 + 16));
  outlined init with copy of ReferenceResolutionClientProtocol(a2, (v13 + 56));
  outlined init with copy of ReferenceResolutionClientProtocol(a3, (v13 + 96));
  *(v13 + 17) = a4;
  *(v13 + 18) = a5;
  *(v13 + 19) = a6;
  *(v13 + 20) = a7;
  *(v13 + 21) = a8;
  *(v13 + 22) = a9;
  *(v13 + 23) = a10;
  outlined init with copy of ReferenceResolutionClientProtocol(a11, (v13 + 192));
  *(v13 + 31) = a12;
  type metadata accessor for SessionStateContextKeysManager();
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v22[2] = v23;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pTt0g5Tf4g_n(v19);
  v25 = MEMORY[0x1E69E7CD0];
  v22[3] = v24;
  v22[4] = v25;
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v13 + 29) = v22;
  v26 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(a13, &v13[v26], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  swift_endAccess();
  return v13;
}

void *SessionStateContextKeysManager.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = MEMORY[0x1E69E7CD0];
  v0[3] = v2;
  v0[4] = v3;
  return v0;
}

void ContextUpdater.applyServerContextUpdateCandidate(_:metadata:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v133 = a2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v135 = *(v5 - 8);
  v136 = v5;
  v6 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v132 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for PommesContext.Source();
  v128 = *(v130 - 8);
  v8 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v129 = (&v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v134 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v126 - v14;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMR);
  v15 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v131 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v126 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v126 - v21;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.conversationBridge);
  v24 = a1;
  v138 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v141 = v28;
    *v27 = 136315138;
    v29 = [v24 resultCandidateId];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v142[0] = v31;
    v142[1] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v141);

    *(v27 + 4) = v36;
    _os_log_impl(&dword_1DC659000, v25, v26, "Received ServerContextUpdateCandidate for RC ID: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1E12A2F50](v28, -1, -1);
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  v37 = [v24 nlContextUpdatePayload];
  if (v37)
  {
    v38 = v37;
    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xF000000000000000;
  }

  v42 = v137;
  v43 = *(v137 + 48);
  v44 = v139;
  v45 = ContextUpdater.applyPromptContextProtoData(_:)(v139, v39, v41);
  outlined consume of Data?(v39, v41);
  *(v44 + v43) = v45;
  outlined init with copy of ReferenceResolutionClientProtocol?(v44, v19, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMR);
  v46 = *&v19[*(v42 + 48)];
  if (v46)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v47 = v46;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v142[0] = v51;
      *v50 = 136315138;
      swift_getErrorValue();
      v52 = Error.localizedDescription.getter();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v142);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_1DC659000, v48, v49, "Error while applying PromptContextData: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1E12A2F50](v51, -1, -1);
      MEMORY[0x1E12A2F50](v50, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  }

  v55 = [v24 mappedDomainEntities];
  if (!v55)
  {
    goto LABEL_74;
  }

  v56 = v55;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAMappedDomainEntity, 0x1E69C7908);
  v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = ContextUpdater.applyMappedDomainEntities(_:)(v57);

  if (v58)
  {
    v59 = v58;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v142[0] = v63;
      *v62 = 136315138;
      swift_getErrorValue();
      v64 = Error.localizedDescription.getter();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v142);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_1DC659000, v60, v61, "Applied MappedDomainEntities with error: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x1E12A2F50](v63, -1, -1);
      MEMORY[0x1E12A2F50](v62, -1, -1);
    }

    else
    {
    }
  }

  v67 = v24;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v68, v69))
  {

    goto LABEL_50;
  }

  v70 = 7104878;
  v71 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  v142[0] = v72;
  *v71 = 136315394;
  v73 = [v67 pegasusConversationContext];
  v127 = v3;
  if (!v73)
  {
    v80 = 0xE300000000000000;
    v81 = 7104878;
LABEL_36:
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v80, v142);

    *(v71 + 4) = v86;
    *(v71 + 12) = 2080;
    v87 = [v67 nlContextUpdatePayload];
    if (!v87)
    {
      v94 = 0xE300000000000000;
LABEL_49:
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v94, v142);

      *(v71 + 14) = v98;
      _os_log_impl(&dword_1DC659000, v68, v69, "Considering context from server update\n    Pegasus bytes: %s\n    Prompt context bytes: %s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v72, -1, -1);
      MEMORY[0x1E12A2F50](v71, -1, -1);

LABEL_50:
      v99 = type metadata accessor for PommesContext();
      v100 = *(v99 - 8);
      v101 = *(v100 + 56);
      v101(v140, 1, 1, v99);
      v102 = [v67 pegasusConversationContext];
      v103 = v134;
      if (!v102)
      {
        goto LABEL_62;
      }

      v104 = v102;
      v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v106;

      v108 = v107 >> 62;
      if ((v107 >> 62) > 1)
      {
        if (v108 != 2 || *(v105 + 16) == *(v105 + 24))
        {
          goto LABEL_61;
        }
      }

      else if (v108)
      {
        if (v105 == v105 >> 32)
        {
LABEL_61:
          outlined consume of Data._Representation(v105, v107);
LABEL_62:
          v113 = v131;
          outlined init with copy of ReferenceResolutionClientProtocol?(v139, v131, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMR);

          v115 = v135;
          v114 = v136;
          if ((*(v135 + 48))(v113, 1, v136) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v113, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
            v116 = Logger.logObject.getter();
            v117 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v116, v117))
            {
              v118 = swift_slowAlloc();
              *v118 = 0;
              _os_log_impl(&dword_1DC659000, v116, v117, "No Pegasus bytes or prompt context. Not creating any POMMES context.", v118, 2u);
              MEMORY[0x1E12A2F50](v118, -1, -1);
            }
          }

          else
          {
            (*(v115 + 32))(v132, v113, v114);
            v119 = Logger.logObject.getter();
            v120 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              *v121 = 0;
              _os_log_impl(&dword_1DC659000, v119, v120, "Creating POMMES context with prompt context!", v121, 2u);
              MEMORY[0x1E12A2F50](v121, -1, -1);
            }

            (*(v128 + 104))(v129, *MEMORY[0x1E69CE668], v130);
            PommesContext.init(source:domain:listenAfterSpeaking:)();
            v101(v103, 0, 1, v99);
            v122 = v140;
            outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v103, v140, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
            if (!(*(v100 + 48))(v122, 1, v99))
            {
              PommesContext.update(with:)();
            }

            (*(v135 + 8))(v132, v136);
          }

LABEL_71:
          v123 = v133;
          v124 = v140;
          outlined init with copy of ReferenceResolutionClientProtocol?(v140, v103, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          ContextUpdater.applyPommesContext(_:)(v103);
          outlined destroy of ReferenceResolutionClientProtocol?(v103, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          swift_beginAccess();
          v125 = *(v3 + 256);
          *(v3 + 256) = 0;

          ContextUpdater.flushSessionStateUpdates(metadata:)(v123);
          outlined destroy of ReferenceResolutionClientProtocol?(v139, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v124, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          return;
        }
      }

      else if ((v107 & 0xFF000000000000) == 0)
      {
        goto LABEL_61;
      }

      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_1DC659000, v109, v110, "Creating POMMES context with Pegasus conversation context bytes!", v111, 2u);
        MEMORY[0x1E12A2F50](v111, -1, -1);
      }

      v112 = v129;
      *v129 = v105;
      v112[1] = v107;
      (*(v128 + 104))(v112, *MEMORY[0x1E69CE660], v130);
      PommesContext.init(source:domain:listenAfterSpeaking:)();
      v101(v103, 0, 1, v99);
      outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v103, v140, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      goto LABEL_71;
    }

    v88 = v87;
    v89 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    v92 = v91 >> 62;
    if ((v91 >> 62) > 1)
    {
      if (v92 != 2)
      {
        v93 = 0;
        goto LABEL_48;
      }

      v96 = *(v89 + 16);
      v95 = *(v89 + 24);
      v84 = __OFSUB__(v95, v96);
      v93 = v95 - v96;
      if (!v84)
      {
        goto LABEL_48;
      }

      __break(1u);
    }

    else if (!v92)
    {
      v93 = BYTE6(v91);
LABEL_48:
      v141 = v93;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v97;
      outlined consume of Data._Representation(v89, v91);
      v3 = v127;
      goto LABEL_49;
    }

    LODWORD(v93) = HIDWORD(v89) - v89;
    if (!__OFSUB__(HIDWORD(v89), v89))
    {
      v93 = v93;
      goto LABEL_48;
    }

    goto LABEL_73;
  }

  v74 = v73;
  v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  v78 = v77 >> 62;
  if ((v77 >> 62) > 1)
  {
    if (v78 != 2)
    {
      v79 = 0;
      goto LABEL_35;
    }

    v83 = *(v75 + 16);
    v82 = *(v75 + 24);
    v84 = __OFSUB__(v82, v83);
    v79 = v82 - v83;
    if (!v84)
    {
      goto LABEL_35;
    }

    __break(1u);
  }

  else if (!v78)
  {
    v79 = BYTE6(v77);
LABEL_35:
    v141 = v79;
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v85;
    outlined consume of Data._Representation(v75, v77);
    v3 = v127;
    goto LABEL_36;
  }

  LODWORD(v79) = HIDWORD(v75) - v75;
  if (!__OFSUB__(HIDWORD(v75), v75))
  {
    v79 = v79;
    goto LABEL_35;
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

void ContextUpdater.valueFromSessionState(forKey:)(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for UserID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 360))(v10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.conversationBridge);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, v14, v15, "UserId is nil. Cannot get value from SessionState. Returning nil", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    v17 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    dispatch thunk of ConversationSessionState.value(forKey:userId:)();
    (*(v8 + 8))(v12, v7);
  }
}

void closure #1 in ContextUpdater.close()(char a1)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_1DC659000, oslog, v3, "Synced=%{BOOL}d the context to context collector", v4, 8u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }
}

Swift::Void __swiftcall ContextUpdater.applyResponseText(_:)(Swift::OpaquePointer a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v28 - v15;
  if (*(a1._rawValue + 2))
  {
    (*(*v1 + 360))(v14);
    v17 = type metadata accessor for UserID();
    v18 = (*(*(v17 - 8) + 48))(v16, 1, v17);
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    if (v18 == 1)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.conversationBridge);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v28[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001DCA7E240, v28);
        _os_log_impl(&dword_1DC659000, v20, v21, "Cannot use this instance of SingleUserContextUpdater to call %s since userId is nil", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x1E12A2F50](v23, -1, -1);
        MEMORY[0x1E12A2F50](v22, -1, -1);
      }
    }

    else
    {
      swift_beginAccess();

      specialized Array.append<A>(contentsOf:)(v24);
      swift_endAccess();
      (*(v4 + 104))(v7, *MEMORY[0x1E69D07E8], v3);
      ContextUpdater.valueFromSessionState(forKey:)(v28);
      (*(v4 + 8))(v7, v3);
      if (v29)
      {
        v25 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
        v26 = swift_dynamicCast();
        (*(*(v25 - 8) + 56))(v11, v26 ^ 1u, 1, v25);
      }

      else
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v28, &_sypSgMd, &_sypSgMR);
        v27 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
        (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
      }

      ContextUpdater.flushResponseText(legacyNLContext:)(v11);
      outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    }
  }
}

void ContextUpdater.flushResponseText(legacyNLContext:)(uint64_t a1)
{
  v3 = type metadata accessor for Google_Protobuf_StringValue();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConversationSessionKey();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v21 = v20;
  v23 = v22;
  outlined init with copy of ReferenceResolutionClientProtocol?(v19, v14, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  if ((*(v21 + 48))(v14, 1, v23) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.conversationBridge);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DC659000, v25, v26, "No LegacyNLContext to apply responseText to", v27, 2u);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }
  }

  else
  {
    v44 = v21;
    (*(v21 + 32))(v18, v14, v23);
    swift_beginAccess();
    v45 = v1;
    v28 = *(v1 + 240);
    v29 = *(v28 + 16);
    v30 = MEMORY[0x1E69E7CC0];
    if (v29)
    {
      v41 = v18;
      v42 = v23;
      v43 = v8;
      v48[0] = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
      v30 = v48[0];
      v31 = (v28 + 40);
      do
      {
        v32 = *(v31 - 1);
        v33 = *v31;

        String.toProtobufStringValue()();

        v48[0] = v30;
        v35 = *(v30 + 16);
        v34 = *(v30 + 24);
        if (v35 >= v34 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1);
          v30 = v48[0];
        }

        *(v30 + 16) = v35 + 1;
        (*(v4 + 32))(v30 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v35, v7, v3);
        v31 += 2;
        --v29;
      }

      while (v29);

      v23 = v42;
      v8 = v43;
      v18 = v41;
    }

    MEMORY[0x1E129C340](v30);
    v48[3] = v23;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v48);
    v37 = v44;
    (*(v44 + 16))(boxed_opaque_existential_0, v18, v23);
    v38 = v23;
    v40 = v46;
    v39 = v47;
    (*(v47 + 104))(v46, *MEMORY[0x1E69D07E8], v8);
    ContextUpdater.updateSessionState(withValue:forKey:)();
    (*(v39 + 8))(v40, v8);
    (*(v37 + 8))(v18, v38);
    outlined destroy of ReferenceResolutionClientProtocol?(v48, &_sypSgMd, &_sypSgMR);
  }
}

id ContextUpdater.applyMappedDomainEntities(_:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v79 = v66 - v4;
  v86 = type metadata accessor for RREntity();
  v84 = *(v86 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v83 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v82 = v66 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
LABEL_28:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static Logger.conversationBridge);

  v81 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v88[0] = v19;
    *v18 = 136315138;
    v20 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAMappedDomainEntity, 0x1E69C7908);
    v21 = MEMORY[0x1E12A16D0](a1, v20);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v88);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1DC659000, v16, v17, "Received MappedDomainEntities=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  UUID.init()();
  v78 = UUID.uuidString.getter();
  v85 = v24;
  (*(v10 + 8))(v13, v9);
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_6;
    }

LABEL_30:
    v87 = MEMORY[0x1E69E7CC0];
LABEL_31:

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v88[0] = v59;
      *v58 = 136315138;

      v61 = MEMORY[0x1E12A16D0](v60, v86);
      v63 = v62;

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v88);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_1DC659000, v56, v57, "#ContextUpdater: Created RRaaS entities=%s from MappedDomainEntities", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x1E12A2F50](v59, -1, -1);
      MEMORY[0x1E12A2F50](v58, -1, -1);
    }

    ContextUpdater.applyRREntities(_:)(v65);
    swift_bridgeObjectRelease_n();
    return 0;
  }

  v26 = __CocoaSet.count.getter();
  if (!v26)
  {
    goto LABEL_30;
  }

LABEL_6:
  v27 = 0;
  v10 = a1 & 0xC000000000000001;
  v76 = v84 + 8;
  v77 = (v84 + 16);
  v13 = (v84 + 32);
  v87 = MEMORY[0x1E69E7CC0];
  v9 = off_1E8646000;
  while (1)
  {
    v28 = v27;
    while (1)
    {
      if (v10)
      {
        v29 = MEMORY[0x1E12A1FE0](v28, a1);
      }

      else
      {
        if (v28 >= *(v25 + 16))
        {
          goto LABEL_27;
        }

        v29 = *(a1 + 8 * v28 + 32);
      }

      v30 = v29;
      v27 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v31 = [v29 v9[475]];
      if (v31)
      {
        break;
      }

      ++v28;
      if (v27 == v26)
      {
        goto LABEL_31;
      }
    }

    v73 = a1;
    v32 = v13;
    v33 = v31;
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v74 = v34;
    v75 = v36;
    v37 = specialized ContextUpdater.convertPayloadToUsoEntity(payload:)(v34, v36);
    if (!v37)
    {

      lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
      v54 = swift_allocError();
      *v55 = 9;
      outlined consume of Data._Representation(v74, v75);

      return v54;
    }

    v38 = v37;
    v72 = v32;
    result = [v30 identifier];
    if (!result)
    {
      break;
    }

    v40 = result;
    v80 = v38;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v42;
    v71 = v41;

    result = [v30 appBundleId];
    a1 = v73;
    if (!result)
    {
      __break(1u);
      break;
    }

    v43 = result;
    v66[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66[0] = v44;

    v68 = type metadata accessor for GroupIdentifier();
    v45 = *(v68 - 8);
    v67 = *(v45 + 56);
    v69 = v45 + 56;
    v46 = v79;
    v67(v79, 1, 1, v68);

    v47 = v82;
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

    GroupIdentifier.init(id:seq:)();
    v67(v46, 0, 1, v68);
    RREntity.group.setter();
    (*v77)(v83, v47, v86);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v87[2] + 1, 1, v87);
    }

    v49 = v87[2];
    v48 = v87[3];
    if (v49 >= v48 >> 1)
    {
      v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1, v87);
    }

    outlined consume of Data._Representation(v74, v75);

    v50 = v84;
    v51 = v86;
    (*(v84 + 8))(v82, v86);
    v52 = v87;
    v87[2] = v49 + 1;
    v53 = v51;
    v13 = v72;
    (*(v50 + 32))(v52 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49, v83, v53);
    v9 = off_1E8646000;
    if (v27 == v26)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t ContextUpdater.applyCorrectionsDonation(_:)(uint64_t a1)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - v4;
  v5 = type metadata accessor for CorrectionsDirectInvocation();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UserID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v30 - v16;
  v18 = type metadata accessor for CorrectionsContext();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 360))(v21);
  if ((*(v10 + 48))(v17, 1, v9))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  }

  else
  {
    (*(v10 + 16))(v13, v17, v9);
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    UserID.sharedUserId.getter();
    (*(v10 + 8))(v13, v9);
  }

  v24 = v1[18];
  v25 = v1[19];

  CorrectionsContext.init(userId:assistantId:)();
  v26 = v1[15];
  v27 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v26);
  Parse.DirectInvocation.identifier.getter();
  Parse.DirectInvocation.userData.getter();
  CorrectionsDirectInvocation.init(identifier:userData:)();
  v28 = v31;
  (*(v19 + 16))(v31, v23, v18);
  (*(v19 + 56))(v28, 0, 1, v18);
  (*(v27 + 40))(v8, v28, v26, v27);
  outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  (*(v32 + 8))(v8, v33);
  return (*(v19 + 8))(v23, v18);
}

uint64_t ContextUpdater.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = *(v0 + 136);
  swift_unknownObjectRelease();
  v2 = *(v0 + 152);

  v3 = *(v0 + 168);

  v4 = *(v0 + 184);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
  v5 = *(v0 + 232);

  v6 = *(v0 + 240);

  v7 = *(v0 + 248);

  v8 = *(v0 + 264);

  v9 = *(v0 + 272);

  v10 = *(v0 + 288);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v11 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_domainHints);

  return v0;
}

uint64_t ContextUpdater.__deallocating_deinit()
{
  ContextUpdater.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        outlined init with take of Any(&v27, v29);
        outlined init with take of Any(v29, v30);
        outlined init with take of Any(v30, &v28);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = outlined init with take of Any(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = outlined init with take of Any(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t closure #1 in SessionStateContextKeysManager.provideKeysToFlushForServerFallbackRequest()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  swift_beginAccess();
  v11 = *(a1 + 24);

  v13 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);

  v19 = v13;
  swift_beginAccess();
  v18 = *(a1 + 32);
  v14 = v4[13];
  v14(v7, *MEMORY[0x1E69D07F0], v3);

  specialized Set._Variant.insert(_:)(v10, v7);
  v15 = v4[1];
  v15(v10, v3);
  v14(v7, *MEMORY[0x1E69D07B8], v3);
  specialized Set._Variant.insert(_:)(v10, v7);
  v15(v10, v3);
  v14(v7, *MEMORY[0x1E69D07C8], v3);
  specialized Set._Variant.insert(_:)(v10, v7);
  v15(v10, v3);
  specialized Sequence.forEach(_:)(v18, &v19);

  *v17 = v19;
  return result;
}

void *SessionStateContextKeysManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t SessionStateContextKeysManager.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

void *SessionStateContextKeysManager.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = MEMORY[0x1E69E7CD0];
  v0[3] = v2;
  v0[4] = v3;
  return v0;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v24 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v24;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)(v14, a3, a4, a1, a2, v13);

    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = (v13[7] + 16 * v14);
  result = *v21;
  v23 = v21[1];
  *v21 = a1;
  v21[1] = a2;
LABEL_11:
  *v6 = v13;
  return result;
}

uint64_t specialized ContextUpdater.convertPayloadToUsoEntity(payload:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = 0;
  memset(&v14[16], 0, 32);
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type Siri_Nl_Core_Protocol_UsoGraph and conformance Siri_Nl_Core_Protocol_UsoGraph, MEMORY[0x1E69D1568]);
  Message.init(serializedData:extensions:partial:options:)();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for USOSerializedGraph, 0x1E69D25D8);
  v11 = MEMORY[0x1E12A1BA0](v10);
  if (USOSerializedGraph.usoSerializedGraphToUsoGraphSiriNl()())
  {
    v12 = static UsoConversionUtils.extractFirstEntityFromGraph(graph:)();

    (*(v7 + 8))(v10, v6);
    return v12;
  }

  else
  {
    (*(v7 + 8))(v10, v6);

    return 0;
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, unsigned __int8 a2, char a3, void *a4)
{
  v8 = *a4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v18 = *a4;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v20 = *a4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

void type metadata completion function for ContextUpdater()
{
  type metadata accessor for UserID?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UserID?()
{
  if (!lazy cache variable for type metadata for UserID?)
  {
    type metadata accessor for UserID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UserID?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError()
{
  result = lazy protocol witness table cache variable for type ConversationOutputError and conformance ConversationOutputError;
  if (!lazy protocol witness table cache variable for type ConversationOutputError and conformance ConversationOutputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationOutputError and conformance ConversationOutputError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationOutputError and conformance ConversationOutputError;
  if (!lazy protocol witness table cache variable for type ConversationOutputError and conformance ConversationOutputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationOutputError and conformance ConversationOutputError);
  }

  return result;
}

uint64_t ExecutionContextUpdateScope.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C61626F6C67;
  }

  if (a1 == 1)
  {
    return 0x55746E6572727563;
  }

  return 0x72657355656D6F68;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExecutionContextUpdateScope(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x55746E6572727563;
  v4 = 0xEB00000000726573;
  if (v2 != 1)
  {
    v3 = 0x72657355656D6F68;
    v4 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C61626F6C67;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x55746E6572727563;
  v8 = 0xEB00000000726573;
  if (*a2 != 1)
  {
    v7 = 0x72657355656D6F68;
    v8 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C61626F6C67;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExecutionContextUpdateScope()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExecutionContextUpdateScope()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecutionContextUpdateScope()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExecutionContextUpdateScope@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ExecutionContextUpdateScope.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ExecutionContextUpdateScope(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEB00000000726573;
  v5 = 0x55746E6572727563;
  if (v2 != 1)
  {
    v5 = 0x72657355656D6F68;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C61626F6C67;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t specialized ExecutionContextUpdateScope.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExecutionContextUpdateScope.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type ExecutionContextUpdateScope and conformance ExecutionContextUpdateScope()
{
  result = lazy protocol witness table cache variable for type ExecutionContextUpdateScope and conformance ExecutionContextUpdateScope;
  if (!lazy protocol witness table cache variable for type ExecutionContextUpdateScope and conformance ExecutionContextUpdateScope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionContextUpdateScope and conformance ExecutionContextUpdateScope);
  }

  return result;
}

uint64_t Conversation.taskObserver.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t Conversation.taskObserver.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*Conversation.taskObserver.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return Conversation.taskObserver.modify;
}

void Conversation.taskObserver.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

uint64_t key path setter for Conversation.rcId : Conversation(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t Conversation.rcId.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t Conversation.rcId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t key path setter for Conversation.hypothesisId : Conversation(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v11 - v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v7, v8 + v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return swift_endAccess();
}

uint64_t Conversation.hypothesisId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v3, a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t Conversation.hypothesisId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(a1, v1 + v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return swift_endAccess();
}

uint64_t Conversation.isPaused.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Conversation.isPaused.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t Conversation.correctionsFlow.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow;
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow);
  }

  else
  {
    v2 = closure #1 in Conversation.correctionsFlow.getter(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t closure #1 in Conversation.correctionsFlow.getter(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
  v2 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId + 8);
  v4 = type metadata accessor for ResponseFactory();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v7 = ResponseFactory.init()();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  outlined init with copy of ReferenceResolutionClientProtocol(a1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine, v20);
  static SiriKitEventSender.current.getter();
  v8 = type metadata accessor for SiriCorrectionsFlow();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
  v13 = type metadata accessor for PluginAction();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_steeringInput;
  v15 = type metadata accessor for Input();
  (*(*(v15 - 8) + 56))(&v11[v14], 1, 1, v15);
  v16 = &v11[OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_state];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  *(v11 + 2) = v3;
  *(v11 + 3) = v2;
  *(v11 + 4) = v7;
  outlined init with take of ReferenceResolutionClientProtocol(&v21, (v11 + 40));
  outlined init with take of ReferenceResolutionClientProtocol(v20, (v11 + 80));
  outlined init with take of ReferenceResolutionClientProtocol(&v19, &v11[OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender]);
  *&v21 = v11;
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow, type metadata accessor for SiriCorrectionsFlow);
  v17 = Flow.eraseToAnyFlow()();

  return v17;
}

uint64_t Conversation.correctionsFlow.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow);
  *(v1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = a1;
}

uint64_t (*Conversation.correctionsFlow.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Conversation.correctionsFlow.getter();
  return Conversation.correctionsFlow.modify;
}

uint64_t Conversation.correctionsFlow.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow);
  *(v1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = v2;
}

uint64_t Conversation.__allocating_init(initialFlow:taskService:pluginId:taskObserver:jetsamTransactionTimeout:rootEnvironment:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t *a9)
{
  v82 = a8;
  v83 = a6;
  v89 = a5;
  v85 = a4;
  v84 = a3;
  v90 = a2;
  v11 = type metadata accessor for DispatchTimeInterval();
  v77 = v11;
  v78 = *(v11 - 8);
  v12 = v78;
  v13 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  v88 = &v76 - v16;
  v18 = type metadata accessor for CorrectionsUndoManager();
  v19 = swift_allocObject();
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0;
  *(v19 + 24) = 0u;
  *(v19 + 16) = MEMORY[0x1E69E7CC0];
  v97 = 0;
  memset(v96, 0, sizeof(v96));
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v96, v19 + 24, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
  swift_endAccess();
  v20 = *(v12 + 16);
  v79 = v12 + 16;
  v80 = v20;
  v87 = a7;
  v20(v17, a7, v11);
  v86 = a9;
  outlined init with copy of ReferenceResolutionClientProtocol(a9, v96);
  v94 = v18;
  v95 = _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type CorrectionsUndoManager and conformance CorrectionsUndoManager, type metadata accessor for CorrectionsUndoManager);
  v93[0] = v19;
  v21 = type metadata accessor for Conversation(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for Conversation.State(0);
  swift_storeEnumTagMultiPayload();
  v25 = v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;
  v26 = (v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  *v26 = 12589;
  v26[1] = 0xE200000000000000;
  v27 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  v28 = type metadata accessor for UUID();
  (*(*(v28 - 8) + 56))(v24 + v27, 1, 1, v28);
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused) = 0;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = 0;
  type metadata accessor for InstrumentedStack(0);
  v29 = swift_allocObject();
  v29[5] = MEMORY[0x1E69E7CC8];
  v29[3] = 0;
  v29[4] = 0;
  v29[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
  swift_allocObject();
  swift_retain_n();

  v30 = specialized Node.init(value:parent:)(a1);
  specialized OrderedForest._push(_:)(v30);
  v31 = v30[2];
  v32 = type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  v36 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v35, 0);

  swift_beginAccess();
  v37 = v29[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = v29[5];
  v29[5] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v31, isUniquelyReferenced_nonNull_native);
  v29[5] = v92;
  v39 = v77;
  swift_endAccess();

  *(v24 + 112) = v29;
  v40 = v78;
  v41 = v81;
  v80(v81, v88, v39);
  type metadata accessor for OS_dispatch_queue();
  v42 = static OS_dispatch_queue.main.getter();
  v43 = type metadata accessor for JetsamHelper();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v47 = (v46 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  *v47 = 0;
  v47[1] = 0;
  v46[2] = 0xD000000000000023;
  v46[3] = 0x80000001DCA7E400;
  v46[4] = dispatch_semaphore_create(1);
  v46[5] = v42;
  (*(v40 + 32))(v46 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v41, v39);
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper) = v46;
  v48 = v82;
  swift_beginAccess();
  *(v25 + 8) = v83;
  v49 = a1;
  swift_unknownObjectWeakAssign();
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService) = v90;
  v50 = (v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
  v51 = v85;
  *v50 = v84;
  v50[1] = v51;
  v52 = *(a1 + 160);
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo) = v52;
  outlined init with copy of ReferenceResolutionClientProtocol(v93, v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
  outlined init with copy of ReferenceResolutionClientProtocol(v96, v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils);
  if (v48)
  {

    v53 = v52;
  }

  else
  {
    type metadata accessor for SiriEnvironment();

    v54 = v52;
    static SiriEnvironment.default.getter();
  }

  v55 = type metadata accessor for SiriEnvironment();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();

  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment) = SiriEnvironment.init(parent:)();
  v58 = type metadata accessor for SiriCorrectionsClientProvider();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();

  SiriCorrectionsClientProvider.init()();
  SiriEnvironment.correctionsClientProvider.setter();

  v61 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment;
  v62 = *(v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment);
  SiriEnvironment.correctionsClientProvider.getter();
  v63 = v94;
  v64 = v95;
  v65 = __swift_project_boxed_opaque_existential_1(v93, v94);
  v91[3] = v63;
  v91[4] = *(v64 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v91);
  (*(*(v63 - 8) + 16))(boxed_opaque_existential_0, v65, v63);
  dispatch thunk of SiriCorrectionsClientProvider.correctionsClient.setter();

  v67 = *(v24 + v61);
  type metadata accessor for UserIdentityProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, MEMORY[0x1E69D0010]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v68 = *(v24 + v61);
  type metadata accessor for FlowTaskProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, MEMORY[0x1E69CFB28]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v69 = *(v24 + v61);
  type metadata accessor for CallStateEnvironmentProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, MEMORY[0x1E69D0098]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v70 = *(v24 + v61);
  type metadata accessor for ScopedReferenceResolutionDataProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type ScopedReferenceResolutionDataProvider and conformance ScopedReferenceResolutionDataProvider, MEMORY[0x1E69D27E0]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v71 = *(v24 + v61);
  type metadata accessor for AceServiceContextProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type AceServiceContextProvider and conformance AceServiceContextProvider, MEMORY[0x1E69D0068]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v72 = *(v49 + 112);
  v73 = *(v24 + v61);

  dispatch thunk of AnyFlow.siriEnvironment.setter();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v86);
  v74 = *(v40 + 8);
  v74(v87, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  v74(v88, v39);

  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  return v24;
}

uint64_t Conversation.__allocating_init(initialFlow:taskService:pluginId:correctionsEngine:taskObserver:jetsamTransactionTimeout:rootEnvironment:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v26 = a4;
  v27 = a7;
  v28 = a8;
  v15 = a5[3];
  v16 = a5[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v18 = *(*(v15 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  v23 = specialized Conversation.__allocating_init(initialFlow:taskService:pluginId:correctionsEngine:taskObserver:jetsamTransactionTimeout:rootEnvironment:serverFallbackDisablingUtils:)(a1, a2, a3, v26, v21, a6, v27, v28, a9, a10, v25, v15, v16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v23;
}

uint64_t Conversation.init(initialFlow:taskService:pluginId:correctionsEngine:taskObserver:jetsamTransactionTimeout:rootEnvironment:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v11 = v10;
  v75 = a7;
  v76 = a8;
  v73 = a3;
  v74 = a4;
  v72 = a2;
  v79 = a10;
  v70 = a5;
  v71 = a9;
  v14 = type metadata accessor for DispatchTimeInterval();
  v77 = *(v14 - 8);
  v78 = v14;
  v15 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  type metadata accessor for Conversation.State(0);
  swift_storeEnumTagMultiPayload();
  v17 = v10 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  *(v17 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;
  v18 = (v10 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  *v18 = 12589;
  v18[1] = 0xE200000000000000;
  v19 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 56))(v11 + v19, 1, 1, v20);
  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused) = 0;
  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = 0;
  type metadata accessor for InstrumentedStack(0);
  v21 = swift_allocObject();
  v21[5] = MEMORY[0x1E69E7CC8];
  v21[3] = 0;
  v21[4] = 0;
  v21[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
  swift_allocObject();
  swift_retain_n();

  v22 = specialized Node.init(value:parent:)(a1);
  specialized OrderedForest._push(_:)(v22);
  v23 = v22[2];
  v24 = type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v28 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v27, 0);

  swift_beginAccess();
  v29 = v21[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = v21[5];
  v21[5] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v23, isUniquelyReferenced_nonNull_native);
  v21[5] = v81;
  swift_endAccess();

  v31 = a6;

  *(v11 + 112) = v21;
  v32 = v77;
  v33 = v69;
  v34 = v78;
  (*(v77 + 16))(v69, v76, v78);
  type metadata accessor for OS_dispatch_queue();
  v35 = static OS_dispatch_queue.main.getter();
  v36 = type metadata accessor for JetsamHelper();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v39 = swift_allocObject();
  v40 = &v39[OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction];
  *v40 = 0;
  *(v40 + 1) = 0;
  *(v39 + 2) = 0xD000000000000023;
  *(v39 + 3) = 0x80000001DCA7E400;
  *(v39 + 4) = dispatch_semaphore_create(1);
  *(v39 + 5) = v35;
  v41 = *(v32 + 32);
  v42 = v71;
  v41(&v39[OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout], v33, v34);
  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper) = v39;
  swift_beginAccess();
  *(v17 + 8) = v75;
  v75 = v31;
  swift_unknownObjectWeakAssign();
  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService) = v72;
  v43 = (v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
  v44 = v74;
  *v43 = v73;
  v43[1] = v44;
  v74 = a1;
  v45 = *(a1 + 160);
  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo) = v45;
  v46 = v70;
  outlined init with copy of ReferenceResolutionClientProtocol(v70, v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
  outlined init with copy of ReferenceResolutionClientProtocol(v79, v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils);
  if (v42)
  {

    v47 = v45;
  }

  else
  {
    type metadata accessor for SiriEnvironment();

    v48 = v45;
    static SiriEnvironment.default.getter();
  }

  v49 = type metadata accessor for SiriEnvironment();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();

  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment) = SiriEnvironment.init(parent:)();
  v52 = type metadata accessor for SiriCorrectionsClientProvider();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();

  SiriCorrectionsClientProvider.init()();
  SiriEnvironment.correctionsClientProvider.setter();

  v55 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment;
  v56 = *(v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment);
  SiriEnvironment.correctionsClientProvider.getter();
  v57 = v46[3];
  v58 = v46[4];
  v59 = __swift_project_boxed_opaque_existential_1(v46, v57);
  v80[3] = v57;
  v80[4] = *(v58 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v80);
  (*(*(v57 - 8) + 16))(boxed_opaque_existential_0, v59, v57);
  dispatch thunk of SiriCorrectionsClientProvider.correctionsClient.setter();

  v61 = *(v11 + v55);
  type metadata accessor for UserIdentityProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, MEMORY[0x1E69D0010]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v62 = *(v11 + v55);
  type metadata accessor for FlowTaskProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, MEMORY[0x1E69CFB28]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v63 = *(v11 + v55);
  type metadata accessor for CallStateEnvironmentProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, MEMORY[0x1E69D0098]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v64 = *(v11 + v55);
  type metadata accessor for ScopedReferenceResolutionDataProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type ScopedReferenceResolutionDataProvider and conformance ScopedReferenceResolutionDataProvider, MEMORY[0x1E69D27E0]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v65 = *(v11 + v55);
  type metadata accessor for AceServiceContextProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type AceServiceContextProvider and conformance AceServiceContextProvider, MEMORY[0x1E69D0068]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v66 = *(v74 + 112);
  v67 = *(v11 + v55);

  dispatch thunk of AnyFlow.siriEnvironment.setter();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  (*(v77 + 8))(v76, v78);

  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  return v11;
}

BOOL Conversation.isCancelled.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v0 + v8, v7, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v7, v4, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    outlined destroy of Conversation.State(v4, type metadata accessor for Conversation.State);
  }

  return EnumCaseMultiPayload == 5;
}

BOOL Conversation.State.isCancelled.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v0, v4, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    outlined destroy of Conversation.State(v4, type metadata accessor for Conversation.State);
  }

  return EnumCaseMultiPayload == 5;
}

uint64_t Conversation.State.description.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v0, v4, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined destroy of Conversation.State(v4, type metadata accessor for Conversation.State);
      return 0x6E69747563657865;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x7964616572;
    }

    else
    {
      return 0x656C6C65636E6163;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of Conversation.State(v4, type metadata accessor for Conversation.State);
      return 0x74616C7563657073;
    }

    else
    {
      outlined destroy of Conversation.State(v4, type metadata accessor for Conversation.State);
      return 0x456F547964616572;
    }
  }

  else
  {
    v7 = *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR) + 48)];

    outlined destroy of Conversation.State(v4, type metadata accessor for SiriRequest);
    return 0x6465747065636361;
  }
}

uint64_t closure #1 in Conversation.ensureReady(timeout:)(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E69E86A8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = type metadata accessor for ConversationCommitResult();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v6 = v2;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;
  v9 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, v7, v8, v9);
}

uint64_t Conversation.accept(request:)(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 312) = a1;

  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v3, 0);
}

uint64_t Conversation.paraphrase()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = *(*(type metadata accessor for Conversation.State(0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(type metadata accessor for SiriRequest(0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.paraphrase(), v1, 0);
}

uint64_t Conversation.paraphrase()()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[6];
  v4 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v3 + v4, v1, type metadata accessor for Conversation.State);
  v5 = Conversation.State.assertAcceptedInput(function:)(v2, "paraphrase()", 12, 2);
  v0[13] = v5;
  v6 = v0[12];
  v7 = v0[10];
  v8 = v5;
  outlined destroy of Conversation.State(v0[11], type metadata accessor for Conversation.State);
  outlined destroy of Conversation.State(v6, type metadata accessor for SiriRequest);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  v0[14] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime28ConversationParaphraseResultO_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in Conversation.paraphrase(), v10);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v11 = v0[9];
  v12 = type metadata accessor for OSSignposter();
  v0[15] = __swift_project_value_buffer(v12, static Signposter.executor);
  static OSSignpostID.exclusive.getter();

  return MEMORY[0x1EEE6DFA0](Conversation.paraphrase(), 0, 0);
}

{
  v1 = v0[15];
  v0[16] = OSSignposter.beginIntervalTelemetryEnabled(_:id:)("ParaphraseTime", 14, 2, v0[9]);
  v2 = *(MEMORY[0x1E69E86A8] + 4);
  v3 = swift_task_alloc();
  v0[17] = v3;
  v4 = type metadata accessor for ConversationParaphraseResult(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v3 = v0;
  v3[1] = Conversation.paraphrase();
  v6 = v0[14];
  v7 = v0[5];
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v7, v6, v4, v5, v8);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = Conversation.paraphrase();
  }

  else
  {
    v3 = Conversation.paraphrase();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  $defer #1 <A>() in OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)(v0[15], "ParaphraseTime", 14, 2, v0[16]);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](Conversation.paraphrase(), v4, 0);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7();
}

{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  $defer #1 <A>() in OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)(v0[15], "ParaphraseTime", 14, 2, v0[16]);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](Conversation.paraphrase(), v4, 0);
}

{
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[18];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in Conversation.paraphrase()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for ActionParaphrase();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Conversation.paraphrase(), 0, 0);
}

uint64_t closure #1 in Conversation.paraphrase()()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = closure #1 in Conversation.paraphrase();
  v3 = v0[6];

  return FlowAgent.paraphrase()(v3);
}

{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in Conversation.paraphrase(), 0, 0);
}

{
  (*(v0[5] + 32))(v0[2], v0[6], v0[4]);
  type metadata accessor for ConversationParaphraseResult(0);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t Conversation.flexibleExecutionSupport()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for FlexibleExecutionSupportOptions();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.flexibleExecutionSupport(), v1, 0);
}

uint64_t Conversation.flexibleExecutionSupport()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = (*(**(v1 + 112) + 216))();
  if (v3)
  {
    v4 = *(v3 + 16);
    v0[10] = v4;

    return MEMORY[0x1EEE6DFA0](Conversation.flexibleExecutionSupport(), v4, 0);
  }

  else
  {
    specialized Logger.debugF(_:_:_:_:)();
    if (one-time initialization token for none != -1)
    {
      swift_once();
    }

    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[2];
    v8 = __swift_project_value_buffer(v5, static FlexibleExecutionSupportOptions.none);
    (*(v6 + 16))(v7, v8, v5);
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];

    v12 = v0[1];

    return v12();
  }
}

{
  v1 = v0[3];
  v0[11] = *(v0[10] + 112);

  return MEMORY[0x1EEE6DFA0](Conversation.flexibleExecutionSupport(), v1, 0);
}

{
  v43 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  dispatch thunk of AnyFlow.flexibleExecutionSupport.getter();
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[8];
  v7 = v0[9];
  if (v5 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[8], &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    specialized Logger.debugF(_:_:_:_:)();
    if (one-time initialization token for none != -1)
    {
      swift_once();
    }

    v8 = v0[11];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[2];
    v12 = __swift_project_value_buffer(v9, static FlexibleExecutionSupportOptions.none);
    (*(v10 + 16))(v11, v12, v9);
  }

  else
  {
    v13 = v0[7];
    v14 = v0[4];
    v15 = v0[5];
    v16 = v0[2];
    (*(v15 + 32))(v16, v0[8], v14);
    v17 = *(v15 + 16);
    v17(v13, v16, v14);
    v18 = static os_log_type_t.debug.getter();
    v19 = Logger.logObject.getter();
    v20 = os_log_type_enabled(v19, v18);
    v21 = v0[11];
    if (v20)
    {
      v37 = v0[6];
      v38 = v0[4];
      v39 = v0[7];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v40 = v23;
      *v22 = 136315650;
      v24 = StaticString.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v40);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v27 = StaticString.description.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v40);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2080;
      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      MEMORY[0x1E12A1580](0xD000000000000044, 0x80000001DCA7E690);
      v17(v37, v39, v38);
      v30 = String.init<A>(describing:)();
      MEMORY[0x1E12A1580](v30);

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v40);

      *(v22 + 24) = v31;
      _os_log_impl(&dword_1DC659000, v19, v18, "%s:%s: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    else
    {
    }

    (*(v0[5] + 8))(v0[7], v0[4]);
  }

  v33 = v0[7];
  v32 = v0[8];
  v34 = v0[6];

  v35 = v0[1];

  return v35();
}

Swift::Bool __swiftcall Conversation.isCorrectable()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine + 24);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine), v1);
  return (*(v2 + 16))(v1, v2) & 1;
}

uint64_t Conversation.topFlowAgent.getter()
{
  v1 = (*(**(v0 + 112) + 216))();
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);

  return v2;
}

BOOL Conversation.isReady.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v0 + v8, v7, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v7, v4, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    outlined destroy of Conversation.State(v4, type metadata accessor for Conversation.State);
  }

  return EnumCaseMultiPayload == 4;
}

BOOL Conversation.State.isReady.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v0, v4, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    outlined destroy of Conversation.State(v4, type metadata accessor for Conversation.State);
  }

  return EnumCaseMultiPayload == 4;
}

BOOL Conversation.State.shouldContinueSpeculating.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v0, v4, type metadata accessor for Conversation.State);
  v5 = ((swift_getEnumCaseMultiPayload() - 1) & 0xFFFFFFFD) == 0;
  outlined destroy of Conversation.State(v4, type metadata accessor for Conversation.State);
  return v5;
}

uint64_t Conversation.State.prepareComplete(selectedFlow:)(uint64_t a1)
{
  v3 = type metadata accessor for Conversation.State(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v1, v6, type metadata accessor for Conversation.State);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of Conversation.State(v1, type metadata accessor for Conversation.State);
    *v1 = a1;
    swift_storeEnumTagMultiPayload();
  }

  return outlined destroy of Conversation.State(v6, type metadata accessor for Conversation.State);
}

BOOL Conversation.State.shouldContinueExecuting.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v0, v4, type metadata accessor for Conversation.State);
  v5 = (swift_getEnumCaseMultiPayload() & 0xFFFFFFFE) == 2;
  outlined destroy of Conversation.State(v4, type metadata accessor for Conversation.State);
  return v5;
}

uint64_t Conversation.updateFlowEnvironment(flowAgent:request:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.updateFlowEnvironment(flowAgent:request:), a1, 0);
}

uint64_t Conversation.updateFlowEnvironment(flowAgent:request:)()
{
  v1 = v0[7];
  v0[12] = *(v0[5] + 112);
  return MEMORY[0x1EEE6DFA0](Conversation.updateFlowEnvironment(flowAgent:request:), v1, 0);
}

{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[7];
  v0[13] = dispatch thunk of AnyFlow.siriEnvironment.getter();
  SiriEnvironment.update(forRequest:)(v2);
  v0[14] = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](Conversation.updateFlowEnvironment(flowAgent:request:), v4, 0);
}

{
  v1 = v0[14];
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    v2 = v0[7];
    v7 = Conversation.updateFlowEnvironment(flowAgent:request:);
    goto LABEL_9;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1E12A1FE0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v5, v2, v3);
    }

    v6 = *(v4 + 32);
  }

  v0[15] = v6;
  v2 = v0[7];
  v7 = Conversation.updateFlowEnvironment(flowAgent:request:);
LABEL_9:
  v5 = v7;
  v3 = 0;

  return MEMORY[0x1EEE6DFA0](v5, v2, v3);
}

{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v15 = v0[8];
  v16 = v0[13];
  type metadata accessor for FlowTaskProvider();
  v5 = *(v1 + 24);
  v14 = *(v1 + 16);
  v6 = *(v1 + 33);
  v7 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v8 = *(v2 + 16);
  v8(v3, v1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v4);

  dispatch thunk of FlowTaskProvider.__allocating_init(id:isClientInitiated:creationTime:)();
  SiriEnvironment.flowTask.setter();
  SiriEnvironment.currentRequest.getter();
  v8(v3, v1 + v7, v4);

  FlowTaskMetadata.init(id:isClientInitiated:creationTime:)();
  v9 = type metadata accessor for FlowTaskMetadata();
  (*(*(v9 - 8) + 56))(v15, 0, 1, v9);
  CurrentRequest.flowTaskMetadata.setter();

  v10 = v0[11];
  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t Conversation.attemptCorrectionsOn(request:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](Conversation.attemptCorrectionsOn(request:), v1, 0);
}

uint64_t Conversation.attemptCorrectionsOn(request:)()
{
  v1 = (v0[8] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if ((*(v3 + 16))(v2, v3))
  {
    v4 = v0[8];
    v5 = Conversation.correctionsFlow.getter();
    v6 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo);
    type metadata accessor for FlowAgent();
    v7 = swift_allocObject();
    v0[9] = v7;
    v8 = v6;
    swift_defaultActor_initialize();
    *(v7 + 130) = 0;
    *(v7 + 136) = 0;
    *(v7 + 144) = 0;
    *(v7 + 112) = v5;
    *(v7 + 120) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

    dispatch thunk of AnyFlow.unbox<A>(as:)();

    LOBYTE(v6) = v0[5] != 0;
    outlined destroy of ReferenceResolutionClientProtocol?((v0 + 2), &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
    *(v7 + 128) = v6;
    *(v7 + 129) = v6;
    *(v7 + 152) = MEMORY[0x1E69E7CC0];
    *(v7 + 160) = v8;
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = Conversation.attemptCorrectionsOn(request:);
    v10 = v0[7];
    v11 = v0[8];

    return Conversation.updateFlowEnvironment(flowAgent:request:)(v7, v10);
  }

  else
  {
    v13 = v0[1];

    return v13(0);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 56);
  v4 = *v0;

  v5 = *(type metadata accessor for SiriRequest(0) + 20);
  v6 = swift_task_alloc();
  *(v1 + 88) = v6;
  *v6 = v4;
  v6[1] = Conversation.attemptCorrectionsOn(request:);
  v7 = *(v1 + 72);

  return FlowAgent.on(input:)(v3 + v5);
}

{
  v1 = *(v0 + 72);
  if (*(v0 + 96) != 1)
  {

    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t Conversation.attemptCorrectionsOn(request:)(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](Conversation.attemptCorrectionsOn(request:), v3, 0);
}

uint64_t Conversation.State.assertNotCancelled(function:)()
{
  v1 = type metadata accessor for Conversation.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v0, v4, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = outlined destroy of Conversation.State(v4, type metadata accessor for Conversation.State);
  if (EnumCaseMultiPayload == 5)
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    strcpy(v11, "Cannot call ");
    BYTE5(v11[1]) = 0;
    HIWORD(v11[1]) = -5120;
    v7 = StaticString.description.getter();
    MEMORY[0x1E12A1580](v7);

    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA7E5A0);
    v8 = v11[0];
    v9 = v11[1];
    lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
    swift_allocError();
    *v10 = v8;
    v10[1] = v9;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for Conversational.paraphrase() in conformance Conversation(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return Conversation.paraphrase()(a1);
}

uint64_t protocol witness for Conversational.isCorrectable() in conformance Conversation()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for Conversational.isCorrectable() in conformance Conversation, v2, 0);
}

{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  v5 = *(v0 + 8);
  v6 = v4 & 1;

  return v5(v6);
}

uint64_t protocol witness for Conversational.flexibleExecutionSupport() in conformance Conversation(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return Conversation.flexibleExecutionSupport()(a1);
}

uint64_t SiriRequest.requestId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SiriRequest.input.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriRequest(0) + 20);
  v4 = type metadata accessor for Input();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriRequest.environmentData.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriRequest(0) + 24));
}

uint64_t SiriRequest.sessionConfigurationProvider.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriRequest(0) + 28));
}

uint64_t SiriRequest.scopedRRData.getter()
{
  v1 = v0 + *(type metadata accessor for SiriRequest(0) + 32);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t SiriRequest.currentTCUProvider.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriRequest(0) + 36));
}

uint64_t SiriRequest.nlRoutingDecisionProvider.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriRequest(0) + 40));
}

uint64_t SiriRequest.flowRedirectContextProvider.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriRequest(0) + 44));
}

uint64_t SiriRequest.init(requestId:input:environmentData:sessionConfigurationProvider:scopedRRData:currentTCUProvider:nlRoutingDecisionProvider:flowRedirectContextProvider:identities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for SiriRequest(0);
  v18 = v17[5];
  v19 = type metadata accessor for Input();
  (*(*(v19 - 8) + 32))(&a9[v18], a3, v19);
  *&a9[v17[6]] = a4;
  *&a9[v17[7]] = a5;
  result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a12, &a9[v17[12]], &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  v21 = &a9[v17[8]];
  *v21 = a6;
  *(v21 + 1) = a7;
  *&a9[v17[9]] = a8;
  *&a9[v17[10]] = a10;
  *&a9[v17[11]] = a11;
  return result;
}

uint64_t SiriRequestIdentities.otherHomeMembers.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriRequestIdentities(0) + 24));
}

uint64_t SiriRequestIdentities.init(proposedIdentity:identityMeetingUserSessionThreshold:otherHomeMembers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a1, a4, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v7 = type metadata accessor for SiriRequestIdentities(0);
  result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a2, a4 + *(v7 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t specialized Conversation.__allocating_init(initialFlow:taskService:pluginId:correctionsEngine:taskObserver:jetsamTransactionTimeout:rootEnvironment:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v83 = a8;
  v78 = a7;
  v79 = a6;
  v80 = a3;
  v81 = a4;
  v77 = a10;
  v76 = a9;
  v84 = type metadata accessor for DispatchTimeInterval();
  v82 = *(v84 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v75 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a12;
  v89 = a13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v87);
  (*(*(a12 - 8) + 32))(boxed_opaque_existential_0, a5, a12);
  v19 = type metadata accessor for Conversation(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for Conversation.State(0);
  swift_storeEnumTagMultiPayload();
  v23 = v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  *(v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;
  v24 = (v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  *v24 = 12589;
  v24[1] = 0xE200000000000000;
  v25 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  v26 = type metadata accessor for UUID();
  (*(*(v26 - 8) + 56))(v22 + v25, 1, 1, v26);
  *(v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused) = 0;
  *(v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = 0;
  type metadata accessor for InstrumentedStack(0);
  v27 = swift_allocObject();
  v27[5] = MEMORY[0x1E69E7CC8];
  v27[3] = 0;
  v27[4] = 0;
  v27[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
  swift_allocObject();
  swift_retain_n();

  v28 = specialized Node.init(value:parent:)(a1);
  specialized OrderedForest._push(_:)(v28);
  v29 = v28[2];
  v30 = type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();

  v34 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v33, 0);

  swift_beginAccess();
  v35 = v27[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = v27[5];
  v27[5] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v29, isUniquelyReferenced_nonNull_native);
  v27[5] = v86;
  swift_endAccess();

  v37 = a2;

  *(v22 + 112) = v27;
  v38 = v82;
  v39 = v75;
  v40 = v84;
  (*(v82 + 16))(v75, v83, v84);
  type metadata accessor for OS_dispatch_queue();
  v41 = static OS_dispatch_queue.main.getter();
  v42 = type metadata accessor for JetsamHelper();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v46 = &v45[OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction];
  *v46 = 0;
  *(v46 + 1) = 0;
  *(v45 + 2) = 0xD000000000000023;
  *(v45 + 3) = 0x80000001DCA7E400;
  v47 = v76;
  *(v45 + 4) = dispatch_semaphore_create(1);
  *(v45 + 5) = v41;
  v48 = *(v38 + 32);
  v49 = v77;
  v48(&v45[OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout], v39, v40);
  *(v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper) = v45;
  swift_beginAccess();
  *(v23 + 8) = v78;
  swift_unknownObjectWeakAssign();
  *(v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService) = v37;
  v50 = (v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
  v51 = v81;
  *v50 = v80;
  v50[1] = v51;
  v52 = *(a1 + 160);
  *(v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo) = v52;
  outlined init with copy of ReferenceResolutionClientProtocol(v87, v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
  outlined init with copy of ReferenceResolutionClientProtocol(v49, v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils);
  if (v47)
  {

    v53 = v52;
  }

  else
  {
    type metadata accessor for SiriEnvironment();

    v54 = v52;
    static SiriEnvironment.default.getter();
  }

  v55 = type metadata accessor for SiriEnvironment();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();

  *(v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment) = SiriEnvironment.init(parent:)();
  v58 = type metadata accessor for SiriCorrectionsClientProvider();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();

  SiriCorrectionsClientProvider.init()();
  SiriEnvironment.correctionsClientProvider.setter();

  v61 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment;
  v62 = *(v22 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment);
  SiriEnvironment.correctionsClientProvider.getter();
  v63 = v88;
  v64 = v89;
  v65 = __swift_project_boxed_opaque_existential_1(v87, v88);
  v85[3] = v63;
  v85[4] = *(v64 + 8);
  v66 = __swift_allocate_boxed_opaque_existential_0(v85);
  (*(*(v63 - 8) + 16))(v66, v65, v63);
  dispatch thunk of SiriCorrectionsClientProvider.correctionsClient.setter();

  v67 = *(v22 + v61);
  type metadata accessor for UserIdentityProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, MEMORY[0x1E69D0010]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v68 = *(v22 + v61);
  type metadata accessor for FlowTaskProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, MEMORY[0x1E69CFB28]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v69 = *(v22 + v61);
  type metadata accessor for CallStateEnvironmentProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, MEMORY[0x1E69D0098]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v70 = *(v22 + v61);
  type metadata accessor for ScopedReferenceResolutionDataProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type ScopedReferenceResolutionDataProvider and conformance ScopedReferenceResolutionDataProvider, MEMORY[0x1E69D27E0]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v71 = *(v22 + v61);
  type metadata accessor for AceServiceContextProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type AceServiceContextProvider and conformance AceServiceContextProvider, MEMORY[0x1E69D0068]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  v72 = *(a1 + 112);
  v73 = *(v22 + v61);

  dispatch thunk of AnyFlow.siriEnvironment.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  (*(v82 + 8))(v83, v84);
  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  return v22;
}

uint64_t partial apply for closure #1 in Conversation.ensureReady(timeout:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in Conversation.ensureReady(timeout:)(a1, v1);
}

unint64_t lazy protocol witness table accessor for type TimedOutError and conformance TimedOutError()
{
  result = lazy protocol witness table cache variable for type TimedOutError and conformance TimedOutError;
  if (!lazy protocol witness table cache variable for type TimedOutError and conformance TimedOutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimedOutError and conformance TimedOutError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError()
{
  result = lazy protocol witness table cache variable for type IllegalStateError and conformance IllegalStateError;
  if (!lazy protocol witness table cache variable for type IllegalStateError and conformance IllegalStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IllegalStateError and conformance IllegalStateError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CancelledError and conformance CancelledError()
{
  result = lazy protocol witness table cache variable for type CancelledError and conformance CancelledError;
  if (!lazy protocol witness table cache variable for type CancelledError and conformance CancelledError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CancelledError and conformance CancelledError);
  }

  return result;
}

uint64_t partial apply for closure #1 in Conversation.paraphrase()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in Conversation.paraphrase()(a1, v4, v5, v6);
}

uint64_t dispatch thunk of Conversational.cancel()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of Conversational.ensureReady(timeout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of Conversational.accept(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of Conversational.paraphrase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of Conversational.prepare()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of Conversational.commit()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of Conversational.isEmpty()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider;

  return v9(a1, a2);
}

uint64_t dispatch thunk of Conversational.isCorrectable()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of Conversational.flexibleExecutionSupport()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v11(a1, a2, a3);
}