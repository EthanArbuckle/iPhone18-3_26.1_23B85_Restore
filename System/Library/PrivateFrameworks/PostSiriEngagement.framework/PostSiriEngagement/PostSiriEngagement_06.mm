uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v3 = MEMORY[0x25F8CE500](a1);
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  else
  {
    v14 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = MEMORY[0x25F8CE500](v14);
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), v2);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t UISessionSignalBuilder.fetchDataStreams(taskIndex:completion:)(unint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v95 = a3;
  v96 = a2;
  v94 = a1;
  Configuration = type metadata accessor for PSEBiomeFetchConfiguration();
  v5 = *(*(Configuration - 8) + 64);
  MEMORY[0x28223BE20](Configuration);
  v93 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v85 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v83 = v75 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v84 = v75 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v91 = v75 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v90 = v75 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v75 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v75 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v75 - v27;
  v29 = type metadata accessor for SiriUISession(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v3 + 112))(v32);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    outlined destroy of Date?(v28, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
    return v96(v3);
  }

  outlined init with take of SiriUISession(v28, v34);
  v36 = v8[2];
  v36(v24, v34, v7);
  v82 = *(v29 + 24);
  v89 = v22;
  v37 = v22;
  v38 = v36;
  v39 = (v36)(v37, &v34[v82], v7);
  v40 = *(*v4 + 136);
  v87 = *v4 + 136;
  v88 = v40;
  v41 = v40(v39);
  v86 = v34;
  if (v41 >> 62)
  {
    v72 = v41 & 0xFFFFFFFFFFFFFF8;
    if (v41 < 0)
    {
      v72 = v41;
    }

    v42 = MEMORY[0x25F8CE500](v72);
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 < 2)
  {
    goto LABEL_32;
  }

  v44 = v88(v43);
  if ((v44 & 0xC000000000000001) != 0)
  {
    v45 = MEMORY[0x25F8CE460](v94, v44);
  }

  else
  {
    if ((v94 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v94)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v45 = *(v44 + 8 * v94 + 32);
  }

  v47 = v90;
  (*(*v45 + 352))(v46);
  v77 = v8[1];
  v78 = v8 + 1;
  v77(v24, v7);
  v80 = v8;
  v81 = v24;
  v48 = v8[4];
  v8 += 4;
  v90 = v48;
  v49 = (v48)(v24, v47, v7);
  v24 = (*v45 + 376);
  v34 = v91;
  v76 = *v24;
  v50 = v76(v49);
  v44 = v88(v50);
  v79 = v36;
  if (!(v44 >> 62))
  {
    v51 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_39:
  v73 = v44 & 0xFFFFFFFFFFFFFF8;
  if (v44 < 0)
  {
    v73 = v44;
  }

  v51 = MEMORY[0x25F8CE500](v73);
LABEL_12:

  v38 = v94 + 1;
  if (__OFADD__(v94, 1))
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v51 != v38)
  {
    v44 = v88(v44);
    if (!(v44 >> 62))
    {
      v54 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_17;
    }

LABEL_44:
    v74 = v44 & 0xFFFFFFFFFFFFFF8;
    if (v44 < 0)
    {
      v74 = v44;
    }

    v54 = MEMORY[0x25F8CE500](v74);
LABEL_17:

    if (v38 >= v54)
    {
      v53 = v89;
      v77(v89, v7);

      v38 = v79;
      goto LABEL_30;
    }

    result = v88(v55);
    v75[1] = v8;
    v75[0] = v24;
    if ((result & 0xC000000000000001) == 0)
    {
      if (v38 < 0)
      {
        __break(1u);
      }

      else
      {
        v53 = v89;
        if (v38 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v56 = *(result + 8 * v38 + 32);

LABEL_22:

          v58 = v83;
          v59 = v76(v57);
          v60 = v85;
          (*(*v56 + 352))(v59);
          lazy protocol witness table accessor for type Date and conformance Date();
          LODWORD(v94) = dispatch thunk of static Comparable.>= infix(_:_:)();

          v61 = v77;
          v77(v34, v7);
          v61(v53, v7);
          if (v94)
          {
            v62 = v58;
          }

          else
          {
            v62 = v60;
          }

          if (v94)
          {
            v63 = v60;
          }

          else
          {
            v63 = v58;
          }

          v61(v62, v7);
          v64 = v84;
          v65 = v63;
          v66 = v90;
          (v90)(v84, v65, v7);
          v66(v34, v64, v7);
          v38 = v79;
          goto LABEL_31;
        }
      }

      __break(1u);
      return result;
    }

    v56 = MEMORY[0x25F8CE460](v38, result);
    v53 = v89;
    goto LABEL_22;
  }

  v52 = v77;
  v77(v34, v7);
  v53 = v89;
  v52(v89, v7);
  v38 = v79;
  v79(v34, &v86[v82], v7);
LABEL_30:
  v66 = v90;
LABEL_31:
  v66(v53, v34, v7);
  v8 = v80;
  v24 = v81;
LABEL_32:
  v67 = v24;
  v68 = v93;
  (v38)(v93, v24, v7);
  v69 = v89;
  (v38)(v68 + *(Configuration + 20), v89, v7);
  v70 = *(**(v4 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) + 304);

  v70(v68, partial apply for closure #1 in UISessionSignalBuilder.fetchDataStreams(taskIndex:completion:), v4);

  v96(v4);
  _s18PostSiriEngagement0B9UISessionVWOhTm_0(v68, type metadata accessor for PSEBiomeFetchConfiguration);
  v71 = v8[1];
  v71(v69, v7);
  v71(v67, v7);
  return _s18PostSiriEngagement0B9UISessionVWOhTm_0(v86, type metadata accessor for SiriUISession);
}

uint64_t UISessionSignalBuilder.fetchDataStreams(taskIndex:endDate:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  Configuration = type metadata accessor for PSEBiomeFetchConfiguration();
  v6 = *(*(Configuration - 8) + 64);
  MEMORY[0x28223BE20](Configuration);
  v50 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v47 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v45 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v48 = v45 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v45 - v19;
  v21 = *(*v2 + 136);
  v22 = v21(v18);
  v51 = Configuration;
  if ((v22 & 0xC000000000000001) != 0)
  {
    Configuration = MEMORY[0x25F8CE460](a1, v22);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    Configuration = *(v22 + 8 * a1 + 32);
  }

  v24 = *(*Configuration + 376);
  v45[1] = *Configuration + 376;
  v46 = v24;
  v25 = v24(v23);
  v22 = v21(v25);
  if (!(v22 >> 62))
  {
    v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_7;
  }

LABEL_27:
  v43 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 < 0)
  {
    v43 = v22;
  }

  v45[0] = v22;
  v26 = MEMORY[0x25F8CE500](v43);
LABEL_7:

  if (__OFADD__(a1++, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v26 == a1)
  {
    (*(v9 + 8))(v20, v8);
    v28 = (*(v9 + 16))(v20, v49, v8);
LABEL_24:
    v41 = v50;
    (*(*Configuration + 352))(v28);
    (*(v9 + 16))(v41 + *(v51 + 20), v20, v8);
    v42 = *(**(v3 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) + 304);

    v42(v41, partial apply for closure #1 in UISessionSignalBuilder.fetchDataStreams(taskIndex:endDate:), v3);

    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v41, type metadata accessor for PSEBiomeFetchConfiguration);
    return (*(v9 + 8))(v20, v8);
  }

  v22 = v21(v22);
  if (!(v22 >> 62))
  {
    v29 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_32:
  v44 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 < 0)
  {
    v44 = v22;
  }

  v49 = v22;
  v29 = MEMORY[0x25F8CE500](v44);
LABEL_12:

  if (a1 >= v29)
  {
    goto LABEL_24;
  }

  result = v21(v28);
  if ((result & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x25F8CE460](a1, result);
    goto LABEL_17;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (a1 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(result + 8 * a1 + 32);

LABEL_17:

    v33 = v46(v32);
    v34 = v47;
    (*(*v31 + 352))(v33);
    lazy protocol witness table accessor for type Date and conformance Date();
    v35 = dispatch thunk of static Comparable.>= infix(_:_:)();

    v36 = *(v9 + 8);
    v36(v20, v8);
    if (v35)
    {
      v37 = v15;
    }

    else
    {
      v37 = v34;
    }

    if (v35)
    {
      v38 = v34;
    }

    else
    {
      v38 = v15;
    }

    v36(v37, v8);
    v39 = *(v9 + 32);
    v40 = v48;
    v39(v48, v38, v8);
    v28 = (v39)(v20, v40, v8);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in UISessionSignalBuilder.fetchDataStreams(taskIndex:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2)
  {
    v6 = a2[3];
    v5 = a2[4];
    v8 = a2[5];
    v7 = a2[6];
    v9 = a2[7];
    v10 = a2[8];
    v41 = a2[10];
    v28 = a2[9];
    v30 = a2[11];
    v31 = a2[12];
    v32 = a2[13];
    v34 = a2[14];
    v11 = a2[2];
    *&v53[0] = a2[1];

    specialized MutableCollection<>.sort(by:)(v53, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v36 = *&v53[0];
    v52[0] = v11;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v40 = v52[0];
    v52[0] = v6;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v39 = v52[0];
    v52[0] = v4;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v12 = v52[0];
    v52[0] = v5;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v38 = v52[0];
    v52[0] = v8;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v13 = v52[0];
    v52[0] = v7;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v14 = v52[0];
    v52[0] = v9;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v15 = v52[0];
    v52[0] = v10;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v16 = v52[0];
    v52[0] = v28;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v29 = v52[0];
    v52[0] = v41;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v42 = v52[0];
    v52[0] = v30;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    v17 = a3;

    v18 = v52[0];
    v52[0] = v31;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v19 = v52[0];
    v52[0] = v32;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v20 = v52[0];
    v52[0] = v34;

    specialized MutableCollection<>.sort(by:)(v52, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

    v21 = v52[0];
    v22 = v36;
    v23 = v29;
    v24 = v42;
  }

  else
  {
    v17 = a3;
    v12 = MEMORY[0x277D84F90];
    swift_bridgeObjectRelease_n();
    v22 = v12;
    v39 = v12;
    v40 = v12;
    v38 = v12;
    v13 = v12;
    v14 = v12;
    v15 = v12;
    v16 = v12;
    v23 = v12;
    v24 = v12;
    v18 = v12;
    v19 = v12;
    v20 = v12;
    v21 = v12;
  }

  v43 = v24;
  v33 = v15;
  v35 = v20;
  v37 = v21;
  *&v44 = v12;
  *(&v44 + 1) = v22;
  *&v45 = v40;
  *(&v45 + 1) = v39;
  *&v46 = v38;
  *(&v46 + 1) = v13;
  *&v47 = v14;
  *(&v47 + 1) = v15;
  *&v48 = v16;
  *(&v48 + 1) = v23;
  *&v49 = v24;
  *(&v49 + 1) = v18;
  *&v50 = v19;
  *(&v50 + 1) = v20;
  v51 = v21;
  v53[2] = v46;
  v53[3] = v47;
  v53[0] = v44;
  v53[1] = v45;
  v54 = v21;
  v53[5] = v49;
  v53[6] = v50;
  v53[4] = v48;
  v25 = *(*v17 + 168);
  v26 = v22;
  outlined init with copy of PSEBiomeEventsSource(&v44, v52);
  v25(v53);
  v52[0] = v12;
  v52[1] = v26;
  v52[2] = v40;
  v52[3] = v39;
  v52[4] = v38;
  v52[5] = v13;
  v52[6] = v14;
  v52[7] = v33;
  v52[8] = v16;
  v52[9] = v23;
  v52[10] = v43;
  v52[11] = v18;
  v52[12] = v19;
  v52[13] = v35;
  v52[14] = v37;
  return outlined destroy of PSEBiomeEventsSource(v52);
}

uint64_t UISessionSignalBuilder.buildSiriExecutionTasks(nextUISession:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for SiriUISession(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 112))(v11);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    outlined init with take of SiriUISession(v7, v13);
    v14 = (*(*v1 + 264))(a1);
    if (v14 >> 62)
    {
      v21 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v14 < 0)
      {
        v21 = v14;
      }

      v22 = v14;
      v23 = MEMORY[0x25F8CE500](v21);
      v14 = v22;
      if (!v23)
      {
        goto LABEL_17;
      }
    }

    else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v15 = v14;
    type metadata accessor for SiriExecutionTaskFactory();
    swift_allocObject();
    v16 = SiriExecutionTaskFactory.processBiomeEventsToTask(siriExecutionEvents:)(v15);

    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v24 = v16;
      }

      else
      {
        v24 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      if (MEMORY[0x25F8CE500](v24))
      {
        goto LABEL_7;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      v17 = SiriExecutionTaskFactory.loadTaskEntities(steps:siriUISessionId:)(v16, *&v13[*(v8 + 32)], *&v13[*(v8 + 32) + 8]);

      v18 = (*(*v2 + 144))(v17);
      v19 = (*(*v2 + 136))(v18);

      _s18PostSiriEngagement0B9UISessionVWOhTm_0(v13, type metadata accessor for SiriUISession);
      return v19;
    }

LABEL_17:

    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v13, type metadata accessor for SiriUISession);
    return MEMORY[0x277D84F90];
  }

  outlined destroy of Date?(v7, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  return MEMORY[0x277D84F90];
}

uint64_t UISessionSignalBuilder.buildSiriExecutionTasks(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = specialized static PSEBiomeEventsSourceFetcher.fetchSiriExecutionEvents(startDate:endDate:)(a1, a2);
  if (v10 >> 62)
  {
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 < 0)
    {
      v21 = v10;
    }

    v22 = v10;
    v23 = MEMORY[0x25F8CE500](v21);
    v10 = v22;
    if (!v23)
    {
      goto LABEL_15;
    }
  }

  else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  v11 = v2;
  v12 = v10;
  type metadata accessor for SiriExecutionTaskFactory();
  swift_allocObject();
  v13 = SiriExecutionTaskFactory.processBiomeEventsToTask(siriExecutionEvents:)(v12);

  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v24 = v13;
    }

    else
    {
      v24 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x25F8CE500](v24))
    {
      goto LABEL_5;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    UUID.init()();
    v14 = UUID.uuidString.getter();
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    v17 = SiriExecutionTaskFactory.loadTaskEntities(steps:siriUISessionId:)(v13, v14, v16);

    v18 = (*(*v11 + 144))(v17);
    v19 = (*(*v11 + 136))(v18);

    return v19;
  }

LABEL_15:

  return MEMORY[0x277D84F90];
}

uint64_t UISessionSignalBuilder.fetchSiriExecutionEvents(nextUISession:)(uint64_t a1)
{
  Configuration = type metadata accessor for PSEBiomeFetchConfiguration();
  v4 = *(*(Configuration - 8) + 64);
  MEMORY[0x28223BE20](Configuration);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for SiriUISession(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 112))(v14);
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    outlined destroy of Date?(v10, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
    return MEMORY[0x277D84F90];
  }

  else
  {
    v29 = Configuration;
    outlined init with take of SiriUISession(v10, v16);
    v19 = *(**(v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) + 296);

    v19(v16, a1);

    v20 = (*(*v1 + 128))(v30);
    v22 = v21;
    if (v17(v21, 1, v11))
    {
      v20(v30, 0);
      v23 = v29;
    }

    else
    {
      v23 = v29;
      v24 = *(v29 + 20);
      v25 = *(v11 + 24);
      v26 = type metadata accessor for Date();
      (*(*(v26 - 8) + 24))(v22 + v25, &v6[v24], v26);
      v20(v30, 0);
    }

    v27 = specialized static PSEBiomeEventsSourceFetcher.fetchSiriExecutionEvents(startDate:endDate:)(v6, &v6[*(v23 + 20)]);
    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v6, type metadata accessor for PSEBiomeFetchConfiguration);
    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v16, type metadata accessor for SiriUISession);
    return v27;
  }
}

