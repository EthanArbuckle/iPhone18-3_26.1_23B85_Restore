uint64_t SpatialPhoto.GyroCameraAnimator.__allocating_init(queue:motionType:changeHandler:)(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  SpatialPhoto.GyroCameraAnimator.init(queue:motionType:changeHandler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SpatialPhoto.GyroMotionType.hashValue.getter()
{
  v1 = *v0;
  sub_25E6D8414();
  MEMORY[0x25F8BC720](v1);
  return sub_25E6D8434();
}

uint64_t SpatialPhoto.GyroCameraAnimator.init(queue:motionType:changeHandler:)(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0x3FF0000000000000;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 64) = 0;
  v9 = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  PXSpatialPhotoConfigureMotionManager(v9);
  *(v4 + 96) = v9;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  v10 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_deviceOrientationChangedDate;
  v11 = sub_25E6D7874();
  __swift_storeEnumTagSinglePayload(v4 + v10, 1, 1, v11);
  v12 = v4 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_previousDeviceOrientationRotation;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 1;
  *(v4 + 16) = a1;
  *(v4 + 24) = v8;
  v13 = a1;
  v14 = sub_25E6CDC3C(v13);

  *(v4 + 88) = v14;
  swift_beginAccess();
  v15 = *(v4 + 64);
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  sub_25E6C6FC8(a3);
  sub_25E6BDF88(v15);
  sub_25E6BDF88(a3);
  return v4;
}

id sub_25E6CDC3C(uint64_t a1)
{
  sub_25E6BB770();
  v2 = sub_25E6D8274();
  v3 = sub_25E6D82D4();

  if (v3)
  {
    v4 = [objc_opt_self() mainQueue];

    return v4;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    [v6 setUnderlyingQueue_];
    return v6;
  }
}

uint64_t sub_25E6CDD30()
{
  result = swift_beginAccess();
  v2 = v0[4].n128_u64[0];
  if (v2)
  {
    swift_beginAccess();
    v3 = v0[3];
    v4 = v0[2];

    v2(v0, v4, v3);
    return sub_25E6BDF88(v2);
  }

  return result;
}

uint64_t sub_25E6CDDE8(__n128 a1, __n128 a2)
{
  swift_beginAccess();
  v2[2] = a1;
  v2[3] = a2;
  return sub_25E6CDD30();
}

uint64_t (*sub_25E6CDE28(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_6_1();
  return sub_25E6CDE74;
}

uint64_t sub_25E6CDE74(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_25E6CDD30();
  }

  return result;
}

uint64_t sub_25E6CDEA8@<X0>(void *a1@<X8>)
{
  result = sub_25E6CDFA8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_25E6CFDB4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_25E6CDF18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_25E6CFD74;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_25E6C6FC8(v1);
  return sub_25E6CDFEC(v4, v3);
}

uint64_t sub_25E6CDFA8()
{
  OUTLINED_FUNCTION_2_1();
  v1 = *(v0 + 64);
  sub_25E6C6FC8(v1);
  return v1;
}

uint64_t sub_25E6CDFEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_2();
  v5 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_25E6BDF88(v5);
}

void sub_25E6CE07C()
{
  v1 = v0;
  v2 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  swift_beginAccess();
  if ((*(v1 + 80) & 1) == 0)
  {
    v12 = *(v1 + 96);
    if ([v12 isDeviceMotionAvailable])
    {
      if (PXSpatialPhotoWantsLightSourceReference())
      {
        v13 = *(v1 + 16);
        LOBYTE(aBlock[0]) = *(v1 + 24);
        _s17LightSubscriptionCMa();
        swift_allocObject();
        *(v1 + 112) = sub_25E6CF220(v13, aBlock);
      }

      [v12 setDeviceMotionUpdateInterval_];
      sub_25E6CE464();
      v14 = *(v1 + 88);
      v15 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_25E6CF5C0;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25E6CE350;
      aBlock[3] = &block_descriptor_1;
      v16 = _Block_copy(aBlock);

      [v12 startDeviceMotionUpdatesToQueue:v14 withHandler:v16];
      _Block_release(v16);
    }

    else
    {
      sub_25E6D7D04();
      v17 = sub_25E6D7DE4();
      v18 = sub_25E6D8224();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_25E6B5000, v17, v18, "GyroCameraAnimator device motion is not available", v19, 2u);
        OUTLINED_FUNCTION_4_2();
      }

      (*(v4 + 8))(v11, v2);
    }
  }
}

uint64_t sub_25E6CE2F0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25E6CE614(result, a2);
  }

  return result;
}

void sub_25E6CE350(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_25E6CE3DC()
{
  result = OUTLINED_FUNCTION_3_2();
  if (*(v0 + 80) == 1)
  {
    if (*(v0 + 112))
    {

      sub_25E6CF38C();
    }

    *(v0 + 112) = 0;

    *(v0 + 80) = 0;
    [*(v0 + 96) stopDeviceMotionUpdates];
    return sub_25E6CE464();
  }

  return result;
}

uint64_t sub_25E6CE464()
{
  v1 = v0[13];
  v0[13] = 0;

  OUTLINED_FUNCTION_3_2();
  v0[6] = 0;
  v0[7] = 0x3FF0000000000000;
  v0[4] = 0;
  v0[5] = 0;
  return sub_25E6CDD30();
}

uint64_t sub_25E6CE4CC(char a1)
{
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + 80) = a1;
  return result;
}

uint64_t SpatialPhoto.GyroCameraAnimator.deinit()
{
  [*(v0 + 96) stopDeviceMotionUpdates];

  sub_25E6BDF88(*(v0 + 64));

  sub_25E6C9520(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_deviceOrientationChangedDate, &qword_27FD015C0);
  return v0;
}

