uint64_t sub_100023D98()
{
  *(v0 + 152) = *(v0 + 344);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100023E24()
{
  v1 = *(v0 + 280);
  v2 = *(**(v0 + 160) + 136);
  swift_errorRetain();
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 280);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to read from temp file: %@", v6, 0xCu);
    sub_100024B10(v7);
  }

  v9 = *(v0 + 280);

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 200);

  v13 = *(v0 + 8);

  return v13(&_swiftEmptyArrayStorage);
}

void sub_100023FA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1001D1810();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001CFDD0();
  v19 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18 - 8, v20);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v87 = *(v12 + 80);
  v85 = *(v87 - 8);
  v24 = *(v85 + 64);
  __chkstk_darwin(v21, v25);
  v86 = &v77 - v26;
  v27 = sub_1001CFD60();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8, v29);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v12 + 136);
  if (a2 < 1 || a1 < 1)
  {
    v40 = sub_1001D0E50();
    v41 = sub_1001D1E00();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v88 = v43;
      *v42 = 136315138;
      if (a4)
      {
        if (a4 == 1)
        {
          v44 = 0x6D726177657270;
        }

        else
        {
          v44 = 0x74736575716572;
        }

        v45 = 0xE700000000000000;
      }

      else
      {
        v44 = 0x6863746566657270;
        v45 = 0xE800000000000000;
      }

      v46 = sub_1000954E0(v44, v45, &v88);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "Skip generating empty node distribution reports for %s", v42, 0xCu);
      sub_100011CF0(v43);
    }

    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0uLL;
LABEL_40:
    *a5 = v73;
    *(a5 + 8) = v76;
    *(a5 + 24) = v74;
    *(a5 + 32) = v75;
  }

  else
  {
    v79 = v31;
    v80 = v23;
    v81 = v17;
    swift_bridgeObjectRetain_n();
    v84 = v32;
    v33 = sub_1001D0E50();
    v34 = sub_1001D1E00();
    v35 = os_log_type_enabled(v33, v34);
    v83 = a4;
    v82 = v12;
    if (v35)
    {
      v78 = a2;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v88 = v37;
      *v36 = 136315650;
      if (a4)
      {
        if (a4 == 1)
        {
          v38 = 0x6D726177657270;
        }

        else
        {
          v38 = 0x74736575716572;
        }

        v39 = 0xE700000000000000;
      }

      else
      {
        v38 = 0x6863746566657270;
        v39 = 0xE800000000000000;
      }

      v47 = sub_1000954E0(v38, v39, &v88);

      *(v36 + 4) = v47;
      *(v36 + 12) = 2048;

      *(v36 + 14) = a1;

      *(v36 + 22) = 2048;

      v48 = v78;
      *(v36 + 24) = v78;

      _os_log_impl(&_mh_execute_header, v33, v34, "Generating node distribution reports for %s with %ld batches and %ld total nodes", v36, 0x20u);
      sub_100011CF0(v37);
      a2 = v48;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v49 = sub_1001D1A10();
    *(v49 + 16) = 10;
    *(v49 + 32) = 0u;
    v50 = v49 + 32;
    *(v49 + 48) = 0u;
    *(v49 + 64) = 0u;
    *(v49 + 80) = 0u;
    *(v49 + 96) = 0u;
    v51 = 1 << *(a3 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(a3 + 64);
    v54 = (v51 + 63) >> 6;

    v55 = 0;
    if (v53)
    {
      while (1)
      {
        v56 = v55;
LABEL_27:
        v57 = *(*(a3 + 56) + ((v56 << 9) | (8 * __clz(__rbit64(v53))))) / a1 / 0.1;
        if (COERCE__INT64(fabs(v57)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v57 <= -9.22337204e18)
        {
          goto LABEL_43;
        }

        if (v57 >= 9.22337204e18)
        {
          goto LABEL_44;
        }

        if (v57 >= 9)
        {
          v58 = 9;
        }

        else
        {
          v58 = v57;
        }

        if (v57 < 0)
        {
          goto LABEL_45;
        }

        if (v58 >= *(v49 + 16))
        {
          goto LABEL_46;
        }

        v59 = *(v50 + 8 * v58);
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_47;
        }

        v53 &= v53 - 1;
        *(v50 + 8 * v58) = v61;
        v55 = v56;
        if (!v53)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      while (1)
      {
        v56 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v56 >= v54)
        {

          v62 = *(v6 + 14);
          v88 = v49;
          sub_100011AC0(&qword_100228320, &qword_1001D4998);
          sub_100024BD8();
          v63 = sub_1001CF800();
          v65 = v64;

          v66 = v79;
          _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
          v67 = *(v6 + 17);
          v84 = *(v6 + 16);
          v68 = v86;
          v69 = v87;
          (*(v85 + 16))(v86, &v6[*(*v6 + 128)], v87);

          v70 = v80;
          sub_1001CFDC0();
          sub_1001D1800();
          v71 = sub_1001D17F0();
          sub_100015D68(v66, v84, v67, v68, v70, v83, a2, v71, &v88, v72, v69, *(v82 + 88));
          v73 = v88;
          v87 = v89;
          v74 = v90;
          v75 = v91;
          sub_100011E48(v63, v65);
          v76 = v87;
          goto LABEL_40;
        }

        v53 = *(a3 + 64 + 8 * v56);
        ++v55;
        if (v53)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }
}

char *sub_1000247D4()
{
  v1 = *v0;
  v2 = *(v0 + 14);

  v3 = *(v0 + 17);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 128)]);
  v4 = *(*v0 + 136);
  v5 = sub_1001D0E60();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[*(*v0 + 144)];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000248CC()
{
  sub_1000247D4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t _s20privatecloudcomputed19NodeReceivingSourceO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021C5D0;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100024948()
{
  result = qword_100228288;
  if (!qword_100228288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228288);
  }

  return result;
}

uint64_t sub_1000249F8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_1001D0E60();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100024B10(uint64_t a1)
{
  v2 = sub_100011AC0(&unk_1002301D0, &qword_1001D4F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100024B78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100024BD8()
{
  result = qword_100228328;
  if (!qword_100228328)
  {
    sub_100011DF4(&qword_100228320, &qword_1001D4998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228328);
  }

  return result;
}

unint64_t sub_100024C54()
{
  result = qword_100228330[0];
  if (!qword_100228330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100228330);
  }

  return result;
}

uint64_t sub_100024CD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100024D14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100024D28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100024D70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100024DC8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100024E0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_1002283B8, &qword_1001D4A50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerQoS(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerQoS(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100025030(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100025050, 0, 0);
}

uint64_t sub_100025050()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_queue);
  v4 = swift_allocObject();
  v0[4] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[5] = v5;
  v5[2] = v3;
  v5[3] = sub_1000268AC;
  v5[4] = v4;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_100013E08;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000024, 0x80000001001E3340, sub_10001582C, v5, &type metadata for () + 8);
}

uint64_t sub_1000251BC()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_queue);

  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = v2;
  v3[3] = sub_100026850;
  v3[4] = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100014658;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000024, 0x80000001001E3340, sub_100015628, v3, &type metadata for Data);
}

uint64_t sub_1000252DC(char *a1)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_1001CFA40();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3, v5);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001CFB10();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7, v9);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1001D1E30();
  v11 = *(v49 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v49, v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001D1EB0();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v18);
  v19 = sub_1001D1410();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8, v21);
  v22 = sub_1001D02F0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 104))(v27, enum case for TC2LogCategory.metricReporter(_:), v22);
  sub_1001D08B0();
  (*(v23 + 8))(v27, v22);
  v48 = OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_queue;
  v47 = sub_100015A10(0, &qword_100227DC0, OS_dispatch_queue_serial_ptr);
  if (qword_100227960 != -1)
  {
    swift_once();
  }

  v28 = blockingIOQueue;
  sub_1001D1400();
  v57[0] = _swiftEmptyArrayStorage;
  sub_100026B54(&qword_100227DC8, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100011AC0(&qword_100227DD0, &unk_1001D3AE0);
  sub_100026B9C();
  sub_1001D1FA0();
  (*(v11 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v49);
  *(v1 + v48) = sub_1001D1EC0();
  v57[0] = 0xD000000000000011;
  v57[1] = 0x80000001001E3510;
  v30 = v50;
  v29 = v51;
  v31 = v52;
  (*(v51 + 104))(v50, enum case for URL.DirectoryHint.inferFromPath(_:), v52);
  sub_100011EAC();
  v32 = v53;
  v33 = v56;
  sub_1001CFB00();
  (*(v29 + 8))(v30, v31);
  v34 = v54;
  v35 = v55;
  (*(v54 + 32))(v1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_storeURL, v32, v55);
  v36 = v1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle;
  *v36 = 0;
  *(v36 + 8) = 0;

  v37 = sub_1001D0E50();
  v38 = sub_1001D1DD0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v57[0] = v40;
    *v39 = 136315138;
    (*(v34 + 16))(v32, v1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_storeURL, v35);
    sub_100026B54(&qword_1002302F0, 255, &type metadata accessor for URL);
    v41 = sub_1001D23A0();
    v43 = v42;
    v44 = *(v34 + 8);
    v44(v32, v35);
    v45 = sub_1000954E0(v41, v43, v57);

    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "initialized nodedistributionanalyzerstore, file=%s", v39, 0xCu);
    sub_100011CF0(v40);

    v44(v56, v35);
  }

  else
  {

    (*(v34 + 8))(v33, v35);
  }

  return v2;
}

uint64_t sub_1000259A4()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle));
  sub_100013944((v1 + 8));
  os_unfair_lock_unlock(v1);
  v2 = OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_storeURL;
  v3 = sub_1001CFB10();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1000159A8(v1 + 8);
  v4 = OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_logger;
  v5 = sub_1001D0E60();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100025AF8()
{
  result = sub_1001CFB10();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1001D0E60();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100025BD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001CFB10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle));
  v13 = *(v12 + 8);
  if (!v13)
  {
    v29 = a2;
    v21 = [objc_opt_self() defaultManager];
    *&v30 = OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_storeURL;
    sub_1001CFAC0(1);
    v22 = v12;
    v23 = sub_1001D17A0();

    [v21 createFileAtPath:v23 contents:0 attributes:0];

    v12 = v22;
    sub_100015A10(0, &qword_100227DA0, NSFileHandle_ptr);
    (*(v7 + 16))(v11, a1 + v30, v6);
    v24 = sub_1000143C0(v11);
    if (v2)
    {
      goto LABEL_10;
    }

    v13 = v24;
    sub_1001D1DA0();
    v3 = 0;

    *(v22 + 8) = v13;
    a2 = v29;
  }

  _s27FileHandle_UTF8OutputStreamCMa();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v31 = v14;
  v15 = *(a2 + 16);
  if (v15)
  {
    v28 = v12;
    v29 = v3;
    v27 = v13;
    v16 = (a2 + 40);
    v30 = xmmword_1001D39F0;
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      sub_100011AC0(&qword_100227DA8, &unk_1001D3AD0);
      v19 = swift_allocObject();
      *(v19 + 16) = v30;
      *(v19 + 56) = &type metadata for String;
      *(v19 + 32) = v17;
      *(v19 + 40) = v18;
      sub_100026B54(&qword_100227DB0, v20, _s27FileHandle_UTF8OutputStreamCMa);

      sub_1001D2560();

      v16 += 2;
      --v15;
    }

    while (v15);

    v12 = v28;
  }

  else
  {
    v25 = v13;
  }

LABEL_10:
  os_unfair_lock_unlock(v12);
}

void sub_100025EF4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC20privatecloudcomputed35NodeDistributionAnalyzerStoreHelper_fileHandle));
  sub_100025F74((v3 + 8), &v4, a2);
  os_unfair_lock_unlock(v3);
}

void sub_100025F74(void **a1@<X0>, uint64_t *a2@<X2>, _OWORD *a3@<X8>)
{
  v41 = a2;
  v4 = v3;
  v47 = a3;
  v6 = sub_1001CFA40();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  __chkstk_darwin(v6, v8);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v40 - v13;
  v44 = sub_1001CFB10();
  v15 = *(v44 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v44, v17);
  v42 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (*a1)
  {
    v48 = 0;
    if ([v19 closeAndReturnError:&v48])
    {
      v20 = v48;
    }

    else
    {
      v21 = v48;
      sub_1001CFA20();

      swift_willThrow();

      v4 = 0;
    }

    *a1 = 0;
  }

  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  sub_1001CFAC0(1);
  v24 = sub_1001D17A0();

  v25 = [v23 fileExistsAtPath:v24];

  if ((v25 & 1) == 0)
  {
    *v47 = xmmword_1001D3A00;
    return;
  }

  v40 = v22;
  sub_1001CFAC0(1);
  v26 = v44;
  (*(v15 + 56))(v14, 1, 1, v44);
  (*(v45 + 104))(v43, enum case for URL.DirectoryHint.inferFromPath(_:), v46);
  v27 = v42;
  sub_1001CFAF0();
  v28 = sub_1001CFB30();
  if (v4)
  {
    (*(v15 + 8))(v27, v26);
  }

  else
  {
    v30 = v26;
    v31 = v28;
    v46 = v29;
    (*(v15 + 8))(v27, v30);
    v32 = [v40 defaultManager];
    sub_1001CFAC0(1);
    v33 = sub_1001D17A0();

    v48 = 0;
    v34 = [v32 removeItemAtPath:v33 error:&v48];

    v35 = v48;
    if (v34)
    {
      v37 = v46;
      v36 = v47;
      *v47 = v31;
      *(v36 + 1) = v37;
      v38 = v35;
      return;
    }

    v39 = v48;
    v4 = sub_1001CFA20();

    swift_willThrow();
    sub_100011E48(v31, v46);
  }

  *v41 = v4;
}

uint64_t sub_1000263C4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000263E4, 0, 0);
}

uint64_t sub_1000263E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1001CFC40();
  *v1 = v3.value;
  v1[1] = v3.is_nil;
  v4 = v0[1];

  return v4();
}

uint64_t sub_100026454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100026478, 0, 0);
}

uint64_t sub_100026478()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *(v0 + 48) = sub_1001CFC40();
  if (v2)
  {
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    swift_getObjectType();
    v5 = sub_1001D1A70();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(sub_100026510, v5, v7);
}

uint64_t sub_100026510()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *v2 = v1;
  v2[1] = HIBYTE(v1) & 1;
  return (*(v0 + 8))();
}

uint64_t sub_10002653C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001CFC50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[1] >> 62 == 2)
  {
    v9 = *(*v1 + 16);
  }

  sub_1001CFC60();
  return (*(v4 + 32))(a1, v8, v3);
}

uint64_t sub_10002663C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000266A0()
{
  v1 = sub_1001D1810();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  sub_1001D1800();
  v8 = sub_1001D17E0();
  v10 = v9;
  result = (*(v2 + 8))(v6, v1);
  if (v10 >> 60 != 15)
  {
    v12 = *(v7 + 16);
    v13[2] = v8;
    v13[3] = v10;
    sub_1000267E8();
    sub_1001D1D90();
    return sub_10002683C(v8, v10);
  }

  return result;
}

unint64_t sub_1000267E8()
{
  result = qword_1002285D0;
  if (!qword_1002285D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002285D0);
  }

  return result;
}

uint64_t sub_10002683C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100011E48(a1, a2);
  }

  return a1;
}

uint64_t sub_10002686C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000268C8(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v2 = sub_1001CFA40();
  v27 = v2;
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001CFB10();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  v11 = __chkstk_darwin(v8, v10);
  v28 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v26 - v14;
  v32 = 0xD000000000000011;
  v33 = 0x80000001001E3510;
  v16 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v17 = v3[13];
  v17(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_100011EAC();
  sub_1001CFB00();
  v18 = v3[1];
  v19 = v27;
  v18(v7, v27);
  v32 = 0xD000000000000011;
  v33 = 0x80000001001E3510;
  v17(v7, v16, v19);
  v20 = v28;
  sub_1001CFB00();
  v18(v7, v19);
  v21 = v20;
  sub_10014D240(v15, v20);
  v22 = *(v29 + 8);
  v23 = v21;
  v24 = v30;
  v22(v23, v30);
  return (v22)(v15, v24);
}

uint64_t sub_100026B54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100026B9C()
{
  result = qword_100227DD8;
  if (!qword_100227DD8)
  {
    sub_100011DF4(&qword_100227DD0, &unk_1001D3AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227DD8);
  }

  return result;
}

uint64_t sub_100026C00(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100026C1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100026C70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100026D38(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CFC50();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100026E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CFC50();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100026E80()
{
  result = sub_1001CFC50();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100026EEC()
{
  v0 = sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100012FF8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_100026FC4()
{
  v1[2] = v0;
  v2 = type metadata accessor for ThimbledEvent();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000270C0, 0, 0);
}

uint64_t sub_1000270C0()
{
  v1 = *(v0 + 16) + qword_100242D60;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running nodeDistributionReport activity", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + qword_100242D70);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_1000271E0;

  return sub_100023090();
}

uint64_t sub_1000271E0(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1000272E0, 0, 0);
}

uint64_t sub_1000272E0()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v20 = v0[2];
    v21 = v0[4];
    v19 = (v0[6] + 8);
    v18 = sub_1000276F8();
    v3 = (v1 + 64);
    do
    {
      v4 = v0[4];
      v22 = v0[7];
      v23 = v0[5];
      v5 = v0[3];
      v6 = *(v3 - 4);
      v7 = *(v3 - 3);
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      v3 += 5;
      *(v21 + 24) = &type metadata for AttestationDistributionMetric;
      *(v21 + 32) = v18;
      v11 = swift_allocObject();
      *v4 = v11;
      v11[2] = v6;
      v11[3] = v7;
      v11[4] = v8;
      v11[5] = v9;
      v11[6] = v10;
      swift_storeEnumTagMultiPayload();

      sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
      sub_1001D1BC0();
      (*v19)(v22, v23);
      --v2;
    }

    while (v2);
    v12 = v0[9];
  }

  v13 = v0[7];
  v14 = v0[4];
  v15 = v0[2];

  sub_100027490();

  v16 = v0[1];

  return v16();
}

void sub_100027490()
{
  oslog = sub_1001D0E50();
  v0 = sub_1001D1E00();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v0, "Finished nodeDistributionReport activity", v1, 2u);
  }
}

uint64_t sub_10002753C()
{
  v1 = qword_100242D60;
  v2 = sub_1001D0E60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_100242D68;
  v4 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_100242D70);

  return v0;
}

uint64_t sub_1000275F8()
{
  sub_10002753C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100027668()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000130E0;

  return sub_100026FC4();
}

unint64_t sub_1000276F8()
{
  result = qword_1002286F0;
  if (!qword_1002286F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002286F0);
  }

  return result;
}

uint64_t sub_10002774C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100027794()
{
  v0 = sub_1001D02F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001D0E60();
  sub_10003B610(v6, qword_1002286F8);
  sub_10003A37C(v6, qword_1002286F8);
  (*(v1 + 104))(v5, enum case for TC2LogCategory.attestationStore(_:), v0);
  sub_1001D08B0();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1000278B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char *a5)
{
  v144 = a4;
  LODWORD(v142) = a3;
  v136 = a2;
  v140 = *v5;
  v8 = sub_1001CFD60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v134 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12, v14);
  v143 = &v114 - v16;
  __chkstk_darwin(v15, v17);
  v19 = &v114 - v18;
  v20 = type metadata accessor for ValidatedAttestation();
  v21 = *(*(v20 - 1) + 64);
  v23 = __chkstk_darwin(v20, v22);
  v25 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v28 = (&v114 - v27);
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v29 = sub_1001D0E60();
  v30 = sub_10003A37C(v29, qword_1002286F8);
  sub_10003C450(a1, v28);
  v137 = *(v9 + 16);
  v138 = v9 + 16;
  v137(v19, a5, v8);
  sub_10003C450(a1, v25);
  v31 = sub_1001D0E50();
  LODWORD(v141) = sub_1001D1E00();
  v32 = os_log_type_enabled(v31, v141);
  v133 = a5;
  v135 = v9;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v139 = v30;
    v131 = v34;
    v145 = v34;
    *v33 = 136316162;
    v132 = v20;
    v35 = *v28;
    v36 = v28[1];

    sub_10003C4B4(v28);
    v37 = sub_1000954E0(v35, v36, &v145);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2048;
    *(v33 + 14) = v144;
    *(v33 + 22) = 1024;
    *(v33 + 24) = v142 & 1;
    *(v33 + 28) = 2080;
    sub_10003E3A8(&qword_100227A40, 255, &type metadata accessor for Date);
    v38 = sub_1001D23A0();
    v40 = v39;
    v41 = v19;
    v42 = v8;
    (*(v9 + 8))(v41, v8);
    v43 = sub_1000954E0(v38, v40, &v145);

    *(v33 + 30) = v43;
    *(v33 + 38) = 2080;
    v20 = v132;
    v44 = *(v25 + 4);
    v45 = *(v25 + 5);

    sub_10003C4B4(v25);
    v46 = sub_1000954E0(v44, v45, &v145);

    *(v33 + 40) = v46;
    _os_log_impl(&_mh_execute_header, v31, v141, "saveValidatedAttestation: %s batch: %lu prefetched: %{BOOL}d fetchTime: %s cloudOSVersion: %s", v33, 0x30u);
    swift_arrayDestroy();
    v30 = v139;
  }

  else
  {

    sub_10003C4B4(v25);
    v47 = v19;
    v42 = v8;
    (*(v9 + 8))(v47, v8);
    sub_10003C4B4(v28);
  }

  v48 = (a1 + v20[8]);
  v49 = v48[1];
  if (!v49)
  {
    v53 = sub_1001D0E50();
    v54 = sub_1001D1DE0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "missing validatedAttestation.udid";
      goto LABEL_15;
    }

