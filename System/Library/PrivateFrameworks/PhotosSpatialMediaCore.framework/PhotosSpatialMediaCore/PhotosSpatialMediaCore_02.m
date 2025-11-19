uint64_t sub_1D8BD4358()
{
  v0 = sub_1D8BF0830();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8BF07F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAA3E78 != -1)
  {
    swift_once();
  }

  v8 = sub_1D8BF0820();
  __swift_project_value_buffer(v8, qword_1ECAA4C20);
  v9 = sub_1D8BF0810();
  sub_1D8BF0840();
  v10 = sub_1D8BF0C80();
  if (sub_1D8BF0CF0())
  {

    sub_1D8BF0870();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v9, v10, v13, "PredictOcclusionDepth", v11, v12, 2u);
    MEMORY[0x1DA723A30](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D8BD45E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    if (*(a1 + 16) == a2)
    {

      return v2;
    }

    v3 = qword_1EE320A68;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_1D8BF08A0();
    __swift_project_value_buffer(v4, qword_1EE320A70);

    v5 = sub_1D8BF0880();
    v6 = sub_1D8BF0B90();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      v9 = sub_1D8BF10C0();
      v11 = sub_1D8BBE6E8(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1D8BAF000, v5, v6, "predictOcclusionDepth[%{public}s] invalid provided SceneAnalysis, creating a new one", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1DA723A30](v8, -1, -1);
      MEMORY[0x1DA723A30](v7, -1, -1);
    }
  }

  type metadata accessor for SpatialPhoto.SceneAnalysis();

  return SpatialPhoto.SceneAnalysis.__allocating_init(scene:size:renderScale:)(v12, 0, 0, 1, 1.0);
}

void sub_1D8BD47CC(unint64_t a1, uint64_t a2, uint64_t a3, char a4, float a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v10 = v9;
  LODWORD(v11) = *a2;
  if (*a2 >= a5)
  {
    return;
  }

  i = *(a2 + 24);
  if (!i)
  {
    sub_1D8BD7EDC();
    swift_allocError();
    v47 = 3;
LABEL_20:
    *v46 = v47;
    *(v46 + 8) = 0;
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = 1;
    swift_willThrow();
    return;
  }

  LOBYTE(v393) = a4;
  v387 = *(a2 + 8);
  v386 = *(a2 + 16);
  v385 = *(a2 + 32);
  v384 = *(a2 + 40);
  LODWORD(log) = *(a2 + 48);
  if (qword_1ECAA3DB8 != -1)
  {
    goto LABEL_255;
  }

  while (2)
  {
    v18 = qword_1ECAAA7D8;
    swift_beginAccess();
    v352 = *(a1 + 44);
    if ((*(&v352 + 1) - *&v352) < 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = *(&v352 + 1) - *&v352;
    }

    memcpy(__dst, (a1 + 32), 0x151uLL);
    memcpy(__src, (a1 + 32), 0x151uLL);
    LOBYTE(v395) = 1;
    v398 = 0;
    sub_1D8BBE85C(__dst, &v396);
    v20 = SpatialPhoto.Scene.Metadata.convert(depth:from:to:)(&v395, &v398, *&v11);
    memcpy(v401, __src, 0x151uLL);
    sub_1D8BBF6E0(v401);
    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v21 = v18;
    v22 = sub_1D8BF08A0();
    v23 = __swift_project_value_buffer(v22, qword_1EE320A70);
    swift_retain_n();
    v24 = sub_1D8BF0880();
    v25 = sub_1D8BF0BB0();
    v26 = os_log_type_enabled(v24, v25);
    v27 = MEMORY[0x1E69E6448];
    v28 = MEMORY[0x1E69E64A8];
    v355 = a1;
    if (v26)
    {
      v348 = v23;
      v29 = swift_slowAlloc();
      v409 = COERCE_DOUBLE(swift_slowAlloc());
      *__src = v409;
      *v29 = 136446978;
      v396 = *&a1;
      v30 = sub_1D8BF10C0();
      v353 = a3;
      v32 = sub_1D8BBE6E8(v30, v31, __src);

      *(v29 + 4) = v32;

      *(v29 + 12) = 2048;
      *(v29 + 14) = v21;
      *(v29 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44B0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1D8BF8250;
      v34 = *(a1 + 44);
      v35 = *(a1 + 48);
      *(v33 + 56) = v27;
      *(v33 + 64) = v28;
      *(v33 + 32) = v34;
      *(v33 + 96) = v27;
      *(v33 + 104) = v28;
      *(v33 + 72) = v35;
      v36 = sub_1D8BF0A10();
      v38 = v27;
      v39 = sub_1D8BBE6E8(v36, v37, __src);
      a3 = v353;

      *(v29 + 24) = v39;

      *(v29 + 32) = 2080;
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1D8BF5A50;
      *(v40 + 56) = v38;
      *(v40 + 64) = MEMORY[0x1E69E64A8];
      *(v40 + 32) = v20;
      v41 = sub_1D8BF0A10();
      v43 = sub_1D8BBE6E8(v41, v42, __src);

      *(v29 + 34) = v43;
      _os_log_impl(&dword_1D8BAF000, v24, v25, "predictOcclusionDepth[%{public}s] numLayers:%f sceneDepthRange:%s salientDepth:%s", v29, 0x2Au);
      v44 = v409;
      swift_arrayDestroy();
      MEMORY[0x1DA723A30](*&v44, -1, -1);
      v45 = v29;
      v23 = v348;
      MEMORY[0x1DA723A30](v45, -1, -1);
    }

    else
    {
    }

    if (!sub_1D8BEBB2C() || ((sub_1D8BC7308(__src), , v48 = *(&__src[2] + 1), v49 = *&__src[2], *&__src[2] >= 1) ? (v50 = *(&__src[2] + 1) < 1) : (v50 = 1), v50))
    {
      sub_1D8BD7EDC();
      swift_allocError();
      v47 = 4;
      goto LABEL_20;
    }

    if (*&__src[2] >> 61)
    {
      goto LABEL_303;
    }

    v337 = 4 * *&__src[2];
    if ((4 * *&__src[2] * *(&__src[2] + 1)) >> 64 != (4 * *&__src[2] * *(&__src[2] + 1)) >> 63)
    {
      goto LABEL_330;
    }

    v336 = v20;
    v340 = v19;
    v51 = COERCE_DOUBLE([objc_allocWithZone(MEMORY[0x1E695DF88]) initWithLength_]);
    if (v51 == 0.0)
    {
      __break(1u);
      goto LABEL_330;
    }

    *&a1 = v51;
    v354 = a3;
    v52 = *&v48;
    v414.origin.x = a6;
    v414.origin.y = a7;
    v414.size.width = a8;
    v414.size.height = a9;
    IsNull = CGRectIsNull(v414);
    v54 = 0.0;
    v55 = 0.0;
    v372 = v49;
    v56 = v49;
    r2 = *&v48;
    if (!IsNull)
    {
      v425.size.width = v49;
      v415.origin.x = a6 * v372 + 0.0;
      v425.size.height = *&v48;
      v415.origin.y = a7 * r2 + 0.0;
      v415.size.width = v372 * a8;
      v415.size.height = r2 * a9;
      v425.origin.x = 0.0;
      v425.origin.y = 0.0;
      *(&v55 - 1) = CGRectIntersection(v415, v425);
      v54 = v57;
      v52 = v58;
    }

    v392 = v56;
    v59 = v55;
    sub_1D8BDBD3C(v402, v54, v55, v56, v52);
    v374 = v59;
    rect = v52;
    a3 = 0x1E696A000uLL;
    if (!PFRectIsValid() || (v416.origin.x = v54, v416.origin.y = v59, v416.size.width = v392, v416.size.height = v52, CGRectIsNull(v416)) || ((v60 = v404, v403 >= 1) ? (v61 = v404 < 1) : (v61 = 1), v61))
    {
      swift_retain_n();
      v62 = sub_1D8BF0880();
      v63 = sub_1D8BF0BA0();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&__src[0] = v65;
        *v64 = 136446466;
        v396 = *&v355;
        v66 = sub_1D8BF10C0();
        v68 = a1;
        v69 = sub_1D8BBE6E8(v66, v67, __src);

        *(v64 + 4) = v69;

        *(v64 + 12) = 2082;
        v70 = v52;
        v71 = v59;
        v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v54, *&v59, *&v392, *&v52];
        v73 = sub_1D8BF09E0();
        v75 = v74;

        v76 = sub_1D8BBE6E8(v73, v75, __src);
        a1 = v68;

        *(v64 + 14) = v76;
        _os_log_impl(&dword_1D8BAF000, v62, v63, "predictOcclusionDepth[%{public}s] Invalid searchRect:%{public}s", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA723A30](v65, -1, -1);
        MEMORY[0x1DA723A30](v64, -1, -1);
      }

      else
      {

        v71 = v59;
        v70 = v52;
      }

      sub_1D8BD7EDC();
      swift_allocError();
      *v77 = v54;
      *(v77 + 8) = v71;
      *(v77 + 16) = v392;
      *(v77 + 24) = v70;
      *(v77 + 32) = 0;
      swift_willThrow();
      goto LABEL_37;
    }

    v334 = v21;
    v360 = v403;
    v349 = v23;
    v78 = [objc_opt_self() systemParameters];
    [v78 bottomAreaHeight];
    v417.size.height = 1.0 - v79;
    v417.origin.x = 0.0;
    v417.origin.y = 0.0;
    v417.size.width = 1.0;
    height = v417.size.height;
    MaxY = CGRectGetMaxY(v417);
    [v78 bottomAreaHeight];
    v383 = v80;
    v418.origin.x = v54;
    v418.origin.y = v59;
    v418.size.width = v392;
    v418.size.height = v52;
    Width = CGRectGetWidth(v418);
    v370 = Width * 0.125;
    v82 = v59 - Width * 0.125;
    if (v82 < 0.0)
    {
      v82 = 0.0;
    }

    v369 = v82;
    v419.origin.x = v54;
    v419.origin.y = v59;
    v419.size.width = v392;
    v419.size.height = v52;
    v426.size.width = CGRectGetWidth(v419);
    v420.origin.x = v54;
    v420.origin.y = v59;
    v83 = v52;
    v420.size.width = v392;
    v420.size.height = v52;
    v409 = v54;
    v426.origin.x = v54;
    v426.origin.y = v369;
    v426.size.height = v370;
    v367 = v426.size.width;
    v421 = CGRectUnion(v420, v426);
    x = v421.origin.x;
    y = v421.origin.y;
    v361 = v421.size.width;
    v368 = v421.size.height;
    sub_1D8BDBD3C(&v405, v421.origin.x, v421.origin.y, v421.size.width, v421.size.height);
    if (qword_1ECAA3DC8 != -1)
    {
      goto LABEL_314;
    }

LABEL_41:
    v84 = v392;
    v85 = v409 + v392 * 0.0;
    v86 = v374 + v83 * 0.0;
    v314 = dword_1ECAAA7E4;
    if (qword_1ECAA3DD0 != -1)
    {
      swift_once();
      v84 = v392;
    }

    v313 = dword_1ECAAA7E8;
    v362 = v83 * height;
    v363 = v85;
    v87 = v85;
    v88 = v84;
    [v78 maxTopOverlapForTopRect:v393 & 1 isInteractive:v87, v86];
    v359 = v89;
    if (qword_1ECAA3DD8 != -1)
    {
      swift_once();
    }

    LODWORD(v350) = dword_1ECAAA7EC;
    [v78 maxBottomOverlap];
    v11 = v409;
    v351 = v90;
    if (*&log <= 0.0)
    {
      v356 = 3.4028e38;
      v91 = rect;
      goto LABEL_49;
    }

    v91 = rect;
    if (qword_1ECAA3DC0 != -1)
    {
      goto LABEL_322;
    }

    while (1)
    {
      v356 = *&log * *&dword_1ECAAA7E0;
LABEL_49:
      v92 = v374;
      if (qword_1ECAA3D90 != -1)
      {
        swift_once();
        v91 = rect;
        v92 = v374;
      }

      v316 = *&qword_1ECAAA7B0;
      if (qword_1ECAA3D98 != -1)
      {
        swift_once();
        v91 = rect;
        v92 = v374;
      }

      v364 = v86;
      v341 = v49;
      v325 = v48;
      v326 = a1;
      v93 = v92 + MaxY * v91;
      v94 = v91 * v383;
      v315 = *&qword_1ECAAA7B8;
      if (qword_1ECAA3DA0 != -1)
      {
        v309 = v92 + MaxY * v91;
        v310 = v91 * v383;
        swift_once();
        v94 = v310;
        v93 = v309;
        v91 = rect;
        v92 = v374;
      }

      v317 = qword_1ECAAA7C0;
      v83 = v11 / v372;
      v11 = v88 / v372;
      v88 = v92 / r2;
      v86 = v91 / r2;
      v357 = v94;
      v358 = v93;
      height = v93 / r2;
      oslogb = v94 / r2;
      MaxY = v369 / r2;
      v383 = v370 / r2;
      *&__src[0] = sub_1D8BF0FB0();
      *(&__src[0] + 1) = v95;
      MEMORY[0x1DA722A10](0xD000000000000020, 0x80000001D8BF3CA0);
      v96 = [objc_alloc(*(a3 + 3776)) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&a6, *&a7, *&a8, *&a9];
      v97 = sub_1D8BF09E0();
      v99 = v98;

      MEMORY[0x1DA722A10](v97, v99);

      MEMORY[0x1DA722A10](0x636570736E49202CLL, 0xEE00203A6E6F6974);
      v100 = [objc_alloc(*(a3 + 3776)) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v83, *&v88, *&v11, *&v86];
      v101 = sub_1D8BF09E0();
      v103 = v102;

      MEMORY[0x1DA722A10](v101, v103);

      MEMORY[0x1DA722A10](0x203A706F54202CLL, 0xE700000000000000);
      a8 = v363 / v372;
      v104 = [objc_alloc(*(a3 + 3776)) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v363 / v372, v364 / r2, *&v11, v362 / r2];
      v105 = sub_1D8BF09E0();
      v107 = v106;

      MEMORY[0x1DA722A10](v105, v107);

      MEMORY[0x1DA722A10](0x6D6F74746F42202CLL, 0xEA0000000000203ALL);
      v108 = [objc_alloc(*(a3 + 3776)) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v363 / v372, *&height, *&v11, *&oslogb];
      v109 = sub_1D8BF09E0();
      a1 = v110;

      MEMORY[0x1DA722A10](v109, a1);

      MEMORY[0x1DA722A10](0x746974627553202CLL, 0xEC000000203A656CLL);
      v111 = [objc_alloc(*(a3 + 3776)) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v83, v369 / r2, v367 / v372, v370 / r2];
      v48 = COERCE_DOUBLE(sub_1D8BF09E0());
      v49 = v112;

      MEMORY[0x1DA722A10](*&v48, v49);

      *&a8 = v334;
      if (v334 <= -9.2234e18)
      {
        __break(1u);
        goto LABEL_316;
      }

      v48 = v325;
      v49 = v326;
      a1 = v354;
      v11 = v316;
      if (v334 < 9.2234e18)
      {
        break;
      }

LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      swift_once();
      v91 = rect;
    }

    v113 = v334;
    *&__src[0] = v387;
    *(&__src[0] + 1) = v386;
    *&__src[1] = i;
    *(&__src[1] + 1) = v385;
    *&__src[2] = v384;
    DWORD2(__src[2]) = log;
    SpatialPhoto.SaliencyMap.depthRange(for:)(x / v372, y / r2, v361 / v372, v368 / r2);
    v393 = v114;
    LODWORD(a7) = sub_1D8BD7DA8(*&v114, v334, v352);
    v115 = sub_1D8BD7DA8(*(&v393 + 1), v334, v352);
    if (v334 < 0)
    {
      goto LABEL_317;
    }

    v116 = 0;
    v117 = v359;
    v118 = ((1.0 - v117) * *&v350) + v117;
    v119 = v351;
    v311 = v119;
    v312 = v118;
    v120 = ceilf(v115);
    if ((v334 + -1.0) < v120)
    {
      v120 = v334 + -1.0;
    }

    v321 = 4 * v341 * *&v325;
    v121 = v360 * v60;
    v318 = (v360 * v60) >> 64 != (v360 * v60) >> 63;
    v346 = v316 - v315 * v317;
    v60 = MEMORY[0x1E69E7CC0];
    v324 = (v113 - 1);
    v122 = floorf(*&a7);
    v322 = v120 - v122;
    v323 = v122;
    y = *MEMORY[0x1E69BDDA8];
    v88 = *MEMORY[0x1E69BDDA8] + *(MEMORY[0x1E69BDDA8] + 16);
    v338 = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24);
    v339 = *(MEMORY[0x1E69BDDA8] + 8);
    v328 = v121;
    v320 = v121;
    v319 = v78;
LABEL_61:
    if (v116 == v113)
    {
      goto LABEL_187;
    }

    a3 = v116 + 1;
    if (__OFADD__(v116, 1))
    {
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
      goto LABEL_311;
    }

    v333 = v116;
    v123 = v323 + (v116 / v324) * v322;
    v335 = v123;
    LODWORD(v83) = sub_1D8BD7E0C(v123, v334, v352);
    v124 = *&v83 / v340;
    if ((*&v83 / v340) <= 0.0)
    {
      v124 = 0.0;
    }

    LODWORD(a7) = 1.0;
    if (v124 <= 1.0)
    {
      *&v11 = v124;
    }

    else
    {
      *&v11 = 1.0;
    }

    LOBYTE(__src[0]) = 0;
    sub_1D8BC94E4(LODWORD(v11));
    sub_1D8BEB6E8();
    if (v10)
    {
      v189 = v49;

      swift_retain_n();
      v190 = sub_1D8BF0880();
      v191 = sub_1D8BF0B90();
      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *&__src[0] = v193;
        *v192 = 136446466;
        v396 = *&v355;
        v194 = sub_1D8BF10C0();
        v196 = sub_1D8BBE6E8(v194, v195, __src);

        *(v192 + 4) = v196;

        *(v192 + 12) = 2048;
        *(v192 + 14) = v333;
        _os_log_impl(&dword_1D8BAF000, v190, v191, "predictOcclusionDepth[%{public}s] Split depth render failed at layer %ld", v192, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v193);
        v189 = v326;
        MEMORY[0x1DA723A30](v193, -1, -1);
        v197 = v192;
        v78 = v319;
        MEMORY[0x1DA723A30](v197, -1, -1);
      }

      else
      {
      }

      swift_willThrow();
      return;
    }

    v327 = a3;
    v125 = sub_1D8BEBA14();
    if (!v125)
    {

      swift_retain_n();
      v198 = sub_1D8BF0880();
      v199 = sub_1D8BF0B90();
      if (os_log_type_enabled(v198, v199))
      {
        v200 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        *&__src[0] = v201;
        *v200 = 136446466;
        v396 = *&v355;
        v202 = sub_1D8BF10C0();
        v204 = sub_1D8BBE6E8(v202, v203, __src);

        *(v200 + 4) = v204;

        *(v200 + 12) = 2048;
        *(v200 + 14) = v333;
        _os_log_impl(&dword_1D8BAF000, v198, v199, "predictOcclusionDepth[%{public}s] No depth texture available at step %ld", v200, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v201);
        v205 = v201;
        v49 = v326;
        MEMORY[0x1DA723A30](v205, -1, -1);
        MEMORY[0x1DA723A30](v200, -1, -1);
      }

      else
      {
      }

      sub_1D8BD7EDC();
      swift_allocError();
      *v237 = 4;
      *(v237 + 8) = 0;
      *(v237 + 16) = 0;
      *(v237 + 24) = 0;
      *(v237 + 32) = 1;
      swift_willThrow();

      return;
    }

    a3 = v125;
    if ([v125 width] != v341 || objc_msgSend(a3, sel_height) != *&v48)
    {
      a1 = v49;

      swift_unknownObjectRetain_n();
      swift_retain_n();
      v174 = sub_1D8BF0880();
      v175 = sub_1D8BF0B90();
      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        *&__src[0] = v177;
        *v176 = 136447234;
        v396 = *&v355;
        v178 = sub_1D8BF10C0();
        v180 = a3;
        v181 = sub_1D8BBE6E8(v178, v179, __src);

        *(v176 + 4) = v181;

        *(v176 + 12) = 2048;
        *(v176 + 14) = v341;
        *(v176 + 22) = 2048;
        *(v176 + 24) = v325;
        *(v176 + 32) = 2048;
        v182 = [v180 width];
        swift_unknownObjectRelease();
        *(v176 + 34) = v182;
        swift_unknownObjectRelease();
        *(v176 + 42) = 2048;
        v183 = [v180 height];
        swift_unknownObjectRelease();
        *(v176 + 44) = v183;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1D8BAF000, v174, v175, "predictOcclusionDepth[%{public}s] Texture size mismatch: expected %ldx%ld, got %ldx%ld", v176, 0x34u);
        __swift_destroy_boxed_opaque_existential_1Tm(v177);
        MEMORY[0x1DA723A30](v177, -1, -1);
        MEMORY[0x1DA723A30](v176, -1, -1);

        sub_1D8BD7EDC();
        swift_allocError();
        *v184 = 4;
        *(v184 + 8) = 0;
        *(v184 + 16) = 0;
        *(v184 + 24) = 0;
        *(v184 + 32) = 1;
        swift_willThrow();
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease_n();
      sub_1D8BD7EDC();
      swift_allocError();
      *v206 = 4;
      *(v206 + 8) = 0;
      *(v206 + 16) = 0;
      *(v206 + 24) = 0;
      *(v206 + 32) = 1;
      swift_willThrow();
      swift_unknownObjectRelease();