uint64_t SpatialPhoto.GyroCameraAnimator.__deallocating_deinit()
{
  SpatialPhoto.GyroCameraAnimator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_25E6CE614(uint64_t a1, void *a2)
{
  v3 = v2;
  v114 = sub_25E6D81D4();
  OUTLINED_FUNCTION_1_0();
  v113 = v5;
  MEMORY[0x28223BE20](v6, v7, v8, v9);
  OUTLINED_FUNCTION_4();
  v112 = v11 - v10;
  v12 = sub_25E6D7874();
  OUTLINED_FUNCTION_1_0();
  v120 = v13;
  MEMORY[0x28223BE20](v14, v15, v16, v17);
  OUTLINED_FUNCTION_4();
  v119 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD015C0);
  MEMORY[0x28223BE20](v20 - 8, v21, v22, v23);
  OUTLINED_FUNCTION_5_2();
  *&v118 = v24;
  MEMORY[0x28223BE20](v25, v26, v27, v28);
  *&v117 = &v109 - v29;
  v30 = sub_25E6D7DF4();
  OUTLINED_FUNCTION_1_0();
  v32 = v31;
  MEMORY[0x28223BE20](v33, v34, v35, v36);
  OUTLINED_FUNCTION_5_2();
  *&v115 = v37;
  v42 = MEMORY[0x28223BE20](v38, v39, v40, v41);
  v44 = &v109 - v43;
  MEMORY[0x28223BE20](v42, v45, v46, v47);
  v49 = &v109 - v48;
  if (a2)
  {
    v50 = v12;
    v51 = a2;
    sub_25E6D7D04();
    v52 = a2;
    v53 = sub_25E6D7DE4();
    v54 = sub_25E6D8224();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v122 = v32;
      v56 = v30;
      v57 = v55;
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      v59 = a2;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v60;
      *v58 = v60;
      _os_log_impl(&dword_25E6B5000, v53, v54, "PosterSpatialPhotoAnimator error: %@", v57, 0xCu);
      sub_25E6C9520(v58, &unk_27FD010F8);
      OUTLINED_FUNCTION_4_2();
      v30 = v56;
      v32 = v122;
      OUTLINED_FUNCTION_4_2();
    }

    else
    {
    }

    (*(v32 + 8))(v49, v30);
    v12 = v50;
  }

  v61 = [*(v3 + 96) deviceMotion];
  if (v61)
  {
    v62 = v61;
    *&v111 = v30;
    sub_25E6CEF3C(v3, v61);
    v67 = MEMORY[0x277D76620];
    v68 = *MEMORY[0x277D76620];
    if (!*MEMORY[0x277D76620])
    {
      __break(1u);
LABEL_31:
      __break(1u);
      JUMPOUT(0x25E6CEF28);
    }

    v116 = v62;
    v69 = v66;
    v70 = v65;
    v121 = v63;
    v122 = v64;
    v71 = [v68 activeInterfaceOrientation];
    v72 = v32;
    v73 = v70;
    switch(v71)
    {
      case 0uLL:
        sub_25E6D7D04();
        v74 = sub_25E6D7DE4();
        v75 = sub_25E6D8224();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_25E6B5000, v74, v75, "SpatialPhoto.GyroCameraAnimator unknown activeInterfaceOrientation", v76, 2u);
          OUTLINED_FUNCTION_4_2();
        }

        (*(v72 + 8))(v44, v111);
        goto LABEL_17;
      case 1uLL:
        goto LABEL_18;
      case 2uLL:
      case 3uLL:
      case 4uLL:
        sub_25E6D81E4();
        v111 = *v125.vector.f64;
        v115 = *&v125.quaternion.vector.f64[2];
        v124[0] = *v125.vector.f64;
        v124[1] = *&v125.quaternion.vector.f64[2];
        SPRotation3DInverse(v125, v124, &v123);
        sub_25E6D81E4();
        sub_25E6D81E4();
        v69 = v77;
        v73 = v78;
        v121 = v79;
        v122 = v80;
        goto LABEL_18;
      default:
        sub_25E6D7D04();
        v81 = sub_25E6D7DE4();
        v82 = sub_25E6D8224();
        if (!os_log_type_enabled(v81, v82))
        {
          goto LABEL_16;
        }

        v110 = v12;
        v83 = swift_slowAlloc();
        *v83 = 134217984;
        if (!*v67)
        {
          goto LABEL_31;
        }

        *(v83 + 4) = [*v67 *(v72 + 3984)];
        _os_log_impl(&dword_25E6B5000, v81, v82, "Unhandled activeInterfaceOrientation:%ld", v83, 0xCu);
        OUTLINED_FUNCTION_4_2();
        v12 = v110;
LABEL_16:

        (*(v70 + 8))(v115, v111);
LABEL_17:
        v73 = v70;
LABEL_18:
        v84 = *(v3 + 120);
        v85 = v118;
        if (v71 != v84)
        {
          if (v84)
          {
            swift_beginAccess();
            v87 = *(v3 + 48);
            v86 = *(v3 + 56);
            v88 = *(v3 + 40);
            v89 = v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_previousDeviceOrientationRotation;
            *v89 = *(v3 + 32);
            *(v89 + 8) = v88;
            *(v89 + 16) = v87;
            *(v89 + 24) = v86;
            *(v89 + 32) = 0;
            v90 = v73;
            v91 = v117;
            sub_25E6D7864();
            __swift_storeEnumTagSinglePayload(v91, 0, 1, v12);
            v92 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_deviceOrientationChangedDate;
            OUTLINED_FUNCTION_6_1();
            v93 = v91;
            v73 = v90;
            sub_25E6CFC20(v93, v3 + v92);
            swift_endAccess();
          }

          *(v3 + 120) = v71;
        }

        v94 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_deviceOrientationChangedDate;
        swift_beginAccess();
        sub_25E6CFC90(v3 + v94, v85);
        if (__swift_getEnumTagSinglePayload(v85, 1, v12) == 1)
        {
          sub_25E6C9520(v85, &qword_27FD015C0);
          v96 = v121;
          v95 = v122;
        }

        else
        {
          (*(v120 + 32))(v119, v85, v12);
          sub_25E6D7854();
          v98 = v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_previousDeviceOrientationRotation;
          v96 = v121;
          if ((*(v3 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto18GyroCameraAnimator_previousDeviceOrientationRotation + 32) & 1) != 0 || fabs(v97) >= 1.0)
          {
            (*(v120 + 8))(v119, v12);
            *v98 = 0u;
            *(v98 + 16) = 0u;
            *(v98 + 32) = 1;
            v108 = v117;
            __swift_storeEnumTagSinglePayload(v117, 1, 1, v12);
            OUTLINED_FUNCTION_6_1();
            sub_25E6CFC20(v108, v3 + v94);
            swift_endAccess();
            v95 = v122;
          }

          else
          {
            v99 = *MEMORY[0x277D85448];
            v100 = v113;
            v101 = *(v113 + 104);
            v118 = *v98;
            v117 = *(v98 + 16);
            v102 = v112;
            v103 = v114;
            v101(v112, v99, v114);
            sub_25E6D81C4();
            v69 = v104;
            v73 = v105;
            v95 = v106;
            v96 = v107;
            (*(v100 + 8))(v102, v103);
            (*(v120 + 8))(v119, v12);
          }
        }

        swift_beginAccess();
        *(v3 + 32) = v96;
        *(v3 + 40) = v95;
        *(v3 + 48) = v73;
        *(v3 + 56) = v69;
        sub_25E6CDD30();

        break;
    }
  }
}

void sub_25E6CEF3C(uint64_t x0_0, void *a2)
{
  v4 = sub_25E6D7DF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PXSpatialPhotoWantsLightSourceReference())
  {
    if (*(x0_0 + 112))
    {

      v11 = CACurrentMediaTime();
      sub_25E6CF3D0(v11);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
    }

    else
    {
      sub_25E6D7D04();
      v25 = sub_25E6D7DE4();
      v26 = sub_25E6D8224();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_25E6B5000, v25, v26, "lightSubscription is unexpectedly nil, using identity light orientation", v27, 2u);
        MEMORY[0x25F8BCEB0](v27, -1, -1);
      }

      (*(v5 + 8))(v10, v4);
      v19 = 0.0;
      v17 = 0.0;
      v15 = 0;
      v13 = 0x3FF0000000000000;
    }

    v28 = [a2 attitude];
    sub_25E6CF1CC();
    v32 = v30;
    v33 = v29;

    v36 = v15;
    v37 = v13;
    v35.f64[0] = v19;
    v35.f64[1] = v17;
    SPRotation3DInverse(v38, &v35, &v34);
    sub_25E6D81E4();
  }

  else
  {
    v20 = *(x0_0 + 104);
    v21 = [a2 attitude];
    v22 = v21;
    if (v20)
    {
      if (*(x0_0 + 104))
      {
        [v21 multiplyByInverseOfAttitude_];
        sub_25E6CF1CC();
        v32 = v24;
        v33 = v23;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v31 = *(x0_0 + 104);
      *(x0_0 + 104) = v21;
    }
  }
}

uint64_t sub_25E6CF1CC()
{
  [v0 quaternion];

  return sub_25E6D81F4();
}