LABEL_16:

    return 0;
  }

  v50 = (a1 + v20[9]);
  v51 = v50[1];
  if (!v51)
  {
    v53 = sub_1001D0E50();
    v54 = sub_1001D1DE0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "missing validatedAttestation.validatedCellID";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v52 = *(a1 + 24);
  if (v52 >> 60 == 15)
  {
    v53 = sub_1001D0E50();
    v54 = sub_1001D1DE0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "missing validatedAttestation.attestation.attestationBundle";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v53, v54, v56, v55, 2u);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v139 = v30;
  v58 = *v48;
  v125 = *v50;
  v114 = *(a1 + 96);
  v59 = *a1;
  v60 = *(a1 + 16);
  v115 = *(a1 + 8);
  v61 = a1 + v20[7];
  v130 = v42;
  v116 = v51;
  v137(v143, v61, v42);
  v62 = *(a1 + 112);
  v118 = *(a1 + 104);
  v117 = v62;
  v63 = *(a1 + 40);
  v120 = *(a1 + 32);
  v119 = v63;
  v64 = *(a1 + 56);
  v123 = *(a1 + 48);
  v122 = v64;
  v65 = *(a1 + 88);
  v128 = *(a1 + 80);
  v127 = v65;
  v66 = _s8SchemaV2O4NodeCMa(0);
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  v69 = swift_allocObject();
  *(v69 + 48) = sub_100011AC0(&qword_100228A80, &qword_1001D5208);
  v124 = _s8SchemaV2O4NodeCMa;
  v70 = sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  v145 = v66;
  v146 = v66;
  v147 = v70;
  v148 = v70;
  *(v69 + 56) = swift_getOpaqueTypeConformance2();
  sub_10003B47C((v69 + 24));
  v132 = v60;
  sub_100012038(v60, v52);
  sub_100012038(v60, v52);
  v126 = v70;
  sub_1001D1570();
  *(v69 + 16) = 257;
  v121 = OBJC_IVAR____TtCOC20privatecloudcomputed16AttestationStore8SchemaV24Node___observationRegistrar;
  sub_1001CFEA0();
  v141 = v52;
  v71 = *(v69 + 56);
  sub_100024DC8((v69 + 24), *(v69 + 48));
  swift_getKeyPath();
  v129 = v58;
  v145 = v58;
  v146 = v49;
  v131 = v49;
  sub_1001D1480();

  v72 = *(v69 + 56);
  sub_100024DC8((v69 + 24), *(v69 + 48));
  swift_getKeyPath();
  v145 = v114;
  LOBYTE(v146) = 0;
  sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
  sub_10003C518();
  sub_1001D1480();

  *(v69 + 16) = 0;
  v73 = *(v69 + 56);
  sub_100024DC8((v69 + 24), *(v69 + 48));
  swift_getKeyPath();
  v145 = v59;
  v146 = v115;
  sub_1001D1480();

  v74 = *(v69 + 56);
  sub_100024DC8((v69 + 24), *(v69 + 48));
  swift_getKeyPath();
  v75 = v132;
  v76 = v141;
  v145 = v132;
  v146 = v141;
  sub_100012038(v132, v141);
  sub_10003C5C0();
  sub_1001D1480();

  sub_10002683C(v75, v76);
  v77 = v134;
  v78 = v130;
  v137(v134, v143, v130);
  v79 = *(v69 + 56);
  sub_100024DC8((v69 + 24), *(v69 + 48));
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228918, 255, &type metadata accessor for Date);
  sub_1001D1480();

  v80 = *(v135 + 8);
  v80(v77, v78);
  v81 = *(v69 + 56);
  sub_100024DC8((v69 + 24), *(v69 + 48));
  swift_getKeyPath();
  v145 = v118;
  v146 = v117;
  sub_1001D1480();

  v82 = *(v69 + 56);
  sub_100024DC8((v69 + 24), *(v69 + 48));
  swift_getKeyPath();
  v145 = v120;
  v146 = v119;
  sub_1001D1480();

  v83 = *(v69 + 56);
  sub_100024DC8((v69 + 24), *(v69 + 48));
  swift_getKeyPath();
  v145 = v123;
  v146 = v122;
  sub_1001D1480();

  v84 = *(v69 + 56);
  sub_100024DC8((v69 + 24), *(v69 + 48));
  swift_getKeyPath();
  v145 = v125;
  v146 = v116;
  sub_1001D1480();

  v145 = v69;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath, v86);
  v87 = v128;
  *(&v114 - 4) = v69;
  *(&v114 - 3) = v87;
  *(&v114 - 2) = v127;
  sub_10003E3A8(&qword_100228A68, 255, v124);
  sub_1001CFE80();

  sub_10002683C(v132, v141);
  v80(v143, v130);
  v89 = sub_10003E3A8(&qword_1002287C0, v88, type metadata accessor for AttestationStore);
  sub_1001D1490();
  sub_1001D1500();

  v90 = v136;
  v91 = v144;
  v92 = sub_100028A90(v136, v144);
  if (v92)
  {
    v93 = v92;
    v143 = v89;
    v94 = OBJC_IVAR____TtCOC20privatecloudcomputed16AttestationStore8SchemaV28Workload___observationRegistrar;
    v145 = v92;
    swift_getKeyPath();
    v95 = sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
    v144 = v94;
    v142 = v95;
    sub_1001CFE90();

    swift_getKeyPath();
    sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
    sub_10003AC1C();
    sub_1001D15B0();

    v97 = v145;
    v98 = v131;
    v145 = v129;
    v146 = v131;
    __chkstk_darwin(v96, v99);
    *(&v114 - 2) = &v145;
    v100 = sub_10003AAB4(sub_10003E440, (&v114 - 4), v97);

    if (v100)
    {
    }

    else
    {
      v145 = v93;
      swift_getKeyPath();

      sub_1001CFE90();

      swift_getKeyPath();
      sub_1001D15B0();

      v108 = v145;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_100008F3C(0, *(v108 + 2) + 1, 1, v108);
      }

      v110 = *(v108 + 2);
      v109 = *(v108 + 3);
      if (v110 >= v109 >> 1)
      {
        v108 = sub_100008F3C((v109 > 1), v110 + 1, 1, v108);
      }

      *(v108 + 2) = v110 + 1;
      v111 = &v108[16 * v110];
      *(v111 + 4) = v129;
      *(v111 + 5) = v98;
      v145 = v93;
      v112 = swift_getKeyPath();
      __chkstk_darwin(v112, v113);
      *(&v114 - 2) = v93;
      *(&v114 - 1) = v108;
      sub_1001CFE80();
    }
  }

  else
  {
    v101 = v129;
    v102 = v131;

    v103 = sub_1001D0E50();
    v104 = sub_1001D1E00();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v143 = v89;
      v107 = v106;
      v145 = v106;
      *v105 = 136315138;
      *(v105 + 4) = sub_1000954E0(v101, v131, &v145);
      _os_log_impl(&_mh_execute_header, v103, v104, "Linking %s to ...", v105, 0xCu);
      sub_100011CF0(v107);

      v102 = v131;
    }

    sub_100029120(v90, v101, v102, v142 & 1, v91, v133);
  }

  sub_1001D1490();
  sub_1001D14D0();
  sub_10002683C(v132, v141);

  return 1;
}

uint64_t sub_100028A90(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v44 = v2;
  v42 = a2;
  v43 = v3;
  v4 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v39 - v7;
  v9 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v39 - v12;
  v14 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  __chkstk_darwin(v14, v16);
  v47 = &v39 - v17;
  v18 = sub_1000969BC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v25 = sub_1001D0E60();
  v26 = sub_10003A37C(v25, qword_1002286F8);

  v41 = v26;
  v27 = sub_1001D0E50();
  v28 = sub_1001D1E00();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v40 = v14;
    v30 = v29;
    v49 = swift_slowAlloc();
    *v30 = 136315394;
    *(v30 + 4) = sub_1000954E0(v18, v20, &v49);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_1000954E0(v22, v24, &v49);
    _os_log_impl(&_mh_execute_header, v27, v28, "fetchParamsEntry workloadType=%s inferenceId=%s", v30, 0x16u);
    swift_arrayDestroy();

    v14 = v40;
  }

  __chkstk_darwin(v31, v32);
  *(&v39 - 6) = v18;
  *(&v39 - 5) = v20;
  *(&v39 - 4) = v22;
  *(&v39 - 3) = v24;
  *(&v39 - 2) = v42;
  v49 = _s8SchemaV2O8WorkloadCMa(0);
  v33 = v47;
  sub_1001CFE70();

  sub_10003E3A8(&qword_1002287C0, v34, type metadata accessor for AttestationStore);
  sub_1001D1490();
  v35 = v48;
  (*(v48 + 16))(v8, v33, v14);
  (*(v35 + 56))(v8, 0, 1, v14);
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001D1560();
  v36 = sub_1001D14E0();
  (*(v45 + 8))(v13, v46);

  if (v36 >> 62)
  {
    result = sub_1001D2190();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    (*(v35 + 8))(v33, v14);

    return 0;
  }

  result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v36 & 0xC000000000000001) != 0)
  {
    v38 = sub_1001D2040();
    goto LABEL_10;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(v36 + 32);

LABEL_10:

    (*(v35 + 8))(v33, v14);
    return v38;
  }

  __break(1u);
  return result;
}

uint64_t sub_100029120(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, char *a6)
{
  v61 = a3;
  v62 = a5;
  v58 = a4;
  v60 = a2;
  v64 = v6;
  v63 = *v6;
  v8 = sub_1001CFD60();
  v66 = *(v8 - 8);
  v9 = v66[8];
  v11 = __chkstk_darwin(v8, v10);
  v59 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v51 - v14;
  v17 = sub_1000969BC();
  v19 = v18;
  v21 = v20;
  if (qword_1002276A0 != -1)
  {
    v50 = v16;
    swift_once();
    v16 = v50;
  }

  v22 = v16;
  v23 = sub_1001D0E60();
  sub_10003A37C(v23, qword_1002286F8);

  v24 = sub_1001D0E50();
  v25 = sub_1001D1E00();

  v26 = os_log_type_enabled(v24, v25);
  v52 = v17;
  v53 = v22;
  v51 = v21;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v67 = a6;
    v28 = v27;
    v68 = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_1000954E0(v17, v19, &v68);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_1000954E0(v22, v21, &v68);
    _os_log_impl(&_mh_execute_header, v24, v25, "createNewParamsEntry workloadType=%s inferenceId=%s", v28, 0x16u);
    swift_arrayDestroy();

    a6 = v67;
  }

  v56 = v66[2];
  v56(v15, a6, v8);
  v29 = _s8SchemaV2O8WorkloadCMa(0);
  v30 = v29[12];
  v31 = *(v29 + 26);
  v32 = swift_allocObject();
  *(v32 + 48) = sub_100011AC0(&qword_100228958, &qword_1001D5098);
  v33 = sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  v68 = v29;
  v69 = v29;
  v70 = v33;
  v71 = v33;
  v65 = v8;
  *(v32 + 56) = swift_getOpaqueTypeConformance2();
  sub_10003B47C((v32 + 24));
  v57 = v33;
  sub_1001D1570();
  v67 = v15;
  v34 = *(v32 + 56);
  sub_100024DC8((v32 + 24), *(v32 + 48));
  swift_getKeyPath();
  v68 = &_swiftEmptyArrayStorage;
  v55 = sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  v54 = sub_10003B674();
  sub_1001D1480();

  *(v32 + 16) = 1;
  sub_1001CFEA0();
  v35 = *(v32 + 56);
  sub_100024DC8((v32 + 24), *(v32 + 48));
  swift_getKeyPath();
  v68 = v52;
  v69 = v19;
  sub_1001D1480();

  v36 = *(v32 + 56);
  sub_100024DC8((v32 + 24), *(v32 + 48));
  swift_getKeyPath();
  v68 = v53;
  v69 = v51;
  sub_1001D1480();

  v37 = *(v32 + 56);
  sub_100024DC8((v32 + 24), *(v32 + 48));
  swift_getKeyPath();
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_1001D1480();

  v38 = *(v32 + 56);
  sub_100024DC8((v32 + 24), *(v32 + 48));
  swift_getKeyPath();
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_1001D1480();

  v39 = *(v32 + 56);
  sub_100024DC8((v32 + 24), *(v32 + 48));
  swift_getKeyPath();
  LOBYTE(v68) = v58 & 1;
  sub_1001D1480();

  v40 = v59;
  v41 = v65;
  v56(v59, v67, v65);
  v42 = *(v32 + 56);
  sub_100024DC8((v32 + 24), *(v32 + 48));
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228918, 255, &type metadata accessor for Date);
  sub_1001D1480();

  v43 = v66[1];
  v43(v40, v41);
  sub_100011AC0(&unk_100230270, &unk_1001D3610);
  v44 = swift_allocObject();
  v44[1] = xmmword_1001D39F0;
  v45 = v61;
  *(v44 + 4) = v60;
  *(v44 + 5) = v45;
  v46 = *(v32 + 56);
  sub_100024DC8((v32 + 24), *(v32 + 48));
  swift_getKeyPath();
  v68 = v44;

  sub_1001D1480();

  v47 = *(v32 + 56);
  sub_100024DC8((v32 + 24), *(v32 + 48));
  swift_getKeyPath();
  v68 = v62;
  sub_1001D1480();

  v43(v67, v65);
  sub_10003E3A8(&qword_1002287C0, v48, type metadata accessor for AttestationStore);
  sub_1001D1490();
  sub_1001D1500();
}

unint64_t sub_1000298F8()
{
  v1 = *v0;
  v118 = type metadata accessor for ValidatedAttestation();
  v116 = *(v118 - 8);
  v2 = *(v116 + 64);
  __chkstk_darwin(v118, v3);
  v114 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100011AC0(&qword_100227E00, &unk_1001D3B20);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v113 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v117 = &v90 - v11;
  v12 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v93 = &v90 - v15;
  v106 = sub_100011AC0(&qword_1002289C8, &qword_1001D5170);
  v115 = *(v106 - 8);
  v16 = *(v115 + 64);
  __chkstk_darwin(v106, v17);
  v96 = &v90 - v18;
  v108 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  v112 = *(v108 - 8);
  v19 = *(v112 + 64);
  __chkstk_darwin(v108, v20);
  v107 = &v90 - v21;
  v22 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8, v24);
  v26 = &v90 - v25;
  v27 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  v32 = &v90 - v31;
  v122 = sub_1000D62D4(&_swiftEmptyArrayStorage);
  v34 = sub_10003E3A8(&qword_1002287C0, v33, type metadata accessor for AttestationStore);
  v94 = v1;
  v95 = v0;
  sub_1001D1490();
  v35 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  (*(*(v35 - 8) + 56))(v26, 1, 1, v35);
  _s8SchemaV2O8WorkloadCMa(0);
  v36 = sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001D1560();
  v37 = sub_1001D14E0();
  v45 = v116;
  v104 = v36;
  v105 = v34;
  v111 = 0;
  v46 = v37;
  (*(v28 + 8))(v32, v27);

  v97 = v46;
  if (v46 >> 62)
  {
    v48 = sub_1001D2190();
  }

  else
  {
    v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v93;
  v50 = v96;
  v51 = v107;
  v52 = v108;
  if (v48)
  {
    v53 = 0;
    v103 = v97 & 0xC000000000000001;
    v92 = v97 & 0xFFFFFFFFFFFFFF8;
    v91 = v97 + 32;
    v102 = (v112 + 16);
    v101 = (v112 + 56);
    v100 = (v115 + 8);
    v116 = v45 + 48;
    v98 = (v112 + 8);
    *&v47 = 138412290;
    v90 = v47;
    v99 = v48;
    if ((v97 & 0xC000000000000001) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    v54 = v53;
    v112 = sub_1001D2040();
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (!v55)
    {
      while (1)
      {
        v110 = v56;
        v119 = v112;
        swift_getKeyPath();
        v58 = v51;
        sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
        sub_1001CFE90();

        swift_getKeyPath();
        sub_10003AC1C();
        sub_1001D15B0();

        v109 = &v90;
        v60 = v119;
        __chkstk_darwin(v59, v61);
        *(&v90 - 2) = v60;
        v121 = _s8SchemaV2O4NodeCMa(0);
        sub_1001CFE70();

        sub_1001D1490();
        (*v102)(v49, v58, v52);
        (*v101)(v49, 0, 1, v52);
        v62 = sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
        sub_1001D1560();
        v63 = v111;
        v64 = sub_1001D14E0();
        v65 = v50;
        if (!v63)
        {
          break;
        }

        (*v100)(v50, v106);

        if (qword_1002276A0 != -1)
        {
          swift_once();
        }

        v66 = sub_1001D0E60();
        sub_10003A37C(v66, qword_1002286F8);
        swift_errorRetain();
        v67 = sub_1001D0E50();
        v68 = sub_1001D1DE0();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v69 = v90;
          swift_errorRetain();
          v71 = _swift_stdlib_bridgeErrorToNSError();
          *(v69 + 4) = v71;
          *v70 = v71;
          _os_log_impl(&_mh_execute_header, v67, v68, "failed to query attestations error: %@", v69, 0xCu);
          sub_100011F00(v70, &unk_1002301D0, &qword_1001D4F50);
        }

        else
        {
        }

        v111 = 0;
LABEL_36:
        v51 = v107;
        v52 = v108;
        (*v98)(v107, v108);
        v53 = v110;
        if (v110 == v99)
        {
          goto LABEL_39;
        }

        if (v103)
        {
          goto LABEL_9;
        }

LABEL_12:
        if (v53 >= *(v92 + 16))
        {
          goto LABEL_42;
        }

        v112 = *(v91 + 8 * v53);
        v57 = v53;

        v55 = __OFADD__(v57, 1);
        v56 = v57 + 1;
        if (v55)
        {
          goto LABEL_41;
        }
      }

      v72 = v64;
      v111 = 0;
      (*v100)(v65, v106);

      if (v72 >> 62)
      {
        v73 = sub_1001D2190();
        if (v73)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v73)
        {
LABEL_22:
          if (v73 < 1)
          {
            goto LABEL_43;
          }

          v74 = 0;
          v75 = v72 & 0xC000000000000001;
          v115 = v72 & 0xC000000000000001;
          do
          {
            if (v75)
            {
              v81 = sub_1001D2040();
            }

            else
            {
              v81 = *(v72 + 8 * v74 + 32);
            }

            v119 = v81;
            swift_getKeyPath();
            sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
            sub_1001CFE90();

            swift_getKeyPath();
            sub_1001D15B0();

            v82 = v119;
            v83 = v120;

            v85 = v117;
            sub_100090D98(v84, v117);
            if ((*v116)(v85, 1, v118) == 1)
            {
              sub_100011F00(v85, &qword_100227E00, &unk_1001D3B20);
              v76 = v62;
              v77 = v73;
              v78 = v72;
              v79 = v113;
              sub_1000E48C4(v82, v83, v113);

              v80 = v79;
              v72 = v78;
              v73 = v77;
              v62 = v76;
              v75 = v115;
              sub_100011F00(v80, &qword_100227E00, &unk_1001D3B20);
            }

            else
            {
              v86 = v114;
              sub_10003C904(v85, v114);
              v87 = v122;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v119 = v87;
              sub_10001A8DC(v86, v82, v83, isUniquelyReferenced_nonNull_native);

              v122 = v119;
            }

            ++v74;
          }

          while (v73 != v74);

          v49 = v93;
          goto LABEL_35;
        }
      }

LABEL_35:
      v50 = v96;
      goto LABEL_36;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    swift_once();
    v38 = sub_1001D0E60();
    sub_10003A37C(v38, qword_1002286F8);
    swift_errorRetain();
    v39 = sub_1001D0E50();
    v40 = sub_1001D1DE0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "failed to query attestations error: %@", v41, 0xCu);
      sub_100011F00(v42, &unk_1002301D0, &qword_1001D4F50);
    }

    v44 = sub_1000D62D4(&_swiftEmptyArrayStorage);
  }

  else
  {
LABEL_39:

    return v122;
  }

  return v44;
}

uint64_t sub_10002A71C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v27 - v10;
  v12 = sub_100011AC0(&qword_1002289F8, &qword_1001D5198);
  v13 = *(v12 - 8);
  v28 = v12;
  v29 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v27 - v16;
  v18 = sub_100011AC0(&qword_100228AC0, &qword_1001D5358);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &v27 - v22;
  v24 = *a1;
  v30 = a2;
  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  sub_1001CF9F0();
  sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  (*(v7 + 8))(v11, v6);
  a3[3] = sub_100011AC0(&qword_100228AC8, &unk_1001D5360);
  a3[4] = sub_10003C968();
  sub_10003B47C(a3);
  sub_100024B78(&qword_100228AE0, &qword_100228AC0, &qword_1001D5358);
  sub_100024B78(&qword_100228A10, &qword_1002289F8, &qword_1001D5198);
  sub_100024B78(&qword_100228AE8, &unk_100230200, &qword_1001D4F80);
  v25 = v28;
  sub_1001CF990();
  (*(v29 + 8))(v17, v25);
  return (*(v19 + 8))(v23, v18);
}