LABEL_37:
      return;
    }

    if ((v341 * *&v325) >> 64 != (v341 * *&v325) >> 63)
    {
      goto LABEL_306;
    }

    if ((v341 * *&v325 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_307;
    }

    if ([v49 length] < v321)
    {
      goto LABEL_208;
    }

    v126 = [v49 mutableBytes];
    MTLRegionMake2D(v341, *&v48, __src);
    [a3 getBytes:v126 bytesPerRow:v337 fromRegion:__src mipmapLevel:0];
    v368 = COERCE_DOUBLE([v49 bytes]);
    LODWORD(v360) = sub_1D8BD7E0C(v335 + 1.0, v334, v352);
    v127 = v405 + v407;
    if (__OFADD__(v405, v407))
    {
      goto LABEL_308;
    }

    if (__OFADD__(v406, v408))
    {
      goto LABEL_309;
    }

    v329 = LODWORD(v11);
    if (v406 + v408 >= *&v48)
    {
      v128 = v48;
    }

    else
    {
      *&v128 = v406 + v408;
    }

    if (v127 >= v341)
    {
      v127 = v341;
    }

    v375 = v127;
    v129 = v406 & ~(v406 >> 63);
    if (v405 >= 0)
    {
      v113 = v405;
    }

    else
    {
      v113 = 0;
    }

    if (*&v128 < v129)
    {
      goto LABEL_310;
    }

    v130 = 0.0;
    if (v129 == *&v128)
    {
      x = 0.0;
      v131 = 0;
      v351 = 0.0;
      v393 = 0;
      *&oslog = 0.0;
      *&v49 = 0.0;
      height = 0.0;
      v383 = 0.0;
      v132 = 0;
      goto LABEL_151;
    }

    v330 = v60;
    if (v127 < v113)
    {
      goto LABEL_313;
    }

    x = 0.0;
    v131 = 0;
    v351 = 0.0;
    v393 = 0;
    *&oslog = 0.0;
    *&v49 = 0.0;
    height = 0.0;
    v383 = 0.0;
    MaxY = 0.0;
    *&a1 = 0.0;
    v60 = 0;
    v10 = 0;
    v48 = 0.0;
    a3 = 0;
    v359 = 0.0;
    v361 = 0.0;
    v78 = 0;
    v342 = v113;
    v344 = v128;
    while (1)
    {
      if (v129 >= *&v128)
      {
        goto LABEL_288;
      }

      v376 = v131;
      v350 = v129;
      if (v113 != v375)
      {
        break;
      }

LABEL_92:
      v129 = v350 + 1;
      v113 = v342;
      v128 = v344;
      v130 = 0.0;
      v131 = v376;
      if (v350 + 1 == *&v344)
      {
        v132 = *&v361;
        if (*&v361 >= 1)
        {
          v130 = *&v359 / *&MaxY;
        }

        v60 = v330;
        a1 = v354;
LABEL_151:
        MaxY = v130;
        if (!v318)
        {
          a7 = 0.0;
          a8 = 0.0;
          a9 = 0.0;
          if (v328 >= 1)
          {
            *&a9 = *&v383 / v320;
            *&a8 = *&height / v320;
          }

          if (v49 >= 1)
          {
            *&a7 = oslog / v49;
          }

          LODWORD(height) = 0;
          v142 = 0.0;
          if (v393 >= 1)
          {
            v142 = *&v351 / v393;
          }

          if (v131 >= 1)
          {
            *&height = *&x / v131;
          }

          if (v328 >= 1 && (v132 / v320) >= 0.5)
          {
            if (v130 >= v346)
            {
              v171 = *&v314;
              if (*&v83 >= v336)
              {
                v171 = *&v313;
              }

              if (*&a9 <= v171)
              {
                v144 = 0;
                v143 = LODWORD(a9);
              }

              else if (v312 >= *&a7)
              {
                if (v142 <= v311)
                {
                  if (v312 >= *&height)
                  {
                    v143 = LODWORD(v83);
                    v144 = 6;
                  }

                  else
                  {
                    v143 = LODWORD(height);
                    v144 = 4;
                  }
                }

                else
                {
                  v143 = LODWORD(v142);
                  v144 = 3;
                }
              }

              else
              {
                v143 = LODWORD(a7);
                v144 = 2;
              }
            }

            else
            {
              v144 = 7;
              v143 = 2;
            }
          }

          else
          {
            v143 = 0;
            v144 = -1;
          }

          v377 = v142;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D8BE8FF4();
            v60 = v172;
          }

          v145 = v335;
          v146 = *(v60 + 16);
          if (v146 >= *(v60 + 24) >> 1)
          {
            sub_1D8BE8FF4();
            v145 = v335;
            v60 = v173;
          }

          *(v60 + 16) = v146 + 1;
          v331 = v60;
          v147 = v60 + 96 * v146;
          *(v147 + 32) = v333;
          *(v147 + 40) = v145;
          *(v147 + 44) = LODWORD(v83);
          *(v147 + 48) = v329;
          *(v147 + 52) = *&v360 - *&v83;
          *(v147 + 56) = MaxY;
          LODWORD(v359) = LODWORD(a9);
          *(v147 + 64) = LODWORD(a9);
          *(v147 + 68) = LODWORD(a8);
          LODWORD(v350) = LODWORD(a8);
          v148 = *&v360 - *&v83;
          *(v147 + 72) = LODWORD(a7);
          *(v147 + 76) = v377;
          LODWORD(v11) = LODWORD(height);
          *(v147 + 80) = LODWORD(height);
          *(v147 + 88) = v143;
          *(v147 + 96) = 0;
          *(v147 + 104) = 0;
          *(v147 + 112) = 0;
          *(v147 + 120) = v144;
          v149 = v145;
          sub_1D8BEB9B8();
          swift_unknownObjectRelease();
          sub_1D8BEBA14();
          swift_unknownObjectRelease();
          v150 = swift_allocObject();
          *(v150 + 16) = v333;
          *(v150 + 24) = v149;
          *(v150 + 28) = LODWORD(v83);
          v345 = LODWORD(v83);
          *&v83 = v377;
          *(v150 + 32) = v329;
          *(v150 + 36) = v148;
          *&a6 = v148;
          v86 = MaxY;
          LODWORD(a9) = LODWORD(v359);
          *(v150 + 40) = MaxY;
          *(v150 + 48) = LODWORD(v359);
          *(v150 + 52) = LODWORD(a8);
          *(v150 + 56) = LODWORD(a7);
          *(v150 + 60) = v377;
          *(v150 + 64) = LODWORD(height);
          *&v351 = v143;
          *(v150 + 72) = v143;
          *(v150 + 80) = 0;
          *(v150 + 88) = 0;
          *(v150 + 96) = 0;
          *(v150 + 104) = v144;
          v151 = swift_allocObject();
          *(v151 + 16) = sub_1D8BD8118;
          *(v151 + 24) = v150;
          v152 = v151;
          LOBYTE(v393) = v151;
          v343 = v144;
          swift_retain_n();

          osloga = sub_1D8BF0880();
          LODWORD(x) = sub_1D8BF0BB0();
          v153 = swift_allocObject();
          *(v153 + 16) = 34;
          v154 = v153;
          v155 = swift_allocObject();
          *(v155 + 16) = 8;
          v156 = v155;
          v157 = swift_allocObject();
          *(v157 + 16) = sub_1D8BD8110;
          *(v157 + 24) = *&v355;
          *&v158 = COERCE_DOUBLE(swift_allocObject());
          *(v158 + 16) = sub_1D8BD8138;
          *(v158 + 24) = v157;
          v159 = v158;
          v383 = *&v158;
          v361 = COERCE_DOUBLE(swift_allocObject());
          *(*&v361 + 16) = 34;
          v360 = swift_allocObject();
          *(v360 + 16) = 8;
          *&v160 = COERCE_DOUBLE(swift_allocObject());
          *(v160 + 16) = sub_1D8BD8128;
          *(v160 + 24) = v152;
          v161 = swift_allocObject();
          *(v161 + 16) = sub_1D8BD8444;
          *(v161 + 24) = *&v160;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA48B0);
          v162 = swift_allocObject();
          *(v162 + 16) = xmmword_1D8BF58A0;
          *(v162 + 32) = sub_1D8BD8130;
          *(v162 + 40) = v154;
          *(v162 + 48) = sub_1D8BD8448;
          *(v162 + 56) = v156;
          *(v162 + 64) = sub_1D8BD8140;
          *(v162 + 72) = v159;
          a3 = v360;
          *(v162 + 80) = sub_1D8BD8448;
          *(v162 + 88) = v361;
          *(v162 + 96) = sub_1D8BD8448;
          *(v162 + 104) = v360;
          *(v162 + 112) = sub_1D8BD8440;
          *(v162 + 120) = v161;
          swift_setDeallocating();

          v368 = *&v160;

          sub_1D8BD7F30();
          v163 = LOBYTE(x);
          if (os_log_type_enabled(osloga, LOBYTE(x)))
          {
            v164 = swift_slowAlloc();
            x = COERCE_DOUBLE(swift_slowAlloc());
            v396 = x;
            *v164 = 514;
            *(v164 + 2) = 34;

            *(v164 + 3) = 8;

            *&__src[0] = v355;
            v165 = sub_1D8BF10C0();
            v167 = sub_1D8BBE6E8(v165, v166, &v396);

            *(v164 + 4) = v167;

            *(v164 + 12) = 34;

            *(v164 + 13) = 8;

            *&__src[0] = v333;
            *(&__src[0] + 1) = __PAIR64__(v345, LODWORD(v335));
            *&__src[1] = __PAIR64__(LODWORD(a6), v329);
            *(&__src[1] + 1) = MaxY;
            *&__src[2] = __PAIR64__(LODWORD(a8), LODWORD(v359));
            *(&__src[2] + 1) = __PAIR64__(LODWORD(v377), LODWORD(a7));
            LODWORD(__src[3]) = LODWORD(height);
            *(&__src[3] + 1) = v351;
            memset(&__src[4], 0, 24);
            BYTE8(__src[5]) = v343;
            v168 = sub_1D8BD283C();
            v170 = sub_1D8BBE6E8(v168, v169, &v396);

            *(v164 + 14) = v170;

            _os_log_impl(&dword_1D8BAF000, osloga, v163, "predictOcclusionDepth[%{public}s] %{public}s", v164, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1DA723A30](*&x, -1, -1);
            v49 = v326;
            MEMORY[0x1DA723A30](v164, -1, -1);
            swift_unknownObjectRelease();

            v10 = 0;
            v116 = v327;
            v78 = v319;
            v60 = v331;
            a1 = v354;
            v48 = v325;
          }

          else
          {

            swift_unknownObjectRelease();

            v10 = 0;
            v116 = v327;
            v78 = v319;
            v60 = v331;
            a1 = v354;
            v48 = v325;
            v49 = v326;
          }

          v113 = v334;
          goto LABEL_61;
        }

LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        swift_once();
        goto LABEL_41;
      }
    }

    v371 = v129 * v341;
    if ((v129 * v341) >> 64 != (v129 * v341) >> 63)
    {
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_330:
      __break(1u);
      return;
    }

    if (v113 >= v375)
    {
      goto LABEL_302;
    }

    a8 = v129;
    v133 = v129 / r2;
    if (v133 >= v338)
    {
      v133 = v338;
    }

    if (v339 >= v133)
    {
      a9 = v339;
    }

    else
    {
      a9 = v133;
    }

LABEL_101:
    if (!__OFADD__(v371, v113))
    {
      a7 = v113;
      if (*(*&v368 + 4 * (v371 + v113)) == 0.0)
      {
        *&a6 = 3.4028e38;
      }

      else
      {
        LODWORD(a6) = *(*&v368 + 4 * (v371 + v113));
      }

      v134 = a7 / v372;
      if (a7 / v372 >= v88)
      {
        v134 = v88;
      }

      *&__src[0] = v387;
      *(&__src[0] + 1) = v386;
      *&__src[1] = i;
      *(&__src[1] + 1) = v385;
      if (y >= v134)
      {
        v86 = y;
      }

      else
      {
        v86 = v134;
      }

      *&__src[2] = v384;
      DWORD2(__src[2]) = log;
      v135 = SpatialPhoto.SaliencyMap.depth(at:)(__PAIR128__(*&a9, *&v86));
      if (v135 >= *&a6)
      {
        *&v11 = *&a6;
      }

      else
      {
        *&v11 = v135;
      }

      v422.origin.x = v409;
      v422.origin.y = v374;
      v422.size.width = v392;
      v422.size.height = rect;
      v410.x = v113;
      v410.y = a8;
      if (CGRectContainsPoint(v422, v410))
      {
        *&MaxY = &v78->isa + 1;
        if (__OFADD__(v78, 1))
        {
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:

          swift_retain_n();
          v48 = COERCE_DOUBLE(v49);
          v113 = sub_1D8BF0880();
          v207 = sub_1D8BF0B90();
          if (os_log_type_enabled(v113, v207))
          {
            v208 = swift_slowAlloc();
            v209 = swift_slowAlloc();
            *&__src[0] = v209;
            *v208 = 136446722;
            v396 = *&v355;
            v210 = sub_1D8BF10C0();
            v212 = sub_1D8BBE6E8(v210, v211, __src);

            *(v208 + 4) = v212;

            *(v208 + 12) = 2048;
            *(v208 + 14) = v321;
            *(v208 + 22) = 2048;
            v213 = [*&v48 length];

            *(v208 + 24) = v213;
            _os_log_impl(&dword_1D8BAF000, v113, v207, "predictOcclusionDepth[%{public}s] Buffer size insufficient: expected %ld, got %ld", v208, 0x20u);
            __swift_destroy_boxed_opaque_existential_1Tm(v209);
            MEMORY[0x1DA723A30](v209, -1, -1);
            MEMORY[0x1DA723A30](v208, -1, -1);

            sub_1D8BD7EDC();
            swift_allocError();
            *v214 = 0u;
            *(v214 + 16) = 0u;
            *(v214 + 32) = 1;
            swift_willThrow();
            swift_unknownObjectRelease();
          }

          else
          {
LABEL_244:

            sub_1D8BD7EDC();
            swift_allocError();
            *v238 = 0u;
            *(v238 + 16) = 0u;
            *(v238 + 32) = 1;
            swift_willThrow();
            swift_unknownObjectRelease();
          }

          return;
        }

        if (*&a6 != 3.4028e38 && *&a6 <= *(&v352 + 1))
        {
          v137 = __OFADD__((*&v361)++, 1);
          if (v137)
          {
            __break(1u);
LABEL_241:
            __break(1u);
LABEL_242:
            __break(1u);
LABEL_243:
            __break(1u);
            goto LABEL_244;
          }

          if (*&v360 <= *&a6)
          {
            v137 = __OFADD__((*&v359)++, 1);
            if (v137)
            {
              __break(1u);
LABEL_252:
              __break(1u);
LABEL_253:
              __break(1u);
LABEL_254:
              __break(1u);
LABEL_255:
              swift_once();
              continue;
            }
          }
        }

        if (*&v11 >= *&v83)
        {
          goto LABEL_128;
        }

        *&v383 = *&v48 + 1;
        if (__OFADD__(*&v48, 1))
        {
          goto LABEL_241;
        }

        *&__src[0] = v387;
        *(&__src[0] + 1) = v386;
        *&__src[1] = i;
        *(&__src[1] + 1) = v385;
        *&__src[2] = v384;
        DWORD2(__src[2]) = log;
        if (v356 >= SpatialPhoto.SaliencyMap.saliencyWeight(at:)(__PAIR128__(*&a9, *&v86)))
        {
LABEL_128:
          v138 = v364;
        }

        else
        {
          *&height = a3 + 1;
          v138 = v364;
          if (__OFADD__(a3, 1))
          {
            goto LABEL_253;
          }
        }

        v139 = v362;
        a6 = v363;
        v140 = v363;
        v86 = v392;
        v141 = v392;
        v411.x = v113;
        v411.y = a8;
        if (CGRectContainsPoint(*(&v138 - 1), v411))
        {
          v137 = __OFADD__(v10++, 1);
          if (v137)
          {
            goto LABEL_242;
          }

          if (*&v11 >= *&v83)
          {
            v60 = v393;
          }

          else
          {
            oslog = (a1 + 1);
            v60 = v393;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_254;
            }
          }

          goto LABEL_141;
        }

        v423.origin.x = v363;
        v423.size.height = v357;
        v423.origin.y = v358;
        v423.size.width = v392;
        v412.x = v113;
        v412.y = a8;
        if (CGRectContainsPoint(v423, v412))
        {
          v137 = __OFADD__(v60++, 1);
          if (v137)
          {
            goto LABEL_252;
          }

          v10 = v49;
          if (*&v11 < *&v83)
          {
            if (__OFADD__(*&v351, 1))
            {
              goto LABEL_289;
            }

            ++*&v351;
          }

LABEL_141:
          v424.origin.x = v409;
          v424.origin.y = v369;
          v424.size.height = v370;
          v424.size.width = v367;
          v413.x = v113;
          v413.y = a8;
          if (CGRectContainsPoint(v424, v413))
          {
            v137 = __OFADD__(v376++, 1);
            if (v137)
            {
              goto LABEL_207;
            }

            if (*&v11 < *&v83)
            {
              v137 = __OFADD__((*&x)++, 1);
              if (v137)
              {
                goto LABEL_243;
              }
            }
          }

          ++v113;
          a1 = oslog;
          v393 = v60;
          v49 = v10;
          v48 = v383;
          a3 = *&height;
          v78 = *&MaxY;
          if (v375 == v113)
          {
            goto LABEL_92;
          }

          goto LABEL_101;
        }
      }

      v60 = v393;
      v10 = v49;
      goto LABEL_141;
    }

    break;
  }

  __break(1u);
LABEL_187:
  if (!*(v60 + 16))
  {

    return;
  }

  if (v317 < 0)
  {
LABEL_325:
    __break(1u);
    goto LABEL_326;
  }

  v113 = v317 + 1;
  a1 = v355;
  a8 = v315;
  a7 = v316;
  if (__OFADD__(v317, 1))
  {
LABEL_326:
    __break(1u);
    goto LABEL_327;
  }

  *&__src[0] = MEMORY[0x1E69E7CC0];
  sub_1D8BD8168(0, v113 & ~(v113 >> 63), 0);
  if (v113 < 0)
  {
LABEL_327:
    __break(1u);
    goto LABEL_328;
  }

  v48 = 0.0;
  v78 = 0;
  v185 = 0;
  v186 = *&__src[0];
  v187 = v317;
  do
  {
    v10 = (*&v48 + 1);
    if (__OFADD__(*&v48, 1))
    {
      goto LABEL_312;
    }

    if (v185)
    {
      goto LABEL_330;
    }

    *&__src[0] = v186;
    v49 = *(v186 + 16);
    v188 = *(v186 + 24);
    a3 = v49 + 1;
    if (v49 >= v188 >> 1)
    {
      sub_1D8BD8168(v188 > 1, v49 + 1, 1);
      v187 = v317;
      v186 = *&__src[0];
    }

    *(v186 + 16) = a3;
    *(v186 + 32 + 8 * v49) = v316 - v315 * v78;
    v185 = v78 == v187;
    if (v78 == v187)
    {
      v78 = 0;
    }

    else
    {
      v137 = __OFADD__(v78, 1);
      v78 = (v78 + 1);
      if (v137)
      {
        goto LABEL_318;
      }
    }

    ++*&v48;
  }

  while (v10 != v113);
  *&MaxY = v186 + 32;
  v215 = 0;
  v10 = &unk_1ECAAA000;
  a8 = v316 - v346;
  *&v49 = COERCE_DOUBLE(0x1ECAA3000uLL);
  v48 = COERCE_DOUBLE(&unk_1ECAAA000);
  v11 = 1.0;
  a9 = 0.0;
  v78 = v349;
  v392 = *&v186;
  for (i = a3; ; a3 = i)
  {
    if (v215 == a3)
    {
      v113 = MEMORY[0x1E69E7CC0];
      goto LABEL_258;
    }

    sub_1D8BCF408(v215, 1, v186);
    v394 = v215 + 1;
    if (__OFADD__(v215, 1))
    {
      goto LABEL_321;
    }

    a7 = *(*&MaxY + 8 * v215);
    v78 = *(v60 + 16);

    *&a1 = 0.0;
    v409 = MEMORY[0x1E69E7CC0];
    v216 = 0x1ECAA3000uLL;
LABEL_213:
    v217 = 96 * a1;
    while (v78 != a1)
    {
      if (a1 >= *(v60 + 16))
      {
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:

        goto LABEL_291;
      }

      v113 = v60;
      v218 = *(v60 + v217 + 32);
      v397 = *(v60 + v217 + 40);
      v396 = *&v218;
      LODWORD(v88) = *(v60 + v217 + 44);
      a3 = *(v60 + v217 + 48);
      v86 = *(v60 + v217 + 56);
      v219 = *(v60 + v217 + 64);
      v220 = *(v60 + v217 + 80);
      v221 = *(v60 + v217 + 96);
      *&__src[3] = *(v60 + v217 + 112);
      __src[1] = v220;
      __src[2] = v221;
      __src[0] = v219;
      v222 = *(v60 + v217 + 120);
      if (*(v216 + 3496) != -1)
      {
        swift_once();
        v216 = 0x1ECAA3000;
      }

      v223 = *&qword_1ECAAA7C8;
      if (qword_1ECAA3DB0 != -1)
      {
        swift_once();
        v216 = 0x1ECAA3000;
      }

      v224 = (*&v88 - v223) / (*&qword_1ECAAA7D0 - v223);
      if (*&qword_1ECAAA7D0 <= v223)
      {
        v224 = 1.0 - (*&v88 - *&qword_1ECAAA7D0) / (v223 - *&qword_1ECAAA7D0);
      }

      v225 = v346 + fmax(fmin(v224, 1.0), 0.0) * a8;
      if (a7 > v225)
      {
        v225 = a7;
      }

      if (v225 <= v86 && v222 == 6)
      {
        v227 = v409;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v395 = v227;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D8BD8148(0, *(*&v227 + 16) + 1, 1);
          v227 = v395;
        }

        v230 = *(*&v227 + 16);
        v229 = *(*&v227 + 24);
        *&v231 = v230 + 1;
        v216 = 0x1ECAA3000;
        if (v230 >= v229 >> 1)
        {
          *&v409 = v230 + 1;
          sub_1D8BD8148(v229 > 1, v230 + 1, 1);
          v231 = v409;
          v216 = 0x1ECAA3000;
          v227 = v395;
        }

        ++a1;
        *(*&v227 + 16) = v231;
        v409 = v227;
        v232 = *&v227 + 96 * v230;
        v233 = v397;
        *(v232 + 32) = v396;
        *(v232 + 40) = v233;
        *(v232 + 44) = LODWORD(v88);
        *(v232 + 48) = a3;
        *(v232 + 56) = v86;
        v234 = __src[0];
        v235 = __src[1];
        v236 = __src[2];
        *(v232 + 112) = *&__src[3];
        *(v232 + 80) = v235;
        *(v232 + 96) = v236;
        *(v232 + 64) = v234;
        *(v232 + 120) = 6;
        v60 = v113;
        goto LABEL_213;
      }

      v217 += 96;
      ++a1;
      v60 = v113;
    }

    v113 = *&v409;
    if (*(*&v409 + 16))
    {
      break;
    }

    v215 = v394;
    a1 = v355;
    v78 = v349;
    *&v186 = v392;
  }

  v332 = v60;
  *&__src[0] = sub_1D8BF0FB0();
  *(&__src[0] + 1) = v239;
  MEMORY[0x1DA722A10](0x20646E756F66, 0xE600000000000000);
  v396 = *(v113 + 16);
  v240 = sub_1D8BF0FA0();
  MEMORY[0x1DA722A10](v240);

  MEMORY[0x1DA722A10](0xD00000000000001ELL, 0x80000001D8BF3CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44B0);
  v241 = swift_allocObject();
  *(v241 + 16) = xmmword_1D8BF5A50;
  *(v241 + 56) = MEMORY[0x1E69E63B0];
  *(v241 + 64) = MEMORY[0x1E69E6438];
  *(v241 + 32) = a7;
  v242 = sub_1D8BF0A10();
  MEMORY[0x1DA722A10](v242);

  v243 = __src[0];
  *&v244 = COERCE_DOUBLE(swift_allocObject());
  *(v244 + 16) = v243;
  v245 = v244;
  MaxY = *&v244;
  swift_retain_n();
  v387 = *(&v243 + 1);
  swift_bridgeObjectRetain_n();
  v78 = v349;
  log = sub_1D8BF0880();
  LODWORD(i) = sub_1D8BF0BB0();
  v246 = swift_allocObject();
  *(v246 + 16) = 34;
  v247 = v246;
  v10 = swift_allocObject();
  *(v10 + 16) = 8;
  v248 = swift_allocObject();
  *(v248 + 16) = sub_1D8BD844C;
  *(v248 + 24) = *&v355;
  v249 = v248;
  v250 = swift_allocObject();
  *(v250 + 16) = sub_1D8BD8444;
  *(v250 + 24) = v249;
  *&v251 = COERCE_DOUBLE(swift_allocObject());
  *(v251 + 16) = 34;
  v252 = v251;
  v382 = swift_allocObject();
  *(v382 + 16) = 8;
  v253 = swift_allocObject();
  *(v253 + 16) = sub_1D8BD8188;
  *(v253 + 24) = v245;
  v254 = swift_allocObject();
  *(v254 + 16) = sub_1D8BD8444;
  *(v254 + 24) = v253;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA48B0);
  v255 = swift_allocObject();
  *(v255 + 16) = xmmword_1D8BF58A0;
  *(v255 + 32) = sub_1D8BD8448;
  *(v255 + 40) = v247;
  v256 = v247;
  *(v255 + 48) = sub_1D8BD8448;
  *(v255 + 56) = v10;
  *(v255 + 64) = sub_1D8BD8440;
  *(v255 + 72) = v250;
  *(v255 + 80) = sub_1D8BD8448;
  *(v255 + 88) = *&v252;
  v257 = *&v252;
  a3 = v382;
  *(v255 + 96) = sub_1D8BD8448;
  *(v255 + 104) = v382;
  *(v255 + 112) = sub_1D8BD8440;
  *(v255 + 120) = v254;
  swift_setDeallocating();

  v385 = v253;

  v386 = v256;

  v49 = v10;

  v383 = v257;

  v384 = v254;

  sub_1D8BD7F30();
  if (os_log_type_enabled(log, i))
  {
    v10 = *(&v243 + 1);
    a3 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    *&__src[0] = v258;
    *a3 = 514;
    *(a3 + 2) = 34;

    *(a3 + 3) = 8;

    v49 = v355;
    v396 = *&v355;
    v259 = sub_1D8BF10C0();
    v261 = sub_1D8BBE6E8(v259, v260, __src);

    *(a3 + 4) = v261;

    *(a3 + 12) = 34;

    *(a3 + 13) = 8;

    v262 = sub_1D8BBE6E8(v243, *(&v243 + 1), __src);

    *(a3 + 14) = v262;

    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_1D8BAF000, log, i, "predictOcclusionDepth[%{public}s] %{public}s", a3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA723A30](v258, -1, -1);
    MEMORY[0x1DA723A30](a3, -1, -1);

    a1 = v355;
  }

  else
  {

    a1 = v355;

    swift_bridgeObjectRelease_n();
  }

  v60 = v332;
  v113 = *&v409;