void *sub_25E6CF220(void *a1, char *a2)
{
  v4 = *a2;
  v2[4] = 0;
  v2[2] = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedInstance];
  v8 = [v7 subscribeOnQueue:v6 activityLevelChangeHandler:0];

  v2[3] = v8;
  if ((v4 & 1) == 0)
  {
    v9 = objc_opt_self();
    v10 = sub_25E6D80C4();
    v11 = [v9 acquire:2 reason:v10];

    v6 = v2[4];
    v2[4] = v11;
  }

  return v2;
}

uint64_t sub_25E6CF328()
{
  sub_25E6CF38C();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_25E6CF35C()
{
  v0 = sub_25E6CF328();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_25E6CF38C()
{
  [*(v0 + 24) invalidate];
  v1 = *(v0 + 32);

  return [v1 invalidate];
}

void sub_25E6CF3D0(double a1)
{
  v3 = sub_25E6D7DF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*(v1 + 24) lightSourceForTargetTime_];
  if (v10)
  {
    v11 = v10;
    [v10 orientation];
    sub_25E6D81F4();
    v17[0] = v13;
    v17[1] = v12;
  }

  else
  {
    sub_25E6D7D04();
    v14 = sub_25E6D7DE4();
    v15 = sub_25E6D8224();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a1;
      _os_log_impl(&dword_25E6B5000, v14, v15, "Unable to get lightSource forTargetTime:%f", v16, 0xCu);
      MEMORY[0x25F8BCEB0](v16, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
  }
}

uint64_t sub_25E6CF588()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25E6CF608()
{
  result = qword_27FD015C8;
  if (!qword_27FD015C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD015C8);
  }

  return result;
}

unint64_t sub_25E6CF65C(uint64_t a1)
{
  result = sub_25E6CF684();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25E6CF684()
{
  result = qword_27FD015D0;
  if (!qword_27FD015D0)
  {
    type metadata accessor for SpatialPhoto.GyroCameraAnimator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD015D0);
  }

  return result;
}

uint64_t type metadata accessor for SpatialPhoto.GyroCameraAnimator()
{
  result = qword_27FD015E0;
  if (!qword_27FD015E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E6CF760@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6CE4A4();
  *a1 = result & 1;
  return result;
}

_BYTE *_s14GyroMotionTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25E6CF884);
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

void sub_25E6CF8C4()
{
  sub_25E6CFBC8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25E6CFBC8()
{
  if (!qword_27FD015F0)
  {
    sub_25E6D7874();
    v0 = sub_25E6D82E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD015F0);
    }
  }
}

uint64_t sub_25E6CFC20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD015C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E6CFC90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD015C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

float64x2_t SPRotation3DInverse@<Q0>(SPRotation3D a1@<0:Q0, 16:Q1>, float64x2_t *a2@<X0>, float64x2_t *a3@<X8>)
{
  v3 = a2[1];
  v4 = 1.0 / vaddvq_f64(vaddq_f64(vmulq_f64(*a2, *a2), vmulq_f64(v3, v3)));
  v5 = vmulq_n_f64(vmulq_f64(v3, xmmword_25E6DB630), v4);
  result = vmulq_n_f64(vnegq_f64(*a2), v4);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_25E6CFD3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E6CFD74(uint64_t a1, __n128 a2, __n128 a3)
{
  v4 = *(v3 + 16);
  v7 = a1;
  v6[0] = a2;
  v6[1] = a3;
  return v4(&v7, v6);
}

void OUTLINED_FUNCTION_4_2()
{

  JUMPOUT(0x25F8BCEB0);
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return swift_beginAccess();
}

id SpatialPhoto.GenerationEffectUIView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_3_1();

  return [v2 v3];
}

char *SpatialPhoto.GenerationEffectUIView.init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_animator) = 0;
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink) = 0;
  v1 = MTLCreateSystemDefaultDevice();
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_device) = v1;
  if (v1)
  {
    v1 = [v1 newCommandQueue];
  }

  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_commandQueue) = v1;
  v22[4] = v0;
  v23 = type metadata accessor for SpatialPhoto.GenerationEffectUIView();
  v2 = OUTLINED_FUNCTION_3_1();
  v5 = objc_msgSendSuper2(v3, v4, v2);
  v6 = [v5 layer];
  objc_opt_self();
  v7 = OUTLINED_FUNCTION_0_3();
  v8 = *&v5[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_device];
  swift_unknownObjectRetain();
  [v7 setDevice_];
  swift_unknownObjectRelease();

  v9 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_4();
  [OUTLINED_FUNCTION_0_3() setPixelFormat_];

  v10 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_4();
  [OUTLINED_FUNCTION_0_3() setFramebufferOnly_];

  v11 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_4();
  [OUTLINED_FUNCTION_0_3() setOpaque_];

  v12 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_3_4();
  [OUTLINED_FUNCTION_0_3() setCompositingFilter_];

  sub_25E6D0178(0, &qword_27FD010E0);
  v22[3] = v23;
  v22[0] = v5;
  v13 = v5;
  v14 = sub_25E6BED78(v22, sel_drawFrameWithDisplayLink_);
  v15 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink;
  v16 = *&v13[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink];
  *&v13[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink] = v14;

  v17 = *&v13[v15];
  v18 = v13;
  if (v17)
  {
    v19 = objc_opt_self();
    v20 = v17;
    v18 = [v19 mainRunLoop];
    [v20 addToRunLoop:v18 forMode:*MEMORY[0x277CBE640]];
  }

  return v13;
}

uint64_t sub_25E6D0178(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_25E6D01DC()
{
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_animator) = 0;
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink) = 0;
  sub_25E6D8354();
  __break(1u);
}

void sub_25E6D0270()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SpatialPhoto.GenerationEffectUIView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = [v0 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  [v0 bounds];
  [v2 setFrame_];
}

id SpatialPhoto.GenerationEffectUIView.__deallocating_deinit()
{
  sub_25E6D0600();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.GenerationEffectUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25E6D0430()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.GenerationEffectUIView();
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {
  }

  else
  {
    sub_25E6D0600();
  }
}

uint64_t sub_25E6D0548(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_animator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_25E6D0600()
{
  v1 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink;
  v2 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_displayLink);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

uint64_t sub_25E6D065C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6D0500();
  *a1 = result;
  return result;
}