uint64_t sub_10002AACC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10002ABE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE80();
}

unint64_t sub_10002ACBC(uint64_t a1, NSObject *a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v173 = a4;
  v177 = a2;
  v175 = a1;
  v153 = *v4;
  v7 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v141 = &v126 - v10;
  v11 = sub_100011AC0(&qword_100227E00, &unk_1001D3B20);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v176 = &v126 - v14;
  v15 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v166 = &v126 - v18;
  v167 = sub_100011AC0(&qword_1002289C8, &qword_1001D5170);
  v171 = *(v167 - 8);
  v19 = *(v171 + 64);
  __chkstk_darwin(v167, v20);
  v165 = &v126 - v21;
  v172 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  v169 = *(v172 - 8);
  v22 = *(v169 + 64);
  __chkstk_darwin(v172, v23);
  v168 = &v126 - v24;
  v25 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8, v27);
  v29 = &v126 - v28;
  v131 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v130 = *(v131 - 8);
  v30 = *(v130 + 64);
  __chkstk_darwin(v131, v31);
  v33 = &v126 - v32;
  v34 = sub_100011AC0(&qword_100228B50, &qword_1001D5388);
  isa = v34[-1].isa;
  v36 = *(isa + 8);
  __chkstk_darwin(v34, v37);
  v39 = &v126 - v38;
  v150 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v149 = *(v150 - 8);
  v40 = *(v149 + 64);
  __chkstk_darwin(v150, v41);
  v148 = &v126 - v42;
  v133 = sub_1001CFD60();
  v132 = *(v133 - 8);
  v43 = *(v132 + 64);
  __chkstk_darwin(v133, v44);
  v155 = &v126 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1001CFDA0();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v50 = __chkstk_darwin(v46, v49);
  v139 = &v126 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50, v52);
  v54 = &v126 - v53;
  if (qword_1002276A0 != -1)
  {
LABEL_59:
    swift_once();
  }

  v144 = v39;
  v145 = v33;
  v146 = isa;
  v147 = v34;
  v55 = sub_1001D0E60();
  v56 = sub_10003A37C(v55, qword_1002286F8);
  v57 = *(v47 + 16);
  v138 = v47 + 16;
  v137 = v57;
  v57(v54, a3, v46);
  v170 = v56;
  v58 = v47;
  v59 = sub_1001D0E50();
  v60 = sub_1001D1E00();
  v61 = os_log_type_enabled(v59, v60);
  v154 = v5;
  v142 = a3;
  v140 = v46;
  v157 = v58;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    *v62 = 136315394;
    sub_10003E3A8(&qword_100228AF8, 255, &type metadata accessor for UUID);
    v63 = sub_1001D23A0();
    v65 = v64;
    v136 = *(v58 + 8);
    v136(v54, v46);
    v66 = sub_1000954E0(v63, v65, &v180);

    *(v62 + 4) = v66;
    *(v62 + 12) = 2080;
    if (v175)
    {
      v67 = 0x79786F7270;
    }

    else
    {
      v67 = 0x746365726964;
    }

    if (v175)
    {
      v68 = 0xE500000000000000;
    }

    else
    {
      v68 = 0xE600000000000000;
    }

    v69 = sub_1000954E0(v67, v68, &v180);

    *(v62 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v59, v60, "getAttestationsForRequest id=%s nodeKind=%s", v62, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v136 = *(v58 + 8);
    v136(v54, v46);
  }

  sub_1001CFD50();
  v70 = sub_1000969BC();
  v129 = &v126;
  *(&v126 - 4) = __chkstk_darwin(v70, v71);
  *(&v126 - 3) = v72;
  *(&v126 - 2) = v73;
  *(&v126 - 1) = v74;
  v182 = _s8SchemaV2O8WorkloadCMa(0);
  v75 = v148;
  sub_1001CFE70();

  v76 = sub_1000D62D4(&_swiftEmptyArrayStorage);
  v181 = v76;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date);
  v77 = v144;
  sub_1001CF8D0();
  v78 = v149;
  v79 = v150;
  (*(v149 + 16))(v29, v75, v150);
  (*(v78 + 56))(v29, 0, 1, v79);
  sub_100011AC0(&qword_100228B58, &qword_1001D5390);
  v33 = v146;
  v80 = *(v146 + 9);
  v81 = (v146[80] + 32) & ~v146[80];
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1001D39F0;
  (*(v33 + 2))(v82 + v81, v77, v147);
  v83 = sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  v54 = v145;
  sub_1001D1560();
  v85 = sub_10003E3A8(&qword_1002287C0, v84, type metadata accessor for AttestationStore);
  v34 = sub_1001D1490();
  v86 = v83;
  v87 = sub_1001D14E0();
  v174 = 0;
  isa = v154;
  v163 = v85;
  v151 = v76;

  if (v87 >> 62)
  {
    v88 = sub_1001D2190();
  }

  else
  {
    v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v168;
  v47 = v163;
  v29 = isa;
  v152 = v87;
  if (v88)
  {
    v156 = v88;
    v164 = v86;
    v160 = v175 & 1;
    v162 = v87 & 0xC000000000000001;
    swift_beginAccess();
    a3 = 0;
    v135 = v87 & 0xFFFFFFFFFFFFFF8;
    v134 = v87 + 32;
    v159 = (v169 + 16);
    v158 = (v169 + 56);
    v161 = (v171 + 8);
    v128 = (v157 + 7);
    v127 = v157 + 1;
    v157 = (v169 + 8);
    v90 = v173;
    if (v173 <= 1)
    {
      v90 = 1;
    }

    v175 = v90;
    *&v89 = 136315650;
    v126 = v89;
    *&v89 = 138412290;
    v143 = v89;
    v39 = v153;
    v46 = v155;
    while (1)
    {
      if (v162)
      {
        isa = sub_1001D2040();
        v91 = __OFADD__(a3++, 1);
        if (v91)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (a3 >= *(v135 + 16))
        {
          goto LABEL_58;
        }

        isa = *(v134 + 8 * a3);

        v91 = __OFADD__(a3++, 1);
        if (v91)
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      v171 = a3;
      v92 = OBJC_IVAR____TtCOC20privatecloudcomputed16AttestationStore8SchemaV28Workload___observationRegistrar;
      v179[0] = isa;
      swift_getKeyPath();
      v93 = sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
      v177 = v92;
      v169 = v93;
      sub_1001CFE90();

      swift_getKeyPath();
      sub_10003AC1C();
      v173 = isa;
      sub_1001D15B0();

      v95 = v179[0];
      __chkstk_darwin(v94, v96);
      *(&v126 - 4) = v160;
      *(&v126 - 3) = v95;
      *(&v126 - 2) = v46;
      v54 = _s8SchemaV2O4NodeCMa(0);
      v179[0] = v54;
      sub_1001CFE70();

      sub_1001D1490();
      a3 = v166;
      v97 = v5;
      v98 = v172;
      (*v159)(v166, v97, v172);
      (*v158)(a3, 0, 1, v98);
      _s8SchemaV2O4NodeCMa(0);
      v47 = sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
      isa = v165;
      sub_1001D1560();
      v99 = v174;
      v100 = sub_1001D14E0();
      if (!v99)
      {
        break;
      }

      (*v161)(isa, v167);
      v54 = v99;
      v174 = 0;
      v5 = v168;
      v47 = v163;
LABEL_47:

      swift_errorRetain();
      v34 = sub_1001D0E50();
      v33 = sub_1001D1DE0();

      if (os_log_type_enabled(v34, v33))
      {
        v122 = swift_slowAlloc();
        isa = swift_slowAlloc();
        *v122 = v143;
        swift_errorRetain();
        v123 = _swift_stdlib_bridgeErrorToNSError();
        *(v122 + 4) = v123;
        *isa = v123;
        _os_log_impl(&_mh_execute_header, v34, v33, "failed to query nodes, error: %@", v122, 0xCu);
        sub_100011F00(isa, &unk_1002301D0, &qword_1001D4F50);
      }

      else
      {
      }

      (*v157)(v5, v172);
LABEL_19:
      a3 = v171;
      if (v171 == v156)
      {
        goto LABEL_51;
      }
    }

    v174 = 0;
    v33 = v100;
    (*v161)(isa, v167);

    v179[0] = sub_10003BD80(v33);
    sub_10003BA2C();
    v29 = v179[0];
    if (v179[0] < 0 || (v179[0] & 0x4000000000000000) != 0)
    {
      v5 = sub_1001D2190();
    }

    else
    {
      v5 = *(v179[0] + 16);
    }

    v34 = v177;
    v46 = 0;
    v39 = (v29 & 0xC000000000000001);
    do
    {
      if (v5 == v46)
      {
        break;
      }

      if (v39)
      {
        v33 = sub_1001D2040();
      }

      else
      {
        if (v46 >= *(v29 + 16))
        {
          __break(1u);
          goto LABEL_57;
        }

        v33 = *(v29 + 8 * v46 + 32);
      }

      ++v46;
      v179[0] = v33;
      swift_getKeyPath();
      sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
      sub_1001CFE90();

      swift_getKeyPath();
      sub_1001D15B0();

      isa = v179[0];
      a3 = v179[1];

      v54 = v176;
      sub_100090D98(v101, v176);
      swift_beginAccess();
      sub_100017584(v54, isa, a3);
      swift_endAccess();

      v34 = v177;
    }

    while (v175 != v46);

    v151 = v181;
    if (!*(v181 + 16))
    {
      v5 = v168;
      (*v157)(v168, v172);

      v29 = v154;
      v39 = v153;
      v46 = v155;
      v47 = v163;
      goto LABEL_19;
    }

    v102 = v141;
    v103 = v142;
    v104 = v140;
    v105 = v137;
    v137(v141, v142, v140);
    (*v128)(v102, 0, 1, v104);
    v106 = v173;
    v179[0] = v173;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v108);
    *(&v126 - 2) = v106;
    *(&v126 - 1) = v102;
    v109 = v174;
    sub_1001CFE80();

    isa = v106;
    sub_100011F00(v102, &qword_1002288B0, &qword_1001D5FC0);
    v110 = v139;
    v105(v139, v103, v104);
    swift_retain_n();
    v111 = sub_1001D0E50();
    v112 = sub_1001D1E00();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v179[0] = v114;
      *v113 = v126;
      sub_10003E3A8(&qword_100228AF8, 255, &type metadata accessor for UUID);
      v115 = sub_1001D23A0();
      v116 = v110;
      v117 = v115;
      v119 = v118;
      v136(v116, v104);
      v120 = sub_1000954E0(v117, v119, v179);

      *(v113 + 4) = v120;
      *(v113 + 12) = 2048;
      v178 = isa;
      isa = &unk_1001D5120;
      swift_getKeyPath();
      sub_1001CFE90();

      swift_getKeyPath();
      sub_1001D15B0();

      *(v113 + 14) = v178;

      *(v113 + 22) = 2048;
      *(v113 + 24) = *(v151 + 16);
      _os_log_impl(&_mh_execute_header, v111, v112, "getAttestationsForRequest %s returned batch: %lu nodes count: %ld", v113, 0x20u);
      sub_100011CF0(v114);
    }

    else
    {

      v136(v110, v104);
    }

    v39 = v153;
    v46 = v155;
    v47 = v163;
    v29 = v154;
    sub_1001D1490();
    v121 = sub_1001D14C0();

    if (v121)
    {
      sub_1001D1490();
      sub_1001D14D0();
      if (v109)
      {
        v54 = v109;
        v174 = 0;
        v5 = v168;
        goto LABEL_47;
      }
    }

    else
    {
    }

    (*v157)(v168, v172);
  }

  else
  {
    v46 = v155;
LABEL_51:
  }

  (*(v130 + 8))(v145, v131);
  (*(v146 + 1))(v144, v147);
  (*(v149 + 8))(v148, v150);
  v124 = v151;
  (*(v132 + 8))(v46, v133);
  return v124;
}

uint64_t sub_10002C584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v79 = a4;
  v80 = a5;
  v77 = a3;
  v76 = a2;
  v91 = a6;
  v7 = sub_100011AC0(&qword_1002287F8, &qword_1001D4F88);
  v8 = *(v7 - 8);
  v87 = v7;
  v88 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v84 = v70 - v11;
  v12 = sub_100011AC0(&qword_100228800, &qword_1001D4F90);
  v13 = *(v12 - 8);
  v85 = v12;
  v86 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v82 = v70 - v16;
  v17 = sub_100011AC0(&qword_100228808, &qword_1001D4F98);
  v18 = *(v17 - 8);
  v89 = v17;
  v90 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v83 = v70 - v21;
  v22 = sub_100011AC0(&qword_100228828, &qword_1001D4FB8);
  v97 = *(v22 - 8);
  v23 = *(v97 + 64);
  __chkstk_darwin(v22, v24);
  v26 = v70 - v25;
  v27 = sub_100011AC0(&qword_100228830, &qword_1001D4FC0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  v32 = v70 - v31;
  v33 = sub_100011AC0(&qword_100228838, &qword_1001D4FC8);
  v96 = *(v33 - 8);
  v34 = *(v96 + 64);
  __chkstk_darwin(v33, v35);
  v37 = v70 - v36;
  v74 = sub_100011AC0(&qword_100228840, &qword_1001D4FD0);
  v75 = *(v74 - 8);
  v38 = *(v75 + 64);
  v40 = __chkstk_darwin(v74, v39);
  v72 = v70 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v42);
  v71 = v70 - v43;
  v78 = sub_100011AC0(&qword_100228848, &qword_1001D4FD8);
  v81 = *(v78 - 8);
  v44 = *(v81 + 64);
  __chkstk_darwin(v78, v45);
  v73 = v70 - v46;
  v95 = *a1;
  v92 = sub_100024B78(&qword_100228858, &qword_100228830, &qword_1001D4FC0);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v47 = *(v28 + 8);
  v93 = v28 + 8;
  v94 = v47;
  v47(v32, v27);
  v98 = v76;
  v99 = v77;
  v48 = v26;
  sub_1001CF9F0();
  v77 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v76 = sub_100024B78(&qword_100228860, &qword_100228838, &qword_1001D4FC8);
  v70[1] = sub_100024B78(&qword_100228868, &qword_100228828, &qword_1001D4FB8);
  v49 = v33;
  sub_1001CF970();
  v50 = *(v97 + 8);
  v97 += 8;
  v50(v26, v22);
  v51 = *(v96 + 8);
  v96 += 8;
  v52 = v49;
  v51(v37, v49);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v94(v32, v27);
  v98 = v79;
  v99 = v80;
  sub_1001CF9F0();
  v53 = v72;
  sub_1001CF970();
  v50(v48, v22);
  v51(v37, v52);
  sub_100024B78(&qword_100228870, &qword_100228840, &qword_1001D4FD0);
  v54 = v73;
  v55 = v71;
  v56 = v74;
  sub_1001CF9C0();
  v57 = *(v75 + 8);
  v57(v53, v56);
  v57(v55, v56);
  sub_1001CFA00();
  swift_getKeyPath();
  v58 = v82;
  sub_1001CF980();

  v94(v32, v27);
  sub_1001CFDA0();
  v59 = v84;
  sub_1001CF9B0();
  sub_100024B78(&qword_100228898, &qword_100228800, &qword_1001D4F90);
  sub_100024B78(&qword_1002288A0, &qword_1002287F8, &qword_1001D4F88);
  sub_10003ACD4();
  v60 = v83;
  v61 = v58;
  v62 = v59;
  v63 = v85;
  v64 = v87;
  sub_1001CF970();
  (*(v88 + 8))(v62, v64);
  (*(v86 + 8))(v61, v63);
  v65 = sub_100011AC0(&qword_100228C60, &qword_1001D53F8);
  v66 = v91;
  v91[3] = v65;
  v66[4] = sub_10003E26C();
  sub_10003B47C(v66);
  sub_100024B78(&qword_100228888, &qword_100228848, &qword_1001D4FD8);
  sub_100024B78(&qword_100228940, &qword_100228808, &qword_1001D4F98);
  v67 = v78;
  v68 = v89;
  sub_1001CF9C0();
  (*(v90 + 8))(v60, v68);
  return (*(v81 + 8))(v54, v67);
}

uint64_t sub_10002CF9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10002D0B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE80();
}

uint64_t sub_10002D18C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10002D2A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE80();
}

uint64_t sub_10002D37C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_10003B4FC();
  sub_1001D15B0();
}

uint64_t sub_10002D48C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v11[-v7];
  sub_10001208C(a1, &v11[-v7], &qword_1002288B0, &qword_1001D5FC0);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE80();

  return sub_100011F00(v8, &qword_1002288B0, &qword_1001D5FC0);
}

uint64_t sub_10002D5E0(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_10003E3A8(&qword_100228910, 255, &type metadata accessor for Date);
  sub_1001D15B0();
}

uint64_t sub_10002D724(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1001CFD60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v9, a1, v4);
  v10 = *a2;
  v15 = v10;
  swift_getKeyPath();
  v13 = v10;
  v14 = v9;
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE80();

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_10002D8B0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v133 = a4;
  v125 = a3;
  v142 = a2;
  v139 = a5;
  v6 = sub_1001CF9E0();
  v131 = *(v6 - 8);
  v132 = v6;
  v7 = *(v131 + 64);
  __chkstk_darwin(v6, v8);
  v129 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_100228810, &qword_1001D4FA0);
  v11 = *(v10 - 8);
  v135 = v10;
  v136 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v128 = &v99 - v14;
  v130 = sub_100011AC0(&qword_1002289E0, &qword_1001D5180);
  v134 = *(v130 - 8);
  v15 = *(v134 + 64);
  __chkstk_darwin(v130, v16);
  v126 = &v99 - v17;
  v18 = sub_100011AC0(&qword_1002289E8, &qword_1001D5188);
  v19 = *(v18 - 8);
  v137 = v18;
  v138 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v127 = &v99 - v22;
  v123 = sub_100011AC0(&qword_1002289F8, &qword_1001D5198);
  v124 = *(v123 - 8);
  v23 = *(v124 + 64);
  __chkstk_darwin(v123, v24);
  v116 = &v99 - v25;
  v117 = sub_100011AC0(&qword_100228AC0, &qword_1001D5358);
  v120 = *(v117 - 8);
  v26 = *(v120 + 64);
  __chkstk_darwin(v117, v27);
  v114 = &v99 - v28;
  v121 = sub_100011AC0(&qword_100228AC8, &unk_1001D5360);
  v122 = *(v121 - 8);
  v29 = *(v122 + 64);
  __chkstk_darwin(v121, v30);
  v115 = &v99 - v31;
  v108 = sub_100011AC0(&qword_100228B60, &qword_1001D5398);
  v109 = *(v108 - 8);
  v32 = *(v109 + 64);
  __chkstk_darwin(v108, v33);
  v107 = &v99 - v34;
  v110 = sub_100011AC0(&qword_100228B68, &qword_1001D53A0);
  v111 = *(v110 - 8);
  v35 = *(v111 + 64);
  __chkstk_darwin(v110, v36);
  v106 = &v99 - v37;
  v102 = sub_100011AC0(&qword_100228B70, &qword_1001D53A8);
  v103 = *(v102 - 8);
  v38 = *(v103 + 64);
  __chkstk_darwin(v102, v39);
  v41 = &v99 - v40;
  v42 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42, v45);
  v47 = &v99 - v46;
  v48 = sub_100011AC0(&qword_100228B78, &qword_1001D53B0);
  v146 = *(v48 - 8);
  v49 = *(v146 + 64);
  __chkstk_darwin(v48, v50);
  v52 = &v99 - v51;
  v104 = sub_100011AC0(&qword_100228B80, &qword_1001D53B8);
  v105 = *(v104 - 8);
  v53 = *(v105 + 64);
  __chkstk_darwin(v104, v54);
  v100 = &v99 - v55;
  v112 = sub_100011AC0(&qword_100228B88, &qword_1001D53C0);
  v113 = *(v112 - 8);
  v56 = *(v113 + 64);
  __chkstk_darwin(v112, v57);
  v144 = &v99 - v58;
  v118 = sub_100011AC0(&qword_100228B90, &qword_1001D53C8);
  v119 = *(v118 - 8);
  v59 = *(v119 + 64);
  __chkstk_darwin(v118, v60);
  v145 = &v99 - v61;
  v147 = *a1;
  v62 = v42;
  v63 = sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v140 = *(v43 + 8);
  v140(v47, v62);
  v141 = v43 + 8;
  sub_1001CF9B0();
  v143 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v99 = sub_100024B78(&qword_100228B98, &qword_100228B78, &qword_1001D53B0);
  sub_100024B78(&qword_100228BA0, &qword_100228B70, &qword_1001D53A8);
  sub_10003DCB4();
  v64 = v102;
  sub_1001CF970();
  (*(v103 + 8))(v41, v64);
  v65 = *(v146 + 8);
  v146 += 8;
  v66 = v48;
  v65(v52, v48);
  v101 = v63;
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v67 = v62;
  v68 = v62;
  v69 = v140;
  v140(v47, v67);
  v148 = v142;
  v149 = 0;
  sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
  v70 = v107;
  sub_1001CF9F0();
  v142 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100024B78(&qword_100228BB0, &qword_100228B60, &qword_1001D5398);
  v71 = v106;
  v72 = v108;
  sub_1001CF970();
  (*(v109 + 8))(v70, v72);
  v65(v52, v66);
  sub_100024B78(&qword_100228BB8, &qword_100228B80, &qword_1001D53B8);
  sub_100024B78(&qword_100228BC0, &qword_100228B68, &qword_1001D53A0);
  v73 = v100;
  v74 = v104;
  v75 = v110;
  sub_1001CF9D0();
  (*(v111 + 8))(v71, v75);
  (*(v105 + 8))(v73, v74);
  v148 = v125;
  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  v76 = v114;
  sub_1001CF9F0();
  sub_1001CFA00();
  swift_getKeyPath();
  v77 = v116;
  sub_1001CF980();

  v69(v47, v68);
  sub_100024B78(&qword_100228AE0, &qword_100228AC0, &qword_1001D5358);
  sub_100024B78(&qword_100228A10, &qword_1002289F8, &qword_1001D5198);
  sub_100024B78(&qword_100228AE8, &unk_100230200, &qword_1001D4F80);
  v78 = v115;
  v79 = v117;
  v80 = v123;
  sub_1001CF990();
  (*(v124 + 8))(v77, v80);
  (*(v120 + 8))(v76, v79);
  sub_100024B78(&qword_100228BC8, &qword_100228B88, &qword_1001D53C0);
  sub_100024B78(&qword_100228B10, &qword_100228AC8, &unk_1001D5360);
  v81 = v144;
  v82 = v112;
  v83 = v121;
  sub_1001CF9C0();
  (*(v122 + 8))(v78, v83);
  (*(v113 + 8))(v81, v82);
  sub_1001CFA00();
  swift_getKeyPath();
  v84 = v126;
  sub_1001CF980();

  v140(v47, v68);
  sub_1001CFD60();
  v85 = v128;
  sub_1001CF9F0();
  v87 = v131;
  v86 = v132;
  v88 = v129;
  (*(v131 + 104))(v129, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v132);
  sub_100024B78(&qword_100228A18, &qword_1002289E0, &qword_1001D5180);
  sub_100024B78(&qword_100228880, &qword_100228810, &qword_1001D4FA0);
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date);
  v89 = v127;
  v90 = v85;
  v91 = v130;
  v92 = v135;
  sub_1001CF9A0();
  (*(v87 + 8))(v88, v86);
  (*(v136 + 8))(v90, v92);
  (*(v134 + 8))(v84, v91);
  v93 = sub_100011AC0(&qword_100228BD0, &qword_1001D53D0);
  v94 = v139;
  v139[3] = v93;
  v94[4] = sub_10003DD30();
  sub_10003B47C(v94);
  sub_100024B78(&qword_100228C18, &qword_100228B90, &qword_1001D53C8);
  sub_100024B78(&qword_100228A60, &qword_1002289E8, &qword_1001D5188);
  v95 = v145;
  v96 = v118;
  v97 = v137;
  sub_1001CF9C0();
  (*(v138 + 8))(v89, v97);
  return (*(v119 + 8))(v95, v96);
}