uint64_t UISessionSignalBuilder.buildTranscriptTasks(nextUISession:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for SiriUISession(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 112))(v10);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    outlined init with take of SiriUISession(v6, v12);
    v13 = (*(*v1 + 280))(a1);
    if (v13 >> 62)
    {
      v16 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v13 < 0)
      {
        v16 = v13;
      }

      v17 = v13;
      v18 = MEMORY[0x25F8CE500](v16);
      v13 = v17;
      if (v18)
      {
        goto LABEL_5;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      v14 = specialized TranscriptSignalFactory.buildTranscriptTasks(siriUISessionId:bmEvents:)(*&v12[*(v7 + 28)], *&v12[*(v7 + 28) + 8], v13);

      _s18PostSiriEngagement0B9UISessionVWOhTm_0(v12, type metadata accessor for SiriUISession);
      return v14;
    }

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.engagement);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_25ECEC000, v20, v21, "No Assistant/Siri Transcript event found from IntelligenceFlowTranscriptDatastream", v22, 2u);
      MEMORY[0x25F8CEE50](v22, -1, -1);
    }

    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v12, type metadata accessor for SiriUISession);
    return MEMORY[0x277D84F90];
  }

  outlined destroy of Date?(v6, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  return MEMORY[0x277D84F90];
}

uint64_t UISessionSignalBuilder.fetchSiriTranscriptEvents(nextUISession:)(uint64_t a1)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - v4;
  Configuration = type metadata accessor for PSEBiomeFetchConfiguration();
  v7 = *(*(Configuration - 8) + 64);
  MEMORY[0x28223BE20](Configuration);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for SiriUISession(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 112))(v17);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {
    outlined destroy of Date?(v13, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
    return MEMORY[0x277D84F90];
  }

  else
  {
    v36 = Configuration;
    outlined init with take of SiriUISession(v13, v19);
    v22 = *(**(v1 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) + 296);

    v22(v19, v37);

    v23 = (*(*v1 + 128))(v38);
    v25 = v24;
    if (v20(v24, 1, v14))
    {
      v23(v38, 0);
      v26 = v36;
    }

    else
    {
      v27 = v36;
      v28 = *(v36 + 20);
      v29 = *(v14 + 24);
      v30 = type metadata accessor for Date();
      v31 = &v9[v28];
      v26 = v27;
      (*(*(v30 - 8) + 24))(v25 + v29, v31, v30);
      v23(v38, 0);
    }

    type metadata accessor for PSEBiomeEventsSourceFetcher();
    v32 = *(v26 + 20);
    v33 = type metadata accessor for Date();
    v34 = *(v33 - 8);
    (*(v34 + 16))(v5, &v9[v32], v33);
    (*(v34 + 56))(v5, 0, 1, v33);
    v35 = static PSEBiomeEventsSourceFetcher.fetchTranscriptEvents(startDate:endDate:)(v9, v5);
    outlined destroy of Date?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v9, type metadata accessor for PSEBiomeFetchConfiguration);
    _s18PostSiriEngagement0B9UISessionVWOhTm_0(v19, type metadata accessor for SiriUISession);
    return v35;
  }
}

uint64_t UISessionSignalBuilder.isSiriMusicTask(task:)(uint64_t a1)
{
  v2 = (*(*a1 + 256))();
  v22._countAndFlagsBits = 0x6C7070612E6D6F63;
  v22._object = 0xEF636973754D2E65;
  v20[2] = &v22;
  v3 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v20, v2);

  if (v3)
  {
    goto LABEL_4;
  }

  v5 = (*a1 + 280);
  v6 = *v5;
  (*v5)(v4);
  v7 = String.lowercased()();

  v22 = v7;
  v21 = String.lowercased()();
  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.contains<A>(_:)();

  if (v8)
  {
    goto LABEL_4;
  }

  v6(v9);
  v10 = String.lowercased()();

  v22 = v10;
  v21 = String.lowercased()();
  v11 = StringProtocol.contains<A>(_:)();

  if (v11)
  {
LABEL_4:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.engagement);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      v16 = 1;
      goto LABEL_10;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_25ECEC000, v13, v14, "We have a Music Siri task for the donated Now playing events.", v15, 2u);
    v16 = 1;
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.engagement);
    v13 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v13, v19))
    {
      v16 = 0;
      goto LABEL_10;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_25ECEC000, v13, v19, "No Music Siri task found for the donated Now playing events. Most likely a background music is playing. Drop the noise.", v15, 2u);
    v16 = 0;
  }

  MEMORY[0x25F8CEE50](v15, -1, -1);
LABEL_10:

  return v16;
}

uint64_t UISessionSignalBuilder.deinit()
{
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v1 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks);

  v2 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 8);
  v3 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 16);
  v4 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 24);
  v5 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 32);
  v6 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 40);
  v7 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 48);
  v8 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 56);
  v14 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 112);
  v12 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 80);
  v13 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 96);
  v11 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 64);
  outlined consume of PSEBiomeEventsSource?(*(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream));
  v9 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector);

  return v0;
}