id sub_25E6D068C(void *a1)
{
  v3 = sub_25E6D7DF4();
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  result = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_commandQueue];
  if (result)
  {
    result = [result commandBuffer];
    if (result)
    {
      v8 = result;
      v9 = [v1 layer];
      objc_opt_self();
      v10 = [swift_dynamicCastObjCClassUnconditional() nextDrawable];

      if (v10)
      {
        v11 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto22GenerationEffectUIView_animator;
        swift_beginAccess();
        v12 = *&v1[v11];
        if (v12 && (swift_beginAccess(), (*(v12 + 16) & 1) != 0))
        {

          [a1 duration];
          sub_25E6B71A8(v13);
          sub_25E6B709C([v10 texture]);
          swift_unknownObjectRelease();
          sub_25E6B71F0();
          [v8 presentDrawable_];
          [v8 commit];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_25E6D0B48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD010F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return objc_opt_self();
}

id OUTLINED_FUNCTION_4_3()
{

  return [v0 (v1 + 2168)];
}

uint64_t SpatialPhoto.CinematicCameraAnimator.__allocating_init(queue:duration:cameraTechniqueProducer:changeHandler:)(void *a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  SpatialPhoto.CinematicCameraAnimator.init(queue:duration:cameraTechniqueProducer:changeHandler:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_25E6D0C84(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_25E6D7A54();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12, v13, v14, v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  sub_25E6D7A34();
  (*(v11 + 32))(a5 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__cameraTechnique, v18, v9);
  *(a5 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__isAnimating) = 0;
  sub_25E6D7984();
  *(a5 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_displayLink) = 0;
  OUTLINED_FUNCTION_6_2(a5 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_startTime);
  sub_25E6D78D4();
  *(a5 + 16) = a1;
  *(a5 + 24) = a3;
  *(a5 + 32) = sub_25E6C8F48;
  *(a5 + 40) = 0;
  v19 = a1;
  sub_25E6D7A44();
  sub_25E6D0FB4(v18);
  sub_25E6BDF88(a2);

  return a5;
}

uint64_t SpatialPhoto.CinematicCameraAnimator.init(queue:duration:cameraTechniqueProducer:changeHandler:)(void *a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = sub_25E6D7A54();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15, v16, v17, v18);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  sub_25E6D7A34();
  (*(v14 + 32))(v6 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__cameraTechnique, v21, v12);
  *(v6 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__isAnimating) = 0;
  sub_25E6D7984();
  *(v6 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_displayLink) = 0;
  OUTLINED_FUNCTION_6_2(v6 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_startTime);
  sub_25E6D78D4();
  *(v6 + 16) = a1;
  *(v6 + 24) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  v22 = a1;

  a2(v23, 0.0);
  sub_25E6D0FB4(v21);
  sub_25E6BDF88(a4);

  return v6;
}

uint64_t sub_25E6D0FB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25E6D7A54();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__cameraTechnique;
  swift_beginAccess();
  v15 = *(v6 + 16);
  v15(v13, v2 + v14, v4);
  sub_25E6D2E64(&qword_27FD01690, MEMORY[0x277D3CB48]);
  LOBYTE(v14) = sub_25E6D80B4();
  v16 = *(v6 + 8);
  v16(v13, v4);
  if (v14)
  {
    v15(v13, a1, v4);
    sub_25E6D1B3C(v13);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v18, v19, v20);
    OUTLINED_FUNCTION_5_3();
    *(v21 - 16) = v2;
    *(v21 - 8) = a1;
    sub_25E6D2554();
  }

  return (v16)(a1, v4);
}

uint64_t sub_25E6D11A4(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__isAnimating) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__isAnimating) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4, v5, v6);
    OUTLINED_FUNCTION_5_3();
    *(v7 - 16) = v1;
    *(v7 - 8) = v2;
    sub_25E6D2554();
  }

  return result;
}

uint64_t sub_25E6D124C(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5, v6, v7);
    OUTLINED_FUNCTION_5_3();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    sub_25E6D2554();
  }

  return result;
}

double sub_25E6D13FC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_4();
  sub_25E6D2E64(v1, v2);
  OUTLINED_FUNCTION_8_1();

  OUTLINED_FUNCTION_2_1();
  return *(v0 + 24);
}

uint64_t sub_25E6D1484(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 24) = a2;
  return result;
}

void (*sub_25E6D14F8(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_4();
  v3[6] = sub_25E6D2E64(v4, v5);
  sub_25E6D78A4();

  *v3 = v1;
  swift_getKeyPath();
  sub_25E6D78C4();

  v3[7] = sub_25E6D1310();
  return sub_25E6D160C;
}

void sub_25E6D160C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_25E6D78B4();

  free(v1);
}

uint64_t sub_25E6D16A0@<X0>(uint64_t (**a1)(double *a1)@<X8>)
{
  v2 = sub_25E6D1774();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_25E6D2D94;
  a1[1] = result;
  return result;
}

uint64_t sub_25E6D1704(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_25E6D17B4(sub_25E6D2D5C, v3);
}

uint64_t sub_25E6D1774()
{
  OUTLINED_FUNCTION_2_1();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_25E6D17B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_25E6D184C@<X0>(void *a1@<X8>)
{
  result = sub_25E6D194C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_25E6D2D30;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_25E6D18BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_25E6D2CF8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_25E6C6FC8(v1);
  return sub_25E6D1990(v4, v3);
}

uint64_t sub_25E6D194C()
{
  OUTLINED_FUNCTION_2_1();
  v1 = *(v0 + 48);
  sub_25E6C6FC8(v1);
  return v1;
}

uint64_t sub_25E6D1990(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_25E6BDF88(v5);
}

uint64_t sub_25E6D1A28()
{
  v1 = sub_25E6D7A54();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v9 = *(v0 + 48);
  if (v9)
  {

    sub_25E6D1CF8(v7);
    v9(v0, v7);
    sub_25E6BDF88(v9);
    return (*(v2 + 8))(v7, v1);
  }

  return result;
}

uint64_t sub_25E6D1B3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__cameraTechnique;
  swift_beginAccess();
  v4 = sub_25E6D7A54();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_25E6D1A28();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_25E6D1C2C(uint64_t a1)
{
  v2 = sub_25E6D7A54();
  MEMORY[0x28223BE20](v2, v3, v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return sub_25E6D0FB4(v6);
}

uint64_t sub_25E6D1CF8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v8 = v1;
  OUTLINED_FUNCTION_0_4();
  sub_25E6D2E64(v3, v4);
  sub_25E6D78A4();

  v5 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__cameraTechnique;
  OUTLINED_FUNCTION_2_1();
  v6 = sub_25E6D7A54();
  return (*(*(v6 - 8) + 16))(a1, v8 + v5, v6);
}

uint64_t sub_25E6D1DD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_25E6D7A54();
  MEMORY[0x28223BE20](v3, v4, v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2);
  return sub_25E6D1B3C(v7);
}

uint64_t sub_25E6D1EA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6D1F00();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25E6D1F00()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_4();
  sub_25E6D2E64(v1, v2);
  OUTLINED_FUNCTION_8_1();

  return *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__isAnimating);
}

uint64_t sub_25E6D1FB8(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01440);
  a2(a1, v4);
  swift_endAccess();
  return sub_25E6D20E8();
}

uint64_t sub_25E6D2044(void *a1)
{
  [a1 invalidate];
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_displayLink) != 0;

  return sub_25E6D11A4(v2);
}

void sub_25E6D2088(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_displayLink);
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_displayLink) = a1;
  v2 = a1;
  sub_25E6D2044(v3);
}

uint64_t sub_25E6D20E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01440);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v10 = &v18[-1] - v9;
  v11 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_animatingClients;
  swift_beginAccess();
  (*(v4 + 16))(v10, v1 + v11, v2);
  v12 = sub_25E6D7974();
  (*(v4 + 8))(v10, v2);
  v13 = sub_25E6C8F54(v12);

  result = sub_25E6D1F00();
  if (v13 < 1)
  {
    if ((result & 1) == 0)
    {
      return result;
    }

    OUTLINED_FUNCTION_6_2(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_startTime);
  }

  else
  {
    if (result)
    {
      return result;
    }

    v18[3] = type metadata accessor for SpatialPhoto.CinematicCameraAnimator();
    v18[0] = v1;
    v15 = *(v1 + 16);
    objc_allocWithZone(MEMORY[0x277D3CD10]);

    v16 = sub_25E6D2DC0(v18, sel_tick_, 60, 0, v15);
  }

  sub_25E6D2088(v16);
  return sub_25E6D11A4(v13 > 0);
}