uint64_t sub_10002EA00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  sub_10003C880();
  sub_1001D15B0();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_10002EB20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE80();
}

uint64_t sub_10002EC00(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  sub_10003E3A8(&qword_100228910, 255, &type metadata accessor for Date);
  sub_1001D15B0();
}

uint64_t sub_10002ED44(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1001CFD60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v9, a1, v4);
  v10 = *a2;
  v15 = v10;
  swift_getKeyPath();
  v13 = v10;
  v14 = v9;
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE80();

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_10002EED0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v104 = a4;
  v94 = a3;
  v110 = a5;
  v111 = a2;
  v114 = a1;
  v5 = sub_1001CF9E0();
  v102 = *(v5 - 8);
  v103 = v5;
  v6 = *(v102 + 64);
  __chkstk_darwin(v5, v7);
  v100 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&qword_100228810, &qword_1001D4FA0);
  v10 = *(v9 - 8);
  v106 = v9;
  v107 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v99 = v78 - v13;
  v101 = sub_100011AC0(&qword_1002289E0, &qword_1001D5180);
  v105 = *(v101 - 8);
  v14 = *(v105 + 64);
  __chkstk_darwin(v101, v15);
  v97 = v78 - v16;
  v17 = sub_100011AC0(&qword_1002289E8, &qword_1001D5188);
  v18 = *(v17 - 8);
  v108 = v17;
  v109 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v98 = v78 - v21;
  v92 = sub_100011AC0(&qword_1002289F8, &qword_1001D5198);
  v93 = *(v92 - 8);
  v22 = *(v93 + 64);
  __chkstk_darwin(v92, v23);
  v87 = v78 - v24;
  v88 = sub_100011AC0(&qword_100228AC0, &qword_1001D5358);
  v89 = *(v88 - 8);
  v25 = *(v89 + 64);
  __chkstk_darwin(v88, v26);
  v83 = v78 - v27;
  v90 = sub_100011AC0(&qword_100228AC8, &unk_1001D5360);
  v91 = *(v90 - 8);
  v28 = *(v91 + 64);
  __chkstk_darwin(v90, v29);
  v86 = v78 - v30;
  v81 = sub_100011AC0(&qword_100228B60, &qword_1001D5398);
  v82 = *(v81 - 8);
  v31 = *(v82 + 64);
  __chkstk_darwin(v81, v32);
  v34 = v78 - v33;
  v35 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35, v38);
  v40 = v78 - v39;
  v79 = sub_100011AC0(&qword_100228B78, &qword_1001D53B0);
  v80 = *(v79 - 8);
  v41 = *(v80 + 64);
  __chkstk_darwin(v79, v42);
  v44 = v78 - v43;
  v84 = sub_100011AC0(&qword_100228B68, &qword_1001D53A0);
  v85 = *(v84 - 8);
  v45 = *(v85 + 64);
  __chkstk_darwin(v84, v46);
  v78[0] = v78 - v47;
  v95 = sub_100011AC0(&qword_100228C38, &qword_1001D53E8);
  v96 = *(v95 - 8);
  v48 = *(v96 + 64);
  __chkstk_darwin(v95, v49);
  v115 = v78 - v50;
  v113 = *v114;
  sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v112 = *(v36 + 8);
  v114 = (v36 + 8);
  v112(v40, v35);
  v116 = v111;
  v117 = 0;
  sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
  sub_1001CF9F0();
  v111 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100024B78(&qword_100228B98, &qword_100228B78, &qword_1001D53B0);
  v78[1] = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100024B78(&qword_100228BB0, &qword_100228B60, &qword_1001D5398);
  sub_10003DCB4();
  v51 = v34;
  v52 = v79;
  v53 = v81;
  sub_1001CF970();
  (*(v82 + 8))(v51, v53);
  (*(v80 + 8))(v44, v52);
  v116 = v94;
  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  v54 = v83;
  sub_1001CF9F0();
  sub_1001CFA00();
  swift_getKeyPath();
  v55 = v87;
  sub_1001CF980();

  v112(v40, v35);
  sub_100024B78(&qword_100228AE0, &qword_100228AC0, &qword_1001D5358);
  sub_100024B78(&qword_100228A10, &qword_1002289F8, &qword_1001D5198);
  sub_100024B78(&qword_100228AE8, &unk_100230200, &qword_1001D4F80);
  v56 = v86;
  v57 = v55;
  v58 = v88;
  v59 = v92;
  sub_1001CF990();
  (*(v93 + 8))(v57, v59);
  (*(v89 + 8))(v54, v58);
  sub_100024B78(&qword_100228BC0, &qword_100228B68, &qword_1001D53A0);
  sub_100024B78(&qword_100228B10, &qword_100228AC8, &unk_1001D5360);
  v60 = v78[0];
  v61 = v84;
  v62 = v90;
  sub_1001CF9C0();
  (*(v91 + 8))(v56, v62);
  (*(v85 + 8))(v60, v61);
  sub_1001CFA00();
  swift_getKeyPath();
  v63 = v97;
  sub_1001CF980();

  v112(v40, v35);
  sub_1001CFD60();
  v64 = v99;
  sub_1001CF9F0();
  v66 = v102;
  v65 = v103;
  v67 = v100;
  (*(v102 + 104))(v100, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v103);
  sub_100024B78(&qword_100228A18, &qword_1002289E0, &qword_1001D5180);
  sub_100024B78(&qword_100228880, &qword_100228810, &qword_1001D4FA0);
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date);
  v68 = v98;
  v69 = v64;
  v70 = v101;
  v71 = v106;
  sub_1001CF9A0();
  (*(v66 + 8))(v67, v65);
  (*(v107 + 8))(v69, v71);
  (*(v105 + 8))(v63, v70);
  v72 = sub_100011AC0(&qword_100228C40, &qword_1001D53F0);
  v73 = v110;
  v110[3] = v72;
  v73[4] = sub_10003E154();
  sub_10003B47C(v73);
  sub_100024B78(&qword_100228C58, &qword_100228C38, &qword_1001D53E8);
  sub_100024B78(&qword_100228A60, &qword_1002289E8, &qword_1001D5188);
  v74 = v115;
  v75 = v95;
  v76 = v108;
  sub_1001CF9C0();
  (*(v109 + 8))(v68, v76);
  return (*(v96 + 8))(v74, v75);
}

uint64_t sub_10002FC88()
{
  v26[2] = *v0;
  v1 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = v26 - v4;
  v6 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = v26 - v10;
  v12 = sub_1001CFD60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v18 = sub_1001D0E60();
  v26[1] = sub_10003A37C(v18, qword_1002286F8);
  v19 = sub_1001D0E50();
  v20 = sub_1001D1E00();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v27 = v5;
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "deleteEntriesWithExpiredAttestationBundles", v21, 2u);
    v5 = v27;
  }

  v22 = sub_1001CFD50();
  v27 = v26;
  __chkstk_darwin(v22, v23);
  v26[-2] = v17;
  v28 = _s8SchemaV2O4NodeCMa(0);
  sub_1001CFE70();
  sub_10003E3A8(&qword_1002287C0, v24, type metadata accessor for AttestationStore);
  sub_1001D1490();
  (*(v7 + 16))(v5, v11, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  sub_1001D14F0();

  sub_100011F00(v5, &qword_1002289C0, &qword_1001D5168);
  (*(v7 + 8))(v11, v6);
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_100030208@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_1001CF9E0();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v31 - v12;
  v34 = sub_100011AC0(&qword_1002289E0, &qword_1001D5180);
  v36 = *(v34 - 8);
  v14 = *(v36 + 64);
  __chkstk_darwin(v34, v15);
  v17 = &v31 - v16;
  v18 = sub_100011AC0(&qword_100228810, &qword_1001D4FA0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &v31 - v22;
  v24 = *a1;
  sub_1001CFD60();
  sub_1001CF9F0();
  sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  (*(v9 + 8))(v13, v8);
  v26 = v32;
  v25 = v33;
  (*(v32 + 104))(v7, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v33);
  v27 = sub_100011AC0(&qword_100228A70, &qword_1001D5200);
  v28 = v35;
  v35[3] = v27;
  v28[4] = sub_10003C3C4();
  sub_10003B47C(v28);
  sub_100024B78(&qword_100228880, &qword_100228810, &qword_1001D4FA0);
  sub_100024B78(&qword_100228A18, &qword_1002289E0, &qword_1001D5180);
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date);
  v29 = v34;
  sub_1001CF9A0();
  (*(v26 + 8))(v7, v25);
  (*(v36 + 8))(v17, v29);
  return (*(v19 + 8))(v23, v18);
}

uint64_t sub_100030670(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v35 = v2;
  v37 = v4;
  v5 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v33 - v8;
  v10 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  __chkstk_darwin(v10, v12);
  v38 = &v33 - v13;
  v14 = sub_1000969BC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v21 = sub_1001D0E60();
  v22 = sub_10003A37C(v21, qword_1002286F8);

  v33 = v22;
  v23 = sub_1001D0E50();
  v24 = sub_1001D1E00();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v10;
    v39 = v26;
    *v25 = 136315650;
    *(v25 + 4) = sub_1000954E0(v14, v16, &v39);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1000954E0(v18, v20, &v39);
    *(v25 + 22) = 2048;
    *(v25 + 24) = a2;
    _os_log_impl(&_mh_execute_header, v23, v24, "deleteEntries workloadType=%s inferenceId=%s batchId=%lu", v25, 0x20u);
    swift_arrayDestroy();
    v10 = v36;
  }

  v36 = &v33;
  __chkstk_darwin(v27, v28);
  *(&v33 - 6) = v14;
  *(&v33 - 5) = v16;
  *(&v33 - 4) = v18;
  *(&v33 - 3) = v20;
  *(&v33 - 2) = a2;
  v39 = _s8SchemaV2O8WorkloadCMa(0);
  v29 = v38;
  sub_1001CFE70();

  sub_10003E3A8(&qword_1002287C0, v30, type metadata accessor for AttestationStore);
  sub_1001D1490();
  v31 = v34;
  (*(v34 + 16))(v9, v29, v10);
  (*(v31 + 56))(v9, 0, 1, v10);
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001D14F0();

  sub_100011F00(v9, &qword_1002287C8, &qword_1001D4F38);
  return (*(v31 + 8))(v38, v10);
}

uint64_t sub_100030BF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001D15B0();

  *a2 = v4;
  return result;
}

uint64_t sub_100030D24()
{
  v1 = *v0;
  v2 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v20[-v5];
  v7 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v20[-v10];
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1001D0E60();
  sub_10003A37C(v12, qword_1002286F8);
  v13 = sub_1001D0E50();
  v14 = sub_1001D1E00();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "deleteAllAttestationStoreEntries", v15, 2u);
  }

  sub_10003E3A8(&qword_1002287C0, v16, type metadata accessor for AttestationStore);
  sub_1001D1490();
  _s8SchemaV2O4NodeCMa(0);
  v17 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  sub_1001D14F0();
  sub_100011F00(v11, &qword_1002289C0, &qword_1001D5168);

  sub_1001D1490();
  _s8SchemaV2O8WorkloadCMa(0);
  v18 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001D14F0();
  sub_100011F00(v6, &qword_1002287C8, &qword_1001D4F38);
}

uint64_t sub_1000311C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v31[2] = *v2;
  v6 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = v31 - v9;
  v11 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = v31 - v15;
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v17 = sub_1001D0E60();
  v18 = sub_10003A37C(v17, qword_1002286F8);

  v31[1] = v18;
  v19 = sub_1001D0E50();
  v20 = sub_1001D1E00();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31[0] = v3;
    v23 = v12;
    v24 = v16;
    v25 = v11;
    v26 = v22;
    v32 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1000954E0(a1, a2, &v32);
    _os_log_impl(&_mh_execute_header, v19, v20, "deleteEntryForNode: %s", v21, 0xCu);
    sub_100011CF0(v26);
    v11 = v25;
    v16 = v24;
    v12 = v23;
  }

  __chkstk_darwin(v27, v28);
  v31[-2] = a1;
  v31[-1] = a2;
  v32 = _s8SchemaV2O4NodeCMa(0);
  sub_1001CFE70();
  sub_10003E3A8(&qword_1002287C0, v29, type metadata accessor for AttestationStore);
  sub_1001D1490();
  (*(v12 + 16))(v10, v16, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  sub_1001D14F0();

  sub_100011F00(v10, &qword_1002289C0, &qword_1001D5168);
  (*(v12 + 8))(v16, v11);
  return 1;
}

uint64_t sub_100031758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v6 = sub_100011AC0(&qword_100228828, &qword_1001D4FB8);
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v27 - v10;
  v12 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v27 - v16;
  v18 = sub_100011AC0(&qword_1002289F8, &qword_1001D5198);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &v27 - v22;
  v24 = *a1;
  sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  (*(v13 + 8))(v17, v12);
  v31 = v27;
  v32 = v28;
  sub_1001CF9F0();
  a4[3] = sub_100011AC0(&qword_100228A00, &qword_1001D51A0);
  a4[4] = sub_10003C104();
  sub_10003B47C(a4);
  sub_100024B78(&qword_100228A10, &qword_1002289F8, &qword_1001D5198);
  sub_100024B78(&qword_100228868, &qword_100228828, &qword_1001D4FB8);
  v25 = v29;
  sub_1001CF970();
  (*(v30 + 8))(v11, v25);
  return (*(v19 + 8))(v23, v18);
}

uint64_t sub_100031AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100031BD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE80();
}

BOOL sub_100031CB4(uint64_t a1, unint64_t a2)
{
  v45 = *v2;
  v46 = v2;
  v5 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v42 - v8;
  v10 = sub_100011AC0(&qword_1002289C8, &qword_1001D5170);
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  __chkstk_darwin(v10, v12);
  v14 = v42 - v13;
  v15 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  v16 = *(v15 - 8);
  v17 = v16[8];
  __chkstk_darwin(v15, v18);
  v49 = v42 - v19;
  v20 = sub_1001CFD60();
  v43 = *(v20 - 8);
  v21 = *(v43 + 64);
  __chkstk_darwin(v20, v22);
  v50 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v24 = sub_1001D0E60();
  v25 = sub_10003A37C(v24, qword_1002286F8);

  v42[1] = v25;
  v26 = sub_1001D0E50();
  v27 = sub_1001D1E00();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v44 = v16;
    v29 = v20;
    v30 = v15;
    v31 = v28;
    v32 = swift_slowAlloc();
    v51 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_1000954E0(a1, a2, &v51);
    _os_log_impl(&_mh_execute_header, v26, v27, "nodeExists: checking if %s node exists", v31, 0xCu);
    sub_100011CF0(v32);

    v15 = v30;
    v20 = v29;
    v16 = v44;
  }

  v33 = v50;
  v34 = sub_1001CFD50();
  v44 = v42;
  __chkstk_darwin(v34, v35);
  v42[-4] = a1;
  v42[-3] = a2;
  v42[-2] = v33;
  v51 = _s8SchemaV2O4NodeCMa(0);
  v36 = v49;
  sub_1001CFE70();
  sub_10003E3A8(&qword_1002287C0, v37, type metadata accessor for AttestationStore);
  sub_1001D1490();
  (v16[2])(v9, v36, v15);
  (v16[7])(v9, 0, 1, v15);
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  sub_1001D1560();
  v38 = sub_1001D14B0();
  v39 = (v47 + 8);
  v40 = v38;

  (*v39)(v14, v48);
  (v16[1])(v36, v15);
  (*(v43 + 8))(v50, v20);
  return v40 > 0;
}

uint64_t sub_10003233C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v75 = a4;
  v65 = a2;
  v66 = a3;
  v81 = a5;
  v6 = sub_1001CF9E0();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  __chkstk_darwin(v6, v8);
  v71 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_100228810, &qword_1001D4FA0);
  v11 = *(v10 - 8);
  v77 = v10;
  v78 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v70 = v58 - v14;
  v72 = sub_100011AC0(&qword_1002289E0, &qword_1001D5180);
  v76 = *(v72 - 8);
  v15 = *(v76 + 64);
  __chkstk_darwin(v72, v16);
  v64 = v58 - v17;
  v18 = sub_100011AC0(&qword_1002289E8, &qword_1001D5188);
  v19 = *(v18 - 8);
  v79 = v18;
  v80 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v68 = v58 - v22;
  v61 = sub_100011AC0(&qword_100228828, &qword_1001D4FB8);
  v62 = *(v61 - 8);
  v23 = *(v62 + 64);
  __chkstk_darwin(v61, v24);
  v26 = v58 - v25;
  v27 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  v32 = v58 - v31;
  v59 = sub_100011AC0(&qword_1002289F8, &qword_1001D5198);
  v60 = *(v59 - 8);
  v33 = *(v60 + 64);
  __chkstk_darwin(v59, v34);
  v36 = v58 - v35;
  v67 = sub_100011AC0(&qword_100228A00, &qword_1001D51A0);
  v69 = *(v67 - 8);
  v37 = *(v69 + 64);
  __chkstk_darwin(v67, v38);
  v63 = v58 - v39;
  v58[1] = *a1;
  sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v40 = v28 + 8;
  v41 = *(v28 + 8);
  v58[0] = v40;
  v41(v32, v27);
  v82 = v65;
  v83 = v66;
  sub_1001CF9F0();
  v66 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100024B78(&qword_100228A10, &qword_1002289F8, &qword_1001D5198);
  sub_100024B78(&qword_100228868, &qword_100228828, &qword_1001D4FB8);
  v42 = v59;
  v43 = v61;
  sub_1001CF970();
  (*(v62 + 8))(v26, v43);
  (*(v60 + 8))(v36, v42);
  sub_1001CFA00();
  swift_getKeyPath();
  v44 = v64;
  sub_1001CF980();

  v41(v32, v27);
  sub_1001CFD60();
  v45 = v70;
  sub_1001CF9F0();
  v47 = v73;
  v46 = v74;
  v48 = v71;
  (*(v73 + 104))(v71, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v74);
  sub_100024B78(&qword_100228A18, &qword_1002289E0, &qword_1001D5180);
  sub_100024B78(&qword_100228880, &qword_100228810, &qword_1001D4FA0);
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date);
  v49 = v68;
  v50 = v72;
  v51 = v77;
  sub_1001CF9A0();
  (*(v47 + 8))(v48, v46);
  (*(v78 + 8))(v45, v51);
  (*(v76 + 8))(v44, v50);
  v52 = sub_100011AC0(&qword_100228A20, &qword_1001D51F8);
  v53 = v81;
  v81[3] = v52;
  v53[4] = sub_10003C078();
  sub_10003B47C(v53);
  sub_100024B78(&qword_100228A58, &qword_100228A00, &qword_1001D51A0);
  sub_100024B78(&qword_100228A60, &qword_1002289E8, &qword_1001D5188);
  v54 = v63;
  v55 = v67;
  v56 = v79;
  sub_1001CF9C0();
  (*(v80 + 8))(v49, v56);
  return (*(v69 + 8))(v54, v55);
}