LABEL_258:
  v263 = *(v113 + 16);
  if (v263)
  {
    v48 = *&a1;
    a3 = *(v113 + 32);
    LODWORD(a9) = *(v113 + 40);
    LODWORD(a7) = *(v113 + 44);
    v264 = *(v113 + 48);
    v265 = *(v113 + 56);
    v267 = *(v113 + 64);
    v266 = *(v113 + 68);
    a1 = *(v113 + 120) == 6;
    v268 = 1;
    v10 = "MaskCompositingEffect";
    while (2)
    {
      a8 = v267;
      v11 = v266;
      v88 = (1.0 - v264) * 10.0 + v265 * 30.0 + v267 * 25.0 + v266;
      v269 = 96 * v268;
      v270 = v268;
LABEL_261:
      if (v263 == v270)
      {
        if (qword_1ECAA3D88 == -1)
        {
LABEL_274:
          v274 = *&a7 * *&dword_1ECAAA7A8;
          v275 = *(v113 + 16) + 1;
          v276 = 44;
          while (--v275)
          {
            v277 = v276 + 96;
            v278 = *(v113 + v276);
            v276 += 96;
            if (v278 <= v274)
            {
              v276 = v277;
              if (v274 <= (v278 * 1.1))
              {
                *&a7 = *&a7 * *&dword_1ECAAA7A8;
                break;
              }
            }
          }

          swift_retain_n();
          v279 = sub_1D8BF0880();
          LODWORD(v409) = sub_1D8BF0BB0();
          if (os_log_type_enabled(v279, LOBYTE(v409)))
          {
            v280 = swift_slowAlloc();
            v391 = swift_slowAlloc();
            *&__src[0] = v391;
            *v280 = 136447746;
            v396 = v48;
            v281 = sub_1D8BF10C0();
            v283 = sub_1D8BBE6E8(v281, v282, __src);

            *(v280 + 4) = v283;

            *(v280 + 12) = 2048;
            *(v280 + 14) = a3;
            *(v280 + 22) = 2080;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA44B0);
            v284 = swift_allocObject();
            *(v284 + 16) = xmmword_1D8BF5A50;
            v285 = MEMORY[0x1E69E6448];
            *(v284 + 56) = MEMORY[0x1E69E6448];
            v286 = MEMORY[0x1E69E64A8];
            *(v284 + 64) = MEMORY[0x1E69E64A8];
            *(v284 + 32) = LODWORD(a9);
            v287 = sub_1D8BF0A10();
            v289 = sub_1D8BBE6E8(v287, v288, __src);

            *(v280 + 24) = v289;
            *(v280 + 32) = 2080;
            v290 = swift_allocObject();
            *(v290 + 16) = xmmword_1D8BF5A50;
            v291 = *(v10 + 76);
            if (a1)
            {
              v291 = v88;
            }

            *(v290 + 56) = MEMORY[0x1E69E63B0];
            *(v290 + 64) = MEMORY[0x1E69E6438];
            *(v290 + 32) = v291;
            v292 = sub_1D8BF0A10();
            v294 = sub_1D8BBE6E8(v292, v293, __src);

            *(v280 + 34) = v294;
            *(v280 + 42) = 2080;
            v295 = swift_allocObject();
            *(v295 + 16) = xmmword_1D8BF5A50;
            *(v295 + 56) = v285;
            *(v295 + 64) = v286;
            *(v295 + 32) = LODWORD(a7);
            v296 = sub_1D8BF0A10();
            v298 = sub_1D8BBE6E8(v296, v297, __src);

            *(v280 + 44) = v298;
            *(v280 + 52) = 2048;
            *(v280 + 54) = a8;
            *(v280 + 62) = 2048;
            *(v280 + 64) = v11;

            _os_log_impl(&dword_1D8BAF000, v279, LOBYTE(v409), "predictOcclusionDepth[%{public}s] selected step:%ld layer:%s score:%s depth:%s occlusion:%f salientOcclusion:%f", v280, 0x48u);
            swift_arrayDestroy();
            MEMORY[0x1DA723A30](v391, -1, -1);
            MEMORY[0x1DA723A30](v280, -1, -1);
          }

          else
          {
          }

          return;
        }

LABEL_328:
        swift_once();
        goto LABEL_274;
      }

      if (v270 >= v263)
      {
        goto LABEL_319;
      }

      v268 = v270 + 1;
      if (__OFADD__(v270, 1))
      {
        goto LABEL_320;
      }

      v264 = *(v113 + v269 + 48);
      v265 = *(v113 + v269 + 56);
      v267 = *(v113 + v269 + 64);
      v266 = *(v113 + v269 + 68);
      v271 = *(v113 + v269 + 120);
      if (a1)
      {
        v272 = v88;
        if (v271 != 6)
        {
          if (v88 < -1000.0)
          {
            *&a1 = 0.0;
LABEL_272:
            v273 = v113 + v269;
            a3 = *(v273 + 32);
            LODWORD(a9) = *(v273 + 40);
            LODWORD(a7) = *(v273 + 44);
            continue;
          }

          goto LABEL_270;
        }
      }

      else
      {
        v272 = -1000.0;
        if (v271 != 6)
        {
LABEL_270:
          ++v270;
          v269 += 96;
          goto LABEL_261;
        }
      }

      break;
    }

    if (v272 < (1.0 - v264) * 10.0 + v265 * 30.0 + v267 * 25.0 + v266)
    {
      a1 = 1;
      goto LABEL_272;
    }

    goto LABEL_270;
  }

  swift_retain_n();
  v78 = sub_1D8BF0880();
  v48 = *&a1;
  LOBYTE(a1) = sub_1D8BF0BB0();
  if (!os_log_type_enabled(v78, a1))
  {
    goto LABEL_290;
  }

  v299 = swift_slowAlloc();
  a3 = swift_slowAlloc();
  *&__src[0] = a3;
  *v299 = 136446210;
  v396 = v48;
  v300 = sub_1D8BF10C0();
  v113 = v301;
  v302 = sub_1D8BBE6E8(v300, v301, __src);

  *(v299 + 4) = v302;

  _os_log_impl(&dword_1D8BAF000, v78, a1, "predictOcclusionDepth[%{public}s] no candidates found", v299, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  MEMORY[0x1DA723A30](a3, -1, -1);
  MEMORY[0x1DA723A30](v299, -1, -1);

LABEL_291:
  v303 = *(v60 + 16);
  if (v303)
  {
    v304 = *(v60 + 56);
    v305 = 1;
LABEL_293:
    v306 = 96 * v305;
    while (v303 != v305)
    {
      if (v305 >= v303)
      {
        __break(1u);
LABEL_324:
        __break(1u);
        goto LABEL_325;
      }

      v307 = v305 + 1;
      if (__OFADD__(v305, 1))
      {
        goto LABEL_324;
      }

      v308 = *(v60 + v306 + 56);
      ++v305;
      v306 += 96;
      if (v304 < v308)
      {
        v304 = v308;
        v305 = v307;
        goto LABEL_293;
      }
    }
  }
}

double static SpatialPhoto.approximateSubtitleRect(for:)()
{
  OUTLINED_FUNCTION_35_0();
  CGRectGetWidth(v5);
  v6.origin.x = v3;
  v6.origin.y = v2;
  v6.size.width = v1;
  v6.size.height = v0;
  CGRectGetWidth(v6);
  return v3;
}

float sub_1D8BD7DA8(float a1, float a2, double a3)
{
  v3 = 0.0;
  if (a1 > 0.0)
  {
    if ((*(&a3 + 1) - *&a3) <= a1)
    {
      return a2;
    }

    else
    {
      v4 = (((1.0 / (*&a3 + a1)) - (1.0 / *&a3)) / ((1.0 / *(&a3 + 1)) - (1.0 / *&a3))) * a2;
      if (v4 <= 0.0)
      {
        v4 = 0.0;
      }

      if (v4 <= a2)
      {
        return v4;
      }

      else
      {
        return a2;
      }
    }
  }

  return v3;
}

float sub_1D8BD7E0C(float a1, float a2, double a3)
{
  if (a1 <= 0.0)
  {
    a1 = 0.0;
    if (a2 >= 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a2 < a1)
  {
LABEL_5:
    a1 = a2;
  }

LABEL_6:
  v3 = 1.0 / ((1.0 / *&a3) + (((1.0 / *(&a3 + 1)) - (1.0 / *&a3)) * (a1 / a2)));
  if (v3 <= *&a3)
  {
    v3 = *&a3;
  }

  if (*(&a3 + 1) < v3)
  {
    v3 = *(&a3 + 1);
  }

  return v3 - *&a3;
}

unint64_t sub_1D8BD7EDC()
{
  result = qword_1ECAA48A0;
  if (!qword_1ECAA48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA48A0);
  }

  return result;
}

uint64_t sub_1D8BD7F30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAA48C0);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_22PhotosSpatialMediaCore0B5PhotoO18SalientDepthResultVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BD8030(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 129))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BD8090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D8BD8148(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1D8BD8190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D8BD8168(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1D8BD8294(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D8BD8190(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4B60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 96);
      if (v5)
      {
LABEL_13:
        sub_1D8BE946C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 96 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8BD8294(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA48B8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1D8BE9490((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8BD8394(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 89))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 88);
      if (v3 <= 7)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8BD83D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = ~a2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_4(uint64_t a1@<X8>)
{
  *(v1 + 496) = a1;
  *(v1 + 504) = v3;
  *(v1 + 512) = v4;
  *(v1 + 520) = v2;
  *(v1 + 528) = *(v1 + 32);
  *(v1 + 536) = *(v1 + 64);
  *(v1 + 544) = *(v1 + 44);
}

__n128 OUTLINED_FUNCTION_2_7(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  return result;
}

void OUTLINED_FUNCTION_3_6(char a1@<W8>)
{
  *(v1 + 624) = a1;
  *(v1 + 632) = 0;
  *(v1 + 640) = 0;
  *(v1 + 648) = 0;
  *(v1 + 656) = 1;
  *(v1 + 672) = 0;
  *(v1 + 664) = 0;
  *(v1 + 680) = 0;
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_8_2()
{

  return memcpy((v0 + 312), (v0 + 120), 0x81uLL);
}

void OUTLINED_FUNCTION_9_3()
{
  v0[70] = 0;
  v0[72] = 0;
  v0[71] = 0;
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_12_2()
{

  return sub_1D8BBE6E8(v1, v2, (v0 + 448));
}

void OUTLINED_FUNCTION_15_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_16_2()
{

  JUMPOUT(0x1DA722A10);
}

void *OUTLINED_FUNCTION_19_1()
{

  return memcpy((v0 + 120), (v0 + 456), 0x81uLL);
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_22_0()
{

  JUMPOUT(0x1DA722A10);
}

unint64_t OUTLINED_FUNCTION_24_1(uint64_t a1, unint64_t a2)
{

  return sub_1D8BBE6E8(a1, a2, (v2 + 448));
}

uint64_t OUTLINED_FUNCTION_27_1()
{
}

void OUTLINED_FUNCTION_28_1()
{

  JUMPOUT(0x1DA722A10);
}

void *OUTLINED_FUNCTION_29_1()
{
  v2 = *(v0 + 96);

  return memcpy(v2, (v0 + 592), 0x81uLL);
}

BOOL OUTLINED_FUNCTION_31_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_32_1()
{
}

void OUTLINED_FUNCTION_34_1()
{
  v0[57] = v4;
  v0[58] = v3;
  v0[59] = v2;
  v0[60] = v1;
}

void OUTLINED_FUNCTION_36_1()
{
  v1 = *(v0 + 600);
  *(v0 + 592) = *(v0 + 592);
  *(v0 + 600) = v1;
}

uint64_t OUTLINED_FUNCTION_37_1()
{
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[35];

  return sub_1D8BCF208(v2, v3, v4);
}

id sub_1D8BD8730()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_1ECAAA780 = result;
  return result;
}

void sub_1D8BD876C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1D8BD87E8(0xD000000000000028, 0x80000001D8BF4110, 0.02);

  dword_1ECAAA788 = LODWORD(v1);
}

float sub_1D8BD87E8(uint64_t a1, unint64_t a2, float a3)
{
  v7 = sub_1D8BF09B0();
  v8 = [v3 objectForKey_];

  if (v8)
  {
    sub_1D8BF0D10();
    swift_unknownObjectRelease();
    sub_1D8BD992C(v18);
    v9 = sub_1D8BF09B0();
    [v3 floatForKey_];
    v11 = v10;

    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v12 = sub_1D8BF08A0();
    __swift_project_value_buffer(v12, qword_1EE320A70);

    v13 = sub_1D8BF0880();
    v14 = sub_1D8BF0BB0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v18[0] = v16;
      *v15 = 136446722;
      *(v15 + 4) = sub_1D8BBE6E8(a1, a2, v18);
      *(v15 + 12) = 2050;
      *(v15 + 14) = a3;
      *(v15 + 22) = 2050;
      *(v15 + 24) = v11;
      _os_log_impl(&dword_1D8BAF000, v13, v14, "User default %{public}s overridden from %{public}f to %{public}f", v15, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1DA723A30](v16, -1, -1);
      MEMORY[0x1DA723A30](v15, -1, -1);
    }

    return v11;
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    sub_1D8BD992C(v18);
  }

  return a3;
}

void sub_1D8BD89EC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1D8BD87E8(0xD000000000000028, 0x80000001D8BF4140, 0.35);

  dword_1ECAAA78C = LODWORD(v1);
}

void sub_1D8BD8A68()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  OUTLINED_FUNCTION_3_7();
  v4 = sub_1D8BD8AF0(0xD000000000000024, v2, v3);

  dword_1ECAAA790 = v4;
  byte_1ECAAA794 = BYTE4(v4) & 1;
}

unint64_t sub_1D8BD8AF0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = sub_1D8BF09B0();
  v8 = [v3 objectForKey_];

  if (v8)
  {
    sub_1D8BF0D10();
    swift_unknownObjectRelease();
    sub_1D8BD992C(v22);
    v9 = sub_1D8BF09B0();
    [v3 floatForKey_];
    v11 = v10;

    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v12 = sub_1D8BF08A0();
    __swift_project_value_buffer(v12, qword_1EE320A70);

    v13 = sub_1D8BF0880();
    v14 = sub_1D8BF0BB0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446722;
      *(v15 + 4) = sub_1D8BBE6E8(a1, a2, &v21);
      *(v15 + 12) = 2082;
      if ((a3 & 0x100000000) != 0)
      {
        v17 = 0xE300000000000000;
        v18 = 7104878;
      }

      else
      {
        *&v22[0] = 0;
        *(&v22[0] + 1) = 0xE000000000000000;
        sub_1D8BF0B10();
        v17 = *(&v22[0] + 1);
        v18 = *&v22[0];
      }

      v19 = sub_1D8BBE6E8(v18, v17, &v21);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2050;
      *(v15 + 24) = v11;
      _os_log_impl(&dword_1D8BAF000, v13, v14, "User default %{public}s overridden from %{public}s to %{public}f", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA723A30](v16, -1, -1);
      MEMORY[0x1DA723A30](v15, -1, -1);
    }

    LOBYTE(v13) = 0;
    *&a3 = v11;
  }

  else
  {
    v13 = (HIDWORD(a3) & 1);
    memset(v22, 0, sizeof(v22));
    sub_1D8BD992C(v22);
  }

  return a3 | (v13 << 32);
}

void sub_1D8BD8D74()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  OUTLINED_FUNCTION_3_7();
  v4 = sub_1D8BD8AF0(0xD000000000000020, v2, v3);

  dword_1ECAAA798 = v4;
  byte_1ECAAA79C = BYTE4(v4) & 1;
}

void sub_1D8BD8DFC()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = qword_1ECAAA780;
  v1 = sub_1D8BD87E8(0xD000000000000027, 0x80000001D8BF40E0, 1.1);

  dword_1ECAAA7A0 = LODWORD(v1);
}

void sub_1D8BD8E84()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = qword_1ECAAA780;
  v1 = sub_1D8BD87E8(0xD000000000000027, 0x80000001D8BF40B0, 0.9);

  dword_1ECAAA7A4 = LODWORD(v1);
}

void sub_1D8BD8F0C()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = qword_1ECAAA780;
  v1 = sub_1D8BD87E8(0xD00000000000001FLL, 0x80000001D8BF3DE0, 1.1);

  dword_1ECAAA7A8 = LODWORD(v1);
}

void sub_1D8BD8F94()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = qword_1ECAAA780;
  v1 = sub_1D8BD901C(0xD000000000000030, 0x80000001D8BF3F20, 0.98);

  qword_1ECAAA7B0 = *&v1;
}

double sub_1D8BD901C(uint64_t a1, unint64_t a2, double a3)
{
  v7 = sub_1D8BF09B0();
  v8 = [v3 objectForKey_];

  if (v8)
  {
    sub_1D8BF0D10();
    swift_unknownObjectRelease();
    sub_1D8BD992C(v18);
    v9 = sub_1D8BF09B0();
    [v3 doubleForKey_];
    v11 = v10;

    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v12 = sub_1D8BF08A0();
    __swift_project_value_buffer(v12, qword_1EE320A70);

    v13 = sub_1D8BF0880();
    v14 = sub_1D8BF0BB0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v18[0] = v16;
      *v15 = 136446722;
      *(v15 + 4) = sub_1D8BBE6E8(a1, a2, v18);
      *(v15 + 12) = 2050;
      *(v15 + 14) = a3;
      *(v15 + 22) = 2050;
      *(v15 + 24) = v11;
      _os_log_impl(&dword_1D8BAF000, v13, v14, "User default %{public}s overridden from %{public}f to %{public}f", v15, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1DA723A30](v16, -1, -1);
      MEMORY[0x1DA723A30](v15, -1, -1);
    }

    return v11;
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    sub_1D8BD992C(v18);
  }

  return a3;
}

void sub_1D8BD9218()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = qword_1ECAAA780;
  v1 = sub_1D8BD901C(0xD000000000000033, 0x80000001D8BF3EE0, 0.02);

  qword_1ECAAA7B8 = *&v1;
}

void sub_1D8BD92A0()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  OUTLINED_FUNCTION_2_8();
  v3 = sub_1D8BD9318(0xD000000000000034, v2, 5);

  qword_1ECAAA7C0 = v3;
}

id sub_1D8BD9318(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_1D8BF09B0();
  v8 = [v3 objectForKey_];

  if (v8)
  {
    sub_1D8BF0D10();
    swift_unknownObjectRelease();
    sub_1D8BD992C(v17);
    v9 = sub_1D8BF09B0();
    v10 = [v3 integerForKey_];

    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v11 = sub_1D8BF08A0();
    __swift_project_value_buffer(v11, qword_1EE320A70);

    v12 = sub_1D8BF0880();
    v13 = sub_1D8BF0BB0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v17[0] = v15;
      *v14 = 136446722;
      *(v14 + 4) = sub_1D8BBE6E8(a1, a2, v17);
      *(v14 + 12) = 2050;
      *(v14 + 14) = a3;
      *(v14 + 22) = 2050;
      *(v14 + 24) = v10;
      _os_log_impl(&dword_1D8BAF000, v12, v13, "User default %{public}s overridden from %{public}ld to %{public}ld", v14, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1DA723A30](v15, -1, -1);
      MEMORY[0x1DA723A30](v14, -1, -1);
    }

    return v10;
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    sub_1D8BD992C(v17);
  }

  return a3;
}

void sub_1D8BD9514()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  OUTLINED_FUNCTION_2_8();
  v3 = sub_1D8BD901C(0xD000000000000042, v2, 15.0);

  qword_1ECAAA7C8 = *&v3;
}

void sub_1D8BD9594()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = qword_1ECAAA780;
  v1 = sub_1D8BD901C(0xD000000000000040, 0x80000001D8BF3E00, 35.0);

  qword_1ECAAA7D0 = *&v1;
}

void sub_1D8BD961C()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  v2 = OUTLINED_FUNCTION_1_5();
  v4 = sub_1D8BD9318(v2, v3, 16);

  qword_1ECAAA7D8 = v4;
}

void sub_1D8BD968C()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  OUTLINED_FUNCTION_2_8();
  v3 = sub_1D8BD87E8(0xD000000000000025, v2, 0.25);

  dword_1ECAAA7E0 = LODWORD(v3);
}

void sub_1D8BD970C()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = qword_1ECAAA780;
  v1 = sub_1D8BD87E8(0xD000000000000022, 0x80000001D8BF3FC0, 0.01);

  dword_1ECAAA7E4 = LODWORD(v1);
}

void sub_1D8BD9794()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = qword_1ECAAA780;
  v1 = sub_1D8BD87E8(0xD000000000000029, 0x80000001D8BF3F90, 0.001);

  dword_1ECAAA7E8 = LODWORD(v1);
}

void sub_1D8BD981C()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = qword_1ECAAA780;
  v1 = sub_1D8BD87E8(0xD000000000000026, 0x80000001D8BF3F60, 0.1);

  dword_1ECAAA7EC = LODWORD(v1);
}

void sub_1D8BD98A4()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = qword_1ECAAA780;
  v1 = sub_1D8BD901C(0xD000000000000023, 0x80000001D8BF3CF0, 1000.0);

  qword_1ECAAA7F0 = *&v1;
}

uint64_t sub_1D8BD992C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAA45D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8BD9994()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  OUTLINED_FUNCTION_2_8();
  v3 = OUTLINED_FUNCTION_4_4(32, v2);

  byte_1ECAAA7F8 = v3 & 1;
}

uint64_t sub_1D8BD9A08(uint64_t a1, unint64_t a2, char a3)
{
  v7 = sub_1D8BF09B0();
  v8 = [v3 objectForKey_];

  if (v8)
  {
    sub_1D8BF0D10();
    swift_unknownObjectRelease();
    sub_1D8BD992C(v17);
    v9 = sub_1D8BF09B0();
    v10 = [v3 BOOLForKey_];

    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v11 = sub_1D8BF08A0();
    __swift_project_value_buffer(v11, qword_1EE320A70);

    v12 = sub_1D8BF0880();
    v13 = sub_1D8BF0BB0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v17[0] = v15;
      *v14 = 136446722;
      *(v14 + 4) = sub_1D8BBE6E8(a1, a2, v17);
      *(v14 + 12) = 1026;
      *(v14 + 14) = a3 & 1;
      *(v14 + 18) = 1026;
      *(v14 + 20) = v10;
      _os_log_impl(&dword_1D8BAF000, v12, v13, "User default %{public}s overridden from %{BOOL,public}d to %{BOOL,public}d", v14, 0x18u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1DA723A30](v15, -1, -1);
      MEMORY[0x1DA723A30](v14, -1, -1);
    }
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    sub_1D8BD992C(v17);
    LOBYTE(v10) = a3;
  }

  return v10 & 1;
}

void sub_1D8BD9C08()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  v2 = OUTLINED_FUNCTION_1_5();
  v4 = sub_1D8BD9C8C(v2, v3, 0, 0);
  v6 = v5;

  qword_1ECAAA800 = v4;
  qword_1ECAAA808 = v6;
}

uint64_t sub_1D8BD9C8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_1D8BF09B0();
  v10 = [v4 stringForKey_];

  if (v10)
  {
    v11 = sub_1D8BF09E0();
    v13 = v12;

    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v14 = sub_1D8BF08A0();
    __swift_project_value_buffer(v14, qword_1EE320A70);

    v15 = sub_1D8BF0880();
    v16 = sub_1D8BF0BB0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136446722;
      *(v17 + 4) = sub_1D8BBE6E8(a1, a2, &v22);
      *(v17 + 12) = 2082;
      if (a4)
      {
        v19 = a4;
      }

      else
      {
        a3 = 7104878;
        v19 = 0xE300000000000000;
      }

      v20 = sub_1D8BBE6E8(a3, v19, &v22);

      *(v17 + 14) = v20;
      *(v17 + 22) = 2082;
      *(v17 + 24) = sub_1D8BBE6E8(v11, v13, &v22);
      _os_log_impl(&dword_1D8BAF000, v15, v16, "User default %{public}s overridden from %{public}s to %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA723A30](v18, -1, -1);
      MEMORY[0x1DA723A30](v17, -1, -1);
    }
  }

  else
  {

    return a3;
  }

  return v11;
}

void sub_1D8BD9EDC()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  v2 = OUTLINED_FUNCTION_1_5();
  v4 = sub_1D8BD9A08(v2, v3, 0);

  byte_1ECAAA810 = v4 & 1;
}

void sub_1D8BD9F50()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  OUTLINED_FUNCTION_2_8();
  v3 = OUTLINED_FUNCTION_4_4(28, v2);

  byte_1ECAAA811 = v3 & 1;
}

void sub_1D8BD9FC4()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = qword_1ECAAA780;
  v1 = sub_1D8BD87E8(0xD000000000000020, 0x80000001D8BF41F0, 0.99);

  dword_1ECAAA814 = LODWORD(v1);
}

void sub_1D8BDA04C()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  OUTLINED_FUNCTION_2_8();
  v3 = OUTLINED_FUNCTION_4_4(46, v2);

  byte_1ECAAA818 = v3 & 1;
}

void sub_1D8BDA0C0()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  OUTLINED_FUNCTION_2_8();
  v3 = OUTLINED_FUNCTION_4_4(49, v2);

  byte_1ECAAA819 = v3 & 1;
}

void sub_1D8BDA134()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  OUTLINED_FUNCTION_2_8();
  v3 = sub_1D8BD901C(0xD000000000000026, v2, 10.0);

  qword_1ECAAA820 = *&v3;
}

void sub_1D8BDA1B4()
{
  if (qword_1ECAA3D50 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v1 = qword_1ECAAA780;
  v2 = OUTLINED_FUNCTION_1_5();
  v4 = sub_1D8BD9A08(v2, v3, 0);

  byte_1ECAAA828 = v4 & 1;
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1, unint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1D8BD9A08(v3, a2, 0);
}

double SpatialPhoto.MetalRenderer.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  return result;
}