id sub_25E6D22A4(void *a1)
{
  v2 = v1;
  v4 = sub_25E6D7A54();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = sub_25E6D8074();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14, v15, v16, v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  v21 = *(v2 + 16);
  *(v19 - v18) = v21;
  (*(v13 + 104))(v19 - v18, *MEMORY[0x277D85200], v11);
  v22 = v21;
  LOBYTE(v21) = sub_25E6D8084();
  result = (*(v13 + 8))(v20, v11);
  if (v21)
  {
    v24 = *(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_displayLink);
    if (v24 && (sub_25E6D2C64(), v25 = a1, v26 = v24, v27 = sub_25E6D82D4(), v26, v25, (v27 & 1) != 0))
    {
      v28 = v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_startTime;
      if (*(v2 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_startTime + 8) == 1)
      {
        [v25 targetTimestamp];
        v30 = v29;
        *v28 = v29;
        *(v28 + 8) = 0;
      }

      else
      {
        v30 = *v28;
      }

      [v25 targetTimestamp];
      *v32.i64 = (v31 - v30) / sub_25E6D13FC();
      *v33.i64 = *v32.i64 - trunc(*v32.i64);
      v34.f64[0] = NAN;
      v34.f64[1] = NAN;
      v37 = vbslq_s8(vnegq_f64(v34), v33, v32);
      swift_beginAccess();
      v35 = *(v2 + 32);

      v35(v36, v37);

      sub_25E6D0FB4(v10);
      return sub_25E6D20E8();
    }

    else
    {
      return [a1 invalidate];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25E6D2554()
{
  OUTLINED_FUNCTION_0_4();
  sub_25E6D2E64(v0, v1);
  return sub_25E6D7894();
}

uint64_t type metadata accessor for SpatialPhoto.CinematicCameraAnimator()
{
  result = qword_27FD01670;
  if (!qword_27FD01670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E6D2670@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6D1F00();
  *a1 = result & 1;
  return result;
}

uint64_t SpatialPhoto.CinematicCameraAnimator.deinit()
{

  sub_25E6BDF88(*(v0 + 48));
  v1 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator__cameraTechnique;
  sub_25E6D7A54();
  OUTLINED_FUNCTION_5_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator_animatingClients;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD01440);
  OUTLINED_FUNCTION_5_0();
  (*(v4 + 8))(v0 + v3);

  v5 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto23CinematicCameraAnimator___observationRegistrar;
  sub_25E6D78E4();
  OUTLINED_FUNCTION_5_0();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t SpatialPhoto.CinematicCameraAnimator.__deallocating_deinit()
{
  SpatialPhoto.CinematicCameraAnimator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25E6D2824(uint64_t a1)
{
  result = sub_25E6D2E64(&qword_27FD01668, type metadata accessor for SpatialPhoto.CinematicCameraAnimator);
  *(a1 + 8) = result;
  return result;
}

void sub_25E6D2894()
{
  sub_25E6D7A54();
  if (v0 <= 0x3F)
  {
    sub_25E6D2C10();
    if (v1 <= 0x3F)
    {
      sub_25E6D78E4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_25E6D2C10()
{
  if (!qword_27FD01680)
  {
    v0 = sub_25E6D7994();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD01680);
    }
  }
}

unint64_t sub_25E6D2C64()
{
  result = qword_27FD01688;
  if (!qword_27FD01688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD01688);
  }

  return result;
}

uint64_t sub_25E6D2CC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E6D2CF8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_25E6D2D5C(double a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

id sub_25E6D2DC0(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v11 = [v5 initWithWeakTarget:sub_25E6D83A4() selector:a2 preferredFramesPerSecond:a3 screen:a4 queue:a5];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t sub_25E6D2E64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return sub_25E6D78A4();
}

id sub_25E6D2FDC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene;
  result = swift_beginAccess();
  v6 = *&v2[v4];
  if (!a1)
  {
    if (!v6)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    if (!v6)
    {
      v8 = 0;
LABEL_10:
      *&v2[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneMetadataObservation] = v8;

      return [v2 setNeedsLayout];
    }

LABEL_9:
    sub_25E6D0178(0, &qword_27FD01600);

    v9 = sub_25E6D8274();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v8 = sub_25E6D7C44();

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_25E6D3114(uint64_t a1)
{
  sub_25E6D8194();
  v2 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v5[2] = v2;
  v5[3] = a1;
  sub_25E6D3280(sub_25E6D5744, v5);
}

void sub_25E6D31E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene;
    swift_beginAccess();
    v6 = *&v4[v5];
    if (v6)
    {
      v7 = v6 == a2;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [v4 setNeedsLayout];
    }
  }
}

uint64_t sub_25E6D3280(uint64_t a1, uint64_t a2)
{
  sub_25E6D8184();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_25E6D5770();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_25E6D8314();
    MEMORY[0x25F8BC420](0xD00000000000003FLL, 0x800000025E6DCD60);
    v8 = sub_25E6D8454();
    MEMORY[0x25F8BC420](v8);

    MEMORY[0x25F8BC420](46, 0xE100000000000000);
    result = sub_25E6D8354();
    __break(1u);
  }

  return result;
}

uint64_t sub_25E6D344C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_25E6D2FDC(v4);
}

void (*sub_25E6D34C0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene;
  OUTLINED_FUNCTION_6_3();
  v3[3] = *(v1 + v4);

  return sub_25E6D3540;
}

void sub_25E6D3540(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_25E6D344C(v4);
  }

  else
  {
    sub_25E6D344C(v3);
  }

  free(v2);
}

uint64_t sub_25E6D35A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.SceneDebugHUDUIView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  return sub_25E6D7884();
}

uint64_t (*sub_25E6D3668(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_25E6D5354;
}

uint64_t sub_25E6D36D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD016E8);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v5 = &v12 - v4;
  v6 = sub_25E6D81B4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_25E6D8194();

  v8 = sub_25E6D8184();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  sub_25E6D3920(0, 0, v5, &unk_25E6DBA60, v9);
}

uint64_t sub_25E6D3804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_25E6D8194();
  *(v4 + 48) = sub_25E6D8184();
  v6 = sub_25E6D8174();

  return MEMORY[0x2822009F8](sub_25E6D389C, v6, v5);
}

uint64_t sub_25E6D389C()
{
  OUTLINED_FUNCTION_10_0();

  OUTLINED_FUNCTION_6_3();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
  }

  OUTLINED_FUNCTION_7_2();

  return v2();
}

uint64_t sub_25E6D3920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD016E8);
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12);
  v14 = v27 - v13;
  sub_25E6D5564(a3, v27 - v13);
  v15 = sub_25E6D81B4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_25E6C9520(v14, &qword_27FD016E8);
  }

  else
  {
    sub_25E6D81A4();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25E6D8174();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25E6D8104() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_25E6C9520(a3, &qword_27FD016E8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25E6C9520(a3, &qword_27FD016E8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_25E6D3C3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setNumberOfLines_];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 blackColor];
  v4 = [v3 colorWithAlphaComponent_];

  [v2 setBackgroundColor_];
  v5 = [objc_opt_self() monospacedSystemFontOfSize:9.0 weight:*MEMORY[0x277D74410]];
  [v2 setFont_];

  v6 = [v1 whiteColor];
  [v2 setTextColor_];

  return v2;
}

id sub_25E6D3D90(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setNumberOfLines_];
  v3 = v2;
  v4 = [v3 layer];
  [v4 setBorderWidth_];

  v5 = [v3 layer];
  v6 = [v1 CGColor];
  [v5 setBorderColor_];

  v7 = [objc_opt_self() monospacedSystemFontOfSize:10.0 weight:*MEMORY[0x277D74410]];
  [v3 setFont_];

  [v3 setTextColor_];
  return v3;
}