uint64_t sub_100032BFC(uint64_t a1, uint64_t a2, unint64_t a3, char a4, void *a5, char *a6)
{
  v11 = *v6;
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1001D0E60();
  sub_10003A37C(v12, qword_1002286F8);

  v13 = sub_1001D0E50();
  v14 = sub_1001D1E00();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1000954E0(a2, a3, v34);
    _os_log_impl(&_mh_execute_header, v13, v14, "trackNodeForParameters: checking if %s node tracks params", v15, 0xCu);
    sub_100011CF0(v16);
  }

  v17 = sub_100033208(a1, a2, a3, a5);
  if ((v17 & 1) == 0)
  {
    v18 = sub_100028A90(a1, a5);
    if (v18)
    {
      v19 = v18;
      v34[0] = v18;
      swift_getKeyPath();
      sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);

      sub_1001CFE90();

      swift_getKeyPath();
      sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
      sub_10003AC1C();
      sub_1001D15B0();

      v20 = v34[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100008F3C(0, *(v20 + 2) + 1, 1, v20);
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_100008F3C((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[16 * v22];
      *(v23 + 4) = a2;
      *(v23 + 5) = a3;
      v34[0] = v19;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath, v25);
      sub_1001CFE80();
    }

    else
    {

      v27 = sub_1001D0E50();
      v28 = sub_1001D1E00();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v34[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_1000954E0(a2, a3, v34);
        _os_log_impl(&_mh_execute_header, v27, v28, "Linking %s to ...", v29, 0xCu);
        sub_100011CF0(v30);
      }

      sub_100029120(a1, a2, a3, a4 & 1, a5, a6);
    }

    sub_10003E3A8(&qword_1002287C0, v26, type metadata accessor for AttestationStore);
    sub_1001D1490();
    sub_1001D14D0();
  }

  return v17 & 1;
}

uint64_t sub_100033208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v52 = a3;
  v55 = v4;
  v54 = *v4;
  v6 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v48 - v9;
  v11 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  __chkstk_darwin(v11, v13);
  v15 = &v48 - v14;
  v58 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v16 = *(v58 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v58, v18);
  v59 = &v48 - v19;
  v20 = sub_1000969BC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v27 = sub_1001D0E60();
  v28 = sub_10003A37C(v27, qword_1002286F8);

  v53 = v28;
  v29 = sub_1001D0E50();
  v30 = sub_1001D1E00();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v50 = v16;
    v32 = v31;
    v33 = swift_slowAlloc();
    v49 = a4;
    v60[0] = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_1000954E0(v20, v22, v60);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1000954E0(v24, v26, v60);
    _os_log_impl(&_mh_execute_header, v29, v30, "nodeExistsInBatch workloadType=%s inferenceId=%s", v32, 0x16u);
    swift_arrayDestroy();
    a4 = v49;

    v16 = v50;
  }

  __chkstk_darwin(v34, v35);
  *(&v48 - 6) = v20;
  *(&v48 - 5) = v22;
  *(&v48 - 4) = v24;
  *(&v48 - 3) = v26;
  *(&v48 - 2) = a4;
  v60[3] = _s8SchemaV2O8WorkloadCMa(0);
  v36 = v59;
  sub_1001CFE70();

  sub_10003E3A8(&qword_1002287C0, v37, type metadata accessor for AttestationStore);
  sub_1001D1490();
  v38 = v36;
  v39 = v58;
  (*(v16 + 16))(v10, v38, v58);
  (*(v16 + 56))(v10, 0, 1, v39);
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001D1560();
  v40 = sub_1001D14E0();
  (*(v56 + 8))(v15, v57);

  if (!(v40 >> 62))
  {
    result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_13:
    (*(v16 + 8))(v59, v58);

    v47 = 0;
    return v47 & 1;
  }

  result = sub_1001D2190();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v40 & 0xC000000000000001) != 0)
  {
    v42 = v16;
    v43 = sub_1001D2040();
    goto LABEL_10;
  }

  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v42 = v16;
    v43 = *(v40 + 32);

LABEL_10:

    v60[0] = v43;
    swift_getKeyPath();
    sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
    sub_1001CFE90();

    swift_getKeyPath();
    sub_10003AC1C();
    sub_1001D15B0();

    v45 = v60[0];
    v60[0] = v51;
    v60[1] = v52;
    __chkstk_darwin(v44, v46);
    *(&v48 - 2) = v60;
    v47 = sub_10003AAB4(sub_10003C040, (&v48 - 4), v45);

    (*(v42 + 8))(v59, v58);
    return v47 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000339A8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v82 = a6;
  v76 = a4;
  v77 = a5;
  v73 = a3;
  v72 = a2;
  v88 = a7;
  v8 = sub_100011AC0(&qword_100228968, &qword_1001D5148);
  v9 = *(v8 - 8);
  v84 = v8;
  v85 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v80 = v66 - v12;
  v81 = sub_100011AC0(&qword_100228970, &qword_1001D5150);
  v83 = *(v81 - 8);
  v13 = *(v83 + 64);
  __chkstk_darwin(v81, v14);
  v78 = v66 - v15;
  v16 = sub_100011AC0(&qword_100228978, &qword_1001D5158);
  v17 = *(v16 - 8);
  v86 = v16;
  v87 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v79 = v66 - v20;
  v21 = sub_100011AC0(&qword_100228828, &qword_1001D4FB8);
  v94 = *(v21 - 8);
  v22 = *(v94 + 64);
  __chkstk_darwin(v21, v23);
  v25 = v66 - v24;
  v26 = sub_100011AC0(&qword_100228830, &qword_1001D4FC0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26, v29);
  v31 = v66 - v30;
  v32 = sub_100011AC0(&qword_100228838, &qword_1001D4FC8);
  v93 = *(v32 - 8);
  v33 = *(v93 + 64);
  __chkstk_darwin(v32, v34);
  v36 = v66 - v35;
  v70 = sub_100011AC0(&qword_100228840, &qword_1001D4FD0);
  v71 = *(v70 - 8);
  v37 = *(v71 + 64);
  v39 = __chkstk_darwin(v70, v38);
  v68 = v66 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v41);
  v67 = v66 - v42;
  v74 = sub_100011AC0(&qword_100228848, &qword_1001D4FD8);
  v75 = *(v74 - 8);
  v43 = *(v75 + 64);
  __chkstk_darwin(v74, v44);
  v69 = v66 - v45;
  v92 = *a1;
  v89 = sub_100024B78(&qword_100228858, &qword_100228830, &qword_1001D4FC0);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v46 = *(v27 + 8);
  v90 = v27 + 8;
  v91 = v46;
  v46(v31, v26);
  v95 = v72;
  v96 = v73;
  sub_1001CF9F0();
  v73 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v66[2] = sub_100024B78(&qword_100228860, &qword_100228838, &qword_1001D4FC8);
  v72 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v66[1] = sub_100024B78(&qword_100228868, &qword_100228828, &qword_1001D4FB8);
  v47 = v32;
  sub_1001CF970();
  v48 = *(v94 + 8);
  v94 += 8;
  v48(v25, v21);
  v49 = *(v93 + 8);
  v93 += 8;
  v49(v36, v47);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v91(v31, v26);
  v95 = v76;
  v96 = v77;
  sub_1001CF9F0();
  v50 = v68;
  sub_1001CF970();
  v48(v25, v21);
  v49(v36, v47);
  sub_100024B78(&qword_100228870, &qword_100228840, &qword_1001D4FD0);
  v51 = v69;
  v52 = v67;
  v53 = v70;
  sub_1001CF9C0();
  v54 = *(v71 + 8);
  v54(v50, v53);
  v54(v52, v53);
  sub_1001CFA00();
  swift_getKeyPath();
  v55 = v78;
  sub_1001CF980();

  v91(v31, v26);
  v95 = v82;
  v56 = v80;
  sub_1001CF9F0();
  sub_100024B78(&qword_100228980, &qword_100228970, &qword_1001D5150);
  sub_100024B78(&qword_100228988, &qword_100228968, &qword_1001D5148);
  v57 = v79;
  v58 = v56;
  v59 = v81;
  v60 = v84;
  sub_1001CF970();
  (*(v85 + 8))(v58, v60);
  (*(v83 + 8))(v55, v59);
  v61 = sub_100011AC0(&qword_100228990, &qword_1001D5160);
  v62 = v88;
  v88[3] = v61;
  v62[4] = sub_10003B7BC();
  sub_10003B47C(v62);
  sub_100024B78(&qword_100228888, &qword_100228848, &qword_1001D4FD8);
  sub_100024B78(&qword_1002289B8, &qword_100228978, &qword_1001D5158);
  v63 = v74;
  v64 = v86;
  sub_1001CF9C0();
  (*(v87 + 8))(v57, v64);
  return (*(v75 + 8))(v51, v63);
}

BOOL sub_1000343D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v76 = a3;
  v67 = a2;
  v4 = *v3;
  v70 = v3;
  v69 = v4;
  v5 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v74 = &v61 - v8;
  v68 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v75 = *(v68 - 8);
  v9 = *(v75 + 64);
  __chkstk_darwin(v68, v10);
  v71 = (&v61 - v11);
  v12 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  __chkstk_darwin(v12, v14);
  v72 = &v61 - v15;
  v16 = sub_1001CFD60();
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000969BC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if (qword_1002276A0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v29 = sub_1001D0E60();
    v30 = sub_10003A37C(v29, qword_1002286F8);
    (*(v17 + 16))(v21, v76, v16);

    v65 = v30;
    v31 = sub_1001D0E50();
    v32 = sub_1001D1E00();

    v64 = v32;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v66 = v12;
      v34 = v33;
      v63 = swift_slowAlloc();
      v78[0] = v63;
      *v34 = 136315906;
      *(v34 + 4) = sub_1000954E0(v22, v24, v78);
      v62 = v31;
      *(v34 + 12) = 2080;
      v35 = v26;
      *(v34 + 14) = sub_1000954E0(v26, v28, v78);
      *(v34 + 22) = 2048;
      *(v34 + 24) = v67;
      *(v34 + 32) = 2080;
      sub_10003E3A8(&qword_100227A40, 255, &type metadata accessor for Date);
      v36 = sub_1001D23A0();
      v61 = v22;
      v26 = v37;
      (*(v17 + 8))(v21, v16);
      v38 = sub_1000954E0(v36, v26, v78);

      *(v34 + 34) = v38;
      v39 = v62;
      _os_log_impl(&_mh_execute_header, v62, v64, "attestationsExist workloadType=%s inferenceId=%s clientCacheSize=%ld fetchTime=%s", v34, 0x2Au);
      swift_arrayDestroy();

      v12 = v66;
    }

    else
    {

      v40 = (*(v17 + 8))(v21, v16);
      v35 = v26;
    }

    __chkstk_darwin(v40, v41);
    *(&v61 - 6) = v42;
    *(&v61 - 5) = v24;
    *(&v61 - 4) = v35;
    *(&v61 - 3) = v28;
    *(&v61 - 2) = v76;
    v78[0] = _s8SchemaV2O8WorkloadCMa(0);
    v43 = v72;
    sub_1001CFE70();

    sub_10003E3A8(&qword_1002287C0, v44, type metadata accessor for AttestationStore);
    sub_1001D1490();
    v45 = v73;
    v46 = v74;
    (*(v73 + 16))(v74, v43, v12);
    (*(v45 + 56))(v46, 0, 1, v12);
    v47 = sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
    v48 = v71;
    v24 = v47;
    sub_1001D1560();
    v17 = 0;
    v28 = sub_1001D14E0();
    (*(v75 + 8))(v48, v68);

    v49 = v28 >> 62 ? sub_1001D2190() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v71 = &v61;
    v66 = v12;
    if (!v49)
    {
      break;
    }

    v22 = 0;
    v74 = (v28 & 0xFFFFFFFFFFFFFF8);
    v75 = v28 & 0xC000000000000001;
    v16 = &_swiftEmptyArrayStorage;
    while (v75)
    {
      v50 = sub_1001D2040();
      v51 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
LABEL_29:
        __break(1u);

        (*(v73 + 8))(v72, v12);
        return 0;
      }

LABEL_14:
      v76 = v51;
      v77 = v50;
      v12 = v49;
      v17 = v24;
      swift_getKeyPath();
      sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);

      sub_1001CFE90();

      swift_getKeyPath();
      sub_10003AC1C();
      sub_1001D15B0();

      v21 = v77;
      v52 = *(v77 + 2);
      v26 = *(v16 + 2);
      v53 = v26 + v52;
      if (__OFADD__(v26, v52))
      {
        goto LABEL_35;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v53 <= *(v16 + 3) >> 1)
      {
        if (!*(v21 + 2))
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v26 <= v53)
        {
          v55 = v26 + v52;
        }

        else
        {
          v55 = v26;
        }

        v16 = sub_100008F3C(isUniquelyReferenced_nonNull_native, v55, 1, v16);
        if (!*(v21 + 2))
        {
LABEL_9:

          if (v52)
          {
            goto LABEL_36;
          }

          goto LABEL_10;
        }
      }

      if ((*(v16 + 3) >> 1) - *(v16 + 2) < v52)
      {
        goto LABEL_37;
      }

      swift_arrayInitWithCopy();

      if (v52)
      {
        v56 = *(v16 + 2);
        v57 = __OFADD__(v56, v52);
        v58 = v56 + v52;
        if (v57)
        {
          goto LABEL_38;
        }

        *(v16 + 2) = v58;
      }

LABEL_10:
      ++v22;
      v49 = v12;
      if (v76 == v12)
      {
        goto LABEL_31;
      }
    }

    if (v22 < *(v74 + 2))
    {
      v50 = *(v28 + 8 * v22 + 32);

      v51 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_29;
      }

      goto LABEL_14;
    }

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
    swift_once();
  }

  v16 = &_swiftEmptyArrayStorage;
LABEL_31:

  (*(v73 + 8))(v72, v66);
  v59 = *(v16 + 2);

  return v59 >= v67;
}

uint64_t sub_100034DDC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v135 = a6;
  v124 = a5;
  v123 = a4;
  v112 = a3;
  v150 = a2;
  v145 = a7;
  v8 = sub_100011AC0(&qword_1002287F8, &qword_1001D4F88);
  v9 = *(v8 - 8);
  v141 = v8;
  v142 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v138 = &v107 - v12;
  v13 = sub_100011AC0(&qword_100228800, &qword_1001D4F90);
  v14 = *(v13 - 8);
  v139 = v13;
  v140 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v136 = &v107 - v17;
  v18 = sub_100011AC0(&qword_100228808, &qword_1001D4F98);
  v19 = *(v18 - 8);
  v143 = v18;
  v144 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v137 = &v107 - v22;
  v118 = sub_1001CF9E0();
  v127 = *(v118 - 8);
  v23 = *(v127 + 64);
  __chkstk_darwin(v118, v24);
  v125 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100011AC0(&qword_100228810, &qword_1001D4FA0);
  v134 = *(v130 - 8);
  v26 = *(v134 + 64);
  __chkstk_darwin(v130, v27);
  v122 = &v107 - v28;
  v126 = sub_100011AC0(&qword_100228818, &qword_1001D4FA8);
  v128 = *(v126 - 8);
  v29 = *(v128 + 64);
  __chkstk_darwin(v126, v30);
  v117 = &v107 - v31;
  v132 = sub_100011AC0(&qword_100228820, &qword_1001D4FB0);
  v133 = *(v132 - 8);
  v32 = *(v133 + 64);
  __chkstk_darwin(v132, v33);
  v121 = &v107 - v34;
  v113 = sub_100011AC0(&qword_100228828, &qword_1001D4FB8);
  v155 = *(v113 - 8);
  v35 = v155[8];
  __chkstk_darwin(v113, v36);
  v38 = &v107 - v37;
  v39 = sub_100011AC0(&qword_100228830, &qword_1001D4FC0);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39, v42);
  v44 = &v107 - v43;
  v45 = sub_100011AC0(&qword_100228838, &qword_1001D4FC8);
  v154 = *(v45 - 8);
  v46 = *(v154 + 64);
  __chkstk_darwin(v45, v47);
  v49 = &v107 - v48;
  v114 = sub_100011AC0(&qword_100228840, &qword_1001D4FD0);
  v115 = *(v114 - 8);
  v50 = *(v115 + 64);
  v52 = __chkstk_darwin(v114, v51);
  v111 = &v107 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52, v54);
  v110 = &v107 - v55;
  v119 = sub_100011AC0(&qword_100228848, &qword_1001D4FD8);
  v120 = *(v119 - 8);
  v56 = *(v120 + 64);
  __chkstk_darwin(v119, v57);
  v151 = &v107 - v58;
  v129 = sub_100011AC0(&qword_100228850, &qword_1001D4FE0);
  v131 = *(v129 - 8);
  v59 = *(v131 + 64);
  __chkstk_darwin(v129, v60);
  v116 = &v107 - v61;
  v62 = *a1;
  v63 = sub_100024B78(&qword_100228858, &qword_100228830, &qword_1001D4FC0);
  v149 = v62;
  v153 = v63;
  sub_1001CFA00();
  swift_getKeyPath();
  v152 = v39;
  sub_1001CF980();

  v147 = *(v40 + 8);
  v148 = v40 + 8;
  v64 = v44;
  v147(v44, v39);
  v156 = v150;
  v157 = v112;
  v65 = v38;
  v108 = v38;
  sub_1001CF9F0();
  v150 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v109 = sub_100024B78(&qword_100228860, &qword_100228838, &qword_1001D4FC8);
  v112 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100024B78(&qword_100228868, &qword_100228828, &qword_1001D4FB8);
  v66 = v45;
  v67 = v113;
  sub_1001CF970();
  v68 = v155[1];
  ++v155;
  v68(v65, v67);
  v69 = *(v154 + 8);
  v154 += 8;
  v69(v49, v66);
  v70 = v152;
  sub_1001CFA00();
  swift_getKeyPath();
  v146 = v64;
  sub_1001CF980();

  v71 = v70;
  v72 = v147;
  v147(v64, v71);
  v156 = v123;
  v157 = v124;
  v73 = v108;
  sub_1001CF9F0();
  v74 = v111;
  sub_1001CF970();
  v68(v73, v67);
  v69(v49, v66);
  v155 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  sub_100024B78(&qword_100228870, &qword_100228840, &qword_1001D4FD0);
  v75 = v110;
  v76 = v114;
  sub_1001CF9C0();
  v77 = *(v115 + 8);
  v77(v74, v76);
  v77(v75, v76);
  v78 = v146;
  v79 = v152;
  sub_1001CFA00();
  swift_getKeyPath();
  v80 = v117;
  sub_1001CF980();

  v72(v78, v79);
  sub_1001CFD60();
  v81 = v122;
  sub_1001CF9F0();
  v82 = v127;
  v83 = v125;
  v84 = v118;
  (*(v127 + 104))(v125, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v118);
  sub_100024B78(&qword_100228878, &qword_100228818, &qword_1001D4FA8);
  sub_100024B78(&qword_100228880, &qword_100228810, &qword_1001D4FA0);
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date);
  v85 = v121;
  v86 = v80;
  v87 = v81;
  v88 = v126;
  v89 = v130;
  sub_1001CF9A0();
  (*(v82 + 8))(v83, v84);
  (*(v134 + 8))(v87, v89);
  (*(v128 + 8))(v86, v88);
  sub_100024B78(&qword_100228888, &qword_100228848, &qword_1001D4FD8);
  sub_100024B78(&qword_100228890, &qword_100228820, &qword_1001D4FB0);
  v90 = v116;
  v91 = v151;
  v92 = v119;
  v93 = v132;
  sub_1001CF9C0();
  (*(v133 + 8))(v85, v93);
  (*(v120 + 8))(v91, v92);
  v94 = v146;
  v95 = v152;
  sub_1001CFA00();
  swift_getKeyPath();
  v96 = v136;
  sub_1001CF980();

  v147(v94, v95);
  sub_1001CFDA0();
  v97 = v138;
  sub_1001CF9B0();
  sub_100024B78(&qword_100228898, &qword_100228800, &qword_1001D4F90);
  sub_100024B78(&qword_1002288A0, &qword_1002287F8, &qword_1001D4F88);
  sub_10003ACD4();
  v98 = v137;
  v99 = v97;
  v100 = v139;
  v101 = v141;
  sub_1001CF970();
  (*(v142 + 8))(v99, v101);
  (*(v140 + 8))(v96, v100);
  v102 = sub_100011AC0(&qword_1002288B8, &qword_1001D5090);
  v103 = v145;
  v145[3] = v102;
  v103[4] = sub_10003AD8C();
  sub_10003B47C(v103);
  sub_100024B78(&qword_100228938, &qword_100228850, &qword_1001D4FE0);
  sub_100024B78(&qword_100228940, &qword_100228808, &qword_1001D4F98);
  v104 = v129;
  v105 = v143;
  sub_1001CF9C0();
  (*(v144 + 8))(v98, v105);
  return (*(v131 + 8))(v90, v104);
}