double SpatialPhoto.MetalRenderer.init()()
{
  *(v0 + 80) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_1D8BDA2E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v37 = *(a1 + 5);
  v38 = *(a1 + 4);
  v35 = *(a1 + 7);
  v36 = *(a1 + 6);
  v44 = *(a1 + 8);
  v46 = *(a1 + 9);
  v48 = *(a1 + 10);
  memcpy(__dst, a1 + 34, 0x74uLL);
  sub_1D8BDA7D8(__dst, &v50);
  v5 = sub_1D8BDA728((a1 + 34));
  memcpy(v64, a1 + 34, 0x74uLL);
  sub_1D8BC77DC(v64);
  if (v5)
  {
    v6 = 0;
    v7 = __dst[5];
    v8 = *(MEMORY[0x1E69E9B18] + 16);
    v10 = *(MEMORY[0x1E69E9B18] + 48);
    v32 = *(MEMORY[0x1E69E9B18] + 32);
    v9 = v32;
    v33 = v8;
    DWORD1(v8) = -1.0;
    DWORD2(v9) = -1.0;
    v34 = *MEMORY[0x1E69E9B18];
    v66 = *MEMORY[0x1E69E9B18];
    v67 = v8;
    v68 = v9;
    v69 = v10;
    v31 = v10;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v12 = v37;
    v11 = v38;
    v14 = v35;
    v13 = v36;
    while (v6 != 64)
    {
      OUTLINED_FUNCTION_0_10(v6);
      *(&v50 + v15) = v16;
      v6 = v15 + 16;
    }

    v41 = v51;
    v42 = v50;
    v39 = v53;
    v40 = v52;
    v17 = *(a1 + 3);
    v50 = *(a1 + 2);
    v51 = v17;
    v52 = v11;
    v53 = v12;
    v54 = v13;
    v55 = v14;
    v56 = v44;
    v57 = v46;
    v58 = v48;
    memcpy(v59, a1 + 22, 0x60uLL);
    *v18.i64 = sub_1D8BC3768();
    v22 = 0;
    LODWORD(v23) = 0;
    HIDWORD(v23) = DWORD1(v46);
    *&v24 = v48;
    *(&v24 + 1) = 1065353216;
    v65[0] = v44;
    v65[1] = v23;
    v65[2] = v24;
    v65[3] = xmmword_1D8BF71A0;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    while (v22 != 4)
    {
      *(&v66 + v22 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(v65[v22])), v19, *&v65[v22], 1), v20, v65[v22], 2), v21, v65[v22], 3);
      ++v22;
    }

    v25 = *(v4 + 16);
    v50 = v34;
    v51 = v33;
    v52 = v32;
    v53 = v31;
    v54 = v42;
    v55 = v41;
    v56 = v40;
    v57 = v39;
    v58 = v34;
    v59[0] = v33;
    v59[1] = v32;
    v59[2] = v31;
    v59[3] = v66;
    v59[4] = v67;
    v59[5] = v68;
    v59[6] = v69;
    v59[7] = v34;
    v59[8] = v33;
    v59[9] = v32;
    v59[10] = v31;
    v60 = __dst[6];
    v61 = 0xFFFFFFFFLL;
    v62 = 0;
    [v5 renderScene:v25 withEncoder:v7 context:&v50];
    v26 = 0;
    v66 = v42;
    v67 = v41;
    v68 = v40;
    v69 = v39;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    while (v26 != 64)
    {
      OUTLINED_FUNCTION_0_10(v26);
      *(&v50 + v27) = v28;
      v26 = v27 + 16;
    }

    v47 = v51;
    v49 = v50;
    v43 = v53;
    v45 = v52;

    result = swift_beginAccess();
    v30 = *(v4 + 32);
    *a2 = v49;
    *(a2 + 16) = v47;
    *(a2 + 32) = v45;
    *(a2 + 48) = v43;
    *(a2 + 64) = v30;
  }

  else
  {
    sub_1D8BDA834();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D8BDA688(uint64_t a1)
{
  swift_beginAccess();
  sub_1D8BDA8F8(a1, v1 + 16);
  return swift_endAccess();
}

id sub_1D8BDA728(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 89))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[7];
  if (v5 && (v2 == v5 ? (v6 = v1[8] == v3) : (v6 = 0), v6 ? (v7 = v1[9] == v4) : (v7 = 0), v7))
  {
    v10 = (v1 + 10);
  }

  else
  {
    v8 = swift_unknownObjectRetain_n();
    v9 = sub_1D8BDA968(v8, v3, v4);
    swift_unknownObjectRelease();
    v11 = v1[10];
    v10 = (v1 + 10);
    *v10 = v9;

    *(v10 - 3) = v2;
    *(v10 - 2) = v3;
    *(v10 - 1) = v4;
    swift_unknownObjectRelease();
  }

  v12 = *v10;
  v13 = *v10;
  return v12;
}

unint64_t sub_1D8BDA834()
{
  result = qword_1ECAA48D0;
  if (!qword_1ECAA48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA48D0);
  }

  return result;
}

uint64_t sub_1D8BDA888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAA48D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8BDA8F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAA48D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1D8BDA968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_allocWithZone(MEMORY[0x1E69ADA18]);
  v5 = swift_unknownObjectRetain();
  return sub_1D8BDAF24(v5, a2, a3, 1);
}

uint64_t SpatialPhoto.MetalRenderer.deinit()
{
  sub_1D8BDAB60(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1D8BDAB60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAA48D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SpatialPhoto.MetalRenderer.__deallocating_deinit()
{
  SpatialPhoto.MetalRenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8BDAD60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D8BDADA0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *_s14descr1F54466F9O13MetalRendererC5ErrorOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D8BDAEA0()
{
  result = qword_1ECAA48E8;
  if (!qword_1ECAA48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA48E8);
  }

  return result;
}

id sub_1D8BDAF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v5 = [v4 initWithDevice:a1 colorPixelFormat:a2 depthPixelFormat:a3 sampleCount:a4 error:v9];
  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1D8BEFEA0();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v5;
}

uint64_t static SpatialPhoto.CaptureManager.start(_:device:)(uint64_t a1, unint64_t a2)
{
  if ((sub_1D8BDB0CC() & 1) == 0)
  {
    return 0;
  }

  v4 = [objc_opt_self() sharedCaptureManager];
  v5 = [v4 isCapturing];

  if (v5)
  {
    return 0;
  }

  type metadata accessor for SpatialPhoto.CaptureManager.Token();
  swift_allocObject();
  swift_unknownObjectRetain();

  return sub_1D8BDB14C(a1, a2);
}

uint64_t sub_1D8BDB0CC()
{
  if (qword_1ECAA3E30 != -1)
  {
    swift_once();
  }

  result = *(off_1ECAA48F0 + 16);
  if (result == 1)
  {
    *(off_1ECAA48F0 + 16) = 0;
  }

  return result;
}

uint64_t sub_1D8BDB14C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v19[1] = *MEMORY[0x1E69E9840];
  if (qword_1EE320A68 != -1)
  {
    swift_once();
  }

  v6 = sub_1D8BF08A0();
  __swift_project_value_buffer(v6, qword_1EE320A70);

  v7 = sub_1D8BF0880();
  v8 = sub_1D8BF0BB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1D8BBE6E8(a1, a2, v19);
    _os_log_impl(&dword_1D8BAF000, v7, v8, "%{public}s capturing metal commands", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA723A30](v10, -1, -1);
    MEMORY[0x1DA723A30](v9, -1, -1);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v11 = objc_allocWithZone(MEMORY[0x1E6973FF8]);

  v12 = [v11 init];
  v13 = MTLCreateSystemDefaultDevice();
  if (!v13)
  {
    __break(1u);
  }

  v14 = v13;

  [v12 setCaptureObject_];
  swift_unknownObjectRelease();
  [v12 setDestination_];
  v15 = [objc_opt_self() sharedCaptureManager];
  v19[0] = 0;
  LODWORD(v14) = [v15 startCaptureWithDescriptor:v12 error:v19];

  if (v14)
  {
    v16 = v19[0];

    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    v18 = v19[0];
    sub_1D8BEFEA0();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t SpatialPhoto.CaptureManager.Token.deinit()
{
  sub_1D8BDB448();

  return v0;
}

uint64_t SpatialPhoto.CaptureManager.Token.__deallocating_deinit()
{
  sub_1D8BDB448();

  return swift_deallocClassInstance();
}

void sub_1D8BDB448()
{
  v1 = v0;
  if (qword_1EE320A68 != -1)
  {
    swift_once();
  }

  v2 = sub_1D8BF08A0();
  __swift_project_value_buffer(v2, qword_1EE320A70);

  v3 = sub_1D8BF0880();
  v4 = sub_1D8BF0BB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1D8BBE6E8(*(v1 + 16), *(v1 + 24), &v8);
    _os_log_impl(&dword_1D8BAF000, v3, v4, "%{public}s stop capturing metal commands", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1DA723A30](v6, -1, -1);
    MEMORY[0x1DA723A30](v5, -1, -1);
  }

  v7 = [objc_opt_self() sharedCaptureManager];
  [v7 stopCapture];
}

void *sub_1D8BDB5CC()
{
  _s14descr1F54466F9O14CaptureManagerC17CapturePreferenceCMa();
  swift_allocObject();
  result = sub_1D8BDB60C();
  off_1ECAA48F0 = result;
  return result;
}

uint64_t sub_1D8BDB60C()
{
  v1 = v0;
  v8 = *MEMORY[0x1E69E9840];
  *(v0 + 16) = 0;
  out_token = 0;
  sub_1D8BDB96C();
  v2 = sub_1D8BF0C30();
  v3 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_1D8BDB9B0;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D8BDB854;
  v6[3] = &block_descriptor_1;
  v4 = _Block_copy(v6);

  notify_register_dispatch("com.apple.photos.spatialphoto.captureframe", &out_token, v2, v4);
  _Block_release(v4);

  return v1;
}

uint64_t sub_1D8BDB73C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EE320A68 != -1)
    {
      swift_once();
    }

    v2 = sub_1D8BF08A0();
    __swift_project_value_buffer(v2, qword_1EE320A70);
    v3 = sub_1D8BF0880();
    v4 = sub_1D8BF0BB0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D8BAF000, v3, v4, "PixelBufferRenderDestination capturing next frame", v5, 2u);
      MEMORY[0x1DA723A30](v5, -1, -1);
    }

    *(v1 + 16) = 1;
  }

  return result;
}

uint64_t sub_1D8BDB854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