id sub_25E6D3EF4(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = [v2 layer];
  [v3 setBorderWidth_];

  v4 = [v2 layer];
  v5 = [v1 CGColor];
  [v4 setBorderColor_];

  return v2;
}

id sub_25E6D3FDC()
{
  v3 = v0;
  v4 = sub_25E6D7CD4();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  OUTLINED_FUNCTION_14();
  v13 = (v11 - v12);
  v18 = MEMORY[0x28223BE20](v14, v15, v16, v17);
  v20 = &v85 - v19;
  MEMORY[0x28223BE20](v18, v21, v22, v23);
  v25 = &v85 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD016D8);
  MEMORY[0x28223BE20](v26 - 8, v27, v28, v29);
  OUTLINED_FUNCTION_14();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33, v34, v35, v36);
  v38 = &v85 - v37;
  v39 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene;
  OUTLINED_FUNCTION_6_3();
  if (!*&v3[v39])
  {
    return [*&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneOverlay] removeFromSuperview];
  }

  v85 = v20;
  v86 = v13;
  v87 = v4;
  v40 = *&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneOverlay];

  sub_25E6D7C34();
  [v3 bounds];
  v43 = v41 + v42 * 0.5;
  v46 = v44 + v45 * 0.5;
  PFSizeWithAspectRatioFillingSize();
  [v40 setFrame_];
  [v40 bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = *&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_label];
  v58 = sub_25E6D7C54();
  sub_25E6D52B8(v58, v59, v57);
  [v3 bounds];
  [v57 sizeThatFits_];
  v64 = v57;
  v65 = v87;
  [v64 setFrame_];
  sub_25E6D7CE4();
  sub_25E6D7C94();
  v66 = *(v6 + 8);
  v66(v25, v65);
  v67 = sub_25E6D7C74();
  if (__swift_getEnumTagSinglePayload(v38, 1, v67) == 1)
  {
    sub_25E6C9520(v38, &qword_27FD016D8);
  }

  else
  {
    sub_25E6D7C64();
    OUTLINED_FUNCTION_3_5();
    (*(v69 + 8))(v38, v67);
    if (!OUTLINED_FUNCTION_12_0())
    {
      v70 = *&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitOcclusionAnalysisLabel];
      v71 = v85;
      sub_25E6D7CE4();
      v72 = sub_25E6D7CB4();
      v74 = v73;
      v66(v71, v87);
      v75 = v74;
      v65 = v87;
      sub_25E6D52B8(v72, v75, v70);
      [v70 setFrame_];
      v76 = *&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitSubtitleOcclusionAnalysisLabel];
      [v70 frame];
      sub_25E6D7B04();
      [v76 setFrame_];
    }
  }

  v77 = v86;
  sub_25E6D7CE4();
  sub_25E6D7CA4();
  v66(v77, v65);
  if (__swift_getEnumTagSinglePayload(v32, 1, v67) == 1)
  {
    sub_25E6C9520(v32, &qword_27FD016D8);
  }

  else
  {
    sub_25E6D7C64();
    OUTLINED_FUNCTION_3_5();
    (*(v78 + 8))(v32, v67);
    if (!OUTLINED_FUNCTION_12_0())
    {
      v79 = *&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeOcclusionAnalysisLabel];
      v80 = v85;
      sub_25E6D7CE4();
      v81 = sub_25E6D7CC4();
      v83 = v82;
      v66(v80, v65);
      sub_25E6D52B8(v81, v83, v79);
      [v79 setFrame_];
      v84 = *&v3[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeSubtitleOcclusionAnalysisLabel];
      [v79 frame];
      sub_25E6D7B04();
      [v84 setFrame_];
    }
  }

  sub_25E6D451C();
}

void sub_25E6D451C()
{
  v1 = v0;
  sub_25E6D7CD4();
  OUTLINED_FUNCTION_1_0();
  v53 = v3;
  v54 = v2;
  MEMORY[0x28223BE20](v2, v4, v5, v6);
  OUTLINED_FUNCTION_14();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10, v11, v12, v13);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD016D8);
  MEMORY[0x28223BE20](v16 - 8, v17, v18, v19);
  OUTLINED_FUNCTION_14();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23, v24, v25, v26);
  v28 = &v52 - v27;
  v29 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneOverlay];
  v30 = [v29 superview];
  if (!v30 || (v31 = v30, sub_25E6D0178(0, &qword_27FD016E0), v32 = v0, v33 = sub_25E6D82D4(), v31, v32, (v33 & 1) == 0))
  {
    [v1 addSubview_];
  }

  if (qword_27FD00A78 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  if (byte_27FD02CB0 == 1)
  {
    v34 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_label];
    v35 = [v34 superview];
    if (!v35 || (v36 = v35, sub_25E6D0178(0, &qword_27FD016E0), v37 = v29, v38 = sub_25E6D82D4(), v36, v37, (v38 & 1) == 0))
    {
      [v29 addSubview_];
    }
  }

  v39 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene;
  OUTLINED_FUNCTION_6_3();
  if (!*&v1[v39])
  {
    goto LABEL_13;
  }

  sub_25E6D7CE4();

  sub_25E6D7C94();
  (*(v53 + 8))(v15, v54);
  v40 = sub_25E6D7C74();
  if (__swift_getEnumTagSinglePayload(v28, 1, v40) == 1)
  {
    sub_25E6C9520(v28, &qword_27FD016D8);
LABEL_13:
    OUTLINED_FUNCTION_13_0(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitOcclusionAnalysisLabel);
    OUTLINED_FUNCTION_13_0(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitSubtitleOcclusionAnalysisLabel);
    goto LABEL_17;
  }

  sub_25E6D7C64();
  (*(*(v40 - 8) + 8))(v28, v40);
  v41 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitOcclusionAnalysisLabel];
  v42 = [v41 superview];
  if (!v42 || (v43 = v42, sub_25E6D0178(0, &qword_27FD016E0), v44 = v29, v45 = sub_25E6D82D4(), v43, v44, (v45 & 1) == 0))
  {
    [v29 addSubview_];
    [v29 addSubview_];
  }

LABEL_17:
  if (!*&v1[v39])
  {
LABEL_20:
    OUTLINED_FUNCTION_13_0(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeOcclusionAnalysisLabel);
    OUTLINED_FUNCTION_13_0(OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeSubtitleOcclusionAnalysisLabel);
    return;
  }

  sub_25E6D7CE4();

  sub_25E6D7CA4();
  (*(v53 + 8))(v9, v54);
  v46 = sub_25E6D7C74();
  if (__swift_getEnumTagSinglePayload(v22, 1, v46) == 1)
  {
    sub_25E6C9520(v22, &qword_27FD016D8);
    goto LABEL_20;
  }

  sub_25E6D7C64();
  (*(*(v46 - 8) + 8))(v22, v46);
  v47 = *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeOcclusionAnalysisLabel];
  v48 = [v47 superview];
  if (!v48 || (v49 = v48, sub_25E6D0178(0, &qword_27FD016E0), v50 = v29, v51 = sub_25E6D82D4(), v49, v50, (v51 & 1) == 0))
  {
    [v29 _swift_FORCE_LOAD___swiftModelIO___PhotosSpatialMedia];
    [v29 _swift_FORCE_LOAD___swiftModelIO___PhotosSpatialMedia];
  }
}