uint64_t sub_100035DCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_10003AC1C();
  sub_1001D15B0();

  *a2 = v4;
  return result;
}

uint64_t sub_100035F04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE80();
}

uint64_t sub_100035FCC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v99 = v83 - v12;
  v13 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v100 = *(v13 - 8);
  v101 = v13;
  v14 = *(v100 + 8);
  __chkstk_darwin(v13, v15);
  v98 = v83 - v16;
  v17 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v103 = *(v17 - 8);
  v104 = v17;
  v18 = *(v103 + 64);
  __chkstk_darwin(v17, v19);
  v105 = v83 - v20;
  v21 = sub_1001CFDA0();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v25 = __chkstk_darwin(v21, v24);
  v90 = v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v27);
  v29 = v83 - v28;
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v30 = sub_1001D0E60();
  v31 = sub_10003A37C(v30, qword_1002286F8);
  v32 = v22[2];
  v88 = v22 + 2;
  v87 = v32;
  v32(v29, a1, v21);
  v102 = v31;
  v33 = sub_1001D0E50();
  v34 = sub_1001D1E00();
  v35 = os_log_type_enabled(v33, v34);
  v94 = v10;
  v96 = v2;
  v91 = v22;
  v92 = v21;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v107 = v37;
    *v36 = 136315138;
    sub_10003E3A8(&qword_100228AF8, 255, &type metadata accessor for UUID);
    v38 = sub_1001D23A0();
    v39 = v21;
    v40 = a1;
    v41 = v4;
    v43 = v42;
    v89 = v22[1];
    v89(v29, v39);
    v44 = sub_1000954E0(v38, v43, &v107);
    v4 = v41;
    a1 = v40;

    *(v36 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v33, v34, "deleteAttestationsUsedForTrustedRequest: %s", v36, 0xCu);
    sub_100011CF0(v37);
  }

  else
  {

    v89 = v22[1];
    v45 = (v89)(v29, v21);
  }

  v95 = a1;
  v93 = v4;
  v97 = v83;
  __chkstk_darwin(v45, v46);
  v83[-2] = a1;
  v47 = _s8SchemaV2O8WorkloadCMa(0);
  v107 = v47;
  v48 = v105;
  sub_1001CFE70();
  v86 = sub_10003E3A8(&qword_1002287C0, v49, type metadata accessor for AttestationStore);
  sub_1001D1490();
  v51 = v103;
  v50 = v104;
  v53 = (v103 + 16);
  v52 = *(v103 + 16);
  v54 = v99;
  v52(v99, v48, v104);
  v57 = *(v51 + 56);
  v55 = v51 + 56;
  v56 = v57;
  (v57)(v54, 0, 1, v50);
  v58 = sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  v59 = v98;
  sub_1001D1560();
  v60 = sub_1001D14E0();
  (*(v100 + 1))(v59, v101);

  v100 = v52;
  v101 = v58;
  v98 = v53;
  v99 = v56;
  v62 = v95;
  if (v60 >> 62)
  {
    result = sub_1001D2190();
  }

  else
  {
    result = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = v105;
  v64 = v47;
  if (!result)
  {
    (*(v103 + 8))(v105, v104);

    return 0;
  }

  v85 = v55;
  if ((v60 & 0xC000000000000001) != 0)
  {
    v65 = sub_1001D2040();
    goto LABEL_14;
  }

  if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v65 = *(v60 + 32);

LABEL_14:

    v106 = v65;
    swift_getKeyPath();
    sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
    sub_1001CFE90();

    swift_getKeyPath();
    v83[1] = v65;
    sub_1001D15B0();

    v66 = v106;
    v67 = v90;
    v68 = v92;
    v87(v90, v62, v92);
    v69 = sub_1001D0E50();
    v70 = sub_1001D1E00();
    v71 = os_log_type_enabled(v69, v70);
    v84 = v66;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v95 = v64;
      v73 = v106;
      *v72 = 134218242;
      *(v72 + 4) = v66;
      *(v72 + 12) = 2080;
      sub_10003E3A8(&qword_100228AF8, 255, &type metadata accessor for UUID);
      v74 = sub_1001D23A0();
      v75 = v67;
      v76 = v74;
      v78 = v77;
      v89(v75, v68);
      v79 = sub_1000954E0(v76, v78, &v106);

      *(v72 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v69, v70, "deleting batch: %lu used by request: %s", v72, 0x16u);
      sub_100011CF0(v73);

      v63 = v105;
    }

    else
    {

      v89(v67, v68);
    }

    v81 = v104;
    v82 = v94;
    sub_1001D1490();
    v100(v82, v63, v81);
    (v99)(v82, 0, 1, v81);
    sub_1001D14F0();

    sub_100011F00(v82, &qword_1002287C8, &qword_1001D4F38);
    (*(v103 + 8))(v63, v81);
    return v84;
  }

  __break(1u);
  return result;
}

uint64_t sub_100036B18(unint64_t a1)
{
  v112 = *v1;
  v113 = a1;
  v2 = sub_100011AC0(&qword_1002289C0, &qword_1001D5168);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v92 - v5;
  v7 = sub_100011AC0(&qword_1002289C8, &qword_1001D5170);
  isUniquelyReferenced_nonNull_native = *(v7 - 8);
  v9 = *(isUniquelyReferenced_nonNull_native + 64);
  __chkstk_darwin(v7, v10);
  v94 = &v92 - v11;
  v12 = sub_100011AC0(&qword_1002289D0, &qword_1001D5178);
  v98 = *(v12 - 8);
  v99 = v12;
  v13 = *(v98 + 64);
  __chkstk_darwin(v12, v14);
  v97 = &v92 - v15;
  v16 = sub_100011AC0(&qword_1002287C8, &qword_1001D4F38);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v92 - v19;
  v107 = sub_100011AC0(&qword_1002287D0, &qword_1001D4F40);
  v105 = *(v107 - 8);
  v21 = *(v105 + 64);
  __chkstk_darwin(v107, v22);
  v104 = &v92 - v23;
  v24 = sub_1001CFD60();
  v102 = *(v24 - 8);
  v103 = v24;
  v25 = *(v102 + 64);
  __chkstk_darwin(v24, v26);
  v106 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100011AC0(&qword_1002287D8, &qword_1001D4F48);
  v110 = *(v28 - 8);
  v111 = v28;
  v29 = *(v110 + 64);
  __chkstk_darwin(v28, v30);
  v109 = &v92 - v31;
  v32 = sub_1001CFDA0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32, v35);
  v37 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002276A0 != -1)
  {
LABEL_39:
    swift_once();
  }

  v38 = sub_1001D0E60();
  v39 = sub_10003A37C(v38, qword_1002286F8);
  (*(v33 + 16))(v37, v113, v32);
  v100 = v39;
  v40 = sub_1001D0E50();
  v41 = sub_1001D1E00();
  v42 = os_log_type_enabled(v40, v41);
  v96 = v7;
  v95 = isUniquelyReferenced_nonNull_native;
  v93 = v6;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v114 = v44;
    *v43 = 136315138;
    sub_10003E3A8(&qword_100228AF8, 255, &type metadata accessor for UUID);
    v45 = sub_1001D23A0();
    v47 = v46;
    (*(v33 + 8))(v37, v32);
    v48 = sub_1000954E0(v45, v47, &v114);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v40, v41, "getAttestationBundlesUsedByTrustedRequest: %s", v43, 0xCu);
    sub_100011CF0(v44);
  }

  else
  {

    v49 = (*(v33 + 8))(v37, v32);
  }

  v101 = &v92;
  __chkstk_darwin(v49, v50);
  *(&v92 - 2) = v113;
  v117 = _s8SchemaV2O8WorkloadCMa(0);
  v51 = v109;
  sub_1001CFE70();
  isUniquelyReferenced_nonNull_native = &_swiftEmptyArrayStorage;
  v6 = sub_1000D64BC(&_swiftEmptyArrayStorage);
  v33 = v106;
  sub_1001CFD50();
  sub_10003E3A8(&qword_1002287C0, v52, type metadata accessor for AttestationStore);
  sub_1001D1490();
  v54 = v110;
  v53 = v111;
  (*(v110 + 16))(v20, v51, v111);
  (*(v54 + 56))(v20, 0, 1, v53);
  v37 = sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  v55 = v104;
  sub_1001D1560();
  v7 = 0;
  v56 = sub_1001D14E0();
  (*(v105 + 8))(v55, v107);

  if (v56 >> 62)
  {
    goto LABEL_42;
  }

  v57 = v112;
  if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:
    (*(v110 + 8))(v109, v111);

    goto LABEL_49;
  }

LABEL_7:
  if ((v56 & 0xC000000000000001) != 0)
  {
    v58 = sub_1001D2040();
  }

  else
  {
    if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_46;
    }

    v58 = *(v56 + 32);
  }

  v114 = v58;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003AC1C();
  v107 = v58;
  sub_1001D15B0();

  v92 = &v92;
  v60 = v114;
  __chkstk_darwin(v59, v61);
  *(&v92 - 2) = v60;
  *(&v92 - 1) = v33;
  v116 = _s8SchemaV2O4NodeCMa(0);
  v37 = v97;
  sub_1001CFE70();

  sub_1001D1490();
  v63 = v98;
  v62 = v99;
  v20 = v93;
  (*(v98 + 16))(v93, v37, v99);
  (*(v63 + 56))(v20, 0, 1, v62);
  v57 = sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  v64 = v94;
  sub_1001D1560();
  v65 = sub_1001D14E0();
  if (!v7)
  {
    isUniquelyReferenced_nonNull_native = v65;
    (*(v95 + 8))(v64, v96);

    if (!(isUniquelyReferenced_nonNull_native >> 62))
    {
      v71 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v71)
      {
        goto LABEL_47;
      }

LABEL_16:
      v56 = 0;
      v108 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v96 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v104 = isUniquelyReferenced_nonNull_native;
      v105 = v57;
      v100 = v71;
      while (1)
      {
        if (v108)
        {
          v32 = sub_1001D2040();
          v75 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v56 >= *(v96 + 16))
          {
            goto LABEL_41;
          }

          v32 = *(isUniquelyReferenced_nonNull_native + 8 * v56 + 32);

          v75 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        v112 = v75;
        v113 = v56;
        v114 = v32;
        swift_getKeyPath();
        sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
        sub_1001CFE90();

        swift_getKeyPath();
        sub_1001D15B0();

        v20 = v114;
        v37 = v115;
        v114 = v32;
        v33 = v6;
        v6 = &unk_1001D5268;
        swift_getKeyPath();
        sub_1001CFE90();

        swift_getKeyPath();
        sub_10003C7CC();
        sub_1001D15B0();

        v76 = v114;
        v77 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v114 = v33;
        v56 = v33;
        v7 = sub_100006028(v20, v37);
        v79 = *(v33 + 16);
        v80 = (v78 & 1) == 0;
        v81 = v79 + v80;
        if (__OFADD__(v79, v80))
        {
          goto LABEL_38;
        }

        v82 = v78;
        if (*(v33 + 24) >= v81)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v78)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v56 = &v114;
            sub_10000FB94();
            if (v82)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          sub_10000C37C(v81, isUniquelyReferenced_nonNull_native);
          v56 = v114;
          v83 = sub_100006028(v20, v37);
          if ((v82 & 1) != (v84 & 1))
          {
            result = sub_1001D24F0();
            __break(1u);
            return result;
          }

          v7 = v83;
          if (v82)
          {
LABEL_17:

            v6 = v114;
            v72 = (*(v114 + 7) + 16 * v7);
            v73 = *v72;
            v74 = v72[1];
            *v72 = v76;
            v72[1] = v77;
            sub_100011E48(v73, v74);

            goto LABEL_18;
          }
        }

        v6 = v114;
        *&v114[8 * (v7 >> 6) + 64] |= 1 << v7;
        v85 = (*(v6 + 6) + 16 * v7);
        *v85 = v20;
        v85[1] = v37;
        v86 = (*(v6 + 7) + 16 * v7);
        *v86 = v76;
        v86[1] = v77;

        v87 = *(v6 + 2);
        v88 = __OFADD__(v87, 1);
        v89 = v87 + 1;
        if (v88)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v90 = sub_1001D2190();
          v57 = v112;
          if (!v90)
          {
            goto LABEL_43;
          }

          goto LABEL_7;
        }

        *(v6 + 2) = v89;
LABEL_18:
        v56 = v113 + 1;
        isUniquelyReferenced_nonNull_native = v104;
        if (v112 == v100)
        {

          v33 = v106;
          goto LABEL_48;
        }
      }
    }

LABEL_46:
    v71 = sub_1001D2190();
    if (!v71)
    {
LABEL_47:

      goto LABEL_48;
    }

    goto LABEL_16;
  }

  (*(v95 + 8))(v64, v96);

  swift_errorRetain();
  v66 = sub_1001D0E50();
  v67 = sub_1001D1DE0();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138412290;
    swift_errorRetain();
    v70 = _swift_stdlib_bridgeErrorToNSError();
    *(v68 + 4) = v70;
    *v69 = v70;
    _os_log_impl(&_mh_execute_header, v66, v67, "failed to query attestations error: %@", v68, 0xCu);
    sub_100011F00(v69, &unk_1002301D0, &qword_1001D4F50);
  }

LABEL_48:
  (*(v98 + 8))(v97, v99);
  (*(v110 + 8))(v109, v111);
LABEL_49:
  (*(v102 + 8))(v33, v103);
  return v6;
}

uint64_t sub_100037B48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a2;
  v36 = a3;
  v35 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v4 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35, v5);
  v7 = &v33 - v6;
  v8 = sub_100011AC0(&qword_100228B18, &qword_1001D5378);
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v33 - v12;
  v14 = sub_100011AC0(&qword_100228830, &qword_1001D4FC0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v33 - v18;
  v20 = sub_100011AC0(&qword_100228800, &qword_1001D4F90);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v33 - v24;
  v26 = *a1;
  sub_100024B78(&qword_100228858, &qword_100228830, &qword_1001D4FC0);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  (*(v15 + 8))(v19, v14);
  v27 = sub_1001CFDA0();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v7, v34, v27);
  (*(v28 + 56))(v7, 0, 1, v27);
  sub_1001CF9F0();
  sub_100011F00(v7, &qword_1002288B0, &qword_1001D5FC0);
  v29 = sub_100011AC0(&qword_100228B20, &qword_1001D5380);
  v30 = v36;
  v36[3] = v29;
  v30[4] = sub_10003DAC0();
  sub_10003B47C(v30);
  sub_100024B78(&qword_100228898, &qword_100228800, &qword_1001D4F90);
  sub_100024B78(&qword_100228B48, &qword_100228B18, &qword_1001D5378);
  sub_10003ACD4();
  v31 = v37;
  sub_1001CF970();
  (*(v38 + 8))(v13, v31);
  return (*(v21 + 8))(v25, v20);
}

uint64_t sub_100037F90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a3;
  v82 = a4;
  v6 = sub_1001CF9E0();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  __chkstk_darwin(v6, v8);
  v72 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_100228810, &qword_1001D4FA0);
  v11 = *(v10 - 8);
  v78 = v10;
  v79 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v71 = v61 - v14;
  v73 = sub_100011AC0(&qword_1002289E0, &qword_1001D5180);
  v77 = *(v73 - 8);
  v15 = *(v77 + 64);
  __chkstk_darwin(v73, v16);
  v67 = v61 - v17;
  v18 = sub_100011AC0(&qword_1002289E8, &qword_1001D5188);
  v19 = *(v18 - 8);
  v80 = v18;
  v81 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v69 = v61 - v22;
  v23 = sub_100011AC0(&qword_1002289F0, &qword_1001D5190);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  v28 = v61 - v27;
  v29 = sub_100011AC0(&qword_1002289F8, &qword_1001D5198);
  v30 = *(v29 - 8);
  v64 = v29;
  v65 = v30;
  v31 = *(v30 + 64);
  __chkstk_darwin(v29, v32);
  v34 = v61 - v33;
  v62 = sub_100011AC0(&qword_100228AC0, &qword_1001D5358);
  v63 = *(v62 - 8);
  v35 = *(v63 + 64);
  __chkstk_darwin(v62, v36);
  v38 = v61 - v37;
  v68 = sub_100011AC0(&qword_100228AC8, &unk_1001D5360);
  v70 = *(v68 - 8);
  v39 = *(v70 + 64);
  __chkstk_darwin(v68, v40);
  v66 = v61 - v41;
  v61[2] = *a1;
  v83 = a2;
  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  sub_1001CF9F0();
  sub_100024B78(&qword_100228A08, &qword_1002289F0, &qword_1001D5190);
  sub_1001CFA00();
  swift_getKeyPath();
  sub_1001CF980();

  v42 = v24 + 8;
  v43 = *(v24 + 8);
  v61[1] = v42;
  v43(v28, v23);
  v61[4] = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100024B78(&qword_100228AE0, &qword_100228AC0, &qword_1001D5358);
  v61[3] = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100024B78(&qword_100228A10, &qword_1002289F8, &qword_1001D5198);
  sub_100024B78(&qword_100228AE8, &unk_100230200, &qword_1001D4F80);
  v44 = v62;
  v45 = v64;
  sub_1001CF990();
  (*(v65 + 8))(v34, v45);
  (*(v63 + 8))(v38, v44);
  sub_1001CFA00();
  swift_getKeyPath();
  v46 = v67;
  sub_1001CF980();

  v43(v28, v23);
  sub_1001CFD60();
  v47 = v71;
  sub_1001CF9F0();
  v49 = v74;
  v48 = v75;
  v50 = v72;
  (*(v74 + 104))(v72, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v75);
  sub_100024B78(&qword_100228A18, &qword_1002289E0, &qword_1001D5180);
  sub_100024B78(&qword_100228880, &qword_100228810, &qword_1001D4FA0);
  sub_10003E3A8(&qword_100230230, 255, &type metadata accessor for Date);
  v51 = v69;
  v52 = v47;
  v53 = v73;
  v54 = v78;
  sub_1001CF9A0();
  (*(v49 + 8))(v50, v48);
  (*(v79 + 8))(v52, v54);
  (*(v77 + 8))(v46, v53);
  v55 = sub_100011AC0(&qword_100228B00, &qword_1001D5370);
  v56 = v82;
  v82[3] = v55;
  v56[4] = sub_10003DA34();
  sub_10003B47C(v56);
  sub_100024B78(&qword_100228B10, &qword_100228AC8, &unk_1001D5360);
  sub_100024B78(&qword_100228A60, &qword_1002289E8, &qword_1001D5188);
  v57 = v66;
  v58 = v68;
  v59 = v80;
  sub_1001CF9C0();
  (*(v81 + 8))(v51, v59);
  return (*(v70 + 8))(v57, v58);
}

uint64_t sub_10003888C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_100038938(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_10003E3A8(&qword_1002287C0, a2, type metadata accessor for AttestationStore);

  return ModelActor.unownedExecutor.getter(v3, v4);
}

uint64_t sub_1000389C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 56) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 48) = *v5;
  sub_10003E3A8(&qword_1002287B8, a2, type metadata accessor for AttestationStore);
  v8 = sub_1001D1A70();

  return _swift_task_switch(sub_100038A88, v8, v7);
}

uint64_t sub_100038A88()
{
  v1 = *(v0 + 48);
  v2 = sub_1000278B4(*(v0 + 16), *(v0 + 24), *(v0 + 56), *(v0 + 32), *(v0 + 40));
  v3 = *(v0 + 8);
  v4 = v2 & 1;

  return v3(v4);
}

uint64_t sub_100038AF8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = *v2;
  sub_10003E3A8(&qword_1002287B8, a2, type metadata accessor for AttestationStore);
  v5 = sub_1001D1A70();

  return _swift_task_switch(sub_100038BAC, v5, v4);
}

uint64_t sub_100038BAC()
{
  v1 = *(v0 + 16);
  sub_10002FC88();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100038C0C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  sub_10003E3A8(&qword_1002287B8, a2, type metadata accessor for AttestationStore);
  v5 = sub_1001D1A70();

  return _swift_task_switch(sub_100038CC4, v5, v4);
}

uint64_t sub_100038CC4()
{
  v1 = v0[4];
  sub_100030670(v0[2], v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100038D28(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  sub_10003E3A8(&qword_1002287B8, a2, type metadata accessor for AttestationStore);
  v5 = sub_1001D1A70();

  return _swift_task_switch(sub_100038DE0, v5, v4);
}

uint64_t sub_100038DE0()
{
  v1 = v0[4];
  v2 = sub_100031CB4(v0[2], v0[3]);
  v3 = v0[1];
  v4 = v2;

  return v3(v4);
}

uint64_t sub_100038E48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *v6;
  *(v7 + 48) = a6;
  *(v7 + 56) = v8;
  sub_10003E3A8(&qword_1002287B8, a2, type metadata accessor for AttestationStore);
  v10 = sub_1001D1A70();

  return _swift_task_switch(sub_100038F08, v10, v9);
}

uint64_t sub_100038F08()
{
  v1 = *(v0 + 56);
  v2 = sub_100032BFC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 64), *(v0 + 40), *(v0 + 48));
  v3 = *(v0 + 8);
  v4 = v2 & 1;

  return v3(v4);
}