uint64_t UISessionSignalBuilder.__deallocating_deinit()
{
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v1 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks);

  v2 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 8);
  v3 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 16);
  v4 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 24);
  v5 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 32);
  v6 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 40);
  v7 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 48);
  v8 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 56);
  v16 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 112);
  v14 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 80);
  v15 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 96);
  v13 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream + 64);
  outlined consume of PSEBiomeEventsSource?(*(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream));
  v9 = *(v0 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector);

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v10, v11);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    swift_arrayInitWithCopy();
  }

  return v12;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = a2(v4);
  }

  v5 = *(v4 + 16);
  v19[0] = v4 + 32;
  v19[1] = v5;
  result = _minimumMergeRunLength(_:)(v5);
  if (result >= v5)
  {
    if (v5 >= 2)
    {
      v10 = (v4 + 48);
      v11 = -1;
      for (i = 1; i != v5; ++i)
      {
        v13 = *(v4 + 32 + 16 * i + 8);
        v14 = v11;
        v15 = v10;
        do
        {
          if (v13 >= *(v15 - 1))
          {
            break;
          }

          v16 = *v15;
          *v15 = *(v15 - 1);
          *(v15 - 1) = v13;
          *(v15 - 2) = v16;
          v15 -= 2;
        }

        while (!__CFADD__(v14++, 1));
        v10 += 2;
        --v11;
      }
    }
  }

  else
  {
    v7 = result;
    v8 = v5 >> 1;
    if (v5 >= 2)
    {
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v8;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v18[0] = v9 + 32;
    v18[1] = v8;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v20, v19, v7);
    *(v9 + 16) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x25F8CE500](v7);
    goto LABEL_14;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_14:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t outlined consume of PSETask?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x25F8CE500](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x25F8CE500](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [Signal] and conformance [A](&lazy protocol witness table cache variable for type [Signal] and conformance [A], &_sSay18PostSiriEngagement6SignalCGMd, &_sSay18PostSiriEngagement6SignalCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18PostSiriEngagement6SignalCGMd, &_sSay18PostSiriEngagement6SignalCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;

            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Signal();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x25F8CE500](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x25F8CE500](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [Signal] and conformance [A](&lazy protocol witness table cache variable for type [SiriExecutionStep] and conformance [A], &_sSay18PostSiriEngagement0B13ExecutionStepCGMd, &_sSay18PostSiriEngagement0B13ExecutionStepCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18PostSiriEngagement0B13ExecutionStepCGMd, &_sSay18PostSiriEngagement0B13ExecutionStepCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;

            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SiriExecutionStep(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x25F8CE500](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x25F8CE500](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [Signal] and conformance [A](&lazy protocol witness table cache variable for type [SiriExecutionTask] and conformance [A], &_sSay18PostSiriEngagement0B13ExecutionTaskCGMd, &_sSay18PostSiriEngagement0B13ExecutionTaskCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18PostSiriEngagement0B13ExecutionTaskCGMd, &_sSay18PostSiriEngagement0B13ExecutionTaskCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;

            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SiriExecutionTask(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x25F8CE500](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x25F8CE500](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [Signal] and conformance [A](&lazy protocol witness table cache variable for type [TranscriptTask] and conformance [A], &_sSay18PostSiriEngagement14TranscriptTaskCGMd, &_sSay18PostSiriEngagement14TranscriptTaskCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18PostSiriEngagement14TranscriptTaskCGMd, &_sSay18PostSiriEngagement14TranscriptTaskCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;

            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TranscriptTask(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement0E9UISessionVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement0E9UISessionVGMR, type metadata accessor for SiriUISession);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement05ProtoeF10FeatureSetVGMd, &_ss23_ContiguousArrayStorageCy18SiriTaskEngagement05ProtoeF10FeatureSetVGMR, MEMORY[0x277D614D0]);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement32ExtendedBMHomeKitClientAccessoryVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement30ExtendedBMPhotosMemoriesSharedVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement30ExtendedBMPhotosMemoriesSharedVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement30ExtendedBMPhotosMemoriesViewedVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement30ExtendedBMPhotosMemoriesViewedVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosDeleteVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosDeleteVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosPickerVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosPickerVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement21ExtendedBMPhotosShareVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement21ExtendedBMPhotosShareVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement24ExtendedBMPhotosFavoriteVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement24ExtendedBMPhotosFavoriteVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosSearchVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement22ExtendedBMPhotosSearchVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMPhotosEditVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMPhotosEditVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement016ExtendedBMPhotosF0VGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement016ExtendedBMPhotosF0VGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement29ExtendedBMAppIntentInvocationVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement29ExtendedBMAppIntentInvocationVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement25ExtendedBMMediaNowPlayingVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement25ExtendedBMMediaNowPlayingVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMAppInFocusVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMAppInFocusVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMClockAlarmVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement20ExtendedBMClockAlarmVGMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement19ExtendedBMAppIntentVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement19ExtendedBMAppIntentVGMR);
}

uint64_t _s18PostSiriEngagement0B9UISessionVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized UISessionSignalBuilder.buildSignalsAndTaskFeatureSets(task:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v113 = a3;
  v116 = a1;
  v6 = type metadata accessor for ReliabilityCategory();
  v112 = *(v6 - 8);
  v7 = *(v112 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v109 - v12;
  v114 = 0;
  v14 = type metadata accessor for SiriUISession(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a2 + 112))(v17);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of Date?(v13, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
    swift_beginAccess();
    v20 = *a4;
    *a4 = 0;
  }

  v115 = v19;
  v22 = outlined init with take of SiriUISession(v13, v19);
  v23 = (*(*a2 + 160))(&v120, v22);
  v111 = a4;
  if (!v120)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.engagement);
    v128 = 0;
    *&v129 = 0xE000000000000000;
    _StringGuts.grow(_:)(123);
    MEMORY[0x25F8CE090](0xD000000000000078, 0x800000025ED81270);
    MEMORY[0x25F8CE090](*&v115[*(v14 + 32)], *&v115[*(v14 + 32) + 8]);
    MEMORY[0x25F8CE090](46, 0xE100000000000000);
    v30 = v128;
    v29 = v129;
    v31 = *MEMORY[0x277D615D8];
    v32 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v32 - 8) + 104))(v9, v31, v32);
    v33 = v112;
    (*(v112 + 104))(v9, *MEMORY[0x277D616A8], v6);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v128 = v37;
      *v36 = 136315138;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v128);
      _os_log_impl(&dword_25ECEC000, v34, v35, "%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      v38 = v37;
      a4 = v111;
      MEMORY[0x25F8CEE50](v38, -1, -1);
      MEMORY[0x25F8CEE50](v36, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v39 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v9, v39, v40);

    (*(v33 + 8))(v9, v6);
    swift_beginAccess();
    v41 = *a4;
    *a4 = 0;
    goto LABEL_33;
  }

  v128 = v120;
  v133 = v125;
  v134 = v126;
  v135 = v127;
  v129 = v121;
  v130 = v122;
  v131 = v123;
  v132 = v124;
  v24 = MEMORY[0x277D84F90];
  v118 = MEMORY[0x277D84F90];
  v119 = MEMORY[0x277D84F90];
  v25 = *(*v116 + 280);
  if (v25(v23) == 0xD000000000000014 && 0x800000025ED7FA70 == v26)
  {

    v27 = v115;
    goto LABEL_13;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v27 = v115;
  if (v42)
  {
LABEL_13:
    v43 = v131;
    if (*(v131 + 16))
    {
      type metadata accessor for AppIntentTranscriptSignalFactory();
      swift_allocObject();
      AppIntentTranscriptSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v43, v27, v117);

      specialized Array.append<A>(contentsOf:)(v44);

      specialized Array.append<A>(contentsOf:)(v45);
    }

    v46 = v114;
    if (*(*(&v131 + 1) + 16) || *(v132 + 16) || *(*(&v132 + 1) + 16) || *(v133 + 16) || *(*(&v133 + 1) + 16) || *(v134 + 16) || *(*(&v134 + 1) + 16) || *(v135 + 16) || *(*(&v135 + 1) + 16))
    {
      type metadata accessor for PhotosSignalFactory();
      swift_allocObject();
      PhotosSignalFactory.processBiomeEventsToSignals(siriDataStream:siriUISession:)(&v128, v117);

LABEL_25:
      v47 = v111;

      specialized Array.append<A>(contentsOf:)(v48);

      specialized Array.append<A>(contentsOf:)(v49);

      goto LABEL_26;
    }

    goto LABEL_56;
  }

  v68 = v129;
  v69 = *(v129 + 16);
  if (v69)
  {
    v70 = *(a2 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector);
    v117[0] = MEMORY[0x277D84F90];
    v112 = v70;

    specialized ContiguousArray.reserveCapacity(_:)();
    v110 = v68;
    v71 = (v68 + 32);
    v72 = (v68 + 32);
    do
    {
      v73 = *v72;
      v72 += 2;
      v74 = v73;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v75 = *(v117[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v76 = specialized ContiguousArray._endMutation()();
      --v69;
    }

    while (v69);
    v77 = v117[0];
    v78 = v25(v76);
    v79 = v114;
    v81 = (*(*v112 + 280))(v77, v78, v80);
    if (v79)
    {

      v114 = 0;
    }

    else
    {
      v82 = v81;
      v114 = 0;

      if (v82)
      {
        v83 = *(v110 + 16);
        v84 = MEMORY[0x277D84F90];
        if (v83)
        {
          v117[0] = MEMORY[0x277D84F90];
          specialized ContiguousArray.reserveCapacity(_:)();
          do
          {
            v85 = *v71;
            v71 += 2;
            v86 = v85;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v87 = *(v117[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            --v83;
          }

          while (v83);
          v84 = v117[0];
        }

        (*(*v82 + 96))(v117, v84, v115);

        specialized Array.append<A>(contentsOf:)(v88);

        specialized Array.append<A>(contentsOf:)(v89);
      }
    }
  }

  v90 = *(&v129 + 1);
  v27 = v115;
  if (*(*(&v129 + 1) + 16))
  {
    type metadata accessor for ExtendedAlarmSignalFactory();
    swift_allocObject();
    ExtendedAlarmSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v90, v27, v117);

    specialized Array.append<A>(contentsOf:)(v91);

    specialized Array.append<A>(contentsOf:)(v92);
  }

  v24 = MEMORY[0x277D84F90];
  if (*(*(&v130 + 1) + 16))
  {
    type metadata accessor for HomeKitAccessoryControlSignalFactory();
    swift_allocObject();
    HomeKitAccessoryControlSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v27, v117);

    specialized Array.append<A>(contentsOf:)(v93);

    specialized Array.append<A>(contentsOf:)(v94);
  }

  v95 = v128;
  v46 = v114;
  if (*(v128 + 16) && ((*(*a2 + 288))(v116) & 1) != 0)
  {
    v96 = type metadata accessor for NowPlayingSignalFactory();
    v97 = *(v96 + 48);
    v98 = *(v96 + 52);
    v99 = swift_allocObject();
    v100 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15MRPlaybackStateV_SSTt0g5Tf4g_n(&outlined read-only object #0 of NowPlayingSignalFactory.init());
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15MRPlaybackStateV_SStMd, &_sSo15MRPlaybackStateV_SStMR);
    swift_arrayDestroy();
    *(v99 + 16) = v100;
    v101 = OBJC_IVAR____TtC18PostSiriEngagement23NowPlayingSignalFactory_postEndDate;
    v102 = type metadata accessor for Date();
    (*(*(v102 - 8) + 56))(v99 + v101, 1, 1, v102);
    v103 = *(v95 + 16);
    v104 = MEMORY[0x277D84F90];
    if (v103)
    {
      v117[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v105 = (v95 + 32);
      do
      {
        v106 = *v105;
        v105 += 2;
        v107 = v106;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v108 = *(v117[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v103;
      }

      while (v103);
      v104 = v117[0];
    }

    NowPlayingSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v104, v27, v117);

    goto LABEL_25;
  }

LABEL_56:
  v47 = v111;
LABEL_26:
  v50 = v130;
  v51 = *(v130 + 16);
  if (v51)
  {
    type metadata accessor for AppLaunchSignalFactory();
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_25ED7CDB0;
    *(v52 + 32) = 0xD00000000000002BLL;
    *(v52 + 40) = 0x800000025ED80060;
    *(v52 + 48) = 0xD000000000000031;
    *(v52 + 56) = 0x800000025ED80090;
    *(v52 + 64) = 0xD00000000000002DLL;
    *(v52 + 72) = 0x800000025ED800D0;
    v117[0] = v24;
    specialized ContiguousArray.reserveCapacity(_:)();
    v53 = (v50 + 32);
    do
    {
      v54 = *v53;
      v53 += 2;
      v55 = v54;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v56 = *(v117[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v51;
    }

    while (v51);
    outlined destroy of Date?(&v120, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMd, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMR);
    AppLaunchSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(v117[0], v27, v117);

    specialized Array.append<A>(contentsOf:)(v57);

    specialized Array.append<A>(contentsOf:)(v58);

    v47 = v111;
  }

  else
  {
    outlined destroy of Date?(&v120, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMd, &_s18PostSiriEngagement20PSEBiomeEventsSourceVSgMR);
  }

  v117[0] = specialized Array._copyToContiguousArray()(v59);
  specialized MutableCollection<>.sort(by:)(v117);
  if (!v46)
  {

    v60 = v117[0];
    v61 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18PostSiriEngagement7PSETaskVGMd, &_ss23_ContiguousArrayStorageCy18PostSiriEngagement7PSETaskVGMR);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_25ED7C750;
    v63 = v116;
    *(v62 + 32) = v116;
    *(v62 + 40) = v60;
    *(v62 + 48) = v61;
    swift_beginAccess();
    v64 = v47;
    v65 = *v47;
    v66 = *(*v113 + 264);

    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v66(v62, v65);

    swift_beginAccess();
    v67 = *v64;
    *v64 = v63;

LABEL_33:

    return _s18PostSiriEngagement0B9UISessionVWOhTm_0(v115, type metadata accessor for SiriUISession);
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for SiriUISession()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for UISessionSignalBuilder()
{
  type metadata accessor for SiriUISession?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of UISessionSignalBuilder.postSiriDataStream.setter(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(*v1 + 168);
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v6 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v6;
  v8[6] = *(a1 + 96);
  v9 = v2;
  return v3(v8);
}

void type metadata accessor for SiriUISession?()
{
  if (!lazy cache variable for type metadata for SiriUISession?)
  {
    type metadata accessor for SiriUISession(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SiriUISession?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [Signal] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MapsIntentSignalFactory.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = &outlined read-only object #0 of MapsIntentSignalFactory.init();
  return result;
}

uint64_t MapsIntentSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v21 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_18:
    v13 = MEMORY[0x277D84F90];
LABEL_19:
    v15 = (*(*v3 + 128))(v13, v4);
    v16 = (*(*v3 + 136))(v13);

    *a3 = v15;
    a3[1] = v16;
    return result;
  }

  if (result >= 0)
  {
    result &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v14 = v4;
  result = MEMORY[0x25F8CE500](result);
  v4 = v14;
  v6 = result;
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v19 = *(*v3 + 88);
    v8 = v4 & 0xC000000000000001;
    v17 = MEMORY[0x277D84F90];
    v9 = v4;
    do
    {
      if (v8)
      {
        v10 = MEMORY[0x25F8CE460](v7);
      }

      else
      {
        v10 = *(v4 + 8 * v7 + 32);
      }

      v11 = v10;
      if (v19(v10, a2))
      {

        MEMORY[0x25F8CE160](v12);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v17 = v21;
      }

      else
      {
      }

      ++v7;
      v4 = v9;
    }

    while (v6 != v7);
    v13 = v17;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *MapsIntentSignalFactory.transformSignalsToFeatures(signals:)(uint64_t a1)
{
  v120 = type metadata accessor for ProtoTaskFeatureSet();
  v119 = *(v120 - 8);
  v2 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v117 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for ProtoNavigationFollowupType();
  v124 = *(v143 - 8);
  v4 = *(v124 + 64);
  v5 = MEMORY[0x28223BE20](v143);
  v115 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v142 = &v114 - v8;
  MEMORY[0x28223BE20](v7);
  v139 = &v114 - v9;
  v151 = type metadata accessor for ProtoLocationEntitySignal();
  v156 = *(v151 - 8);
  v10 = *(v156 + 8);
  v11 = MEMORY[0x28223BE20](v151);
  v138 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v153 = &v114 - v13;
  v141 = type metadata accessor for ProtoNavigationUserFollowupContext();
  v123 = *(v141 - 8);
  v14 = *(v123 + 64);
  v15 = MEMORY[0x28223BE20](v141);
  v140 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v152 = &v114 - v17;
  v150 = type metadata accessor for ProtoNavigationFeatures();
  v155 = *(v150 - 8);
  v18 = *(v155 + 64);
  MEMORY[0x28223BE20](v150);
  v144 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for ProtoNavigationTaskFeatureSet();
  v20 = *(v116 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v116);
  v125 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ProtoTaskEngagementType();
  v24 = *(v23 - 8);
  v25 = *(v24 + 8);
  MEMORY[0x28223BE20](v23);
  v27 = (&v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v121 = *(v122 - 8);
  v28 = *(v121 + 8);
  v29 = MEMORY[0x28223BE20](v122);
  v118 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v114 - v31;
  v33 = type metadata accessor for ReliabilityCategory();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1 >> 62;
  v145 = a1;
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_61:
    if (one-time initialization token for engagement != -1)
    {
      goto LABEL_72;
    }

    goto LABEL_62;
  }

  while (1)
  {
    ProtoTaskEngagementFeatureSet.init()();
    v40 = *(v24 + 13);
    v39 = v24 + 13;
    v40(v27, *MEMORY[0x277D61510], v23);
    ProtoTaskEngagementFeatureSet.engagementType.setter();
    if (v38)
    {
      v38 = v145;
      if (v145 < 0)
      {
        v41 = v145;
      }

      else
      {
        v41 = v145 & 0xFFFFFFFFFFFFFF8;
      }

      v34 = MEMORY[0x25F8CE500](v41);
    }

    else
    {
      v38 = v145;
      v34 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v125;
    if (!v34)
    {
      goto LABEL_17;
    }

    if ((v38 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x25F8CE460](0, v38);
      v42 = v43;
    }

    else
    {
      if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v42 = *(v38 + 32);
    }

    (*(*v42 + 120))(&v159, v43);

    v44 = *&v159 & 0x7FFFFFFFFFFFFFFFLL;
    if ((*&v159 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v159 <= -1.0)
    {
      __break(1u);
LABEL_67:
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v42, 1, v39);
LABEL_53:
      v27[1](v32, v37);
      v39[2] = v42;
      (v27[4])(v39 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + v27[9] * v33, v38, v37);
      return v39;
    }

    if (v159 >= 1.84467441e19)
    {
      __break(1u);
    }

LABEL_17:
    ProtoTaskEngagementFeatureSet.startTimestampMs.setter();
    ProtoNavigationTaskFeatureSet.init()();
    v24 = &v159;
    v45 = ProtoTaskEngagementFeatureSet.featureSet.modify();
    ProtoTaskFeatureSet.navigationFeatureSet.setter();
    v45(&v159, 0);
    v46 = ProtoTaskEngagementFeatureSet.featureSet.modify();
    v47 = ProtoTaskFeatureSet.navigationFeatureSet.modify();
    ProtoNavigationTaskFeatureSet.isSiriNavigationContinued.setter();
    v47(v158, 0);
    v46(&v159, 0);
    v33 = ProtoTaskEngagementFeatureSet.featureSet.modify();
    v48 = ProtoTaskFeatureSet.navigationFeatureSet.modify();
    ProtoNavigationTaskFeatureSet.isUserFollowup.setter();
    v48(v158, 0);
    (v33)(&v159, 0);
    v37 = v144;
    if (!v34)
    {
LABEL_49:
      v86 = v117;
      ProtoTaskEngagementFeatureSet.featureSet.getter();
      v87 = v125;
      ProtoTaskFeatureSet.navigationFeatureSet.getter();
      v88 = *(v119 + 8);
      v89 = v120;
      v88(v86, v120);
      v90 = ProtoNavigationTaskFeatureSet.isUserFollowup.getter();
      v93 = *(v20 + 8);
      v92 = v20 + 8;
      v91 = v93;
      v94 = v116;
      v93(v87, v116);
      if ((v90 & 1) == 0)
      {
        goto LABEL_51;
      }

      v137 = v92;
      ProtoTaskEngagementFeatureSet.featureSet.getter();
      ProtoTaskFeatureSet.navigationFeatureSet.getter();
      v88(v86, v89);
      v95 = v140;
      ProtoNavigationTaskFeatureSet.followupContext.getter();
      v91(v87, v94);
      v96 = v142;
      ProtoNavigationUserFollowupContext.followupType.getter();
      (*(v123 + 8))(v95, v141);
      v97 = v124;
      v98 = v115;
      v99 = v143;
      (*(v124 + 104))(v115, *MEMORY[0x277D61740], v143);
      lazy protocol witness table accessor for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v100 = *(v97 + 8);
      v100(v98, v99);
      v100(v96, v99);
      if (*&v159 == v158[0])
      {
LABEL_51:
        v101 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v102 = ProtoTaskFeatureSet.navigationFeatureSet.modify();
        ProtoNavigationTaskFeatureSet.isSiriNavigationContinued.setter();
        v102(v158, 0);
        v101(&v159, 0);
      }

      v27 = v121;
      v38 = v118;
      v37 = v122;
      (*(v121 + 2))(v118, v32, v122);
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v33 = v39[2];
      v44 = v39[3];
      v42 = v33 + 1;
      if (v33 < v44 >> 1)
      {
        goto LABEL_53;
      }

      goto LABEL_67;
    }

    if (v34 < 1)
    {
      goto LABEL_71;
    }

    a1 = 0;
    v33 = 0;
    v148 = *(v157 + 16);
    v149 = v38 & 0xC000000000000001;
    v134 = (v156 + 16);
    v133 = (v124 + 8);
    v132 = *MEMORY[0x277D61740];
    v131 = (v124 + 104);
    v130 = *MEMORY[0x277D61748];
    v129 = (v124 + 16);
    v128 = (v123 + 16);
    v127 = (v156 + 8);
    v126 = (v123 + 8);
    v147 = (v155 + 8);
    v136 = v32;
    v137 = v20;
    v135 = v34;
    while (1)
    {
      if (v149)
      {
        v27 = MEMORY[0x25F8CE460](a1, v38);
      }

      else
      {
        v27 = *(v38 + 8 * a1 + 32);
      }

      v51 = ProtoNavigationFeatures.init()();
      v23 = v27;
      (*(*v27 + 15))(&v159, v51);
      if ((*&v159 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v159 <= -1.0)
      {
        goto LABEL_55;
      }

      if (v159 >= 1.84467441e19)
      {
        goto LABEL_56;
      }

      v52 = ProtoNavigationFeatures.timestampInMs.setter();
      (*(*v27 + 21))(v52);
      v53 = ProtoNavigationFeatures.navigationAction.setter();
      v54 = *(*v27 + 27);
      v157 = *v27 + 216;
      v55 = v54(v53);
      if (*(v55 + 16) && (v56 = specialized __RawDictionaryStorage.find<A>(_:)(0x79546E6F69746361, 0xEA00000000006570), (v57 & 1) != 0))
      {
        outlined init with copy of Any(*(v55 + 56) + 32 * v56, &v159);

        swift_dynamicCast();
      }

      else
      {
      }

      v58 = ProtoNavigationFeatures.navigationActionType.setter();
      v59 = v54(v58);
      v60 = *(v59 + 16);
      v155 = a1;
      v156 = v54;
      if (v60 && (v61 = specialized __RawDictionaryStorage.find<A>(_:)(0x656372756F73, 0xE600000000000000), (v62 & 1) != 0))
      {
        outlined init with copy of Any(*(v59 + 56) + 32 * v61, &v159);

        swift_dynamicCast();
      }

      else
      {
      }

      ProtoNavigationFeatures.navigationSource.setter();
      v159 = COERCE_DOUBLE(ProtoNavigationFeatures.navigationAction.getter());
      v160 = v63;
      MEMORY[0x28223BE20](*&v159);
      *(&v114 - 2) = &v159;
      v64 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v114 - 4), v148);
      v154 = v33;

      if (v64)
      {
        ProtoNavigationUserFollowupContext.init()();
        v66 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v67 = ProtoTaskFeatureSet.navigationFeatureSet.modify();
        ProtoNavigationTaskFeatureSet.isUserFollowup.setter();
        v67(v158, 0);
        v66(&v159, 0);
        ProtoNavigationFeatures.navigationAction.getter();
        ProtoNavigationUserFollowupContext.navigationAction.setter();
        ProtoNavigationFeatures.navigationActionType.getter();
        ProtoNavigationUserFollowupContext.navigationActionType.setter();
        v68 = ProtoLocationEntitySignal.init()();
        v69 = v156(v68);
        if (*(v69 + 16) && (v70 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656449696F70, 0xED00007265696669), (v71 & 1) != 0))
        {
          outlined init with copy of Any(*(v69 + 56) + 32 * v70, &v159);

          swift_dynamicCast();
        }

        else
        {
        }

        v72 = v153;
        ProtoLocationEntitySignal.poiIdentifier.setter();
        (*v134)(v138, v72, v151);
        v73 = v152;
        ProtoNavigationUserFollowupContext.locationEntity.setter();
        ProtoNavigationFeatures.timestampInMs.getter();
        v74 = ProtoNavigationUserFollowupContext.timestampInMs.setter();
        v75 = v139;
        MEMORY[0x25F8CDD70](v74);
        v159 = COERCE_DOUBLE(ProtoNavigationFeatures.navigationSource.getter());
        v160 = v76;
        v158[0] = 1936744781;
        v158[1] = 0xE400000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        LOBYTE(v72) = StringProtocol.contains<A>(_:)();

        v146 = *v133;
        v77 = v143;
        v146(v75, v143);
        if (v72)
        {
          v78 = v130;
        }

        else
        {
          v78 = v132;
        }

        (*v131)(v75, v78, v77);
        (*v129)(v142, v75, v77);
        ProtoNavigationUserFollowupContext.followupType.setter();
        v79 = v73;
        v80 = v141;
        (*v128)(v140, v79, v141);
        v32 = v136;
        v81 = ProtoTaskEngagementFeatureSet.featureSet.modify();
        v82 = ProtoTaskFeatureSet.navigationFeatureSet.modify();
        v37 = v144;
        ProtoNavigationTaskFeatureSet.followupContext.setter();
        v82(v158, 0);
        v81(&v159, 0);
        v146(v75, v77);
        (*v127)(v153, v151);
        v65 = (*v126)(v152, v80);
        v38 = v145;
        v20 = v137;
        v34 = v135;
      }

      v83 = v156(v65);
      if (*(v83 + 16))
      {
        v84 = specialized __RawDictionaryStorage.find<A>(_:)(0x697461676976616ELL, 0xEE00657079546E6FLL);
        v33 = v154;
        v49 = v155;
        if (v85)
        {
          outlined init with copy of Any(*(v83 + 56) + 32 * v84, &v159);

          swift_dynamicCast();
        }

        else
        {
        }
      }

      else
      {

        v33 = v154;
        v49 = v155;
      }

      a1 = v49 + 1;
      ProtoNavigationFeatures.navigationType.setter();
      ProtoNavigationFeatures.navigationType.getter();
      v24 = v50;

      (*v147)(v37, v150);
      if (v34 == a1)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    if (a1 < 0)
    {
      v103 = a1;
    }

    else
    {
      v103 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (!MEMORY[0x25F8CE500](v103))
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  swift_once();
LABEL_62:
  v104 = type metadata accessor for Logger();
  __swift_project_value_buffer(v104, static Logger.engagement);
  v105 = *MEMORY[0x277D61640];
  v106 = type metadata accessor for MapsEventDataIssues();
  (*(*(v106 - 8) + 104))(v37, v105, v106);
  (*(v34 + 104))(v37, *MEMORY[0x277D61660], v33);
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v159 = *&v110;
    *v109 = 136315138;
    *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000025ED7E8C0, &v159);
    _os_log_impl(&dword_25ECEC000, v107, v108, "%s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v110);
    MEMORY[0x25F8CEE50](v110, -1, -1);
    MEMORY[0x25F8CEE50](v109, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v111 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v37, v111, v112);

  (*(v34 + 8))(v37, v33);
  return MEMORY[0x277D84F90];
}

void MapsIntentSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2)
{
  v214 = a2;
  v213 = type metadata accessor for ReliabilityCategory();
  v211 = *(v213 - 8);
  v3 = *(v211 + 64);
  MEMORY[0x28223BE20](v213);
  v212 = &v202 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v215 = v5;
  v216 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v202 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v202 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v202 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v202 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v202 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v202 - v29;
  v31 = MEMORY[0x25F8CE7F0](v28);
  v32 = v217;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, v219, &v220);
  if (v32)
  {
    objc_autoreleasePoolPop(v31);
    return;
  }

  v207 = a1;
  v204 = v20;
  v205 = v22;
  v202 = v27;
  v33 = v213;
  v209 = v30;
  v34 = v214;
  v206 = v10;
  v203 = v15;
  v208 = 0;
  objc_autoreleasePoolPop(v31);
  v210 = v220;
  v217 = [v220 intent];
  v35 = [v217 domain];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  if (v36 == 1936744781 && v38 == 0xE400000000000000)
  {

    v39 = v13;
    v40 = v207;
    goto LABEL_7;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v39 = v13;
  v40 = v207;
  if (v41)
  {
LABEL_7:
    v42 = [v217 parametersByName];
    v43 = v206;
    v44 = v205;
    v45 = v204;
    if (v42)
    {
      v46 = v42;
      v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v47 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656D656C65, 0xE700000000000000), (v49 & 1) != 0))
      {
        outlined init with copy of Any(*(v47 + 56) + 32 * v48, &v220);

        if (swift_dynamicCast())
        {
          if (v219[0] == __PAIR128__(0xEE00535554415453, 0x5F56414E5F544547))
          {

            return;
          }

          v199 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v199)
          {

            return;
          }
        }
      }

      else
      {
      }
    }

    v50 = [v40 absoluteTimestamp];
    if (v50)
    {
      v51 = v209;
      v52 = v50;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = 0;
      v54 = v216;
    }

    else
    {
      v53 = 1;
      v54 = v216;
      v51 = v209;
    }

    v55 = 1;
    (*(v54 + 56))(v51, v53, 1, v215);
    v56 = [v210 dateInterval];
    if (v56)
    {
      v57 = v56;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = 0;
    }

    v58 = type metadata accessor for DateInterval();
    v59 = *(v58 - 8);
    (*(v59 + 56))(v45, v55, 1, v58);
    outlined init with take of DateInterval?(v45, v44);
    v60 = 0;
    if (!(*(v59 + 48))(v44, 1, v58))
    {
      DateInterval.duration.getter();
      v60 = v61;
    }

    outlined destroy of Date?(v44, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v62 = v216;
    v63 = *(v216 + 16);
    v64 = v203;
    v65 = v34;
    v66 = v34;
    v67 = v215;
    v63(v203, v66, v215);
    v68 = v65 + *(type metadata accessor for SiriUISession(0) + 20);
    v69 = v67;
    v63(v39, v68, v67);
    v70 = v209;
    v71 = v202;
    outlined init with copy of Date?(v209, v202);
    v72 = (*(v62 + 48))(v71, 1, v67);
    v73 = v217;
    LODWORD(v214) = v72;
    if (v72 == 1)
    {
      v86 = *(v62 + 8);
      v86(v39, v69);
      v86(v64, v69);
      outlined destroy of Date?(v70, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of Date?(v71, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v216 = 0x3FF0000000000000;
      v75 = 0;
      v79 = 0.0;
      v85 = 0.0;
      v60 = 0;
    }

    else
    {
      (*(v62 + 32))(v43, v71, v69);
      Date.timeIntervalSinceReferenceDate.getter();
      v75 = v74;
      Date.timeIntervalSinceReferenceDate.getter();
      v77 = v76;
      Date.timeIntervalSinceReferenceDate.getter();
      v79 = v77 - v78;
      Date.timeIntervalSinceReferenceDate.getter();
      v81 = v80;
      Date.timeIntervalSinceReferenceDate.getter();
      v83 = v82;
      v84 = *(v62 + 8);
      v84(v43, v69);
      v84(v39, v69);
      v84(v64, v69);
      outlined destroy of Date?(v70, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v216 = 0;
      v85 = v81 - v83;
    }

    v87 = [v73 typeName];
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    v91 = MEMORY[0x277D837D0];
    v221 = MEMORY[0x277D837D0];
    *&v220 = v88;
    *(&v220 + 1) = v90;
    outlined init with take of Any(&v220, v219);
    v92 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v218 = v92;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v219, 0x7954746E65746E69, 0xEE00656D614E6570, isUniquelyReferenced_nonNull_native);
    v94 = v218;
    v95 = [v73 parametersByName];
    if (v95)
    {
      v96 = v95;
      v97 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v97 + 16) && (v98 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656D656C65, 0xE700000000000000), (v99 & 1) != 0))
      {
        outlined init with copy of Any(*(v97 + 56) + 32 * v98, &v220);

        v100 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v102 = *(&v219[0] + 1);
          v101 = *&v219[0];
          v221 = v100;
          if (*(&v219[0] + 1))
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    v221 = v91;
LABEL_32:
    v101 = 0;
    v102 = 0xE000000000000000;
LABEL_33:
    *&v220 = v101;
    *(&v220 + 1) = v102;
    outlined init with take of Any(&v220, v219);
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v218 = v94;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v219, 0x79546E6F69746361, 0xEA00000000006570, v103);
    v104 = v218;
    v105 = [v73 parametersByName];
    if (v105)
    {
      v106 = v105;
      v107 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v107 + 16) && (v108 = specialized __RawDictionaryStorage.find<A>(_:)(0x697461676976616ELL, 0xEE00657079546E6FLL), (v109 & 1) != 0))
      {
        outlined init with copy of Any(*(v107 + 56) + 32 * v108, &v220);

        v110 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v112 = *(&v219[0] + 1);
          v111 = *&v219[0];
          v221 = v110;
          if (*(&v219[0] + 1))
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }
      }

      else
      {
      }
    }

    v221 = v91;
LABEL_41:
    v111 = 0;
    v112 = 0xE000000000000000;
LABEL_42:
    *&v220 = v111;
    *(&v220 + 1) = v112;
    outlined init with take of Any(&v220, v219);
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v218 = v104;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v219, 0x697461676976616ELL, 0xEE00657079546E6FLL, v113);
    v114 = v218;
    v115 = [v73 parametersByName];
    if (v115)
    {
      v116 = v115;
      v117 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v117 + 16) && (v118 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6564695F76616ELL, 0xEE00726569666974), (v119 & 1) != 0))
      {
        outlined init with copy of Any(*(v117 + 56) + 32 * v118, &v220);

        v120 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v122 = *(&v219[0] + 1);
          v121 = *&v219[0];
          v221 = v120;
          if (*(&v219[0] + 1))
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }
      }

      else
      {
      }
    }

    v221 = v91;
LABEL_50:
    v121 = 0;
    v122 = 0xE000000000000000;
LABEL_51:
    *&v220 = v121;
    *(&v220 + 1) = v122;
    outlined init with take of Any(&v220, v219);
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v218 = v114;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v219, 0xD000000000000014, 0x800000025ED80D90, v123);
    v124 = v218;
    v125 = [v73 parametersByName];
    if (v125)
    {
      v126 = v125;
      v127 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v127 + 16) && (v128 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6564695F696F70, 0xEE00726569666974), (v129 & 1) != 0))
      {
        outlined init with copy of Any(*(v127 + 56) + 32 * v128, &v220);

        v130 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v132 = *(&v219[0] + 1);
          v131 = *&v219[0];
          v221 = v130;
          if (*(&v219[0] + 1))
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }
      }

      else
      {
      }
    }

    v221 = v91;