uint64_t sub_25E6D4A74()
{
  if (qword_27FD00A78 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  if (byte_27FD02CB0)
  {
    return 1;
  }

  if (qword_27FD00A80 != -1)
  {
    swift_once();
  }

  return byte_27FD02CB1;
}

void sub_25E6D4AF4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_25E6D80C4();
  v2 = [v0 BOOLForKey_];

  byte_27FD02CB0 = v2;
}

void sub_25E6D4B84()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_25E6D80C4();
  v2 = [v0 BOOLForKey_];

  byte_27FD02CB1 = v2;
}

id SpatialPhoto.SceneDebugHUDUIView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_3_1();

  return [v2 v3];
}

id SpatialPhoto.SceneDebugHUDUIView.init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene) = 0;
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneMetadataObservation) = 0;
  v1 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneOverlay;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_label;
  *(v0 + v2) = sub_25E6D3C3C();
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitOcclusionAnalysisLabel;
  *(v0 + v3) = sub_25E6D3D90(&selRef_magentaColor);
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeOcclusionAnalysisLabel;
  *(v0 + v4) = sub_25E6D3D90(&selRef_purpleColor);
  v5 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitSubtitleOcclusionAnalysisLabel;
  *(v0 + v5) = sub_25E6D3EF4(&selRef_magentaColor);
  v6 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeSubtitleOcclusionAnalysisLabel;
  *(v0 + v6) = sub_25E6D3EF4(&selRef_purpleColor);
  v11 = type metadata accessor for SpatialPhoto.SceneDebugHUDUIView();
  v7 = OUTLINED_FUNCTION_3_1();
  return objc_msgSendSuper2(v8, v9, v7, v0, v11);
}

id SpatialPhoto.SceneDebugHUDUIView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SpatialPhoto.SceneDebugHUDUIView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_scene] = 0;
  *&v1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneMetadataObservation] = 0;
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_sceneOverlay;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_label;
  *&v1[v4] = sub_25E6D3C3C();
  v5 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitOcclusionAnalysisLabel;
  *&v1[v5] = sub_25E6D3D90(&selRef_magentaColor);
  v6 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeOcclusionAnalysisLabel;
  *&v1[v6] = sub_25E6D3D90(&selRef_purpleColor);
  v7 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_portraitSubtitleOcclusionAnalysisLabel;
  *&v1[v7] = sub_25E6D3EF4(&selRef_magentaColor);
  v8 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto19SceneDebugHUDUIView_landscapeSubtitleOcclusionAnalysisLabel;
  *&v1[v8] = sub_25E6D3EF4(&selRef_purpleColor);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for SpatialPhoto.SceneDebugHUDUIView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id SpatialPhoto.SceneDebugHUDUIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.SceneDebugHUDUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25E6D4F48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6D340C();
  *a1 = result;
  return result;
}

uint64_t sub_25E6D50D8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25E6D51D0;

  return v6(a1);
}

uint64_t sub_25E6D51D0()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

void sub_25E6D52B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_25E6D80C4();

  [a3 setText_];
}

uint64_t sub_25E6D531C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E6D535C()
{
  MEMORY[0x25F8BCF80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E6D5394()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25E6D53D4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_4(v6);
  *v7 = v8;
  v7[1] = sub_25E6D5480;

  return sub_25E6D3804(a1, v3, v4, v5);
}

uint64_t sub_25E6D5480()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_25E6D5564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD016E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E6D55D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E6D560C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_3(v1);

  return v4(v3);
}

uint64_t sub_25E6D56A4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_3(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_12_0()
{
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = v1;

  return CGRectIsNull(*&v5);
}

id OUTLINED_FUNCTION_13_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return [v4 (v2 + 120)];
}

id SpatialPhoto.SceneUIView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_4_0();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_2_4();

  return [v2 v3];
}

char *SpatialPhoto.SceneUIView.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_4_0();
  v50 = sub_25E6D7D24();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = sub_25E6D7A04();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14, v15, v16, v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  v21 = sub_25E6D7A84();
  OUTLINED_FUNCTION_1_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24, v25, v26, v27);
  OUTLINED_FUNCTION_4();
  v30 = v29 - v28;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_secondaryView) = 0;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_debugHUDView) = 0;
  v31 = objc_allocWithZone(type metadata accessor for SpatialPhoto.MetalUIView());
  OUTLINED_FUNCTION_2_4();
  v34 = [v32 v33];
  v35 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView) = v34;
  (*(v23 + 104))(v30, *MEMORY[0x277D3CB80], v21);
  sub_25E6D7AB4();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_cameraController) = sub_25E6D7A94();
  v36 = *(v1 + v35);
  sub_25E6D5C78();
  (*(v13 + 104))(v20, *MEMORY[0x277D3CB28], v11);
  (*(v3 + 104))(v10, *MEMORY[0x277D3CBC8], v50);
  sub_25E6D7DC4();
  swift_allocObject();

  v37 = v36;
  *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_viewModel) = sub_25E6D7D94();
  type metadata accessor for SpatialPhoto.SceneUIView();
  OUTLINED_FUNCTION_2_4();
  v40 = objc_msgSendSuper2(v38, v39);
  v41 = *&v40[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView];
  v42 = v40;
  [v42 addSubview_];
  v43 = type metadata accessor for SpatialPhoto.SceneDebugHUDUIView();
  v44 = v42;
  if (sub_25E6D4A74())
  {
    v45 = objc_allocWithZone(v43);
    OUTLINED_FUNCTION_2_4();
    v48 = [v46 v47];
    [v48 setAutoresizingMask_];
    [v42 addSubview_];
    v44 = *&v42[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_debugHUDView];
    *&v42[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_debugHUDView] = v48;
  }

  return v42;
}

unint64_t sub_25E6D5C78()
{
  result = qword_27FD010D8;
  if (!qword_27FD010D8)
  {
    type metadata accessor for SpatialPhoto.MetalUIView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD010D8);
  }

  return result;
}

void sub_25E6D5D18()
{
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_secondaryView) = 0;
  *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_debugHUDView) = 0;
  sub_25E6D8354();
  __break(1u);
}

void sub_25E6D5E04(uint64_t a1)
{

  sub_25E6D7DB4();
  v3 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_debugHUDView);
  if (v3)
  {
    v4 = v3;
    sub_25E6D344C(a1);
  }

  else
  {
  }
}

void (*sub_25E6D5EB0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_25E6D7DA4();
  return sub_25E6D5F04;
}

void sub_25E6D5F04(uint64_t *a1, char a2)
{
  if (a2)
  {

    sub_25E6D5E04(v2);
  }

  else
  {
    sub_25E6D5E04(*a1);
  }
}

uint64_t (*sub_25E6D6000(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_viewModel);
  *a1 = sub_25E6D7D34();
  a1[1] = v3;
  return sub_25E6D6054;
}

uint64_t sub_25E6D6054(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_25E6D7D44();
  }

  swift_unknownObjectRetain();
  sub_25E6D7D44();

  return swift_unknownObjectRelease();
}

void (*sub_25E6D6124())(uint64_t a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_5_5(v1);
  v2 = sub_25E6D7A04();
  OUTLINED_FUNCTION_3_6(v2);
  v0[2] = v3;
  v5 = *(v4 + 64);
  v0[3] = __swift_coroFrameAllocStub(v5);
  v0[4] = __swift_coroFrameAllocStub(v5);
  sub_25E6D7D54();
  return sub_25E6D61EC;
}