unint64_t sub_1D8BDB96C()
{
  result = qword_1ECAA4B30;
  if (!qword_1ECAA4B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAA4B30);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for SpatialPhoto(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t SpatialPhoto.OcclusionDebugReport.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto20OcclusionDebugReport_fileURL;
  v4 = sub_1D8BEFEC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id SpatialPhoto.OcclusionDebugReport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpatialPhoto.OcclusionDebugReport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialPhoto.OcclusionDebugReport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SpatialPhoto.OcclusionDebugReport()
{
  result = qword_1ECAA48F8;
  if (!qword_1ECAA48F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8BDBC94()
{
  result = sub_1D8BEFEC0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_1D8BDBD3C@<W0>(uint64_t *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  result = CGRectIsNull(*&a2);
  if (result || (v16.origin.x = a2, v16.origin.y = a3, v16.size.width = a4, v16.size.height = a5, result = CGRectIsInfinite(v16)))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_17:
    *a1 = v11;
    a1[1] = v12;
    a1[2] = 0;
    a1[3] = v13;
    a1[4] = v14;
    a1[5] = v15;
    return result;
  }

  if (a2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if (a5 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a5 < 9.22337204e18)
  {
    v11 = a2;
    v12 = a3;
    v13 = a4;
    v15 = 1;
    v14 = a5;
    goto LABEL_17;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D8BDBEA8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_1D8BDBEEC(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0x7261646E6F636573;
      break;
    case 2:
      v3 = 11;
      goto LABEL_6;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      v3 = 5;
LABEL_6:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SpatialPhoto.RealityKitRenderer.__allocating_init()()
{
  v0 = swift_allocObject();
  SpatialPhoto.RealityKitRenderer.init()();
  return v0;
}

uint64_t *SpatialPhoto.RealityKitRenderer.init()()
{
  v1 = v0;
  v50 = *v0;
  sub_1D8BF08D0();
  OUTLINED_FUNCTION_3_1();
  v60 = v3;
  v61 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_53();
  v58 = v5 - v4;
  OUTLINED_FUNCTION_11_3();
  v59 = sub_1D8BF0900();
  OUTLINED_FUNCTION_3_1();
  v57 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53();
  v56 = v9 - v8;
  OUTLINED_FUNCTION_11_3();
  sub_1D8BEFFD0();
  OUTLINED_FUNCTION_3_1();
  v53 = v11;
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53();
  v55 = v13 - v12;
  OUTLINED_FUNCTION_11_3();
  sub_1D8BF0090();
  OUTLINED_FUNCTION_3_1();
  v51 = v15;
  v52 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_53();
  v18 = v17 - v16;
  v19 = sub_1D8BF0040();
  MEMORY[0x1EEE9AC00](v19 - 8);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_14_3();
  v20 = sub_1D8BF01E0();
  OUTLINED_FUNCTION_3_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53();
  v26 = v25 - v24;
  v27 = sub_1D8BF0060();
  MEMORY[0x1EEE9AC00](v27 - 8);
  OUTLINED_FUNCTION_53();
  *(v0 + 28) = 0;
  *(v0 + 5) = 0u;
  *(v0 + 6) = 0u;
  *(v0 + 3) = 0u;
  *(v0 + 4) = 0u;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  *(v0 + 116) = 1;
  v0[15] = 0;
  v0[17] = 0;
  if (qword_1EE320A68 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v28 = sub_1D8BF08A0();
  __swift_project_value_buffer(v28, qword_1EE320A70);
  v29 = sub_1D8BF0880();
  v30 = sub_1D8BF0BB0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1D8BAF000, v29, v30, "RealityKitRenderer init()", v31, 2u);
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
  }

  if (qword_1ECAA3E10 != -1)
  {
    swift_once();
  }

  *(v1 + 128) = byte_1ECAAA818;
  if (qword_1ECAA3E18 != -1)
  {
    swift_once();
  }

  *(v1 + 129) = (byte_1ECAAA819 & 1) == 0;
  v32 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v33 = sub_1D8BF09B0();
  [v32 setInteger:1 forKey:v33];

  sub_1D8BF0750();
  sub_1D8BF0740();
  if (qword_1ECAA3E38 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v34 = qword_1ECAA4908;
  sub_1D8BF06F0();
  sub_1D8BF0700();
  sub_1D8BF0730();
  sub_1D8BF0720();
  sub_1D8BF0710();
  v62 = swift_allocBox();
  v36 = v35;

  sub_1D8BF0170();
  type metadata accessor for REEngineClockMode(0);
  v64 = v37;
  LODWORD(aBlock[0]) = 2;
  sub_1D8BF0050();
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  sub_1D8BF01D0();
  (*(v22 + 16))(v26, v36, v20);
  sub_1D8BF0140();
  (*(v22 + 8))(v26, v20);
  type metadata accessor for REStartupOptions(0);
  v64 = v38;
  LODWORD(aBlock[0]) = 8;
  sub_1D8BF0030();
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  sub_1D8BF01A0();
  sub_1D8BF0180();
  type metadata accessor for REEngineServiceMask(0);
  sub_1D8BF0080();
  v39 = *(v51 + 8);
  v39(v18, v52);
  OUTLINED_FUNCTION_16_3(v69);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  sub_1D8BF0190();
  sub_1D8BF01B0();
  sub_1D8BF0080();
  v39(v18, v52);
  OUTLINED_FUNCTION_16_3(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  sub_1D8BF01C0();
  sub_1D8BF0150();
  type metadata accessor for RERenderFlags(0);
  v41 = v40;
  sub_1D8BEFFC0();
  (*(v53 + 8))(v55, v54);
  if (*(v1 + 129))
  {
    v42 = 2;
  }

  else
  {
    v42 = 0;
  }

  v64 = v41;
  LODWORD(aBlock[0]) = v67 & 0xFFFFFFFD | v42 | 0x40000;
  sub_1D8BEFFB0();
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  sub_1D8BF0160();
  v43 = qword_1ECAA4908;
  v44 = swift_allocObject();
  v44[2] = v62;
  v44[3] = v1;
  v44[4] = v50;
  v65 = sub_1D8BE2900;
  v66 = v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8BDBEA8;
  v64 = &block_descriptor_2;
  v45 = _Block_copy(aBlock);
  v46 = v43;

  sub_1D8BF08F0();
  OUTLINED_FUNCTION_7_4();
  sub_1D8BE3440(v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAA4B40);
  sub_1D8BE3488(&qword_1ECAA4760, &unk_1ECAA4B40);
  sub_1D8BF0D60();
  MEMORY[0x1DA722BF0](0, v56, v58, v45);
  _Block_release(v45);

  (*(v60 + 8))(v58, v61);
  (*(v57 + 8))(v56, v59);

  return v1;
}

uint64_t sub_1D8BDC88C(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v2 = sub_1D8BF0830();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v69 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v64[0] = v64 - v5;
  v6 = sub_1D8BF01E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1D8BF07F0();
  v10 = *(v76 - 8);
  v11 = MEMORY[0x1EEE9AC00](v76);
  v72 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v74 = v64 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v67 = v64 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v73 = v64 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v64 - v19;
  v21 = swift_projectBox();
  if (qword_1ECAA3E78 != -1)
  {
    swift_once();
  }

  v22 = sub_1D8BF0820();
  v23 = __swift_project_value_buffer(v22, qword_1ECAA4C20);
  sub_1D8BF0810();
  sub_1D8BF07D0();
  v64[1] = v23;
  v24 = sub_1D8BF0810();
  v25 = sub_1D8BF0C90();
  if (sub_1D8BF0CF0())
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v24, v25, v27, "RealityRendererEngineInit", "", v26, 2u);
    MEMORY[0x1DA723A30](v26, -1, -1);
  }

  v28 = v76;
  v65 = *(v10 + 16);
  v66 = v10 + 16;
  v65(v73, v20, v76);
  sub_1D8BF0860();
  swift_allocObject();
  sub_1D8BF0850();
  v29 = *(v10 + 8);
  v75 = v10 + 8;
  v77 = v29;
  v29(v20, v28);
  sub_1D8BF0020();
  swift_beginAccess();
  (*(v7 + 16))(v9, v21, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4980);
  v30 = sub_1D8BF06A0();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D8BF5A50;
  (*(v31 + 104))(v33 + v32, *MEMORY[0x1E697A460], v30);
  sub_1D8BE2E14(v33);
  sub_1D8BEFFF0();

  (*(v7 + 8))(v9, v6);
  v34 = sub_1D8BF0810();
  v35 = v67;
  sub_1D8BF0840();
  v36 = sub_1D8BF0C80();
  v37 = sub_1D8BF0CF0();
  v38 = MEMORY[0x1E69E93E8];
  if (v37)
  {

    v39 = v64[0];
    sub_1D8BF0870();

    v41 = v70;
    v40 = v71;
    if ((*(v70 + 88))(v39, v71) == *v38)
    {
      v42 = "[Error] Interval already ended";
    }

    else
    {
      (*(v41 + 8))(v39, v40);
      v42 = "";
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v34, v36, v44, "RealityRendererEngineInit", v42, v43, 2u);
    MEMORY[0x1DA723A30](v43, -1, -1);
  }

  v45 = v35;
  v46 = v76;
  v77(v45, v76);
  sub_1D8BF0810();
  v47 = v74;
  sub_1D8BF07D0();
  v48 = sub_1D8BF0810();
  v49 = sub_1D8BF0C90();
  v50 = sub_1D8BF0CF0();
  v51 = v69;
  if (v50)
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v48, v49, v53, "RealityRendererRendererInit", "", v52, 2u);
    v54 = v52;
    v47 = v74;
    MEMORY[0x1DA723A30](v54, -1, -1);
  }

  v65(v73, v47, v46);
  swift_allocObject();
  sub_1D8BF0850();
  v77(v47, v46);
  sub_1D8BE1CD4();
  v55 = sub_1D8BF0810();
  v56 = v72;
  sub_1D8BF0840();
  v57 = sub_1D8BF0C80();
  if (sub_1D8BF0CF0())
  {

    sub_1D8BF0870();

    v59 = v70;
    v58 = v71;
    if ((*(v70 + 88))(v51, v71) == *MEMORY[0x1E69E93E8])
    {
      v60 = "[Error] Interval already ended";
    }

    else
    {
      (*(v59 + 8))(v51, v58);
      v60 = "";
    }

    v61 = swift_slowAlloc();
    *v61 = 0;
    v62 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v55, v57, v62, "RealityRendererRendererInit", v60, v61, 2u);
    MEMORY[0x1DA723A30](v61, -1, -1);
  }

  else
  {
  }

  return (v77)(v56, v46);
}

void *SpatialPhoto.RealityKitRenderer.deinit()
{
  v2 = v0;
  v3 = sub_1D8BF08D0();
  OUTLINED_FUNCTION_3_1();
  v23 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_14_3();
  sub_1D8BF0900();
  OUTLINED_FUNCTION_3_1();
  v21 = v7;
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_53();
  v10 = v9 - v8;
  if (qword_1EE320A68 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v11 = sub_1D8BF08A0();
  __swift_project_value_buffer(v11, qword_1EE320A70);
  v12 = sub_1D8BF0880();
  v13 = sub_1D8BF0BB0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D8BAF000, v12, v13, "RealityKitRenderer deinit", v14, 2u);
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
  }

  v2[17] = 0;

  v2[8] = 0;

  v2[9] = 0;

  v2[10] = 0;

  v2[13] = 0;

  v2[15] = 0;

  if (qword_1ECAA3E38 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v15 = qword_1ECAA4908;
  aBlock[4] = sub_1D8BDD4BC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8BDBEA8;
  aBlock[3] = &block_descriptor_3;
  v16 = _Block_copy(aBlock);
  v17 = v15;
  sub_1D8BF08F0();
  OUTLINED_FUNCTION_7_4();
  sub_1D8BE3440(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAA4B40);
  sub_1D8BE3488(&qword_1ECAA4760, &unk_1ECAA4B40);
  sub_1D8BF0D60();
  MEMORY[0x1DA722BF0](0, v10, v1, v16);
  _Block_release(v16);

  (*(v23 + 8))(v1, v3);
  (*(v21 + 8))(v10, v22);
  sub_1D8BE33E8((v2 + 2), &unk_1ECAA48D8);

  return v2;
}

uint64_t SpatialPhoto.RealityKitRenderer.__deallocating_deinit()
{
  SpatialPhoto.RealityKitRenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8BDD5C0@<X0>(const void *a1@<X0>, _OWORD *a2@<X8>)
{
  v69 = a2;
  sub_1D8BF0830();
  OUTLINED_FUNCTION_3_1();
  v67 = v4;
  v68 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_53();
  v7 = v6 - v5;
  v8 = sub_1D8BF07F0();
  OUTLINED_FUNCTION_3_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_4();
  *&v76 = v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - v17;
  memcpy(v87, a1, 0x300uLL);
  if (qword_1ECAA3E78 != -1)
  {
    swift_once();
  }

  v19 = sub_1D8BF0820();
  v20 = __swift_project_value_buffer(v19, qword_1ECAA4C20);
  sub_1D8BF0810();
  sub_1D8BF07D0();
  sub_1D8BE2924(v87, v86);
  v73 = v20;
  v21 = sub_1D8BF0810();
  LODWORD(v78) = sub_1D8BF0C90();
  sub_1D8BE2980(v87);
  v22 = sub_1D8BF0CF0();
  *&v74 = v7;
  if (v22)
  {
    *&v77 = v10;
    v72 = v8;
    v23 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v23 = 136446466;
    memcpy(v86, &v87[32], 0xF0uLL);
    v24 = sub_1D8BDDEB0();
    v26 = sub_1D8BBE6E8(v24, v25, &v88);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    memcpy(v80, &v87[400], sizeof(v80));
    memcpy(v86, &v87[400], 0xF1uLL);
    if (sub_1D8BD15A8(v86) == 1)
    {
      v27 = 0;
      v28 = 0xE000000000000000;
    }

    else
    {
      v81 = 0x61646E6F63657320;
      v82 = 0xEB000000003A7972;
      memcpy(v79, v80, sizeof(v79));
      v29 = sub_1D8BDDEB0();
      MEMORY[0x1DA722A10](v29);

      v27 = v81;
      v28 = v82;
    }

    v30 = sub_1D8BBE6E8(v27, v28, &v88);

    *(v23 + 14) = v30;
    v31 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v21, v78, v31, "RealityRendererRender", "primary:%{public}s %s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();

    v8 = v72;
    v10 = v77;
  }

  else
  {
  }

  (*(v10 + 16))(v16, v18, v8);
  sub_1D8BF0860();
  swift_allocObject();
  v78 = sub_1D8BF0850();
  v32 = *(v10 + 8);
  v32(v18, v8);
  memset(v79, 0, 64);
  LOBYTE(v79[4]) = 2;
  v88 = 0;
  v33 = v75;
  v34 = *(v75 + 129);
  *&v77 = v10 + 8;
  v72 = v32;
  if (v34 == 1)
  {
    if (qword_1ECAA3E40 != -1)
    {
      swift_once();
    }

    v35 = qword_1ECAA4910;
    OUTLINED_FUNCTION_19_2();
    v36 = swift_allocObject();
    v36[2] = v33;
    v36[3] = v79;
    memcpy(v36 + 4, v87, 0x300uLL);
    v36[100] = &v88;
    v37 = swift_allocObject();
    v70 = sub_1D8BE2A50;
    *(v37 + 16) = sub_1D8BE2A50;
    *(v37 + 24) = v36;
    v85 = sub_1D8BE3508;
    OUTLINED_FUNCTION_5_4(v37);
    OUTLINED_FUNCTION_6_4(COERCE_DOUBLE(1107296256));
    v83 = v38;
    v84 = &block_descriptor_22;
    v39 = _Block_copy(&v81);
    sub_1D8BE2924(v87, v86);
    v40 = v35;

    dispatch_sync(v40, v39);

    _Block_release(v39);
    LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

    if ((v39 & 1) == 0)
    {
      v41 = v8;
      v71 = 0;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (qword_1ECAA3E38 != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v42 = qword_1ECAA4908;
  OUTLINED_FUNCTION_19_2();
  v43 = swift_allocObject();
  v43[2] = v79;
  v43[3] = v33;
  memcpy(v43 + 4, v87, 0x300uLL);
  v43[100] = &v88;
  v44 = swift_allocObject();
  v71 = sub_1D8BE34FC;
  *(v44 + 16) = sub_1D8BE34FC;
  *(v44 + 24) = v43;
  v85 = sub_1D8BE29D4;
  OUTLINED_FUNCTION_5_4(v44);
  OUTLINED_FUNCTION_6_4(COERCE_DOUBLE(1107296256));
  v83 = v45;
  v84 = &block_descriptor_12;
  v46 = _Block_copy(&v81);
  sub_1D8BE2924(v87, v86);

  v47 = v42;

  dispatch_sync(v47, v46);

  _Block_release(v46);
  LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

  if (v46)
  {
    __break(1u);
    return result;
  }

  v41 = v8;
  v70 = 0;
LABEL_17:
  v49 = sub_1D8BF0810();
  v50 = v76;
  sub_1D8BF0840();
  v51 = sub_1D8BF0C80();
  v52 = sub_1D8BF0CF0();
  v53 = v74;
  if (v52)
  {

    sub_1D8BF0870();

    v55 = v67;
    v54 = v68;
    if ((*(v67 + 88))(v53, v68) == *MEMORY[0x1E69E93E8])
    {
      v56 = "[Error] Interval already ended";
    }

    else
    {
      (*(v55 + 8))(v53, v54);
      v56 = "";
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = v76;
    v59 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v49, v51, v59, "RealityRendererRender", v56, v57, 2u);
    v50 = v58;
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
  }

  v72(v50, v41);
  v60 = v79[4];
  if (LOBYTE(v79[4]) == 2)
  {
    v61 = v88;
    if (!v88)
    {
      sub_1D8BE29FC();
      swift_allocError();
      *v65 = 2;
    }

    swift_willThrow();
    v66 = v61;

    sub_1D8BC47A8(v70);
    return sub_1D8BC47A8(v71);
  }

  else
  {
    v76 = v79[2];
    v77 = v79[3];
    v74 = v79[0];
    v75 = v79[1];

    v62 = v69;
    v63 = v75;
    *v69 = v74;
    v62[1] = v63;
    v64 = v77;
    v62[2] = v76;
    v62[3] = v64;
    *(v62 + 64) = v60 & 1;

    sub_1D8BC47A8(v70);
    return sub_1D8BC47A8(v71);
  }
}

uint64_t sub_1D8BDDEB0()
{
  v8 = *(v0 + 208);
  v9 = *(v0 + 224);
  sub_1D8BF0DE0();

  v1 = sub_1D8BF0FA0();
  MEMORY[0x1DA722A10](v1);

  MEMORY[0x1DA722A10](8236, 0xE200000000000000);
  v2 = sub_1D8BF0FA0();
  MEMORY[0x1DA722A10](v2);

  MEMORY[0x1DA722A10](0x3A696F72202C29, 0xE700000000000000);
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v8, *(&v8 + 1), v9, *(&v9 + 1)];
  v4 = sub_1D8BF09E0();
  v6 = v5;

  MEMORY[0x1DA722A10](v4, v6);

  MEMORY[0x1DA722A10](32032, 0xE200000000000000);
  return 0x283A657A6973207BLL;
}

void sub_1D8BDE048(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (qword_1ECAA3E48 != -1)
  {
    swift_once();
  }

  v8 = qword_1ECAA4918;
  sub_1D8BF0CA0();

  if (qword_1ECAA3E38 != -1)
  {
    swift_once();
  }

  v9 = qword_1ECAA4908;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a1;
  memcpy(v10 + 4, a3, 0x300uLL);
  v10[100] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D8BE33C4;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1D8BE3508;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8BDE290;
  aBlock[3] = &block_descriptor_71;
  v12 = _Block_copy(aBlock);
  v13 = v9;

  sub_1D8BE2924(a3, &v16);

  dispatch_sync(v13, v12);

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (*(a1 + 64))
    {

      sub_1D8BF0470();
    }

    v15 = qword_1ECAA4918;
    sub_1D8BF0CB0();
  }
}

double sub_1D8BDE2B8(uint64_t a1, uint64_t a2, const void *a3)
{
  sub_1D8BDE494(a3, v9);
  result = *v9;
  v5 = v9[1];
  v6 = v9[2];
  v7 = v9[3];
  v8 = v10;
  *a1 = v9[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  return result;
}

uint64_t sub_1D8BDE494@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = *v4;
  v8 = sub_1D8BF0940();
  OUTLINED_FUNCTION_3_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_53();
  v14 = (v13 - v12);
  memcpy(v30, a1, sizeof(v30));
  if (qword_1ECAA3E38 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v15 = qword_1ECAA4908;
  *v14 = qword_1ECAA4908;
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8020], v8);
  v16 = v15;
  LOBYTE(v15) = sub_1D8BF0950();
  result = (*(v10 + 8))(v14, v8);
  if (v15)
  {
    v18 = v4[8];
    if (v18)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      MEMORY[0x1EEE9AC00](result);
      *&v25[-48] = v4;
      *&v25[-40] = v18;
      *&v25[-32] = v30;
      *&v25[-24] = &v26;
      *&v25[-16] = v7;

      sub_1D8BDF8A8(0xD00000000000008CLL, 0x80000001D8BF4690, 161, sub_1D8BE3220, &v25[-64]);

      if (!v3)
      {
        if (v30[45])
        {
          v19 = 1;
        }

        else
        {
          v21 = v30[0];
          result = swift_beginAccess();
          v19 = *(v21 + 32);
        }

        v22 = v27;
        v23 = v28;
        v24 = v29;
        *a2 = v26;
        *(a2 + 16) = v22;
        *(a2 + 32) = v23;
        *(a2 + 48) = v24;
        *(a2 + 64) = v19;
      }
    }

    else
    {
      sub_1D8BE29FC();
      swift_allocError();
      *v20 = 0;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8BDE728(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  sub_1D8BDFA74(a2);
  sub_1D8BDFD74(a2, a3[4] / a3[5]);
  v9 = *(a3 + 8);
  v10 = *(a3 + 9);
  v11 = *(a3 + 360);
  v12 = *(a3 + 191);
  v25[0] = *a3;
  LOBYTE(v25[1]) = v9;
  BYTE1(v25[1]) = v10;
  BYTE2(v25[1]) = v11 & 1;
  HIDWORD(v25[1]) = v12;

  v14 = sub_1D8BE0370(v13, v25);

  if (!v4)
  {
    sub_1D8BE0C28(a2, a3);
    *a4 = v16;
    a4[1] = v17;
    a4[2] = v18;
    a4[3] = v19;
    memcpy(v25, a3, 0x300uLL);
    v21 = sub_1D8BDE948(v25, a2);
    v22 = v20;
    v23 = *(a1 + 56);
    if (v23)
    {
      v24 = sub_1D8BE2078(v23, v20);
    }

    else
    {
      v24 = 1;
    }

    if (*(a1 + 136))
    {

      if (!(v14 & 1 | ((sub_1D8BF0570() & 1) == 0)) && (*(a1 + 128) & v24 & 1) != 0)
      {
        sub_1D8BDF0B8(v21);

        sub_1D8BF0560();
LABEL_11:

        *(a1 + 56) = v22;
      }
    }

    sub_1D8BF0450();
    *(a1 + 136) = sub_1D8BF0500();
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1D8BDE948(unsigned __int8 *a1, uint64_t a2)
{
  v73 = a2;
  v72 = sub_1D8BF0400();
  v3 = *(v72 - 8);
  v4 = MEMORY[0x1EEE9AC00](v72);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v62 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v62 - v10;
  v12 = sub_1D8BF04E0();
  v76 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v67 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v75 = &v62 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  v22 = a1[8];
  memcpy(v78, a1 + 272, 0x74uLL);
  memcpy(v79, a1 + 648, 0x74uLL);
  memcpy(v77, a1 + 272, 0x74uLL);
  sub_1D8BDA7D8(v78, __dst);
  sub_1D8BE3294(v79, __dst, &qword_1ECAA4958);
  v68 = sub_1D8BE2144(v21, v77, v73);
  memcpy(__dst, v77, 0x74uLL);
  sub_1D8BC77DC(__dst);
  v69 = v22;
  v66 = v6;
  if (v22)
  {
    sub_1D8BF03F0();
  }

  else
  {
    sub_1D8BF03E0();
  }

  (*(v3 + 32))(v11, v9, v72);
  v23 = sub_1D8BF04B0();
  sub_1D8BF0390();
  v23(v77, 0);
  v24 = v76;
  v25 = *(v76 + 16);
  v25(v19, v21, v12);
  sub_1D8BE929C();
  v27 = v26;
  v29 = *(v26 + 16);
  v28 = *(v26 + 24);
  v70 = v21;
  if (v29 >= v28 >> 1)
  {
    sub_1D8BE929C();
    v27 = v58;
  }

  *(v27 + 16) = v29 + 1;
  v32 = *(v24 + 32);
  v30 = v24 + 32;
  v31 = v32;
  v65 = (*(v30 + 48) + 32) & ~*(v30 + 48);
  v64 = *(v30 + 40);
  v71 = v12;
  v32(v27 + v65 + v64 * v29, v19, v12);
  v33 = MEMORY[0x1E69E7CC0];
  sub_1D8BE9194();
  v35 = v34;
  v36 = *(v34 + 16);
  if (v36 >= *(v34 + 24) >> 1)
  {
    sub_1D8BE9194();
    v35 = v59;
  }

  *(v35 + 16) = v36 + 1;
  *(v35 + 8 * v36 + 32) = v68;
  if (v79[0])
  {
    v68 = v31;
    v77[0] = v79[0];
    memcpy(&v77[1], &v79[1], 0x6CuLL);
    v74 = sub_1D8BE2144(v75, v77, v73);
    v63 = v25;
    if (v69)
    {
      sub_1D8BF03F0();
    }

    else
    {
      v77[0] = v33;
      sub_1D8BE3440(&qword_1ECAA4960, MEMORY[0x1E697A3E0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4968);
      sub_1D8BE3488(&qword_1ECAA4970, &qword_1ECAA4968);
      sub_1D8BF0D60();
    }

    v47 = v75;
    v48 = sub_1D8BF04B0();
    sub_1D8BF0390();
    v48(v77, 0);
    v49 = v67;
    v50 = v71;
    v63(v67, v47, v71);
    v51 = *(v27 + 16);
    if (v51 >= *(v27 + 24) >> 1)
    {
      sub_1D8BE929C();
      v27 = v60;
    }

    v52 = v68;
    *(v27 + 16) = v51 + 1;
    v52(v27 + v65 + v51 * v64, v49, v50);
    v53 = *(v35 + 16);
    if (v53 >= *(v35 + 24) >> 1)
    {
      sub_1D8BE9194();
      v35 = v61;
    }

    v54 = v76;
    v55 = v70;
    sub_1D8BE33E8(v79, &qword_1ECAA4958);
    v56 = *(v54 + 8);
    v56(v75, v50);
    v56(v55, v50);
    *(v35 + 16) = v53 + 1;
    *(v35 + 8 * v53 + 32) = v74;
  }

  else
  {
    v37 = v69;
    v38 = v71;
    if ((v69 & 0xFFFFFFFB) != 0)
    {
      if (qword_1EE320A68 != -1)
      {
        swift_once();
      }

      v39 = sub_1D8BF08A0();
      __swift_project_value_buffer(v39, qword_1EE320A70);
      v40 = sub_1D8BF0880();
      v41 = sub_1D8BF0B90();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v77[0] = v75;
        *v42 = 136446210;
        v43 = sub_1D8BDBEEC(v37);
        v45 = sub_1D8BBE6E8(v43, v44, v77);

        *(v42 + 4) = v45;
        _os_log_impl(&dword_1D8BAF000, v40, v41, "Occlusion mode %{public}s but secondaryDestination is nil", v42, 0xCu);
        v46 = v75;
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x1DA723A30](v46, -1, -1);
        MEMORY[0x1DA723A30](v42, -1, -1);
      }
    }

    (*(v76 + 8))(v70, v38);
  }

  return v27;
}

uint64_t sub_1D8BDF0B8(uint64_t a1)
{
  v2 = v1;
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4940);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v57 - v4;
  v74 = sub_1D8BF00D0();
  v83 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8BF07B0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1D8BF0350();
  v10 = *(v84 - 8);
  v11 = MEMORY[0x1EEE9AC00](v84);
  v71 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v69 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - v15;
  v17 = sub_1D8BF04E0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4948);
  MEMORY[0x1EEE9AC00](v21);
  v62 = (&v57 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4950);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v78 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v24);
  v77 = &v57 - v27;
  v28 = 0;
  v29 = *(v64 + 16);
  v61 = v18 + 16;
  v67 = (v18 + 32);
  v30 = (v10 + 8);
  v66 = (v83 + 8);
  v59 = (v8 + 32);
  v58 = (v8 + 8);
  v63 = v18;
  v65 = (v18 + 8);
  v31 = v21;
  v68 = v29;
  v72 = v7;
  v70 = v5;
  v75 = v21;
  v76 = v17;
  while (1)
  {
    if (v28 == v29)
    {
      v32 = 1;
      v83 = v29;
      v33 = v78;
      goto LABEL_7;
    }

    if (v28 >= v29)
    {
      break;
    }

    v34 = v2;
    v35 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_18;
    }

    v36 = v63;
    v37 = v64 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v28;
    v38 = *(v31 + 48);
    v39 = v62;
    *v62 = v28;
    (*(v36 + 16))(&v39[v38], v37, v17);
    v40 = v39;
    v33 = v78;
    sub_1D8BE3244(v40, v78, &qword_1ECAA4948);
    v32 = 0;
    v83 = v35;
    v2 = v34;
LABEL_7:
    v41 = v77;
    __swift_storeEnumTagSinglePayload(v33, v32, 1, v31);
    sub_1D8BE3244(v33, v41, &qword_1ECAA4950);
    result = __swift_getEnumTagSinglePayload(v41, 1, v31);
    if (result == 1)
    {
      return result;
    }

    (*v67)(v20, v41 + *(v31 + 48), v17);
    sub_1D8BF04A0();
    sub_1D8BF02E0();
    v42 = v2;
    v43 = *v30;
    v44 = v84;
    (*v30)(v16, v84);
    sub_1D8BF0590();

    sub_1D8BF04A0();
    sub_1D8BF0310();
    v43(v16, v44);
    sub_1D8BF05A0();

    v45 = v69;
    sub_1D8BF04A0();
    v46 = sub_1D8BF02F0();
    v43(v45, v44);
    if (v46)
    {
      sub_1D8BF05B0();
      swift_unknownObjectRelease();
    }

    v47 = v71;
    sub_1D8BF04A0();
    v48 = sub_1D8BF0300();
    v43(v47, v84);
    v2 = v42;
    if (v48)
    {
      sub_1D8BF0580();
    }

    sub_1D8BF04D0();
    v49 = v73;
    sub_1D8BF00B0();

    v50 = v70;
    v51 = v72;
    sub_1D8BF00F0();
    (*v66)(v49, v74);
    if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
    {
      sub_1D8BE33E8(v50, &qword_1ECAA4940);
    }

    else
    {
      v52 = v60;
      (*v59)(v60, v50, v51);
      sub_1D8BF0790();
      sub_1D8BF0550();
      (*v58)(v52, v51);
    }

    v31 = v75;
    v17 = v76;
    sub_1D8BF04D0();
    sub_1D8BF0130();
    sub_1D8BEFF80();
    v81 = v54;
    v82 = v53;
    v79 = v56;
    v80 = v55;

    sub_1D8BF0540();
    result = (*v65)(v20, v17);
    v29 = v68;
    v28 = v83;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D8BDF8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D8BF0940();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8BF0020();
  sub_1D8BF0010();
  sub_1D8BF0000();

  v12 = sub_1D8BF01F0();

  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  LOBYTE(v12) = sub_1D8BF0950();
  result = (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  sub_1D8BE2D74();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8BDFA74(uint64_t a1)
{
  sub_1D8BF0940();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_53();
  v6 = (v5 - v4);
  if (qword_1ECAA3E38 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v7 = qword_1ECAA4908;
  *v6 = qword_1ECAA4908;
  v8 = OUTLINED_FUNCTION_18_2();
  v9(v8);
  v10 = v7;
  sub_1D8BF0950();
  v11 = OUTLINED_FUNCTION_17_1();
  result = v12(v11);
  if (v7)
  {
    if (!*(v1 + 72))
    {
      MEMORY[0x1EEE9AC00](result);
      *&v18[-16] = v1;
      *&v18[-8] = a1;
      v14 = OUTLINED_FUNCTION_8_3();
      return sub_1D8BDF8A8(v14, v15, 201, v16, v17);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8BDFBE0(uint64_t a1)
{
  sub_1D8BF0130();
  swift_allocObject();
  v2 = sub_1D8BF0120();
  swift_allocObject();
  v3 = sub_1D8BF0120();
  sub_1D8BE3158(&unk_1F5446D50);
  sub_1D8BEFF70();
  sub_1D8BF0110();

  sub_1D8BEFF50();
  *(a1 + 72) = v2;

  *(a1 + 80) = v3;

  v4 = sub_1D8BF0510();
  sub_1D8BF0460();
  sub_1D8BE3440(&qword_1ECAA4938, MEMORY[0x1E697A3F8]);
  sub_1D8BF06C0();
  v4(&v6, 0);
}

uint64_t sub_1D8BDFD74(uint64_t a1, float a2)
{
  sub_1D8BF0940();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53();
  v8 = (v7 - v6);
  if (qword_1ECAA3E38 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v9 = qword_1ECAA4908;
  *v8 = qword_1ECAA4908;
  v10 = OUTLINED_FUNCTION_18_2();
  v11(v10);
  v12 = v9;
  sub_1D8BF0950();
  v13 = OUTLINED_FUNCTION_17_1();
  result = v14(v13);
  if (v9)
  {
    if ((*(v2 + 116) & 1) != 0 || *(v2 + 112) != a2)
    {
      *(v2 + 112) = a2;
      *(v2 + 116) = 0;
      MEMORY[0x1EEE9AC00](result);
      *&v20[-32] = v2;
      *&v20[-24] = a1;
      *&v20[-16] = a2;
      v16 = OUTLINED_FUNCTION_8_3();
      return sub_1D8BDF8A8(v16, v17, 222, v18, v19);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8BDFF04(uint64_t a1, uint64_t a2, float a3)
{
  *&v26 = a2;
  v6 = sub_1D8BF00D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D8BF07B0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 120))
  {
    sub_1D8BF0130();
    *&v25 = v3;
    swift_allocObject();
    v14 = sub_1D8BF0120();
    *&v23 = a1;
    v15 = v14;

    sub_1D8BF0110();
    sub_1D8BE3158(&unk_1F5446D80);
    sub_1D8BEFF90();

    *&v24 = v7;
    v22 = sub_1D8BF0510();
    sub_1D8BF0460();
    sub_1D8BE3440(&qword_1ECAA4938, MEMORY[0x1E697A3F8]);
    sub_1D8BF06C0();
    v22(v28, 0);

    v7 = v24;
    sub_1D8BF0380();
    *(v23 + 120) = v15;
  }

  *&v16 = sub_1D8BE0268(64.0, a3, 0.01, 64000.0);
  v25 = v17;
  v26 = v16;
  v23 = v19;
  v24 = v18;
  swift_retain_n();
  sub_1D8BF0770();
  v27 = 0;
  v28[0] = v26;
  v28[1] = v25;
  v28[2] = v24;
  v28[3] = v23;
  v29 = 0;
  sub_1D8BF0760();
  sub_1D8BF0780();
  sub_1D8BF00B0();

  sub_1D8BF00C0();

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

double sub_1D8BE0268(float a1, float a2, float a3, float a4)
{
  v7 = tanf((a1 * 0.017453) * 0.5);
  v8 = 0;
  v9 = 1.0 / v7;
  *&v10 = v9 / a2;
  LODWORD(v11) = 0;
  *(&v11 + 1) = v9;
  *&v12 = 0;
  *(&v12 + 2) = a4 / (a3 - a4);
  HIDWORD(v12) = -1.0;
  *&v13 = 0;
  HIDWORD(v13) = 0;
  *(&v13 + 2) = (a3 * a4) / (a3 - a4);
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = v13;
  memset(v16, 0, sizeof(v16));
  while (v8 != 4)
  {
    v16[v8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1D8BF7170, COERCE_FLOAT(v15[v8])), xmmword_1D8BF7180, *&v15[v8], 1), xmmword_1D8BF86A0, v15[v8], 2), xmmword_1D8BF86B0, v15[v8], 3);
    ++v8;
  }

  return *v16;
}

uint64_t sub_1D8BE0370(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1D8BF0940();
  OUTLINED_FUNCTION_3_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53();
  v10 = (v9 - v8);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 9);
  v14 = *(a2 + 10);
  v15 = *(a2 + 3);
  if (qword_1ECAA3E38 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v16 = qword_1ECAA4908;
  *v10 = qword_1ECAA4908;
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v4);
  v17 = v16;
  LOBYTE(v16) = sub_1D8BF0950();
  result = (*(v6 + 8))(v10, v4);
  if (v16)
  {
    if (v13)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    if (v14)
    {
      v20 = 0x10000;
    }

    else
    {
      v20 = 0;
    }

    if (v2[11])
    {
      v21 = v2[12];
      v34[0] = v2[11];
      v34[1] = v21;
      if (v11)
      {
        v29 = v11;
        v30 = v12;
        v31 = v13;
        v32 = v14;
        v33 = v15;
        v22 = sub_1D8BE183C(v34, &v29);
        swift_retain_n();
        swift_retain_n();

        if (v22)
        {

LABEL_16:
          v23 = 0;
          return v23 & 1;
        }

LABEL_19:
        v2[11] = v11;
        v2[12] = v19 | v12 | (v15 << 32) | v20;

        v25 = v2[10];
        if (v25)
        {
          MEMORY[0x1EEE9AC00](v24);
          v28[-4] = v2;
          v28[-3] = v11;
          LOBYTE(v28[-2]) = v12;
          BYTE1(v28[-2]) = v13;
          BYTE2(v28[-2]) = v14;
          HIDWORD(v28[-2]) = v15;
          v28[-1] = v25;

          v26 = v28[1];
          sub_1D8BDF8A8(0xD00000000000008CLL, 0x80000001D8BF4690, 259, sub_1D8BE2DC4, &v28[-6]);

          if (!v26)
          {
            v23 = 1;
          }
        }

        else
        {
          sub_1D8BE29FC();
          swift_allocError();
          *v27 = 1;
          swift_willThrow();
        }

        return v23 & 1;
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_16;
      }

      swift_retain_n();
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8BE068C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *&v52 = a4;
  LODWORD(v43) = a3;
  *&v53 = a2;
  *&v51 = sub_1D8BF00D0();
  *&v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  *&v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D8BF05D0();
  v44 = *(v45 - 8);
  v6 = MEMORY[0x1EEE9AC00](v45);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - v9;
  v11 = sub_1D8BF0630();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  v18 = sub_1D8BF0690();
  v47 = *(v18 - 8);
  v48 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 104))
  {
    sub_1D8BF0130();

    sub_1D8BEFF40();
  }

  v46 = a1;
  *(a1 + 104) = 0;

  v21 = *(v53 + 16);
  sub_1D8BF06E0();
  v22 = v21;
  v23 = v54;
  result = sub_1D8BF06D0();
  if (!v23)
  {
    *&v54 = v43;
    v25 = *(v12 + 104);
    v26 = MEMORY[0x1E697A448];
    if ((v43 & 0x100) != 0)
    {
      v26 = MEMORY[0x1E697A450];
    }

    v27 = *v26;
    v43 = 0;
    v25(v15, v27, v11);
    (*(v12 + 32))(v17, v15, v11);

    sub_1D8BF0600();
    sub_1D8BF0640();
    v28 = v44;
    v29 = v45;
    (*(v44 + 104))(v8, **(&unk_1E85649D8 + v54), v45);
    (*(v28 + 32))(v10, v8, v29);
    sub_1D8BF0680();
    v30 = sub_1D8BF0660();
    sub_1D8BF0650();
    v30(v55, 0);
    sub_1D8BF0130();
    swift_allocObject();
    v31 = sub_1D8BF0120();
    sub_1D8BF0110();
    v32 = v49;
    sub_1D8BF00B0();
    v33 = v48;
    sub_1D8BF00C0();
    (*(v50 + 8))(v32, v51);
    sub_1D8BEFF50();
    v34 = *MEMORY[0x1E69E9B18];
    v52 = *(MEMORY[0x1E69E9B18] + 16);
    v53 = v34;
    v35 = *(MEMORY[0x1E69E9B18] + 48);
    v51 = *(MEMORY[0x1E69E9B18] + 32);
    v54 = v35;
    v36 = sub_1D8BEFFA0();
    v38 = v37;
    sub_1D8BF1060();
    v50 = v39;
    sub_1D8BF0BD0();
    v49 = v40;
    sub_1D8BF0BC0();
    *v38 = v41;
    v42 = v50;
    v38[1] = v49;
    v38[2] = v42;
    v36(v55, 0);

    (*(v47 + 8))(v20, v33);
    *(v46 + 104) = v31;
  }

  return result;
}

void sub_1D8BE0C28(uint64_t a1, uint64_t a2)
{
  v109 = a1;
  sub_1D8BF05D0();
  OUTLINED_FUNCTION_3_1();
  v98 = v5;
  v99 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_4();
  v97 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v96 = v92 - v8;
  OUTLINED_FUNCTION_11_3();
  sub_1D8BF0610();
  OUTLINED_FUNCTION_3_1();
  v94 = v10;
  v95 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4930);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_9_4();
  v100 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v104 = v92 - v17;
  OUTLINED_FUNCTION_11_3();
  sub_1D8BF00D0();
  OUTLINED_FUNCTION_3_1();
  v102 = v19;
  v103 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_53();
  v101 = v21 - v20;
  OUTLINED_FUNCTION_11_3();
  v22 = sub_1D8BF0690();
  OUTLINED_FUNCTION_3_1();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_14_3();
  v26 = sub_1D8BF0940();
  OUTLINED_FUNCTION_3_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_53();
  v32 = (v31 - v30);
  v93 = *(a2 + 8);
  v92[3] = *(a2 + 16);
  v129 = *(a2 + 32);
  v130 = *(a2 + 48);
  v113.i32[0] = *(a2 + 56);
  v128 = *(a2 + 60);
  v126 = *(a2 + 61);
  v127 = *(a2 + 63);
  v33 = *(a2 + 64);
  v107 = *(a2 + 80);
  v108 = v33;
  v34 = *(a2 + 96);
  v105 = *(a2 + 112);
  v106 = v34;
  v35 = *(a2 + 144);
  v123 = *(a2 + 128);
  v124 = v35;
  v36 = *(a2 + 176);
  v125 = *(a2 + 160);
  v37 = *(a2 + 208);
  v116 = *(a2 + 192);
  v117 = v36;
  v38 = *(a2 + 240);
  v114 = *(a2 + 224);
  v115 = v37;
  v39 = *(a2 + 256);
  v111 = v38;
  v112 = v39;
  memcpy(v131, (a2 + 400), sizeof(v131));
  if (qword_1ECAA3E38 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v40 = qword_1ECAA4908;
  *v32 = qword_1ECAA4908;
  (*(v28 + 104))(v32, *MEMORY[0x1E69E8020], v26);
  v41 = v40;
  LOBYTE(v40) = sub_1D8BF0950();
  (*(v28 + 8))(v32, v26);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v133.columns[1] = v116;
  v133.columns[0] = v117;
  v133.columns[3] = v114;
  v133.columns[2] = v115;
  v132 = __invert_f4(v133);
  OUTLINED_FUNCTION_15_3();
  v46 = v107;
  v45 = v108;
  v48 = v105;
  v47 = v106;
  while (v42 != 64)
  {
    *(v44 + v42) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*(v43 + v42))), v46, *(v43 + v42), 1), v47, *(v43 + v42), 2), v48, *(v43 + v42), 3);
    v42 += 16;
  }

  v49 = 0;
  v50 = v122[0];
  v51 = v122[1];
  v52 = *(MEMORY[0x1E69E9B18] + 16);
  v53 = *(MEMORY[0x1E69E9B18] + 32);
  v54 = *(MEMORY[0x1E69E9B18] + 48);
  v52.i32[1] = -1.0;
  v53.i32[2] = -1.0;
  v55 = v122[2];
  v56 = v122[3];
  v132.columns[0] = *MEMORY[0x1E69E9B18];
  v132.columns[1] = v52;
  v132.columns[2] = v53;
  v132.columns[3] = v54;
  memset(v122, 0, 64);
  while (v49 != 4)
  {
    v122[v49] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, COERCE_FLOAT(*&v132.columns[v49])), v51, *v132.columns[v49].f32, 1), v55, v132.columns[v49], 2), v56, v132.columns[v49], 3);
    ++v49;
  }

  v120 = v122[1];
  v121 = v122[0];
  v118 = v122[3];
  v119 = v122[2];
  v122[0] = v129;
  *&v122[1] = v130;
  DWORD2(v122[1]) = v113.i32[0];
  BYTE12(v122[1]) = v128;
  *(&v122[1] + 13) = v126;
  HIBYTE(v122[1]) = v127;
  v122[2] = v45;
  v122[3] = v46;
  v122[4] = v47;
  v122[5] = v48;
  v122[6] = v123;
  v122[7] = v124;
  v122[8] = v125;
  v122[9] = v117;
  v122[10] = v116;
  v122[11] = v115;
  v122[12] = v114;
  v122[13] = v111;
  v122[14] = v112;
  *v57.i64 = sub_1D8BE15F0(v122);
  v116 = v58;
  v117 = v57;
  v114 = v60;
  v115 = v59;
  if (sub_1D8BF0370())
  {
    v109 = v24;
    v134.columns[1] = v120;
    v134.columns[0] = v121;
    v134.columns[3] = v118;
    v134.columns[2] = v119;
    v135 = __invert_f4(v134);
    v107 = v135.columns[1];
    v108 = v135.columns[0];
    v105 = v135.columns[3];
    v106 = v135.columns[2];
    v61 = sub_1D8BF00A0();
    v62 = sub_1D8BF07B0();
    v63 = sub_1D8BF00E0();
    if (!__swift_getEnumTagSinglePayload(v64, 1, v62))
    {
      sub_1D8BF07A0();
    }

    v63(&v132, 0);
    v61(v122, 0);
    sub_1D8BF0130();
    sub_1D8BEFF60();

    v24 = v109;
  }

  if (!*(v110 + 104))
  {
    goto LABEL_20;
  }

  v65 = v101;
  sub_1D8BF00B0();
  v66 = v104;
  sub_1D8BF00F0();
  (*(v102 + 8))(v65, v103);
  if (__swift_getEnumTagSinglePayload(v66, 1, v22) == 1)
  {
LABEL_29:
    __break(1u);
    return;
  }

  (*(v24 + 32))(v2, v66, v22);
  v67 = v120;
  *v13 = v121;
  v13[1] = v67;
  v68 = v118;
  v13[2] = v119;
  v13[3] = v68;
  v69 = v116;
  v13[4] = v117;
  v13[5] = v69;
  v70 = v114;
  v13[6] = v115;
  v13[7] = v70;
  (*(v94 + 104))(v13, *MEMORY[0x1E697A440], v95);
  sub_1D8BF0620();
  v71 = v93;
  v73 = v97;
  v72 = v98;
  v74 = v99;
  (*(v98 + 104))(v97, **(&unk_1E85649D8 + v93), v99);
  (*(v72 + 32))(v96, v73, v74);
  sub_1D8BF0680();
  sub_1D8BF05C0();
  sub_1D8BF05E0();
  v113 = xmmword_1D8BF86B0;
  if (v71 <= 4 && ((1 << v71) & 0x13) != 0)
  {
    v75 = v100;
  }

  else
  {
    memcpy(v122, v131, 0xF1uLL);
    v84 = sub_1D8BD15A8(v122);
    v75 = v100;
    if (v84 != 1)
    {
      v136.origin.x = *&v122[13];
      v136.origin.y = *(&v122[13] + 1);
      v136.size.width = *&v122[14];
      v136.size.height = *(&v122[14] + 1);
      v141.origin.x = v111;
      v141.origin.y = *(&v111 + 1);
      v141.size.width = v112;
      v141.size.height = *(&v112 + 1);
      if (!CGRectEqualToRect(v136, v141))
      {
        v137.origin.x = OUTLINED_FUNCTION_4_5();
        *v85.i64 = CGRectGetMinX(v137);
        v113 = v85;
        v138.origin.x = OUTLINED_FUNCTION_4_5();
        MinY = CGRectGetMinY(v138);
        *&v87.f64[0] = v113.i64[0];
        v87.f64[1] = MinY;
        *v88.f32 = vcvt_f32_f64(v87);
        v113 = v88;
        v139.origin.x = OUTLINED_FUNCTION_4_5();
        *&v89 = CGRectGetMaxX(v139);
        v112 = v89;
        v140.origin.x = OUTLINED_FUNCTION_4_5();
        MaxY = CGRectGetMaxY(v140);
        *&v91.f64[0] = v112;
        v91.f64[1] = MaxY;
        v113 = vcvt_hight_f32_f64(*v113.f32, v91);
      }
    }
  }

  sub_1D8BF0670();
  sub_1D8BF05F0();
  (*(v24 + 16))(v75, v2, v22);
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v22);
  v76 = sub_1D8BF00A0();
  sub_1D8BF0100();
  v76(v122, 0);

  (*(v24 + 8))(v2, v22);
LABEL_20:
  v132.columns[0] = v121;
  v132.columns[1] = v120;
  v132.columns[2] = v119;
  v132.columns[3] = v118;
  OUTLINED_FUNCTION_15_3();
  v81 = v116;
  v80 = v117;
  v83 = v114;
  v82 = v115;
  while (v77 != 64)
  {
    *(v79 + v77) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80, COERCE_FLOAT(*(v78 + v77))), v81, *(v78 + v77), 1), v82, *(v78 + v77), 2), v83, *(v78 + v77), 3);
    v77 += 16;
  }
}