LABEL_59:
    v131 = 0;
    v132 = 0xE000000000000000;
LABEL_60:
    *&v220 = v131;
    *(&v220 + 1) = v132;
    outlined init with take of Any(&v220, v219);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v218 = v124;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v219, 0x746E656449696F70, 0xED00007265696669, v133);
    v134 = v218;
    v135 = [v73 parametersByName];
    if (v135)
    {
      v136 = v135;
      v137 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v137 + 16) && (v138 = specialized __RawDictionaryStorage.find<A>(_:)(0x656372756F73, 0xE600000000000000), (v139 & 1) != 0))
      {
        outlined init with copy of Any(*(v137 + 56) + 32 * v138, &v220);

        v140 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v142 = *(&v219[0] + 1);
          v141 = *&v219[0];
          v221 = v140;
          if (*(&v219[0] + 1))
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }
      }

      else
      {
      }
    }

    v221 = v91;
LABEL_68:
    v141 = 0;
    v142 = 0xE000000000000000;
LABEL_69:
    *&v220 = v141;
    *(&v220 + 1) = v142;
    outlined init with take of Any(&v220, v219);
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v218 = v134;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v219, 0x656372756F73, 0xE600000000000000, v143);
    v144 = v218;
    v145 = [v73 parametersByName];
    if (v145)
    {
      v146 = v145;
      v147 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v147 + 16) && (v148 = specialized __RawDictionaryStorage.find<A>(_:)(0x656372756F73, 0xE600000000000000), (v149 & 1) != 0))
      {
        outlined init with copy of Any(*(v147 + 56) + 32 * v148, &v220);

        if (swift_dynamicCast())
        {
          v151 = *(&v219[0] + 1);
          v150 = *&v219[0];
LABEL_76:
          *&v220 = v150;
          *(&v220 + 1) = v151;
          *&v219[0] = 0x6C7070612E6D6F63;
          *(&v219[0] + 1) = 0xEA00000000002E65;
          lazy protocol witness table accessor for type String and conformance String();
          v152 = StringProtocol.contains<A>(_:)();

          v153 = MEMORY[0x277D839B0];
          v221 = MEMORY[0x277D839B0];
          LOBYTE(v220) = v152 & 1;
          outlined init with take of Any(&v220, v219);
          v154 = swift_isUniquelyReferenced_nonNull_native();
          v218 = v144;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v219, 0xD000000000000016, 0x800000025ED7E770, v154);
          v155 = v218;
          v156 = [v217 verb];
          v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v159 = v158;

          if (v157 == 2003789907 && v159 == 0xE400000000000000)
          {
          }

          else
          {
            v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v160 & 1) == 0)
            {
              if (v79 >= 0.0)
              {
                v192 = [v217 parametersByName];
                if (!v192)
                {
                  goto LABEL_82;
                }

                v193 = v192;
                v194 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                if (!*(v194 + 16) || (v195 = specialized __RawDictionaryStorage.find<A>(_:)(0x656372756F73, 0xE600000000000000), (v196 & 1) == 0))
                {

                  goto LABEL_82;
                }

                outlined init with copy of Any(*(v194 + 56) + 32 * v195, &v220);

                if ((swift_dynamicCast() & 1) == 0)
                {
LABEL_82:
                  v162 = v214 != 1;
                  v163 = v217;
                  v164 = [v217 domain];
                  v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v167 = v166;

                  v168 = [v163 verb];
                  v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v171 = v170;

                  type metadata accessor for Signal();
                  v172 = swift_allocObject();
                  *(v172 + 16) = v75;
                  *(v172 + 24) = v79;
                  *(v172 + 32) = v85;
                  *(v172 + 40) = v60;
                  *(v172 + 48) = v216;
                  *(v172 + 56) = v162;
                  *(v172 + 64) = v165;
                  *(v172 + 72) = v167;
                  *(v172 + 80) = v169;
                  *(v172 + 88) = v171;
                  *(v172 + 96) = 1;
                  *(v172 + 104) = v155;
                  return;
                }

                v197 = String.lowercased()();
                v198 = String.hasSuffix(_:)(v197);

                if (v198)
                {
                }

                else
                {
                  v200._object = 0x800000025ED80D50;
                  v200._countAndFlagsBits = 0xD000000000000011;
                  v201 = String.hasSuffix(_:)(v200);

                  if (!v201)
                  {
                    goto LABEL_82;
                  }
                }
              }

              v221 = v153;
              LOBYTE(v220) = 1;
              outlined init with take of Any(&v220, v219);
              v161 = swift_isUniquelyReferenced_nonNull_native();
              v218 = v155;
LABEL_81:
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v219, 0x42646574616E6F64, 0xED00006972695379, v161);
              v155 = v218;
              goto LABEL_82;
            }
          }

          v221 = v153;
          LOBYTE(v220) = v79 < 3.0;
          outlined init with take of Any(&v220, v219);
          v161 = swift_isUniquelyReferenced_nonNull_native();
          v218 = v155;
          goto LABEL_81;
        }
      }

      else
      {
      }
    }

    v150 = 0;
    v151 = 0xE000000000000000;
    goto LABEL_76;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v173 = type metadata accessor for Logger();
  __swift_project_value_buffer(v173, static Logger.engagement);
  *&v220 = 0;
  *(&v220 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  MEMORY[0x25F8CE090](0xD000000000000012, 0x800000025ED7F2D0);
  v174 = v217;
  v175 = [v217 domain];
  v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v178 = v177;

  MEMORY[0x25F8CE090](v176, v178);

  MEMORY[0x25F8CE090](0xD000000000000023, 0x800000025ED81370);
  v179 = v220;
  v180 = *MEMORY[0x277D616E0];
  v181 = type metadata accessor for AppIntentEventDataIssues();
  v182 = v212;
  (*(*(v181 - 8) + 104))(v212, v180, v181);
  v183 = v211;
  v184 = v33;
  (*(v211 + 104))(v182, *MEMORY[0x277D61678], v33);

  v185 = Logger.logObject.getter();
  v186 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v185, v186))
  {
    v187 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    *&v220 = v188;
    *v187 = 136315138;
    *(v187 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, *(&v179 + 1), &v220);
    _os_log_impl(&dword_25ECEC000, v185, v186, "%s", v187, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v188);
    MEMORY[0x25F8CEE50](v188, -1, -1);
    v189 = v187;
    v182 = v212;
    MEMORY[0x25F8CEE50](v189, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v190 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v182, v190, v191);

  (*(v183 + 8))(v182, v184);
}

uint64_t MapsIntentSignalFactory.init()()
{
  result = v0;
  *(v0 + 16) = &outlined read-only object #0 of MapsIntentSignalFactory.init();
  return result;
}

uint64_t MapsIntentSignalFactory.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MapsIntentSignalFactory.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType()
{
  result = lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType;
  if (!lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType)
  {
    type metadata accessor for ProtoNavigationFollowupType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoNavigationFollowupType and conformance ProtoNavigationFollowupType);
  }

  return result;
}