uint64_t sub_100038F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  sub_10003E3A8(&qword_1002287B8, a2, type metadata accessor for AttestationStore);
  v7 = sub_1001D1A70();

  return _swift_task_switch(sub_100039030, v7, v6);
}

uint64_t sub_100039030()
{
  v1 = v0[5];
  v2 = sub_1000343D0(v0[2], v0[3], v0[4]);
  v3 = v0[1];
  v4 = v2;

  return v3(v4);
}

uint64_t sub_1000390A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_1000390C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000391DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE80();
}

uint64_t sub_1000392B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000393CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE80();
}

uint64_t sub_1000394A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E0, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001D15B0();

  *a2 = v5;
  return result;
}

uint64_t sub_1000395BC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_1002287E8, 255, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE80();
}

uint64_t sub_10003969C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE80();
}

double sub_100039784@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  sub_10003C7CC();
  sub_1001D15B0();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100039898(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE80();
}

uint64_t sub_100039974@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100039A88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE80();
}

uint64_t sub_100039B64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100039C78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE80();
}

uint64_t sub_100039D54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100039E68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE80();
}

double sub_100039F44@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003E3A8(&qword_1002289D8, 255, _s8SchemaV2O4NodeCMa);
  sub_10003C6D0();
  sub_1001D15B0();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10003A05C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10003E3A8(&qword_100228A68, 255, _s8SchemaV2O4NodeCMa);
  sub_1001CFE80();
}

uint64_t sub_10003A138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  if (v4 != v2[2])
  {
    goto LABEL_4;
  }

  if (sub_1000FA2C0(a1))
  {
    v4 = v2[1];
LABEL_4:
    v2[1] = v4 + 1;
    v5 = sub_1001D0720();
    v12 = *(v5 - 8);
    (*(v12 + 16))(a2, *v2 + ((*(v12 + 80) + 40) & ~*(v12 + 80)) + *(v12 + 72) * v4, v5);
    v6 = *(v12 + 56);
    v7 = a2;
    v8 = 0;
    v9 = v5;
    goto LABEL_6;
  }

  v10 = sub_1001D0720();
  v6 = *(*(v10 - 8) + 56);
  v9 = v10;
  v7 = a2;
  v8 = 1;
LABEL_6:

  return v6(v7, v8, 1, v9);
}

uint64_t sub_10003A288(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100008F3C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10003A37C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10003A448(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10003A58C(uint64_t a1)
{
  v3 = sub_1001D0720();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&qword_100228AF0, &qword_1001E1630);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v65 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12, v14);
  v61 = &v55 - v16;
  v18 = __chkstk_darwin(v15, v17);
  v64 = &v55 - v19;
  v20 = *(a1 + 24);
  v21 = *v1;
  v22 = *(*v1 + 16);
  v23 = v22 + v20;
  if (__OFADD__(v22, v20))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v3;
  v66 = v8;
  if (!isUniquelyReferenced_nonNull_native || (v26 = v21[3] >> 1, v26 < v23))
  {
    if (v22 <= v23)
    {
      v27 = v22 + v20;
    }

    else
    {
      v27 = v22;
    }

    v21 = sub_10000998C(isUniquelyReferenced_nonNull_native, v27, 1, v21);
    v26 = v21[3] >> 1;
  }

  v28 = v21[2];
  v29 = *(v4 + 80);
  v60 = (v29 + 32) & ~v29;
  v63 = *(v4 + 72);
  v30 = v26 - v28;
  v31 = sub_10003BBF8((a1 + 16), a1 + ((v29 + 40) & ~v29), v21 + v60 + v63 * v28, v26 - v28, a1);
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v67 = v31;
  v68 = v33;
  v69 = v35;
  if (v37 < v20)
  {
    goto LABEL_16;
  }

  if (v37 >= 1)
  {
    v38 = v21[2];
    v39 = __OFADD__(v38, v37);
    v40 = v38 + v37;
    if (v39)
    {
      __break(1u);
      goto LABEL_21;
    }

    v21[2] = v40;
  }

  if (v37 == v30)
  {
LABEL_17:
    v56 = v1;
    v33 = v21[2];
    v42 = v64;
    sub_10003A138(v18, v64);
    v30 = v61;
    sub_10001208C(v42, v61, &qword_100228AF0, &qword_1001E1630);
    v57 = *(v4 + 48);
    v58 = v4 + 48;
    if (v57(v30, 1, v62) == 1)
    {
      v1 = v56;
LABEL_19:
      sub_100011F00(v64, &qword_100228AF0, &qword_1001E1630);

      result = sub_100011F00(v30, &qword_100228AF0, &qword_1001E1630);
      goto LABEL_14;
    }

LABEL_21:
    v43 = (v4 + 32);
    v55 = (v4 + 8);
    v1 = v56;
    v44 = v65;
    do
    {
      sub_100011F00(v30, &qword_100228AF0, &qword_1001E1630);
      v46 = v21[3];
      v47 = v46 >> 1;
      if ((v46 >> 1) < v33 + 1)
      {
        v21 = sub_10000998C(v46 > 1, v33 + 1, 1, v21);
        v47 = v21[3] >> 1;
      }

      sub_10001208C(v64, v44, &qword_100228AF0, &qword_1001E1630);
      if (v57(v44, 1, v62) == 1)
      {
LABEL_22:
        sub_100011F00(v44, &qword_100228AF0, &qword_1001E1630);
        v45 = v33;
      }

      else
      {
        v59 = *v43;
        if (v33 <= v47)
        {
          v45 = v47;
        }

        else
        {
          v45 = v33;
        }

        v48 = v62;
        v49 = v21 + v60 + v63 * v33;
        while (1)
        {
          v59(v66, v44, v48);
          if (v45 == v33)
          {
            break;
          }

          v50 = v43;
          v51 = v64;
          sub_100011F00(v64, &qword_100228AF0, &qword_1001E1630);
          v52 = (v59)(v49, v66, v48);
          ++v33;
          sub_10003A138(v52, v51);
          v1 = v56;
          v53 = v51;
          v43 = v50;
          v44 = v65;
          sub_10001208C(v53, v65, &qword_100228AF0, &qword_1001E1630);
          v54 = v57(v44, 1, v48);
          v49 += v63;
          if (v54 == 1)
          {
            goto LABEL_22;
          }
        }

        (*v55)(v66, v48);
        v33 = v45;
      }

      v21[2] = v45;
      v30 = v61;
      sub_10001208C(v64, v61, &qword_100228AF0, &qword_1001E1630);
    }

    while (v57(v30, 1, v62) != 1);
    goto LABEL_19;
  }

LABEL_14:
  *v1 = v21;
  return result;
}

uint64_t sub_10003AAB4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_10003AB60(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

unint64_t sub_10003AC1C()
{
  result = qword_1002287F0;
  if (!qword_1002287F0)
  {
    sub_100011DF4(&unk_100230200, &qword_1001D4F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002287F0);
  }

  return result;
}

uint64_t sub_10003AC98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100045754();
}

unint64_t sub_10003ACD4()
{
  result = qword_1002288A8;
  if (!qword_1002288A8)
  {
    sub_100011DF4(&qword_1002288B0, &qword_1001D5FC0);
    sub_10003E3A8(&qword_100227AE0, 255, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288A8);
  }

  return result;
}

unint64_t sub_10003AD8C()
{
  result = qword_1002288C0;
  if (!qword_1002288C0)
  {
    sub_100011DF4(&qword_1002288B8, &qword_1001D5090);
    sub_10003AE18();
    sub_10003B314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288C0);
  }

  return result;
}

unint64_t sub_10003AE18()
{
  result = qword_1002288C8;
  if (!qword_1002288C8)
  {
    sub_100011DF4(&qword_100228850, &qword_1001D4FE0);
    sub_10003AEA4();
    sub_10003B0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288C8);
  }

  return result;
}

unint64_t sub_10003AEA4()
{
  result = qword_1002288D0;
  if (!qword_1002288D0)
  {
    sub_100011DF4(&qword_100228848, &qword_1001D4FD8);
    sub_10003AF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288D0);
  }

  return result;
}

unint64_t sub_10003AF28()
{
  result = qword_1002288D8;
  if (!qword_1002288D8)
  {
    sub_100011DF4(&qword_100228840, &qword_1001D4FD0);
    sub_10003AFB4();
    sub_10003B064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288D8);
  }

  return result;
}

unint64_t sub_10003AFB4()
{
  result = qword_1002288E0;
  if (!qword_1002288E0)
  {
    sub_100011DF4(&qword_100228838, &qword_1001D4FC8);
    sub_100024B78(&qword_1002288E8, &qword_100228830, &qword_1001D4FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288E0);
  }

  return result;
}

unint64_t sub_10003B064()
{
  result = qword_1002288F0;
  if (!qword_1002288F0)
  {
    sub_100011DF4(&qword_100228828, &qword_1001D4FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288F0);
  }

  return result;
}

unint64_t sub_10003B0E8()
{
  result = qword_1002288F8;
  if (!qword_1002288F8)
  {
    sub_100011DF4(&qword_100228820, &qword_1001D4FB0);
    sub_10003B174();
    sub_10003B224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002288F8);
  }

  return result;
}

unint64_t sub_10003B174()
{
  result = qword_100228900;
  if (!qword_100228900)
  {
    sub_100011DF4(&qword_100228818, &qword_1001D4FA8);
    sub_100024B78(&qword_1002288E8, &qword_100228830, &qword_1001D4FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228900);
  }

  return result;
}

unint64_t sub_10003B224()
{
  result = qword_100228908;
  if (!qword_100228908)
  {
    sub_100011DF4(&qword_100228810, &qword_1001D4FA0);
    sub_10003E3A8(&qword_100228910, 255, &type metadata accessor for Date);
    sub_10003E3A8(&qword_100228918, 255, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228908);
  }

  return result;
}

unint64_t sub_10003B314()
{
  result = qword_100228920;
  if (!qword_100228920)
  {
    sub_100011DF4(&qword_100228808, &qword_1001D4F98);
    sub_10003B3CC();
    sub_100024B78(&qword_100228930, &qword_1002287F8, &qword_1001D4F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228920);
  }

  return result;
}

unint64_t sub_10003B3CC()
{
  result = qword_100228928;
  if (!qword_100228928)
  {
    sub_100011DF4(&qword_100228800, &qword_1001D4F90);
    sub_100024B78(&qword_1002288E8, &qword_100228830, &qword_1001D4FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228928);
  }

  return result;
}

uint64_t *sub_10003B47C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10003B4E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000458A8();
}

unint64_t sub_10003B4FC()
{
  result = qword_100228948;
  if (!qword_100228948)
  {
    sub_100011DF4(&qword_1002288B0, &qword_1001D5FC0);
    sub_10003E3A8(&qword_100228950, 255, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228948);
  }

  return result;
}

uint64_t *sub_10003B610(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_10003B674()
{
  result = qword_100228960;
  if (!qword_100228960)
  {
    sub_100011DF4(&unk_100230200, &qword_1001D4F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228960);
  }

  return result;
}

uint64_t sub_10003B740()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100045800();
}

uint64_t sub_10003B75C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10004565C();
}

unint64_t sub_10003B7BC()
{
  result = qword_100228998;
  if (!qword_100228998)
  {
    sub_100011DF4(&qword_100228990, &qword_1001D5160);
    sub_10003AEA4();
    sub_10003B848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228998);
  }

  return result;
}

unint64_t sub_10003B848()
{
  result = qword_1002289A0;
  if (!qword_1002289A0)
  {
    sub_100011DF4(&qword_100228978, &qword_1001D5158);
    sub_10003B8D4();
    sub_10003B984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002289A0);
  }

  return result;
}

unint64_t sub_10003B8D4()
{
  result = qword_1002289A8;
  if (!qword_1002289A8)
  {
    sub_100011DF4(&qword_100228970, &qword_1001D5150);
    sub_100024B78(&qword_1002288E8, &qword_100228830, &qword_1001D4FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002289A8);
  }

  return result;
}

unint64_t sub_10003B984()
{
  result = qword_1002289B0;
  if (!qword_1002289B0)
  {
    sub_100011DF4(&qword_100228968, &qword_1001D5148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002289B0);
  }

  return result;
}

void sub_10003BA2C()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      swift_stdlib_random();
      v5 = (0 * v1) >> 64;
      if (v1)
      {
        if (-v1 % v1)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_20;
        }

        if (v7 >= v9)
        {
          goto LABEL_21;
        }

        v10 = *(v8 + 32 + 8 * v3);
        v11 = *(v8 + 32 + 8 * v7);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_10003BBE4(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_22;
        }

        v13 = v8 + 8 * v3;
        v14 = *(v13 + 32);
        *(v13 + 32) = v11;

        sub_1001D2080();
        v15 = *v0;
        v16 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v15;
        if ((v16 & 1) == 0)
        {
          v15 = sub_10003BBE4(v15);
          *v0 = v15;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_23;
        }

        v17 = v15 + 8 * v7;
        v18 = *(v17 + 32);
        *(v17 + 32) = v10;

        sub_1001D2080();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t sub_10003BBF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1000F884C(a1, a2, &v16);
  v9 = v17;
  if (v17 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v17;
  }

  if (v10 < 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v16)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    sub_1001D0720();
    result = swift_arrayInitWithCopy();
  }

  if (v9 >= a4 || (v20 & 1) != 0)
  {
    sub_10003D9A0((a5 + 16), v10, a5);
  }

  if (a4 - v10 >= v19)
  {
    v12 = v19;
  }

  else
  {
    v12 = a4 - v10;
  }

  v13 = v10 + v12;
  if (__OFADD__(v10, v12))
  {
    goto LABEL_28;
  }

  if (v13 < v10)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = v18;
    if (a3)
    {
      v15 = a3 + *(*(sub_1001D0720() - 8) + 72) * v10;
      if (!v14)
      {
        goto LABEL_25;
      }
    }

    else if (!v18)
    {
LABEL_25:
      sub_10003D9A0((a5 + 16), v13, a5);
    }

    if (v12)
    {
      sub_1001D0720();
      swift_arrayInitWithCopy();
    }

    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
  __break(1u);
  return result;
}

void *sub_10003BD80(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1001D2190();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10003AB60(v3, 0);
  sub_10003BE14((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10003BE14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1001D2190();
    a2 = v12;
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
      v7 = a2;
      result = sub_1001D2190();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100024B78(&qword_100228C28, &qword_100228C20, &qword_1001D53D8);
          for (i = 0; i != v6; ++i)
          {
            sub_100011AC0(&qword_100228C20, &qword_1001D53D8);
            v9 = sub_10003BFB8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        _s8SchemaV2O4NodeCMa(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10003BFB8(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_1001D2040();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_10003C038;
  }

  __break(1u);
  return result;
}

unint64_t sub_10003C078()
{
  result = qword_100228A28;
  if (!qword_100228A28)
  {
    sub_100011DF4(&qword_100228A20, &qword_1001D51F8);
    sub_10003C104();
    sub_10003C240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A28);
  }

  return result;
}

unint64_t sub_10003C104()
{
  result = qword_100228A30;
  if (!qword_100228A30)
  {
    sub_100011DF4(&qword_100228A00, &qword_1001D51A0);
    sub_10003C190();
    sub_10003B064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A30);
  }

  return result;
}

unint64_t sub_10003C190()
{
  result = qword_100228A38;
  if (!qword_100228A38)
  {
    sub_100011DF4(&qword_1002289F8, &qword_1001D5198);
    sub_100024B78(&qword_100228A40, &qword_1002289F0, &qword_1001D5190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A38);
  }

  return result;
}

unint64_t sub_10003C240()
{
  result = qword_100228A48;
  if (!qword_100228A48)
  {
    sub_100011DF4(&qword_1002289E8, &qword_1001D5188);
    sub_10003C2CC();
    sub_10003B224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A48);
  }

  return result;
}

unint64_t sub_10003C2CC()
{
  result = qword_100228A50;
  if (!qword_100228A50)
  {
    sub_100011DF4(&qword_1002289E0, &qword_1001D5180);
    sub_100024B78(&qword_100228A40, &qword_1002289F0, &qword_1001D5190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A50);
  }

  return result;
}

unint64_t sub_10003C3C4()
{
  result = qword_100228A78;
  if (!qword_100228A78)
  {
    sub_100011DF4(&qword_100228A70, &qword_1001D5200);
    sub_10003B224();
    sub_10003C2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A78);
  }

  return result;
}

uint64_t sub_10003C450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidatedAttestation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003C4B4(uint64_t a1)
{
  v2 = type metadata accessor for ValidatedAttestation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003C518()
{
  result = qword_100228A90;
  if (!qword_100228A90)
  {
    sub_100011DF4(&qword_100228A88, &qword_1001E1CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A90);
  }

  return result;
}

unint64_t sub_10003C5C0()
{
  result = qword_100228A98;
  if (!qword_100228A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228A98);
  }

  return result;
}

uint64_t sub_10003C658()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000468E0();
}

uint64_t sub_10003C678(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1001D2470() & 1;
  }
}

unint64_t sub_10003C6D0()
{
  result = qword_100228AA0;
  if (!qword_100228AA0)
  {
    sub_100011DF4(&qword_100228AA8, &qword_1001D5BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228AA0);
  }

  return result;
}

uint64_t sub_10003C7AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100046268();
}

unint64_t sub_10003C7CC()
{
  result = qword_100228AB0;
  if (!qword_100228AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228AB0);
  }

  return result;
}

uint64_t sub_10003C820()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100046028();
}

uint64_t sub_10003C860()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_100045E00();
}

unint64_t sub_10003C880()
{
  result = qword_100228AB8;
  if (!qword_100228AB8)
  {
    sub_100011DF4(&qword_100228A88, &qword_1001E1CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228AB8);
  }

  return result;
}

uint64_t sub_10003C904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidatedAttestation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003C968()
{
  result = qword_100228AD0;
  if (!qword_100228AD0)
  {
    sub_100011DF4(&qword_100228AC8, &unk_1001D5360);
    sub_10003C9F4();
    sub_10003C190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228AD0);
  }

  return result;
}

unint64_t sub_10003C9F4()
{
  result = qword_100228AD8;
  if (!qword_100228AD8)
  {
    sub_100011DF4(&qword_100228AC0, &qword_1001D5358);
    sub_10003AC1C();
    sub_10003B674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228AD8);
  }

  return result;
}

void sub_10003CA80()
{
  v34 = sub_1001CFB10();
  v0 = *(v34 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v34, v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [objc_opt_self() defaultManager];
  sub_1001CFA30();
  v5 = sub_1001D17A0();

  v6 = [v33 fileExistsAtPath:v5];

  if (v6)
  {
    sub_1001CFA80(v7);
    v9 = v8;
    v35 = 0;
    v10 = [v33 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:0 error:&v35];

    v11 = v35;
    if (v10)
    {
      v12 = sub_1001D19D0();
      v13 = v11;

      v14 = *(v12 + 16);
      if (v14)
      {
        v17 = *(v0 + 16);
        v15 = v0 + 16;
        v16 = v17;
        v18 = *(v15 + 64);
        v32 = v12;
        v19 = v12 + ((v18 + 32) & ~v18);
        v20 = *(v15 + 56);
        v21 = (v15 - 8);
        v17(v4, v19, v34);
        while (1)
        {
          sub_1001CFA70();
          v37._object = 0x80000001001E3610;
          v37._countAndFlagsBits = 0xD00000000000001DLL;
          v23 = sub_1001D18E0(v37);

          if (v23)
          {
            sub_10014D874(v4);
          }

          v22 = v34;
          (*v21)(v4, v34);
          v19 += v20;
          if (!--v14)
          {
            break;
          }

          v16(v4, v19, v22);
        }
      }
    }

    else
    {
      v25 = v35;
      sub_1001CFA20();

      swift_willThrow();
      if (qword_1002276A0 != -1)
      {
        swift_once();
      }

      v26 = sub_1001D0E60();
      sub_10003A37C(v26, qword_1002286F8);
      swift_errorRetain();
      v27 = sub_1001D0E50();
      v28 = sub_1001D1DE0();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        swift_errorRetain();
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v31;
        *v30 = v31;
        _os_log_impl(&_mh_execute_header, v27, v28, "error obtaining contents of stores directory error=%@", v29, 0xCu);
        sub_100011F00(v30, &unk_1002301D0, &qword_1001D4F50);
      }

      else
      {
      }
    }
  }

  else
  {
    v24 = v33;
  }
}