double sub_25E6D6204@<D0>(uint64_t a1@<X8>)
{
  sub_25E6D6288(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void sub_25E6D6248(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = v1;
  sub_25E6D62B4(v3);
}

__n128 sub_25E6D6288@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView) + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest;
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

void sub_25E6D62B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = v1;
  sub_25E6BCAC4(v3);
}

void (*sub_25E6D62FC(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = *(v1 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView) + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView__regionOfInterest;
  v5 = *(v4 + 32);
  v6 = *(v4 + 16);
  *v3 = *v4;
  *(v3 + 1) = v6;
  *(v3 + 32) = v5;
  return sub_25E6D6374;
}

void sub_25E6D6374(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v4 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = *(*a1 + 32);
  v6[0] = **a1;
  v6[1] = v2;
  v6[2] = v4;
  v6[3] = v3;
  v7 = v5;
  sub_25E6D62B4(v6);

  free(v1);
}

uint64_t sub_25E6D63D4()
{
  v1 = *(v0 + OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView);
  v2 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11MetalUIView_allowsDisplayCompositing;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*sub_25E6D6454(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_25E6D63D4() & 1;
  return sub_25E6D64A0;
}

uint64_t sub_25E6D64D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1);
  return a6(v13);
}

uint64_t sub_25E6D65FC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *))
{
  v6 = a2(0);
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10, v11, v12);
  v14 = &v16 - v13;
  (*(v8 + 16))(&v16 - v13, a1, v6);
  a4(v14);
  return (*(v8 + 8))(a1, v6);
}

void (*sub_25E6D66F8())(uint64_t a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_5_5(v1);
  v2 = sub_25E6D7A14();
  OUTLINED_FUNCTION_3_6(v2);
  v0[2] = v3;
  v5 = *(v4 + 64);
  v0[3] = __swift_coroFrameAllocStub(v5);
  v0[4] = __swift_coroFrameAllocStub(v5);
  sub_25E6D7A74();
  return sub_25E6D67C0;
}

void sub_25E6D67D8(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    (*(v8 + 16))(*(*a1 + 24), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 32));
  }

  free(v6);
  free(v5);

  free(v4);
}

void sub_25E6D68A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_25E6D6A9C(v1);
}

void sub_25E6D68D0(char *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_secondaryView;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

LABEL_12:
    v9 = v5;

    sub_25E6CAD40(v10);

    goto LABEL_13;
  }

  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return;
  }

  v7 = *&a1[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto32SpatialPhotoSceneSecondaryUIView_viewModel];
  if (v7 && *&v2[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_viewModel] == v7)
  {
    v8 = a1;
    sub_25E6CAD40(0);

    v5 = *&v2[v4];
  }

  if (v5)
  {
    goto LABEL_12;
  }

LABEL_13:
  v11 = *&v2[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_debugHUDView];
  if (v11)
  {
    v12 = *&v2[v4];
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      [v14 bounds];
      [v13 setFrame_];
      [v14 addSubview_];
    }

    else
    {
      v15 = v11;
      [v15 removeFromSuperview];
      [v2 bounds];
      [v15 setFrame_];
      [v2 addSubview_];
    }
  }
}

void *sub_25E6D6A50()
{
  v1 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_secondaryView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_25E6D6A9C(void *a1)
{
  v3 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_secondaryView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_25E6D68D0(v4);
}

void (*sub_25E6D6B08(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_secondaryView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_25E6D6B90;
}

void sub_25E6D6B90(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_25E6D6A9C(v3);
  }

  else
  {
    sub_25E6D6A9C(*(*a1 + 24));
  }

  free(v2);
}

id sub_25E6D6BFC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SpatialPhoto.SceneUIView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCE18PhotosSpatialMediaO22PhotosSpatialMediaCore12SpatialPhoto11SceneUIView_metalView];
  [v0 bounds];
  [v1 setFrame_];
  return [v1 layoutIfNeeded];
}

id SpatialPhoto.SceneUIView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.SceneUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25E6D6D6C()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6D5DD8();
  *v0 = result;
  return result;
}

uint64_t sub_25E6D6D98()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6D5FA8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_25E6D6E30()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6D63D4();
  *v0 = result & 1;
  return result;
}

void *sub_25E6D6EE8()
{
  OUTLINED_FUNCTION_4_1();
  result = sub_25E6D6A50();
  *v0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_5(void *a1)
{
  *v1 = a1;
  *a1 = v2;
  return 0;
}

id PXSpatialPhotoGetLog()
{
  if (PXSpatialPhotoGetLog_onceToken != -1)
  {
    dispatch_once(&PXSpatialPhotoGetLog_onceToken, &__block_literal_global);
  }

  v1 = PXSpatialPhotoGetLog_log;

  return v1;
}

uint64_t __PXSpatialPhotoGetLog_block_invoke()
{
  PXSpatialPhotoGetLog_log = os_log_create("com.apple.photos.ui", "SpatialPhoto");

  return MEMORY[0x2821F96F8]();
}

void PXSpatialPhotoConfigureMotionManager(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"SpatialPhotoDisableMotionPowerConservation"];

  if ((v3 & 1) == 0)
  {
    v4 = PXSpatialPhotoGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = 3;
      _os_log_impl(&dword_25E6B5000, v4, OS_LOG_TYPE_DEFAULT, "PXSpatialPhotoConfigureMotionManager setPowerConservationMode: %d", v6, 8u);
    }

    [v1 setPowerConservationMode:3];
  }

  if (PXSpatialPhotoWantsLightSourceReference_onceToken != -1)
  {
    dispatch_once(&PXSpatialPhotoWantsLightSourceReference_onceToken, &__block_literal_global_5);
  }

  if (PXSpatialPhotoWantsLightSourceReference_enabled == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = PXSpatialPhotoGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(&dword_25E6B5000, v5, OS_LOG_TYPE_DEFAULT, "PXSpatialPhotoConfigureMotionManager setShouldResetStartingReference: NO", v6, 2u);
    }

    [v1 setShouldResetStartingReference:0];
  }
}

void __PXSpatialPhotoWantsLightSourceReference_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CC1CD8] instancesRespondToSelector:sel_setShouldResetStartingReference_])
  {
    v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    PXSpatialPhotoWantsLightSourceReference_enabled = [v0 BOOLForKey:@"SpatialPhotoDisableLightSourceReference"] ^ 1;
  }

  else
  {
    PXSpatialPhotoWantsLightSourceReference_enabled = 0;
  }

  v1 = PXSpatialPhotoGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = PXSpatialPhotoWantsLightSourceReference_enabled;
    _os_log_impl(&dword_25E6B5000, v1, OS_LOG_TYPE_DEFAULT, "PXSpatialPhotoWantsLightSourceReference: %d", v2, 8u);
  }
}

uint64_t PXSpatialPhotoWantsLightSourceReference()
{
  if (PXSpatialPhotoWantsLightSourceReference_onceToken != -1)
  {
    dispatch_once(&PXSpatialPhotoWantsLightSourceReference_onceToken, &__block_literal_global_5);
  }

  return PXSpatialPhotoWantsLightSourceReference_enabled;
}

uint64_t PXSpatialPhotoMetalLayerSetWantsIOSurfaceCompression(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    v5 = PXSpatialPhotoGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_log_impl(&dword_25E6B5000, v5, OS_LOG_TYPE_DEFAULT, "PXSpatialPhotoMetalLayerSetWantsIOSurfaceCompression %d", v7, 8u);
    }

    [v3 setWantsIOSurfaceCompression:a2];
  }

  return v4 & 1;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}