void PSEGeoSELFEmitter.emitPSEGeo(geoSignals:appLaunchSignals:task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v222 = a2;
  v225 = type metadata accessor for ReliabilityCategory();
  v6 = *(v225 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v225);
  v10 = (v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v203 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v220 = v203 - v15;
  MEMORY[0x28223BE20](v14);
  v223 = v203 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v221 = v203 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v218 = v203 - v22;
  MEMORY[0x28223BE20](v21);
  v219 = v203 - v23;
  v24 = type metadata accessor for UUID();
  v224 = *(v24 - 8);
  v25 = *(v224 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v217 = v203 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v215 = v203 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v216 = v203 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = v203 - v32;
  v34 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (!v34)
  {
    goto LABEL_107;
  }

  v35 = v34;
  v214 = a3;
  v213 = v3;
  v36 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
  if (!v36)
  {
LABEL_106:

LABEL_107:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    __swift_project_value_buffer(v104, static Logger.engagement);
    v105 = *MEMORY[0x277D615B0];
    v106 = type metadata accessor for EngagementSignalCollectionError();
    (*(*(v106 - 8) + 104))(v10, v105, v106);
    v107 = v225;
    (*(v6 + 104))(v10, *MEMORY[0x277D616A8], v225);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v229[0] = v111;
      *v110 = 136315138;
      *(v110 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000025ED81400, v229);
      _os_log_impl(&dword_25ECEC000, v108, v109, "%s", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v111);
      MEMORY[0x25F8CEE50](v111, -1, -1);
      MEMORY[0x25F8CEE50](v110, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v112 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v10, v112, v113);

    (*(v6 + 8))(v10, v107);
    return;
  }

  v37 = v36;
  v211 = v33;
  v38 = [objc_allocWithZone(MEMORY[0x277D5A1C8]) init];
  if (!v38)
  {
LABEL_105:

    v35 = v37;
    goto LABEL_106;
  }

  v39 = v38;
  v212 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
  if (!v212)
  {
LABEL_104:

    v35 = v37;
    v37 = v39;
    goto LABEL_105;
  }

  v210 = [objc_allocWithZone(MEMORY[0x277D5A1C0]) init];
  if (!v210)
  {
    v56 = v35;
    v35 = v37;
    v57 = v212;
LABEL_103:

    v37 = v39;
    v39 = v57;
    goto LABEL_104;
  }

  v209 = v39;
  v208 = v37;
  if (a1 >> 62)
  {
    goto LABEL_98;
  }

  v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
LABEL_102:

    v35 = v212;
    v57 = v208;
    v39 = v209;
    v56 = v210;
    goto LABEL_103;
  }

LABEL_8:
  v226 = (a1 & 0xC000000000000001);
  v206 = v24;
  v205 = v13;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x25F8CE460](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_118;
    }

    v41 = *(a1 + 32);
  }

  v43 = v42;
  (*(*v42 + 120))(v229);
  v44 = v212;
  v45 = (*(*v43 + 144))([v212 setEventDonationTimeInSecondsSince2001_]);
  v46 = MEMORY[0x25F8CDFC0](v45);

  [v44 setDomain_];

  v47 = (*(*v43 + 168))();
  v10 = v48;
  v49 = MEMORY[0x25F8CDFC0](v47);

  [v44 setAction_];

  v50 = *(*v43 + 216);
  v203[1] = v43;
  v51 = v50();
  if (*(v51 + 16))
  {
    v52 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379);
    v53 = v213;
    if (v54)
    {
      outlined init with copy of Any(*(v51 + 56) + 32 * v52, v229);

      if (swift_dynamicCast())
      {
        v55 = v227;
      }

      else
      {
        v55 = 2;
      }
    }

    else
    {

      v55 = 2;
    }
  }

  else
  {

    v55 = 2;
    v53 = v213;
  }

  v58 = (*(*v53 + 104))(v55);
  [v212 setIsDonatedBySiri_];
  v59 = v222;
  if (v222 >> 62)
  {
    if (v222 < 0)
    {
      v114 = v222;
    }

    else
    {
      v114 = v222 & 0xFFFFFFFFFFFFFF8;
    }

    v60 = MEMORY[0x25F8CE500](v114);
  }

  else
  {
    v60 = *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v207 = v6;
  v204 = v35;
  if (v60)
  {
    if ((v59 & 0xC000000000000001) != 0)
    {
      v62 = MEMORY[0x25F8CE460](0, v59);
      v61 = v62;
    }

    else
    {
      if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_121;
      }

      v61 = *(v59 + 32);
    }

    (*(*v61 + 120))(v229, v62);
    v63 = (*(*v61 + 216))([v212 setAppLaunchTimeInSecondsSince2001_]);
    if (*(v63 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v65 & 1) != 0))
    {
      outlined init with copy of Any(*(v63 + 56) + 32 * v64, v229);

      v66 = swift_dynamicCast();
      v67 = v66 == 0;
      if (v66)
      {
        v68 = v227;
      }

      else
      {
        v68 = 0;
      }

      if (v67)
      {
        v69 = 0;
      }

      else
      {
        v69 = v228;
      }
    }

    else
    {

      v68 = 0;
      v69 = 0;
    }

    v70 = v213;
    v71 = (*(*v213 + 128))(v68, v69);

    v72 = v212;
    v73 = (*(*v61 + 168))([v212 setAppFollowup_]);
    v74 = (*(*v70 + 136))(v73);

    [v72 setAppLaunchReason_];
  }

  else
  {
    [v212 setAppFollowup_];
  }

  v24 = 0;
  v6 = 2003789907;
  v229[0] = MEMORY[0x277D84F90];
  v35 = (a1 & 0xFFFFFFFFFFFFFF8);
  v13 = 0xE400000000000000;
  do
  {
    if (v226)
    {
      v75 = MEMORY[0x25F8CE460](v24, a1);
      v10 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_96;
      }

      v75 = *(a1 + 8 * v24 + 32);

      v10 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        if (a1 < 0)
        {
          v103 = a1;
        }

        else
        {
          v103 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        v40 = MEMORY[0x25F8CE500](v103);
        if (!v40)
        {
          goto LABEL_102;
        }

        goto LABEL_8;
      }
    }

    if ((*(*v75 + 168))() == 2003789907 && v76 == 0xE400000000000000)
    {
    }

    else
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v78 & 1) == 0)
      {

        goto LABEL_38;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v79 = *(v229[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_38:
    ++v24;
  }

  while (v10 != v40);
  v24 = 0;
  v222 = v229[0];
  v229[0] = MEMORY[0x277D84F90];
  do
  {
    if (v226)
    {
      v6 = MEMORY[0x25F8CE460](v24, a1);
      v10 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v6 = *(a1 + 8 * v24 + 32);

      v10 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_95;
      }
    }

    if ((*(*v6 + 168))() == 0x7261436563616C50 && v81 == 0xEC00000070615464)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {

        goto LABEL_55;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v13 = *(v229[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v80 = specialized ContiguousArray._endMutation()();
LABEL_55:
    ++v24;
  }

  while (v10 != v40);
  v40 = v229[0];
  v83 = (*v214 + 328);
  v10 = *v83;
  v6 = v83;
  v84 = (*v83)(v80);
  v85 = (*(*v84 + 104))(v84);

  v86 = v85 == 3;
  v13 = &selRef_recentCallStatus;
  v35 = v210;
  [v210 setIsSiriResultUseful_];
  a1 = v222;
  if ((v222 & 0x8000000000000000) == 0 && (v222 & 0x4000000000000000) == 0)
  {
    v87 = *(v222 + 16);
    goto LABEL_73;
  }

LABEL_118:
  v87 = MEMORY[0x25F8CE500](a1);
LABEL_73:
  v49 = v206;
  v88 = v224;
  v59 = &off_279A51000;
  if (!v87)
  {

    v100 = v212;
    [v212 setHasUserInitiatedFollowup_];
    [v35 setFollowup_];
    v101 = [v100 appFollowup];
    v96 = v208;
    if (v101 == 4)
    {
      v102 = v10([v35 *(v13 + 688)]);
      (*(*v102 + 112))(4);
    }

    goto LABEL_134;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_121:
    v24 = MEMORY[0x25F8CE460](0, a1);
LABEL_77:

    [v212 setHasUserInitiatedFollowup_];
    v89 = [objc_allocWithZone(MEMORY[0x277D5A1D0]) *(v59 + 3488)];
    if (!v89)
    {

      v96 = v208;
      v35 = v210;
      goto LABEL_133;
    }

    a1 = v89;
    [v89 setFollowupType_];
    if (v40 < 0 || (v40 & 0x4000000000000000) != 0)
    {
      goto LABEL_123;
    }

    if (*(v40 + 16))
    {
      goto LABEL_81;
    }

LABEL_124:

    v116 = (*(*v24 + 168))(v115);
    v117 = (*(*v213 + 168))(v116);

    v118 = (*(*v24 + 216))([a1 setMapsAction_]);
    if (*(v118 + 16))
    {
      v119 = specialized __RawDictionaryStorage.find<A>(_:)(0x79546E6F69746361, 0xEA00000000006570);
      v96 = v208;
      if (v120)
      {
        outlined init with copy of Any(*(v118 + 56) + 32 * v119, v229);

        if (swift_dynamicCast())
        {
          v99 = MEMORY[0x25F8CDFC0](v227, v228);

LABEL_131:
          [a1 setMapsActionType_];
          goto LABEL_132;
        }
      }

      else
      {
      }
    }

    else
    {

      v96 = v208;
    }

    v99 = 0;
    goto LABEL_131;
  }

  if (*(a1 + 16))
  {
    v24 = *(a1 + 32);

    goto LABEL_77;
  }

  __break(1u);
LABEL_123:
  if (!MEMORY[0x25F8CE500](v40))
  {
    goto LABEL_124;
  }

LABEL_81:
  if ((v40 & 0xC000000000000001) != 0)
  {
    v90 = v10;
    v91 = MEMORY[0x25F8CE460](0, v40);
    goto LABEL_84;
  }

  if (*(v40 + 16))
  {
    v90 = v10;
    v91 = *(v40 + 32);

LABEL_84:

    v93 = (*(*v91 + 168))(v92);
    v94 = (*(*v213 + 168))(v93);

    v95 = (*(*v91 + 216))([a1 setMapsAction_]);
    v96 = v208;
    if (*(v95 + 16) && (v97 = specialized __RawDictionaryStorage.find<A>(_:)(0x79546E6F69746361, 0xEA00000000006570), (v98 & 1) != 0))
    {
      outlined init with copy of Any(*(v95 + 56) + 32 * v97, v229);

      if (swift_dynamicCast())
      {
        v99 = MEMORY[0x25F8CDFC0](v227, v228);

        goto LABEL_93;
      }
    }

    else
    {
    }

    v99 = 0;
LABEL_93:
    [a1 setMapsActionType_];

    v10 = v90;
LABEL_132:

    v121 = a1;
    v35 = v210;
    [v210 setFollowup_];

LABEL_133:
    v88 = v224;
LABEL_134:
    v222 = v6;
    v122 = v209;
    [v209 setCommonSignal_];
    [v122 setMapsSignal_];
    v123 = v211;
    UUID.init()();
    v124 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v126 = [v124 initWithNSUUID_];

    v226 = *(v88 + 8);
    v226(v123, v49);
    [v96 setPseId_];

    (*(*v214 + 160))();
    v127 = v219;
    UUID.init(uuidString:)();

    v128 = *(v88 + 48);
    v129 = v128(v127, 1, v49);
    v224 = v88 + 8;
    if (v129 == 1)
    {
      v130 = outlined destroy of UUID?(v127);
    }

    else
    {
      v131 = v216;
      (*(v88 + 32))(v216, v127, v49);
      v132 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v133 = UUID._bridgeToObjectiveC()().super.isa;
      v134 = [v132 initWithNSUUID_];

      [v96 setUiSessionId_];
      v130 = (v226)(v131, v49);
    }

    v135 = ((*(*v214 + 208))(v130) + 16);
    v136 = MEMORY[0x277D616A8];
    if (*v135)
    {
      v137 = &v135[2 * *v135];
      v138 = *v137;
      v139 = v137[1];

      v140 = v218;
      UUID.init(uuidString:)();

      if (v128(v140, 1, v49) == 1)
      {
        outlined destroy of UUID?(v140);
        goto LABEL_141;
      }

      v157 = v140;
      v158 = v215;
      (*(v88 + 32))(v215, v157, v49);
      v159 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v160 = UUID._bridgeToObjectiveC()().super.isa;
      v161 = [v159 initWithNSUUID_];

      [v96 setOriginalLastRequestId_];
      v155 = (v226)(v158, v49);
      v151 = v221;
      v156 = v203[0];
    }

    else
    {

LABEL_141:
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v141 = v203[0];
      v142 = type metadata accessor for Logger();
      __swift_project_value_buffer(v142, static Logger.engagement);
      v143 = *MEMORY[0x277D615E0];
      v144 = type metadata accessor for EngagementSignalCollectionError();
      v145 = v223;
      (*(*(v144 - 8) + 104))(v223, v143, v144);
      (*(v207 + 104))(v145, *v136, v225);
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v229[0] = v149;
        *v148 = 136315138;
        *(v148 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, v229);
        _os_log_impl(&dword_25ECEC000, v146, v147, "%s", v148, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v149);
        v150 = v149;
        v49 = v206;
        MEMORY[0x25F8CEE50](v150, -1, -1);
        MEMORY[0x25F8CEE50](v148, -1, -1);
      }

      v151 = v221;
      type metadata accessor for SiriTaskEngagementUtils();
      v152 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      v153 = v223;
      MEMORY[0x25F8CDB30](v223, v152, v154);

      v155 = (*(v207 + 8))(v153, v225);
      v96 = v208;
      v156 = v141;
    }

    (*(*v214 + 184))(v155);
    UUID.init(uuidString:)();

    if (v128(v151, 1, v49) == 1)
    {
      outlined destroy of UUID?(v151);
      v162 = v225;
      v163 = v207;
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v164 = type metadata accessor for Logger();
      __swift_project_value_buffer(v164, static Logger.engagement);
      v165 = *MEMORY[0x277D615C8];
      v166 = type metadata accessor for EngagementSignalCollectionError();
      v167 = v220;
      (*(*(v166 - 8) + 104))(v220, v165, v166);
      (*(v163 + 104))(v167, *MEMORY[0x277D616A8], v162);
      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v229[0] = v171;
        *v170 = 136315138;
        *(v170 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, v229);
        _os_log_impl(&dword_25ECEC000, v168, v169, "%s", v170, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v171);
        v172 = v171;
        v49 = v206;
        MEMORY[0x25F8CEE50](v172, -1, -1);
        MEMORY[0x25F8CEE50](v170, -1, -1);
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v173 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      v174 = v220;
      MEMORY[0x25F8CDB30](v220, v173, v175);

      v176 = (*(v163 + 8))(v174, v162);
      v177 = v204;
    }

    else
    {
      v178 = v217;
      (*(v88 + 32))(v217, v151, v49);
      v179 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v180 = UUID._bridgeToObjectiveC()().super.isa;
      v181 = [v179 initWithNSUUID_];

      [v96 setTaskId_];
      v176 = (v226)(v178, v49);
      v162 = v225;
      v163 = v207;
      v177 = v204;
    }

    v182 = v156(v176);
    v183 = (*(*v182 + 104))(v182);

    v184 = v213;
    v185 = [v96 setSiriEngagementTaskSuccess_];
    [v96 setTriggerOrigin_];
    [v177 setEventMetadata_];
    v186 = v177;
    [v177 setMapsSignalGenerated_];
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v187 = type metadata accessor for Logger();
    __swift_project_value_buffer(v187, static Logger.engagement);
    v188 = *MEMORY[0x277D61610];
    v189 = type metadata accessor for SELFPSELogged();
    v190 = v205;
    (*(*(v189 - 8) + 104))(v205, v188, v189);
    v191 = v190;
    (*(v163 + 104))(v190, *MEMORY[0x277D61658], v162);
    v192 = Logger.logObject.getter();
    v193 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v229[0] = v195;
      *v194 = 136315138;
      *(v194 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x800000025ED81440, v229);
      _os_log_impl(&dword_25ECEC000, v192, v193, "%s", v194, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v195);
      v196 = v195;
      v49 = v206;
      MEMORY[0x25F8CEE50](v196, -1, -1);
      MEMORY[0x25F8CEE50](v194, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v197 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v191, v197, v198);

    (*(v163 + 8))(v191, v162);
    v199 = [objc_opt_self() sharedAnalytics];
    v200 = [v199 defaultMessageStream];

    v201 = v211;
    UUID.init()();
    v202 = UUID._bridgeToObjectiveC()().super.isa;
    v226(v201, v49);
    [v200 emitMessage:v186 isolatedStreamUUID:v202];
  }

  else
  {
    __break(1u);
  }
}

uint64_t PSEGeoSELFEmitter.getFollowupType(firstShowSignal:)(uint64_t a1)
{
  (*(*a1 + 120))(v2);
  if (*&v2[1] <= 3.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t PSEGeoSELFEmitter.getPSEMapsAction(mapsAction:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x697461676976614ELL && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x7261436563616C50 && a2 == 0xEC00000070615464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 2003789907 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x694C746C75736552 && a2 == 0xED00007061547473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x61437463656C6553 && a2 == 0xEE0079726F676574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 5;
  }

  result = 6;
  if (a1 != 0x686372616553 || a2 != 0xE600000000000000)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *Constants.defaultParameters.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultParameters != -1)
  {
    swift_once();
  }

  return &static Constants.defaultParameters;
}

uint64_t static PSEStruct.pseTriggerOrigin.getter()
{
  swift_beginAccess();
  v0 = static PSEStruct.pseTriggerOrigin;

  return v0;
}

uint64_t static PSEStruct.pseTriggerOrigin.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  static PSEStruct.pseTriggerOrigin = a1;
  qword_280FEE450 = a2;
}

uint64_t key path setter for static PSEStruct.pseTriggerOrigin : PSEStruct.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static PSEStruct.pseTriggerOrigin = v2;
  qword_280FEE450 = v1;
}