void *sub_10003CEB0(uint64_t a1, char *a2)
{
  v4 = sub_1001D15E0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001D15F0();
  v71 = *(v8 - 8);
  v9 = *(v71 + 64);
  __chkstk_darwin(v8, v10);
  v73 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001CFB10();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v16 = __chkstk_darwin(v12, v15);
  v65 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v21 = &v61 - v20;
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v61 - v24;
  __chkstk_darwin(v23, v26);
  v28 = &v61 - v27;
  v74[0] = 0x5F7365726F7453;
  v74[1] = 0xE700000000000000;
  v72 = a1;
  v75._countAndFlagsBits = sub_1001D02B0();
  sub_1001D18B0(v75);

  v70 = a2;
  sub_1001CFA90();

  sub_10003CA80();
  v69 = v28;
  sub_1001CFA90();
  if (qword_1002276A0 != -1)
  {
    swift_once();
  }

  v29 = sub_1001D0E60();
  v30 = sub_10003A37C(v29, qword_1002286F8);
  v31 = v13[2];
  v31(v21, v25, v12);
  v64 = v30;
  v32 = sub_1001D0E50();
  v33 = v21;
  v34 = sub_1001D1E00();
  v35 = os_log_type_enabled(v32, v34);
  v68 = v13;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v63 = v25;
    v37 = v36;
    v61 = swift_slowAlloc();
    v74[0] = v61;
    *v37 = 136315138;
    sub_10003E3A8(&qword_1002302F0, 255, &type metadata accessor for URL);
    v38 = sub_1001D23A0();
    v62 = v31;
    v39 = v8;
    v41 = v40;
    v67 = v13[1];
    v67(v33, v12);
    v42 = sub_1000954E0(v38, v41, v74);
    v8 = v39;
    v31 = v62;

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v32, v34, "attestation store path: %s", v37, 0xCu);
    sub_100011CF0(v61);

    v25 = v63;
  }

  else
  {

    v67 = v13[1];
    v67(v33, v12);
  }

  v31(v65, v25, v12);
  sub_1001D15D0();
  v43 = v73;
  sub_1001D1600();
  sub_10003E300();
  sub_1001D16D0();
  sub_1001D1630();
  sub_1001D1550();
  sub_10003E354();
  sub_100011AC0(&qword_100228C80, &unk_1001D5400);
  v44 = v71;
  v45 = *(v71 + 72);
  v46 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1001D39F0;
  (*(v44 + 16))(v47 + v46, v43, v8);

  v48 = sub_1001D1540();
  type metadata accessor for AttestationStore();
  v49 = swift_allocObject();
  v50 = sub_1001D1510();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();

  sub_1001D1520();
  v53 = sub_1001D1620();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = sub_1001D1610();

  v57 = v67;
  v67(v70, v12);
  v58 = sub_1001D02E0();
  (*(*(v58 - 8) + 8))(v72, v58);
  (*(v44 + 8))(v43, v8);
  v57(v25, v12);
  v57(v69, v12);
  v59 = sub_10003E3A8(&qword_100228C88, 255, &type metadata accessor for DefaultSerialModelExecutor);
  result = v49;
  v49[2] = v56;
  v49[3] = v59;
  v49[4] = v48;
  return result;
}

uint64_t sub_10003D6F0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v23 = a1;
  v2 = sub_1001D02E0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001CFB10();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v23 - v15;
  v17 = enum case for TC2Environment.production(_:);
  v18 = v3[13];
  v18(v7, enum case for TC2Environment.production(_:), v2);
  v27 = 0x5F7365726F7453;
  v28 = 0xE700000000000000;
  v29._countAndFlagsBits = sub_1001D02B0();
  sub_1001D18B0(v29);

  sub_1001CFA90();

  v19 = v3[1];
  v19(v7, v2);
  v18(v7, v17, v2);
  v27 = 0x5F7365726F7453;
  v28 = 0xE700000000000000;
  v30._countAndFlagsBits = sub_1001D02B0();
  sub_1001D18B0(v30);

  sub_1001CFA90();

  v19(v7, v2);
  sub_10014D240(v16, v13);
  v20 = v25;
  v21 = *(v24 + 8);
  v21(v13, v25);
  return (v21)(v16, v20);
}

uint64_t *sub_10003D9A0(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v5 = *result;
  if (v3 + a2 >= *result)
  {
    v6 = *result;
  }

  if (v4 == a2)
  {
    return a3;
  }

  v7 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v7, v5);
      if (v7 < v5)
      {
        return a3;
      }

      v7 -= v5;
      if (!v8)
      {
        return a3;
      }

      __break(1u);
    }

    if ((v7 & 0x8000000000000000) == 0 || !__OFADD__(v7, v5))
    {
      return a3;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003DA34()
{
  result = qword_100228B08;
  if (!qword_100228B08)
  {
    sub_100011DF4(&qword_100228B00, &qword_1001D5370);
    sub_10003C968();
    sub_10003C240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B08);
  }

  return result;
}

unint64_t sub_10003DAC0()
{
  result = qword_100228B28;
  if (!qword_100228B28)
  {
    sub_100011DF4(&qword_100228B20, &qword_1001D5380);
    sub_10003B3CC();
    sub_10003DB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B28);
  }

  return result;
}

unint64_t sub_10003DB4C()
{
  result = qword_100228B30;
  if (!qword_100228B30)
  {
    sub_100011DF4(&qword_100228B18, &qword_1001D5378);
    sub_10003B4FC();
    sub_10003DBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B30);
  }

  return result;
}

unint64_t sub_10003DBD8()
{
  result = qword_100228B38;
  if (!qword_100228B38)
  {
    sub_100011DF4(&qword_1002288B0, &qword_1001D5FC0);
    sub_10003E3A8(&qword_100228B40, 255, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228B38);
  }

  return result;
}

unint64_t sub_10003DCB4()
{
  result = qword_100228BA8;
  if (!qword_100228BA8)
  {
    sub_100011DF4(&qword_100228A88, &qword_1001E1CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BA8);
  }

  return result;
}

unint64_t sub_10003DD30()
{
  result = qword_100228BD8;
  if (!qword_100228BD8)
  {
    sub_100011DF4(&qword_100228BD0, &qword_1001D53D0);
    sub_10003DDBC();
    sub_10003C240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BD8);
  }

  return result;
}

unint64_t sub_10003DDBC()
{
  result = qword_100228BE0;
  if (!qword_100228BE0)
  {
    sub_100011DF4(&qword_100228B90, &qword_1001D53C8);
    sub_10003DE48();
    sub_10003C968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BE0);
  }

  return result;
}

unint64_t sub_10003DE48()
{
  result = qword_100228BE8;
  if (!qword_100228BE8)
  {
    sub_100011DF4(&qword_100228B88, &qword_1001D53C0);
    sub_10003DED4();
    sub_10003E03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BE8);
  }

  return result;
}

unint64_t sub_10003DED4()
{
  result = qword_100228BF0;
  if (!qword_100228BF0)
  {
    sub_100011DF4(&qword_100228B80, &qword_1001D53B8);
    sub_10003DF8C();
    sub_100024B78(&qword_100228C00, &qword_100228B70, &qword_1001D53A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BF0);
  }

  return result;
}

unint64_t sub_10003DF8C()
{
  result = qword_100228BF8;
  if (!qword_100228BF8)
  {
    sub_100011DF4(&qword_100228B78, &qword_1001D53B0);
    sub_100024B78(&qword_100228A40, &qword_1002289F0, &qword_1001D5190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228BF8);
  }

  return result;
}

unint64_t sub_10003E03C()
{
  result = qword_100228C08;
  if (!qword_100228C08)
  {
    sub_100011DF4(&qword_100228B68, &qword_1001D53A0);
    sub_10003DF8C();
    sub_10003E0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C08);
  }

  return result;
}

unint64_t sub_10003E0C8()
{
  result = qword_100228C10;
  if (!qword_100228C10)
  {
    sub_100011DF4(&qword_100228B60, &qword_1001D5398);
    sub_10003C880();
    sub_10003C518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C10);
  }

  return result;
}

unint64_t sub_10003E154()
{
  result = qword_100228C48;
  if (!qword_100228C48)
  {
    sub_100011DF4(&qword_100228C40, &qword_1001D53F0);
    sub_10003E1E0();
    sub_10003C240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C48);
  }

  return result;
}

unint64_t sub_10003E1E0()
{
  result = qword_100228C50;
  if (!qword_100228C50)
  {
    sub_100011DF4(&qword_100228C38, &qword_1001D53E8);
    sub_10003E03C();
    sub_10003C968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C50);
  }

  return result;
}

unint64_t sub_10003E26C()
{
  result = qword_100228C68;
  if (!qword_100228C68)
  {
    sub_100011DF4(&qword_100228C60, &qword_1001D53F8);
    sub_10003AEA4();
    sub_10003B314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C68);
  }

  return result;
}

unint64_t sub_10003E300()
{
  result = qword_100228C70;
  if (!qword_100228C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C70);
  }

  return result;
}

unint64_t sub_10003E354()
{
  result = qword_100228C78;
  if (!qword_100228C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C78);
  }

  return result;
}

uint64_t sub_10003E3A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10003E46C()
{
  sub_100011AC0(&qword_100228CA0, &unk_1001D5470);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001D5410;
  v1 = sub_10003E5EC();
  *(v0 + 32) = &_s8SchemaV1ON;
  *(v0 + 40) = v1;
  v2 = sub_10003E300();
  *(v0 + 48) = &_s8SchemaV2ON;
  *(v0 + 56) = v2;
  return v0;
}

uint64_t sub_10003E4DC()
{
  sub_100011AC0(&qword_100228C90, &qword_1001D5468);
  v0 = sub_1001D1530();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D39F0;
  v5 = (v4 + v3);
  v6 = sub_10003E5EC();
  v7 = sub_10003E300();
  *v5 = &_s8SchemaV1ON;
  v5[1] = v6;
  v5[2] = &_s8SchemaV2ON;
  v5[3] = v7;
  (*(v1 + 104))(v5, enum case for MigrationStage.lightweight(_:), v0);
  return v4;
}

unint64_t sub_10003E5EC()
{
  result = qword_100228C98;
  if (!qword_100228C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228C98);
  }

  return result;
}

uint64_t sub_10003E640()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10003E744@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10003E850(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE80();
}

uint64_t sub_10003E928()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10003EA2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10003EB38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE80();
}

uint64_t sub_10003EC10()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10003ED14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10003EE20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE80();
}

uint64_t sub_10003EEF8()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10003EFFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10003F108(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE80();
}

uint64_t sub_10003F1E0()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15B0();

  return v1;
}

uint64_t sub_10003F2E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15B0();

  *a2 = v5;
  return result;
}

uint64_t sub_10003F3F0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE80();
}

uint64_t sub_10003F4C0()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15C0();
}

uint64_t sub_10003F568()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_100042B94(&qword_100228910, &type metadata accessor for Date);
  sub_1001D15B0();
}

uint64_t sub_10003F6A0(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_100042B94(&qword_100228910, &type metadata accessor for Date);
  sub_1001D15B0();
}

uint64_t sub_10003F7D8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1001CFD60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v9, a1, v4);
  v10 = *a2;
  v15 = v10;
  swift_getKeyPath();
  v13 = v10;
  v14 = v9;
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE80();

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_10003F960()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1000439E8(&qword_1002287F0);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10003FA8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1000439E8(&qword_1002287F0);
  sub_1001D15B0();

  *a2 = v4;
  return result;
}

uint64_t sub_10003FBC0()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1000439E8(&qword_100228960);
  sub_1001D15C0();
}

uint64_t sub_10003FC90()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10003FD94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15B0();

  *a2 = v4;
  return result;
}

uint64_t sub_10003FEA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE80();
}

uint64_t sub_10003FF64()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_1001D15C0();
}

uint64_t sub_10004000C()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_100043914(&qword_100228948, &qword_100228950);
  sub_1001D15B0();
}

uint64_t sub_10004014C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_100043914(&qword_100228948, &qword_100228950);
  sub_1001D15B0();
}

uint64_t sub_10004028C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v11[-v7];
  sub_100043820(a1, &v11[-v7]);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_100042B94(&qword_100228EE8, _s8SchemaV1O8WorkloadCMa);
  sub_1001CFE80();

  return sub_1000438AC(v8);
}

uint64_t sub_1000403BC()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  sub_100043914(&qword_100228B38, &qword_100228B40);
  sub_1001D15C0();
}

void *sub_1000404C0(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = sub_100011AC0(&qword_100228F40, &qword_1001D5A38);
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_10003B47C(v2 + 3);
  sub_1001D1570();
  v5 = v2[7];
  sub_100024DC8(v2 + 3, v2[6]);
  swift_getKeyPath();
  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  sub_1000439E8(&qword_100228960);
  sub_1001D1480();

  *(v2 + 16) = 1;
  sub_1001CFEA0();
  *(v2 + 16) = 0;
  swift_beginAccess();
  sub_100011CF0(v2 + 3);
  sub_1000446FC(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_1000406E0()
{
  v1 = *v0;
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  return sub_1001D15A0();
}

uint64_t sub_100040754()
{
  v1 = *v0;
  sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  return sub_1001D1590();
}

uint64_t sub_1000407C8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_100040848()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_10004094C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100040A58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE80();
}

uint64_t sub_100040B30()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100040C34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100040D40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE80();
}

uint64_t sub_100040E24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE80();
}

uint64_t sub_100040EFC()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_100042B94(&qword_100228910, &type metadata accessor for Date);
  sub_1001D15B0();
}

uint64_t sub_100041034(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_100042B94(&qword_100228910, &type metadata accessor for Date);
  sub_1001D15B0();
}

uint64_t sub_10004116C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1001CFD60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v9, a1, v4);
  v10 = *a2;
  v15 = v10;
  swift_getKeyPath();
  v13 = v10;
  v14 = v9;
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE80();

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1000412F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_100042B94(a4, a5);
  sub_100042B94(&qword_100228918, &type metadata accessor for Date);
  sub_1001D15C0();
}

uint64_t sub_1000413C4()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_10003C7CC();
  sub_1001D15B0();

  return v0;
}

double sub_1000414C4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_10003C7CC();
  sub_1001D15B0();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1000415D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE80();
}

uint64_t sub_1000416A8()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_10003C5C0();
  sub_1001D15C0();
}

uint64_t sub_10004175C()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100041860@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004196C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE80();
}

uint64_t sub_100041A44()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100041B48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100041C54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE80();
}

uint64_t sub_100041D2C()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100041E30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_1001D15B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100041F3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE80();
}

uint64_t sub_100042014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_100042B94(a5, a6);
  sub_1001D15C0();
}

uint64_t sub_1000420B4()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_1000443D0(&qword_100228AA0);
  sub_1001D15B0();

  return v0;
}

double sub_1000421E0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_1000443D0(&qword_100228AA0);
  sub_1001D15B0();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100042314(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100042B94(&qword_100228EC8, _s8SchemaV1O4NodeCMa);
  sub_1001CFE80();
}

uint64_t sub_1000423EC()
{
  swift_getKeyPath();
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  sub_1000443D0(&qword_100228F70);
  sub_1001D15C0();
}

void *sub_1000424C8(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = sub_100011AC0(&qword_100228F78, &qword_1001D5BC8);
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_10003B47C(v2 + 3);
  sub_1001D1570();
  *(v2 + 16) = 1;
  sub_1001CFEA0();
  *(v2 + 16) = 0;
  swift_beginAccess();
  sub_100011CF0(v2 + 3);
  sub_1000446FC(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_100042624(uint64_t *a1)
{
  sub_100011CF0(v1 + 3);
  v3 = *a1;
  v4 = sub_1001CFEB0();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000426F4()
{
  result = sub_1001CFEB0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Int sub_1000427EC()
{
  v2 = *v0;
  sub_1001D2580();
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_100042850()
{
  v1 = *v0;
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  return sub_1001D15A0();
}

Swift::Int sub_1000428C8()
{
  v2 = *v0;
  sub_1001D2580();
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_100042928()
{
  v1 = *v0;
  sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  return sub_1001D1590();
}

uint64_t sub_10004299C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_100042A1C()
{
  sub_100011AC0(&qword_100228F80, &unk_1001D5BD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001D5410;
  v1 = _s8SchemaV1O8WorkloadCMa(0);
  v2 = sub_100042B94(&qword_100228F00, _s8SchemaV1O8WorkloadCMa);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = _s8SchemaV1O4NodeCMa(0);
  v4 = sub_100042B94(&qword_100228EE0, _s8SchemaV1O4NodeCMa);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

uint64_t sub_100042B94(unint64_t *a1, void (*a2)(uint64_t))
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

void (*sub_100042C9C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100044698(v1 + 24, v4);
  return sub_100042D2C;
}

uint64_t sub_100042D60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + 48);
  v8 = *(v4 + 52);
  v9 = swift_allocObject();
  a4(a1);
  return v9;
}

uint64_t sub_100042DF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100011CF0((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_100042E60(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100044698(v1 + 24, v4);
  return sub_100042D2C;
}

void sub_100042EF0(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100044698(*a1, (v4 + 5));
    swift_beginAccess();
    sub_100011CF0((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    sub_100011CF0(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100011CF0((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1000431B8()
{
  v23 = sub_1001D1660();
  v0 = *(v23 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  __chkstk_darwin(v23, v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(&qword_100227A90, &qword_1001D3630);
  v5 = *(v0 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001D5480;
  v22 = v6;
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  *(&v28 + 1) = sub_100011AC0(&qword_100228F20, &qword_1001D5998);
  *&v27 = &_swiftEmptyArrayStorage;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  sub_100011AC0(&qword_100228F28, &unk_1001D5A20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001D39F0;
  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001D5490;
  *(v9 + 32) = swift_getKeyPath();
  *(v9 + 40) = swift_getKeyPath();
  *(v9 + 48) = swift_getKeyPath();
  *(v8 + 32) = v9;
  v10 = sub_100011AC0(&qword_100228F30, &qword_1001D5A30);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_1001D1670();
  *(&v25 + 1) = v10;
  v14 = v21;
  v26 = sub_10004435C(&qword_100228F38, &qword_100228F30, &qword_1001D5A30);
  *&v24 = v13;
  sub_1001D1650();
  v15 = sub_10000926C(0, 1, 1, &_swiftEmptyArrayStorage);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_10000926C(v16 > 1, v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = v15;
  (*(v1 + 32))(&v15[v22 + v17 * v5], v14, v23);
  *&v24 = v7;
  sub_10003A3C4(v18);
  return v24;
}

uint64_t sub_100043820(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043890()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000403BC();
}

uint64_t sub_1000438AC(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100043914(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_1002288B0, &qword_1001D5FC0);
    sub_100042B94(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000439B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10003FF64();
}

uint64_t sub_1000439CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10003FBC0();
}

uint64_t sub_1000439E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&unk_100230200, &qword_1001D4F80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100043AA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10003F4C0();
}

uint64_t sub_100043C28()
{
  v31 = sub_1001D1660();
  v0 = *(v31 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  __chkstk_darwin(v31, v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(&qword_100227A90, &qword_1001D3630);
  v5 = *(v0 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001D5480;
  v30 = v6;
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  sub_100011AC0(&qword_100228F48, &qword_1001D62D0);
  v8 = *(sub_1001D16A0() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001D39F0;
  sub_1001D1690();
  v11 = sub_1001D16B0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1001D16C0();
  *(&v33 + 1) = v11;
  v34 = sub_100042B94(&qword_100228F50, &type metadata accessor for Schema.Attribute);
  *&v32 = v14;
  sub_1001D1650();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1001D1650();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  sub_100011AC0(&qword_100228F58, &qword_1001D5BB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001D5410;
  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001D54A0;
  *(v16 + 32) = swift_getKeyPath();
  *(v15 + 32) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001D54B0;
  *(v17 + 32) = swift_getKeyPath();
  *(v17 + 40) = swift_getKeyPath();
  *(v15 + 40) = v17;
  v18 = sub_100011AC0(&qword_100228F60, &qword_1001D5BB8);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = v29;
  v22 = sub_1001D1670();
  *(&v33 + 1) = v18;
  v34 = sub_10004435C(&qword_100228F68, &qword_100228F60, &qword_1001D5BB8);
  *&v32 = v22;
  sub_1001D1650();
  v23 = sub_10000926C(0, 1, 1, &_swiftEmptyArrayStorage);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_10000926C(v24 > 1, v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = v23;
  (*(v1 + 32))(&v23[v30 + v25 * v5], v21, v31);
  *&v32 = v7;
  sub_10003A3C4(v26);
  return v32;
}

uint64_t sub_10004435C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000443B0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000423EC();
}

uint64_t sub_1000443D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_100228AA8, &qword_1001D5BC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100044544()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000416A8();
}

uint64_t sub_1000445C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000416A8();
}

uint64_t sub_100044698(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000446FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10004472C()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa);
  sub_10003AC1C();
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100044834()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100044938()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100044A3C()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100044B40()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100044C44()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa);
  sub_1000474D8(&qword_100228948, &qword_100228950);
  sub_1001D15B0();
}

uint64_t sub_100044D84()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa);
  sub_100046EEC(&qword_100228910, &type metadata accessor for Date);
  sub_1001D15B0();
}

uint64_t sub_100044EBC()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa);
  sub_10003C880();
  sub_1001D15B0();

  return v0;
}

uint64_t sub_100044FC8()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_100228A68, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002289D8, _s8SchemaV2O4NodeCMa);
  sub_100046EEC(&qword_100228910, &type metadata accessor for Date);
  sub_1001D15B0();
}

uint64_t sub_100045100()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa);
  sub_1001D15B0();

  return v0;
}

uint64_t sub_1000452B0()
{
  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E8, _s8SchemaV2O8WorkloadCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100046EEC(&qword_1002287E0, _s8SchemaV2O8WorkloadCMa);
  sub_1001D15B0();

  return v0;
}