double sub_1D8BE15F0(uint64_t a1)
{
  v35 = *(a1 + 48);
  v37 = *(a1 + 32);
  v31 = *(a1 + 80);
  v33 = *(a1 + 64);
  v28 = *(a1 + 96);
  v29 = *(a1 + 112);
  v56 = *(a1 + 144);
  v30 = *(a1 + 128);
  v21 = v56.columns[1];
  v22 = v56.columns[0];
  v20 = v56.columns[2];
  v23 = v56.columns[3];
  v57 = __invert_f4(v56);
  v2 = 0;
  v55 = v57;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  while (v2 != 4)
  {
    *(&v39 + v2 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*&v55.columns[v2])), v35, *v55.columns[v2].f32, 1), v33, v55.columns[v2], 2), v31, v55.columns[v2], 3);
    ++v2;
  }

  v26 = v40;
  v27 = v39;
  v24 = v42;
  v25 = v41;
  v3 = *(a1 + 16);
  v39 = *a1;
  v40 = v3;
  v41 = v37;
  v42 = v35;
  v43 = v33;
  v44 = v31;
  v45 = v28;
  v46 = v29;
  v47 = v30;
  v48 = v22;
  v49 = v21;
  v50 = v20;
  v4 = *(a1 + 208);
  v5 = *(a1 + 224);
  v51 = v23;
  v52 = v4;
  v53 = v5;
  *v6.i64 = sub_1D8BC3768();
  v10 = 0;
  LODWORD(v11) = 0;
  HIDWORD(v11) = DWORD1(v29);
  *&v12 = v30;
  *(&v12 + 1) = 1065353216;
  v54[0] = v28;
  v54[1] = v11;
  v54[2] = v12;
  v54[3] = xmmword_1D8BF71A0;
  memset(&v55, 0, sizeof(v55));
  while (v10 != 4)
  {
    v55.columns[v10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(v54[v10])), v7, *&v54[v10], 1), v8, v54[v10], 2), v9, v54[v10], 3);
    ++v10;
  }

  v13 = 0;
  v14 = v55.columns[0];
  v15 = v55.columns[1];
  v16 = v55.columns[2];
  v17 = v55.columns[3];
  v55.columns[0] = v37;
  v55.columns[1] = v35;
  v55.columns[2] = v33;
  v55.columns[3] = v31;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  while (v13 != 4)
  {
    *(&v39 + v13 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(*&v55.columns[v13])), v15, *v55.columns[v13].f32, 1), v16, v55.columns[v13], 2), v17, v55.columns[v13], 3);
    ++v13;
  }

  v36 = v40;
  v38 = v39;
  v32 = v42;
  v34 = v41;
  v58.columns[1] = v26;
  v58.columns[0] = v27;
  v58.columns[3] = v24;
  v58.columns[2] = v25;
  v59 = __invert_f4(v58);
  v18 = 0;
  v55 = v59;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  while (v18 != 4)
  {
    *(&v39 + v18 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*&v55.columns[v18])), v36, *v55.columns[v18].f32, 1), v34, v55.columns[v18], 2), v32, v55.columns[v18], 3);
    ++v18;
  }

  return *v39.i64;
}

BOOL sub_1D8BE183C(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 && ((*(a1 + 9) ^ *(a2 + 9)) & 1) == 0 && ((*(a1 + 10) ^ *(a2 + 10)) & 1) == 0)
  {
    return *(a1 + 12) == *(a2 + 12);
  }

  return result;
}

uint64_t sub_1D8BE18B0()
{
  v7 = sub_1D8BF0C20();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D8BF0C00();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D8BF0900();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8BDB96C();
  sub_1D8BF08F0();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D8BE3440(&qword_1ECAA49A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA49A8);
  sub_1D8BE3488(&qword_1ECAA49B0, &qword_1ECAA49A8);
  sub_1D8BF0D60();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D8BF0C50();
  qword_1ECAA4908 = result;
  return result;
}

uint64_t sub_1D8BE1B00()
{
  v0 = sub_1D8BF0C20();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8BF0900();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D8BF0C00();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1D8BDB96C();
  sub_1D8BF0BF0();
  sub_1D8BF08F0();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1D8BF0C50();
  qword_1ECAA4910 = result;
  return result;
}

dispatch_semaphore_t sub_1D8BE1CB0()
{
  result = dispatch_semaphore_create(2);
  qword_1ECAA4918 = result;
  return result;
}

uint64_t sub_1D8BE1D28(uint64_t a1)
{
  sub_1D8BF03C0();
  MEMORY[0x1EEE9AC00]();
  v20 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D8BF06B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D8BF0480();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8BF0530();
  (*(v9 + 104))(v11, *MEMORY[0x1E697A408], v8);
  sub_1D8BF04F0();
  (*(v9 + 8))(v11, v8);
  swift_allocObject();
  v12 = sub_1D8BF0520();
  if (v1)
  {

    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  *(a1 + 64) = v13;

  if (v13)
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E697A508], v4);
    v15 = sub_1D8BF0430();
    sub_1D8BF03A0();
    v15(v19, 0);
  }

  if (*(a1 + 64))
  {

    SRGB = CGColorCreateSRGB(0.0, 0.0, 0.0, 0.0);
    sub_1D8BF03B0();

    v17 = sub_1D8BF0430();
    sub_1D8BF03D0();
    v17(v19, 0);

    if (*(a1 + 64))
    {

      v18 = sub_1D8BF0430();
      sub_1D8BF0410();
      v18(v19, 0);
    }
  }

  return result;
}

BOOL sub_1D8BE2078(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_11:
        result = v7 == v2;
        if (v7 == v2)
        {
          return result;
        }

        if (v7 >= v2)
        {
          __break(1u);
          return result;
        }

        v4 = *(v3 + 8 * v7);
        v5 = *(a2 + 32 + 8 * v7++);
        v6 = *(v4 + 16);
        if (v6 != *(v5 + 16))
        {
          return result;
        }
      }

      v8 = (v4 + 32);
      v9 = (v5 + 32);
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D8BE2144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v51 = a3;
  v4 = sub_1D8BF0420();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8BF04E0();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8BF0350();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4978);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_1D8BF0340();
  v40 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  v52 = sub_1D8BF02D0();
  v21 = *(v52 - 8);
  v22 = MEMORY[0x1EEE9AC00](v52);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v39 - v25;
  v27 = *(a2 + 24);
  LOBYTE(a2) = *(a2 + 89);
  swift_unknownObjectRetain();
  v41 = v27;
  sub_1D8BF02B0();
  sub_1D8BF02C0();
  if ((a2 & 1) == 0)
  {
    sub_1D8BF0330();
    sub_1D8BF0320();
    sub_1D8BB2B9C(v14);
    v28 = v40;
    v29 = *(v40 + 8);
    v29(v18, v15);
    sub_1D8BE33E8(v14, &qword_1ECAA4978);
    (*(v28 + 16))(v18, v20, v15);
    sub_1D8BF02A0();
    v29(v20, v15);
  }

  (*(v21 + 16))(v24, v26, v52);
  v30 = v48;
  sub_1D8BF0360();
  v32 = v49;
  v31 = v50;
  (*(v49 + 16))(v47, v30, v50);
  if (sub_1D8BF0370())
  {
    v33 = v42;
    sub_1D8BF0490();
    sub_1D8BF0440();
    sub_1D8BF04C0();
    v35 = v44;
    v34 = v45;
    (*(v44 + 16))(v46, v33, v45);
    sub_1D8BE2674(v41);
    v37 = v36;
    (*(v35 + 8))(v33, v34);
    (*(v32 + 8))(v30, v31);
    (*(v21 + 8))(v26, v52);
    return v37;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1D8BE2674(void *a1)
{
  v5 = [a1 renderTargetArrayLength];
  if ((v5 & 0x8000000000000000) == 0)
  {
    v1 = v5;
    v2 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = [a1 colorAttachments];
      v8 = [v7 objectAtIndexedSubscript_];

      if (!v8)
      {
        break;
      }

      v9 = [v8 texture];

      if (v9)
      {
        v3 = [v9 pixelFormat];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D8BE90D0();
          v6 = v13;
        }

        v10 = *(v6 + 16);
        v11 = v10 + 1;
        if (v10 >= *(v6 + 24) >> 1)
        {
          sub_1D8BE90D0();
          v6 = v14;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D8BE90D0();
          v6 = v15;
        }

        v10 = *(v6 + 16);
        v11 = v10 + 1;
        if (v10 >= *(v6 + 24) >> 1)
        {
          sub_1D8BE90D0();
          v6 = v16;
        }

        v3 = 0;
      }

      *(v6 + 16) = v11;
      *(v6 + 8 * v10 + 32) = v3;
      if (v1 == v2)
      {
        v17 = [a1 depthAttachment];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 texture];

          if (!v19)
          {
            return;
          }

          v1 = [v19 pixelFormat];
          v3 = *(v6 + 16);
          v2 = (v3 + 1);
          if (v3 < *(v6 + 24) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        }

LABEL_27:
        __break(1u);
        return;
      }

      if (__OFADD__(v2++, 1))
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  sub_1D8BE90D0();
  v6 = v20;
LABEL_22:
  swift_unknownObjectRelease();
  *(v6 + 16) = v2;
  *(v6 + 8 * v3 + 32) = v1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D8BE29FC()
{
  result = qword_1ECAA4920;
  if (!qword_1ECAA4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4920);
  }

  return result;
}

uint64_t sub_1D8BE2B88(uint64_t *a1, int a2)
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

uint64_t sub_1D8BE2BC8(uint64_t result, int a2, int a3)
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

_BYTE *_s14descr1F54466F9O18RealityKitRendererC5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D8BE2D04()
{
  result = qword_1ECAA4928;
  if (!qword_1ECAA4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA4928);
  }

  return result;
}

uint64_t sub_1D8BE2DC4()
{
  if (*(v0 + 33))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 32);
  if (*(v0 + 34))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D8BE068C(*(v0 + 16), *(v0 + 24), v2 | v3, *(v0 + 40));
}

uint64_t sub_1D8BE2E14(uint64_t a1)
{
  v2 = sub_1D8BF06A0();
  v32 = *(v2 - 8);
  v3 = (MEMORY[0x1EEE9AC00])();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4988);
  result = sub_1D8BF0DC0();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_1D8BE3440(&qword_1ECAA4990, MEMORY[0x1E697A468]);
    v14 = sub_1D8BF0990();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_1D8BE3440(&qword_1ECAA4998, MEMORY[0x1E697A468]);
      v21 = sub_1D8BF09A0();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D8BE3158(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {

    goto LABEL_8;
  }

  if (v1 - 4 < 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = 0;
  v3 = 0uLL;
  do
  {
    v4 = *(result + 4 * v2 + 32);
    v5 = v3;
    *(&v5 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2 & 3))) = v4;
    v3 = v5;
    ++v2;
  }

  while (v1 != v2);

  if (v1 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1D8BE3244(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20_2(a1, a2, a3);
  OUTLINED_FUNCTION_13_3();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_1D8BE3294(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20_2(a1, a2, a3);
  OUTLINED_FUNCTION_13_3();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t objectdestroy_5Tm()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v0 + 360))
  {
  }

  if (*(v0 + 376))
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v0 + 680))
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (*(v0 + 736))
    {
    }

    if (*(v0 + 752))
    {
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_19_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D8BE33E8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_13_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D8BE3440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8BE3488(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t result)
{
  *(v1 + 680) = result;
  *(v1 + 640) = MEMORY[0x1E69E9820];
  return result;
}

double OUTLINED_FUNCTION_15_3()
{
  result = 0.0;
  v0[23] = 0u;
  v0[24] = 0u;
  v0[25] = 0u;
  v0[26] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_3@<X0>(int a1@<W8>)
{
  *(v3 - 128) = v1;
  *(v3 - 152) = a1 & v2;

  return MEMORY[0x1EEDD6810](v3 - 152);
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

float sub_1D8BE368C@<S0>(void *__src@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, 0x1B4uLL);
  v5 = *&__dst[1];
  v6 = __dst[2];
  v7 = __dst[3];
  v8 = __dst[4];
  *a3 = __dst[0];
  *(a3 + 16) = v5;
  *(a3 + 48) = v7;
  *(a3 + 64) = v8;
  *(a3 + 32) = v6;
  *(a3 + 80) = *(&__dst[26] + 1);
  *(a3 + 88) = __dst[27];
  swift_retain_n();
  sub_1D8BBE85C(&__dst[5], v19);
  sub_1D8BCBAD8(__dst);
  memcpy((a3 + 96), &__dst[5], 0x151uLL);
  *(a3 + 433) = a2;
  memcpy(v19, &__dst[5], 0x151uLL);
  v9 = *&v19[4];
  v10 = *&v19[3];
  sub_1D8BBE85C(v19, &v17);
  v11 = 1.0 / sub_1D8BED1B4();
  v12 = sub_1D8BED1A0();

  sub_1D8BBF6E0(v19);
  v13 = (((1.0 / v10) * v11) - ((1.0 / v9) * (1.0 / v12))) / ((1.0 / v10) - (1.0 / v9));
  v14 = ((1.0 / v12) - v13) / (1.0 / v10);
  *&v15 = v13 / 0.3;
  result = v14 / 0.3;
  *(&v15 + 1) = result;
  *(a3 + 440) = v15;
  *(a3 + 448) = *&v15 + (result / v9);
  *(a3 + 452) = *&v15 + (result / v10);
  return result;
}

__n128 sub_1D8BE37FC@<Q0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v42 = *(v2 + 32);
  v35 = *(v2 + 48);
  v37 = *a2.i64;
  v33 = *(v2 + 64);
  v7 = *(v2 + 88);
  v8 = *(v2 + 104);
  v38 = *(v2 + 440);
  *&v43 = *v2;
  v4 = v43;
  *(&v43 + 1) = v5;
  *&v44 = v6;
  v46 = v35;
  v47 = v33;
  v45 = v42;
  sub_1D8BE3A5C(&v43, v48, a2, v42);
  v39 = v48[0];
  v40 = v48[1];
  v41 = v48[2];
  *&v43 = v4;
  *(&v43 + 1) = v5;
  *&v44 = v6;
  v46 = v35;
  v47 = v33;
  v45 = v42;
  sub_1D8BE3A5C(&v43, &v49, 0, v42);
  PFSizeWithAspectRatioFillingSize();
  v10 = v9 * 0.5;
  v11 = v10 / tanf(v8 * 0.5);
  v12 = sub_1D8BECF58();
  PFSizeWithAspectRatioFillingSize();
  *&v13 = v13;
  v14 = v42.i64[0] / *&v13;
  *&v15 = v15;
  v16 = v42.i64[1] / *&v15;
  if (v14 <= v16)
  {
    v14 = v16;
  }

  v17 = v11 * v14;
  v34 = v12 * (v17 / *&v49);
  v36 = v12 * (v17 / v50);
  v18.f32[0] = sub_1D8BE3DE4(v37, 1.0);
  v22 = 0;
  v24 = xmmword_1D8BF7190;
  LODWORD(v23) = 0;
  *(&v23 + 1) = 0;
  *(&v23 + 1) = v36;
  HIDWORD(v24) = v38;
  v25 = vdupq_lane_s32(0, 0);
  v25.i32[3] = HIDWORD(v38);
  v51[0] = LODWORD(v34);
  v51[1] = v23;
  v51[2] = v24;
  v51[3] = v25;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  while (v22 != 4)
  {
    *(&v43 + v22 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*&v51[v22])), v19, *v51[v22].i8, 1), v20, v51[v22], 2), v21, v51[v22], 3);
    ++v22;
  }

  v27 = v39;
  v26 = v40;
  *(&v26 + 1) = v7 + *(&v40 + 1);
  *&v27 = v7 + *&v39;
  v28 = v43;
  v29 = v44;
  v30 = v45;
  v31 = v46;
  *a1 = v42;
  *(a1 + 16) = 0x497424003C23D70ALL;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = v28;
  *(a1 + 48) = v29;
  *(a1 + 64) = v30;
  *(a1 + 80) = v31;
  *(a1 + 96) = v27;
  *(a1 + 112) = v26;
  result = v42;
  *(a1 + 128) = v41;
  *(a1 + 144) = LODWORD(v34);
  *(a1 + 160) = v23;
  *(a1 + 176) = v24;
  *(a1 + 192) = v25;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = v42;
  return result;
}