uint64_t one-time initialization function for defaultParameters()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #1 of one-time initialization function for defaultParameters);
  result = outlined destroy of (String, [String])(&unk_2870DF7C8);
  static Constants.defaultParameters = v0;
  return result;
}

uint64_t static Constants.defaultParameters.getter()
{
  if (one-time initialization token for defaultParameters != -1)
  {
    swift_once();
  }
}

uint64_t outlined destroy of (String, [String])(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void PhotosSignalFactory.processBiomeEventsToSignals(siriDataStream:siriUISession:)(void *a1@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  v78 = MEMORY[0x277D84F90];
  v4 = a1[6];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(*v2 + 88);
    v7 = (v4 + 40);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 1);
      if (v6(v8))
      {

        MEMORY[0x25F8CE160](v10);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v11 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v78;
      }

      else
      {
      }

      v7 += 2;
      --v5;
    }

    while (v5);
  }

  v12 = a1[7];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(*v2 + 96);
    v15 = (v12 + 40);
    do
    {
      v16 = *v15;
      v17 = *(v15 - 1);
      if (v14(v16))
      {

        MEMORY[0x25F8CE160](v18);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v78;
      }

      else
      {
      }

      v15 += 2;
      --v13;
    }

    while (v13);
  }

  v20 = a1[8];
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = *(*v2 + 104);
    v23 = (v20 + 40);
    do
    {
      v24 = *v23;
      v25 = *(v23 - 1);
      if (v22(v24))
      {

        MEMORY[0x25F8CE160](v26);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v27 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v78;
      }

      else
      {
      }

      v23 += 2;
      --v21;
    }

    while (v21);
  }

  v28 = a1[9];
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = *(*v2 + 112);
    v31 = (v28 + 40);
    do
    {
      v32 = *v31;
      v33 = *(v31 - 1);
      if (v30(v32))
      {

        MEMORY[0x25F8CE160](v34);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v35 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v78;
      }

      else
      {
      }

      v31 += 2;
      --v29;
    }

    while (v29);
  }

  v36 = a1[10];
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = *(*v2 + 120);
    v39 = (v36 + 40);
    do
    {
      v40 = *v39;
      v41 = *(v39 - 1);
      if (v38(v40))
      {

        MEMORY[0x25F8CE160](v42);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v43 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v78;
      }

      else
      {
      }

      v39 += 2;
      --v37;
    }

    while (v37);
  }

  v44 = a1[11];
  v45 = *(v44 + 16);
  if (v45)
  {
    v46 = *(*v2 + 128);
    v47 = (v44 + 40);
    do
    {
      v48 = *v47;
      v49 = *(v47 - 1);
      if (v46(v48))
      {

        MEMORY[0x25F8CE160](v50);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v51 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v78;
      }

      else
      {
      }

      v47 += 2;
      --v45;
    }

    while (v45);
  }

  v52 = a1[12];
  v53 = *(v52 + 16);
  if (v53)
  {
    v54 = *(*v2 + 136);
    v55 = (v52 + 40);
    do
    {
      v56 = *v55;
      v57 = *(v55 - 1);
      if (v54(v56))
      {

        MEMORY[0x25F8CE160](v58);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v59 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v78;
      }

      else
      {
      }

      v55 += 2;
      --v53;
    }

    while (v53);
  }

  v60 = a1[13];
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = *(*v2 + 144);
    v63 = (v60 + 40);
    do
    {
      v64 = *v63;
      v65 = *(v63 - 1);
      if (v62(v64))
      {

        MEMORY[0x25F8CE160](v66);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v67 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v78;
      }

      else
      {
      }

      v63 += 2;
      --v61;
    }

    while (v61);
  }

  v68 = a1[14];
  v69 = *(v68 + 16);
  if (v69)
  {
    v70 = *(*v2 + 152);
    v71 = (v68 + 40);
    do
    {
      v72 = *v71;
      v73 = *(v71 - 1);
      if (v70(v72))
      {

        MEMORY[0x25F8CE160](v74);
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v75 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v78;
      }

      else
      {
      }

      v71 += 2;
      --v69;
    }

    while (v69);
  }

  *a2 = v3;
  a2[1] = MEMORY[0x277D84F90];
}

uint64_t PhotosSignalFactory.convertPhotosEngagementEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2, uint64_t (*a3)(id), uint64_t a4, uint64_t a5)
{
  v74 = a4;
  v75 = a5;
  v72 = a3;
  v73 = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v72 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v72 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v72 - v22;
  v80 = MEMORY[0x277D84F98];
  Date.init(timeIntervalSinceReferenceDate:)();
  (*(v7 + 56))(v23, 0, 1, v6);
  v24 = *(v7 + 16);
  v24(v16, a2, v6);
  v25 = type metadata accessor for SiriUISession(0);
  v24(v14, a2 + *(v25 + 20), v6);
  outlined init with copy of Date?(v23, v21);
  v26 = (*(v7 + 48))(v21, 1, v6);
  if (v26 == 1)
  {
    v40 = *(v7 + 8);
    v40(v14, v6);
    v40(v16, v6);
    outlined destroy of Date?(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v38 = 0x3FF0000000000000;
    v28 = 0;
    v32 = 0.0;
    v39 = 0.0;
  }

  else
  {
    (*(v7 + 32))(v11, v21, v6);
    Date.timeIntervalSinceReferenceDate.getter();
    v28 = v27;
    Date.timeIntervalSinceReferenceDate.getter();
    v30 = v29;
    Date.timeIntervalSinceReferenceDate.getter();
    v32 = v30 - v31;
    Date.timeIntervalSinceReferenceDate.getter();
    v34 = v33;
    Date.timeIntervalSinceReferenceDate.getter();
    v36 = v35;
    v37 = *(v7 + 8);
    v37(v11, v6);
    v37(v14, v6);
    v37(v16, v6);
    outlined destroy of Date?(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v38 = 0;
    v39 = v34 - v36;
  }

  v41 = v73;
  v42 = [v73 identifier];
  v43 = MEMORY[0x277D837D0];
  if (v42)
  {
    v44 = v42;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v79 = v43;
    *&v78 = v45;
    *(&v78 + 1) = v47;
    outlined init with take of Any(&v78, v77);
    v48 = v80;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, 0xD000000000000010, 0x800000025ED807D0, isUniquelyReferenced_nonNull_native);
    v50 = v76;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, 0x800000025ED807D0, &v78);
    outlined destroy of Date?(&v78, &_sypSgMd, &_sypSgMR);
    v50 = v80;
  }

  v51 = [v41 type];
  v52 = v72(v51);
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  v79 = v43;
  *&v78 = v53;
  *(&v78 + 1) = v55;
  outlined init with take of Any(&v78, v77);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v50;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, 0x7954797469746E65, 0xEA00000000006570, v56);
  v57 = v76;
  v80 = v76;
  v58 = [v41 subset];
  if (v58)
  {
    v59 = v58;
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    v79 = v43;
    *&v78 = v60;
    *(&v78 + 1) = v62;
    outlined init with take of Any(&v78, v77);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v57;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, 0x746573627573, 0xE600000000000000, v63);
    v64 = v76;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x746573627573, 0xE600000000000000, &v78);
    outlined destroy of Date?(&v78, &_sypSgMd, &_sypSgMR);
    v64 = v80;
  }

  v65 = MEMORY[0x277D839B0];
  v79 = MEMORY[0x277D839B0];
  LOBYTE(v78) = 0;
  outlined init with take of Any(&v78, v77);
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v64;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, 0x42646574616E6F64, 0xED00006972695379, v66);
  v67 = v76;
  v79 = v65;
  LOBYTE(v78) = 1;
  outlined init with take of Any(&v78, v77);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v67;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, 0xD000000000000016, 0x800000025ED7E770, v68);
  v69 = v76;
  type metadata accessor for Signal();
  result = swift_allocObject();
  *(result + 16) = v28;
  *(result + 24) = v32;
  *(result + 32) = v39;
  *(result + 40) = 0;
  *(result + 48) = v38;
  *(result + 56) = v26 != 1;
  *(result + 64) = 0x6E65746E49707041;
  *(result + 72) = 0xE900000000000074;
  v71 = v75;
  *(result + 80) = v74;
  *(result + 88) = v71;
  *(result + 96) = 1;
  *(result + 104) = v69;
  return result;
}

uint64_t PhotosSignalFactory.convertPhotoMemoriesViewedEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2)
{
  v65 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v64 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v64 - v19;
  v70 = MEMORY[0x277D84F98];
  Date.init(timeIntervalSinceReferenceDate:)();
  (*(v4 + 56))(v20, 0, 1, v3);
  v21 = *(v4 + 16);
  v21(v13, a2, v3);
  v22 = type metadata accessor for SiriUISession(0);
  v21(v11, a2 + *(v22 + 20), v3);
  outlined init with copy of Date?(v20, v18);
  v23 = (*(v4 + 48))(v18, 1, v3);
  if (v23 == 1)
  {
    v37 = *(v4 + 8);
    v37(v11, v3);
    v37(v13, v3);
    outlined destroy of Date?(v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v35 = 0x3FF0000000000000;
    v25 = 0;
    v29 = 0.0;
    v36 = 0.0;
  }

  else
  {
    (*(v4 + 32))(v8, v18, v3);
    Date.timeIntervalSinceReferenceDate.getter();
    v25 = v24;
    Date.timeIntervalSinceReferenceDate.getter();
    v27 = v26;
    Date.timeIntervalSinceReferenceDate.getter();
    v29 = v27 - v28;
    Date.timeIntervalSinceReferenceDate.getter();
    v31 = v30;
    Date.timeIntervalSinceReferenceDate.getter();
    v33 = v32;
    v34 = *(v4 + 8);
    v34(v8, v3);
    v34(v11, v3);
    v34(v13, v3);
    outlined destroy of Date?(v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v35 = 0;
    v36 = v31 - v33;
  }

  v38 = v65;
  v39 = [v65 identifier];
  v40 = MEMORY[0x277D837D0];
  if (v39)
  {
    v41 = v39;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v69 = v40;
    *&v68 = v42;
    *(&v68 + 1) = v44;
    outlined init with take of Any(&v68, v67);
    v45 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v45;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, 0xD000000000000010, 0x800000025ED807D0, isUniquelyReferenced_nonNull_native);
    v47 = v66;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, 0x800000025ED807D0, &v68);
    outlined destroy of Date?(&v68, &_sypSgMd, &_sypSgMR);
    v47 = v70;
  }

  v48 = v23 != 1;
  [v38 viewedDurationBucket];
  v49 = BMPhotosMemoriesViewedDurationAsString();
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v69 = v40;
  *&v68 = v50;
  *(&v68 + 1) = v52;
  outlined init with take of Any(&v68, v67);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v47;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, 0x6E6F697461727564, 0xE800000000000000, v53);
  v54 = v66;
  v55 = [v38 watchedToEnd];
  v56 = MEMORY[0x277D839B0];
  v69 = MEMORY[0x277D839B0];
  LOBYTE(v68) = v55;
  outlined init with take of Any(&v68, v67);
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v54;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, 0x5464656863746177, 0xEC000000646E456FLL, v57);
  v58 = v66;
  v69 = v56;
  LOBYTE(v68) = 0;
  outlined init with take of Any(&v68, v67);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v58;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, 0x42646574616E6F64, 0xED00006972695379, v59);
  v60 = v66;
  v69 = v56;
  LOBYTE(v68) = 1;
  outlined init with take of Any(&v68, v67);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v60;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, 0xD000000000000016, 0x800000025ED7E770, v61);
  v62 = v66;
  type metadata accessor for Signal();
  result = swift_allocObject();
  *(result + 16) = v25;
  *(result + 24) = v29;
  *(result + 32) = v36;
  *(result + 40) = 0;
  *(result + 48) = v35;
  *(result + 56) = v48;
  *(result + 64) = 0x6E65746E49707041;
  *(result + 72) = 0xE900000000000074;
  *(result + 80) = 0xD000000000000014;
  *(result + 88) = 0x800000025ED81520;
  *(result + 96) = 1;
  *(result + 104) = v62;
  return result;
}

uint64_t PhotosSignalFactory.convertPhotoMemoriesSharedEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2)
{
  v65 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v64 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v64 - v19;
  v70 = MEMORY[0x277D84F98];
  Date.init(timeIntervalSinceReferenceDate:)();
  (*(v4 + 56))(v20, 0, 1, v3);
  v21 = *(v4 + 16);
  v21(v13, a2, v3);
  v22 = type metadata accessor for SiriUISession(0);
  v21(v11, a2 + *(v22 + 20), v3);
  outlined init with copy of Date?(v20, v18);
  v23 = (*(v4 + 48))(v18, 1, v3);
  if (v23 == 1)
  {
    v37 = *(v4 + 8);
    v37(v11, v3);
    v37(v13, v3);
    outlined destroy of Date?(v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v35 = 0x3FF0000000000000;
    v25 = 0;
    v29 = 0.0;
    v36 = 0.0;
  }

  else
  {
    (*(v4 + 32))(v8, v18, v3);
    Date.timeIntervalSinceReferenceDate.getter();
    v25 = v24;
    Date.timeIntervalSinceReferenceDate.getter();
    v27 = v26;
    Date.timeIntervalSinceReferenceDate.getter();
    v29 = v27 - v28;
    Date.timeIntervalSinceReferenceDate.getter();
    v31 = v30;
    Date.timeIntervalSinceReferenceDate.getter();
    v33 = v32;
    v34 = *(v4 + 8);
    v34(v8, v3);
    v34(v11, v3);
    v34(v13, v3);
    outlined destroy of Date?(v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v35 = 0;
    v36 = v31 - v33;
  }

  v38 = [v65 identifier];
  v39 = MEMORY[0x277D837D0];
  if (v38)
  {
    v40 = v38;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v69 = v39;
    *&v68 = v41;
    *(&v68 + 1) = v43;
    outlined init with take of Any(&v68, v67);
    v44 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v44;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, 0xD000000000000010, 0x800000025ED807D0, isUniquelyReferenced_nonNull_native);
    v46 = v66;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, 0x800000025ED807D0, &v68);
    outlined destroy of Date?(&v68, &_sypSgMd, &_sypSgMR);
    v46 = v70;
  }

  v47 = v65;
  v48 = [v65 isThirdPartyShareDestination];
  v49 = MEMORY[0x277D839B0];
  v69 = MEMORY[0x277D839B0];
  LOBYTE(v68) = v48;
  outlined init with take of Any(&v68, v67);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v46;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, 0xD00000000000001CLL, 0x800000025ED80DB0, v50);
  v51 = v66;
  v70 = v66;
  v52 = [v47 subset];
  if (v52)
  {
    v53 = v52;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v69 = v39;
    *&v68 = v54;
    *(&v68 + 1) = v56;
    outlined init with take of Any(&v68, v67);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v51;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, 0x746573627573, 0xE600000000000000, v57);
    v58 = v66;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x746573627573, 0xE600000000000000, &v68);
    outlined destroy of Date?(&v68, &_sypSgMd, &_sypSgMR);
    v58 = v70;
  }

  v69 = v49;
  LOBYTE(v68) = 0;
  outlined init with take of Any(&v68, v67);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v58;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, 0x42646574616E6F64, 0xED00006972695379, v59);
  v60 = v66;
  v69 = v49;
  LOBYTE(v68) = 1;
  outlined init with take of Any(&v68, v67);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v60;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, 0xD000000000000016, 0x800000025ED7E770, v61);
  v62 = v66;
  type metadata accessor for Signal();
  result = swift_allocObject();
  *(result + 16) = v25;
  *(result + 24) = v29;
  *(result + 32) = v36;
  *(result + 40) = 0;
  *(result + 48) = v35;
  *(result + 56) = v23 != 1;
  *(result + 64) = 0x6E65746E49707041;
  *(result + 72) = 0xE900000000000074;
  *(result + 80) = 0xD000000000000013;
  *(result + 88) = 0x800000025ED81540;
  *(result + 96) = 1;
  *(result + 104) = v62;
  return result;
}

uint64_t dispatch thunk of PhotosSignalFactory.processBiomeEventsToSignals(siriDataStream:siriUISession:)(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(*v1 + 80);
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v6 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v6;
  v8[6] = *(a1 + 96);
  v9 = v2;
  return v3(v8);
}

void PSEAlarmSELFEmitter.emitPSEAlarm(alarmSignals:appLaunchSignals:task:)(uint64_t a1, uint64_t a2, void *a3)
{
  v208 = a1;
  v209 = a3;
  v5 = type metadata accessor for ReliabilityCategory();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v204 = v186 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v201 = v186 - v14;
  MEMORY[0x28223BE20](v13);
  v205 = v186 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v202 = v186 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v203 = v186 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v186 - v22;
  v24 = type metadata accessor for UUID();
  v206 = *(v24 - 8);
  v207 = v24;
  v25 = *(v206 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v200 = v186 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v199 = v186 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = (v186 - v31);
  MEMORY[0x28223BE20](v30);
  v34 = v186 - v33;
  v35 = [objc_allocWithZone(MEMORY[0x277D5A190]) init];
  if (v35)
  {
    v36 = v35;
    v198 = v34;
    v37 = [objc_allocWithZone(MEMORY[0x277D5A198]) init];
    if (v37)
    {
      v38 = v37;
      v197 = [objc_allocWithZone(MEMORY[0x277D5A168]) init];
      if (v197)
      {
        v196 = [objc_allocWithZone(MEMORY[0x277D5A1A0]) init];
        if (v196)
        {
          v194 = v3;
          v39 = [objc_allocWithZone(MEMORY[0x277D5A160]) init];
          if (v39)
          {
            v40 = v39;
            v41 = v208;
            v42 = (v208 >> 62);
            if (v208 >> 62)
            {
              if (v208 < 0)
              {
                v174 = v208;
              }

              else
              {
                v174 = v208 & 0xFFFFFFFFFFFFFF8;
              }

              v193 = (v208 >> 62);
              v175 = MEMORY[0x25F8CE500](v174);
              v42 = v193;
              if (v175)
              {
LABEL_8:
                v190 = v41 & 0xC000000000000001;
                v191 = v40;
                v193 = v42;
                if ((v41 & 0xC000000000000001) != 0)
                {
                  v44 = MEMORY[0x25F8CE460](0, v41);
                  v43 = v44;
                }

                else
                {
                  if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_106;
                  }

                  v43 = *(v41 + 32);
                }

                v195 = v43;
                (*(*v43 + 120))(&v212, v44);
                v45 = v196;
                v46 = (*(*v43 + 144))([v196 setEventDonationTimeInSecondsSince2001_]);
                v47 = MEMORY[0x25F8CDFC0](v46);

                [v45 setDomain_];

                v48 = (*(*v195 + 168))();
                v49 = MEMORY[0x25F8CDFC0](v48);

                [v45 setAction_];

                v50 = (*(*v195 + 216))();
                if (*(v50 + 16) && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v52 & 1) != 0))
                {
                  outlined init with copy of Any(*(v50 + 56) + 32 * v51, &v212);

                  if (swift_dynamicCast())
                  {
                    v53 = v210;
                  }

                  else
                  {
                    v53 = 2;
                  }
                }

                else
                {

                  v53 = 2;
                }

                v55 = v191;
                v56 = (*(*v194 + 104))(v53);
                [v196 setIsDonatedBySiri_];
                if (a2 >> 62)
                {
                  if (a2 < 0)
                  {
                    v185 = a2;
                  }

                  else
                  {
                    v185 = a2 & 0xFFFFFFFFFFFFFF8;
                  }

                  v57 = MEMORY[0x25F8CE500](v185);
                }

                else
                {
                  v57 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v57)
                {
                  if ((a2 & 0xC000000000000001) != 0)
                  {
                    v60 = MEMORY[0x25F8CE460](0, a2);
                    v59 = v60;
                    v58 = v194;
                  }

                  else
                  {
                    v58 = v194;
                    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      goto LABEL_109;
                    }

                    v59 = *(a2 + 32);
                  }

                  (*(*v59 + 120))(&v212, v60);
                  v61 = (*(*v59 + 216))([v196 setAppLaunchTimeInSecondsSince2001_]);
                  v62 = *(v61 + 16);
                  v186[0] = v5;
                  if (v62 && (v63 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x800000025ED7E690), (v64 & 1) != 0))
                  {
                    outlined init with copy of Any(*(v61 + 56) + 32 * v63, &v212);

                    v65 = swift_dynamicCast();
                    v66 = v210;
                    if (!v65)
                    {
                      v66 = 0;
                    }

                    v188 = v66;
                    if (v65)
                    {
                      v67 = v211;
                    }

                    else
                    {
                      v67 = 0;
                    }
                  }

                  else
                  {

                    v188 = 0;
                    v67 = 0;
                  }

                  v189 = v59;
                  v68 = v209 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
                  v69 = (*(*v209 + 256))();
                  v70 = v69[2];
                  v192 = v68;
                  if (v70)
                  {
                    v71 = v69[5];
                    v187 = v69[4];
                  }

                  else
                  {
                    v187 = 0;
                    v71 = 0;
                  }

                  v76 = (*(*v58 + 120))(v188, v67, v187, v71);

                  v77 = v196;
                  v78 = [v196 setAppFollowup_];
                  v79 = (*(*v189 + 168))(v78);
                  v80 = (*(*v58 + 136))(v79);
                  v72 = v77;

                  [v77 setAppLaunchReason_];

                  v55 = v191;
                  v74 = v209;
                  v75 = v192;
                  v5 = v186[0];
                }

                else
                {
                  v72 = v196;
                  v73 = [v196 setAppFollowup_];
                  v74 = v209;
                  v75 = v209 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
                }

                v81 = *v74;
                v192 = v75;
                v187 = *(v81 + 328);
                v186[1] = v81 + 328;
                v82 = v187(v73);
                v83 = (*(*v82 + 104))(v82);

                [v55 setIsSiriResultUseful_];
                if (v193)
                {
                  v85 = v208;
                  if (v208 < 0)
                  {
                    v87 = v208;
                  }

                  else
                  {
                    v87 = v208 & 0xFFFFFFFFFFFFFF8;
                  }

                  v86 = MEMORY[0x25F8CE500](v87);
                }

                else
                {
                  v85 = v208;
                  v86 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v193 = v38;
                v88 = v198;
                if (v86 >= 2)
                {
                  if (v190)
                  {
                    v89 = MEMORY[0x25F8CE460](1, v85);
                  }

                  else
                  {
                    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                    {
                      __break(1u);
                      return;
                    }

                    v89 = *(v85 + 40);
                  }

                  (*(*v89 + 120))(&v212);

                  v84 = v213;
                  if (v213 <= 30.0)
                  {
                    if (v190)
                    {
                      v90 = MEMORY[0x25F8CE460](1, v208, v213);
                    }

                    else
                    {
                      v90 = *(v208 + 40);
                    }

                    v91 = (*(*v90 + 216))();

                    if (*(v91 + 16) && (v92 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v93 & 1) != 0))
                    {
                      outlined init with copy of Any(*(v91 + 56) + 32 * v92, &v212);

                      if (swift_dynamicCast())
                      {
                        v94 = v208;
                        if ((v210 & 1) == 0)
                        {
                          [v72 setHasUserInitiatedFollowup_];
                          if (v190)
                          {
                            v95 = MEMORY[0x25F8CE460](1, v94);
                          }

                          else
                          {
                            v95 = *(v94 + 40);
                          }

                          v172 = (*(*v194 + 160))(v195, v95);

                          [v55 setFollowUpType_];
LABEL_61:
                          v96 = v197;
                          [v197 setCommonSignal_];
                          [v96 setAlarmSignal_];
                          UUID.init()();
                          v97 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                          isa = UUID._bridgeToObjectiveC()().super.isa;
                          v99 = [v97 initWithNSUUID_];

                          v100 = v206;
                          v101 = v206 + 8;
                          v102 = v88;
                          v38 = v207;
                          v208 = *(v206 + 8);
                          (v208)(v102, v207);
                          [v193 setPseId_];

                          (*(*v209 + 160))();
                          UUID.init(uuidString:)();

                          v103 = *(v100 + 48);
                          v189 = v100 + 48;
                          v188 = v103;
                          v104 = v103(v23, 1, v38);
                          v190 = v101;
                          if (v104 == 1)
                          {
                            v105 = outlined destroy of UUID?(v23);
                            v106 = v203;
                            v107 = v208;
                          }

                          else
                          {
                            (*(v100 + 32))(v32, v23, v38);
                            v108 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                            v109 = UUID._bridgeToObjectiveC()().super.isa;
                            v110 = [v108 initWithNSUUID_];

                            [v193 setUiSessionId_];
                            v111 = v208;
                            v105 = (v208)(v32, v38);
                            v106 = v203;
                            v107 = v111;
                          }

                          v112 = ((*(*v209 + 208))(v105) + 16);
                          v32 = MEMORY[0x277D616A8];
                          if (*v112)
                          {
                            v113 = &v112[2 * *v112];
                            v114 = *v113;
                            v115 = v113[1];

                            v38 = v207;

                            UUID.init(uuidString:)();

                            if (v188(v106, 1, v38) != 1)
                            {
                              v130 = v199;
                              (*(v206 + 32))(v199, v106, v38);
                              v131 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                              v132 = UUID._bridgeToObjectiveC()().super.isa;
                              v133 = [v131 initWithNSUUID_];

                              [v193 setOriginalLastRequestId_];
                              v129 = v107(v130, v38);
                              v125 = v202;
                              goto LABEL_74;
                            }

                            outlined destroy of UUID?(v106);
                          }

                          else
                          {
                          }

                          if (one-time initialization token for engagement != -1)
                          {
                            swift_once();
                          }

                          v116 = type metadata accessor for Logger();
                          __swift_project_value_buffer(v116, static Logger.engagement);
                          v117 = *MEMORY[0x277D615E0];
                          v118 = type metadata accessor for EngagementSignalCollectionError();
                          v119 = v205;
                          (*(*(v118 - 8) + 104))(v205, v117, v118);
                          (*(v6 + 104))(v119, *v32, v5);
                          v120 = Logger.logObject.getter();
                          v121 = static os_log_type_t.debug.getter();
                          if (os_log_type_enabled(v120, v121))
                          {
                            v122 = swift_slowAlloc();
                            v123 = swift_slowAlloc();
                            v212 = *&v123;
                            *v122 = 136315138;
                            *(v122 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000025ED7E6D0, &v212);
                            _os_log_impl(&dword_25ECEC000, v120, v121, "%s", v122, 0xCu);
                            __swift_destroy_boxed_opaque_existential_0(v123);
                            v124 = v123;
                            v38 = v207;
                            MEMORY[0x25F8CEE50](v124, -1, -1);
                            MEMORY[0x25F8CEE50](v122, -1, -1);
                          }

                          v125 = v202;
                          type metadata accessor for SiriTaskEngagementUtils();
                          v126 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                          v127 = v205;
                          MEMORY[0x25F8CDB30](v205, v126, v128);

                          v129 = (*(v6 + 8))(v127, v5);
                          v107 = v208;
LABEL_74:
                          (*(*v209 + 184))(v129);
                          UUID.init(uuidString:)();

                          if (v188(v125, 1, v38) != 1)
                          {
                            v149 = v200;
                            (*(v206 + 32))(v200, v125, v38);
                            v150 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                            v151 = UUID._bridgeToObjectiveC()().super.isa;
                            v152 = [v150 initWithNSUUID_];

                            v148 = v193;
                            [v193 setTaskId_];

                            v147 = v107(v149, v38);
                            a2 = v204;
                            v23 = 0xD000000000000024;
                            v144 = v187;
                            goto LABEL_80;
                          }

                          outlined destroy of UUID?(v125);
                          a2 = v204;
                          if (one-time initialization token for engagement == -1)
                          {
LABEL_76:
                            v134 = type metadata accessor for Logger();
                            __swift_project_value_buffer(v134, static Logger.engagement);
                            v135 = *MEMORY[0x277D615C8];
                            v136 = type metadata accessor for EngagementSignalCollectionError();
                            v137 = v201;
                            (*(*(v136 - 8) + 104))(v201, v135, v136);
                            (*(v6 + 104))(v137, *v32, v5);
                            v138 = Logger.logObject.getter();
                            v139 = static os_log_type_t.debug.getter();
                            if (os_log_type_enabled(v138, v139))
                            {
                              v140 = swift_slowAlloc();
                              v141 = swift_slowAlloc();
                              v212 = *&v141;
                              *v140 = 136315138;
                              *(v140 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000025ED7E700, &v212);
                              _os_log_impl(&dword_25ECEC000, v138, v139, "%s", v140, 0xCu);
                              __swift_destroy_boxed_opaque_existential_0(v141);
                              v142 = v141;
                              v38 = v207;
                              MEMORY[0x25F8CEE50](v142, -1, -1);
                              v143 = v140;
                              v137 = v201;
                              MEMORY[0x25F8CEE50](v143, -1, -1);
                            }

                            v144 = v187;
                            type metadata accessor for SiriTaskEngagementUtils();
                            v145 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                            MEMORY[0x25F8CDB30](v137, v145, v146);

                            v147 = (*(v6 + 8))(v137, v5);
                            v148 = v193;
                            v23 = 0xD000000000000024;
LABEL_80:
                            v153 = v144(v147);
                            v154 = (*(*v153 + 104))(v153);

                            v155 = v194;
                            v156 = [v148 setSiriEngagementTaskSuccess_];
                            [v148 setTriggerOrigin_];
                            [v36 setEventMetadata_];
                            v40 = v197;
                            [v36 setAlarmSignalGenerated_];
                            if (one-time initialization token for engagement == -1)
                            {
LABEL_81:
                              v157 = type metadata accessor for Logger();
                              __swift_project_value_buffer(v157, static Logger.engagement);
                              v158 = *MEMORY[0x277D61618];
                              v159 = type metadata accessor for SELFPSELogged();
                              (*(*(v159 - 8) + 104))(a2, v158, v159);
                              (*(v6 + 104))(a2, *MEMORY[0x277D61658], v5);
                              v160 = Logger.logObject.getter();
                              v161 = static os_log_type_t.debug.getter();
                              if (os_log_type_enabled(v160, v161))
                              {
                                v162 = swift_slowAlloc();
                                v163 = swift_slowAlloc();
                                v212 = *&v163;
                                *v162 = 136315138;
                                *(v162 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)((v23 + 17), 0x800000025ED815C0, &v212);
                                _os_log_impl(&dword_25ECEC000, v160, v161, "%s", v162, 0xCu);
                                __swift_destroy_boxed_opaque_existential_0(v163);
                                v164 = v163;
                                v38 = v207;
                                MEMORY[0x25F8CEE50](v164, -1, -1);
                                v165 = v162;
                                v40 = v197;
                                MEMORY[0x25F8CEE50](v165, -1, -1);
                              }

                              type metadata accessor for SiriTaskEngagementUtils();
                              v166 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
                              MEMORY[0x25F8CDB30](a2, v166, v167);

                              (*(v6 + 8))(a2, v5);
                              v168 = [objc_opt_self() sharedAnalytics];
                              v169 = [v168 defaultMessageStream];

                              v170 = v198;
                              UUID.init()();
                              v171 = UUID._bridgeToObjectiveC()().super.isa;
                              (v208)(v170, v38);
                              [v169 emitMessage:v36 isolatedStreamUUID:v171];

                              return;
                            }

LABEL_106:
                            swift_once();
                            goto LABEL_81;
                          }

LABEL_109:
                          swift_once();
                          goto LABEL_76;
                        }
                      }
                    }

                    else
                    {
                    }
                  }
                }

                [v72 setHasUserInitiatedFollowup_];
                goto LABEL_61;
              }
            }

            else if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_8;
            }

            v36 = v196;
          }

          else
          {
            v40 = v36;
            v36 = v38;
            v38 = v196;
          }

          v54 = v38;

          v38 = v197;
        }

        else
        {
          v54 = v197;
        }

        v36 = v38;
        v38 = v54;
      }

      v36 = v38;
    }
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v176 = type metadata accessor for Logger();
  __swift_project_value_buffer(v176, static Logger.engagement);
  v177 = *MEMORY[0x277D615B0];
  v178 = type metadata accessor for EngagementSignalCollectionError();
  (*(*(v178 - 8) + 104))(v10, v177, v178);
  (*(v6 + 104))(v10, *MEMORY[0x277D616A8], v5);
  v179 = Logger.logObject.getter();
  v180 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v179, v180))
  {
    v181 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v212 = *&v182;
    *v181 = 136315138;
    *(v181 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x800000025ED81590, &v212);
    _os_log_impl(&dword_25ECEC000, v179, v180, "%s", v181, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v182);
    MEMORY[0x25F8CEE50](v182, -1, -1);
    MEMORY[0x25F8CEE50](v181, -1, -1);
  }

  type metadata accessor for SiriTaskEngagementUtils();
  v183 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
  MEMORY[0x25F8CDB30](v10, v183, v184);

  (*(v6 + 8))(v10, v5);
}