void sub_1D8BE3A5C(double *a1@<X0>, _OWORD *a2@<X8>, int8x16_t a3@<Q0>, int64x2_t a4@<Q1>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  swift_beginAccess();
  if (*&v5 == 0.0 || *&v6 == 0.0 || (*&v5 == *MEMORY[0x1E69BDDB0] ? (v7 = *&v6 == *(MEMORY[0x1E69BDDB0] + 8)) : (v7 = 0), v7))
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(buf, v5, v6, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1D8BAF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
    }
  }

  PFSizeWithAspectRatioFittingSize();
  v11 = v10;
  v13 = v12;
  sub_1D8BE8F28();
  v15 = v14;
  v16 = &dword_1D8BF7164;
  v17 = vld1_dup_f32(v16);
  v18 = a3;
  v17.f32[0] = v13 * -0.5;
  v19 = vsub_f32(v17, *&vextq_s8(v18, v18, 4uLL));
  v20 = v19.f32[1];
  HIDWORD(v21) = 0;
  *&v21 = ((v11 * -0.5) - *a3.i32) / v19.f32[1];
  v22 = vdiv_f32(v19, vdup_lane_s32(v19, 1));
  v23 = v21;
  *(&v23 + 4) = v22;
  v24.n128_u32[3] = 0;
  v26 = *(v14 + 16);
  v25 = *(v14 + 24);
  v27 = v25 >> 1;
  v28 = v26 + 1;
  if (v25 >> 1 <= v26)
  {
    OUTLINED_FUNCTION_1_6(v25);
    v63 = v41;
    v55 = v43;
    v58 = v42;
    sub_1D8BE8F28();
    v23 = v55;
    v22 = v58;
    v21 = v63;
    v24.n128_u32[3] = 0;
    v18.i64[0] = a3.i64[0];
    v15 = v44;
    v25 = *(v44 + 24);
    v27 = v25 >> 1;
  }

  v29 = *&v18.i32[1];
  *(v15 + 16) = v28;
  *(v15 + 16 * v26 + 32) = v23;
  v24.n128_f32[0] = ((v11 * 0.5) - *v18.i32) / v20;
  v30 = v24.n128_u32[0];
  *(&v30 + 4) = v22;
  v31 = v26 + 2;
  if (v27 < (v26 + 2))
  {
    OUTLINED_FUNCTION_0_12(v25);
    v64 = v45;
    v56 = v46;
    v59 = v47;
    sub_1D8BE8F28();
    v30 = v56;
    v22.i32[1] = v59;
    v21 = v64;
    v24 = a3;
    v15 = v48;
  }

  *(v15 + 16) = v31;
  v32 = ((v13 * 0.5) - v29) / v20;
  *(&v21 + 1) = v32;
  *(v15 + 16 * v28 + 32) = v30;
  DWORD2(v21) = v22.i32[1];
  v33 = *(v15 + 24);
  v34 = v26 + 3;
  if ((v26 + 3) > (v33 >> 1))
  {
    OUTLINED_FUNCTION_1_6(v33);
    a3 = v49;
    v65 = v50;
    v57 = v51;
    v60 = v52;
    sub_1D8BE8F28();
    v32 = v57;
    v22.i32[1] = v60;
    v21 = v65;
    v24 = a3;
    v15 = v53;
  }

  *(v15 + 16) = v34;
  v24.n128_f32[1] = v32;
  *(v15 + 16 * v31 + 32) = v21;
  v24.n128_u32[2] = v22.u32[1];
  v35 = *(v15 + 24);
  if ((v26 + 4) > (v35 >> 1))
  {
    OUTLINED_FUNCTION_0_12(v35);
    sub_1D8BE8F28();
    v24 = a3;
    v15 = v54;
  }

  *(v15 + 16) = v26 + 4;
  *(v15 + 16 * v34 + 32) = v24;
  if (*(v15 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v67 = *(v15 + 32);
    v36 = (v15 + 48);
    v37.i32[0] = vld2_f32(v36).val[0].u32[0];
    v37.i32[1] = *(v15 + 68);
    v62 = v37;

    v38 = vdiv_f32(vcvt_f32_f64(vcvtq_f64_s64(a4)), vsub_f32(v62, *&v67));
    *&v39 = vmul_f32(*&v67, vneg_f32(v38));
    LODWORD(v40) = 0;
    HIDWORD(v40) = v38.i32[1];
    *(&v39 + 1) = 1065353216;
    *a2 = v38.u32[0];
    a2[1] = v40;
    a2[2] = v39;
  }
}

uint64_t sub_1D8BE3E24()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1D8BECF58();
  sub_1D8BED048();
  swift_beginAccess();
  if (*&v1 == 0.0 || *&v2 == 0.0 || (*&v1 == *MEMORY[0x1E69BDDB0] ? (v3 = *&v2 == *(MEMORY[0x1E69BDDB0] + 8)) : (v3 = 0), v3))
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(buf, v1, v2, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1D8BAF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
    }
  }

  PFSizeWithAspectRatioFittingSize();
  return PFSizeWithAspectRatioFillingSize();
}

float sub_1D8BE402C()
{
  result = 1.0;
  if ((*(v0 + 433) & 1) == 0)
  {
    v2 = *(v0 + 452) - *(v0 + 448);
    if (v2 <= 0.1)
    {
      v2 = 0.1;
    }

    return 3.3333 / v2;
  }

  return result;
}

uint64_t sub_1D8BE4078(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 456))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_1D8BE40B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 440) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 456) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 456) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double __os_log_helper_16_0_3_8_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 134218496;
  *a1 = 134218496;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  return result;
}

CIImage __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CIImage.convertHeadroom(_:)(Swift::Float a1)
{
  v2 = v1;
  [(objc_class *)v1 contentHeadroom];
  if (vabds_f32(v4, a1) <= 0.00000011921)
  {
    v8 = v1;
  }

  else
  {
    v5 = [objc_opt_self() toneMapHeadroomFilter];
    [v5 setInputImage_];
    *&v6 = a1;
    [v5 setTargetHeadroom_];
    v7 = [v5 outputImage];
    if (v7)
    {
      v2 = v7;
      [v5 setInputImage_];
    }

    else
    {
      sub_1D8BE42E4();
      swift_allocError();
      swift_willThrow();
    }

    v8 = v2;
  }

  result._priv = v9;
  result.super.isa = v8;
  return result;
}

unint64_t sub_1D8BE42E4()
{
  result = qword_1ECAA49B8;
  if (!qword_1ECAA49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA49B8);
  }

  return result;
}

uint64_t SpatialPhoto.ImageConversionError.hashValue.getter()
{
  sub_1D8BF1070();
  MEMORY[0x1DA723030](0);
  return sub_1D8BF1090();
}

unint64_t sub_1D8BE43E0()
{
  result = qword_1ECAA49C0;
  if (!qword_1ECAA49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA49C0);
  }

  return result;
}

_BYTE *_s14descr1F54466F9O20ImageConversionErrorOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D8BE44E0(char a1)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  switch(a1)
  {
    case 1:
      v4 = 0x4142475279;
      goto LABEL_6;
    case 2:
      v2 = 0x80000001D8BF4790;
      v5 = 11;
      goto LABEL_8;
    case 3:
      v4 = 0x6B73614D79;
LABEL_6:
      v2 = v4 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      v3 = 0x7261646E6F636573;
      break;
    case 4:
      v3 = 0xD000000000000010;
      v2 = 0x80000001D8BF4770;
      break;
    case 5:
      v2 = 0x80000001D8BF4750;
      v5 = 5;
LABEL_8:
      v3 = v5 | 0xD000000000000010;
      break;
    default:
      break;
  }

  MEMORY[0x1DA722A10](v3, v2);
}

unint64_t SpatialPhoto.OcclusionMode.description.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
    case 3:
      result = 0x7261646E6F636573;
      break;
    case 2:
      v2 = 11;
      goto LABEL_6;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      v2 = 5;
LABEL_6:
      result = v2 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SpatialPhoto.OptimizationMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D8BF1070();
  MEMORY[0x1DA723030](v1);
  return sub_1D8BF1090();
}

uint64_t SpatialPhoto.OptimizationMode.description.getter()
{
  if (*v0)
  {
    return 0x657A696D6974706FLL;
  }

  else
  {
    return 0x7974696C617571;
  }
}

uint64_t sub_1D8BE4840()
{
  v1 = *(v0 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__scene);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void sub_1D8BE4888(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D8BEFF30();
  OUTLINED_FUNCTION_3_1();
  v32 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_53();
  v9 = v8 - v7;
  v10 = sub_1D8BF07F0();
  OUTLINED_FUNCTION_3_1();
  v31 = v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29[-v16];
  v18 = *(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__scene);
  v33 = a1;
  os_unfair_lock_lock((v18 + 24));
  sub_1D8BE5D34((v18 + 16), v34);
  os_unfair_lock_unlock((v18 + 24));
  if (!v34[0])
  {
    goto LABEL_4;
  }

  if (a1)
  {
    v19 = *(a1 + 16);

    v34[0] = [v19 opaqueTriangleCount] > 0;
    sub_1D8BE73C4(v34);

    PFKTraceSpatialPhotoInvalidateCamera();
    sub_1D8BE6D0C();
    if (*(v2 + 56))
    {
LABEL_4:

      return;
    }

    if (qword_1ECAA3E78 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v20 = sub_1D8BF0820();
    __swift_project_value_buffer(v20, qword_1ECAA4C20);
    sub_1D8BF0810();
    sub_1D8BF07D0();
    v21 = sub_1D8BF0810();
    v22 = sub_1D8BF0C90();
    if (sub_1D8BF0CF0())
    {
      OUTLINED_FUNCTION_61();
      v23 = swift_slowAlloc();
      *v23 = 0;
      v30 = v22;
      v24 = v23;
      v25 = sub_1D8BF07E0();
      _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v21, v30, v25, "SpatialPhotoRenderFirstFrame", "", v24, 2u);
      OUTLINED_FUNCTION_22();
      MEMORY[0x1DA723A30]();
    }

    v26 = v31;
    (*(v31 + 16))(v15, v17, v10);
    sub_1D8BF0860();
    swift_allocObject();
    v27 = sub_1D8BF0850();
    (*(v26 + 8))(v17, v10);
    *(v2 + 56) = v27;

    sub_1D8BEFF20();

    v28 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel_signpostDateCreated;
    swift_beginAccess();
    (*(v32 + 40))(v2 + v28, v9, v4);
    swift_endAccess();
  }

  else
  {
    PFKTraceSpatialPhotoInvalidateCamera();
    sub_1D8BE6D0C();
  }
}

uint64_t sub_1D8BE4BFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = *a1;
  v7 = a2 == 0;
  if (*a1)
  {

    v7 = v6 == a2;
  }

  *a1 = a2;
  *a3 = !v7;
}

void (*sub_1D8BE4C70(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__scene);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  return sub_1D8BE4CE4;
}

void sub_1D8BE4CE4(uint64_t *a1, char a2)
{
  if (a2)
  {

    sub_1D8BE4888(v2);
  }

  else
  {
    sub_1D8BE4888(*a1);
  }
}

uint64_t sub_1D8BE4D88(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_30_1(a1);
  OUTLINED_FUNCTION_12_4(v1, OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__cameraProvider);
  swift_unknownObjectRetain();
  return OUTLINED_FUNCTION_33_2();
}

uint64_t sub_1D8BE4E38(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = *(v4 + *a3);
  if (v5)
  {
    if (v5 == result)
    {
      return swift_unknownObjectRelease();
    }
  }

  else if (!result)
  {
    return result;
  }

  return a4();
}

uint64_t sub_1D8BE4E60(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_30_1(a1);
  OUTLINED_FUNCTION_12_4(v1, OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination);
  swift_unknownObjectRetain();
  return OUTLINED_FUNCTION_33_2();
}

uint64_t sub_1D8BE4F10(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_30_1(a1);
  OUTLINED_FUNCTION_12_4(v1, OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__secondaryRenderDestination);
  swift_unknownObjectRetain();
  return OUTLINED_FUNCTION_33_2();
}

uint64_t sub_1D8BE4F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t sub_1D8BE5004(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_30_1(a1);
  OUTLINED_FUNCTION_12_4(v1, OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__renderEffect);
  swift_unknownObjectRetain();
  return OUTLINED_FUNCTION_33_2();
}

uint64_t sub_1D8BE5068(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v5 = swift_unknownObjectRetain();
  a3(v5, v4);

  return swift_unknownObjectRelease();
}

void sub_1D8BE5158(_BYTE *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__occlusionMode);
  os_unfair_lock_lock((v3 + 20));
  *a1 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 20));
}

void sub_1D8BE51A8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__occlusionMode);
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  os_unfair_lock_unlock((v3 + 20));
  if (v4 != v2)
  {
    sub_1D8BE7990();
    PFKTraceSpatialPhotoInvalidateCamera();
    sub_1D8BE6D0C();

    sub_1D8BE6F38();
  }
}

void (*sub_1D8BE522C(void *a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_31_2(a1);
  sub_1D8BE5158(v1);
  return sub_1D8BE5274;
}

void sub_1D8BE5274(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  sub_1D8BE51A8(v2);
}

unint64_t sub_1D8BE52BC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8BE5330();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1D8BE5330()
{
  v1 = *(v0 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__alphaThreshold);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  os_unfair_lock_unlock((v1 + 24));
  return v2 | (v3 << 32);
}

void sub_1D8BE538C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__alphaThreshold);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 20) & BYTE4(a1) & 1;
  if ((*(v3 + 20) & 1) == 0 && (a1 & 0x100000000) == 0)
  {
    v4 = *(v3 + 16) == *&a1;
  }

  *(v3 + 16) = a1;
  *(v3 + 20) = BYTE4(a1) & 1;
  os_unfair_lock_unlock((v3 + 24));
  if ((v4 & 1) == 0)
  {

    sub_1D8BE6F38();
  }
}

void (*sub_1D8BE543C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__alphaThreshold);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = *(v3 + 20);
  os_unfair_lock_unlock((v3 + 24));
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return sub_1D8BE54B0;
}

void (*sub_1D8BE5574(void *a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_31_2(a1);
  sub_1D8BE555C(v1);
  return sub_1D8BE55BC;
}

void sub_1D8BE55BC(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  sub_1D8BE5568(v2);
}

uint64_t SpatialPhoto.ViewModel.__allocating_init(scene:cameraProvider:renderDestination:rendererKind:occlusionMode:renderEffect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  SpatialPhoto.ViewModel.init(scene:cameraProvider:renderDestination:rendererKind:occlusionMode:renderEffect:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t SpatialPhoto.ViewModel.init(scene:cameraProvider:renderDestination:rendererKind:occlusionMode:renderEffect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v57 = a3;
  v58 = a5;
  v51 = a1;
  v56 = a9;
  sub_1D8BF07F0();
  OUTLINED_FUNCTION_3_1();
  v54 = v16;
  v55 = v15;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v50 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v50 - v19;
  v20 = *a7;
  v52 = *a6;
  v53 = v20;
  v21 = MEMORY[0x1E69E7CD0];
  *(v10 + 32) = 0;
  *(v10 + 40) = v21;
  *(v10 + 48) = v21;
  *(v10 + 56) = 0;
  sub_1D8BEFF20();
  v22 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel_maskCompositingEffect;
  _s14descr1F54466F9O21MaskCompositingEffectCMa();
  swift_allocObject();
  *(v10 + v22) = sub_1D8BD158C();
  v23 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__scene;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4A30);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = 0;
  *(v10 + v23) = v24;
  OUTLINED_FUNCTION_32_2(OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__cameraProvider);
  OUTLINED_FUNCTION_32_2(OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination);
  OUTLINED_FUNCTION_32_2(OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__secondaryRenderDestination);
  OUTLINED_FUNCTION_32_2(OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__renderEffect);
  *(v10 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel_renderEffectPreparedForDevice) = 0;
  v25 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__optimizationMode;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4A40);
  OUTLINED_FUNCTION_17_2();
  v26 = swift_allocObject();
  *(v26 + 20) = 0;
  *(v26 + 16) = 1;
  *(v10 + v25) = v26;
  v27 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__occlusionMode;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4A48);
  OUTLINED_FUNCTION_17_2();
  v28 = swift_allocObject();
  *(v28 + 20) = 0;
  *(v28 + 16) = 0;
  *(v10 + v27) = v28;
  v29 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__depthBufferMode;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4A58);
  OUTLINED_FUNCTION_17_2();
  v30 = swift_allocObject();
  *(v30 + 20) = 0;
  *(v30 + 16) = 0;
  *(v10 + v29) = v30;
  v31 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__alphaThreshold;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4A60);
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 16) = 0;
  *(v32 + 20) = 1;
  *(v10 + v31) = v32;
  v33 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryCamera;
  sub_1D8BE8A9C(v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAA4A70);
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_36_2(v34);
  *(v10 + v33) = v34;
  v35 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__secondaryCamera;
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_36_2(v36);
  *(v10 + v35) = v36;
  if (qword_1ECAA3E78 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v37 = sub_1D8BF0820();
  __swift_project_value_buffer(v37, qword_1ECAA4C20);
  sub_1D8BF0810();
  sub_1D8BF07D0();
  v38 = sub_1D8BF0810();
  v39 = sub_1D8BF0C90();
  if (sub_1D8BF0CF0())
  {
    OUTLINED_FUNCTION_61();
    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v38, v39, v41, "SpatialPhotoRenderFirstFrame", "", v40, 2u);
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
  }

  v43 = v54;
  v42 = v55;
  v44 = v59;
  (*(v54 + 16))(v50, v59, v55);
  sub_1D8BF0860();
  swift_allocObject();
  v45 = sub_1D8BF0850();
  (*(v43 + 8))(v44, v42);
  *(v10 + 56) = v45;

  v60 = v52;
  sub_1D8BE5B4C();
  *(v10 + 16) = v46;
  *(v10 + 24) = v47;
  v60 = v53;
  sub_1D8BE51A8(&v60);
  v48 = swift_unknownObjectRetain();
  sub_1D8BE4FE4(v48, v56);
  sub_1D8BE5C3C(v10, v51, a2, v57, a4, v58);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v10;
}

double sub_1D8BE5B4C()
{
  if (!*v0)
  {
    goto LABEL_6;
  }

  if (*v0 == 1)
  {
    goto LABEL_7;
  }

  if (qword_1ECAA3E58 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAA49D8;
  v2 = sub_1D8BF09B0();
  LODWORD(v1) = [v1 BOOLForKey_];

  if (!v1)
  {
LABEL_7:
    type metadata accessor for SpatialPhoto.MetalRenderer();
    swift_allocObject();
    return SpatialPhoto.MetalRenderer.init()();
  }

  else
  {
LABEL_6:
    type metadata accessor for SpatialPhoto.RealityKitRenderer();
    swift_allocObject();
    SpatialPhoto.RealityKitRenderer.init()();
  }

  return result;
}

void sub_1D8BE5C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_1D8BE4888(a2);
  v10 = swift_unknownObjectRetain();
  sub_1D8BE4D68(v10, a4);
  v11 = swift_unknownObjectRetain();
  sub_1D8BE4E18(v11, a6);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v13 = *(a4 + 24);
    v14 = swift_unknownObjectRetain();
    v13(v14, &protocol witness table for SpatialPhoto.ViewModel, ObjectType, a4);
  }

  sub_1D8BE78BC();
  sub_1D8BE7990();
}

void sub_1D8BE5D08()
{
  PFKTraceSpatialPhotoInvalidateCamera();

  sub_1D8BE6D0C();
}

uint64_t sub_1D8BE5D50(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return sub_1D8BE6DFC();
  }

  return result;
}