uint64_t PSEAlarmSELFEmitter.getPSEAlarmFollowupAction(siriAlarm:userAlarm:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 168);
  v38 = v4();
  v39 = v5;
  v40 = 0x657461647055;
  v41 = 0xE600000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.contains<A>(_:)();

  if (v6)
  {
    v8 = (*(*a2 + 216))(v7);
    if (!*(v8 + 16))
    {
      goto LABEL_33;
    }

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL);
    if ((v10 & 1) == 0)
    {
      goto LABEL_33;
    }

    outlined init with copy of Any(*(v8 + 56) + 32 * v9, &v38);

    v11 = swift_dynamicCast();
    if ((v11 & 1) == 0)
    {
      return 2;
    }

    v14 = v40;
    v13 = v41;
    v15 = (*(*a1 + 216))(v11, v12);
    if (*(v15 + 16))
    {
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL);
      if (v17)
      {
        outlined init with copy of Any(*(v15 + 56) + 32 * v16, &v38);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_33;
        }

        v18 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v18 = v40 & 0xFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          v19 = HIBYTE(v13) & 0xF;
          if ((v13 & 0x2000000000000000) == 0)
          {
            v19 = v14 & 0xFFFFFFFFFFFFLL;
          }

          if (v19)
          {
            if (v40 == v14 && v41 == v13)
            {

              return 1;
            }

            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v36)
            {
              return 1;
            }

            return 2;
          }
        }
      }
    }

LABEL_33:

    return 2;
  }

  v38 = (v4)(v7);
  v39 = v21;
  v40 = 0x6574656C6544;
  v41 = 0xE600000000000000;
  v22 = StringProtocol.contains<A>(_:)();

  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v24 = (*(*a2 + 216))(v23);
  if (!*(v24 + 16))
  {
    goto LABEL_36;
  }

  v25 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL);
  if ((v26 & 1) == 0)
  {
    goto LABEL_36;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v25, &v38);

  v27 = swift_dynamicCast();
  if ((v27 & 1) == 0)
  {
    return 4;
  }

  v30 = v40;
  v29 = v41;
  v31 = (*(*a1 + 216))(v27, v28);
  if (!*(v31 + 16))
  {
    goto LABEL_39;
  }

  v32 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL);
  if ((v33 & 1) == 0)
  {
    goto LABEL_39;
  }

  outlined init with copy of Any(*(v31 + 56) + 32 * v32, &v38);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v34 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v34 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
    goto LABEL_39;
  }

  v35 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v35 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {
LABEL_39:

LABEL_36:

    return 4;
  }

  if (v40 == v30 && v41 == v29)
  {

    return 3;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v37 & 1) == 0)
  {
    return 4;
  }

  return 3;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v132 = &v115 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v138 = &v115 - v16;
  result = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v19;
  v20 = a3[1];
  v127 = v18;
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((result & 1) == 0)
    {
LABEL_126:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      v22 = result;
    }

    v140 = v22;
    v111 = *(v22 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v22[16 * v111];
        v113 = *&v22[16 * v111 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v22[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        }

        if (v111 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v22[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v22;
        result = specialized Array.remove(at:)(v111 - 1);
        v22 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v116 = a4;
  v21 = 0;
  v135 = (v18 + 8);
  v136 = v18 + 16;
  v134 = (v18 + 32);
  v22 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v22;
    if (v21 + 1 >= v20)
    {
      v34 = v21 + 1;
    }

    else
    {
      v129 = v20;
      v117 = v6;
      v23 = *a3;
      v119 = v21;
      v24 = v127[9];
      v5 = &v23[v24 * (v21 + 1)];
      v25 = v23;
      v133 = v23;
      v26 = v9;
      v27 = v127[2];
      v28 = v137;
      v27(v137, v5, v26);
      v29 = &v25[v24 * v21];
      v30 = v138;
      v125 = v27;
      v27(v138, v29, v26);
      v130 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
      v126 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
      v31 = v127[1];
      v31(v30, v26);
      v124 = v31;
      result = (v31)(v28, v26);
      v32 = v119 + 2;
      v131 = v24;
      v33 = &v133[v24 * (v119 + 2)];
      while (1)
      {
        v34 = v129;
        if (v129 == v32)
        {
          break;
        }

        v35 = v125;
        LODWORD(v133) = v130 < v126;
        v36 = v137;
        v37 = v139;
        (v125)(v137, v33, v139);
        v38 = v138;
        v35(v138, v5, v37);
        v39 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
        v40 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
        v41 = v124;
        (v124)(v38, v37);
        result = v41(v36, v37);
        v22 = v128;
        ++v32;
        v33 += v131;
        v5 += v131;
        if (((v133 ^ (v39 >= v40)) & 1) == 0)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v6 = v117;
      v21 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v34 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v34)
        {
          v42 = v131 * (v34 - 1);
          v5 = v34 * v131;
          v129 = v34;
          v43 = v34;
          v44 = v119;
          v45 = v119 * v131;
          do
          {
            if (v44 != --v43)
            {
              v46 = *a3;
              if (!v46)
              {
                goto LABEL_129;
              }

              v47 = *v134;
              (*v134)(v122, &v46[v45], v9);
              if (v45 < v42 || &v46[v45] >= &v46[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v47)(&v46[v42], v122, v9);
              a3 = v120;
              v22 = v128;
            }

            ++v44;
            v42 -= v131;
            v5 -= v131;
            v45 += v131;
          }

          while (v44 < v43);
          v6 = v117;
          v21 = v119;
          v34 = v129;
        }
      }
    }

    v48 = a3[1];
    if (v34 < v48)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v116)
      {
        if (__OFADD__(v21, v116))
        {
          goto LABEL_124;
        }

        if (v21 + v116 >= v48)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v21 + v116;
        }

        if (v5 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v5)
        {
          break;
        }
      }
    }

    v5 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      v22 = result;
    }

    v50 = *(v22 + 2);
    v49 = *(v22 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v51;
    v52 = &v22[16 * v50];
    *(v52 + 4) = v21;
    *(v52 + 5) = v5;
    v53 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v50)
    {
      while (1)
      {
        v5 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v22 + 4);
          v55 = *(v22 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_52:
          if (v57)
          {
            goto LABEL_110;
          }

          v70 = &v22[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_113;
          }

          v76 = &v22[16 * v5 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_117;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v5 = v51 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v80 = &v22[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_66:
        if (v75)
        {
          goto LABEL_112;
        }

        v83 = &v22[16 * v5];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_115;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_73:
        v91 = v5 - 1;
        if (v5 - 1 >= v51)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v92 = *&v22[16 * v91 + 32];
        v93 = *&v22[16 * v5 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v127[9] * v92, *a3 + v127[9] * *&v22[16 * v5 + 32], *a3 + v127[9] * v93, v53);
        if (v6)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        }

        if (v91 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v94 = &v22[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        v140 = v22;
        result = specialized Array.remove(at:)(v5);
        v22 = v140;
        v51 = *(v140 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v22[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_108;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_109;
      }

      v65 = &v22[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_111;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_114;
      }

      if (v69 >= v61)
      {
        v87 = &v22[16 * v5 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_118;
        }

        if (v56 < v90)
        {
          v5 = v51 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v123;
    if (v123 >= v20)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v95 = *a3;
  v96 = v127[9];
  v133 = v127[2];
  v97 = &v95[v96 * (v34 - 1)];
  v130 = -v96;
  v131 = v95;
  v119 = v21;
  v98 = (v21 - v34);
  v121 = v96;
  v99 = &v95[v34 * v96];
  v123 = v5;
LABEL_85:
  v129 = v34;
  v124 = v99;
  v125 = v98;
  v126 = v97;
  v100 = v97;
  while (1)
  {
    v101 = v137;
    v102 = v133;
    (v133)(v137, v99, v9);
    v103 = v138;
    v102(v138, v100, v139);
    v104 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
    v105 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
    v106 = *v135;
    v107 = v103;
    v9 = v139;
    (*v135)(v107, v139);
    result = v106(v101, v9);
    if (v104 >= v105)
    {
LABEL_84:
      v34 = v129 + 1;
      v97 = v126 + v121;
      v98 = v125 - 1;
      v5 = v123;
      v99 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v21 = v119;
      a3 = v120;
      v22 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v108 = *v134;
    v109 = v132;
    (*v134)(v132, v99, v9);
    swift_arrayInitWithTakeFrontToBack();
    v108(v100, v109, v9);
    v100 += v130;
    v99 += v130;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t specialized static SiriTaskEngagementFeatureDonator.donate(siriTask:previousTask:taskFeatureSets:)(uint64_t a1, uint64_t a2, void *a3)
{
  v107 = a2;
  v108 = a3;
  v4 = type metadata accessor for ReliabilityCategory();
  v114 = *(v4 - 8);
  v5 = *(v114 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v92 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v92 - v12;
  v14 = type metadata accessor for JSONEncodingOptions();
  v106 = *(v14 - 8);
  v15 = *(v106 + 64);
  MEMORY[0x28223BE20](v14);
  v109 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v99 = *(v17 - 8);
  v100 = v17;
  v18 = *(v99 + 64);
  MEMORY[0x28223BE20](v17);
  v98 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ProtoTaskFeatureSet();
  v102 = *(v20 - 8);
  v103 = v20;
  v21 = *(v102 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v97 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v104 = &v92 - v25;
  MEMORY[0x28223BE20](v24);
  v101 = &v92 - v26;
  v27 = type metadata accessor for ProtoSiriTaskEvaluationSummary();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = type metadata accessor for ProtoTaskEngagementType();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for ProtoSiriTaskEngagement();
  v33 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v36 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v94 = v14;
    v96 = v34;
    v105 = v13;
    type metadata accessor for PSEFeatureStoreManager();

    static PSEFeatureStoreManager.shared.getter();
    static PSEFeatureStoreStreamIdConstants.SiriTaskEngagementStreamId.getter();
    v37 = PSEFeatureStoreManager.getStream(streamId:)();

    v110 = v4;
    v95 = v37;
    if (v37)
    {
      v38 = ProtoSiriTaskEngagement.init()();
      v39 = (*a1 + 184);
      v93 = *v39;
      v92 = v39;
      v93(v38);
      ProtoSiriTaskEngagement.taskID.setter();
      type metadata accessor for Utils();
      v40 = (*(*a1 + 280))();
      specialized static Utils.formulateIntentTypeName(intentTypeName:)(v40, v41);

      ProtoSiriTaskEngagement.taskName.setter();
      v42 = ProtoSiriTaskEngagement.taskName.getter();
      static Utils.deriveEngagmentType(from:)(v42, v43, v32);

      ProtoSiriTaskEngagement.engagementType.setter();
      SiriExecutionTask.toProto()();
      ProtoSiriTaskEngagement.evaluationSummary.setter();
      ProtoSiriTaskEngagement.followupTimeWindowInMs.setter();
      if (v107)
      {
        v44 = *(*v107 + 184);

        v44(v45);
        ProtoSiriTaskEngagement.previousTaskID.setter();
      }

      v113 = v108;

      v46 = v112;
      specialized MutableCollection<>.sort(by:)(&v113);
      v47 = v109;
      if (!v46)
      {
        v48 = v113;
        v49 = *(*a1 + 328);

        v51 = v49(v50);
        v52 = (*(*v51 + 184))(v51);

        if (v52 & 1) != 0 || (v54 = v49(v53), v55 = (*(*v54 + 192))(v54), v56 = , (v55) || (v57 = v49(v56), v58 = (*(*v57 + 240))(v57), , (v58) || (v82 = v48[2]) == 0)
        {

LABEL_10:
          ProtoSiriTaskEngagement.followupUserInitatedEngagements.setter();
          JSONEncodingOptions.init()();
          lazy protocol witness table accessor for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement();
          Message.jsonString(options:)();
          v80 = (*(v106 + 8))(v47, v94);
          v93(v80);
          dispatch thunk of PSEFeatureStoreDonator.writeFeature(interactionId:jsonStr:)();
          (*(v96 + 8))(v36, v111);
        }

        v83 = v98;
        v84 = v99;
        v85 = *(v99 + 16);
        v108 = ((*(v84 + 80) + 32) & ~*(v84 + 80));
        v86 = v100;
        v112 = v82;
        v85(v98, v108 + v48, v100);
        ProtoTaskEngagementFeatureSet.featureSet.getter();
        (*(v84 + 8))(v83, v86);
        v87 = v101;
        v88 = v102;
        v89 = v103;
        (*(v102 + 32))(v101, v104, v103);
        (*(v88 + 16))(v97, v87, v89);
        ProtoSiriTaskEngagement.siriTaskFeatureSet.setter();
        v90 = v48[2];

        v91 = v112;
        if (v90 < v112)
        {
          __break(1u);
        }

        else if (v48[2] == v112 - 1)
        {
LABEL_24:
          (*(v102 + 8))(v101, v103);
          goto LABEL_10;
        }

        specialized _copyCollectionToContiguousArray<A>(_:)(v48, v108 + v48, 1, (2 * v91) | 1);

        goto LABEL_24;
      }

      __break(1u);
    }

    else
    {
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      __swift_project_value_buffer(v69, static Logger.engagement);
      v70 = *MEMORY[0x277D61588];
      v71 = type metadata accessor for EngagementFeaturizationError();
      (*(*(v71 - 8) + 104))(v11, v70, v71);
      v72 = v114;
      (*(v114 + 104))(v11, *MEMORY[0x277D616A0], v110);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v113 = v76;
        *v75 = 136315138;
        *(v75 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ELL, 0x800000025ED816B0, &v113);
        _os_log_impl(&dword_25ECEC000, v73, v74, "%s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        v77 = v76;
        v72 = v114;
        MEMORY[0x25F8CEE50](v77, -1, -1);
        MEMORY[0x25F8CEE50](v75, -1, -1);
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v78 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      MEMORY[0x25F8CDB30](v11, v78, v79);

      return (*(v72 + 8))(v11, v110);
    }
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.engagement);
    v60 = *MEMORY[0x277D61590];
    v61 = type metadata accessor for EngagementFeaturizationError();
    (*(*(v61 - 8) + 104))(v8, v60, v61);
    v62 = v114;
    (*(v114 + 104))(v8, *MEMORY[0x277D616A0], v4);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v113 = v66;
      *v65 = 136315138;
      *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000025ED81670, &v113);
      _os_log_impl(&dword_25ECEC000, v63, v64, "%s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x25F8CEE50](v66, -1, -1);
      MEMORY[0x25F8CEE50](v65, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v67 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v8, v67, v68);

    return (*(v62 + 8))(v8, v4);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement()
{
  result = lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement;
  if (!lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement)
  {
    type metadata accessor for ProtoSiriTaskEngagement();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtoSiriTaskEngagement and conformance ProtoSiriTaskEngagement);
  }

  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  MEMORY[0x2821FBE48](a1._countAndFlagsBits, a1._object);
}

{
  MEMORY[0x2821FBE50](a1._countAndFlagsBits, a1._object);
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x2821FBE90]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAD0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}