uint64_t sub_1D8BE5D70(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4 = v1;
  v6 = v5;
  v7 = v3;
  v9 = v8;
  memcpy(__dst, v5, 0x74uLL);
  v10 = __dst[7];
  v11 = v6[1];
  v136 = *v6;
  v137 = v11;
  v138 = v6[2];
  v139 = *(v6 + 6);
  v105 = __dst[9];
  v106 = __dst[8];
  v104 = __dst[10];
  v135[0] = *(v6 + 88);
  *(v135 + 12) = *(v6 + 100);
  v12 = *(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__scene);
  sub_1D8BDA7D8(__dst, v127);
  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));
  if (v13)
  {
    sub_1D8BE7448(__src);
    memcpy(v134, __src, 0xF1uLL);
    if (sub_1D8BD15A8(v134) == 1)
    {
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v14 = sub_1D8BF08A0();
      __swift_project_value_buffer(v14, qword_1EE320A70);
      v7 = sub_1D8BF0880();
      v15 = sub_1D8BF0B90();
      if (OUTLINED_FUNCTION_27_2(v15))
      {
        OUTLINED_FUNCTION_61();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_16_4(&dword_1D8BAF000, v16, v17, "Unable to render, nil camera");
        OUTLINED_FUNCTION_22();
        MEMORY[0x1DA723A30]();
      }

      sub_1D8BE8ACC();
      OUTLINED_FUNCTION_65();
      *v18 = 0;
      goto LABEL_25;
    }

    v35 = *(v4 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination);
    if (!v35)
    {
      if (qword_1EE320A68 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v39 = sub_1D8BF08A0();
      __swift_project_value_buffer(v39, qword_1EE320A70);
      v7 = sub_1D8BF0880();
      v40 = sub_1D8BF0B90();
      if (OUTLINED_FUNCTION_27_2(v40))
      {
        OUTLINED_FUNCTION_61();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_16_4(&dword_1D8BAF000, v41, v42, "Unable to render, nil primaryRenderDestination");
        OUTLINED_FUNCTION_22();
        MEMORY[0x1DA723A30]();
      }

      sub_1D8BE8ACC();
      OUTLINED_FUNCTION_65();
      v38 = 3;
      goto LABEL_24;
    }

    v99 = v9;
    v103 = *(v4 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination + 8);
    v9 = v4 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__secondaryRenderDestination;
    v36 = *(v4 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__secondaryRenderDestination);
    if (v36 && v36 == v7)
    {
      sub_1D8BE8ACC();
      OUTLINED_FUNCTION_65();
      v38 = 6;
LABEL_24:
      *v37 = v38;
LABEL_25:
      swift_willThrow();

      OUTLINED_FUNCTION_1_7();
      v34 = 0;
LABEL_26:
      v21 = v106;
      goto LABEL_27;
    }

    ObjectType = swift_getObjectType();
    if (v35 != v7)
    {
      sub_1D8BE8ACC();
      OUTLINED_FUNCTION_65();
      v38 = 7;
      goto LABEL_24;
    }

    v91 = ObjectType;
    swift_unknownObjectRetain();
    sub_1D8BE5158(v127);
    v96 = v127[0];
    sub_1D8BE555C(v127);
    v100 = v127[0];
    v46 = *(v4 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__alphaThreshold);
    os_unfair_lock_lock((v46 + 24));
    v97 = *(v46 + 16);
    v95 = *(v46 + 20);
    os_unfair_lock_unlock((v46 + 24));
    sub_1D8BE7460(v132);
    v47 = *v9;
    if (*v9)
    {
      if (v96)
      {
        v48 = *(v9 + 8);
        v9 = swift_getObjectType();
        v7 = (v48 + 64);
        v119 = *(v48 + 64);
        swift_unknownObjectRetain();
        v119(v124, v9, v48);
        if (v2)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          OUTLINED_FUNCTION_1_7();
          v34 = 0;
          goto LABEL_26;
        }

        v90 = *&v124[0];
        v112 = *&v124[1];
        v113 = *(&v124[0] + 1);
        v110 = *&v124[2];
        v111 = *(&v124[1] + 1);
        v107 = *&v124[3];
        v108 = *(&v124[2] + 1);
        v9 = *(&v124[3] + 1);
        v109 = *(&v124[4] + 1);
        v101 = *&v124[4];
        v117 = *(&v124[5] + 1);
        v118 = *&v124[5];
        v115 = *(&v124[6] + 1);
        v116 = *&v124[6];
        v114 = v124[7];
        memset(v120, 0, 116);
        sub_1D8BE8B20(v120);
        sub_1D8BE6DFC();
        sub_1D8BE7460(v132);
        memcpy(v127, v132, 0xF1uLL);
        if (sub_1D8BD15A8(v127) == 1)
        {
          sub_1D8BE8ACC();
          OUTLINED_FUNCTION_65();
          *v60 = 1;
          swift_willThrow();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

LABEL_43:
          v21 = v106;
          v34 = v107;
          v4 = v90;
          v6 = v101;
          v25 = v117;
          v7 = v118;
          v27 = v115;
          v26 = v116;
          v28 = v114;
          v30 = v112;
          v29 = v113;
          v32 = v110;
          v31 = v111;
          v33 = v108;
          goto LABEL_27;
        }

        swift_unknownObjectRelease();
        v49 = v107;
        v47 = v108;
LABEL_41:
        PFKTraceSpatialPhotoRenderStart();
        v50 = v6[1];
        *v125 = *v6;
        *&v125[16] = v50;
        *&v125[32] = v6[2];
        *&v125[48] = *(v6 + 6);
        *&v125[56] = v10;
        *&v125[64] = v106;
        *&v125[72] = v105;
        *&v125[80] = v104;
        *&v125[88] = *(v6 + 88);
        *&v125[100] = *(v6 + 100);
        v126[0] = v90;
        v126[1] = v113;
        v126[2] = v112;
        v126[3] = v111;
        v126[4] = v110;
        v107 = v49;
        v108 = v47;
        v126[5] = v47;
        v126[6] = v49;
        v126[7] = v9;
        v126[8] = v101;
        v126[9] = v109;
        v126[10] = v118;
        v126[11] = v117;
        v126[12] = v116;
        v126[13] = v115;
        LODWORD(v126[14]) = v114;
        LOBYTE(v123) = v95;
        memcpy(v124 + 15, v134, 0xF0uLL);
        memcpy(v128, v125, sizeof(v128));
        memcpy(v120 + 12, v132, 0xF1uLL);
        memcpy(&v121[7], v126, 0x74uLL);
        *v127 = v13;
        v127[8] = v96;
        v127[9] = v100;
        *&v127[12] = v97;
        v127[16] = v95;
        memcpy(&v127[17], v124, 0xFFuLL);
        memcpy(v129, v120, sizeof(v129));
        memcpy(v130, v121, sizeof(v130));
        v131 = __dst[14];
        OUTLINED_FUNCTION_28_2();

        sub_1D8BDA7D8(v125, v120);
        sub_1D8BE8B88(v126, v120);
        sub_1D8BE7C9C(v124);
        OUTLINED_FUNCTION_28_2();
        sub_1D8BE8530(v124);
        v51 = *(v4 + 24);
        v52 = swift_getObjectType();
        OUTLINED_FUNCTION_28_2();
        v53 = (*(v51 + 8))(v120, v124, v52, v51);
        if (!v2)
        {
          v84 = v120[1];
          v85 = v120[0];
          v82 = v120[3];
          v83 = v120[2];
          v54 = v120[4];
          if (v10)
          {
            (v10)(v53);
            v53 = sub_1D8BB1504(v10);
            v106 = 0;
          }

          v55 = v101;
          v81 = v54;
          if (v90 && v9)
          {
            (v9)(v53);
            sub_1D8BB1504(v9);
            v9 = 0;
            v55 = 0;
          }

          v56 = MEMORY[0x1E69E7CC0];
          v123 = MEMORY[0x1E69E7CC0];
          v57 = *(v4 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__renderEffect);
          v102 = v55;
          if (!v57)
          {
            goto LABEL_58;
          }

          v58 = *(v4 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__renderEffect + 8);
          v59 = qword_1ECAA3E50;
          swift_unknownObjectRetain();
          if (v59 != -1)
          {
            goto LABEL_92;
          }

          while (1)
          {
            if (byte_1ECAA49D0)
            {
              swift_unknownObjectRelease();
            }

            else
            {
              v61 = sub_1D8BE8C4C(0, 1, 1, MEMORY[0x1E69E7CC0]);
              v63 = v61[2];
              v62 = v61[3];
              v56 = v61;
              if (v63 >= v62 >> 1)
              {
                v56 = sub_1D8BE8C4C((v62 > 1), v63 + 1, 1, v61);
              }

              v56[2] = v63 + 1;
              v64 = &v56[2 * v63];
              v64[4] = v57;
              v64[5] = v58;
              v55 = v102;
            }

LABEL_58:
            if (v96 == 5)
            {
              v65 = *(v4 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel_maskCompositingEffect);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v56 = sub_1D8BE8C4C(0, v56[2] + 1, 1, v56);
              }

              v67 = v56[2];
              v66 = v56[3];
              v92 = v67 + 1;
              if (v67 >= v66 >> 1)
              {
                v56 = sub_1D8BE8C4C((v66 > 1), v92, 1, v56);
              }

              v89 = v13;
              v56[2] = v92;
              v68 = &v56[2 * v67];
              v68[4] = v65;
              v68[5] = &off_1F5448ED0;
              v57 = v56;
            }

            else
            {
              v57 = v56;
              v92 = v56[2];
              if (!v92)
              {
                v93 = MEMORY[0x1E69E7CC0];
                v78 = v109;
LABEL_83:

                v79 = *&v125[72];
                if (*&v125[72])
                {
                  (*&v125[72])(v93);
                  sub_1D8BB1504(v79);
                  v104 = 0;
                  v105 = 0;
                }

                if (v90 && v78)
                {
                  v78(v93);
                  sub_1D8BB1504(v78);
                  v78 = 0;
                  v118 = 0;
                }

                v80 = *&v125[96];
                if (*&v125[96])
                {
                  [*&v125[96] width];
                  [v80 height];
                }

                PFKTraceSpatialPhotoRenderEnd();

                sub_1D8BE2980(v127);
                swift_unknownObjectRelease();
                v120[0] = v136;
                v120[1] = v137;
                v120[2] = v138;
                v120[3] = v139;
                *&v120[4] = v106;
                *(&v120[4] + 1) = v105;
                *&v120[5] = v104;
                *(&v120[5] + 8) = v135[0];
                *(&v120[6] + 4) = *(v135 + 12);
                sub_1D8BC77DC(v120);
                *v99 = v85;
                *(v99 + 16) = v84;
                *(v99 + 32) = v83;
                *(v99 + 48) = v82;
                *(v99 + 64) = v81;
                *&v124[0] = v90;
                *(&v124[0] + 1) = v113;
                *&v124[1] = v112;
                *(&v124[1] + 1) = v111;
                *&v124[2] = v110;
                *(&v124[2] + 1) = v108;
                *&v124[3] = v107;
                *(&v124[3] + 1) = v9;
                *&v124[4] = v55;
                *(&v124[4] + 1) = v78;
                *&v124[5] = v118;
                *(&v124[5] + 1) = v117;
                *&v124[6] = v116;
                *(&v124[6] + 1) = v115;
                LODWORD(v124[7]) = v114;
                v44 = v124;
                return sub_1D8BE8B20(v44);
              }

              v89 = v13;
            }

            v56 = 0;
            v69 = *&v128[96];
            v58 = v57 + 5;
            v93 = MEMORY[0x1E69E7CC0];
            v86 = v9;
            v87 = *&v128[96];
            v88 = v57;
            while (v56 < v57[2])
            {
              v13 = v69;
              v70 = *v58;
              swift_unknownObjectRetain();
              v98 = v70;
              sub_1D8BE7B38();
              if (v69)
              {
                v71 = *(v103 + 24);
                swift_unknownObjectRetain();
                v72 = v71(v91, v103);
                if (!v72 || (v73 = [v72 commandBuffer], swift_unknownObjectRelease(), !v73))
                {

                  sub_1D8BE8ACC();
                  OUTLINED_FUNCTION_65();
                  *v77 = 5;
                  swift_willThrow();

                  sub_1D8BE2980(v127);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v21 = v106;
                  v4 = v90;
                  v6 = v102;
                  goto LABEL_29;
                }

                if (*&v130[7])
                {
                  v74 = *&v130[103];
                  swift_unknownObjectRetain();
                }

                else
                {
                  v74 = 0;
                }

                v94 = swift_getObjectType();
                memcpy(&v122[15], v134, 0xF0uLL);
                memcpy(&v121[8], v132, 0xF1uLL);
                memcpy(&v120[17] + 8, v121, 0xF9uLL);
                *&v120[0] = v73;
                *(&v120[0] + 1) = v89;
                LOBYTE(v120[1]) = v96;
                memcpy(&v120[1] + 1, v122, 0xFFuLL);
                *&v120[17] = v69;
                *(&v120[33] + 1) = v74;
                v75 = *(v98 + 16);

                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v75(v120, v94, v98);
                memcpy(v124, v120, 0x220uLL);
                sub_1D8BE8BF8(v124);
                [v73 commit];
                v76 = swift_unknownObjectRetain();
                MEMORY[0x1DA722A40](v76);
                if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1D8BF0AC0();
                }

                sub_1D8BF0AE0();
                swift_unknownObjectRelease();
                v69 = v87;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v93 = v123;
                v57 = v88;
                v9 = v86;
              }

              else
              {
                swift_unknownObjectRelease();
              }

              v56 = (v56 + 1);
              v58 += 2;
              v55 = v102;
              if (v92 == v56)
              {
                v78 = v109;
                goto LABEL_83;
              }
            }

            __break(1u);
LABEL_92:
            OUTLINED_FUNCTION_6_5();
            swift_once();
          }
        }

        swift_unknownObjectRelease();

        sub_1D8BE2980(v127);
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_10_4();
      v47 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_10_4();
    }

    v49 = 0;
    goto LABEL_41;
  }

  if (qword_1EE320A68 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v19 = sub_1D8BF08A0();
  __swift_project_value_buffer(v19, qword_1EE320A70);
  v7 = sub_1D8BF0880();
  v20 = sub_1D8BF0B70();
  v21 = v106;
  if (OUTLINED_FUNCTION_27_2(v20))
  {
    OUTLINED_FUNCTION_61();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_16_4(&dword_1D8BAF000, v22, v23, "Unable to render, nil scene");
    OUTLINED_FUNCTION_22();
    MEMORY[0x1DA723A30]();
  }

  sub_1D8BE8ACC();
  OUTLINED_FUNCTION_65();
  *v24 = 2;
  swift_willThrow();
  OUTLINED_FUNCTION_1_7();
  v34 = 0;
LABEL_27:
  v107 = v34;
  v108 = v33;
  v110 = v32;
  v111 = v31;
  v112 = v30;
  v113 = v29;
  v114 = v28;
  v115 = v27;
  v116 = v26;
  v117 = v25;
  v118 = v7;
  if (v10)
  {
    v10();
    sub_1D8BB1504(v10);
    v21 = 0;
  }

LABEL_29:
  if (v4 && v9)
  {
    (v9)();
    sub_1D8BB1504(v9);
    v9 = 0;
    v6 = 0;
  }

  swift_willThrow();
  v124[0] = v136;
  v124[1] = v137;
  v124[2] = v138;
  v124[3] = v139;
  *&v124[4] = v21;
  *(&v124[4] + 1) = v105;
  *&v124[5] = v104;
  *(&v124[5] + 8) = v135[0];
  *(&v124[6] + 4) = *(v135 + 12);
  sub_1D8BC77DC(v124);
  *v127 = v4;
  *&v127[8] = v113;
  *&v127[16] = v112;
  *&v127[24] = v111;
  *&v127[32] = v110;
  *&v127[40] = v108;
  *&v127[48] = v107;
  *&v127[56] = v9;
  *&v127[64] = v6;
  *&v127[72] = v109;
  *&v127[80] = v118;
  *&v127[88] = v117;
  *&v127[96] = v116;
  *&v127[104] = v115;
  *&v127[112] = v114;
  v44 = v127;
  return sub_1D8BE8B20(v44);
}

void sub_1D8BE6D0C()
{
  OUTLINED_FUNCTION_6_1();
  if ((sub_1D8BE6D78(*(v0 + 40)) & 1) == 0)
  {
    swift_beginAccess();
    sub_1D8BE95E8();
    swift_endAccess();
    sub_1D8BE6E9C();
  }
}

uint64_t sub_1D8BE6D78(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_1D8BF1070();
  MEMORY[0x1DA723030](0);
  v2 = sub_1D8BF1090() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

uint64_t sub_1D8BE6DFC()
{
  v1 = v0;
  *(v0 + 32) = 1;
  swift_beginAccess();
  sub_1D8BE95E8();
  swift_endAccess();
  swift_beginAccess();
  if (sub_1D8BE6D78(*(v0 + 40)))
  {
    sub_1D8BE75E0();
  }

  v2 = MEMORY[0x1E69E7CD0];
  *(v1 + 40) = MEMORY[0x1E69E7CD0];

  *(v1 + 48) = v2;

  *(v1 + 32) = 0;
  return result;
}

void sub_1D8BE6E9C()
{
  if (*(v0 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination))
  {
    v1 = *(v0 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 104);
    swift_unknownObjectRetain();
    v3(ObjectType, v1);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D8BE6F38()
{
  result = PFKTraceSpatialPhotoSetNeedsRender();
  if (*(v0 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination))
  {
    v2 = *(v0 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 112);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8BE6FDC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__cameraProvider);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  PFKTraceSpatialPhotoInvalidateCamera();
  sub_1D8BE6D0C();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8BE7044(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 40))(0, 0, ObjectType, a2);
  }

  if (*(v2 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination))
  {
    v5 = *(v2 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination + 8);
    v6 = swift_getObjectType();
    v7 = *(v5 + 40);
    swift_unknownObjectRetain();

    v7(v8, &protocol witness table for SpatialPhoto.ViewModel, v6, v5);
    swift_unknownObjectRelease();
  }

  sub_1D8BE78BC();
  sub_1D8BE7990();
  sub_1D8BE7ACC();
  PFKTraceSpatialPhotoInvalidateCamera();
  sub_1D8BE6D0C();
  sub_1D8BE6E9C();

  return sub_1D8BE6F38();
}

uint64_t sub_1D8BE7158(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    (*(*(a2 + 8) + 40))(0, 0, ObjectType);
  }

  if (*(v2 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__secondaryRenderDestination))
  {
    v5 = *(v2 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__secondaryRenderDestination + 8);
    v6 = swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = *(v7 + 40);
    swift_unknownObjectRetain();

    v8(v9, &protocol witness table for SpatialPhoto.ViewModel, v6, v7);
    swift_unknownObjectRelease();
  }

  sub_1D8BE7990();
  sub_1D8BE6E9C();

  return sub_1D8BE6F38();
}

uint64_t sub_1D8BE725C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = (v4 + *a3);
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  swift_unknownObjectRetain();
  a4(v7, v8);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8BE72D0()
{
  *(v0 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel_renderEffectPreparedForDevice) = 0;
  swift_unknownObjectRelease();
  sub_1D8BE7ACC();

  return sub_1D8BE6F38();
}

uint64_t sub_1D8BE730C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__renderEffect);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1D8BE72D0();

  return swift_unknownObjectRelease();
}

void sub_1D8BE7378(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + *a1);
  os_unfair_lock_lock((v4 + 20));
  *a2 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 20));
}

void sub_1D8BE73D0(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a2);
  os_unfair_lock_lock((v4 + 20));
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;
  os_unfair_lock_unlock((v4 + 20));
  if (v3 != v5)
  {
    sub_1D8BE78BC();
    sub_1D8BE7990();

    sub_1D8BE6F38();
  }
}

void sub_1D8BE746C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *a1);
  os_unfair_lock_lock(v4 + 65);
  memcpy(a2, &v4[4], 0xF1uLL);

  os_unfair_lock_unlock(v4 + 65);
}

void sub_1D8BE74CC(const void *a1, void *a2)
{
  v4 = *(v2 + *a2);
  os_unfair_lock_lock(v4 + 65);
  memcpy(__dst, &v4[4], sizeof(__dst));
  memmove(v10, &v4[4], 0xF1uLL);
  if (sub_1D8BD15A8(v10) == 1)
  {
    memcpy(v8, a1, 0xF1uLL);
    if (sub_1D8BD15A8(v8) == 1)
    {
      OUTLINED_FUNCTION_26_1();
      os_unfair_lock_unlock(v4 + 65);
      return;
    }

    goto LABEL_5;
  }

  memcpy(v7, __dst, 0xF1uLL);
  memcpy(v8, a1, 0xF1uLL);
  if (sub_1D8BD15A8(v8) == 1)
  {
LABEL_5:
    OUTLINED_FUNCTION_26_1();
    os_unfair_lock_unlock(v4 + 65);
LABEL_6:
    sub_1D8BE6F38();
    return;
  }

  memcpy(v6, a1, sizeof(v6));
  v5 = static SpatialPhoto.Camera.== infix(_:_:)(v7, v6);
  OUTLINED_FUNCTION_26_1();
  os_unfair_lock_unlock(v4 + 65);
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1D8BE75E0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__scene);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));
  if (v3)
  {
    sub_1D8BE5158(__dst);
    if (*(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination))
    {
      v4 = *(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 8);
      swift_unknownObjectRetain();
      v6(__dst, ObjectType, v4);
      if (*(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__cameraProvider))
      {
        v7 = OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_8_4(v7, v8, v9, v10, v11, v12, v13, v14, v31, v32, v33);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_41_1(v36);
        OUTLINED_FUNCTION_41_1(__src);
        v15 = *(v4 + 8);
        swift_unknownObjectRetain();
        sub_1D8BBE85C(v36, __dst);
        v16 = OUTLINED_FUNCTION_24_2();
        v15(v16);
        swift_unknownObjectRelease();
        memcpy(__dst, __src, 0x151uLL);
        sub_1D8BBF6E0(__dst);
        memcpy(__src, v38, 0xF0uLL);
        sub_1D8BEA9FC(__src);
        memcpy(v34, __src, 0xF1uLL);
      }

      else
      {
        sub_1D8BE8A9C(v34);
      }

      sub_1D8BE7454(v34);
      swift_unknownObjectRelease();
    }

    if (*(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__secondaryRenderDestination))
    {
      v17 = *(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__secondaryRenderDestination + 8);
      v18 = swift_getObjectType();
      v19 = *(*(v17 + 8) + 8);
      swift_unknownObjectRetain();
      v20 = OUTLINED_FUNCTION_34_2();
      v19(v20);
      if (*(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__cameraProvider))
      {
        v21 = OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_8_4(v21, v22, v23, v24, v25, v26, v27, v28, v31, v32, v33);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_41_1(v36);
        OUTLINED_FUNCTION_41_1(__src);
        v29 = *(v18 + 8);
        swift_unknownObjectRetain();
        sub_1D8BBE85C(v36, __dst);
        v30 = OUTLINED_FUNCTION_24_2();
        v29(v30);
        swift_unknownObjectRelease();
        memcpy(__dst, __src, 0x151uLL);
        sub_1D8BBF6E0(__dst);
        memcpy(__src, v38, 0xF0uLL);
        sub_1D8BEA9FC(__src);
        memcpy(v39, __src, 0xF1uLL);
      }

      else
      {
        sub_1D8BE8A9C(v39);
      }

      sub_1D8BE74C0(v39);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D8BE78BC()
{
  OUTLINED_FUNCTION_29_2();
  if (v0)
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D8BE555C(&v7);
    v6 = v7;
    (*(v2 + 64))(&v6, ObjectType, v2);
    sub_1D8BE736C(&v5);
    v4 = v5;
    (*(v2 + 88))(&v4, ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

void sub_1D8BE7990()
{
  OUTLINED_FUNCTION_29_2();
  if (v0)
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination;
    v6 = *(v1 + OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel__primaryRenderDestination);
    v7 = *(v5 + 8);
    v8 = *(v3 + 24);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v8(v6, v7, ObjectType, v3);
    sub_1D8BE5158(&v14);
    OUTLINED_FUNCTION_20_3();
    v9();
    sub_1D8BE555C(&v13);
    v12[1] = v13;
    OUTLINED_FUNCTION_20_3();
    v10();
    sub_1D8BE736C(v12);
    OUTLINED_FUNCTION_20_3();
    v11();
    swift_unknownObjectRelease();
  }
}

void sub_1D8BE7ACC()
{
  OUTLINED_FUNCTION_29_2();
  if (v0)
  {
    swift_unknownObjectRetain();
    sub_1D8BE7B38();

    swift_unknownObjectRelease();
  }
}

void sub_1D8BE7B38()
{
  OUTLINED_FUNCTION_29_2();
  if (v0)
  {
    v3 = v1;
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    if (v7)
    {
      v8 = v7;
      v9 = swift_getObjectType();
      v10 = (*(v3 + 24))(v9, v3);
      if (v10 && (v11 = v10, swift_unknownObjectRelease(), v11 == v8))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        (*(v4 + 24))(ObjectType, v4);
        v12 = OUTLINED_FUNCTION_34_2();
        v13(v12);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D8BE7C9C(uint64_t *a1)
{
  sub_1D8BF08D0();
  OUTLINED_FUNCTION_3_1();
  v45 = v4;
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_53();
  v43 = v6 - v5;
  v44 = sub_1D8BF0900();
  OUTLINED_FUNCTION_3_1();
  v42 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_53();
  v41 = v10 - v9;
  v40 = sub_1D8BF08E0();
  OUTLINED_FUNCTION_3_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53();
  v16 = v15 - v14;
  v17 = sub_1D8BEFF30();
  OUTLINED_FUNCTION_3_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_53();
  v23 = v22 - v21;
  v24 = *a1;
  v39 = a1[38];
  memcpy(__dst, a1 + 81, 0x74uLL);
  v25 = OBJC_IVAR____TtCO22PhotosSpatialMediaCore12SpatialPhoto9ViewModel_signpostDateCreated;
  OUTLINED_FUNCTION_6_1();
  (*(v19 + 16))(v23, v1 + v25, v17);
  LOBYTE(a1) = sub_1D8BEFF00();
  result = (*(v19 + 8))(v23, v17);
  if (a1)
  {
    v27 = (v24 + 384);
  }

  else
  {
    v27 = (v1 + 56);
  }

  v28 = *v27;
  if (*v27)
  {
    *(v24 + 384) = 0;
    swift_retain_n();

    *(v1 + 56) = 0;

    v29 = dispatch_group_create();
    dispatch_group_enter(v29);
    OUTLINED_FUNCTION_17_2();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    v48[4] = sub_1D8BEAAEC;
    v48[5] = v30;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 1107296256;
    v48[2] = sub_1D8BC7104;
    v48[3] = &block_descriptor_3;
    v31 = _Block_copy(v48);
    v32 = v29;

    [v39 addCompletedHandler_];
    _Block_release(v31);
    if (__dst[0])
    {
      v33 = __dst[4];
      memcpy(v48, __dst, 0x74uLL);
      sub_1D8BDA7D8(v48, v47);
      dispatch_group_enter(v32);
      OUTLINED_FUNCTION_17_2();
      v34 = swift_allocObject();
      *(v34 + 16) = v32;
      v47[4] = sub_1D8BEAAC4;
      v47[5] = v34;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 1107296256;
      v47[2] = sub_1D8BC7104;
      v47[3] = &block_descriptor_81;
      v35 = _Block_copy(v47);
      v36 = v32;
      swift_unknownObjectRetain();

      [v33 addCompletedHandler_];
      _Block_release(v35);
      swift_unknownObjectRelease();
      sub_1D8BE8B20(__dst);
    }

    sub_1D8BDB96C();
    (*(v12 + 104))(v16, *MEMORY[0x1E69E7F98], v40);
    v37 = sub_1D8BF0C60();
    (*(v12 + 8))(v16, v40);
    v48[4] = sub_1D8BEAA1C;
    v48[5] = v28;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 1107296256;
    v48[2] = sub_1D8BDBEA8;
    v48[3] = &block_descriptor_75;
    v38 = _Block_copy(v48);

    sub_1D8BF08F0();
    v47[0] = MEMORY[0x1E69E7CC0];
    sub_1D8BEAA24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAA4B40);
    sub_1D8BEAA7C(&qword_1ECAA4760, &unk_1ECAA4B40);
    sub_1D8BF0D60();
    sub_1D8BF0BE0();
    _Block_release(v38);

    (*(v45 + 8))(v43, v46);
    (*(v42 + 8))(v41, v44);
  }

  return result;
}

uint64_t sub_1D8BE82A4()
{
  v0 = sub_1D8BF0830();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8BF07F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAA3E78 != -1)
  {
    swift_once();
  }

  v8 = sub_1D8BF0820();
  __swift_project_value_buffer(v8, qword_1ECAA4C20);
  v9 = sub_1D8BF0810();
  sub_1D8BF0840();
  v10 = sub_1D8BF0C80();
  if (sub_1D8BF0CF0())
  {

    sub_1D8BF0870();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D8BF07E0();
    _os_signpost_emit_with_name_impl(&dword_1D8BAF000, v9, v10, v13, "SpatialPhotoRenderFirstFrame", v11, v12, 2u);
    MEMORY[0x1DA723A30](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1D8BE8530(uint64_t a1)
{
  v1 = *(a1 + 60);
  v2 = *(a1 + 312);
  v3 = *(a1 + 8);
  sub_1D8BF0DE0();
  MEMORY[0x1DA722A10](0x6F6973756C63636FLL, 0xEF203A65646F4D6ELL);
  sub_1D8BE44E0(v3);
  v4 = sub_1D8BF09B0();

  [v2 insertDebugSignpost_];

  if (v1)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    sub_1D8BF0B10();
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1DA722A10](v6, v5);

  v7 = sub_1D8BF09B0();

  [v2 insertDebugSignpost_];
}