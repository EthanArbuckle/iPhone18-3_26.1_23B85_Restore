int16x8_t sub_277AB20BC(uint64_t a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 577];
  v4 = vld1q_dup_s16(v3);
  v5 = *(a1 + 16);
  v6 = vmull_s16(*v5.i8, *v4.i8);
  v7 = vmull_high_s16(v5, v4);
  v8 = &dword_277C42240[64 * a3 - 639];
  v9 = vld1q_dup_s16(v8);
  v10 = vmull_high_s16(v5, v9);
  v11 = vrshrn_n_s32(v6, 0xCuLL);
  v12 = vrshrn_n_s32(vmull_s16(*v5.i8, *v9.i8), 0xCuLL);
  v13 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 583]));
  v15 = *(a1 + 96);
  v14 = *(a1 + 112);
  v16 = vmull_s16(*v14.i8, *v13.i8);
  v17 = vmull_high_s16(v14, v13);
  v18 = &dword_277C42240[64 * a3 - 633];
  v19 = vld1q_dup_s16(v18);
  v20 = vmull_s16(*v14.i8, *v19.i8);
  v21 = vmull_high_s16(v14, v19);
  v22 = &dword_277C42240[64 * a3 - 581];
  v23 = vld1q_dup_s16(v22);
  v24 = *(a1 + 80);
  v25 = vmull_s16(*v24.i8, *v23.i8);
  v26 = vmull_high_s16(v24, v23);
  v27 = &dword_277C42240[64 * a3 - 635];
  v28 = vld1q_dup_s16(v27);
  v29 = vmull_s16(*v24.i8, *v28.i8);
  v30 = vmull_high_s16(v24, v28);
  v31 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 579]));
  v33 = *(a1 + 32);
  v32 = *(a1 + 48);
  v34 = vmull_s16(*v32.i8, *v31.i8);
  v35 = vmull_high_s16(v32, v31);
  v36 = &dword_277C42240[64 * a3 - 637];
  v37 = vld1q_dup_s16(v36);
  v38 = vmull_s16(*v32.i8, *v37.i8);
  v39 = vmull_high_s16(v32, v37);
  v40 = &dword_277C42240[64 * a3 - 578];
  v41 = vld1q_dup_s16(v40);
  v415 = vmull_s16(*v33.i8, *v41.i8);
  v478 = vmull_high_s16(v33, v41);
  v42 = &dword_277C42240[64 * a3 - 638];
  v43 = vld1q_dup_s16(v42);
  v389 = vmull_s16(*v33.i8, *v43.i8);
  v397 = vmull_high_s16(v33, v43);
  v44 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 582]));
  v458 = vmull_s16(*v15.i8, *v44.i8);
  v467 = vmull_high_s16(v15, v44);
  v45 = &dword_277C42240[64 * a3 - 634];
  v46 = vld1q_dup_s16(v45);
  v400 = vmull_s16(*v15.i8, *v46.i8);
  v464 = vmull_high_s16(v15, v46);
  v47 = &dword_277C42240[64 * a3 - 580];
  v48 = vld1q_dup_s16(v47);
  v49 = &dword_277C42240[64 * a3 - 636];
  v50 = vld1q_dup_s16(v49);
  v51 = vmlsl_s16(vmull_s16(v12, *v48.i8), v11, *v50.i8);
  LODWORD(v49) = LOWORD(dword_277C42240[64 * a3 - 632]);
  v52 = vdup_n_s16(v49);
  v53 = LOWORD(dword_277C42240[64 * a3 - 584]);
  v54 = vdup_n_s16(v53);
  v461 = vmlsl_s16(vmull_s16(v12, v54), v11, v52);
  v442 = vrshrn_high_n_s32(v11, v7, 0xCuLL);
  *v43.i8 = vrshrn_n_s32(v7, 0xCuLL);
  v55 = vmlal_s16(vmull_s16(v11, *v48.i8), v12, *v50.i8);
  v455 = vmlal_s16(vmull_s16(v11, v54), v12, v52);
  v426 = vrshrn_high_n_s32(v12, v10, 0xCuLL);
  *v7.i8 = vrshrn_n_s32(v10, 0xCuLL);
  v56 = *(a1 + 64);
  v446 = vmull_s16(*v56.i8, *v48.i8);
  v448 = vmull_high_s16(v56, v48);
  v444 = vmull_s16(*v56.i8, *v50.i8);
  v453 = vmull_high_s16(v56, v50);
  v57 = vmlal_s16(vmull_s16(*v43.i8, *v48.i8), *v7.i8, *v50.i8);
  v58 = vmlsl_s16(vmull_s16(*v7.i8, *v48.i8), *v43.i8, *v50.i8);
  *v56.i8 = vrshrn_n_s32(v16, 0xCuLL);
  v59 = vrshrn_n_s32(v20, 0xCuLL);
  *v10.i8 = vdup_n_s16(-LOWORD(dword_277C42240[64 * a3 - 612]));
  *v16.i8 = vdup_n_s16(-LOWORD(dword_277C42240[64 * a3 - 604]));
  v60 = vmlal_s16(vmull_s16(v59, *v16.i8), *v56.i8, *v10.i8);
  *v20.i8 = vdup_n_s16(-v53);
  *v48.i8 = vdup_n_s16(-v49);
  v437 = vmlal_s16(vmull_s16(v59, *v48.i8), *v56.i8, *v20.i8);
  v61 = vmull_s16(*v56.i8, *v16.i8);
  v62 = vmull_s16(*v56.i8, *v48.i8);
  v440 = vrshrn_high_n_s32(*v56.i8, v17, 0xCuLL);
  *v56.i8 = vrshrn_n_s32(v17, 0xCuLL);
  v63 = vmlsl_s16(v61, v59, *v10.i8);
  v432 = vmlsl_s16(v62, v59, *v20.i8);
  v424 = vrshrn_high_n_s32(v59, v21, 0xCuLL);
  v64 = vrshrn_n_s32(v21, 0xCuLL);
  v65 = vmlal_s16(vmull_s16(v64, *v16.i8), *v56.i8, *v10.i8);
  v66 = vmlsl_s16(vmull_s16(*v56.i8, *v16.i8), v64, *v10.i8);
  v421 = vmlal_s16(vmull_s16(v64, *v48.i8), *v56.i8, *v20.i8);
  v418 = vmlsl_s16(vmull_s16(*v56.i8, *v48.i8), v64, *v20.i8);
  *v56.i8 = vrshrn_n_s32(v60, 0xCuLL);
  v67 = vrshrn_n_s32(v63, 0xCuLL);
  v412 = vmlal_s16(vmull_s16(v67, *v48.i8), *v56.i8, *v20.i8);
  v68 = vmull_s16(*v56.i8, *v48.i8);
  v435 = vrshrn_high_n_s32(*v56.i8, v65, 0xCuLL);
  *v56.i8 = vrshrn_n_s32(v65, 0xCuLL);
  *v65.i8 = vrshrn_n_s32(v66, 0xCuLL);
  v409 = vmlal_s16(vmull_s16(*v65.i8, *v48.i8), *v56.i8, *v20.i8);
  v406 = vmlsl_s16(vmull_s16(*v56.i8, *v48.i8), *v65.i8, *v20.i8);
  v403 = vmlsl_s16(v68, v67, *v20.i8);
  v484 = vrshrn_high_n_s32(v67, v66, 0xCuLL);
  v69 = &dword_277C42240[64 * a3 - 620];
  v70 = &dword_277C42240[64 * a3 - 596];
  LODWORD(v49) = LOWORD(dword_277C42240[64 * a3 - 600]);
  v71 = LOWORD(dword_277C42240[64 * a3 - 616]);
  *v66.i8 = vrshrn_n_s32(v25, 0xCuLL);
  *v29.i8 = vrshrn_n_s32(v29, 0xCuLL);
  *v65.i8 = vld1_dup_s16(v69);
  *v10.i8 = vld1_dup_s16(v70);
  v72 = vmlsl_s16(vmull_s16(*v29.i8, *v10.i8), *v66.i8, *v65.i8);
  *v20.i8 = vdup_n_s16(v49);
  *v60.i8 = vdup_n_s16(v71);
  v73 = vmlsl_s16(vmull_s16(*v29.i8, *v60.i8), *v66.i8, *v20.i8);
  v74 = vmull_s16(*v66.i8, *v10.i8);
  v75 = vmull_s16(*v66.i8, *v60.i8);
  v470 = vrshrn_high_n_s32(*v66.i8, v26, 0xCuLL);
  *v66.i8 = vrshrn_n_s32(v26, 0xCuLL);
  v76 = vmlal_s16(v74, *v29.i8, *v65.i8);
  v77 = vmlal_s16(v75, *v29.i8, *v20.i8);
  v473 = vrshrn_high_n_s32(*v29.i8, v30, 0xCuLL);
  *v29.i8 = vrshrn_n_s32(v30, 0xCuLL);
  v78 = vmlal_s16(vmull_s16(*v66.i8, *v10.i8), *v29.i8, *v65.i8);
  v79 = vmlsl_s16(vmull_s16(*v29.i8, *v10.i8), *v66.i8, *v65.i8);
  *v65.i8 = vrshrn_n_s32(v76, 0xCuLL);
  v481 = vrshrn_high_n_s32(*v65.i8, v78, 0xCuLL);
  *v30.i8 = vrshrn_n_s32(v78, 0xCuLL);
  *v10.i8 = vrshrn_n_s32(v79, 0xCuLL);
  v80 = vmlal_s16(vmull_s16(*v10.i8, *v60.i8), *v30.i8, *v20.i8);
  v81 = vmlsl_s16(vmull_s16(*v30.i8, *v60.i8), *v10.i8, *v20.i8);
  *v72.i8 = vrshrn_n_s32(v72, 0xCuLL);
  v82 = vmlal_s16(vmull_s16(*v72.i8, *v60.i8), *v65.i8, *v20.i8);
  v83 = vmull_s16(*v65.i8, *v60.i8);
  v84 = vmull_s16(*v29.i8, *v60.i8);
  v85 = vmlal_s16(vmull_s16(*v66.i8, *v60.i8), *v29.i8, *v20.i8);
  v86 = vmlsl_s16(v84, *v66.i8, *v20.i8);
  v87 = vmlsl_s16(v83, *v72.i8, *v20.i8);
  v476 = vrshrn_high_n_s32(*v72.i8, v79, 0xCuLL);
  v88 = vrshrn_n_s32(v34, 0xCuLL);
  *v20.i8 = vrshrn_n_s32(v38, 0xCuLL);
  *v79.i8 = vdup_n_s16(-LOWORD(dword_277C42240[64 * a3 - 628]));
  v89 = vdup_n_s16(-LOWORD(dword_277C42240[64 * a3 - 588]));
  v90 = vmlal_s16(vmull_s16(*v20.i8, v89), v88, *v79.i8);
  *v66.i8 = vdup_n_s16(-v71);
  *v65.i8 = vdup_n_s16(-v49);
  v91 = vmlal_s16(vmull_s16(*v20.i8, *v65.i8), v88, *v66.i8);
  v92 = vmull_s16(v88, v89);
  v93 = vmull_s16(v88, *v65.i8);
  v94 = vrshrn_high_n_s32(v88, v35, 0xCuLL);
  *v35.i8 = vrshrn_n_s32(v35, 0xCuLL);
  v95 = vmlsl_s16(v92, *v20.i8, *v79.i8);
  v96 = vmlsl_s16(v93, *v20.i8, *v66.i8);
  v429 = vrshrn_high_n_s32(*v20.i8, v39, 0xCuLL);
  *v20.i8 = vrshrn_n_s32(v39, 0xCuLL);
  v97 = vmlal_s16(vmull_s16(*v20.i8, v89), *v35.i8, *v79.i8);
  v98 = vmlsl_s16(vmull_s16(*v35.i8, v89), *v20.i8, *v79.i8);
  *v55.i8 = vrshrn_n_s32(v55, 0xCuLL);
  *v51.i8 = vrshrn_n_s32(v51, 0xCuLL);
  v383 = vmlal_s16(vmull_s16(*v51.i8, v54), *v55.i8, v52);
  v99 = vmull_s16(*v55.i8, v54);
  v450 = vrshrn_high_n_s32(*v55.i8, v57, 0xCuLL);
  *v55.i8 = vrshrn_n_s32(v57, 0xCuLL);
  v379 = vmlsl_s16(v99, *v51.i8, v52);
  v393 = vrshrn_high_n_s32(*v51.i8, v58, 0xCuLL);
  *v51.i8 = vrshrn_n_s32(v58, 0xCuLL);
  v374 = vmlal_s16(vmull_s16(*v51.i8, v54), *v55.i8, v52);
  v371 = vmlsl_s16(vmull_s16(*v55.i8, v54), *v51.i8, v52);
  v368 = vmlal_s16(vmull_s16(*v43.i8, v54), *v7.i8, v52);
  v365 = vmlsl_s16(vmull_s16(*v7.i8, v54), *v43.i8, v52);
  LODWORD(v49) = LOWORD(dword_277C42240[64 * a3 - 624]);
  v100 = LOWORD(dword_277C42240[64 * a3 - 592]);
  *v43.i8 = vrshrn_n_s32(v415, 0xCuLL);
  *v51.i8 = vrshrn_n_s32(v389, 0xCuLL);
  v377 = vmlsl_s16(vmull_s16(*v51.i8, v54), *v43.i8, v52);
  v101 = vdupq_n_s16(v49);
  v102 = vdupq_n_s16(v100);
  v390 = vmlsl_s16(vmull_s16(*v51.i8, *v102.i8), *v43.i8, *v101.i8);
  v416 = vrshrn_high_n_s32(*v43.i8, v478, 0xCuLL);
  *v41.i8 = vrshrn_n_s32(v478, 0xCuLL);
  v386 = vmlal_s16(vmull_s16(*v43.i8, *v102.i8), *v51.i8, *v101.i8);
  v479 = vrshrn_high_n_s32(*v51.i8, v397, 0xCuLL);
  v358 = vrshrn_n_s32(v397, 0xCuLL);
  v355 = *v41.i8;
  v103 = vmlal_s16(vmull_s16(*v41.i8, v54), v358, v52);
  v349 = vmlal_s16(vmull_s16(*v43.i8, v54), *v51.i8, v52);
  v352 = vmlsl_s16(vmull_s16(v358, v54), *v41.i8, v52);
  v104 = vmlal_s16(vmull_s16(*v20.i8, *v65.i8), *v35.i8, *v66.i8);
  v105 = vmlsl_s16(vmull_s16(*v35.i8, *v65.i8), *v20.i8, *v66.i8);
  *v79.i8 = vrshrn_n_s32(v90, 0xCuLL);
  *v20.i8 = vrshrn_n_s32(v95, 0xCuLL);
  v106 = vmlal_s16(vmull_s16(*v20.i8, *v65.i8), *v79.i8, *v66.i8);
  v294 = vrshrn_high_n_s32(*v79.i8, v97, 0xCuLL);
  *v90.i8 = vrshrn_n_s32(v97, 0xCuLL);
  v107 = vmlsl_s16(vmull_s16(*v79.i8, *v65.i8), *v20.i8, *v66.i8);
  v326 = vrshrn_high_n_s32(*v20.i8, v98, 0xCuLL);
  *v95.i8 = vrshrn_n_s32(v98, 0xCuLL);
  v108 = vmlal_s16(vmull_s16(*v95.i8, *v65.i8), *v90.i8, *v66.i8);
  v109 = vmlsl_s16(vmull_s16(*v90.i8, *v65.i8), *v95.i8, *v66.i8);
  *v97.i8 = vrshrn_n_s32(v458, 0xCuLL);
  v110 = vrshrn_n_s32(v400, 0xCuLL);
  v111 = vmlal_s16(vmull_s16(v110, *v65.i8), *v97.i8, *v66.i8);
  v112 = vdupq_n_s16(-v100);
  v113 = vdupq_n_s16(-v49);
  v363 = vmlal_s16(vmull_s16(v110, *v113.i8), *v97.i8, *v112.i8);
  v401 = vrshrn_high_n_s32(*v97.i8, v467, 0xCuLL);
  *v57.i8 = vrshrn_n_s32(v467, 0xCuLL);
  v114 = vmlsl_s16(vmull_s16(*v97.i8, *v65.i8), v110, *v66.i8);
  v361 = vmlsl_s16(vmull_s16(*v97.i8, *v113.i8), v110, *v112.i8);
  v468 = vrshrn_high_n_s32(v110, v464, 0xCuLL);
  v115 = vrshrn_n_s32(v464, 0xCuLL);
  v116 = vmull_s16(*v57.i8, *v65.i8);
  v117 = vmlal_s16(vmull_s16(v115, *v65.i8), *v57.i8, *v66.i8);
  v118 = vmlsl_s16(v116, v115, *v66.i8);
  v282 = vrshrn_high_n_s32(vrshrn_n_s32(v82, 0xCuLL), v80, 0xCuLL);
  v273 = vrshrn_high_n_s32(vrshrn_n_s32(v87, 0xCuLL), v81, 0xCuLL);
  v269 = vrshrn_high_n_s32(vrshrn_n_s32(v77, 0xCuLL), v85, 0xCuLL);
  v265 = vrshrn_high_n_s32(vrshrn_n_s32(v73, 0xCuLL), v86, 0xCuLL);
  v267 = vrshrn_high_n_s32(vrshrn_n_s32(v91, 0xCuLL), v104, 0xCuLL);
  v271 = vrshrn_high_n_s32(vrshrn_n_s32(v96, 0xCuLL), v105, 0xCuLL);
  v279 = vrshrn_high_n_s32(vrshrn_n_s32(v106, 0xCuLL), v108, 0xCuLL);
  v291 = vrshrn_high_n_s32(vrshrn_n_s32(v107, 0xCuLL), v109, 0xCuLL);
  v346 = vmlal_s16(vmull_s16(v115, *v113.i8), *v57.i8, *v112.i8);
  v344 = vmlsl_s16(vmull_s16(*v57.i8, *v113.i8), v115, *v112.i8);
  *v104.i8 = vrshrn_n_s32(v111, 0xCuLL);
  v459 = vrshrn_high_n_s32(*v104.i8, v117, 0xCuLL);
  *v96.i8 = vrshrn_n_s32(v117, 0xCuLL);
  *v105.i8 = vrshrn_n_s32(v118, 0xCuLL);
  v342 = vmlal_s16(vmull_s16(*v105.i8, *v113.i8), *v96.i8, *v112.i8);
  v339 = vmlsl_s16(vmull_s16(*v96.i8, *v113.i8), *v105.i8, *v112.i8);
  v119 = vqsubq_s16(v94, v470);
  v120 = vqsubq_s16(v429, v473);
  v333 = vmlal_s16(vmull_s16(*v120.i8, *v113.i8), *v119.i8, *v112.i8);
  v330 = vmlal_high_s16(vmull_high_s16(v120, v113), v119, v112);
  v328 = vmlsl_s16(vmull_s16(*v119.i8, *v113.i8), *v120.i8, *v112.i8);
  v320 = vmlsl_high_s16(vmull_high_s16(v119, v113), v120, v112);
  v121 = vqsubq_s16(v294, v476);
  v122 = vqsubq_s16(v326, v481);
  v317 = vmlal_s16(vmull_s16(*v122.i8, *v113.i8), *v121.i8, *v112.i8);
  v314 = vmlal_high_s16(vmull_high_s16(v122, v113), v121, v112);
  v308 = vmlsl_high_s16(vmull_high_s16(v121, v113), v122, v112);
  v311 = vmlsl_s16(vmull_s16(*v121.i8, *v113.i8), *v122.i8, *v112.i8);
  v123 = vqsubq_s16(v279, v273);
  v124 = vqsubq_s16(v291, v282);
  v305 = vmlal_s16(vmull_s16(*v124.i8, *v113.i8), *v123.i8, *v112.i8);
  v303 = vmlal_high_s16(vmull_high_s16(v124, v113), v123, v112);
  v297 = vmlsl_high_s16(vmull_high_s16(v123, v113), v124, v112);
  v300 = vmlsl_s16(vmull_s16(*v123.i8, *v113.i8), *v124.i8, *v112.i8);
  *v114.i8 = vrshrn_n_s32(v114, 0xCuLL);
  v324 = vmlal_s16(vmull_s16(*v114.i8, *v113.i8), *v104.i8, *v112.i8);
  v125 = vqsubq_s16(v267, v265);
  v126 = vqsubq_s16(v271, v269);
  v288 = vmlal_s16(vmull_s16(*v126.i8, *v113.i8), *v125.i8, *v112.i8);
  v285 = vmlal_high_s16(vmull_high_s16(v126, v113), v125, v112);
  v275 = vmlsl_high_s16(vmull_high_s16(v125, v113), v126, v112);
  v277 = vmlsl_s16(vmull_s16(*v125.i8, *v113.i8), *v126.i8, *v112.i8);
  v263 = vmlsl_s16(vmull_s16(*v104.i8, *v113.i8), *v114.i8, *v112.i8);
  v465 = vrshrn_high_n_s32(*v114.i8, v118, 0xCuLL);
  v127 = &dword_277C42240[64 * a3 - 608];
  v128 = vld1q_dup_s16(v127);
  v398 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*a1, *v128.i8), 0xCuLL), vmull_high_s16(*a1, v128), 0xCuLL);
  v261 = vrshrn_high_n_s32(vrshrn_n_s32(v383, 0xCuLL), v374, 0xCuLL);
  v129 = vrshrn_high_n_s32(vrshrn_n_s32(v379, 0xCuLL), v371, 0xCuLL);
  v380 = vrshrn_high_n_s32(vrshrn_n_s32(v455, 0xCuLL), v368, 0xCuLL);
  v130 = vrshrn_high_n_s32(vrshrn_n_s32(v461, 0xCuLL), v365, 0xCuLL);
  v131 = vrshrn_high_n_s32(vrshrn_n_s32(v437, 0xCuLL), v421, 0xCuLL);
  v132 = vrshrn_high_n_s32(vrshrn_n_s32(v432, 0xCuLL), v418, 0xCuLL);
  v133 = vrshrn_high_n_s32(vrshrn_n_s32(v412, 0xCuLL), v409, 0xCuLL);
  v134 = vrshrn_high_n_s32(vrshrn_n_s32(v403, 0xCuLL), v406, 0xCuLL);
  *v112.i8 = vrshrn_n_s32(v349, 0xCuLL);
  *v114.i8 = vrshrn_n_s32(v377, 0xCuLL);
  v135 = vmlal_s16(vmull_s16(*v114.i8, *v102.i8), *v112.i8, *v101.i8);
  v462 = vrshrn_high_n_s32(*v112.i8, v103, 0xCuLL);
  *v125.i8 = vrshrn_n_s32(v103, 0xCuLL);
  v136 = vmlsl_s16(vmull_s16(*v112.i8, *v102.i8), *v114.i8, *v101.i8);
  v456 = vrshrn_high_n_s32(*v114.i8, v352, 0xCuLL);
  *v126.i8 = vrshrn_n_s32(v352, 0xCuLL);
  v137 = vmlal_s16(vmull_s16(*v126.i8, *v102.i8), *v125.i8, *v101.i8);
  v138 = vmlsl_s16(vmull_s16(*v125.i8, *v102.i8), *v126.i8, *v101.i8);
  v139 = vmlal_s16(vmull_s16(v355, *v102.i8), v358, *v101.i8);
  v140 = vmlsl_s16(vmull_s16(v358, *v102.i8), v355, *v101.i8);
  v141 = vqsubq_s16(v130, v131);
  v142 = vqsubq_s16(v380, v132);
  v404 = vmlal_s16(vmull_s16(*v141.i8, *v102.i8), *v142.i8, *v101.i8);
  v372 = vmlal_high_s16(vmull_high_s16(v141, v102), v142, v101);
  v369 = vmlsl_s16(vmull_s16(*v142.i8, *v102.i8), *v141.i8, *v101.i8);
  v143 = vmlsl_high_s16(vmull_high_s16(v142, v102), v141, v101);
  v144 = vqsubq_s16(v129, v133);
  v145 = vqsubq_s16(v261, v134);
  v356 = vmlal_s16(vmull_s16(*v144.i8, *v102.i8), *v145.i8, *v101.i8);
  v359 = v143;
  v259 = vmlal_high_s16(vmull_high_s16(v144, v102), v145, v101);
  v255 = vmlsl_high_s16(vmull_high_s16(v145, v102), v144, v101);
  v257 = vmlsl_s16(vmull_s16(*v145.i8, *v102.i8), *v144.i8, *v101.i8);
  v146 = vqsubq_s16(v393, v435);
  v147 = vqsubq_s16(v450, v484);
  v253 = vmlal_s16(vmull_s16(*v146.i8, *v102.i8), *v147.i8, *v101.i8);
  v251 = vmlal_high_s16(vmull_high_s16(v146, v102), v147, v101);
  v148 = vmlsl_s16(vmull_s16(*v147.i8, *v102.i8), *v146.i8, *v101.i8);
  v249 = vmlsl_high_s16(vmull_high_s16(v147, v102), v146, v101);
  v149 = vqsubq_s16(v442, v440);
  v150 = vqsubq_s16(v426, v424);
  v151 = vmlal_s16(vmull_s16(*v149.i8, *v102.i8), *v150.i8, *v101.i8);
  v152 = vmlal_high_s16(vmull_high_s16(v149, v102), v150, v101);
  v153 = vmlsl_s16(vmull_s16(*v150.i8, *v102.i8), *v149.i8, *v101.i8);
  v154 = vmlsl_high_s16(vmull_high_s16(v150, v102), v149, v101);
  *v149.i8 = vrshrn_n_s32(v446, 0xCuLL);
  *v143.i8 = vrshrn_n_s32(v444, 0xCuLL);
  v407 = vmlsl_s16(vmull_s16(*v143.i8, *v102.i8), *v149.i8, *v101.i8);
  v413 = vmlsl_s16(vmull_s16(*v143.i8, *v128.i8), *v149.i8, *v128.i8);
  v419 = vrshrn_high_n_s32(*v149.i8, v448, 0xCuLL);
  *v125.i8 = vrshrn_n_s32(v448, 0xCuLL);
  v155 = vmlal_s16(vmull_s16(*v149.i8, *v102.i8), *v143.i8, *v101.i8);
  v410 = vmlal_s16(vmull_s16(*v149.i8, *v128.i8), *v143.i8, *v128.i8);
  v422 = vrshrn_high_n_s32(*v143.i8, v453, 0xCuLL);
  *v143.i8 = vrshrn_n_s32(v453, 0xCuLL);
  v156 = vmull_s16(*v143.i8, *v102.i8);
  v157 = vmlal_s16(vmull_s16(*v125.i8, *v102.i8), *v143.i8, *v101.i8);
  v384 = vmlsl_s16(v156, *v125.i8, *v101.i8);
  v438 = vrshrn_high_n_s32(vrshrn_n_s32(v135, 0xCuLL), v137, 0xCuLL);
  v433 = vrshrn_high_n_s32(vrshrn_n_s32(v136, 0xCuLL), v138, 0xCuLL);
  v336 = vrshrn_high_n_s32(vrshrn_n_s32(v386, 0xCuLL), v139, 0xCuLL);
  v350 = vrshrn_high_n_s32(vrshrn_n_s32(v390, 0xCuLL), v140, 0xCuLL);
  v353 = vrshrn_high_n_s32(vrshrn_n_s32(v363, 0xCuLL), v346, 0xCuLL);
  v347 = vrshrn_high_n_s32(vrshrn_n_s32(v361, 0xCuLL), v344, 0xCuLL);
  v322 = vrshrn_high_n_s32(vrshrn_n_s32(v324, 0xCuLL), v342, 0xCuLL);
  v325 = vrshrn_high_n_s32(vrshrn_n_s32(v263, 0xCuLL), v339, 0xCuLL);
  v454 = vqaddq_s16(v442, v440);
  v449 = vqaddq_s16(v393, v435);
  v445 = vqaddq_s16(v129, v133);
  v441 = vqaddq_s16(v130, v131);
  v436 = vqaddq_s16(v265, v267);
  v443 = vqaddq_s16(v273, v279);
  v447 = vqaddq_s16(v476, v294);
  v477 = vqaddq_s16(v470, v94);
  v375 = vqaddq_s16(v429, v473);
  v482 = vqaddq_s16(v326, v481);
  v474 = vqaddq_s16(v291, v282);
  v430 = vqaddq_s16(v271, v269);
  v158 = vqaddq_s16(v132, v380);
  v471 = vqaddq_s16(v134, v261);
  v485 = vqaddq_s16(v484, v450);
  v366 = vqaddq_s16(v424, v426);
  *v377.i8 = vrshrn_n_s32(v155, 0xCuLL);
  v427 = vrshrn_high_n_s32(*v377.i8, v157, 0xCuLL);
  *v112.i8 = vrshrn_n_s32(v157, 0xCuLL);
  *v138.i8 = vrshrn_n_s32(v384, 0xCuLL);
  v394 = vmlal_s16(vmull_s16(*v138.i8, *v128.i8), *v112.i8, *v128.i8);
  v391 = vmlsl_s16(vmull_s16(*v112.i8, *v128.i8), *v138.i8, *v128.i8);
  v387 = vmlal_s16(vmull_s16(*v125.i8, *v128.i8), *v143.i8, *v128.i8);
  v381 = vmlsl_s16(vmull_s16(*v143.i8, *v128.i8), *v125.i8, *v128.i8);
  v262 = vrshrn_high_n_s32(vrshrn_n_s32(v404, 0xCuLL), v372, 0xCuLL);
  v327 = vrshrn_high_n_s32(vrshrn_n_s32(v369, 0xCuLL), v359, 0xCuLL);
  v272 = vrshrn_high_n_s32(vrshrn_n_s32(v356, 0xCuLL), v259, 0xCuLL);
  v357 = vrshrn_high_n_s32(vrshrn_n_s32(v257, 0xCuLL), v255, 0xCuLL);
  v280 = vrshrn_high_n_s32(vrshrn_n_s32(v253, 0xCuLL), v251, 0xCuLL);
  v370 = vrshrn_high_n_s32(vrshrn_n_s32(v148, 0xCuLL), v249, 0xCuLL);
  v292 = vrshrn_high_n_s32(vrshrn_n_s32(v151, 0xCuLL), v152, 0xCuLL);
  v405 = vrshrn_high_n_s32(vrshrn_n_s32(v153, 0xCuLL), v154, 0xCuLL);
  v425 = vrshrn_high_n_s32(vrshrn_n_s32(v333, 0xCuLL), v330, 0xCuLL);
  v295 = vrshrn_high_n_s32(vrshrn_n_s32(v328, 0xCuLL), v320, 0xCuLL);
  v373 = vrshrn_high_n_s32(vrshrn_n_s32(v317, 0xCuLL), v314, 0xCuLL);
  v283 = vrshrn_high_n_s32(vrshrn_n_s32(v311, 0xCuLL), v308, 0xCuLL);
  v360 = vrshrn_high_n_s32(vrshrn_n_s32(v305, 0xCuLL), v303, 0xCuLL);
  v274 = vrshrn_high_n_s32(vrshrn_n_s32(v300, 0xCuLL), v297, 0xCuLL);
  v329 = vrshrn_high_n_s32(vrshrn_n_s32(v288, 0xCuLL), v285, 0xCuLL);
  v451 = vrshrn_high_n_s32(vrshrn_n_s32(v277, 0xCuLL), v275, 0xCuLL);
  v159 = vqsubq_s16(v350, v353);
  v160 = vqsubq_s16(v336, v347);
  v345 = vmlal_s16(vmull_s16(*v159.i8, *v128.i8), *v160.i8, *v128.i8);
  v340 = vmlal_high_s16(vmull_high_s16(v159, v128), v160, v128);
  v331 = vmlsl_high_s16(vmull_high_s16(v160, v128), v159, v128);
  v334 = vmlsl_s16(vmull_s16(*v160.i8, *v128.i8), *v159.i8, *v128.i8);
  v161 = vqsubq_s16(v433, v322);
  v162 = vqsubq_s16(v438, v325);
  v321 = vmlal_s16(vmull_s16(*v161.i8, *v128.i8), *v162.i8, *v128.i8);
  v163 = vmlsl_s16(vmull_s16(*v162.i8, *v128.i8), *v161.i8, *v128.i8);
  v315 = vmlsl_high_s16(vmull_high_s16(v162, v128), v161, v128);
  v318 = vmlal_high_s16(vmull_high_s16(v161, v128), v162, v128);
  v164 = vqsubq_s16(v456, v459);
  v165 = vqsubq_s16(v462, v465);
  v166 = vmlal_s16(vmull_s16(*v164.i8, *v128.i8), *v165.i8, *v128.i8);
  v312 = vmlal_high_s16(vmull_high_s16(v164, v128), v165, v128);
  v306 = vmlsl_high_s16(vmull_high_s16(v165, v128), v164, v128);
  v309 = vmlsl_s16(vmull_s16(*v165.i8, *v128.i8), *v164.i8, *v128.i8);
  v167 = vqsubq_s16(v416, v401);
  v168 = vqsubq_s16(v479, v468);
  v304 = vmlal_s16(vmull_s16(*v167.i8, *v128.i8), *v168.i8, *v128.i8);
  v169 = vmlsl_s16(vmull_s16(*v168.i8, *v128.i8), *v167.i8, *v128.i8);
  v298 = vmlsl_high_s16(vmull_high_s16(v168, v128), v167, v128);
  v301 = vmlal_high_s16(vmull_high_s16(v167, v128), v168, v128);
  v170 = vqsubq_s16(v405, v425);
  v171 = vqsubq_s16(v292, v295);
  v289 = vmlal_s16(vmull_s16(*v170.i8, *v128.i8), *v171.i8, *v128.i8);
  v286 = vmlal_high_s16(vmull_high_s16(v170, v128), v171, v128);
  v362 = vmlsl_high_s16(vmull_high_s16(v171, v128), v170, v128);
  v364 = vmlsl_s16(vmull_s16(*v171.i8, *v128.i8), *v170.i8, *v128.i8);
  v172 = vqsubq_s16(v370, v373);
  v173 = vqsubq_s16(v280, v283);
  v278 = vmlal_s16(vmull_s16(*v172.i8, *v128.i8), *v173.i8, *v128.i8);
  v276 = vmlal_high_s16(vmull_high_s16(v172, v128), v173, v128);
  v343 = vmlsl_s16(vmull_s16(*v173.i8, *v128.i8), *v172.i8, *v128.i8);
  v338 = vmlsl_high_s16(vmull_high_s16(v173, v128), v172, v128);
  v174 = vqsubq_s16(v357, v360);
  v175 = vqsubq_s16(v272, v274);
  v270 = vmlal_s16(vmull_s16(*v174.i8, *v128.i8), *v175.i8, *v128.i8);
  v268 = vmlal_high_s16(vmull_high_s16(v174, v128), v175, v128);
  v264 = vmlsl_high_s16(vmull_high_s16(v175, v128), v174, v128);
  v266 = vmlsl_s16(vmull_s16(*v175.i8, *v128.i8), *v174.i8, *v128.i8);
  v176 = vqsubq_s16(v327, v329);
  v177 = vqsubq_s16(v262, v451);
  v260 = vmlal_s16(vmull_s16(*v176.i8, *v128.i8), *v177.i8, *v128.i8);
  v258 = vmlal_high_s16(vmull_high_s16(v176, v128), v177, v128);
  v254 = vmlsl_high_s16(vmull_high_s16(v177, v128), v176, v128);
  v256 = vmlsl_s16(vmull_s16(*v177.i8, *v128.i8), *v176.i8, *v128.i8);
  v178 = vqsubq_s16(v441, v436);
  v179 = vqsubq_s16(v158, v430);
  v252 = vmlal_s16(vmull_s16(*v178.i8, *v128.i8), *v179.i8, *v128.i8);
  v250 = vmlal_high_s16(vmull_high_s16(v178, v128), v179, v128);
  v247 = vmlsl_high_s16(vmull_high_s16(v179, v128), v178, v128);
  v248 = vmlsl_s16(vmull_s16(*v179.i8, *v128.i8), *v178.i8, *v128.i8);
  v180 = vqsubq_s16(v445, v443);
  v181 = vqsubq_s16(v471, v474);
  v246 = vmlal_s16(vmull_s16(*v180.i8, *v128.i8), *v181.i8, *v128.i8);
  v245 = vmlal_high_s16(vmull_high_s16(v180, v128), v181, v128);
  v243 = vmlsl_high_s16(vmull_high_s16(v181, v128), v180, v128);
  v244 = vmlsl_s16(vmull_s16(*v181.i8, *v128.i8), *v180.i8, *v128.i8);
  v182 = vqsubq_s16(v449, v447);
  v183 = vqsubq_s16(v485, v482);
  v184 = vmlal_s16(vmull_s16(*v182.i8, *v128.i8), *v183.i8, *v128.i8);
  v185 = vmlal_high_s16(vmull_high_s16(v182, v128), v183, v128);
  v186 = vmlsl_s16(vmull_s16(*v183.i8, *v128.i8), *v182.i8, *v128.i8);
  v187 = vmlsl_high_s16(vmull_high_s16(v183, v128), v182, v128);
  v188 = vqsubq_s16(v454, v477);
  v189 = vqsubq_s16(v366, v375);
  v190 = vmlal_s16(vmull_s16(*v188.i8, *v128.i8), *v189.i8, *v128.i8);
  v191 = vmlal_high_s16(vmull_high_s16(v188, v128), v189, v128);
  v192 = vmlsl_s16(vmull_s16(*v189.i8, *v128.i8), *v188.i8, *v128.i8);
  v193 = vmlsl_high_s16(vmull_high_s16(v189, v128), v188, v128);
  *v188.i8 = vrshrn_n_s32(v407, 0xCuLL);
  v194 = vrshrn_high_n_s32(*v188.i8, v384, 0xCuLL);
  v195 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v188.i8, *v128.i8), *v377.i8, *v128.i8), 0xCuLL), v394, 0xCuLL);
  v196 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v377.i8, *v128.i8), *v188.i8, *v128.i8), 0xCuLL), v391, 0xCuLL);
  v197 = vrshrn_high_n_s32(vrshrn_n_s32(v410, 0xCuLL), v387, 0xCuLL);
  v198 = vrshrn_high_n_s32(vrshrn_n_s32(v413, 0xCuLL), v381, 0xCuLL);
  v199 = vqaddq_s16(v416, v401);
  v200 = vqaddq_s16(v456, v459);
  v395 = vqaddq_s16(v433, v322);
  v388 = vqaddq_s16(v350, v353);
  v457 = vqaddq_s16(v336, v347);
  v460 = vqaddq_s16(v438, v325);
  v466 = vqaddq_s16(v462, v465);
  v337 = vqaddq_s16(v479, v468);
  v242 = vrshrn_high_n_s32(vrshrn_n_s32(v345, 0xCuLL), v340, 0xCuLL);
  v201 = vrshrn_high_n_s32(vrshrn_n_s32(v334, 0xCuLL), v331, 0xCuLL);
  v240 = vrshrn_high_n_s32(vrshrn_n_s32(v321, 0xCuLL), v318, 0xCuLL);
  v202 = vrshrn_high_n_s32(vrshrn_n_s32(v163, 0xCuLL), v315, 0xCuLL);
  v241 = vrshrn_high_n_s32(vrshrn_n_s32(v166, 0xCuLL), v312, 0xCuLL);
  v302 = vrshrn_high_n_s32(vrshrn_n_s32(v304, 0xCuLL), v301, 0xCuLL);
  v203 = vrshrn_high_n_s32(vrshrn_n_s32(v169, 0xCuLL), v298, 0xCuLL);
  v235 = vqsubq_s16(v398, v419);
  v238 = vqaddq_s16(v398, v194);
  v239 = vqaddq_s16(v398, v419);
  v237 = vqaddq_s16(v398, v196);
  v319 = vqsubq_s16(v398, v196);
  v236 = vqaddq_s16(v398, v198);
  v313 = vqsubq_s16(v398, v194);
  v316 = vqsubq_s16(v398, v198);
  v439 = vqaddq_s16(v398, v197);
  v323 = vqsubq_s16(v398, v197);
  v234 = vqaddq_s16(v398, v195);
  v332 = vqaddq_s16(v398, v427);
  v335 = vqsubq_s16(v398, v195);
  v204 = vqsubq_s16(v398, v427);
  v341 = vqaddq_s16(v398, v422);
  v205 = vqsubq_s16(v398, v422);
  v480 = vqaddq_s16(v292, v295);
  v469 = vqaddq_s16(v280, v283);
  v399 = vqaddq_s16(v272, v274);
  v408 = vqaddq_s16(v262, v451);
  v417 = vqaddq_s16(v158, v430);
  v420 = vqaddq_s16(v471, v474);
  v428 = vqaddq_s16(v485, v482);
  v434 = vqaddq_s16(v366, v375);
  v382 = vrshrn_high_n_s32(vrshrn_n_s32(v289, 0xCuLL), v286, 0xCuLL);
  v376 = vrshrn_high_n_s32(vrshrn_n_s32(v278, 0xCuLL), v276, 0xCuLL);
  v486 = vrshrn_high_n_s32(vrshrn_n_s32(v270, 0xCuLL), v268, 0xCuLL);
  v351 = vrshrn_high_n_s32(vrshrn_n_s32(v260, 0xCuLL), v258, 0xCuLL);
  v483 = vrshrn_high_n_s32(vrshrn_n_s32(v252, 0xCuLL), v250, 0xCuLL);
  v475 = vrshrn_high_n_s32(vrshrn_n_s32(v246, 0xCuLL), v245, 0xCuLL);
  v472 = vrshrn_high_n_s32(vrshrn_n_s32(v244, 0xCuLL), v243, 0xCuLL);
  v463 = vrshrn_high_n_s32(vrshrn_n_s32(v186, 0xCuLL), v187, 0xCuLL);
  v293 = vqaddq_s16(v205, v199);
  v296 = vrshrn_high_n_s32(vrshrn_n_s32(v184, 0xCuLL), v185, 0xCuLL);
  v287 = vqsubq_s16(v205, v199);
  v290 = vrshrn_high_n_s32(vrshrn_n_s32(v190, 0xCuLL), v191, 0xCuLL);
  v299 = vqaddq_s16(v204, v200);
  v281 = vqsubq_s16(v204, v200);
  v284 = vrshrn_high_n_s32(vrshrn_n_s32(v192, 0xCuLL), v193, 0xCuLL);
  v452 = vqaddq_s16(v341, v337);
  v431 = vqaddq_s16(v332, v466);
  *a2 = vqaddq_s16(v452, v434);
  a2[1] = vqaddq_s16(v431, v428);
  v423 = vqaddq_s16(v234, v460);
  v414 = vqaddq_s16(v439, v457);
  a2[2] = vqaddq_s16(v423, v420);
  a2[3] = vqaddq_s16(v414, v417);
  v411 = vqaddq_s16(v236, v242);
  v402 = vqaddq_s16(v237, v240);
  a2[4] = vqaddq_s16(v411, v408);
  a2[5] = vqaddq_s16(v402, v399);
  v392 = vqaddq_s16(v238, v241);
  v385 = vqaddq_s16(v239, v302);
  a2[6] = vqaddq_s16(v392, v469);
  a2[7] = vqaddq_s16(v385, v480);
  v378 = vqaddq_s16(v235, v203);
  v206 = vrshrn_high_n_s32(vrshrn_n_s32(v309, 0xCuLL), v306, 0xCuLL);
  v367 = vqaddq_s16(v313, v206);
  a2[8] = vqaddq_s16(v378, v382);
  a2[9] = vqaddq_s16(v367, v376);
  v354 = vqaddq_s16(v319, v202);
  v348 = vqaddq_s16(v316, v201);
  a2[10] = vqaddq_s16(v354, v486);
  a2[11] = vqaddq_s16(v348, v351);
  v307 = vqaddq_s16(v335, v395);
  v310 = vqaddq_s16(v323, v388);
  a2[12] = vqaddq_s16(v310, v483);
  a2[13] = vqaddq_s16(v307, v475);
  v396 = vqsubq_s16(v335, v395);
  a2[14] = vqaddq_s16(v299, v296);
  a2[15] = vqaddq_s16(v293, v290);
  v207 = vqsubq_s16(v323, v388);
  a2[16] = vqaddq_s16(v287, v284);
  a2[17] = vqaddq_s16(v281, v463);
  v208 = vqsubq_s16(v316, v201);
  v209 = vrshrn_high_n_s32(vrshrn_n_s32(v248, 0xCuLL), v247, 0xCuLL);
  a2[18] = vqaddq_s16(v396, v472);
  a2[19] = vqaddq_s16(v207, v209);
  v210 = vqsubq_s16(v319, v202);
  v211 = vrshrn_high_n_s32(vrshrn_n_s32(v256, 0xCuLL), v254, 0xCuLL);
  v212 = vrshrn_high_n_s32(vrshrn_n_s32(v266, 0xCuLL), v264, 0xCuLL);
  a2[20] = vqaddq_s16(v208, v211);
  a2[21] = vqaddq_s16(v210, v212);
  v213 = vrshrn_high_n_s32(vrshrn_n_s32(v364, 0xCuLL), v362, 0xCuLL);
  v214 = vrshrn_high_n_s32(vrshrn_n_s32(v343, 0xCuLL), v338, 0xCuLL);
  v215 = vqsubq_s16(v313, v206);
  v216 = vqsubq_s16(v235, v203);
  a2[22] = vqaddq_s16(v215, v214);
  a2[23] = vqaddq_s16(v216, v213);
  v217 = vqaddq_s16(v370, v373);
  v218 = vqaddq_s16(v405, v425);
  v219 = vqsubq_s16(v239, v302);
  v220 = vqsubq_s16(v238, v241);
  a2[24] = vqaddq_s16(v219, v218);
  a2[25] = vqaddq_s16(v220, v217);
  v221 = vqaddq_s16(v327, v329);
  v222 = vqaddq_s16(v357, v360);
  v223 = vqsubq_s16(v237, v240);
  v224 = vqsubq_s16(v236, v242);
  a2[26] = vqaddq_s16(v223, v222);
  a2[27] = vqaddq_s16(v224, v221);
  v225 = vqaddq_s16(v445, v443);
  v226 = vqaddq_s16(v441, v436);
  v227 = vqsubq_s16(v439, v457);
  v228 = vqsubq_s16(v234, v460);
  a2[28] = vqaddq_s16(v227, v226);
  a2[29] = vqaddq_s16(v228, v225);
  v229 = vqaddq_s16(v454, v477);
  v230 = vqaddq_s16(v449, v447);
  v231 = vqsubq_s16(v332, v466);
  v232 = vqsubq_s16(v341, v337);
  a2[30] = vqaddq_s16(v231, v230);
  a2[31] = vqaddq_s16(v232, v229);
  a2[32] = vqsubq_s16(v232, v229);
  a2[33] = vqsubq_s16(v231, v230);
  a2[34] = vqsubq_s16(v228, v225);
  a2[35] = vqsubq_s16(v227, v226);
  a2[36] = vqsubq_s16(v224, v221);
  a2[37] = vqsubq_s16(v223, v222);
  a2[38] = vqsubq_s16(v220, v217);
  a2[39] = vqsubq_s16(v219, v218);
  a2[40] = vqsubq_s16(v216, v213);
  a2[41] = vqsubq_s16(v215, v214);
  a2[42] = vqsubq_s16(v210, v212);
  a2[43] = vqsubq_s16(v208, v211);
  a2[44] = vqsubq_s16(v207, v209);
  a2[45] = vqsubq_s16(v396, v472);
  a2[46] = vqsubq_s16(v281, v463);
  a2[47] = vqsubq_s16(v287, v284);
  a2[48] = vqsubq_s16(v293, v290);
  a2[49] = vqsubq_s16(v299, v296);
  a2[50] = vqsubq_s16(v307, v475);
  a2[51] = vqsubq_s16(v310, v483);
  a2[52] = vqsubq_s16(v348, v351);
  a2[53] = vqsubq_s16(v354, v486);
  a2[54] = vqsubq_s16(v367, v376);
  a2[55] = vqsubq_s16(v378, v382);
  a2[56] = vqsubq_s16(v385, v480);
  a2[57] = vqsubq_s16(v392, v469);
  a2[58] = vqsubq_s16(v402, v399);
  a2[59] = vqsubq_s16(v411, v408);
  a2[60] = vqsubq_s16(v414, v417);
  a2[61] = vqsubq_s16(v423, v420);
  result = vqsubq_s16(v431, v428);
  a2[62] = result;
  a2[63] = vqsubq_s16(v452, v434);
  return result;
}

int16x8_t sub_277AB36F4(int16x4_t *a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 608];
  v4 = vld1q_dup_s16(v3);
  result = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*a1, *v4.i8), 0xCuLL), vmull_high_s16(*a1->i8, v4), 0xCuLL);
  *a2 = result;
  a2[1] = result;
  a2[2] = result;
  a2[3] = result;
  a2[4] = result;
  a2[5] = result;
  a2[6] = result;
  a2[7] = result;
  a2[8] = result;
  a2[9] = result;
  a2[10] = result;
  a2[11] = result;
  a2[12] = result;
  a2[13] = result;
  a2[14] = result;
  a2[15] = result;
  a2[16] = result;
  a2[17] = result;
  a2[18] = result;
  a2[19] = result;
  a2[20] = result;
  a2[21] = result;
  a2[22] = result;
  a2[23] = result;
  a2[24] = result;
  a2[25] = result;
  a2[26] = result;
  a2[27] = result;
  a2[28] = result;
  a2[29] = result;
  a2[30] = result;
  a2[31] = result;
  a2[32] = result;
  a2[33] = result;
  a2[34] = result;
  a2[35] = result;
  a2[36] = result;
  a2[37] = result;
  a2[38] = result;
  a2[39] = result;
  a2[40] = result;
  a2[41] = result;
  a2[42] = result;
  a2[43] = result;
  a2[44] = result;
  a2[45] = result;
  a2[46] = result;
  a2[47] = result;
  a2[48] = result;
  a2[49] = result;
  a2[50] = result;
  a2[51] = result;
  a2[52] = result;
  a2[53] = result;
  a2[54] = result;
  a2[55] = result;
  a2[56] = result;
  a2[57] = result;
  a2[58] = result;
  a2[59] = result;
  a2[60] = result;
  a2[61] = result;
  a2[62] = result;
  a2[63] = result;
  return result;
}

int16x8_t sub_277AB37A4(uint64_t a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 638];
  v4 = vld1q_dup_s16(v3);
  v5 = &dword_277C42240[64 * a3 - 578];
  v6 = vld1q_dup_s16(v5);
  v7 = *(a1 + 16);
  v9 = *(a1 + 480);
  v8 = *(a1 + 496);
  v10 = vmlal_s16(vmull_s16(*v8.i8, *v6.i8), *v7.i8, *v4.i8);
  v11 = vmlal_high_s16(vmull_high_s16(v8, v6), v7, v4);
  v12 = vmlsl_s16(vmull_s16(*v7.i8, *v6.i8), *v8.i8, *v4.i8);
  v13 = vmlsl_high_s16(vmull_high_s16(v7, v6), v8, v4);
  v14 = &dword_277C42240[64 * a3 - 606];
  v15 = vld1q_dup_s16(v14);
  v16 = &dword_277C42240[64 * a3 - 610];
  v17 = vld1q_dup_s16(v16);
  v18 = *(a1 + 272);
  v392 = *(a1 + 256);
  v20 = *(a1 + 224);
  v19 = *(a1 + 240);
  v21 = vmlal_s16(vmull_s16(*v19.i8, *v17.i8), *v18.i8, *v15.i8);
  v22 = vmlal_high_s16(vmull_high_s16(v19, v17), v18, v15);
  v23 = vmlsl_s16(vmull_s16(*v18.i8, *v17.i8), *v19.i8, *v15.i8);
  v24 = vmlsl_high_s16(vmull_high_s16(v18, v17), v19, v15);
  v25 = &dword_277C42240[64 * a3 - 622];
  v26 = vld1q_dup_s16(v25);
  v27 = &dword_277C42240[64 * a3 - 594];
  v28 = vld1q_dup_s16(v27);
  v29 = *(a1 + 144);
  v389 = *(a1 + 128);
  v31 = *(a1 + 352);
  v30 = *(a1 + 368);
  v289 = vmlal_high_s16(vmull_high_s16(v30, v28), v29, v26);
  v298 = vmlsl_s16(vmull_s16(*v29.i8, *v28.i8), *v30.i8, *v26.i8);
  v301 = vmlal_s16(vmull_s16(*v30.i8, *v28.i8), *v29.i8, *v26.i8);
  v295 = vmlsl_high_s16(vmull_high_s16(v29, v28), v30, v26);
  v32 = &dword_277C42240[64 * a3 - 590];
  v33 = vld1q_dup_s16(v32);
  v34 = &dword_277C42240[64 * a3 - 626];
  v35 = vld1q_dup_s16(v34);
  v36 = *(a1 + 400);
  v357 = *(a1 + 384);
  v38 = *(a1 + 96);
  v37 = *(a1 + 112);
  v39 = vmlal_s16(vmull_s16(*v37.i8, *v35.i8), *v36.i8, *v33.i8);
  v40 = vmlal_high_s16(vmull_high_s16(v37, v35), v36, v33);
  v41 = vmlsl_s16(vmull_s16(*v36.i8, *v35.i8), *v37.i8, *v33.i8);
  v42 = vmlsl_high_s16(vmull_high_s16(v36, v35), v37, v33);
  v43 = &dword_277C42240[64 * a3 - 630];
  v44 = vld1q_dup_s16(v43);
  v45 = &dword_277C42240[64 * a3 - 586];
  v46 = vld1q_dup_s16(v45);
  v47 = *(a1 + 64);
  v48 = *(a1 + 80);
  v49 = *(a1 + 416);
  v50 = *(a1 + 432);
  v340 = vmlal_s16(vmull_s16(*v50.i8, *v46.i8), *v48.i8, *v44.i8);
  v337 = vmlsl_s16(vmull_s16(*v48.i8, *v46.i8), *v50.i8, *v44.i8);
  v331 = vmlal_high_s16(vmull_high_s16(v50, v46), v48, v44);
  v334 = vmlsl_high_s16(vmull_high_s16(v48, v46), v50, v44);
  v51 = &dword_277C42240[64 * a3 - 598];
  v52 = vld1q_dup_s16(v51);
  v53 = &dword_277C42240[64 * a3 - 618];
  v54 = vld1q_dup_s16(v53);
  v55 = *(a1 + 160);
  v56 = *(a1 + 176);
  v57 = *(a1 + 320);
  v58 = *(a1 + 336);
  v283 = vmlal_s16(vmull_s16(*v56.i8, *v54.i8), *v58.i8, *v52.i8);
  v59 = vmlal_high_s16(vmull_high_s16(v56, v54), v58, v52);
  v60 = vmlsl_s16(vmull_s16(*v58.i8, *v54.i8), *v56.i8, *v52.i8);
  v280 = vmlsl_high_s16(vmull_high_s16(v58, v54), v56, v52);
  v61 = &dword_277C42240[64 * a3 - 614];
  v62 = vld1q_dup_s16(v61);
  v63 = &dword_277C42240[64 * a3 - 602];
  v64 = vld1q_dup_s16(v63);
  v66 = *(a1 + 288);
  v65 = *(a1 + 304);
  v68 = *(a1 + 192);
  v67 = *(a1 + 208);
  v329 = vmlal_s16(vmull_s16(*v65.i8, *v64.i8), *v67.i8, *v62.i8);
  v324 = vmlsl_s16(vmull_s16(*v67.i8, *v64.i8), *v65.i8, *v62.i8);
  v319 = vmlal_high_s16(vmull_high_s16(v65, v64), v67, v62);
  v322 = vmlsl_high_s16(vmull_high_s16(v67, v64), v65, v62);
  v69 = &dword_277C42240[64 * a3 - 582];
  v70 = vld1q_dup_s16(v69);
  v71 = &dword_277C42240[64 * a3 - 634];
  v72 = vld1q_dup_s16(v71);
  v73 = *(a1 + 32);
  v74 = *(a1 + 48);
  v76 = *(a1 + 448);
  v75 = *(a1 + 464);
  v316 = vmlal_s16(vmull_s16(*v74.i8, *v72.i8), *v75.i8, *v70.i8);
  v313 = vmlsl_s16(vmull_s16(*v75.i8, *v72.i8), *v74.i8, *v70.i8);
  v307 = vmlal_high_s16(vmull_high_s16(v74, v72), v75, v70);
  v310 = vmlsl_high_s16(vmull_high_s16(v75, v72), v74, v70);
  v77 = &dword_277C42240[64 * a3 - 636];
  v78 = vld1q_dup_s16(v77);
  v79 = &dword_277C42240[64 * a3 - 580];
  v80 = vld1q_dup_s16(v79);
  v366 = vmlal_s16(vmull_s16(*v9.i8, *v80.i8), *v73.i8, *v78.i8);
  v360 = vmlal_high_s16(vmull_high_s16(v9, v80), v73, v78);
  v354 = vmlsl_s16(vmull_s16(*v73.i8, *v80.i8), *v9.i8, *v78.i8);
  v326 = vmlsl_high_s16(vmull_high_s16(v73, v80), v9, v78);
  v81 = &dword_277C42240[64 * a3 - 604];
  v82 = &dword_277C42240[64 * a3 - 612];
  v83 = vld1q_dup_s16(v81);
  v84 = vld1q_dup_s16(v82);
  v304 = vmlal_s16(vmull_s16(*v20.i8, *v84.i8), *v66.i8, *v83.i8);
  v85 = vmull_high_s16(v66, v84);
  v292 = vmlal_high_s16(vmull_high_s16(v20, v84), v66, v83);
  v286 = vmlsl_s16(vmull_s16(*v66.i8, *v84.i8), *v20.i8, *v83.i8);
  v86 = &dword_277C42240[64 * a3 - 620];
  v87 = &dword_277C42240[64 * a3 - 596];
  v88 = vld1q_dup_s16(v86);
  v89 = vld1q_dup_s16(v87);
  v277 = vmlsl_high_s16(v85, v20, v83);
  v383 = vmlal_s16(vmull_s16(*v31.i8, *v89.i8), *v55.i8, *v88.i8);
  v369 = vmlsl_s16(vmull_s16(*v55.i8, *v89.i8), *v31.i8, *v88.i8);
  v372 = vmlal_high_s16(vmull_high_s16(v31, v89), v55, v88);
  v363 = vmlsl_high_s16(vmull_high_s16(v55, v89), v31, v88);
  v90 = &dword_277C42240[64 * a3 - 588];
  v91 = vld1q_dup_s16(v90);
  v92 = &dword_277C42240[64 * a3 - 628];
  v93 = vld1q_dup_s16(v92);
  v352 = vmlal_s16(vmull_s16(*v38.i8, *v93.i8), *v49.i8, *v91.i8);
  v346 = vmlsl_s16(vmull_s16(*v49.i8, *v93.i8), *v38.i8, *v91.i8);
  v349 = vmlal_high_s16(vmull_high_s16(v38, v93), v49, v91);
  v343 = vmlsl_high_s16(vmull_high_s16(v49, v93), v38, v91);
  v94 = vrshrn_high_n_s32(vrshrn_n_s32(v10, 0xCuLL), v11, 0xCuLL);
  v95 = vrshrn_high_n_s32(vrshrn_n_s32(v12, 0xCuLL), v13, 0xCuLL);
  v96 = vrshrn_high_n_s32(vrshrn_n_s32(v21, 0xCuLL), v22, 0xCuLL);
  LODWORD(v92) = LOWORD(dword_277C42240[64 * a3 - 632]);
  LODWORD(v87) = LOWORD(dword_277C42240[64 * a3 - 584]);
  v97 = vdupq_n_s16(v92);
  v98 = vdupq_n_s16(v87);
  v99 = vrshrn_high_n_s32(vrshrn_n_s32(v23, 0xCuLL), v24, 0xCuLL);
  v386 = vmlal_s16(vmull_s16(*v76.i8, *v98.i8), *v47.i8, *v97.i8);
  v380 = vmlal_high_s16(vmull_high_s16(v76, v98), v47, v97);
  v375 = vmlsl_high_s16(vmull_high_s16(v47, v98), v76, v97);
  v377 = vmlsl_s16(vmull_s16(*v47.i8, *v98.i8), *v76.i8, *v97.i8);
  v100 = vqsubq_s16(v95, v99);
  v101 = vqsubq_s16(v94, v96);
  v102 = vmlal_s16(vmull_s16(*v100.i8, *v98.i8), *v101.i8, *v97.i8);
  v103 = vmlal_high_s16(vmull_high_s16(v100, v98), v101, v97);
  v104 = vmlsl_s16(vmull_s16(*v101.i8, *v98.i8), *v100.i8, *v97.i8);
  v105 = vmlsl_high_s16(vmull_high_s16(v101, v98), v100, v97);
  v106 = vrshrn_high_n_s32(vrshrn_n_s32(v301, 0xCuLL), v289, 0xCuLL);
  v107 = vrshrn_high_n_s32(vrshrn_n_s32(v298, 0xCuLL), v295, 0xCuLL);
  v108 = vrshrn_high_n_s32(vrshrn_n_s32(v39, 0xCuLL), v40, 0xCuLL);
  v109 = vrshrn_high_n_s32(vrshrn_n_s32(v41, 0xCuLL), v42, 0xCuLL);
  v110 = vqsubq_s16(v109, v107);
  v111 = vqsubq_s16(v108, v106);
  v112 = vdupq_n_s16(-v87);
  v113 = vdupq_n_s16(-v92);
  v114 = vmlal_s16(vmull_s16(*v111.i8, *v113.i8), *v110.i8, *v112.i8);
  v115 = vmull_s16(*v110.i8, *v113.i8);
  v116 = vmull_high_s16(v110, v113);
  v117 = vmlal_high_s16(vmull_high_s16(v111, v113), v110, v112);
  v118 = vmlsl_s16(v115, *v111.i8, *v112.i8);
  v119 = vmlsl_high_s16(v116, v111, v112);
  v299 = vrshrn_high_n_s32(vrshrn_n_s32(v340, 0xCuLL), v331, 0xCuLL);
  v120 = vrshrn_high_n_s32(vrshrn_n_s32(v337, 0xCuLL), v334, 0xCuLL);
  v302 = vrshrn_high_n_s32(vrshrn_n_s32(v283, 0xCuLL), v59, 0xCuLL);
  v121 = vrshrn_high_n_s32(vrshrn_n_s32(v60, 0xCuLL), v280, 0xCuLL);
  LODWORD(v92) = LOWORD(dword_277C42240[64 * a3 - 600]);
  v122 = vdupq_n_s16(v92);
  LODWORD(v87) = LOWORD(dword_277C42240[64 * a3 - 616]);
  v123 = vdupq_n_s16(v87);
  v341 = vmlal_s16(vmull_s16(*v68.i8, *v123.i8), *v57.i8, *v122.i8);
  v338 = vmlal_high_s16(vmull_high_s16(v68, v123), v57, v122);
  v332 = vmlsl_high_s16(vmull_high_s16(v57, v123), v68, v122);
  v335 = vmlsl_s16(vmull_s16(*v57.i8, *v123.i8), *v68.i8, *v122.i8);
  v124 = vqsubq_s16(v120, v121);
  v125 = vqsubq_s16(v299, v302);
  v296 = vmlal_s16(vmull_s16(*v124.i8, *v123.i8), *v125.i8, *v122.i8);
  v290 = vmlal_high_s16(vmull_high_s16(v124, v123), v125, v122);
  v281 = vmlsl_high_s16(vmull_high_s16(v125, v123), v124, v122);
  v284 = vmlsl_s16(vmull_s16(*v125.i8, *v123.i8), *v124.i8, *v122.i8);
  v126 = vrshrn_high_n_s32(vrshrn_n_s32(v329, 0xCuLL), v319, 0xCuLL);
  v127 = vrshrn_high_n_s32(vrshrn_n_s32(v324, 0xCuLL), v322, 0xCuLL);
  v128 = vrshrn_high_n_s32(vrshrn_n_s32(v316, 0xCuLL), v307, 0xCuLL);
  v129 = vrshrn_high_n_s32(vrshrn_n_s32(v313, 0xCuLL), v310, 0xCuLL);
  v130 = vqsubq_s16(v129, v127);
  v131 = vdupq_n_s16(-v87);
  v132 = vdupq_n_s16(-v92);
  v133 = vqsubq_s16(v128, v126);
  v134 = vrshrn_high_n_s32(vrshrn_n_s32(v354, 0xCuLL), v326, 0xCuLL);
  v327 = vrshrn_high_n_s32(vrshrn_n_s32(v304, 0xCuLL), v292, 0xCuLL);
  v317 = vrshrn_high_n_s32(vrshrn_n_s32(v286, 0xCuLL), v277, 0xCuLL);
  v320 = vrshrn_high_n_s32(vrshrn_n_s32(v366, 0xCuLL), v360, 0xCuLL);
  v263 = vqaddq_s16(v95, v99);
  v265 = vqaddq_s16(v109, v107);
  v267 = vqaddq_s16(v108, v106);
  v268 = vqaddq_s16(v94, v96);
  v278 = vrshrn_high_n_s32(vrshrn_n_s32(v102, 0xCuLL), v103, 0xCuLL);
  v293 = vrshrn_high_n_s32(vrshrn_n_s32(v104, 0xCuLL), v105, 0xCuLL);
  v305 = vrshrn_high_n_s32(vrshrn_n_s32(v114, 0xCuLL), v117, 0xCuLL);
  v287 = vrshrn_high_n_s32(vrshrn_n_s32(v118, 0xCuLL), v119, 0xCuLL);
  LODWORD(v92) = LOWORD(dword_277C42240[64 * a3 - 624]);
  LODWORD(v87) = LOWORD(dword_277C42240[64 * a3 - 592]);
  v135 = vdupq_n_s16(v92);
  v136 = vdupq_n_s16(v87);
  v367 = vmlal_s16(vmull_s16(*v357.i8, *v136.i8), *v389.i8, *v135.i8);
  v361 = vmlal_high_s16(vmull_high_s16(v357, v136), v389, v135);
  v355 = vmlsl_s16(vmull_s16(*v389.i8, *v136.i8), *v357.i8, *v135.i8);
  v358 = vmlsl_high_s16(vmull_high_s16(v389, v136), v357, v135);
  v137 = vqsubq_s16(v134, v317);
  v138 = v134;
  v139 = vqsubq_s16(v320, v327);
  v390 = vmlal_s16(vmull_s16(*v137.i8, *v136.i8), *v139.i8, *v135.i8);
  v314 = vmlal_high_s16(vmull_high_s16(v137, v136), v139, v135);
  v308 = vmlsl_high_s16(vmull_high_s16(v139, v136), v137, v135);
  v311 = vmlsl_s16(vmull_s16(*v139.i8, *v136.i8), *v137.i8, *v135.i8);
  v140 = vqsubq_s16(v293, v305);
  v141 = vqsubq_s16(v278, v287);
  v275 = vmlal_s16(vmull_s16(*v140.i8, *v136.i8), *v141.i8, *v135.i8);
  v273 = vmlal_high_s16(vmull_high_s16(v140, v136), v141, v135);
  v270 = vmlsl_high_s16(vmull_high_s16(v141, v136), v140, v135);
  v271 = vmlsl_s16(vmull_s16(*v141.i8, *v136.i8), *v140.i8, *v135.i8);
  v142 = vqsubq_s16(v263, v265);
  v143 = vqsubq_s16(v268, v267);
  v269 = vmlal_s16(vmull_s16(*v142.i8, *v136.i8), *v143.i8, *v135.i8);
  v144 = vmlal_high_s16(vmull_high_s16(v142, v136), v143, v135);
  v145 = vmlsl_s16(vmull_s16(*v143.i8, *v136.i8), *v142.i8, *v135.i8);
  v146 = vmlsl_high_s16(vmull_high_s16(v143, v136), v142, v135);
  v147 = vrshrn_high_n_s32(vrshrn_n_s32(v383, 0xCuLL), v372, 0xCuLL);
  v148 = vrshrn_high_n_s32(vrshrn_n_s32(v369, 0xCuLL), v363, 0xCuLL);
  v149 = vrshrn_high_n_s32(vrshrn_n_s32(v352, 0xCuLL), v349, 0xCuLL);
  v150 = vrshrn_high_n_s32(vrshrn_n_s32(v346, 0xCuLL), v343, 0xCuLL);
  v373 = vqaddq_s16(v129, v127);
  v262 = vqaddq_s16(v128, v126);
  v344 = vqaddq_s16(v120, v121);
  v347 = vqaddq_s16(v299, v302);
  v151 = vrshrn_high_n_s32(vrshrn_n_s32(v296, 0xCuLL), v290, 0xCuLL);
  v152 = vrshrn_high_n_s32(vrshrn_n_s32(v284, 0xCuLL), v281, 0xCuLL);
  v153 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v133.i8, *v132.i8), *v130.i8, *v131.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v133, v132), v130, v131), 0xCuLL);
  v154 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v130.i8, *v132.i8), *v133.i8, *v131.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v130, v132), v133, v131), 0xCuLL);
  v155 = vdupq_n_s16(-v87);
  v156 = vdupq_n_s16(-v92);
  v157 = vqsubq_s16(v150, v148);
  v158 = vqsubq_s16(v149, v147);
  v159 = vmlal_s16(vmull_s16(*v158.i8, *v156.i8), *v157.i8, *v155.i8);
  v160 = vmlal_high_s16(vmull_high_s16(v158, v156), v157, v155);
  v161 = vmlsl_s16(vmull_s16(*v157.i8, *v156.i8), *v158.i8, *v155.i8);
  v162 = vmlsl_high_s16(vmull_high_s16(v157, v156), v158, v155);
  v163 = vqsubq_s16(v373, v344);
  v164 = vqsubq_s16(v262, v347);
  v165 = vmlal_s16(vmull_s16(*v164.i8, *v156.i8), *v163.i8, *v155.i8);
  v166 = vmlal_high_s16(vmull_high_s16(v164, v156), v163, v155);
  v167 = vmlsl_s16(vmull_s16(*v163.i8, *v156.i8), *v164.i8, *v155.i8);
  v168 = vmlsl_high_s16(vmull_high_s16(v163, v156), v164, v155);
  v169 = vqsubq_s16(v153, v152);
  v170 = vqsubq_s16(v154, v151);
  v171 = vmlal_s16(vmull_s16(*v170.i8, *v156.i8), *v169.i8, *v155.i8);
  v172 = vmlal_high_s16(vmull_high_s16(v170, v156), v169, v155);
  v173 = vmlsl_s16(vmull_s16(*v169.i8, *v156.i8), *v170.i8, *v155.i8);
  v174 = vmlsl_high_s16(vmull_high_s16(v169, v156), v170, v155);
  v350 = vrshrn_high_n_s32(vrshrn_n_s32(v377, 0xCuLL), v375, 0xCuLL);
  v353 = vrshrn_high_n_s32(vrshrn_n_s32(v386, 0xCuLL), v380, 0xCuLL);
  v370 = vrshrn_high_n_s32(vrshrn_n_s32(v341, 0xCuLL), v338, 0xCuLL);
  v364 = vrshrn_high_n_s32(vrshrn_n_s32(v335, 0xCuLL), v332, 0xCuLL);
  v175 = vqaddq_s16(v150, v148);
  v297 = vqaddq_s16(v138, v317);
  v300 = vqaddq_s16(v149, v147);
  v303 = vqaddq_s16(v320, v327);
  v176 = &dword_277C42240[64 * a3 - 608];
  v177 = vld1q_dup_s16(v176);
  v387 = vmlal_s16(vmull_s16(*v392.i8, *v177.i8), *a1, *v177.i8);
  v384 = vmlal_high_s16(vmull_high_s16(v392, v177), *a1, v177);
  v378 = vmlsl_s16(vmull_s16(*a1, *v177.i8), *v392.i8, *v177.i8);
  v381 = vmlsl_high_s16(vmull_high_s16(*a1, v177), v392, v177);
  v330 = vrshrn_high_n_s32(vrshrn_n_s32(v311, 0xCuLL), v308, 0xCuLL);
  v178 = vrshrn_high_n_s32(vrshrn_n_s32(v159, 0xCuLL), v160, 0xCuLL);
  v325 = vrshrn_high_n_s32(vrshrn_n_s32(v390, 0xCuLL), v314, 0xCuLL);
  v328 = vrshrn_high_n_s32(vrshrn_n_s32(v161, 0xCuLL), v162, 0xCuLL);
  v394 = vqaddq_s16(v263, v265);
  v391 = vqaddq_s16(v293, v305);
  v315 = vqaddq_s16(v153, v152);
  v393 = vqaddq_s16(v373, v344);
  v323 = vqaddq_s16(v262, v347);
  v264 = vqaddq_s16(v154, v151);
  v266 = vqaddq_s16(v278, v287);
  v321 = vqaddq_s16(v268, v267);
  v179 = vqsubq_s16(v350, v364);
  v180 = vqsubq_s16(v353, v370);
  v348 = vmlal_s16(vmull_s16(*v179.i8, *v177.i8), *v180.i8, *v177.i8);
  v345 = vmlal_high_s16(vmull_high_s16(v179, v177), v180, v177);
  v339 = vmlsl_high_s16(vmull_high_s16(v180, v177), v179, v177);
  v342 = vmlsl_s16(vmull_s16(*v180.i8, *v177.i8), *v179.i8, *v177.i8);
  v279 = vrshrn_high_n_s32(vrshrn_n_s32(v275, 0xCuLL), v273, 0xCuLL);
  v333 = vrshrn_high_n_s32(vrshrn_n_s32(v271, 0xCuLL), v270, 0xCuLL);
  v288 = vrshrn_high_n_s32(vrshrn_n_s32(v269, 0xCuLL), v144, 0xCuLL);
  v374 = vrshrn_high_n_s32(vrshrn_n_s32(v145, 0xCuLL), v146, 0xCuLL);
  v376 = vrshrn_high_n_s32(vrshrn_n_s32(v165, 0xCuLL), v166, 0xCuLL);
  v291 = vrshrn_high_n_s32(vrshrn_n_s32(v167, 0xCuLL), v168, 0xCuLL);
  v336 = vrshrn_high_n_s32(vrshrn_n_s32(v171, 0xCuLL), v172, 0xCuLL);
  v276 = vrshrn_high_n_s32(vrshrn_n_s32(v173, 0xCuLL), v174, 0xCuLL);
  v181 = vqsubq_s16(v330, v178);
  v182 = vqsubq_s16(v325, v328);
  v183 = vmlal_s16(vmull_s16(*v181.i8, *v177.i8), *v182.i8, *v177.i8);
  v318 = vmlal_high_s16(vmull_high_s16(v181, v177), v182, v177);
  v309 = vmlsl_high_s16(vmull_high_s16(v182, v177), v181, v177);
  v312 = vmlsl_s16(vmull_s16(*v182.i8, *v177.i8), *v181.i8, *v177.i8);
  v184 = vqsubq_s16(v297, v175);
  v185 = v175;
  v186 = vqsubq_s16(v303, v300);
  v187 = vmlal_s16(vmull_s16(*v184.i8, *v177.i8), *v186.i8, *v177.i8);
  v188 = vmlal_high_s16(vmull_high_s16(v184, v177), v186, v177);
  v189 = vmlsl_s16(vmull_s16(*v186.i8, *v177.i8), *v184.i8, *v177.i8);
  v190 = vmlsl_high_s16(vmull_high_s16(v186, v177), v184, v177);
  v191 = vqsubq_s16(v374, v376);
  v192 = vqsubq_s16(v288, v291);
  v285 = vmlal_s16(vmull_s16(*v191.i8, *v177.i8), *v192.i8, *v177.i8);
  v282 = vmlal_high_s16(vmull_high_s16(v191, v177), v192, v177);
  v272 = v188;
  v274 = vmlsl_s16(vmull_s16(*v192.i8, *v177.i8), *v191.i8, *v177.i8);
  v193 = vmlsl_high_s16(vmull_high_s16(v192, v177), v191, v177);
  v194 = vqsubq_s16(v333, v336);
  v195 = vqsubq_s16(v279, v276);
  v196 = vmlal_s16(vmull_s16(*v194.i8, *v177.i8), *v195.i8, *v177.i8);
  v197 = vmlal_high_s16(vmull_high_s16(v194, v177), v195, v177);
  v306 = vmlsl_s16(vmull_s16(*v195.i8, *v177.i8), *v194.i8, *v177.i8);
  v294 = vmlsl_high_s16(vmull_high_s16(v195, v177), v194, v177);
  v198 = vqsubq_s16(v391, v315);
  v199 = vqsubq_s16(v266, v264);
  v200 = vmlal_s16(vmull_s16(*v198.i8, *v177.i8), *v199.i8, *v177.i8);
  v201 = vmlal_high_s16(vmull_high_s16(v198, v177), v199, v177);
  v202 = vmlsl_s16(vmull_s16(*v199.i8, *v177.i8), *v198.i8, *v177.i8);
  v203 = vmlsl_high_s16(vmull_high_s16(v199, v177), v198, v177);
  v204 = vqsubq_s16(v394, v393);
  v205 = vqsubq_s16(v321, v323);
  v206 = vmlal_s16(vmull_s16(*v204.i8, *v177.i8), *v205.i8, *v177.i8);
  v207 = vmlal_high_s16(vmull_high_s16(v204, v177), v205, v177);
  v208 = vmlsl_s16(vmull_s16(*v205.i8, *v177.i8), *v204.i8, *v177.i8);
  v209 = vmlsl_high_s16(vmull_high_s16(v205, v177), v204, v177);
  v210 = vrshrn_high_n_s32(vrshrn_n_s32(v387, 0xCuLL), v384, 0xCuLL);
  v211 = vrshrn_high_n_s32(vrshrn_n_s32(v378, 0xCuLL), v381, 0xCuLL);
  v212 = vrshrn_high_n_s32(vrshrn_n_s32(v367, 0xCuLL), v361, 0xCuLL);
  v213 = vrshrn_high_n_s32(vrshrn_n_s32(v355, 0xCuLL), v358, 0xCuLL);
  v214 = vqaddq_s16(v350, v364);
  v215 = vqaddq_s16(v353, v370);
  v216 = vrshrn_high_n_s32(vrshrn_n_s32(v348, 0xCuLL), v345, 0xCuLL);
  v217 = vrshrn_high_n_s32(vrshrn_n_s32(v342, 0xCuLL), v339, 0xCuLL);
  v218 = vqaddq_s16(v211, v213);
  v219 = vqsubq_s16(v211, v213);
  v220 = vqaddq_s16(v210, v212);
  v221 = vqsubq_s16(v210, v212);
  v222 = vqaddq_s16(v297, v185);
  v223 = vqaddq_s16(v325, v328);
  v362 = vqaddq_s16(v303, v300);
  v365 = vqaddq_s16(v330, v178);
  v224 = vrshrn_high_n_s32(vrshrn_n_s32(v183, 0xCuLL), v318, 0xCuLL);
  v225 = vrshrn_high_n_s32(vrshrn_n_s32(v312, 0xCuLL), v309, 0xCuLL);
  v226 = vrshrn_high_n_s32(vrshrn_n_s32(v187, 0xCuLL), v272, 0xCuLL);
  v227 = vrshrn_high_n_s32(vrshrn_n_s32(v189, 0xCuLL), v190, 0xCuLL);
  v228 = vqsubq_s16(v221, v214);
  v351 = vqaddq_s16(v219, v217);
  v229 = vqsubq_s16(v219, v217);
  v230 = vqsubq_s16(v218, v216);
  v356 = vqaddq_s16(v218, v216);
  v359 = vqaddq_s16(v220, v215);
  v231 = vqsubq_s16(v220, v215);
  v368 = vqaddq_s16(v291, v288);
  v371 = vqaddq_s16(v276, v279);
  v382 = vqaddq_s16(v264, v266);
  v388 = vqaddq_s16(v323, v321);
  v232 = vrshrn_high_n_s32(vrshrn_n_s32(v285, 0xCuLL), v282, 0xCuLL);
  v233 = vrshrn_high_n_s32(vrshrn_n_s32(v274, 0xCuLL), v193, 0xCuLL);
  v234 = vrshrn_high_n_s32(vrshrn_n_s32(v196, 0xCuLL), v197, 0xCuLL);
  v235 = vrshrn_high_n_s32(vrshrn_n_s32(v200, 0xCuLL), v201, 0xCuLL);
  v236 = vrshrn_high_n_s32(vrshrn_n_s32(v202, 0xCuLL), v203, 0xCuLL);
  v237 = vrshrn_high_n_s32(vrshrn_n_s32(v206, 0xCuLL), v207, 0xCuLL);
  v238 = vrshrn_high_n_s32(vrshrn_n_s32(v208, 0xCuLL), v209, 0xCuLL);
  v239 = vqaddq_s16(v231, v222);
  v240 = vqsubq_s16(v231, v222);
  v379 = vqaddq_s16(v359, v362);
  v385 = vqaddq_s16(v356, v223);
  *a2 = vqaddq_s16(v379, v388);
  a2[1] = vqaddq_s16(v385, v382);
  v241 = vqaddq_s16(v221, v214);
  v242 = vqaddq_s16(v351, v224);
  v243 = vqaddq_s16(v241, v226);
  a2[2] = vqaddq_s16(v242, v371);
  a2[3] = vqaddq_s16(v243, v368);
  v244 = vqaddq_s16(v228, v227);
  v245 = vqaddq_s16(v229, v225);
  a2[4] = vqaddq_s16(v244, v232);
  a2[5] = vqaddq_s16(v245, v234);
  v246 = vqaddq_s16(v230, v365);
  v247 = v239;
  a2[6] = vqaddq_s16(v246, v235);
  a2[7] = vqaddq_s16(v239, v237);
  v248 = vqsubq_s16(v230, v365);
  v249 = v240;
  a2[8] = vqaddq_s16(v240, v238);
  a2[9] = vqaddq_s16(v248, v236);
  v250 = vrshrn_high_n_s32(vrshrn_n_s32(v306, 0xCuLL), v294, 0xCuLL);
  v251 = vqsubq_s16(v229, v225);
  v252 = vqsubq_s16(v228, v227);
  a2[10] = vqaddq_s16(v251, v250);
  a2[11] = vqaddq_s16(v252, v233);
  v253 = vqaddq_s16(v333, v336);
  v254 = vqaddq_s16(v374, v376);
  v255 = vqsubq_s16(v241, v226);
  v256 = vqsubq_s16(v351, v224);
  a2[12] = vqaddq_s16(v255, v254);
  a2[13] = vqaddq_s16(v256, v253);
  v257 = vqaddq_s16(v394, v393);
  v258 = vqaddq_s16(v391, v315);
  v259 = vqsubq_s16(v356, v223);
  v260 = vqsubq_s16(v359, v362);
  a2[14] = vqaddq_s16(v259, v258);
  a2[15] = vqaddq_s16(v260, v257);
  a2[16] = vqsubq_s16(v260, v257);
  a2[17] = vqsubq_s16(v259, v258);
  a2[18] = vqsubq_s16(v256, v253);
  a2[19] = vqsubq_s16(v255, v254);
  a2[20] = vqsubq_s16(v252, v233);
  a2[21] = vqsubq_s16(v251, v250);
  a2[22] = vqsubq_s16(v248, v236);
  a2[23] = vqsubq_s16(v249, v238);
  a2[24] = vqsubq_s16(v247, v237);
  a2[25] = vqsubq_s16(v246, v235);
  a2[26] = vqsubq_s16(v245, v234);
  a2[27] = vqsubq_s16(v244, v232);
  a2[28] = vqsubq_s16(v243, v368);
  a2[29] = vqsubq_s16(v242, v371);
  result = vqsubq_s16(v385, v382);
  a2[30] = result;
  a2[31] = vqsubq_s16(v379, v388);
  return result;
}

int16x8_t sub_277AB4554(uint64_t a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 594];
  v4 = vld1q_dup_s16(v3);
  v5 = *(a1 + 144);
  v304 = *(a1 + 128);
  v6 = &dword_277C42240[64 * a3 - 622];
  v7 = vld1q_dup_s16(v6);
  v287 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v5.i8, *v4.i8), 0xCuLL), vmull_high_s16(v5, v4), 0xCuLL);
  v8 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v5.i8, *v7.i8), 0xCuLL), vmull_high_s16(v5, v7), 0xCuLL);
  v9 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 590]));
  v10 = *(a1 + 96);
  v11 = *(a1 + 112);
  v12 = &dword_277C42240[64 * a3 - 626];
  v13 = vld1q_dup_s16(v12);
  v309 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v11.i8, *v13.i8), 0xCuLL), vmull_high_s16(v11, v13), 0xCuLL);
  v311 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v11.i8, *v9.i8), 0xCuLL), vmull_high_s16(v11, v9), 0xCuLL);
  v14 = &dword_277C42240[64 * a3 - 586];
  v15 = vld1q_dup_s16(v14);
  v16 = *(a1 + 80);
  v315 = *(a1 + 64);
  v17 = vmull_s16(*v16.i8, *v15.i8);
  v18 = vmull_high_s16(v16, v15);
  v19 = &dword_277C42240[64 * a3 - 630];
  v20 = vld1q_dup_s16(v19);
  v21 = vmull_s16(*v16.i8, *v20.i8);
  v22 = vmull_high_s16(v16, v20);
  v23 = vrshrn_high_n_s32(vrshrn_n_s32(v17, 0xCuLL), v18, 0xCuLL);
  v24 = vrshrn_high_n_s32(vrshrn_n_s32(v21, 0xCuLL), v22, 0xCuLL);
  v25 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 598]));
  v27 = *(a1 + 160);
  v26 = *(a1 + 176);
  v28 = vmull_s16(*v26.i8, *v25.i8);
  v29 = vmull_high_s16(v26, v25);
  v30 = &dword_277C42240[64 * a3 - 618];
  v31 = vld1q_dup_s16(v30);
  v32 = vmull_s16(*v26.i8, *v31.i8);
  v33 = LOWORD(dword_277C42240[64 * a3 - 632]);
  v34 = vmull_high_s16(v26, v31);
  v35 = LOWORD(dword_277C42240[64 * a3 - 584]);
  v36 = LOWORD(dword_277C42240[64 * a3 - 600]);
  v37 = vrshrn_high_n_s32(vrshrn_n_s32(v28, 0xCuLL), v29, 0xCuLL);
  v38 = vrshrn_high_n_s32(vrshrn_n_s32(v32, 0xCuLL), v34, 0xCuLL);
  v39 = &dword_277C42240[64 * a3 - 602];
  v40 = vld1q_dup_s16(v39);
  v41 = *(a1 + 208);
  v313 = *(a1 + 192);
  v42 = vmull_s16(*v41.i8, *v40.i8);
  v43 = &dword_277C42240[64 * a3 - 614];
  v44 = vmull_high_s16(v41, v40);
  v45 = vld1q_dup_s16(v43);
  v46 = LOWORD(dword_277C42240[64 * a3 - 616]);
  v47 = vmull_s16(*v41.i8, *v45.i8);
  LODWORD(v43) = LOWORD(dword_277C42240[64 * a3 - 624]);
  v48 = vmull_high_s16(v41, v45);
  v49 = LOWORD(dword_277C42240[64 * a3 - 592]);
  v50 = vrshrn_high_n_s32(vrshrn_n_s32(v42, 0xCuLL), v44, 0xCuLL);
  v51 = vrshrn_high_n_s32(vrshrn_n_s32(v47, 0xCuLL), v48, 0xCuLL);
  v52 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 582]));
  v53 = *(a1 + 32);
  v54 = *(a1 + 48);
  v55 = vmull_s16(*v54.i8, *v52.i8);
  v56 = &dword_277C42240[64 * a3 - 634];
  v57 = vmull_high_s16(v54, v52);
  v58 = vld1q_dup_s16(v56);
  v59 = vmull_s16(*v54.i8, *v58.i8);
  v60 = vmull_high_s16(v54, v58);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(v55, 0xCuLL), v57, 0xCuLL);
  v62 = vrshrn_high_n_s32(vrshrn_n_s32(v59, 0xCuLL), v60, 0xCuLL);
  v63 = &dword_277C42240[64 * a3 - 596];
  v64 = vld1q_dup_s16(v63);
  v65 = &dword_277C42240[64 * a3 - 620];
  v66 = vld1q_dup_s16(v65);
  v290 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v27.i8, *v66.i8), 0xCuLL), vmull_high_s16(v27, v66), 0xCuLL);
  v292 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v27.i8, *v64.i8), 0xCuLL), vmull_high_s16(v27, v64), 0xCuLL);
  v67 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 588]));
  v68 = &dword_277C42240[64 * a3 - 628];
  v69 = vld1q_dup_s16(v68);
  v70 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v10.i8, *v67.i8), 0xCuLL), vmull_high_s16(v10, v67), 0xCuLL);
  v71 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v10.i8, *v69.i8), 0xCuLL), vmull_high_s16(v10, v69), 0xCuLL);
  v72 = vqsubq_s16(v311, v287);
  v73 = vqaddq_s16(v23, v37);
  v74 = vqsubq_s16(v23, v37);
  v75 = vqsubq_s16(v61, v50);
  v273 = v73;
  v276 = vqaddq_s16(v61, v50);
  v76 = vqaddq_s16(v62, v51);
  v77 = vqsubq_s16(v62, v51);
  v78 = vqsubq_s16(v24, v38);
  v266 = v76;
  v268 = vqaddq_s16(v24, v38);
  v79 = vdupq_n_s16(-v36);
  v80 = vdupq_n_s16(v46);
  v81 = vqsubq_s16(v309, v8);
  v82 = v8;
  v83 = vdupq_n_s16(-v35);
  v84 = vdupq_n_s16(-v33);
  v306 = vmlal_s16(vmull_s16(*v81.i8, *v84.i8), *v72.i8, *v83.i8);
  v298 = vmlsl_s16(vmull_s16(*v72.i8, *v84.i8), *v81.i8, *v83.i8);
  v301 = vmlal_high_s16(vmull_high_s16(v81, v84), v72, v83);
  v295 = vmlsl_high_s16(vmull_high_s16(v72, v84), v81, v83);
  v85 = vdupq_n_s16(v36);
  v251 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v74.i8, *v80.i8), *v78.i8, *v85.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v74, v80), v78, v85), 0xCuLL);
  v247 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v78.i8, *v80.i8), *v74.i8, *v85.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v78, v80), v74, v85), 0xCuLL);
  v86 = vdupq_n_s16(-v46);
  v249 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v77.i8, *v79.i8), *v75.i8, *v86.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v77, v79), v75, v86), 0xCuLL);
  v253 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v75.i8, *v79.i8), *v77.i8, *v86.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v75, v79), v77, v86), 0xCuLL);
  v87 = vqsubq_s16(v70, v292);
  v88 = vqsubq_s16(v71, v290);
  v89 = vdupq_n_s16(-v49);
  v90 = vdupq_n_s16(-v43);
  v285 = vmlal_s16(vmull_s16(*v88.i8, *v90.i8), *v87.i8, *v89.i8);
  v283 = vmlal_high_s16(vmull_high_s16(v88, v90), v87, v89);
  v279 = vmlsl_high_s16(vmull_high_s16(v87, v90), v88, v89);
  v281 = vmlsl_s16(vmull_s16(*v87.i8, *v90.i8), *v88.i8, *v89.i8);
  v91 = vqsubq_s16(v276, v73);
  v92 = vqsubq_s16(v76, v268);
  v264 = vmlal_s16(vmull_s16(*v92.i8, *v90.i8), *v91.i8, *v89.i8);
  v262 = vmlal_high_s16(vmull_high_s16(v92, v90), v91, v89);
  v93 = vmlsl_s16(vmull_s16(*v91.i8, *v90.i8), *v92.i8, *v89.i8);
  v94 = vmlsl_high_s16(vmull_high_s16(v91, v90), v92, v89);
  v95 = vqsubq_s16(v249, v247);
  v96 = vqsubq_s16(v253, v251);
  v97 = vmlal_s16(vmull_s16(*v96.i8, *v90.i8), *v95.i8, *v89.i8);
  v98 = vmlal_high_s16(vmull_high_s16(v96, v90), v95, v89);
  v99 = vmlsl_s16(vmull_s16(*v95.i8, *v90.i8), *v96.i8, *v89.i8);
  v100 = vmlsl_high_s16(vmull_high_s16(v95, v90), v96, v89);
  v101 = &dword_277C42240[64 * a3 - 578];
  v102 = vld1q_dup_s16(v101);
  v103 = &dword_277C42240[64 * a3 - 638];
  v104 = *(a1 + 16);
  v105 = vmull_s16(*v104.i8, *v102.i8);
  v106 = vld1q_dup_s16(v103);
  v107 = vmull_high_s16(v104, v102);
  v108 = vmull_s16(*v104.i8, *v106.i8);
  v109 = vmull_high_s16(v104, v106);
  v110 = vrshrn_high_n_s32(vrshrn_n_s32(v105, 0xCuLL), v107, 0xCuLL);
  v111 = vrshrn_high_n_s32(vrshrn_n_s32(v108, 0xCuLL), v109, 0xCuLL);
  v112 = &dword_277C42240[64 * a3 - 610];
  v113 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 606]));
  v115 = *(a1 + 224);
  v114 = *(a1 + 240);
  v116 = vmull_s16(*v114.i8, *v113.i8);
  v117 = vmull_high_s16(v114, v113);
  v118 = vld1q_dup_s16(v112);
  v119 = vmull_s16(*v114.i8, *v118.i8);
  v120 = vmull_high_s16(v114, v118);
  v121 = vrshrn_high_n_s32(vrshrn_n_s32(v116, 0xCuLL), v117, 0xCuLL);
  v122 = vrshrn_high_n_s32(vrshrn_n_s32(v119, 0xCuLL), v120, 0xCuLL);
  v123 = &dword_277C42240[64 * a3 - 580];
  v124 = &dword_277C42240[64 * a3 - 636];
  v125 = vld1q_dup_s16(v123);
  v126 = vld1q_dup_s16(v124);
  v127 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v53.i8, *v125.i8), 0xCuLL), vmull_high_s16(v53, v125), 0xCuLL);
  v128 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v53.i8, *v126.i8), 0xCuLL), vmull_high_s16(v53, v126), 0xCuLL);
  v129 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 604]));
  v130 = &dword_277C42240[64 * a3 - 612];
  v131 = vld1q_dup_s16(v130);
  v132 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v115.i8, *v129.i8), 0xCuLL), vmull_high_s16(v115, v129), 0xCuLL);
  v133 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v115.i8, *v131.i8), 0xCuLL), vmull_high_s16(v115, v131), 0xCuLL);
  v134 = vqaddq_s16(v110, v121);
  v135 = vqsubq_s16(v110, v121);
  v136 = vqaddq_s16(v311, v287);
  v137 = vqaddq_s16(v309, v82);
  v138 = vqsubq_s16(v111, v122);
  v139 = vdupq_n_s16(v35);
  v140 = vqaddq_s16(v111, v122);
  v141 = vdupq_n_s16(v33);
  v142 = vmlsl_s16(vmull_s16(*v138.i8, *v139.i8), *v135.i8, *v141.i8);
  v143 = vmlsl_high_s16(vmull_high_s16(v138, v139), v135, v141);
  v270 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v315.i8, *v141.i8), 0xCuLL), vmull_high_s16(v315, v141), 0xCuLL);
  v271 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v315.i8, *v139.i8), 0xCuLL), vmull_high_s16(v315, v139), 0xCuLL);
  v288 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v313.i8, *v79.i8), 0xCuLL), vmull_high_s16(v313, v79), 0xCuLL);
  v272 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v313.i8, *v80.i8), 0xCuLL), vmull_high_s16(v313, v80), 0xCuLL);
  v144 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v135.i8, *v139.i8), *v138.i8, *v141.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v135, v139), v138, v141), 0xCuLL);
  v145 = vrshrn_high_n_s32(vrshrn_n_s32(v142, 0xCuLL), v143, 0xCuLL);
  v146 = vrshrn_high_n_s32(vrshrn_n_s32(v306, 0xCuLL), v301, 0xCuLL);
  v147 = vrshrn_high_n_s32(vrshrn_n_s32(v298, 0xCuLL), v295, 0xCuLL);
  v148 = vqsubq_s16(v127, v132);
  v149 = vqaddq_s16(v70, v292);
  v255 = vqaddq_s16(v127, v132);
  v256 = vqaddq_s16(v71, v290);
  v150 = vqsubq_s16(v128, v133);
  v151 = vdupq_n_s16(v49);
  v152 = vdupq_n_s16(v43);
  v257 = vqaddq_s16(v128, v133);
  v258 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v148.i8, *v151.i8), *v150.i8, *v152.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v148, v151), v150, v152), 0xCuLL);
  v260 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v150.i8, *v151.i8), *v148.i8, *v152.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v150, v151), v148, v152), 0xCuLL);
  v261 = vrshrn_high_n_s32(vrshrn_n_s32(v285, 0xCuLL), v283, 0xCuLL);
  v259 = vrshrn_high_n_s32(vrshrn_n_s32(v281, 0xCuLL), v279, 0xCuLL);
  v153 = vqaddq_s16(v145, v146);
  v154 = vqsubq_s16(v145, v146);
  v155 = vqsubq_s16(v134, v136);
  v310 = vqaddq_s16(v249, v247);
  v312 = v153;
  v314 = vqaddq_s16(v276, v273);
  v316 = vqaddq_s16(v134, v136);
  v284 = vqaddq_s16(v266, v268);
  v307 = vqaddq_s16(v253, v251);
  v156 = vqsubq_s16(v144, v147);
  v242 = vqaddq_s16(v144, v147);
  v157 = vqsubq_s16(v140, v137);
  v158 = vqaddq_s16(v140, v137);
  v159 = &dword_277C42240[64 * a3 - 608];
  v160 = vld1q_dup_s16(v159);
  v161 = vqsubq_s16(v271, v288);
  v162 = vqsubq_s16(v270, v272);
  v302 = vmlal_s16(vmull_s16(*v161.i8, *v160.i8), *v162.i8, *v160.i8);
  v299 = vmlal_high_s16(vmull_high_s16(v161, v160), v162, v160);
  v296 = vmlsl_s16(vmull_s16(*v162.i8, *v160.i8), *v161.i8, *v160.i8);
  v293 = vmlsl_high_s16(vmull_high_s16(v162, v160), v161, v160);
  v245 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v154.i8, *v151.i8), *v156.i8, *v152.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v154, v151), v156, v152), 0xCuLL);
  v280 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v156.i8, *v151.i8), *v154.i8, *v152.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v156, v151), v154, v152), 0xCuLL);
  v250 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v155.i8, *v151.i8), *v157.i8, *v152.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v155, v151), v157, v152), 0xCuLL);
  v286 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v157.i8, *v151.i8), *v155.i8, *v152.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v157, v151), v155, v152), 0xCuLL);
  v291 = vrshrn_high_n_s32(vrshrn_n_s32(v264, 0xCuLL), v262, 0xCuLL);
  v252 = vrshrn_high_n_s32(vrshrn_n_s32(v93, 0xCuLL), v94, 0xCuLL);
  v282 = vrshrn_high_n_s32(vrshrn_n_s32(v97, 0xCuLL), v98, 0xCuLL);
  v246 = vrshrn_high_n_s32(vrshrn_n_s32(v99, 0xCuLL), v100, 0xCuLL);
  v163 = vqsubq_s16(v260, v261);
  v164 = vqsubq_s16(v258, v259);
  v277 = vmlal_s16(vmull_s16(*v163.i8, *v160.i8), *v164.i8, *v160.i8);
  v274 = vmlal_high_s16(vmull_high_s16(v163, v160), v164, v160);
  v165 = vmlsl_s16(vmull_s16(*v164.i8, *v160.i8), *v163.i8, *v160.i8);
  v269 = vmlsl_high_s16(vmull_high_s16(v164, v160), v163, v160);
  v166 = vqsubq_s16(v255, v149);
  v167 = v149;
  v168 = vqsubq_s16(v257, v256);
  v169 = vmlal_s16(vmull_s16(*v166.i8, *v160.i8), *v168.i8, *v160.i8);
  v263 = vmlal_high_s16(vmull_high_s16(v166, v160), v168, v160);
  v170 = vmlsl_s16(vmull_s16(*v168.i8, *v160.i8), *v166.i8, *v160.i8);
  v254 = vmlsl_high_s16(vmull_high_s16(v168, v160), v166, v160);
  v171 = vqsubq_s16(v286, v291);
  v172 = vqsubq_s16(v250, v252);
  v173 = vmlal_s16(vmull_s16(*v171.i8, *v160.i8), *v172.i8, *v160.i8);
  v248 = vmlal_high_s16(vmull_high_s16(v171, v160), v172, v160);
  v243 = vmlsl_high_s16(vmull_high_s16(v172, v160), v171, v160);
  v244 = vmlsl_s16(vmull_s16(*v172.i8, *v160.i8), *v171.i8, *v160.i8);
  v174 = vqsubq_s16(v280, v282);
  v175 = vqsubq_s16(v245, v246);
  v176 = vmlal_s16(vmull_s16(*v174.i8, *v160.i8), *v175.i8, *v160.i8);
  v177 = vmlal_high_s16(vmull_high_s16(v174, v160), v175, v160);
  v265 = vmlsl_high_s16(vmull_high_s16(v175, v160), v174, v160);
  v267 = vmlsl_s16(vmull_s16(*v175.i8, *v160.i8), *v174.i8, *v160.i8);
  v178 = vqsubq_s16(v312, v310);
  v179 = vqsubq_s16(v242, v307);
  v180 = vmlal_s16(vmull_s16(*v178.i8, *v160.i8), *v179.i8, *v160.i8);
  v181 = vmlal_high_s16(vmull_high_s16(v178, v160), v179, v160);
  v182 = vmlsl_s16(vmull_s16(*v179.i8, *v160.i8), *v178.i8, *v160.i8);
  v183 = vmlsl_high_s16(vmull_high_s16(v179, v160), v178, v160);
  v184 = vqsubq_s16(v316, v314);
  v185 = vqsubq_s16(v158, v284);
  v186 = vmlal_s16(vmull_s16(*v184.i8, *v160.i8), *v185.i8, *v160.i8);
  v187 = vmlal_high_s16(vmull_high_s16(v184, v160), v185, v160);
  v188 = vmlsl_s16(vmull_s16(*v185.i8, *v160.i8), *v184.i8, *v160.i8);
  v189 = vmlsl_high_s16(vmull_high_s16(v185, v160), v184, v160);
  v190 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*a1, *v160.i8), 0xCuLL), vmull_high_s16(*a1, v160), 0xCuLL);
  v191 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v304.i8, *v151.i8), 0xCuLL), vmull_high_s16(v304, v151), 0xCuLL);
  v192 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v304.i8, *v152.i8), 0xCuLL), vmull_high_s16(v304, v152), 0xCuLL);
  v193 = vqaddq_s16(v271, v288);
  v194 = vqaddq_s16(v270, v272);
  v195 = vrshrn_high_n_s32(vrshrn_n_s32(v302, 0xCuLL), v299, 0xCuLL);
  v196 = vrshrn_high_n_s32(vrshrn_n_s32(v296, 0xCuLL), v293, 0xCuLL);
  v197 = vqaddq_s16(v190, v191);
  v198 = vqsubq_s16(v190, v191);
  v199 = vqaddq_s16(v190, v192);
  v200 = vqsubq_s16(v190, v192);
  v201 = vqaddq_s16(v255, v167);
  v202 = vqaddq_s16(v258, v259);
  v289 = vqaddq_s16(v257, v256);
  v203 = vrshrn_high_n_s32(vrshrn_n_s32(v277, 0xCuLL), v274, 0xCuLL);
  v204 = vrshrn_high_n_s32(vrshrn_n_s32(v165, 0xCuLL), v269, 0xCuLL);
  v205 = vrshrn_high_n_s32(vrshrn_n_s32(v169, 0xCuLL), v263, 0xCuLL);
  v206 = vrshrn_high_n_s32(vrshrn_n_s32(v170, 0xCuLL), v254, 0xCuLL);
  v207 = vqsubq_s16(v200, v193);
  v275 = vqaddq_s16(v198, v196);
  v278 = vqaddq_s16(v200, v193);
  v208 = vqsubq_s16(v198, v196);
  v209 = vqaddq_s16(v197, v195);
  v210 = vqsubq_s16(v197, v195);
  v211 = vqaddq_s16(v199, v194);
  v212 = vqsubq_s16(v199, v194);
  v294 = vqaddq_s16(v252, v250);
  v297 = vqaddq_s16(v246, v245);
  v303 = vqaddq_s16(v307, v242);
  v305 = vqaddq_s16(v284, v158);
  v213 = vrshrn_high_n_s32(vrshrn_n_s32(v173, 0xCuLL), v248, 0xCuLL);
  v214 = vrshrn_high_n_s32(vrshrn_n_s32(v244, 0xCuLL), v243, 0xCuLL);
  v215 = vrshrn_high_n_s32(vrshrn_n_s32(v176, 0xCuLL), v177, 0xCuLL);
  v216 = vrshrn_high_n_s32(vrshrn_n_s32(v180, 0xCuLL), v181, 0xCuLL);
  v217 = vrshrn_high_n_s32(vrshrn_n_s32(v182, 0xCuLL), v183, 0xCuLL);
  v218 = vrshrn_high_n_s32(vrshrn_n_s32(v186, 0xCuLL), v187, 0xCuLL);
  v219 = vrshrn_high_n_s32(vrshrn_n_s32(v188, 0xCuLL), v189, 0xCuLL);
  v220 = vqaddq_s16(v212, v201);
  v221 = vqsubq_s16(v212, v201);
  v308 = vqaddq_s16(v211, v289);
  v222 = v211;
  v300 = vqaddq_s16(v209, v202);
  *a2 = vqaddq_s16(v308, v305);
  a2[1] = vqaddq_s16(v300, v303);
  v223 = vqaddq_s16(v275, v203);
  v224 = vqaddq_s16(v278, v205);
  a2[2] = vqaddq_s16(v223, v297);
  a2[3] = vqaddq_s16(v224, v294);
  v225 = vqaddq_s16(v207, v206);
  v226 = vqaddq_s16(v208, v204);
  a2[4] = vqaddq_s16(v225, v213);
  a2[5] = vqaddq_s16(v226, v215);
  v227 = vqaddq_s16(v260, v261);
  v228 = vqaddq_s16(v210, v227);
  a2[6] = vqaddq_s16(v228, v216);
  a2[7] = vqaddq_s16(v220, v218);
  v229 = vqsubq_s16(v210, v227);
  a2[8] = vqaddq_s16(v221, v219);
  a2[9] = vqaddq_s16(v229, v217);
  v230 = vrshrn_high_n_s32(vrshrn_n_s32(v267, 0xCuLL), v265, 0xCuLL);
  v231 = vqsubq_s16(v208, v204);
  v232 = vqsubq_s16(v207, v206);
  a2[10] = vqaddq_s16(v231, v230);
  a2[11] = vqaddq_s16(v232, v214);
  v233 = vqaddq_s16(v280, v282);
  v234 = vqaddq_s16(v286, v291);
  v235 = vqsubq_s16(v278, v205);
  v236 = vqsubq_s16(v275, v203);
  a2[12] = vqaddq_s16(v235, v234);
  a2[13] = vqaddq_s16(v236, v233);
  v237 = vqaddq_s16(v316, v314);
  v238 = vqaddq_s16(v312, v310);
  v239 = vqsubq_s16(v209, v202);
  v240 = vqsubq_s16(v222, v289);
  a2[14] = vqaddq_s16(v239, v238);
  a2[15] = vqaddq_s16(v240, v237);
  a2[16] = vqsubq_s16(v240, v237);
  a2[17] = vqsubq_s16(v239, v238);
  a2[18] = vqsubq_s16(v236, v233);
  a2[19] = vqsubq_s16(v235, v234);
  a2[20] = vqsubq_s16(v232, v214);
  a2[21] = vqsubq_s16(v231, v230);
  a2[22] = vqsubq_s16(v229, v217);
  a2[23] = vqsubq_s16(v221, v219);
  a2[24] = vqsubq_s16(v220, v218);
  a2[25] = vqsubq_s16(v228, v216);
  a2[26] = vqsubq_s16(v226, v215);
  a2[27] = vqsubq_s16(v225, v213);
  a2[28] = vqsubq_s16(v224, v294);
  a2[29] = vqsubq_s16(v223, v297);
  result = vqsubq_s16(v300, v303);
  a2[30] = result;
  a2[31] = vqsubq_s16(v308, v305);
  return result;
}

int16x8_t sub_277AB5078(uint64_t a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 578];
  v4 = vld1q_dup_s16(v3);
  v5 = *(a1 + 16);
  v6 = &dword_277C42240[64 * a3 - 638];
  v7 = vld1q_dup_s16(v6);
  v8 = vmull_high_s16(v5, v4);
  v9 = vmull_s16(*v5.i8, *v7.i8);
  v10 = vmull_high_s16(v5, v7);
  *v7.i8 = vrshrn_n_s32(vmull_s16(*v5.i8, *v4.i8), 0xCuLL);
  *v4.i8 = vrshrn_n_s32(v8, 0xCuLL);
  *v9.i8 = vrshrn_n_s32(v9, 0xCuLL);
  LODWORD(v6) = LOWORD(dword_277C42240[64 * a3 - 584]);
  v11 = vdupq_n_s16(v6);
  v12 = LOWORD(dword_277C42240[64 * a3 - 632]);
  v13 = vdupq_n_s16(v12);
  v14 = vrshrn_n_s32(v10, 0xCuLL);
  v15 = vmull_s16(*v7.i8, *v11.i8);
  v16 = vmlsl_s16(vmull_s16(*v9.i8, *v11.i8), *v7.i8, *v13.i8);
  v17 = vrshrn_high_n_s32(*v7.i8, v8, 0xCuLL);
  v18 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 590]));
  v19 = vmlal_s16(v15, *v9.i8, *v13.i8);
  v269 = vrshrn_high_n_s32(*v9.i8, v10, 0xCuLL);
  v272 = v17;
  v20 = *(a1 + 112);
  v21 = vmull_s16(*v20.i8, *v18.i8);
  v22 = &dword_277C42240[64 * a3 - 626];
  v23 = vld1q_dup_s16(v22);
  v24 = vmull_high_s16(v20, v18);
  v25 = vmull_s16(*v20.i8, *v23.i8);
  v26 = vmull_high_s16(v20, v23);
  v27 = vrshrn_n_s32(v21, 0xCuLL);
  *v21.i8 = vrshrn_n_s32(v24, 0xCuLL);
  v28 = vrshrn_n_s32(v25, 0xCuLL);
  v29 = vdup_n_s16(-v6);
  v30 = vdup_n_s16(-v12);
  v31 = vrshrn_n_s32(v26, 0xCuLL);
  LODWORD(v22) = LOWORD(dword_277C42240[64 * a3 - 600]);
  v32 = LOWORD(dword_277C42240[64 * a3 - 616]);
  LODWORD(v6) = LOWORD(dword_277C42240[64 * a3 - 624]);
  v33 = vmlal_s16(vmull_s16(v28, v30), v27, v29);
  v224 = vrshrn_high_n_s32(v27, v24, 0xCuLL);
  v34 = vmlsl_s16(vmull_s16(v27, v30), v28, v29);
  v212 = vrshrn_high_n_s32(v28, v26, 0xCuLL);
  v35 = &dword_277C42240[64 * a3 - 586];
  v36 = vld1q_dup_s16(v35);
  v37 = *(a1 + 80);
  v38 = vmull_s16(*v37.i8, *v36.i8);
  v39 = &dword_277C42240[64 * a3 - 630];
  v40 = vmull_high_s16(v37, v36);
  v41 = vld1q_dup_s16(v39);
  v42 = vmull_s16(*v37.i8, *v41.i8);
  v43 = vmull_high_s16(v37, v41);
  v44 = vrshrn_n_s32(v38, 0xCuLL);
  v45 = vrshrn_n_s32(v42, 0xCuLL);
  v46 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 582]));
  v48 = *(a1 + 32);
  v47 = *(a1 + 48);
  v49 = &dword_277C42240[64 * a3 - 634];
  v50 = vmull_s16(*v47.i8, *v46.i8);
  v51 = vld1q_dup_s16(v49);
  LODWORD(v49) = LOWORD(dword_277C42240[64 * a3 - 592]);
  v52 = vmull_high_s16(v47, v46);
  v53 = vmull_s16(*v47.i8, *v51.i8);
  v54 = &dword_277C42240[64 * a3 - 580];
  v55 = vld1q_dup_s16(v54);
  v56 = vmull_high_s16(v47, v51);
  v57 = &dword_277C42240[64 * a3 - 636];
  v58 = vmull_s16(*v48.i8, *v55.i8);
  v59 = vld1q_dup_s16(v57);
  v60 = vmull_high_s16(v48, v55);
  v61 = vmull_s16(*v48.i8, *v59.i8);
  v62 = vmull_high_s16(v48, v59);
  v265 = v13;
  v267 = v11;
  v63 = vmull_s16(v14, *v11.i8);
  v64 = vmlal_s16(vmull_s16(*v4.i8, *v11.i8), v14, *v13.i8);
  v65 = vmlsl_s16(v63, *v4.i8, *v13.i8);
  *v4.i8 = vdup_n_s16(v22);
  v66 = vdup_n_s16(v32);
  v67 = vmull_s16(v44, v66);
  v68 = vmlsl_s16(vmull_s16(v45, v66), v44, *v4.i8);
  v256 = vrshrn_high_n_s32(v44, v40, 0xCuLL);
  v69 = vrshrn_n_s32(v40, 0xCuLL);
  v70 = vmlal_s16(v67, v45, *v4.i8);
  v254 = vrshrn_high_n_s32(v45, v43, 0xCuLL);
  v71 = vrshrn_n_s32(v43, 0xCuLL);
  v72 = vrshrn_n_s32(v50, 0xCuLL);
  *v50.i8 = vrshrn_n_s32(v53, 0xCuLL);
  v235 = vrshrn_high_n_s32(vrshrn_n_s32(v19, 0xCuLL), v64, 0xCuLL);
  v239 = vrshrn_high_n_s32(vrshrn_n_s32(v16, 0xCuLL), v65, 0xCuLL);
  v73 = vmull_s16(*v21.i8, v30);
  v74 = vmlal_s16(vmull_s16(v31, v30), *v21.i8, v29);
  v75 = vmlsl_s16(v73, v31, v29);
  *v21.i8 = vdup_n_s16(-v32);
  v76 = vdup_n_s16(-v22);
  v77 = vmlal_s16(vmull_s16(*v50.i8, v76), v72, *v21.i8);
  v78 = vrshrn_n_s32(v52, 0xCuLL);
  v79 = vmlsl_s16(vmull_s16(v72, v76), *v50.i8, *v21.i8);
  v80 = vrshrn_high_n_s32(*v50.i8, v56, 0xCuLL);
  v246 = vrshrn_high_n_s32(v72, v52, 0xCuLL);
  *v56.i8 = vrshrn_n_s32(v56, 0xCuLL);
  *v16.i8 = vrshrn_n_s32(v58, 0xCuLL);
  v241 = vrshrn_high_n_s32(vrshrn_n_s32(v33, 0xCuLL), v74, 0xCuLL);
  v261 = vrshrn_high_n_s32(*v16.i8, v60, 0xCuLL);
  *v33.i8 = vrshrn_n_s32(v60, 0xCuLL);
  v237 = vrshrn_high_n_s32(vrshrn_n_s32(v34, 0xCuLL), v75, 0xCuLL);
  v81 = vmull_s16(v71, v66);
  v82 = vmlal_s16(vmull_s16(v69, v66), v71, *v4.i8);
  *v60.i8 = vrshrn_n_s32(v62, 0xCuLL);
  v83 = v62;
  v84 = vmlsl_s16(v81, v69, *v4.i8);
  v85 = vmlal_s16(vmull_s16(*v56.i8, v76), v78, *v21.i8);
  v86 = vmlsl_s16(vmull_s16(v78, v76), *v56.i8, *v21.i8);
  v87 = vdupq_n_s16(v6);
  v88 = vdupq_n_s16(v49);
  v249 = vmlsl_s16(vmull_s16(*v60.i8, *v88.i8), *v33.i8, *v87.i8);
  v252 = vmlal_s16(vmull_s16(*v33.i8, *v88.i8), *v60.i8, *v87.i8);
  v89 = vqsubq_s16(v239, v241);
  v90 = vqsubq_s16(v235, v237);
  v233 = vmlal_s16(vmull_s16(*v89.i8, *v88.i8), *v90.i8, *v87.i8);
  v226 = vmlal_high_s16(vmull_high_s16(v89, v88), v90, v87);
  v222 = vmlsl_s16(vmull_s16(*v90.i8, *v88.i8), *v89.i8, *v87.i8);
  v219 = vmlsl_high_s16(vmull_high_s16(v90, v88), v89, v87);
  *v89.i8 = vrshrn_n_s32(v61, 0xCuLL);
  v91 = vmlsl_s16(vmull_s16(*v89.i8, *v88.i8), *v16.i8, *v87.i8);
  v92 = vmull_s16(*v16.i8, *v88.i8);
  v93 = vqsubq_s16(v272, v224);
  v94 = vqsubq_s16(v269, v212);
  v216 = vmlal_s16(vmull_s16(*v93.i8, *v88.i8), *v94.i8, *v87.i8);
  v95 = vmlal_high_s16(vmull_high_s16(v93, v88), v94, v87);
  v96 = vmlsl_s16(vmull_s16(*v94.i8, *v88.i8), *v93.i8, *v87.i8);
  v214 = vmlsl_high_s16(vmull_high_s16(v94, v88), v93, v87);
  v97 = vmlal_s16(v92, *v89.i8, *v87.i8);
  v263 = vrshrn_high_n_s32(*v89.i8, v83, 0xCuLL);
  v98 = &dword_277C42240[64 * a3 - 628];
  v99 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 588]));
  v100 = *(a1 + 96);
  v101 = vmull_s16(*v100.i8, *v99.i8);
  v102 = vmull_high_s16(v100, v99);
  v103 = vld1q_dup_s16(v98);
  v104 = vmull_s16(*v100.i8, *v103.i8);
  v105 = vmull_high_s16(v100, v103);
  v106 = vrshrn_high_n_s32(vrshrn_n_s32(v70, 0xCuLL), v82, 0xCuLL);
  v107 = vrshrn_high_n_s32(vrshrn_n_s32(v68, 0xCuLL), v84, 0xCuLL);
  v108 = vrshrn_high_n_s32(vrshrn_n_s32(v77, 0xCuLL), v85, 0xCuLL);
  v109 = vrshrn_high_n_s32(vrshrn_n_s32(v79, 0xCuLL), v86, 0xCuLL);
  *v103.i8 = vrshrn_n_s32(v101, 0xCuLL);
  v259 = vrshrn_high_n_s32(*v103.i8, v102, 0xCuLL);
  *v102.i8 = vrshrn_n_s32(v102, 0xCuLL);
  *v101.i8 = vrshrn_n_s32(v105, 0xCuLL);
  v110 = vdupq_n_s16(-v49);
  v111 = vdupq_n_s16(-v6);
  v112 = vmlal_s16(vmull_s16(*v101.i8, *v111.i8), *v102.i8, *v110.i8);
  v113 = vmlsl_s16(vmull_s16(*v102.i8, *v111.i8), *v101.i8, *v110.i8);
  v114 = vqsubq_s16(v246, v256);
  v115 = vqsubq_s16(v80, v254);
  v116 = vmlal_s16(vmull_s16(*v115.i8, *v111.i8), *v114.i8, *v110.i8);
  v117 = vmlal_high_s16(vmull_high_s16(v115, v111), v114, v110);
  v118 = vmlsl_s16(vmull_s16(*v114.i8, *v111.i8), *v115.i8, *v110.i8);
  v119 = vmlsl_high_s16(vmull_high_s16(v114, v111), v115, v110);
  *v13.i8 = vrshrn_n_s32(v104, 0xCuLL);
  v120 = vmlal_s16(vmull_s16(*v13.i8, *v111.i8), *v103.i8, *v110.i8);
  v121 = vmull_s16(*v103.i8, *v111.i8);
  v122 = vqsubq_s16(v108, v107);
  v123 = vqsubq_s16(v109, v106);
  v124 = vmlal_s16(vmull_s16(*v123.i8, *v111.i8), *v122.i8, *v110.i8);
  v125 = vmlal_high_s16(vmull_high_s16(v123, v111), v122, v110);
  v126 = vmlsl_s16(vmull_s16(*v122.i8, *v111.i8), *v123.i8, *v110.i8);
  v127 = vmlsl_high_s16(vmull_high_s16(v122, v111), v123, v110);
  v218 = vrshrn_high_n_s32(*v13.i8, v105, 0xCuLL);
  v128 = *(a1 + 64);
  v129 = vmull_s16(*v128.i8, *v267.i8);
  v130 = vmull_high_s16(v128, v267);
  v131 = vmull_s16(*v128.i8, *v265.i8);
  v132 = vmull_high_s16(v128, v265);
  v230 = vrshrn_high_n_s32(vrshrn_n_s32(v91, 0xCuLL), v249, 0xCuLL);
  v231 = vrshrn_high_n_s32(vrshrn_n_s32(v120, 0xCuLL), v112, 0xCuLL);
  v228 = vrshrn_high_n_s32(vrshrn_n_s32(v97, 0xCuLL), v252, 0xCuLL);
  v229 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(v121, *v13.i8, *v110.i8), 0xCuLL), v113, 0xCuLL);
  v273 = vqaddq_s16(v272, v224);
  v225 = vqaddq_s16(v239, v241);
  v268 = vqaddq_s16(v108, v107);
  v266 = vqaddq_s16(v246, v256);
  v240 = vqaddq_s16(v80, v254);
  v206 = vqaddq_s16(v109, v106);
  v221 = vqaddq_s16(v235, v237);
  v238 = vqaddq_s16(v269, v212);
  v133 = &dword_277C42240[64 * a3 - 608];
  *v121.i8 = vrshrn_n_s32(v129, 0xCuLL);
  *v131.i8 = vrshrn_n_s32(v131, 0xCuLL);
  v134 = vld1q_dup_s16(v133);
  v250 = vmlsl_s16(vmull_s16(*v131.i8, *v134.i8), *v121.i8, *v134.i8);
  v257 = vrshrn_high_n_s32(*v121.i8, v130, 0xCuLL);
  *v130.i8 = vrshrn_n_s32(v130, 0xCuLL);
  v270 = vrshrn_high_n_s32(*v131.i8, v132, 0xCuLL);
  *v132.i8 = vrshrn_n_s32(v132, 0xCuLL);
  v244 = vmlal_s16(vmull_s16(*v130.i8, *v134.i8), *v132.i8, *v134.i8);
  v247 = vmlal_s16(vmull_s16(*v121.i8, *v134.i8), *v131.i8, *v134.i8);
  v242 = vmlsl_s16(vmull_s16(*v132.i8, *v134.i8), *v130.i8, *v134.i8);
  v208 = vrshrn_high_n_s32(vrshrn_n_s32(v233, 0xCuLL), v226, 0xCuLL);
  v234 = vrshrn_high_n_s32(vrshrn_n_s32(v222, 0xCuLL), v219, 0xCuLL);
  v213 = vrshrn_high_n_s32(vrshrn_n_s32(v216, 0xCuLL), v95, 0xCuLL);
  v253 = vrshrn_high_n_s32(vrshrn_n_s32(v96, 0xCuLL), v214, 0xCuLL);
  v255 = vrshrn_high_n_s32(vrshrn_n_s32(v116, 0xCuLL), v117, 0xCuLL);
  v217 = vrshrn_high_n_s32(vrshrn_n_s32(v118, 0xCuLL), v119, 0xCuLL);
  v236 = vrshrn_high_n_s32(vrshrn_n_s32(v124, 0xCuLL), v125, 0xCuLL);
  v209 = vrshrn_high_n_s32(vrshrn_n_s32(v126, 0xCuLL), v127, 0xCuLL);
  v135 = vqsubq_s16(v230, v231);
  v136 = vqsubq_s16(v228, v229);
  v227 = vmlal_s16(vmull_s16(*v135.i8, *v134.i8), *v136.i8, *v134.i8);
  v207 = vmlal_high_s16(vmull_high_s16(v135, v134), v136, v134);
  v137 = vmlsl_s16(vmull_s16(*v136.i8, *v134.i8), *v135.i8, *v134.i8);
  v138 = vmlsl_high_s16(vmull_high_s16(v136, v134), v135, v134);
  v139 = vqsubq_s16(v261, v259);
  v140 = vqsubq_s16(v263, v218);
  v141 = vmlal_s16(vmull_s16(*v139.i8, *v134.i8), *v140.i8, *v134.i8);
  v142 = vmlal_high_s16(vmull_high_s16(v139, v134), v140, v134);
  v143 = vmlsl_s16(vmull_s16(*v140.i8, *v134.i8), *v139.i8, *v134.i8);
  v144 = vmlsl_high_s16(vmull_high_s16(v140, v134), v139, v134);
  v145 = vqsubq_s16(v253, v255);
  v146 = vqsubq_s16(v213, v217);
  v147 = vmlal_s16(vmull_s16(*v145.i8, *v134.i8), *v146.i8, *v134.i8);
  v215 = vmlal_high_s16(vmull_high_s16(v145, v134), v146, v134);
  v210 = vmlsl_s16(vmull_s16(*v146.i8, *v134.i8), *v145.i8, *v134.i8);
  v211 = vmlsl_high_s16(vmull_high_s16(v146, v134), v145, v134);
  v148 = vqsubq_s16(v234, v236);
  v149 = vqsubq_s16(v208, v209);
  v150 = vmlal_s16(vmull_s16(*v148.i8, *v134.i8), *v149.i8, *v134.i8);
  v151 = vmlal_high_s16(vmull_high_s16(v148, v134), v149, v134);
  v223 = vmlsl_s16(vmull_s16(*v149.i8, *v134.i8), *v148.i8, *v134.i8);
  v220 = vmlsl_high_s16(vmull_high_s16(v149, v134), v148, v134);
  v152 = vqsubq_s16(v225, v268);
  v153 = vqsubq_s16(v221, v206);
  v154 = vmlal_s16(vmull_s16(*v152.i8, *v134.i8), *v153.i8, *v134.i8);
  v155 = vmlal_high_s16(vmull_high_s16(v152, v134), v153, v134);
  v156 = vmlsl_s16(vmull_s16(*v153.i8, *v134.i8), *v152.i8, *v134.i8);
  v157 = vmlsl_high_s16(vmull_high_s16(v153, v134), v152, v134);
  v158 = vqsubq_s16(v273, v266);
  v159 = vqsubq_s16(v238, v240);
  v160 = vmlal_s16(vmull_s16(*v158.i8, *v134.i8), *v159.i8, *v134.i8);
  v161 = vmlal_high_s16(vmull_high_s16(v158, v134), v159, v134);
  v162 = vmlsl_s16(vmull_s16(*v159.i8, *v134.i8), *v158.i8, *v134.i8);
  v163 = vmlsl_high_s16(vmull_high_s16(v159, v134), v158, v134);
  v164 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*a1, *v134.i8), 0xCuLL), vmull_high_s16(*a1, v134), 0xCuLL);
  v165 = vrshrn_high_n_s32(vrshrn_n_s32(v247, 0xCuLL), v244, 0xCuLL);
  v166 = vrshrn_high_n_s32(vrshrn_n_s32(v250, 0xCuLL), v242, 0xCuLL);
  v167 = vqaddq_s16(v261, v259);
  v168 = vqaddq_s16(v228, v229);
  v248 = vqaddq_s16(v263, v218);
  v251 = vqaddq_s16(v230, v231);
  v169 = vrshrn_high_n_s32(vrshrn_n_s32(v227, 0xCuLL), v207, 0xCuLL);
  v170 = vrshrn_high_n_s32(vrshrn_n_s32(v137, 0xCuLL), v138, 0xCuLL);
  v171 = vrshrn_high_n_s32(vrshrn_n_s32(v141, 0xCuLL), v142, 0xCuLL);
  v172 = vrshrn_high_n_s32(vrshrn_n_s32(v143, 0xCuLL), v144, 0xCuLL);
  v243 = vqaddq_s16(v164, v257);
  v173 = vqsubq_s16(v164, v257);
  v232 = vqaddq_s16(v164, v166);
  v174 = vqsubq_s16(v164, v166);
  v175 = vqaddq_s16(v164, v165);
  v176 = vqsubq_s16(v164, v165);
  v245 = vqaddq_s16(v164, v270);
  v177 = vqsubq_s16(v164, v270);
  v258 = vqaddq_s16(v217, v213);
  v260 = vqaddq_s16(v209, v208);
  v264 = vqaddq_s16(v206, v221);
  v178 = vrshrn_high_n_s32(vrshrn_n_s32(v147, 0xCuLL), v215, 0xCuLL);
  v179 = vrshrn_high_n_s32(vrshrn_n_s32(v210, 0xCuLL), v211, 0xCuLL);
  v180 = vrshrn_high_n_s32(vrshrn_n_s32(v150, 0xCuLL), v151, 0xCuLL);
  v181 = vrshrn_high_n_s32(vrshrn_n_s32(v154, 0xCuLL), v155, 0xCuLL);
  v182 = vrshrn_high_n_s32(vrshrn_n_s32(v156, 0xCuLL), v157, 0xCuLL);
  v183 = vrshrn_high_n_s32(vrshrn_n_s32(v160, 0xCuLL), v161, 0xCuLL);
  v184 = vrshrn_high_n_s32(vrshrn_n_s32(v162, 0xCuLL), v163, 0xCuLL);
  v262 = vqaddq_s16(v245, v248);
  v271 = vqaddq_s16(v175, v168);
  v185 = vqaddq_s16(v240, v238);
  *a2 = vqaddq_s16(v262, v185);
  a2[1] = vqaddq_s16(v271, v264);
  v186 = vqaddq_s16(v232, v169);
  v187 = vqaddq_s16(v243, v171);
  a2[2] = vqaddq_s16(v186, v260);
  a2[3] = vqaddq_s16(v187, v258);
  v188 = vqaddq_s16(v173, v172);
  v189 = vqaddq_s16(v174, v170);
  a2[4] = vqaddq_s16(v188, v178);
  a2[5] = vqaddq_s16(v189, v180);
  v190 = vqaddq_s16(v176, v251);
  v191 = vqaddq_s16(v177, v167);
  a2[6] = vqaddq_s16(v190, v181);
  a2[7] = vqaddq_s16(v191, v183);
  v192 = vqsubq_s16(v176, v251);
  v193 = vqsubq_s16(v177, v167);
  a2[8] = vqaddq_s16(v193, v184);
  a2[9] = vqaddq_s16(v192, v182);
  v194 = vrshrn_high_n_s32(vrshrn_n_s32(v223, 0xCuLL), v220, 0xCuLL);
  v195 = vqsubq_s16(v174, v170);
  v196 = vqsubq_s16(v173, v172);
  a2[10] = vqaddq_s16(v195, v194);
  a2[11] = vqaddq_s16(v196, v179);
  v197 = vqaddq_s16(v234, v236);
  v198 = vqaddq_s16(v253, v255);
  v199 = vqsubq_s16(v243, v171);
  v200 = vqsubq_s16(v232, v169);
  a2[12] = vqaddq_s16(v199, v198);
  a2[13] = vqaddq_s16(v200, v197);
  v201 = vqaddq_s16(v273, v266);
  v202 = vqaddq_s16(v225, v268);
  v203 = vqsubq_s16(v175, v168);
  v204 = vqsubq_s16(v245, v248);
  a2[14] = vqaddq_s16(v203, v202);
  a2[15] = vqaddq_s16(v204, v201);
  a2[16] = vqsubq_s16(v204, v201);
  a2[17] = vqsubq_s16(v203, v202);
  a2[18] = vqsubq_s16(v200, v197);
  a2[19] = vqsubq_s16(v199, v198);
  a2[20] = vqsubq_s16(v196, v179);
  a2[21] = vqsubq_s16(v195, v194);
  a2[22] = vqsubq_s16(v192, v182);
  a2[23] = vqsubq_s16(v193, v184);
  a2[24] = vqsubq_s16(v191, v183);
  a2[25] = vqsubq_s16(v190, v181);
  a2[26] = vqsubq_s16(v189, v180);
  a2[27] = vqsubq_s16(v188, v178);
  a2[28] = vqsubq_s16(v187, v258);
  a2[29] = vqsubq_s16(v186, v260);
  result = vqsubq_s16(v262, v185);
  a2[30] = vqsubq_s16(v271, v264);
  a2[31] = result;
  return result;
}

int32x4_t sub_277AB59EC(int16x8_t *a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 608];
  v4 = vld1q_dup_s16(v3);
  result = vmull_high_s16(*a1, v4);
  v6 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*a1->i8, *v4.i8), 0xCuLL), result, 0xCuLL);
  *a2 = v6;
  a2[1] = v6;
  a2[2] = v6;
  a2[3] = v6;
  a2[4] = v6;
  a2[5] = v6;
  a2[6] = v6;
  a2[7] = v6;
  a2[8] = v6;
  a2[9] = v6;
  a2[10] = v6;
  a2[11] = v6;
  a2[12] = v6;
  a2[13] = v6;
  a2[14] = v6;
  a2[15] = v6;
  a2[16] = v6;
  a2[17] = v6;
  a2[18] = v6;
  a2[19] = v6;
  a2[20] = v6;
  a2[21] = v6;
  a2[22] = v6;
  a2[23] = v6;
  a2[24] = v6;
  a2[25] = v6;
  a2[26] = v6;
  a2[27] = v6;
  a2[28] = v6;
  a2[29] = v6;
  a2[30] = v6;
  a2[31] = v6;
  return result;
}

int16x8_t sub_277AB5A5C(uint64_t a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 640];
  v4 = &dword_277C42240[64 * a3 - 638];
  v5 = vld1q_dup_s16(v4);
  v6 = &dword_277C42240[64 * a3 - 578];
  v7 = vld1q_dup_s16(v6);
  v8 = *(a1 + 224);
  v9 = *(a1 + 240);
  v10 = *(a1 + 16);
  v11 = vmlsl_s16(vmull_s16(*v9.i8, *v7.i8), *a1, *v5.i8);
  v12 = vmlsl_high_s16(vmull_high_s16(v9, v7), *a1, v5);
  v13 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*a1, *v7.i8), *v9.i8, *v5.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(*a1, v7), v9, v5), 0xCuLL);
  v14 = vrshrn_high_n_s32(vrshrn_n_s32(v11, 0xCuLL), v12, 0xCuLL);
  v15 = &dword_277C42240[64 * a3 - 630];
  v16 = vld1q_dup_s16(v15);
  v17 = &dword_277C42240[64 * a3 - 586];
  v18 = vld1q_dup_s16(v17);
  v19 = *(a1 + 192);
  v20 = *(a1 + 208);
  v22 = *(a1 + 32);
  v21 = *(a1 + 48);
  v23 = vmlal_high_s16(vmull_high_s16(v22, v18), v20, v16);
  v24 = vmlsl_s16(vmull_s16(*v20.i8, *v18.i8), *v22.i8, *v16.i8);
  v25 = vmlsl_high_s16(vmull_high_s16(v20, v18), v22, v16);
  *v16.i8 = vrshrn_n_s32(vmlal_s16(vmull_s16(*v22.i8, *v18.i8), *v20.i8, *v16.i8), 0xCuLL);
  v26 = &dword_277C42240[64 * a3 - 622];
  *v18.i8 = vrshrn_n_s32(v24, 0xCuLL);
  v27 = &dword_277C42240[64 * a3 - 594];
  v28 = vrshrn_high_n_s32(*v16.i8, v23, 0xCuLL);
  v29 = vld1q_dup_s16(v26);
  v30 = vld1q_dup_s16(v27);
  v31 = vrshrn_high_n_s32(*v18.i8, v25, 0xCuLL);
  v33 = *(a1 + 160);
  v32 = *(a1 + 176);
  v35 = *(a1 + 64);
  v34 = *(a1 + 80);
  v36 = &dword_277C42240[64 * a3 - 614];
  v37 = &dword_277C42240[64 * a3 - 602];
  v38 = &dword_277C42240[64 * a3 - 606];
  v39 = &dword_277C42240[64 * a3 - 610];
  v40 = vmlsl_s16(vmull_s16(*v32.i8, *v30.i8), *v35.i8, *v29.i8);
  v41 = &dword_277C42240[64 * a3 - 598];
  v42 = vmlsl_high_s16(vmull_high_s16(v32, v30), v35, v29);
  v43 = &dword_277C42240[64 * a3 - 618];
  v44 = &dword_277C42240[64 * a3 - 590];
  v45 = &dword_277C42240[64 * a3 - 626];
  v46 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v35.i8, *v30.i8), *v32.i8, *v29.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v35, v30), v32, v29), 0xCuLL);
  v47 = vrshrn_high_n_s32(vrshrn_n_s32(v40, 0xCuLL), v42, 0xCuLL);
  v48 = vld1q_dup_s16(v36);
  v49 = vld1q_dup_s16(v37);
  v51 = *(a1 + 128);
  v50 = *(a1 + 144);
  v52 = *(a1 + 96);
  v53 = *(a1 + 112);
  v54 = v3 + 116;
  v55 = v3 + 12;
  v56 = v3 + 16;
  v57 = v3 + 112;
  v58 = vmlsl_s16(vmull_s16(*v50.i8, *v49.i8), *v52.i8, *v48.i8);
  v59 = v3 + 80;
  v60 = vmlsl_high_s16(vmull_high_s16(v50, v49), v52, v48);
  v61 = v3 + 48;
  v62 = v3 + 64;
  v63 = v3 + 32;
  v64 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v52.i8, *v49.i8), *v50.i8, *v48.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v52, v49), v50, v48), 0xCuLL);
  v3 += 96;
  v65 = vrshrn_high_n_s32(vrshrn_n_s32(v58, 0xCuLL), v60, 0xCuLL);
  v66 = vld1q_dup_s16(v38);
  v67 = vld1q_dup_s16(v39);
  v68 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v51.i8, *v67.i8), *v53.i8, *v66.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v51, v67), v53, v66), 0xCuLL);
  v69 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v53.i8, *v67.i8), *v51.i8, *v66.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v53, v67), v51, v66), 0xCuLL);
  v70 = vld1q_dup_s16(v41);
  v71 = vld1q_dup_s16(v43);
  v72 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v33.i8, *v71.i8), *v34.i8, *v70.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v33, v71), v34, v70), 0xCuLL);
  v73 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v34.i8, *v71.i8), *v33.i8, *v70.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v34, v71), v33, v70), 0xCuLL);
  v74 = vld1q_dup_s16(v44);
  v75 = vld1q_dup_s16(v45);
  v76 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v19.i8, *v75.i8), *v21.i8, *v74.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v19, v75), v21, v74), 0xCuLL);
  v77 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v21.i8, *v75.i8), *v19.i8, *v74.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v21, v75), v19, v74), 0xCuLL);
  v78 = vld1q_dup_s16(v54);
  v79 = vld1q_dup_s16(v55);
  v80 = vmlsl_s16(vmull_s16(*v10.i8, *v79.i8), *v8.i8, *v78.i8);
  v81 = vmlsl_high_s16(vmull_high_s16(v10, v79), v8, v78);
  v82 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v8.i8, *v79.i8), *v10.i8, *v78.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v8, v79), v10, v78), 0xCuLL);
  v83 = vrshrn_high_n_s32(vrshrn_n_s32(v80, 0xCuLL), v81, 0xCuLL);
  v84 = vqaddq_s16(v13, v68);
  v85 = vqaddq_s16(v14, v69);
  v86 = vqaddq_s16(v28, v72);
  v87 = vqaddq_s16(v31, v73);
  v88 = vqaddq_s16(v46, v76);
  v89 = vqaddq_s16(v47, v77);
  v90 = vqaddq_s16(v64, v82);
  v91 = vqaddq_s16(v65, v83);
  v92 = vqsubq_s16(v13, v68);
  v93 = vqsubq_s16(v14, v69);
  v94 = vqsubq_s16(v28, v72);
  v95 = vqsubq_s16(v31, v73);
  v96 = vqsubq_s16(v46, v76);
  v97 = vqsubq_s16(v47, v77);
  v98 = vqsubq_s16(v64, v82);
  v99 = vqsubq_s16(v65, v83);
  v100 = vld1q_dup_s16(v56);
  v101 = vld1q_dup_s16(v57);
  v102 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v93.i8, *v101.i8), *v92.i8, *v100.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v93, v101), v92, v100), 0xCuLL);
  v103 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v92.i8, *v101.i8), *v93.i8, *v100.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v92, v101), v93, v100), 0xCuLL);
  v104 = vld1q_dup_s16(v59);
  v105 = vld1q_dup_s16(v61);
  v106 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v95.i8, *v105.i8), *v94.i8, *v104.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v95, v105), v94, v104), 0xCuLL);
  v107 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v94.i8, *v105.i8), *v95.i8, *v104.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v94, v105), v95, v104), 0xCuLL);
  v108 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v96.i8, *v100.i8), *v97.i8, *v101.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v96, v100), v97, v101), 0xCuLL);
  v109 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v97.i8, *v100.i8), *v96.i8, *v101.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v97, v100), v96, v101), 0xCuLL);
  v110 = vmlsl_s16(vmull_s16(*v99.i8, *v104.i8), *v98.i8, *v105.i8);
  v111 = vmlsl_high_s16(vmull_high_s16(v99, v104), v98, v105);
  v112 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v98.i8, *v104.i8), *v99.i8, *v105.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v98, v104), v99, v105), 0xCuLL);
  v113 = vrshrn_high_n_s32(vrshrn_n_s32(v110, 0xCuLL), v111, 0xCuLL);
  v114 = vqaddq_s16(v84, v88);
  v115 = vqaddq_s16(v85, v89);
  v116 = vqaddq_s16(v86, v90);
  v117 = vqaddq_s16(v87, v91);
  v118 = vqsubq_s16(v84, v88);
  v119 = vqsubq_s16(v85, v89);
  v120 = vqsubq_s16(v86, v90);
  v121 = vqsubq_s16(v87, v91);
  v122 = vqaddq_s16(v102, v109);
  v123 = vqaddq_s16(v103, v108);
  v124 = vqaddq_s16(v106, v113);
  v125 = vqaddq_s16(v107, v112);
  v126 = vqsubq_s16(v102, v109);
  v127 = vqsubq_s16(v103, v108);
  v128 = vqsubq_s16(v106, v113);
  v129 = vqsubq_s16(v107, v112);
  v130 = vld1q_dup_s16(v63);
  v131 = vld1q_dup_s16(v3);
  v132 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v119.i8, *v131.i8), *v118.i8, *v130.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v119, v131), v118, v130), 0xCuLL);
  v133 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v118.i8, *v131.i8), *v119.i8, *v130.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v118, v131), v119, v130), 0xCuLL);
  v134 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v120.i8, *v130.i8), *v121.i8, *v131.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v120, v130), v121, v131), 0xCuLL);
  v135 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v121.i8, *v130.i8), *v120.i8, *v131.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v121, v130), v120, v131), 0xCuLL);
  v136 = vmlsl_s16(vmull_s16(*v126.i8, *v131.i8), *v127.i8, *v130.i8);
  v137 = vmlsl_high_s16(vmull_high_s16(v126, v131), v127, v130);
  v138 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v127.i8, *v131.i8), *v126.i8, *v130.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v127, v131), v126, v130), 0xCuLL);
  v139 = vrshrn_high_n_s32(vrshrn_n_s32(v136, 0xCuLL), v137, 0xCuLL);
  v140 = vmlsl_s16(vmull_s16(*v129.i8, *v130.i8), *v128.i8, *v131.i8);
  v141 = vmlsl_high_s16(vmull_high_s16(v129, v130), v128, v131);
  v142 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v128.i8, *v130.i8), *v129.i8, *v131.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v128, v130), v129, v131), 0xCuLL);
  v143 = vrshrn_high_n_s32(vrshrn_n_s32(v140, 0xCuLL), v141, 0xCuLL);
  v144 = vqaddq_s16(v114, v116);
  v145 = vqsubq_s16(v114, v116);
  v146 = vqsubq_s16(v115, v117);
  v147 = vqaddq_s16(v132, v135);
  v148 = vqsubq_s16(v132, v135);
  v149 = vqsubq_s16(v133, v134);
  v150 = vqaddq_s16(v122, v124);
  v151 = vqsubq_s16(v122, v124);
  v152 = vqsubq_s16(v123, v125);
  v153 = vqsubq_s16(v138, v143);
  v154 = vqsubq_s16(v139, v142);
  v155 = vld1q_dup_s16(v62);
  *a2 = v144;
  a2[1] = vqnegq_s16(v150);
  a2[2] = vqaddq_s16(v138, v143);
  a2[3] = vqnegq_s16(v147);
  a2[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v149.i8, *v155.i8), *v148.i8, *v155.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v149, v155), v148, v155), 0xCuLL);
  a2[5] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v154.i8, *v155.i8), *v153.i8, *v155.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v154, v155), v153, v155), 0xCuLL));
  a2[6] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v152.i8, *v155.i8), *v151.i8, *v155.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v152, v155), v151, v155), 0xCuLL);
  a2[7] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v146.i8, *v155.i8), *v145.i8, *v155.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v146, v155), v145, v155), 0xCuLL));
  a2[8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v145.i8, *v155.i8), *v146.i8, *v155.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v145, v155), v146, v155), 0xCuLL);
  a2[9] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v151.i8, *v155.i8), *v152.i8, *v155.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v151, v155), v152, v155), 0xCuLL));
  a2[10] = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v153.i8, *v155.i8), *v154.i8, *v155.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v153, v155), v154, v155), 0xCuLL);
  a2[11] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v148.i8, *v155.i8), *v149.i8, *v155.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v148, v155), v149, v155), 0xCuLL));
  a2[12] = vqaddq_s16(v133, v134);
  a2[13] = vqnegq_s16(vqaddq_s16(v139, v142));
  result = vqnegq_s16(vqaddq_s16(v115, v117));
  a2[14] = vqaddq_s16(v123, v125);
  a2[15] = result;
  return result;
}

int16x8_t sub_277AB6014(uint64_t a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 578];
  v4 = vld1q_dup_s16(v3);
  v5 = *(a1 + 16);
  v6 = vmull_s16(*a1, *v4.i8);
  v7 = vmull_high_s16(*a1, v4);
  v8 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 638]));
  v9 = vmull_s16(*a1, *v8.i8);
  v10 = vmull_high_s16(*a1, v8);
  v11 = vrshrn_high_n_s32(vrshrn_n_s32(v6, 0xCuLL), v7, 0xCuLL);
  v12 = &dword_277C42240[64 * a3 - 586];
  v13 = vld1q_dup_s16(v12);
  v14 = vrshrn_high_n_s32(vrshrn_n_s32(v9, 0xCuLL), v10, 0xCuLL);
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = vmull_s16(*v15.i8, *v13.i8);
  v18 = vmull_high_s16(v15, v13);
  v19 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 630]));
  v20 = vmull_s16(*v15.i8, *v19.i8);
  v21 = vmull_high_s16(v15, v19);
  v22 = vrshrn_high_n_s32(vrshrn_n_s32(v17, 0xCuLL), v18, 0xCuLL);
  v23 = vrshrn_high_n_s32(vrshrn_n_s32(v20, 0xCuLL), v21, 0xCuLL);
  v24 = &dword_277C42240[64 * a3 - 594];
  v25 = vld1q_dup_s16(v24);
  v26 = *(a1 + 64);
  v27 = *(a1 + 80);
  v28 = vmull_s16(*v26.i8, *v25.i8);
  v29 = vmull_high_s16(v26, v25);
  v30 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 622]));
  v31 = vmull_s16(*v26.i8, *v30.i8);
  v32 = vmull_high_s16(v26, v30);
  v33 = vrshrn_high_n_s32(vrshrn_n_s32(v28, 0xCuLL), v29, 0xCuLL);
  v34 = vrshrn_high_n_s32(vrshrn_n_s32(v31, 0xCuLL), v32, 0xCuLL);
  v35 = &dword_277C42240[64 * a3 - 602];
  v36 = vld1q_dup_s16(v35);
  v37 = *(a1 + 96);
  v38 = *(a1 + 112);
  v39 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 614]));
  v40 = &dword_277C42240[64 * a3 - 632];
  v41 = &dword_277C42240[64 * a3 - 584];
  v42 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v37.i8, *v36.i8), 0xCuLL), vmull_high_s16(v37, v36), 0xCuLL);
  v43 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v37.i8, *v39.i8), 0xCuLL), vmull_high_s16(v37, v39), 0xCuLL);
  v44 = &dword_277C42240[64 * a3 - 606];
  v45 = vld1q_dup_s16(v44);
  v46 = &dword_277C42240[64 * a3 - 600];
  v47 = &dword_277C42240[64 * a3 - 610];
  v48 = vld1q_dup_s16(v47);
  v49 = &dword_277C42240[64 * a3 - 616];
  v50 = &dword_277C42240[64 * a3 - 608];
  v51 = &dword_277C42240[64 * a3 - 624];
  v52 = &dword_277C42240[64 * a3 - 592];
  v53 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v38.i8, *v45.i8), 0xCuLL), vmull_high_s16(v38, v45), 0xCuLL);
  v54 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v38.i8, *v48.i8), 0xCuLL), vmull_high_s16(v38, v48), 0xCuLL);
  v55 = &dword_277C42240[64 * a3 - 598];
  v56 = &dword_277C42240[64 * a3 - 618];
  v57 = vld1q_dup_s16(v55);
  v58 = vld1q_dup_s16(v56);
  v59 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v27.i8, *v57.i8), 0xCuLL), vmull_high_s16(v27, v57), 0xCuLL);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v27.i8, *v58.i8), 0xCuLL), vmull_high_s16(v27, v58), 0xCuLL);
  v61 = &dword_277C42240[64 * a3 - 590];
  v62 = &dword_277C42240[64 * a3 - 626];
  v63 = vld1q_dup_s16(v61);
  v64 = vld1q_dup_s16(v62);
  v65 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v16.i8, *v63.i8), 0xCuLL), vmull_high_s16(v16, v63), 0xCuLL);
  v66 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v16.i8, *v64.i8), 0xCuLL), vmull_high_s16(v16, v64), 0xCuLL);
  v67 = &dword_277C42240[64 * a3 - 582];
  v68 = &dword_277C42240[64 * a3 - 634];
  v69 = vld1q_dup_s16(v67);
  v70 = vld1q_dup_s16(v68);
  v71 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v5.i8, *v69.i8), 0xCuLL), vmull_high_s16(v5, v69), 0xCuLL);
  v72 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v5.i8, *v70.i8), 0xCuLL), vmull_high_s16(v5, v70), 0xCuLL);
  v73 = vqaddq_s16(v11, v53);
  v74 = vqaddq_s16(v14, v54);
  v75 = vqaddq_s16(v22, v59);
  v76 = vqaddq_s16(v23, v60);
  v77 = vqaddq_s16(v33, v65);
  v78 = vqaddq_s16(v34, v66);
  v79 = vqaddq_s16(v42, v71);
  v80 = vqaddq_s16(v43, v72);
  v81 = vqsubq_s16(v11, v53);
  v82 = vqsubq_s16(v14, v54);
  v83 = vqsubq_s16(v22, v59);
  v84 = vqsubq_s16(v23, v60);
  v85 = vqsubq_s16(v33, v65);
  v86 = vqsubq_s16(v34, v66);
  v87 = vqsubq_s16(v42, v71);
  v88 = vqsubq_s16(v43, v72);
  v89 = vld1q_dup_s16(v40);
  v90 = vld1q_dup_s16(v41);
  v91 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v82.i8, *v90.i8), *v81.i8, *v89.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v82, v90), v81, v89), 0xCuLL);
  v92 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v81.i8, *v90.i8), *v82.i8, *v89.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v81, v90), v82, v89), 0xCuLL);
  v93 = vld1q_dup_s16(v46);
  v94 = vld1q_dup_s16(v49);
  v95 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v84.i8, *v94.i8), *v83.i8, *v93.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v84, v94), v83, v93), 0xCuLL);
  v96 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v83.i8, *v94.i8), *v84.i8, *v93.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v83, v94), v84, v93), 0xCuLL);
  v97 = vmull_s16(*v86.i8, *v89.i8);
  v98 = vmull_high_s16(v86, v89);
  v99 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v85.i8, *v89.i8), *v86.i8, *v90.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v85, v89), v86, v90), 0xCuLL);
  v100 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(v97, *v85.i8, *v90.i8), 0xCuLL), vmlsl_high_s16(v98, v85, v90), 0xCuLL);
  v101 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v87.i8, *v93.i8), *v88.i8, *v94.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v87, v93), v88, v94), 0xCuLL);
  v102 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v88.i8, *v93.i8), *v87.i8, *v94.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v88, v93), v87, v94), 0xCuLL);
  v103 = vqaddq_s16(v73, v77);
  v104 = vqaddq_s16(v74, v78);
  v105 = vqaddq_s16(v75, v79);
  v106 = vqaddq_s16(v76, v80);
  v107 = vqsubq_s16(v73, v77);
  v108 = vqsubq_s16(v74, v78);
  v109 = vqsubq_s16(v75, v79);
  v110 = vqsubq_s16(v76, v80);
  v111 = vqaddq_s16(v91, v100);
  v112 = vqaddq_s16(v92, v99);
  v113 = vqaddq_s16(v95, v102);
  v114 = vqaddq_s16(v96, v101);
  v115 = vqsubq_s16(v91, v100);
  v116 = vqsubq_s16(v92, v99);
  v117 = vqsubq_s16(v95, v102);
  v118 = vqsubq_s16(v96, v101);
  v119 = vld1q_dup_s16(v51);
  v120 = vld1q_dup_s16(v52);
  v121 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v108.i8, *v120.i8), *v107.i8, *v119.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v108, v120), v107, v119), 0xCuLL);
  v122 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v107.i8, *v120.i8), *v108.i8, *v119.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v107, v120), v108, v119), 0xCuLL);
  v123 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v109.i8, *v119.i8), *v110.i8, *v120.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v109, v119), v110, v120), 0xCuLL);
  v124 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v110.i8, *v119.i8), *v109.i8, *v120.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v110, v119), v109, v120), 0xCuLL);
  v125 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v116.i8, *v120.i8), *v115.i8, *v119.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v116, v120), v115, v119), 0xCuLL);
  v126 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v115.i8, *v120.i8), *v116.i8, *v119.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v115, v120), v116, v119), 0xCuLL);
  v127 = vmlsl_s16(vmull_s16(*v118.i8, *v119.i8), *v117.i8, *v120.i8);
  v128 = vmlsl_high_s16(vmull_high_s16(v118, v119), v117, v120);
  v129 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v117.i8, *v119.i8), *v118.i8, *v120.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v117, v119), v118, v120), 0xCuLL);
  v130 = vrshrn_high_n_s32(vrshrn_n_s32(v127, 0xCuLL), v128, 0xCuLL);
  v131 = vqaddq_s16(v103, v105);
  v132 = vqsubq_s16(v103, v105);
  v133 = vqsubq_s16(v104, v106);
  v134 = vqaddq_s16(v121, v124);
  v135 = vqsubq_s16(v121, v124);
  v136 = vqsubq_s16(v122, v123);
  v137 = vqaddq_s16(v111, v113);
  v138 = vqsubq_s16(v111, v113);
  v139 = vqsubq_s16(v112, v114);
  v140 = vqaddq_s16(v125, v130);
  v141 = vqsubq_s16(v125, v130);
  v142 = vqsubq_s16(v126, v129);
  v143 = vld1q_dup_s16(v50);
  *a2 = v131;
  a2[1] = vqnegq_s16(v137);
  a2[2] = v140;
  a2[3] = vqnegq_s16(v134);
  a2[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v136.i8, *v143.i8), *v135.i8, *v143.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v136, v143), v135, v143), 0xCuLL);
  a2[5] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v142.i8, *v143.i8), *v141.i8, *v143.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v142, v143), v141, v143), 0xCuLL));
  a2[6] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v139.i8, *v143.i8), *v138.i8, *v143.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v139, v143), v138, v143), 0xCuLL);
  a2[7] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v133.i8, *v143.i8), *v132.i8, *v143.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v133, v143), v132, v143), 0xCuLL));
  a2[8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v132.i8, *v143.i8), *v133.i8, *v143.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v132, v143), v133, v143), 0xCuLL);
  a2[9] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v138.i8, *v143.i8), *v139.i8, *v143.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v138, v143), v139, v143), 0xCuLL));
  a2[10] = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v141.i8, *v143.i8), *v142.i8, *v143.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v141, v143), v142, v143), 0xCuLL);
  a2[11] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v135.i8, *v143.i8), *v136.i8, *v143.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v135, v143), v136, v143), 0xCuLL));
  a2[12] = vqaddq_s16(v122, v123);
  a2[13] = vqnegq_s16(vqaddq_s16(v126, v129));
  result = vqnegq_s16(vqaddq_s16(v104, v106));
  a2[14] = vqaddq_s16(v112, v114);
  a2[15] = result;
  return result;
}

int16x8_t sub_277AB654C(int16x4_t *a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 632];
  v4 = &dword_277C42240[64 * a3 - 584];
  v5 = &dword_277C42240[64 * a3 - 608];
  v6 = &dword_277C42240[64 * a3 - 624];
  v7 = &dword_277C42240[64 * a3 - 592];
  v8 = &dword_277C42240[64 * a3 - 578];
  v9 = vld1q_dup_s16(v8);
  v10 = vmull_s16(*a1, *v9.i8);
  v11 = vmull_high_s16(*a1->i8, v9);
  v12 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 638]));
  v13 = vmull_high_s16(*a1->i8, v12);
  *v10.i8 = vrshrn_n_s32(v10, 0xCuLL);
  v14 = vrshrn_n_s32(v11, 0xCuLL);
  v15 = vrshrn_n_s32(vmull_s16(*a1, *v12.i8), 0xCuLL);
  *v12.i8 = vrshrn_n_s32(v13, 0xCuLL);
  v16 = vld1_dup_s16(v3);
  v17 = vld1_dup_s16(v4);
  v18 = vmull_s16(*v10.i8, v17);
  v19 = vld1_dup_s16(v6);
  v20 = vmlal_s16(vmull_s16(v15, v17), *v10.i8, v16);
  v21 = vld1_dup_s16(v7);
  v22 = vmull_s16(*v10.i8, v21);
  v23 = vmlal_s16(vmull_s16(v15, v21), *v10.i8, v19);
  v24 = vld1_dup_s16(v5);
  v25 = vmull_s16(*v10.i8, v24);
  v26 = vmlal_s16(vmull_s16(v15, v24), *v10.i8, v24);
  v27 = vrshrn_high_n_s32(*v10.i8, v11, 0xCuLL);
  v28 = vmlsl_s16(v18, v15, v16);
  v29 = vmlsl_s16(v22, v15, v19);
  v30 = vmlsl_s16(v25, v15, v24);
  v31 = vrshrn_high_n_s32(v15, v13, 0xCuLL);
  v32 = vmlal_s16(vmull_s16(*v12.i8, v17), v14, v16);
  v33 = vmlsl_s16(vmull_s16(v14, v17), *v12.i8, v16);
  v34 = vrshrn_n_s32(v20, 0xCuLL);
  v35 = vrshrn_n_s32(v32, 0xCuLL);
  v36 = vrshrn_n_s32(v28, 0xCuLL);
  *v28.i8 = vrshrn_n_s32(v33, 0xCuLL);
  v37 = vmull_s16(v34, v21);
  v38 = vmlal_s16(vmull_s16(v36, v21), v34, v19);
  v39 = vmull_s16(v34, v24);
  v40 = vmlal_s16(vmull_s16(v36, v24), v34, v24);
  v41 = vrshrn_high_n_s32(v34, v32, 0xCuLL);
  v42 = vmlsl_s16(v37, v36, v19);
  v43 = vmlsl_s16(v39, v36, v24);
  v44 = vrshrn_high_n_s32(v36, v33, 0xCuLL);
  v45 = vmlal_s16(vmull_s16(*v12.i8, v21), v14, v19);
  v46 = vmlsl_s16(vmull_s16(v14, v21), *v12.i8, v19);
  *v23.i8 = vrshrn_n_s32(v23, 0xCuLL);
  v47 = vrshrn_n_s32(v45, 0xCuLL);
  *v29.i8 = vrshrn_n_s32(v29, 0xCuLL);
  v48 = vrshrn_n_s32(v46, 0xCuLL);
  v49 = vmull_s16(*v23.i8, v24);
  v50 = vmlal_s16(vmull_s16(*v29.i8, v24), *v23.i8, v24);
  v51 = vrshrn_high_n_s32(*v23.i8, v45, 0xCuLL);
  v52 = vmlsl_s16(v49, *v29.i8, v24);
  v53 = vrshrn_high_n_s32(*v29.i8, v46, 0xCuLL);
  v54 = vmull_s16(v35, v21);
  v55 = vmlal_s16(vmull_s16(*v28.i8, v21), v35, v19);
  v56 = vmlsl_s16(v54, *v28.i8, v19);
  v57 = vrshrn_n_s32(v38, 0xCuLL);
  *v38.i8 = vrshrn_n_s32(v55, 0xCuLL);
  *v42.i8 = vrshrn_n_s32(v42, 0xCuLL);
  *v45.i8 = vrshrn_n_s32(v56, 0xCuLL);
  *a2 = v27;
  a2[1] = vqnegq_s16(v41);
  a2[2] = vrshrn_high_n_s32(v57, v55, 0xCuLL);
  a2[3] = vqnegq_s16(v51);
  a2[4] = vrshrn_high_n_s32(vrshrn_n_s32(v50, 0xCuLL), vmlal_s16(vmull_s16(v48, v24), v47, v24), 0xCuLL);
  a2[5] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v42.i8, v24), v57, v24), 0xCuLL), vmlal_s16(vmull_s16(*v45.i8, v24), *v38.i8, v24), 0xCuLL));
  a2[6] = vrshrn_high_n_s32(vrshrn_n_s32(v40, 0xCuLL), vmlal_s16(vmull_s16(*v28.i8, v24), v35, v24), 0xCuLL);
  a2[7] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v26, 0xCuLL), vmlal_s16(vmull_s16(*v12.i8, v24), v14, v24), 0xCuLL));
  a2[8] = vrshrn_high_n_s32(vrshrn_n_s32(v30, 0xCuLL), vmlsl_s16(vmull_s16(v14, v24), *v12.i8, v24), 0xCuLL);
  a2[9] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v43, 0xCuLL), vmlsl_s16(vmull_s16(v35, v24), *v28.i8, v24), 0xCuLL));
  a2[10] = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(v57, v24), *v42.i8, v24), 0xCuLL), vmlsl_s16(vmull_s16(*v38.i8, v24), *v45.i8, v24), 0xCuLL);
  a2[11] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v52, 0xCuLL), vmlsl_s16(vmull_s16(v47, v24), v48, v24), 0xCuLL));
  a2[12] = v53;
  a2[13] = vqnegq_s16(vrshrn_high_n_s32(*v42.i8, v56, 0xCuLL));
  result = vqnegq_s16(v31);
  a2[14] = v44;
  a2[15] = result;
  return result;
}

int16x8_t sub_277AB6794(uint64_t a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 636];
  v4 = vld1q_dup_s16(v3);
  v5 = &dword_277C42240[64 * a3 - 580];
  v6 = vld1q_dup_s16(v5);
  v7 = *(a1 + 16);
  v8 = *(a1 + 224);
  v9 = *(a1 + 240);
  v10 = vmlsl_s16(vmull_s16(*v7.i8, *v6.i8), *v9.i8, *v4.i8);
  v11 = vmlsl_high_s16(vmull_high_s16(v7, v6), v9, v4);
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v9.i8, *v6.i8), *v7.i8, *v4.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v9, v6), v7, v4), 0xCuLL);
  v13 = vrshrn_high_n_s32(vrshrn_n_s32(v10, 0xCuLL), v11, 0xCuLL);
  v14 = &dword_277C42240[64 * a3 - 604];
  v15 = vld1q_dup_s16(v14);
  v16 = &dword_277C42240[64 * a3 - 612];
  v17 = vld1q_dup_s16(v16);
  v18 = *(a1 + 128);
  v19 = *(a1 + 144);
  v20 = *(a1 + 96);
  v21 = *(a1 + 112);
  v22 = vmlsl_s16(vmull_s16(*v19.i8, *v17.i8), *v21.i8, *v15.i8);
  v23 = vmlsl_high_s16(vmull_high_s16(v19, v17), v21, v15);
  v24 = &dword_277C42240[64 * a3 - 620];
  v25 = &dword_277C42240[64 * a3 - 596];
  v26 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v21.i8, *v17.i8), *v19.i8, *v15.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v21, v17), v19, v15), 0xCuLL);
  v27 = vld1q_dup_s16(v24);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(v22, 0xCuLL), v23, 0xCuLL);
  v29 = vld1q_dup_s16(v25);
  v30 = *(a1 + 64);
  v31 = *(a1 + 80);
  v32 = &dword_277C42240[64 * a3 - 588];
  v33 = *(a1 + 160);
  v34 = *(a1 + 176);
  v35 = &dword_277C42240[64 * a3 - 628];
  v36 = &dword_277C42240[64 * a3 - 632];
  v37 = &dword_277C42240[64 * a3 - 584];
  v38 = &dword_277C42240[64 * a3 - 600];
  v39 = &dword_277C42240[64 * a3 - 616];
  v40 = &dword_277C42240[64 * a3 - 608];
  LODWORD(v25) = LOWORD(dword_277C42240[64 * a3 - 624]);
  v41 = vmlsl_s16(vmull_s16(*v31.i8, *v29.i8), *v34.i8, *v27.i8);
  v42 = vmlsl_high_s16(vmull_high_s16(v31, v29), v34, v27);
  v43 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v34.i8, *v29.i8), *v31.i8, *v27.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v34, v29), v31, v27), 0xCuLL);
  v44 = vld1q_dup_s16(v32);
  v45 = vld1q_dup_s16(v35);
  v46 = vrshrn_high_n_s32(vrshrn_n_s32(v41, 0xCuLL), v42, 0xCuLL);
  v47 = *(a1 + 192);
  v48 = *(a1 + 208);
  v50 = *(a1 + 32);
  v49 = *(a1 + 48);
  LODWORD(v35) = LOWORD(dword_277C42240[64 * a3 - 592]);
  v51 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v49.i8, *v45.i8), *v48.i8, *v44.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v49, v45), v48, v44), 0xCuLL);
  v52 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v48.i8, *v45.i8), *v49.i8, *v44.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v48, v45), v49, v44), 0xCuLL);
  v53 = vld1q_dup_s16(v36);
  v54 = vld1q_dup_s16(v37);
  v55 = vmlsl_s16(vmull_s16(*v50.i8, *v54.i8), *v8.i8, *v53.i8);
  v56 = vmlsl_high_s16(vmull_high_s16(v50, v54), v8, v53);
  v57 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v8.i8, *v54.i8), *v50.i8, *v53.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v8, v54), v50, v53), 0xCuLL);
  v58 = vrshrn_high_n_s32(vrshrn_n_s32(v55, 0xCuLL), v56, 0xCuLL);
  v59 = vld1q_dup_s16(v38);
  v60 = vld1q_dup_s16(v39);
  v61 = vmull_s16(*v33.i8, *v60.i8);
  v62 = vmull_high_s16(v33, v60);
  v63 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v20.i8, *v60.i8), *v33.i8, *v59.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v20, v60), v33, v59), 0xCuLL);
  v64 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(v61, *v20.i8, *v59.i8), 0xCuLL), vmlsl_high_s16(v62, v20, v59), 0xCuLL);
  v65 = vqaddq_s16(v13, v28);
  v66 = vqsubq_s16(v13, v28);
  v67 = vqsubq_s16(v52, v46);
  v68 = vqaddq_s16(v52, v46);
  v69 = vqaddq_s16(v51, v43);
  v70 = vqsubq_s16(v51, v43);
  v71 = vqsubq_s16(v12, v26);
  v72 = vqaddq_s16(v12, v26);
  v73 = vld1q_dup_s16(v40);
  v74 = vmlsl_s16(vmull_s16(*a1, *v73.i8), *v18.i8, *v73.i8);
  v75 = vmlsl_high_s16(vmull_high_s16(*a1, v73), v18, v73);
  v76 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v18.i8, *v73.i8), *a1, *v73.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v18, v73), *a1, v73), 0xCuLL);
  v77 = vrshrn_high_n_s32(vrshrn_n_s32(v74, 0xCuLL), v75, 0xCuLL);
  v78 = vdupq_n_s16(v25);
  v79 = vdupq_n_s16(v35);
  v80 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v47.i8, *v79.i8), *v30.i8, *v78.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v47, v79), v30, v78), 0xCuLL);
  v81 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v30.i8, *v79.i8), *v47.i8, *v78.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v30, v79), v47, v78), 0xCuLL);
  v82 = vmlsl_s16(vmull_s16(*v71.i8, *v79.i8), *v66.i8, *v78.i8);
  v83 = vmlsl_high_s16(vmull_high_s16(v71, v79), v66, v78);
  v84 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v66.i8, *v79.i8), *v71.i8, *v78.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v66, v79), v71, v78), 0xCuLL);
  v85 = vrshrn_high_n_s32(vrshrn_n_s32(v82, 0xCuLL), v83, 0xCuLL);
  v86 = vdupq_n_s16(-v35);
  v87 = vdupq_n_s16(-v25);
  v88 = vmlsl_s16(vmull_s16(*v67.i8, *v87.i8), *v70.i8, *v86.i8);
  v89 = vmlsl_high_s16(vmull_high_s16(v67, v87), v70, v86);
  v90 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v70.i8, *v87.i8), *v67.i8, *v86.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v70, v87), v67, v86), 0xCuLL);
  v91 = vrshrn_high_n_s32(vrshrn_n_s32(v88, 0xCuLL), v89, 0xCuLL);
  v92 = vqaddq_s16(v58, v64);
  v93 = vqsubq_s16(v58, v64);
  v94 = vqsubq_s16(v57, v63);
  v95 = vqaddq_s16(v57, v63);
  v96 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v93.i8, *v73.i8), *v94.i8, *v73.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v93, v73), v94, v73), 0xCuLL);
  v97 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v94.i8, *v73.i8), *v93.i8, *v73.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v94, v73), v93, v73), 0xCuLL);
  v98 = vqaddq_s16(v76, v80);
  v99 = vqaddq_s16(v77, v81);
  v100 = vqsubq_s16(v77, v81);
  v101 = vqsubq_s16(v76, v80);
  v102 = vqsubq_s16(v85, v90);
  v103 = vqsubq_s16(v65, v68);
  v104 = vqsubq_s16(v72, v69);
  v105 = vqsubq_s16(v84, v91);
  v106 = vqaddq_s16(v84, v91);
  v107 = vqaddq_s16(v72, v69);
  v108 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v102.i8, *v73.i8), *v105.i8, *v73.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v102, v73), v105, v73), 0xCuLL);
  v109 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v105.i8, *v73.i8), *v102.i8, *v73.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v105, v73), v102, v73), 0xCuLL);
  v110 = vmlsl_s16(vmull_s16(*v104.i8, *v73.i8), *v103.i8, *v73.i8);
  v111 = vmlsl_high_s16(vmull_high_s16(v104, v73), v103, v73);
  v112 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v103.i8, *v73.i8), *v104.i8, *v73.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v103, v73), v104, v73), 0xCuLL);
  v113 = vrshrn_high_n_s32(vrshrn_n_s32(v110, 0xCuLL), v111, 0xCuLL);
  v114 = vqaddq_s16(v98, v95);
  v115 = vqaddq_s16(v99, v96);
  *a2 = vqaddq_s16(v114, v107);
  a2[1] = vqaddq_s16(v115, v106);
  v116 = vqaddq_s16(v100, v97);
  v117 = vqaddq_s16(v101, v92);
  v118 = vqsubq_s16(v101, v92);
  a2[2] = vqaddq_s16(v116, v108);
  a2[3] = vqaddq_s16(v117, v112);
  v119 = vqsubq_s16(v100, v97);
  a2[4] = vqaddq_s16(v118, v113);
  a2[5] = vqaddq_s16(v119, v109);
  v120 = vqaddq_s16(v65, v68);
  v121 = vqaddq_s16(v85, v90);
  v122 = vqsubq_s16(v99, v96);
  v123 = vqsubq_s16(v98, v95);
  a2[6] = vqaddq_s16(v122, v121);
  a2[7] = vqaddq_s16(v123, v120);
  a2[8] = vqsubq_s16(v123, v120);
  a2[9] = vqsubq_s16(v122, v121);
  a2[10] = vqsubq_s16(v119, v109);
  a2[11] = vqsubq_s16(v118, v113);
  a2[12] = vqsubq_s16(v117, v112);
  a2[13] = vqsubq_s16(v116, v108);
  result = vqsubq_s16(v115, v106);
  a2[14] = result;
  a2[15] = vqsubq_s16(v114, v107);
  return result;
}

int16x8_t sub_277AB6BA4(uint64_t a1, int16x8_t *a2, int a3)
{
  v3 = *(a1 + 16);
  v4 = &dword_277C42240[64 * a3 - 580];
  v5 = &dword_277C42240[64 * a3 - 636];
  v6 = vld1q_dup_s16(v4);
  v7 = vmull_s16(*v3.i8, *v6.i8);
  v8 = vmull_high_s16(v3, v6);
  v9 = vld1q_dup_s16(v5);
  v10 = vmull_s16(*v3.i8, *v9.i8);
  v11 = vmull_high_s16(v3, v9);
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(v7, 0xCuLL), v8, 0xCuLL);
  v13 = vrshrn_high_n_s32(vrshrn_n_s32(v10, 0xCuLL), v11, 0xCuLL);
  v14 = *(a1 + 96);
  v15 = *(a1 + 112);
  v16 = &dword_277C42240[64 * a3 - 612];
  v17 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 604]));
  v18 = vld1q_dup_s16(v16);
  v19 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v15.i8, *v17.i8), 0xCuLL), vmull_high_s16(v15, v17), 0xCuLL);
  v20 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v15.i8, *v18.i8), 0xCuLL), vmull_high_s16(v15, v18), 0xCuLL);
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v23 = &dword_277C42240[64 * a3 - 596];
  v24 = &dword_277C42240[64 * a3 - 620];
  v25 = vld1q_dup_s16(v23);
  v26 = vld1q_dup_s16(v24);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v22.i8, *v25.i8), 0xCuLL), vmull_high_s16(v22, v25), 0xCuLL);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v22.i8, *v26.i8), 0xCuLL), vmull_high_s16(v22, v26), 0xCuLL);
  v29 = *(a1 + 32);
  v30 = *(a1 + 48);
  v31 = &dword_277C42240[64 * a3 - 628];
  v32 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 588]));
  v33 = vmull_s16(*v30.i8, *v32.i8);
  v34 = vmull_high_s16(v30, v32);
  v35 = vld1q_dup_s16(v31);
  v36 = vmull_s16(*v30.i8, *v35.i8);
  v37 = &dword_277C42240[64 * a3 - 608];
  v38 = vmull_high_s16(v30, v35);
  v39 = LOWORD(dword_277C42240[64 * a3 - 624]);
  v40 = LOWORD(dword_277C42240[64 * a3 - 592]);
  v41 = vrshrn_high_n_s32(vrshrn_n_s32(v33, 0xCuLL), v34, 0xCuLL);
  v42 = vrshrn_high_n_s32(vrshrn_n_s32(v36, 0xCuLL), v38, 0xCuLL);
  v43 = &dword_277C42240[64 * a3 - 584];
  v44 = &dword_277C42240[64 * a3 - 632];
  v45 = vld1q_dup_s16(v43);
  v46 = vld1q_dup_s16(v44);
  v47 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v29.i8, *v45.i8), 0xCuLL), vmull_high_s16(v29, v45), 0xCuLL);
  v48 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v29.i8, *v46.i8), 0xCuLL), vmull_high_s16(v29, v46), 0xCuLL);
  v49 = &dword_277C42240[64 * a3 - 616];
  v50 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 600]));
  v51 = vmull_s16(*v14.i8, *v50.i8);
  v52 = vmull_high_s16(v14, v50);
  v53 = vld1q_dup_s16(v49);
  v54 = vrshrn_high_n_s32(vrshrn_n_s32(v51, 0xCuLL), v52, 0xCuLL);
  v55 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v14.i8, *v53.i8), 0xCuLL), vmull_high_s16(v14, v53), 0xCuLL);
  v56 = vqaddq_s16(v12, v19);
  v57 = vqsubq_s16(v12, v19);
  v58 = vqsubq_s16(v41, v27);
  v59 = vqaddq_s16(v41, v27);
  v60 = vqaddq_s16(v42, v28);
  v61 = vqsubq_s16(v42, v28);
  v62 = vqsubq_s16(v13, v20);
  v63 = vqaddq_s16(v13, v20);
  v64 = vld1q_dup_s16(v37);
  v65 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*a1, *v64.i8), 0xCuLL), vmull_high_s16(*a1, v64), 0xCuLL);
  v66 = vdupq_n_s16(v40);
  v67 = vdupq_n_s16(v39);
  v68 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v21.i8, *v66.i8), 0xCuLL), vmull_high_s16(v21, v66), 0xCuLL);
  v69 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v21.i8, *v67.i8), 0xCuLL), vmull_high_s16(v21, v67), 0xCuLL);
  v70 = vmlsl_s16(vmull_s16(*v62.i8, *v66.i8), *v57.i8, *v67.i8);
  v71 = vmlsl_high_s16(vmull_high_s16(v62, v66), v57, v67);
  v72 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v57.i8, *v66.i8), *v62.i8, *v67.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v57, v66), v62, v67), 0xCuLL);
  v73 = vrshrn_high_n_s32(vrshrn_n_s32(v70, 0xCuLL), v71, 0xCuLL);
  v74 = vdupq_n_s16(-v40);
  v75 = vdupq_n_s16(-v39);
  v76 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v61.i8, *v75.i8), *v58.i8, *v74.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v61, v75), v58, v74), 0xCuLL);
  v77 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v58.i8, *v75.i8), *v61.i8, *v74.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v58, v75), v61, v74), 0xCuLL);
  v78 = vqaddq_s16(v47, v54);
  v79 = vqsubq_s16(v47, v54);
  v80 = vqsubq_s16(v48, v55);
  v81 = vqaddq_s16(v48, v55);
  v82 = vmlsl_s16(vmull_s16(*v80.i8, *v64.i8), *v79.i8, *v64.i8);
  v83 = vmlsl_high_s16(vmull_high_s16(v80, v64), v79, v64);
  v84 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v79.i8, *v64.i8), *v80.i8, *v64.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v79, v64), v80, v64), 0xCuLL);
  v85 = vrshrn_high_n_s32(vrshrn_n_s32(v82, 0xCuLL), v83, 0xCuLL);
  v86 = vqaddq_s16(v65, v69);
  v87 = vqaddq_s16(v65, v68);
  v88 = vqsubq_s16(v65, v68);
  v89 = vqsubq_s16(v65, v69);
  v90 = vqaddq_s16(v56, v59);
  v91 = vqaddq_s16(v73, v76);
  v92 = vqsubq_s16(v73, v76);
  v93 = vqsubq_s16(v56, v59);
  v94 = vqsubq_s16(v63, v60);
  v95 = vqsubq_s16(v72, v77);
  v96 = vqaddq_s16(v72, v77);
  v97 = vqaddq_s16(v63, v60);
  v98 = vmlsl_s16(vmull_s16(*v95.i8, *v64.i8), *v92.i8, *v64.i8);
  v99 = vmlsl_high_s16(vmull_high_s16(v95, v64), v92, v64);
  v100 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v92.i8, *v64.i8), *v95.i8, *v64.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v92, v64), v95, v64), 0xCuLL);
  v101 = vrshrn_high_n_s32(vrshrn_n_s32(v98, 0xCuLL), v99, 0xCuLL);
  v102 = vmlsl_s16(vmull_s16(*v94.i8, *v64.i8), *v93.i8, *v64.i8);
  v103 = vmlsl_high_s16(vmull_high_s16(v94, v64), v93, v64);
  v104 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v93.i8, *v64.i8), *v94.i8, *v64.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v93, v64), v94, v64), 0xCuLL);
  v105 = vqaddq_s16(v86, v81);
  v106 = vqaddq_s16(v87, v84);
  *a2 = vqaddq_s16(v105, v97);
  a2[1] = vqaddq_s16(v106, v96);
  v107 = vrshrn_high_n_s32(vrshrn_n_s32(v102, 0xCuLL), v103, 0xCuLL);
  v108 = vqaddq_s16(v88, v85);
  v109 = vqaddq_s16(v89, v78);
  v110 = vqsubq_s16(v89, v78);
  v111 = vqsubq_s16(v88, v85);
  v112 = vqsubq_s16(v87, v84);
  a2[2] = vqaddq_s16(v108, v100);
  a2[3] = vqaddq_s16(v109, v104);
  a2[4] = vqaddq_s16(v110, v107);
  a2[5] = vqaddq_s16(v111, v101);
  v113 = vqsubq_s16(v86, v81);
  a2[6] = vqaddq_s16(v112, v91);
  a2[7] = vqaddq_s16(v113, v90);
  a2[8] = vqsubq_s16(v113, v90);
  a2[9] = vqsubq_s16(v112, v91);
  a2[10] = vqsubq_s16(v111, v101);
  a2[11] = vqsubq_s16(v110, v107);
  a2[12] = vqsubq_s16(v109, v104);
  a2[13] = vqsubq_s16(v108, v100);
  result = vqsubq_s16(v106, v96);
  a2[14] = result;
  a2[15] = vqsubq_s16(v105, v97);
  return result;
}

int32x4_t sub_277AB6F20(int16x8_t *a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 608];
  v4 = vld1q_dup_s16(v3);
  result = vmull_high_s16(*a1, v4);
  v6 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*a1->i8, *v4.i8), 0xCuLL), result, 0xCuLL);
  *a2 = v6;
  a2[1] = v6;
  a2[2] = v6;
  a2[3] = v6;
  a2[4] = v6;
  a2[5] = v6;
  a2[6] = v6;
  a2[7] = v6;
  a2[8] = v6;
  a2[9] = v6;
  a2[10] = v6;
  a2[11] = v6;
  a2[12] = v6;
  a2[13] = v6;
  a2[14] = v6;
  a2[15] = v6;
  return result;
}

int16x8_t sub_277AB6F70(uint64_t a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 640];
  v4 = &dword_277C42240[64 * a3 - 636];
  v5 = &dword_277C42240[64 * a3 - 580];
  v6 = &dword_277C42240[64 * a3 - 620];
  v7 = &dword_277C42240[64 * a3 - 596];
  v8 = v3 + 72;
  v9 = v3 + 56;
  v10 = v3 + 104;
  v11 = v3 + 24;
  v12 = v3 + 64;
  v13 = v3 + 32;
  v3 += 96;
  v15 = *(a1 + 32);
  v14 = *(a1 + 48);
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v18 = *(a1 + 16);
  v19 = *(a1 + 96);
  v20 = *(a1 + 112);
  v21 = vld1q_dup_s16(v4);
  v22 = vld1q_dup_s16(v5);
  v23 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*a1, *v22.i8), *v20.i8, *v21.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(*a1, v22), v20, v21), 0xCuLL);
  v24 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v20.i8, *v22.i8), *a1, *v21.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v20, v22), *a1, v21), 0xCuLL);
  v25 = vld1q_dup_s16(v6);
  v26 = vld1q_dup_s16(v7);
  v27 = vmlsl_s16(vmull_s16(*v17.i8, *v26.i8), *v15.i8, *v25.i8);
  v28 = vmlsl_high_s16(vmull_high_s16(v17, v26), v15, v25);
  v29 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v15.i8, *v26.i8), *v17.i8, *v25.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v15, v26), v17, v25), 0xCuLL);
  v30 = vrshrn_high_n_s32(vrshrn_n_s32(v27, 0xCuLL), v28, 0xCuLL);
  v31 = vld1q_dup_s16(v8);
  v32 = vld1q_dup_s16(v9);
  v33 = vmlsl_s16(vmull_s16(*v14.i8, *v32.i8), *v16.i8, *v31.i8);
  v34 = vmlsl_high_s16(vmull_high_s16(v14, v32), v16, v31);
  v35 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v16.i8, *v32.i8), *v14.i8, *v31.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v16, v32), v14, v31), 0xCuLL);
  v36 = vrshrn_high_n_s32(vrshrn_n_s32(v33, 0xCuLL), v34, 0xCuLL);
  v37 = vld1q_dup_s16(v10);
  v38 = vld1q_dup_s16(v11);
  v39 = vmlsl_s16(vmull_s16(*v18.i8, *v38.i8), *v19.i8, *v37.i8);
  v40 = vmlsl_high_s16(vmull_high_s16(v18, v38), v19, v37);
  v41 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v19.i8, *v38.i8), *v18.i8, *v37.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v19, v38), v18, v37), 0xCuLL);
  v42 = vrshrn_high_n_s32(vrshrn_n_s32(v39, 0xCuLL), v40, 0xCuLL);
  v43 = vqaddq_s16(v23, v35);
  v44 = vqaddq_s16(v24, v36);
  v45 = vqaddq_s16(v29, v41);
  v46 = vqaddq_s16(v30, v42);
  v47 = vqsubq_s16(v23, v35);
  v48 = vqsubq_s16(v24, v36);
  v49 = vqsubq_s16(v29, v41);
  v50 = vqsubq_s16(v30, v42);
  v51 = vld1q_dup_s16(v13);
  v52 = vld1q_dup_s16(v3);
  v53 = vmlsl_s16(vmull_s16(*v47.i8, *v52.i8), *v48.i8, *v51.i8);
  v54 = vmlsl_high_s16(vmull_high_s16(v47, v52), v48, v51);
  v55 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v48.i8, *v52.i8), *v47.i8, *v51.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v48, v52), v47, v51), 0xCuLL);
  v56 = vrshrn_high_n_s32(vrshrn_n_s32(v53, 0xCuLL), v54, 0xCuLL);
  v57 = vmull_s16(*v50.i8, *v51.i8);
  v58 = vmull_high_s16(v50, v51);
  v59 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v49.i8, *v51.i8), *v50.i8, *v52.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v49, v51), v50, v52), 0xCuLL);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(v57, *v49.i8, *v52.i8), 0xCuLL), vmlsl_high_s16(v58, v49, v52), 0xCuLL);
  v61 = vqaddq_s16(v43, v45);
  v62 = vqaddq_s16(v44, v46);
  v63 = vqsubq_s16(v43, v45);
  v64 = vqsubq_s16(v44, v46);
  v65 = vqaddq_s16(v55, v60);
  v66 = vqaddq_s16(v56, v59);
  v67 = vqsubq_s16(v55, v60);
  v68 = vqsubq_s16(v56, v59);
  v69 = vld1q_dup_s16(v12);
  *a2 = v61;
  a2[1] = vqnegq_s16(v65);
  a2[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v68.i8, *v69.i8), *v67.i8, *v69.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v68, v69), v67, v69), 0xCuLL);
  a2[3] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v64.i8, *v69.i8), *v63.i8, *v69.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v64, v69), v63, v69), 0xCuLL));
  a2[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v63.i8, *v69.i8), *v64.i8, *v69.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v63, v69), v64, v69), 0xCuLL);
  a2[5] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v67.i8, *v69.i8), *v68.i8, *v69.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(v67, v69), v68, v69), 0xCuLL));
  result = vqnegq_s16(v62);
  a2[6] = v66;
  a2[7] = result;
  return result;
}

int16x8_t sub_277AB71D0(int16x4_t *a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 608];
  v4 = &dword_277C42240[64 * a3 - 624];
  v5 = &dword_277C42240[64 * a3 - 592];
  v6 = &dword_277C42240[64 * a3 - 580];
  v7 = vld1q_dup_s16(v6);
  v8 = vmull_s16(*a1, *v7.i8);
  v9 = vmull_high_s16(*a1->i8, v7);
  v10 = vdupq_n_s16(-LOWORD(dword_277C42240[64 * a3 - 636]));
  v11 = vmull_high_s16(*a1->i8, v10);
  *v8.i8 = vrshrn_n_s32(v8, 0xCuLL);
  v12 = vrshrn_n_s32(v9, 0xCuLL);
  v13 = vrshrn_n_s32(vmull_s16(*a1, *v10.i8), 0xCuLL);
  *v10.i8 = vrshrn_n_s32(v11, 0xCuLL);
  v14 = vld1_dup_s16(v4);
  v15 = vld1_dup_s16(v5);
  v16 = vld1_dup_s16(v3);
  v17 = vmlal_s16(vmull_s16(v13, v15), *v8.i8, v14);
  v18 = vmlal_s16(vmull_s16(v13, v16), *v8.i8, v16);
  v19 = vrshrn_high_n_s32(*v8.i8, v9, 0xCuLL);
  v20 = vmlsl_s16(vmull_s16(*v8.i8, v15), v13, v14);
  v21 = vmlsl_s16(vmull_s16(*v8.i8, v16), v13, v16);
  v22 = vrshrn_high_n_s32(v13, v11, 0xCuLL);
  v23 = vmlal_s16(vmull_s16(*v10.i8, v15), v12, v14);
  v24 = vmlsl_s16(vmull_s16(v12, v15), *v10.i8, v14);
  *v11.i8 = vrshrn_n_s32(v17, 0xCuLL);
  v25 = vrshrn_n_s32(v23, 0xCuLL);
  v26 = vrshrn_n_s32(v20, 0xCuLL);
  *v20.i8 = vrshrn_n_s32(v24, 0xCuLL);
  *a2 = v19;
  a2[1] = vqnegq_s16(vrshrn_high_n_s32(*v11.i8, v23, 0xCuLL));
  a2[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(v26, v16), *v11.i8, v16), 0xCuLL), vmlal_s16(vmull_s16(*v20.i8, v16), v25, v16), 0xCuLL);
  a2[3] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v18, 0xCuLL), vmlal_s16(vmull_s16(*v10.i8, v16), v12, v16), 0xCuLL));
  a2[4] = vrshrn_high_n_s32(vrshrn_n_s32(v21, 0xCuLL), vmlsl_s16(vmull_s16(v12, v16), *v10.i8, v16), 0xCuLL);
  a2[5] = vqnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v11.i8, v16), v26, v16), 0xCuLL), vmlsl_s16(vmull_s16(v25, v16), *v20.i8, v16), 0xCuLL));
  result = vqnegq_s16(v22);
  a2[6] = vrshrn_high_n_s32(v26, v24, 0xCuLL);
  a2[7] = result;
  return result;
}

int16x8_t sub_277AB7300(uint64_t a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 632];
  v4 = &dword_277C42240[64 * a3 - 584];
  v5 = &dword_277C42240[64 * a3 - 600];
  v6 = &dword_277C42240[64 * a3 - 616];
  v7 = &dword_277C42240[64 * a3 - 608];
  v8 = &dword_277C42240[64 * a3 - 624];
  v9 = &dword_277C42240[64 * a3 - 592];
  v10 = vld1q_dup_s16(v3);
  v11 = vld1q_dup_s16(v4);
  v12 = *(a1 + 16);
  v14 = *(a1 + 96);
  v13 = *(a1 + 112);
  v15 = vmlsl_s16(vmull_s16(*v12.i8, *v11.i8), *v13.i8, *v10.i8);
  v16 = vmlsl_high_s16(vmull_high_s16(v12, v11), v13, v10);
  v17 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v13.i8, *v11.i8), *v12.i8, *v10.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v13, v11), v12, v10), 0xCuLL);
  v18 = vrshrn_high_n_s32(vrshrn_n_s32(v15, 0xCuLL), v16, 0xCuLL);
  v19 = vld1q_dup_s16(v5);
  v20 = vld1q_dup_s16(v6);
  v22 = *(a1 + 64);
  v21 = *(a1 + 80);
  v24 = *(a1 + 32);
  v23 = *(a1 + 48);
  v25 = vmlsl_s16(vmull_s16(*v21.i8, *v20.i8), *v23.i8, *v19.i8);
  v26 = vmlsl_high_s16(vmull_high_s16(v21, v20), v23, v19);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v23.i8, *v20.i8), *v21.i8, *v19.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v23, v20), v21, v19), 0xCuLL);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(v25, 0xCuLL), v26, 0xCuLL);
  v29 = vld1q_dup_s16(v7);
  v30 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v22.i8, *v29.i8), *a1, *v29.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v22, v29), *a1, v29), 0xCuLL);
  v31 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*a1, *v29.i8), *v22.i8, *v29.i8), 0xCuLL), vmlsl_high_s16(vmull_high_s16(*a1, v29), v22, v29), 0xCuLL);
  v32 = vld1q_dup_s16(v8);
  v33 = vld1q_dup_s16(v9);
  v34 = vmlsl_s16(vmull_s16(*v24.i8, *v33.i8), *v14.i8, *v32.i8);
  v35 = vmlsl_high_s16(vmull_high_s16(v24, v33), v14, v32);
  v36 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v14.i8, *v33.i8), *v24.i8, *v32.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v14, v33), v24, v32), 0xCuLL);
  v37 = vrshrn_high_n_s32(vrshrn_n_s32(v34, 0xCuLL), v35, 0xCuLL);
  v38 = vqaddq_s16(v18, v28);
  v39 = vqsubq_s16(v18, v28);
  v40 = vqsubq_s16(v17, v27);
  v41 = vqaddq_s16(v17, v27);
  v42 = vqaddq_s16(v30, v36);
  v43 = vqaddq_s16(v31, v37);
  v44 = vqsubq_s16(v31, v37);
  v45 = vqsubq_s16(v30, v36);
  v46 = vmlsl_s16(vmull_s16(*v40.i8, *v29.i8), *v39.i8, *v29.i8);
  v47 = vmlsl_high_s16(vmull_high_s16(v40, v29), v39, v29);
  v48 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v39.i8, *v29.i8), *v40.i8, *v29.i8), 0xCuLL), vmlal_high_s16(vmull_high_s16(v39, v29), v40, v29), 0xCuLL);
  v49 = vrshrn_high_n_s32(vrshrn_n_s32(v46, 0xCuLL), v47, 0xCuLL);
  *a2 = vqaddq_s16(v42, v41);
  a2[1] = vqaddq_s16(v43, v48);
  a2[2] = vqaddq_s16(v44, v49);
  a2[3] = vqaddq_s16(v45, v38);
  a2[4] = vqsubq_s16(v45, v38);
  a2[5] = vqsubq_s16(v44, v49);
  result = vqsubq_s16(v42, v41);
  a2[6] = vqsubq_s16(v43, v48);
  a2[7] = result;
  return result;
}

int32x4_t sub_277AB74A0(int16x8_t *a1, int16x8_t *a2, int a3)
{
  v3 = &dword_277C42240[64 * a3 - 608];
  v4 = vld1q_dup_s16(v3);
  result = vmull_high_s16(*a1, v4);
  v6 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*a1->i8, *v4.i8), 0xCuLL), result, 0xCuLL);
  *a2 = v6;
  a2[1] = v6;
  a2[2] = v6;
  a2[3] = v6;
  a2[4] = v6;
  a2[5] = v6;
  a2[6] = v6;
  a2[7] = v6;
  return result;
}

void sub_277AB74E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v33 = MEMORY[0x28223BE20]();
  v39 = v35;
  v40 = v34;
  v41 = v33;
  STACK[0x4178] = *MEMORY[0x277D85DE8];
  if (v36[1])
  {
    v42 = 0;
    v43 = *(v36 + 1);
    v44 = dword_277C3BEE4[v43];
    v45 = dword_277C3BF30[v43];
    if (v44 <= 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = v44;
    }

    if (v45 <= 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = &STACK[0x2160];
    v49 = v34;
    do
    {
      v50 = v49;
      v51 = v48;
      v52 = v46;
      do
      {
        v53 = v50->u8[0];
        v50 = (v50 + 1);
        *v51 = v53;
        v51 = (v51 + 2);
        --v52;
      }

      while (v52);
      ++v42;
      v48 += 16;
      v49 = (v49 + v35);
    }

    while (v42 != v47);
    v54 = &STACK[0x2160];
    sub_277AF48AC(v33, &STACK[0x2160] >> 1, 64, v36, v37);
    for (i = 0; i != v47; ++i)
    {
      v56 = v54;
      v57 = v40;
      v58 = v46;
      do
      {
        v59 = *v56;
        v56 = (v56 + 2);
        v57->i8[0] = v59;
        v57 = (v57 + 1);
        --v58;
      }

      while (v58);
      v40 = (v40 + v39);
      v54 += 16;
    }

    return;
  }

  v60 = *v36;
  v61 = *(v36 + 1);
  v62 = v36[5];
  if (*(v36 + 1) <= 5u)
  {
    if (*(v36 + 1))
    {
      if (v61 != 5)
      {
        goto LABEL_140;
      }

      vars8 = v35;
      v83 = 0;
      v84 = &STACK[0x21A0];
      a26 = 0;
      v85 = off_28866EAB0[byte_277C31564[v60]];
      v592 = off_28866EAB0[byte_277C31574[v60] + 3];
      a25 = 0x1010101010101010;
      v86 = v60 > 0xF;
      v87 = 0xBEAFu >> v60;
      v577 = v60;
      v88 = 0x7F1Fu >> v60;
      v89 = v86 | v87;
      v90 = &STACK[0x21A0];
      do
      {
        v91 = 0;
        v92 = v41;
        do
        {
          v93 = v92->i32[0];
          v92 += 2;
          *(&STACK[0x2160] + v91) = (2896 * v93 + 2048) >> 12;
          v91 += 4;
        }

        while (v91 != 16);
        (v85)(&STACK[0x2160], v90, 12, &a25);
        v41 = (v41 + 4);
        v90 += 2;
        ++v83;
      }

      while (v83 != 8);
      v94 = 0;
      v95 = (v577 > 0xF) | v88;
      v96 = &STACK[0x21AC];
      v97.i64[0] = 0x7F0000007FLL;
      v97.i64[1] = 0x7F0000007FLL;
      v98.i64[0] = 0x7F0000007FLL;
      v98.i64[1] = 0x7F0000007FLL;
      do
      {
        v99 = 0;
        v100 = &STACK[0x2160];
        if (v95)
        {
          do
          {
            *v100 = v84[v99];
            v100 = (v100 + 4);
            v99 += 2;
          }

          while (v99 != 16);
        }

        else
        {
          do
          {
            *v100 = v96[v99];
            v100 = (v100 + 4);
            v99 += 2;
          }

          while (v99 != 16);
        }

        for (j = 0; j != 32; j += 16)
        {
          *(&STACK[0x2160] + j) = vmaxq_s32(vminq_s32(*(&STACK[0x2160] + j), v97), v98);
        }

        (v592)(&STACK[0x2160], &STACK[0x2180], 12, &a25);
        v102 = vrshrq_n_s32(*&STACK[0x2190], 4uLL);
        *&STACK[0x2180] = vrshrq_n_s32(*&STACK[0x2180], 4uLL);
        *&STACK[0x2190] = v102;
        if (v89)
        {
          v103 = 0;
          v104 = v40;
          do
          {
            v105 = (*(&STACK[0x2180] + v103) + v104->u8[0]) & ~((*(&STACK[0x2180] + v103) + v104->u8[0]) >> 31);
            if (v105 >= 255)
            {
              LOBYTE(v105) = -1;
            }

            v104->i8[0] = v105;
            v103 += 4;
            v104 = (v104 + vars8);
          }

          while (v103 != 32);
        }

        else
        {
          v106 = v40;
          for (k = 60; k != 28; k -= 4)
          {
            v108 = (*(&STACK[0x2160] + k) + v106->u8[0]) & ~((*(&STACK[0x2160] + k) + v106->u8[0]) >> 31);
            if (v108 >= 255)
            {
              LOBYTE(v108) = -1;
            }

            v106->i8[0] = v108;
            v106 = (v106 + vars8);
          }
        }

        ++v94;
        v96 = (v96 - 4);
        v84 = (v84 + 4);
        v40 = (v40 + 1);
        v97.i64[0] = 0x7F0000007FLL;
        v97.i64[1] = 0x7F0000007FLL;
        v98.i64[0] = 0x7F0000007FLL;
        v98.i64[1] = 0x7F0000007FLL;
      }

      while (v94 != 4);
    }

    else
    {
      v156 = 0;
      v157 = &STACK[0x2180];
      a26 = 0;
      v158 = off_28866EAB0[byte_277C31564[v60]];
      v595 = off_28866EAB0[byte_277C31574[v60]];
      a25 = 0x10101010101010;
      v159 = v60 > 0xF;
      v160 = 0xBEAFu >> v60;
      v579 = v60;
      v161 = 0x7F1Fu >> v60;
      v162 = v159 | v160;
      v163 = &STACK[0x2180];
      do
      {
        for (m = 0; m != 4; ++m)
        {
          *(&STACK[0x2160] + m * 4) = v41[m].i32[0];
        }

        (v158)(&STACK[0x2160], v163, 12, &a25);
        v41 = (v41 + 4);
        v163 += 2;
        ++v156;
      }

      while (v156 != 4);
      v165 = 0;
      v166 = (v579 > 0xF) | v161;
      v167 = &STACK[0x218C];
      do
      {
        v168 = 0;
        v169 = &STACK[0x2160];
        if (v166)
        {
          do
          {
            *v169 = v157[v168];
            v169 = (v169 + 4);
            v168 += 2;
          }

          while (v168 != 8);
        }

        else
        {
          do
          {
            *v169 = v167[v168];
            v169 = (v169 + 4);
            v168 += 2;
          }

          while (v168 != 8);
        }

        v170.i64[0] = 0x7F0000007FLL;
        v170.i64[1] = 0x7F0000007FLL;
        *&STACK[0x2160] = vmaxq_s32(vminq_s32(*&STACK[0x2160], v170), v170);
        (v595)(&STACK[0x2160], &STACK[0x2160] | 0x10, 12, &a25);
        *&STACK[0x2170] = vrshrq_n_s32(*&STACK[0x2170], 4uLL);
        if (v162)
        {
          v171 = 0;
          v172 = v40;
          do
          {
            v173 = (*((&STACK[0x2160] | 0x10) + v171) + v172->u8[0]) & ~((*((&STACK[0x2160] | 0x10) + v171) + v172->u8[0]) >> 31);
            if (v173 >= 255)
            {
              LOBYTE(v173) = -1;
            }

            v172->i8[0] = v173;
            v171 += 4;
            v172 = (v172 + v39);
          }

          while (v171 != 16);
        }

        else
        {
          v174 = v40;
          for (n = 28; n != 12; n -= 4)
          {
            v176 = (*(&STACK[0x2160] + n) + v174->u8[0]) & ~((*(&STACK[0x2160] + n) + v174->u8[0]) >> 31);
            if (v176 >= 255)
            {
              LOBYTE(v176) = -1;
            }

            v174->i8[0] = v176;
            v174 = (v174 + v39);
          }
        }

        ++v165;
        v167 = (v167 - 4);
        v157 = (v157 + 4);
        v40 = (v40 + 1);
      }

      while (v165 != 4);
    }
  }

  else
  {
    switch(v61)
    {
      case 6:
        v109 = 0;
        v110 = &STACK[0x21A0];
        a26 = 0;
        v111 = off_28866EAB0[byte_277C31564[v60] + 3];
        v593 = off_28866EAB0[byte_277C31574[v60]];
        a25 = 0x1010101010101010;
        v112 = (v60 > 0xF) | (0xBEAFu >> v60);
        do
        {
          for (ii = 0; ii != 8; ++ii)
          {
            *(&STACK[0x2160] + ii * 4) = (2896 * v41[ii].i32[0] + 2048) >> 12;
          }

          (v111)(&STACK[0x2160], v110, 12, &a25);
          v41 = (v41 + 4);
          v110 += 4;
          ++v109;
        }

        while (v109 != 4);
        v114 = 0;
        v115 = (v60 > 0xF) | (0x7F1Fu >> v60);
        v116 = v39;
        v117 = 92;
        v118 = 64;
        do
        {
          v119 = 0;
          if (v115)
          {
            v120 = v118;
            do
            {
              *(&STACK[0x2160] + v119) = *(&STACK[0x2160] + v120);
              v119 += 4;
              v120 += 32;
            }

            while (v119 != 16);
          }

          else
          {
            v121 = v117;
            do
            {
              *(&STACK[0x2160] + v119) = *(&STACK[0x2160] + v121);
              v119 += 4;
              v121 += 32;
            }

            while (v119 != 16);
          }

          v122.i64[0] = 0x7F0000007FLL;
          v122.i64[1] = 0x7F0000007FLL;
          *&STACK[0x2160] = vmaxq_s32(vminq_s32(*&STACK[0x2160], v122), v122);
          (v593)(&STACK[0x2160], &STACK[0x2180], 12, &a25);
          *&STACK[0x2180] = vrshrq_n_s32(*&STACK[0x2180], 4uLL);
          if (v112)
          {
            v123 = 0;
            v124 = v40;
            do
            {
              v125 = (*(&STACK[0x2180] + v123) + v124->u8[0]) & ~((*(&STACK[0x2180] + v123) + v124->u8[0]) >> 31);
              if (v125 >= 255)
              {
                LOBYTE(v125) = -1;
              }

              v124->i8[0] = v125;
              v123 += 4;
              v124 = (v124 + v116);
            }

            while (v123 != 16);
          }

          else
          {
            v126 = v40;
            for (jj = 44; jj != 28; jj -= 4)
            {
              v128 = (*(&STACK[0x2160] + jj) + v126->u8[0]) & ~((*(&STACK[0x2160] + jj) + v126->u8[0]) >> 31);
              if (v128 >= 255)
              {
                LOBYTE(v128) = -1;
              }

              v126->i8[0] = v128;
              v126 = (v126 + v116);
            }
          }

          ++v114;
          v117 -= 4;
          v118 += 4;
          v40 = (v40 + 1);
        }

        while (v114 != 8);
        break;
      case 0xD:
        v129 = 0;
        v130 = &STACK[0x21E0];
        a26 = 4112;
        v131 = off_28866EAB0[byte_277C31564[v60]];
        v594 = off_28866EAB0[byte_277C31574[v60] + 6];
        a25 = 0x1010101010101010;
        v132 = v60 > 0xF;
        v133 = 0xBEAFu >> v60;
        v578 = v60;
        v134 = 0x7F1Fu >> v60;
        v135 = v132 | v133;
        v136 = &STACK[0x21E0];
        do
        {
          v137 = 0;
          v138 = v41;
          do
          {
            v139 = v138->i32[0];
            v138 += 4;
            *(&STACK[0x2160] + v137) = v139;
            v137 += 4;
          }

          while (v137 != 16);
          (v131)(&STACK[0x2160], v136, 12, &a25);
          *v136 = vrshrq_n_s32(*v136, 1uLL);
          ++v136;
          v41 = (v41 + 4);
          ++v129;
        }

        while (v129 != 16);
        v140 = 0;
        v141 = (v578 > 0xF) | v134;
        v142 = &STACK[0x21EC];
        v143.i64[0] = 0x7F0000007FLL;
        v143.i64[1] = 0x7F0000007FLL;
        v144.i64[0] = 0x7F0000007FLL;
        v144.i64[1] = 0x7F0000007FLL;
        do
        {
          v145 = 0;
          v146 = &STACK[0x2160];
          if (v141)
          {
            do
            {
              *v146 = v130[v145];
              v146 = (v146 + 4);
              v145 += 2;
            }

            while (v145 != 32);
          }

          else
          {
            do
            {
              *v146 = v142[v145];
              v146 = (v146 + 4);
              v145 += 2;
            }

            while (v145 != 32);
          }

          for (kk = 0; kk != 64; kk += 16)
          {
            *(&STACK[0x2160] + kk) = vmaxq_s32(vminq_s32(*(&STACK[0x2160] + kk), v143), v144);
          }

          (v594)(&STACK[0x2160], &STACK[0x21A0], 12, &a25);
          v148 = -4;
          v149 = 64;
          do
          {
            *(&STACK[0x2160] + v149) = vrshrq_n_s32(*(&STACK[0x2160] + v149), 4uLL);
            v149 += 16;
            v148 += 4;
          }

          while (v148 < 0xC);
          if (v135)
          {
            v150 = 0;
            v151 = v40;
            v143.i64[0] = 0x7F0000007FLL;
            v143.i64[1] = 0x7F0000007FLL;
            v144.i64[0] = 0x7F0000007FLL;
            v144.i64[1] = 0x7F0000007FLL;
            do
            {
              v152 = (*(&STACK[0x21A0] + v150) + v151->u8[0]) & ~((*(&STACK[0x21A0] + v150) + v151->u8[0]) >> 31);
              if (v152 >= 255)
              {
                LOBYTE(v152) = -1;
              }

              v151->i8[0] = v152;
              v150 += 4;
              v151 = (v151 + v39);
            }

            while (v150 != 64);
          }

          else
          {
            v153 = v40;
            v154 = 124;
            v143.i64[0] = 0x7F0000007FLL;
            v143.i64[1] = 0x7F0000007FLL;
            v144.i64[0] = 0x7F0000007FLL;
            v144.i64[1] = 0x7F0000007FLL;
            do
            {
              v155 = (*(&STACK[0x2160] + v154) + v153->u8[0]) & ~((*(&STACK[0x2160] + v154) + v153->u8[0]) >> 31);
              if (v155 >= 255)
              {
                LOBYTE(v155) = -1;
              }

              v153->i8[0] = v155;
              v154 -= 4;
              v153 = (v153 + v39);
            }

            while (v154 != 60);
          }

          ++v140;
          v142 = (v142 - 4);
          v130 = (v130 + 4);
          v40 = (v40 + 1);
        }

        while (v140 != 4);
        break;
      case 0xE:
        v63 = 0;
        v64 = &STACK[0x21E0];
        a26 = 4112;
        v65 = off_28866EAB0[byte_277C31564[v60] + 6];
        v591 = off_28866EAB0[byte_277C31574[v60]];
        a25 = 0x1010101010101010;
        do
        {
          for (mm = 0; mm != 16; ++mm)
          {
            *(&STACK[0x2160] + mm * 4) = v41[mm].i32[0];
          }

          (v65)(&STACK[0x2160], v64, 12, &a25);
          v67 = 0;
          v68 = -4;
          do
          {
            *&v64[v67] = vrshrq_n_s32(*&v64[v67], 1uLL);
            v67 += 2;
            v68 += 4;
          }

          while (v68 < 0xC);
          v41 = (v41 + 4);
          v64 += 8;
          ++v63;
        }

        while (v63 != 4);
        v69 = 0;
        v70 = v39;
        v71 = 188;
        v72 = 128;
        do
        {
          v73 = 0;
          if ((v60 > 0xF) | (0x7F1Fu >> v60) & 1)
          {
            v74 = v72;
            do
            {
              *(&STACK[0x2160] + v73) = *(&STACK[0x2160] + v74);
              v73 += 4;
              v74 += 64;
            }

            while (v73 != 16);
          }

          else
          {
            v75 = v71;
            do
            {
              *(&STACK[0x2160] + v73) = *(&STACK[0x2160] + v75);
              v73 += 4;
              v75 += 64;
            }

            while (v73 != 16);
          }

          v76.i64[0] = 0x7F0000007FLL;
          v76.i64[1] = 0x7F0000007FLL;
          *&STACK[0x2160] = vmaxq_s32(vminq_s32(*&STACK[0x2160], v76), v76);
          (v591)(&STACK[0x2160], &STACK[0x21A0], 12, &a25);
          *&STACK[0x21A0] = vrshrq_n_s32(*&STACK[0x21A0], 4uLL);
          if ((v60 > 0xF) | (0xBEAFu >> v60) & 1)
          {
            v77 = 0;
            v78 = v40;
            do
            {
              v79 = (*(&STACK[0x21A0] + v77) + v78->u8[0]) & ~((*(&STACK[0x21A0] + v77) + v78->u8[0]) >> 31);
              if (v79 >= 255)
              {
                LOBYTE(v79) = -1;
              }

              v78->i8[0] = v79;
              v77 += 4;
              v78 = (v78 + v70);
            }

            while (v77 != 16);
          }

          else
          {
            v80 = 0;
            v81 = v40;
            do
            {
              v82 = (*(&STACK[0x21AC] + v80) + v81->u8[0]) & ~((*(&STACK[0x21AC] + v80) + v81->u8[0]) >> 31);
              if (v82 >= 255)
              {
                LOBYTE(v82) = -1;
              }

              v81->i8[0] = v82;
              v80 -= 4;
              v81 = (v81 + v70);
            }

            while (v80 != -16);
          }

          ++v69;
          v71 -= 4;
          v72 += 4;
          v40 = (v40 + 1);
        }

        while (v69 != 16);
        return;
      default:
LABEL_140:
        vars8a = v35;
        v552 = *(v36 + 1);
        if (v60 > 0xF)
        {
          goto LABEL_257;
        }

        if (((1 << v60) & 0x5400) == 0)
        {
          if (((1 << v60) & 0xA800) != 0)
          {
            v177 = dword_277C3BF30[v61];
            v178 = v62 - 1;
            v179 = v177;
            if (v177 >= 32)
            {
              v180 = 32;
            }

            else
            {
              v180 = dword_277C3BF30[v61];
            }

            if (v180 <= v62)
            {
              v181 = v180 - 1;
            }

            else
            {
              v181 = dword_277C2FCCC[v178];
            }

            v573 = *(&off_27A7239B8 + v61);
            v575 = dword_277C3BF30[v61];
            v189 = dword_277C31584[v61];
            v550 = dword_277C3BE98[v61];
            v190 = dword_277C3BEE4[v61];
            if ((v190 * v177) >> 3 >= 1)
            {
              bzero(&a25, 16 * ((v190 * v177) >> 3));
              v177 = v575;
            }

            v191 = v190;
            v580 = v60;
            v553 = v179;
            if (v190 != v179)
            {
              if (v190 <= v177)
              {
                if (v179 == 2 * v190)
                {
                  v192 = -1;
                  goto LABEL_161;
                }

                if (v177 == 4 * v190)
                {
                  v192 = -2;
                  goto LABEL_161;
                }
              }

              else
              {
                if (v190 == 2 * v179)
                {
                  v192 = 1;
                  goto LABEL_161;
                }

                if (v190 == 4 * v177)
                {
                  v192 = 2;
                  goto LABEL_161;
                }
              }
            }

            v192 = 0;
LABEL_161:
            v193 = (v190 >> 3);
            v571 = ((v181 + 8) >> 3);
            if (v571 >= 1)
            {
              v194 = 0;
              v195 = 0;
              v567 = qword_28866EB38[12 * v189 - 24 + 4 * byte_277C31564[v60] + dword_277C315D0[v178 / v180]];
              v569 = v178 / v180;
              if (v192 < 0)
              {
                v192 = -v192;
              }

              v557 = v192;
              v564 = 16 * v190;
              v196 = v41 + 1;
              v197 = 4 * v177;
              v559 = ((v178 / v180) & 0xFFFFFFF8) + 8;
              v198 = 16 * v559;
              v199 = &STACK[0x21A0];
              v200 = &a33;
              v201 = &STACK[0x21D0];
              v202 = &STACK[0x2160];
              v561 = 16 * v177;
              do
              {
                if ((v569 & 0x80000000) == 0)
                {
                  v203 = v196;
                  v204 = v202;
                  v205 = v559;
                  do
                  {
                    *v204++ = vuzp1q_s16(v203[-1], *v203);
                    v203 = (v203 + v197);
                    --v205;
                  }

                  while (v205);
                  if (v557 == 1)
                  {
                    v206 = 0;
                    do
                    {
                      v207 = vdupq_n_s16(0xB50u);
                      *&v202[v206 / 8] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(v202[v206 / 8], *v207.i8), 0xCuLL), vmull_high_s16(*&v202[v206 / 8], v207), 0xCuLL);
                      v206 += 16;
                    }

                    while (v198 != v206);
                  }
                }

                v582 = v201;
                v584 = v200;
                v587 = v195;
                v596 = v196;
                v208 = &STACK[0x2160] + 2 * v195 * v191;
                v567(v208, v208, 12);
                if (*v573)
                {
                  v209 = 0;
                  v37 = vdupq_n_s16(*v573);
                  do
                  {
                    *&v202[2 * v209] = vrshlq_s16(*&v202[2 * v209], v37);
                    ++v209;
                  }

                  while (v190 != v209);
                }

                v177 = v575;
                if (v580 == 15)
                {
                  v191 = v190;
                  v210 = v587;
                  if (v193 >= 1)
                  {
                    v211 = 0;
                    v212 = v582;
                    do
                    {
                      v213 = 0;
                      v214 = &v208[16 * v211];
                      v215 = v212;
                      do
                      {
                        v216 = *v215;
                        v215 -= 2;
                        *(&STACK[0x20E0] + v213) = v216;
                        v213 += 16;
                      }

                      while (v213 != 128);
                      v217 = *&STACK[0x2130];
                      v214[4] = *&STACK[0x2120];
                      v214[5] = v217;
                      v218 = *&STACK[0x2150];
                      v214[6] = *&STACK[0x2140];
                      v214[7] = v218;
                      v219 = *&STACK[0x20F0];
                      *v214 = *&STACK[0x20E0];
                      v214[1] = v219;
                      v220 = *&STACK[0x2110];
                      v214[2] = *&STACK[0x2100];
                      v214[3] = v220;
                      v221 = v214[1];
                      v222 = vtrn1q_s16(*v214, v221);
                      v223 = vtrn2q_s16(*v214, v221);
                      v224 = v214[2];
                      v225 = v214[3];
                      v226 = vtrn1q_s16(v224, v225);
                      v227 = vtrn2q_s16(v224, v225);
                      v228 = v214[4];
                      v229 = v214[5];
                      v230 = vtrn1q_s16(v228, v229);
                      v231 = vtrn2q_s16(v228, v229);
                      v232 = v214[6];
                      v233 = v214[7];
                      v234 = vtrn1q_s16(v232, v233);
                      v235 = vtrn2q_s16(v232, v233);
                      v236 = vtrn1q_s32(v222, v226);
                      v237 = vtrn2q_s32(v222, v226);
                      v238 = vtrn1q_s32(v223, v227);
                      v37 = vtrn2q_s32(v223, v227);
                      v239 = vtrn1q_s32(v230, v234);
                      v240 = vtrn2q_s32(v230, v234);
                      v241 = vtrn1q_s32(v231, v235);
                      v242 = vtrn2q_s32(v231, v235);
                      v243 = vzip2q_s64(v236, v239);
                      v236.i64[1] = v239.i64[0];
                      v244 = vzip2q_s64(v238, v241);
                      v238.i64[1] = v241.i64[0];
                      v245 = vzip2q_s64(v237, v240);
                      v237.i64[1] = v240.i64[0];
                      v246 = vzip2q_s64(v37, v242);
                      v37.i64[1] = v242.i64[0];
                      v247 = (&a25 + 2 * v194 + 2 * (~v211 + v193) * v575);
                      *v247 = v236;
                      v247[1] = v238;
                      v247[2] = v237;
                      v247[3] = v37;
                      v247[4] = v243;
                      v247[5] = v244;
                      v247[6] = v245;
                      v247[7] = v246;
                      ++v211;
                      v212 += 16;
                    }

                    while (v211 != v193);
                  }
                }

                else
                {
                  v248 = v584;
                  v249 = v199;
                  v250 = (v190 >> 3);
                  v191 = v190;
                  v210 = v587;
                  if (v193 >= 1)
                  {
                    do
                    {
                      v251 = v249[-4];
                      v252 = v249[-3];
                      v253 = vtrn1q_s16(v251, v252);
                      v254 = vtrn2q_s16(v251, v252);
                      v255 = v249[-2];
                      v256 = v249[-1];
                      v257 = vtrn1q_s16(v255, v256);
                      v258 = vtrn2q_s16(v255, v256);
                      v259 = v249[1];
                      v260 = vtrn1q_s16(*v249, v259);
                      v261 = vtrn2q_s16(*v249, v259);
                      v262 = v249[2];
                      v263 = v249[3];
                      v264 = vtrn1q_s16(v262, v263);
                      v265 = vtrn2q_s16(v262, v263);
                      v266 = vtrn1q_s32(v253, v257);
                      v267 = vtrn2q_s32(v253, v257);
                      v268 = vtrn1q_s32(v254, v258);
                      v269 = vtrn2q_s32(v254, v258);
                      v270 = vtrn1q_s32(v260, v264);
                      v271 = vtrn2q_s32(v260, v264);
                      v272 = vzip2q_s64(v266, v270);
                      v266.i64[1] = v270.i64[0];
                      v273 = vtrn1q_s32(v261, v265);
                      v274 = vtrn2q_s32(v261, v265);
                      v275 = vzip2q_s64(v268, v273);
                      v268.i64[1] = v273.i64[0];
                      v276 = vzip2q_s64(v267, v271);
                      v267.i64[1] = v271.i64[0];
                      v271.i64[0] = v269.i64[0];
                      v271.i64[1] = v274.i64[0];
                      v37 = vzip2q_s64(v269, v274);
                      v248[-4] = v266;
                      v248[-3] = v268;
                      v248[-2] = v267;
                      v248[-1] = v271;
                      *v248 = v272;
                      v248[1] = v275;
                      v248[2] = v276;
                      v248[3] = v37;
                      v249 += 8;
                      v248 = (v248 + v561);
                      --v250;
                    }

                    while (v250);
                  }
                }

                v194 += 8;
                v195 = v210 + 1;
                v198 = 16 * v559;
                v202 = (v202 + v564);
                v196 = v596 + 2;
                v199 = (v199 + v564);
                v200 = v584 + 8;
                v201 = &v582[v564 / 8];
              }

              while (v195 != v571);
            }

            v277 = v553;
            if (v193 >= 1)
            {
              v278 = 0;
              v37.i16[0] = word_277C2FCC0[v550 - 2];
              v279 = vdupq_n_s32(v573[1]);
              v280 = 16 * v177;
              v281 = &a25;
              v282 = v177;
              do
              {
                if (v282 >= 1)
                {
                  v283 = v281;
                  v284 = v553 & 0x7F;
                  do
                  {
                    *v283->i8 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vrshrq_n_s32(vmull_lane_s16(*v283, *v37.i8, 0), 0xCuLL), v279)), vrshlq_s32(vrshrq_n_s32(vmull_high_lane_s16(*v283->i8, *v37.i8, 0), 0xCuLL), v279));
                    v283 += 2;
                    --v284;
                  }

                  while (v284);
                }

                ++v278;
                v281 = (v281 + v280);
              }

              while (v278 != v193);
            }

            if ((0x75F1CuLL >> v61))
            {
              if (((0xA0E3uLL >> v61) & 1) == 0)
              {
                v287 = 0;
                v288 = 0;
                LODWORD(v289) = v191 >> 4;
                if (v191 >> 4 <= 1)
                {
                  v289 = 1;
                }

                else
                {
                  v289 = v289;
                }

                do
                {
                  v290 = (&a25 + 2 * v287);
                  v291 = v40;
                  v292 = v553;
                  do
                  {
                    *v291->i8 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(*v290, *v291)), vaddw_high_u8(v290[v553], *v291->i8));
                    ++v290;
                    v291 = (v291 + vars8a);
                    --v292;
                  }

                  while (v292);
                  ++v288;
                  v287 += 2 * v553;
                  v40 += 2;
                }

                while (v288 != v289);
              }
            }

            else if ((0x80C2uLL >> v61))
            {
              v285 = &a25;
              do
              {
                v286 = *v285++;
                *v40 = vqmovun_s16(vaddw_u8(v286, *v40));
                v40 = (v40 + vars8a);
                --v277;
              }

              while (v277);
            }

            return;
          }

          if (v60 == 9)
          {
            v186 = v62 - 1;
            if (v186)
            {
              v482 = *(qword_27A721F00[v61] + 2 * (v186 >> dword_277C2FB1C[v61]));
              v187 = ((v482 >> 8) + 8) >> 3;
              v188 = (v482 & 0xF8) + 8;
            }

            else
            {
              v187 = 1;
              v188 = 8;
            }

            v483 = *(&off_27A7239B8 + v61);
            v484 = dword_277C31584[v61];
            v485 = dword_277C3BE98[v61];
            v486 = dword_277C3BEE4[v61];
            v487 = dword_277C3BF30[v61];
            v488 = v487;
            if ((v487 * v486) >> 3 >= 1)
            {
              v600 = *(&off_27A7239B8 + v61);
              v489 = dword_277C31584[v61];
              v490 = v187;
              bzero(&STACK[0x2160], 16 * ((v487 * v486) >> 3));
              v483 = v600;
              bzero(&a25, 16 * ((v487 * v486) >> 3));
              v187 = v490;
              v484 = v489;
            }

            if (v486 != v487)
            {
              if (v486 <= v487)
              {
                if (v487 == 2 * v486)
                {
                  v491 = -1;
                  goto LABEL_327;
                }

                if (v487 == 4 * v486)
                {
                  v491 = -2;
                  goto LABEL_327;
                }
              }

              else
              {
                if (v486 == 2 * v487)
                {
                  v491 = 1;
                  goto LABEL_327;
                }

                if (v486 == 4 * v487)
                {
                  v491 = 2;
                  goto LABEL_327;
                }
              }
            }

            v491 = 0;
LABEL_327:
            v492 = (v486 >> 3);
            if (v187 >= 1)
            {
              v493 = 0;
              if (v491 < 0)
              {
                v491 = -v491;
              }

              v37 = vdupq_n_s32(*v483);
              v38.i16[0] = word_277C2FCC0[v484 - 2];
              v494 = v187;
              v495 = 16 * v486;
              v496 = v41 + 1;
              v497 = &STACK[0x2160];
              v498 = &STACK[0x21A0];
              v499 = &a33;
              v500 = vdupq_n_s16(0xB50u);
              do
              {
                v501 = v496;
                v502 = v497;
                v503 = v188;
                do
                {
                  *v502++ = vuzp1q_s16(v501[-1], *v501);
                  v501 = (v501 + 4 * v487);
                  --v503;
                }

                while (v503);
                if (v491 == 1)
                {
                  v504 = 0;
                  do
                  {
                    *&v497[v504] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(v497[v504], *v500.i8), 0xCuLL), vmull_high_s16(*&v497[v504], v500), 0xCuLL);
                    v504 += 2;
                  }

                  while (2 * v188 != v504);
                }

                if (v188 >= 1)
                {
                  v505 = 0;
                  do
                  {
                    *&v497[2 * v505] = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vrshrq_n_s32(vmull_lane_s16(v497[2 * v505], v38, 0), 0xCuLL), v37)), vrshlq_s32(vrshrq_n_s32(vmull_high_lane_s16(*&v497[2 * v505], v38, 0), 0xCuLL), v37));
                    ++v505;
                  }

                  while ((v188 & 0x7F) != v505);
                }

                v506 = v499;
                v507 = v498;
                v508 = (v486 >> 3);
                if (v492 >= 1)
                {
                  do
                  {
                    v509 = v507[-4];
                    v510 = v507[-3];
                    v511 = vtrn1q_s16(v509, v510);
                    v512 = vtrn2q_s16(v509, v510);
                    v513 = v507[-2];
                    v514 = v507[-1];
                    v515 = vtrn1q_s16(v513, v514);
                    v516 = vtrn2q_s16(v513, v514);
                    v517 = v507[1];
                    v518 = vtrn1q_s16(*v507, v517);
                    v519 = vtrn2q_s16(*v507, v517);
                    v520 = v507[2];
                    v521 = v507[3];
                    v522 = vtrn1q_s16(v520, v521);
                    v523 = vtrn2q_s16(v520, v521);
                    v524 = vtrn1q_s32(v511, v515);
                    v525 = vtrn2q_s32(v511, v515);
                    v526 = vtrn1q_s32(v512, v516);
                    v527 = vtrn2q_s32(v512, v516);
                    v528 = vtrn1q_s32(v518, v522);
                    v529 = vtrn2q_s32(v518, v522);
                    v530 = vzip2q_s64(v524, v528);
                    v524.i64[1] = v528.i64[0];
                    v531 = vtrn1q_s32(v519, v523);
                    v532 = vtrn2q_s32(v519, v523);
                    v533 = vzip2q_s64(v526, v531);
                    v526.i64[1] = v531.i64[0];
                    v534 = vzip2q_s64(v525, v529);
                    v525.i64[1] = v529.i64[0];
                    v529.i64[0] = v527.i64[0];
                    v529.i64[1] = v532.i64[0];
                    v506[-4] = v524;
                    v506[-3] = v526;
                    v506[-2] = v525;
                    v506[-1] = v529;
                    *v506 = v530;
                    v506[1] = v533;
                    v506[2] = v534;
                    v506[3] = vzip2q_s64(v527, v532);
                    v507 += 8;
                    v506 += v487;
                    --v508;
                  }

                  while (v508);
                }

                ++v493;
                v497 = (v497 + v495);
                v496 += 2;
                v498 = (v498 + v495);
                v499 += 8;
              }

              while (v493 != v494);
            }

            if (v492 >= 1)
            {
              v535 = 0;
              v37.i16[0] = word_277C2FCC0[v485 - 2];
              v536 = vdupq_n_s32(v483[1]);
              v537 = &a25;
              do
              {
                if (v487 >= 1)
                {
                  v538 = v537;
                  v539 = v487 & 0x7F;
                  do
                  {
                    *v538->i8 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vrshrq_n_s32(vmull_lane_s16(*v538, *v37.i8, 0), 0xCuLL), v536)), vrshlq_s32(vrshrq_n_s32(vmull_high_lane_s16(*v538->i8, *v37.i8, 0), 0xCuLL), v536));
                    v538 += 2;
                    --v539;
                  }

                  while (v539);
                }

                ++v535;
                v537 += 2 * v487;
              }

              while (v535 != v492);
            }

            if ((0x75F1CuLL >> v552))
            {
              if (((0xA0E3uLL >> v552) & 1) == 0)
              {
                v542 = 0;
                v543 = 0;
                LODWORD(v544) = v486 >> 4;
                if (v486 >> 4 <= 1)
                {
                  v544 = 1;
                }

                else
                {
                  v544 = v544;
                }

                do
                {
                  v545 = (&a25 + 2 * v542);
                  v546 = v40;
                  v547 = v487;
                  do
                  {
                    *v546->i8 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(*v545, *v546)), vaddw_high_u8(v545[v487], *v546->i8));
                    ++v545;
                    v546 = (v546 + vars8a);
                    --v547;
                  }

                  while (v547);
                  ++v543;
                  v542 += 2 * v487;
                  v40 += 2;
                }

                while (v543 != v544);
              }
            }

            else if ((0x80C2uLL >> v552))
            {
              v540 = &a25;
              do
              {
                v541 = *v540++;
                *v40 = vqmovun_s16(vaddw_u8(v541, *v40));
                v40 = (v40 + vars8a);
                --v488;
              }

              while (v488);
            }

            return;
          }

LABEL_257:
          v365 = v62 - 1;
          v366 = *v36;
          if (v365)
          {
            v368 = *(qword_27A721F00[v61] + 2 * (v365 >> dword_277C2FB1C[v61]));
            v365 = *(qword_27A721F00[v61] + 2 * (v365 >> dword_277C2FB1C[v61]));
            v367 = v368 >> 8;
          }

          else
          {
            v367 = 0;
          }

          v599 = *(&off_27A7239B8 + v61);
          v369 = dword_277C3BEE4[v61];
          v370 = v369;
          v371 = dword_277C3BF30[v61];
          if (v369 != v371)
          {
            if (v369 <= v371)
            {
              if (v371 == 2 * v369)
              {
                v372 = -1;
                goto LABEL_266;
              }

              if (v371 == 4 * v369)
              {
                v372 = -2;
                goto LABEL_266;
              }
            }

            else
            {
              if (v369 == 2 * v371)
              {
                v372 = 1;
                goto LABEL_266;
              }

              if (v369 == 4 * v371)
              {
                v372 = 2;
                goto LABEL_266;
              }
            }
          }

          v372 = 0;
LABEL_266:
          v551 = dword_277C3BF30[v61];
          v373 = v371;
          v374 = v369 >> 3;
          v549 = qword_28866EB38[12 * dword_277C3BE98[v61] - 24 + 4 * byte_277C31574[v366] + dword_277C315D0[v367]];
          v581 = *v36;
          v548 = v366 > 0xF;
          v568 = ((v367 + 8) >> 3);
          v570 = dword_277C3BEE4[v61];
          v586 = (v369 >> 3);
          v590 = v371;
          if (v568 >= 1)
          {
            v375 = 0;
            v376 = 0;
            v566 = qword_28866EB38[12 * dword_277C31584[v61] - 24 + 4 * byte_277C31564[v366] + dword_277C315D0[v365]];
            v565 = (v366 < 0x10) & (0x80E0u >> v366);
            if (v551 >= 32)
            {
              v377 = 32;
            }

            else
            {
              v377 = dword_277C3BF30[v61];
            }

            v563 = (v365 & 0xF8u) + 8;
            if (v372 >= 0)
            {
              v378 = v372;
            }

            else
            {
              v378 = -v372;
            }

            v562 = v378;
            v558 = 2 * v369;
            v560 = v374;
            v379 = v41 + 1;
            v380 = 4 * v377;
            v381 = ((16 * v365) & 0xF80) + 128;
            v382 = &STACK[0x21A0];
            v383 = &a33;
            v384 = 16 * v371;
            v385 = &STACK[0x21D0];
            v386 = vdupq_n_s16(0xB50u);
            v387 = &STACK[0x2160];
            v554 = v386;
            do
            {
              v388 = &STACK[0x2160] + 2 * v376 * v370;
              v583 = v379;
              v389 = v379;
              v390 = v387;
              v391 = v563;
              do
              {
                *v390++ = vuzp1q_s16(v389[-1], *v389);
                v389 = (v389 + v380);
                --v391;
              }

              while (v391);
              v572 = v385;
              v574 = v383;
              v576 = v382;
              if (v562 == 1)
              {
                v392 = 0;
                do
                {
                  *&v387[v392 / 8] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(v387[v392 / 8], *v386.i8), 0xCuLL), vmull_high_s16(*&v387[v392 / 8], v386), 0xCuLL);
                  v392 += 16;
                }

                while (v381 != v392);
              }

              v566(&STACK[0x2160] + 2 * v376 * v370, &STACK[0x2160] + 2 * v376 * v370, 12);
              if (*v599)
              {
                v393 = 0;
                v394 = vdupq_n_s16(*v599);
                do
                {
                  *&v387[2 * v393] = vrshlq_s16(*&v387[2 * v393], v394);
                  ++v393;
                }

                while (v369 != v393);
              }

              v374 = v369 >> 3;
              v373 = v590;
              if (v565)
              {
                v370 = v369;
                if (v586 >= 1)
                {
                  v395 = 0;
                  v396 = v572;
                  do
                  {
                    v397 = 0;
                    v398 = &v388[16 * v395];
                    v399 = v396;
                    do
                    {
                      v400 = *v399;
                      v399 -= 2;
                      *(&STACK[0x20E0] + v397) = v400;
                      v397 += 16;
                    }

                    while (v397 != 128);
                    v401 = *&STACK[0x2130];
                    v398[4] = *&STACK[0x2120];
                    v398[5] = v401;
                    v402 = *&STACK[0x2150];
                    v398[6] = *&STACK[0x2140];
                    v398[7] = v402;
                    v403 = *&STACK[0x20F0];
                    *v398 = *&STACK[0x20E0];
                    v398[1] = v403;
                    v404 = *&STACK[0x2110];
                    v398[2] = *&STACK[0x2100];
                    v398[3] = v404;
                    v405 = v398[1];
                    v406 = vtrn1q_s16(*v398, v405);
                    v407 = vtrn2q_s16(*v398, v405);
                    v408 = v398[2];
                    v409 = v398[3];
                    v410 = vtrn1q_s16(v408, v409);
                    v411 = vtrn2q_s16(v408, v409);
                    v412 = v398[4];
                    v413 = v398[5];
                    v414 = vtrn1q_s16(v412, v413);
                    v415 = vtrn2q_s16(v412, v413);
                    v416 = v398[6];
                    v417 = v398[7];
                    v418 = vtrn1q_s16(v416, v417);
                    v419 = vtrn2q_s16(v416, v417);
                    v420 = vtrn1q_s32(v406, v410);
                    v421 = vtrn2q_s32(v406, v410);
                    v422 = vtrn1q_s32(v407, v411);
                    v423 = vtrn2q_s32(v407, v411);
                    v424 = vtrn1q_s32(v414, v418);
                    v425 = vtrn2q_s32(v414, v418);
                    v426 = vtrn1q_s32(v415, v419);
                    v427 = vtrn2q_s32(v415, v419);
                    v428 = vzip2q_s64(v420, v424);
                    v420.i64[1] = v424.i64[0];
                    v429 = vzip2q_s64(v422, v426);
                    v422.i64[1] = v426.i64[0];
                    v430 = vzip2q_s64(v421, v425);
                    v421.i64[1] = v425.i64[0];
                    v431 = vzip2q_s64(v423, v427);
                    v423.i64[1] = v427.i64[0];
                    v432 = (&a25 + 2 * v375 + 2 * (~v395 + v560) * v590);
                    *v432 = v420;
                    v432[1] = v422;
                    v432[2] = v421;
                    v432[3] = v423;
                    v432[4] = v428;
                    v432[5] = v429;
                    v432[6] = v430;
                    v432[7] = v431;
                    ++v395;
                    v396 += 16;
                  }

                  while (v395 != v586);
                }
              }

              else
              {
                v433 = v574;
                v434 = v576;
                v435 = (v369 >> 3);
                v370 = v369;
                if (v586 >= 1)
                {
                  do
                  {
                    v436 = v434[-4];
                    v437 = v434[-3];
                    v438 = vtrn1q_s16(v436, v437);
                    v439 = vtrn2q_s16(v436, v437);
                    v440 = v434[-2];
                    v441 = v434[-1];
                    v442 = vtrn1q_s16(v440, v441);
                    v443 = vtrn2q_s16(v440, v441);
                    v444 = v434[1];
                    v445 = vtrn1q_s16(*v434, v444);
                    v446 = vtrn2q_s16(*v434, v444);
                    v447 = v434[2];
                    v448 = v434[3];
                    v449 = vtrn1q_s16(v447, v448);
                    v450 = vtrn2q_s16(v447, v448);
                    v451 = vtrn1q_s32(v438, v442);
                    v452 = vtrn2q_s32(v438, v442);
                    v453 = vtrn1q_s32(v439, v443);
                    v454 = vtrn2q_s32(v439, v443);
                    v455 = vtrn1q_s32(v445, v449);
                    v456 = vtrn2q_s32(v445, v449);
                    v457 = vzip2q_s64(v451, v455);
                    v451.i64[1] = v455.i64[0];
                    v458 = vtrn1q_s32(v446, v450);
                    v459 = vtrn2q_s32(v446, v450);
                    v460 = vzip2q_s64(v453, v458);
                    v453.i64[1] = v458.i64[0];
                    v461 = vzip2q_s64(v452, v456);
                    v452.i64[1] = v456.i64[0];
                    v456.i64[0] = v454.i64[0];
                    v456.i64[1] = v459.i64[0];
                    v433[-4] = v451;
                    v433[-3] = v453;
                    v433[-2] = v452;
                    v433[-1] = v456;
                    *v433 = v457;
                    v433[1] = v460;
                    v433[2] = v461;
                    v433[3] = vzip2q_s64(v454, v459);
                    v434 += 8;
                    v433 = (v433 + v384);
                    --v435;
                  }

                  while (v435);
                }
              }

              v375 += 8;
              ++v376;
              v387 = (v387 + v558 * 8);
              v379 = v583 + 2;
              v382 = &v576[v558];
              v383 = v574 + 8;
              v385 = &v572[v558];
              v386 = v554;
            }

            while (v376 != v568);
          }

          v462 = 0xFEAFu >> v581;
          v463 = v551;
          if (v374 >= 1)
          {
            v464 = 0;
            v465 = 16 * v373;
            v466 = &a25;
            do
            {
              v549(&a25 + 2 * v464 * v373, &a25 + 2 * v464 * v373, 12);
              if (v599[1])
              {
                v467 = vdupq_n_s16(v599[1]);
                v468 = v466;
                v469 = v551;
                do
                {
                  *v468 = vrshlq_s16(*v468, v467);
                  ++v468;
                  --v469;
                }

                while (v469);
              }

              ++v464;
              v466 = (v466 + v465);
              v373 = v590;
            }

            while (v464 != v586);
          }

          if ((0x75F1CuLL >> v552))
          {
            if (((0xA0E3uLL >> v552) & 1) == 0)
            {
              v473 = 0;
              v474 = 0;
              LODWORD(v475) = v570 >> 4;
              if ((v548 | v462))
              {
                v476 = 0;
              }

              else
              {
                v476 = (v551 - 1);
              }

              v477 = &a25 + 2 * v476;
              v478 = 16;
              if (((v548 | v462) & 1) == 0)
              {
                v478 = -16;
              }

              if (v475 <= 1)
              {
                v475 = 1;
              }

              else
              {
                v475 = v475;
              }

              do
              {
                v479 = &v477[2 * v473];
                v480 = v40;
                v481 = v551;
                do
                {
                  *v480->i8 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(*v479, *v480)), vaddw_high_u8(v479[v551], *v480->i8));
                  v480 = (v480 + vars8a);
                  v479 = (v479 + v478);
                  --v481;
                }

                while (v481);
                ++v474;
                v40 += 2;
                v473 += 2 * v551;
              }

              while (v474 != v475);
            }
          }

          else if ((0x80C2uLL >> v552))
          {
            v470 = (v551 - 1);
            v471 = 16;
            if ((v548 | v462))
            {
              v470 = 0;
            }

            else
            {
              v471 = -16;
            }

            v472 = (&a25 + 2 * v470);
            do
            {
              *v40 = vqmovun_s16(vaddw_u8(*v472, *v40));
              v40 = (v40 + vars8a);
              v472 = (v472 + v471);
              --v463;
            }

            while (v463);
          }

          return;
        }

        v182 = v62 - 1;
        v183 = dword_277C3BEE4[v61];
        if (v183 >= 32)
        {
          v184 = 32;
        }

        else
        {
          v184 = dword_277C3BEE4[v61];
        }

        if (v184 <= v62)
        {
          v185 = v184 - 1;
        }

        else
        {
          v185 = dword_277C2FCCC[v182];
        }

        v293 = dword_277C2FCCC[v182 / v184];
        v294 = *(&off_27A7239B8 + v61);
        v295 = dword_277C31584[v61];
        v296 = dword_277C3BE98[v61];
        v297 = dword_277C3BF30[v61];
        if ((v297 * v183) >> 3 >= 1)
        {
          v588 = dword_277C2FCCC[v182 / v184];
          v597 = dword_277C3BE98[v61];
          v298 = dword_277C3BEE4[v61];
          v299 = dword_277C31584[v61];
          bzero(&STACK[0x2160], 16 * ((v297 * v183) >> 3));
          v295 = v299;
          v183 = v298;
          v293 = v588;
          v296 = v597;
        }

        if (v183 != v297)
        {
          if (v183 <= v297)
          {
            if (v297 == 2 * v183)
            {
              v300 = v60;
              v301 = -1;
              goto LABEL_211;
            }

            if (v297 == 4 * v183)
            {
              v300 = v60;
              v301 = -2;
              goto LABEL_211;
            }
          }

          else
          {
            if (v183 == 2 * v297)
            {
              v300 = v60;
              v301 = 1;
              goto LABEL_211;
            }

            if (v183 == 4 * v297)
            {
              v300 = v60;
              v301 = 2;
              goto LABEL_211;
            }
          }
        }

        v300 = v60;
        v301 = 0;
LABEL_211:
        v585 = v183;
        v302 = (v183 >> 3);
        v303 = ((v293 + 8) >> 3);
        v304 = (v300 - 4) >> 1;
        v598 = (v304 | ((v300 - 4) << 7)) > 5u;
        if (v303 >= 1)
        {
          v305 = 0;
          if (v301 < 0)
          {
            v301 = -v301;
          }

          v37.i16[0] = word_277C2FCC0[v295 - 2];
          v306 = 16 * v585;
          v307 = v41 + 1;
          v308 = vdupq_n_s16(0xB50u);
          v309 = &STACK[0x2160];
          v310 = &STACK[0x21A0];
          v311 = &a33;
          do
          {
            if ((v185 & 0x80000000) == 0)
            {
              v312 = v307;
              v313 = v309;
              v314 = (v185 & 0xFFFFFFF8) + 8;
              do
              {
                *v313++ = vuzp1q_s16(v312[-1], *v312);
                v312 = (v312 + 4 * v297);
                --v314;
              }

              while (v314);
              if (v301 == 1)
              {
                v315 = 0;
                do
                {
                  *&v309[v315] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(v309[v315], *v308.i8), 0xCuLL), vmull_high_s16(*&v309[v315], v308), 0xCuLL);
                  v315 += 2;
                }

                while (2 * ((v185 & 0xFFFFFFF8) + 8) != v315);
              }
            }

            if (((v185 & 0xF8) + 8) >= 1)
            {
              v316 = 0;
              v317 = vdupq_n_s32(*v294);
              do
              {
                *&v309[2 * v316] = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vrshrq_n_s32(vmull_lane_s16(v309[2 * v316], *v37.i8, 0), 0xCuLL), v317)), vrshlq_s32(vrshrq_n_s32(vmull_high_lane_s16(*&v309[2 * v316], *v37.i8, 0), 0xCuLL), v317));
                ++v316;
              }

              while ((((v185 & 0xF8) + 8) & 0x78) != v316);
            }

            v318 = v311;
            v319 = v310;
            v320 = v302;
            if (v302 >= 1)
            {
              do
              {
                v321 = v319[-4];
                v322 = v319[-3];
                v323 = vtrn1q_s16(v321, v322);
                v324 = vtrn2q_s16(v321, v322);
                v325 = v319[-2];
                v326 = v319[-1];
                v327 = vtrn1q_s16(v325, v326);
                v328 = vtrn2q_s16(v325, v326);
                v329 = v319[1];
                v330 = vtrn1q_s16(*v319, v329);
                v331 = vtrn2q_s16(*v319, v329);
                v332 = v319[2];
                v333 = v319[3];
                v334 = vtrn1q_s16(v332, v333);
                v335 = vtrn2q_s16(v332, v333);
                v336 = vtrn1q_s32(v323, v327);
                v337 = vtrn2q_s32(v323, v327);
                v338 = vtrn1q_s32(v324, v328);
                v339 = vtrn2q_s32(v324, v328);
                v340 = vtrn1q_s32(v330, v334);
                v341 = vtrn2q_s32(v330, v334);
                v342 = vzip2q_s64(v336, v340);
                v336.i64[1] = v340.i64[0];
                v343 = vtrn1q_s32(v331, v335);
                v344 = vtrn2q_s32(v331, v335);
                v345 = vzip2q_s64(v338, v343);
                v338.i64[1] = v343.i64[0];
                v346 = vzip2q_s64(v337, v341);
                v337.i64[1] = v341.i64[0];
                v341.i64[0] = v339.i64[0];
                v341.i64[1] = v344.i64[0];
                v318[-4] = v336;
                v318[-3] = v338;
                v318[-2] = v337;
                v318[-1] = v341;
                *v318 = v342;
                v318[1] = v345;
                v318[2] = v346;
                v318[3] = vzip2q_s64(v339, v344);
                v319 += 8;
                v318 += v297;
                --v320;
              }

              while (v320);
            }

            ++v305;
            v309 = (v309 + v306);
            v307 += 2;
            v310 = (v310 + v306);
            v311 += 8;
          }

          while (v305 != v303);
        }

        v589 = 0x18u >> v304;
        if (v302 >= 1)
        {
          v347 = 0;
          v348 = qword_28866EB38[12 * v296 - 24 + 4 * byte_277C31574[v300] + dword_277C315D0[v293]];
          v349 = &a25;
          do
          {
            v348(&a25 + 2 * v347 * v297, &a25 + 2 * v347 * v297, 12);
            if (v294[1])
            {
              v350 = vdupq_n_s16(v294[1]);
              v351 = v349;
              v352 = v297;
              do
              {
                *v351 = vrshlq_s16(*v351, v350);
                ++v351;
                --v352;
              }

              while (v352);
            }

            ++v347;
            v349 += 2 * v297;
          }

          while (v347 != v302);
        }

        if ((0x75F1CuLL >> v552))
        {
          if (((0xA0E3uLL >> v552) & 1) == 0)
          {
            v356 = 0;
            v357 = 0;
            LODWORD(v358) = v585 >> 4;
            if ((v598 | v589))
            {
              v359 = 0;
            }

            else
            {
              v359 = (v297 - 1);
            }

            v360 = &a25 + 2 * v359;
            v361 = 16;
            if (((v598 | v589) & 1) == 0)
            {
              v361 = -16;
            }

            if (v358 <= 1)
            {
              v358 = 1;
            }

            else
            {
              v358 = v358;
            }

            do
            {
              v362 = &v360[2 * v356];
              v363 = v40;
              v364 = v297;
              do
              {
                *v363->i8 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(*v362, *v363)), vaddw_high_u8(v362[v297], *v363->i8));
                v363 = (v363 + vars8a);
                v362 = (v362 + v361);
                --v364;
              }

              while (v364);
              ++v357;
              v40 += 2;
              v356 += 2 * v297;
            }

            while (v357 != v358);
          }
        }

        else if ((0x80C2uLL >> v552))
        {
          v353 = (v297 - 1);
          v354 = 16;
          if ((v598 | v589))
          {
            v353 = 0;
          }

          else
          {
            v354 = -16;
          }

          v355 = (&a25 + 2 * v353);
          do
          {
            *v40 = vqmovun_s16(vaddw_u8(*v355, *v40));
            v40 = (v40 + vars8a);
            v355 = (v355 + v354);
            LODWORD(v297) = v297 - 1;
          }

          while (v297);
        }

        return;
    }
  }
}

uint64_t *sub_277AB9664(uint64_t *result, int a2)
{
  v2 = *(result + 2);
  v3 = v2 + 7;
  if (v2 >= 0)
  {
    v3 = *(result + 2);
  }

  v4 = v3 & 0xFFFFFFF8;
  v5 = *result;
  v6 = v3 >> 3;
  v7 = v4 - v2;
  if (v7)
  {
    v8 = v7 + 7;
    *(v5 + v6) &= ~(1 << v8);
    *(*result + v6) |= a2 << v8;
  }

  else
  {
    *(v5 + v6) = a2 << 7;
  }

  *(result + 2) = v2 + 1;
  return result;
}

uint64_t sub_277AB96CC(uint64_t result, unsigned int a2, int a3)
{
  if (a3 >= 1)
  {
    v4 = *(result + 8);
    v5 = 7 - v4;
    v6 = a3 + 1;
    do
    {
      v7 = v4 / 8;
      v3 = v5 + (v3 & 0xF8);
      *(*result + v7) &= ~(1 << v3);
      *(*result + v7) |= ((a2 >> (v6 - 2)) & 1) << v3;
      *(result + 8) = ++v4;
      --v5;
      --v6;
    }

    while (v6 > 1);
  }

  return result;
}

uint64_t *sub_277AB9750(uint64_t *a1, __int16 a2, __int16 a3, __int16 a4)
{
  v5 = 0;
  v6 = 0;
  v7 = a2 - 1 + a3;
  v8 = a2 - 1 + a4;
  v9 = 2 * a2 - 2;
  v10 = v9 - v7;
  v11 = v9 - v8;
  v12 = 2 * (v10 - v11) - 1;
  if (v11 >= v10)
  {
    v12 = 2 * (v11 - v10);
  }

  v13 = 2 * (a2 - 1 + a3);
  v14 = (2 * a2 - 1);
  if (v11 <= 2 * v10)
  {
    v11 = v12;
  }

  v15 = 2 * (v7 - v8) - 1;
  v16 = (a2 - 1 + a4) >= v7;
  v17 = 2 * (v8 - v7);
  if (!v16)
  {
    v17 = v15;
  }

  if (v13 >= v8)
  {
    v8 = v17;
  }

  if (v13 > (2 * a2 - 1))
  {
    v8 = v11;
  }

  v18 = v8;
  v19 = 3;
  while (1)
  {
    v20 = v6 + (1 << v19);
    result = sub_277AB9664(a1, v20 <= v18);
    if (v20 > v18)
    {
      break;
    }

    v19 = v5 + 3;
    v22 = 24 << v5++;
    v6 = v20;
    if (v22 + v20 >= v14)
    {
      v23 = (v14 - v20);
      if (v23 >= 2)
      {
        v24 = __clz(v23) ^ 0x1F;
        v25 = (2 << v24) - (v14 - v20);
        v26 = (v18 - v20);
        v27 = v26 - v25;
        if (v26 >= v25)
        {
          v31 = v25 + (v27 >> 1);
          v32 = v24 + 1;
          do
          {
            sub_277AB9664(a1, (v31 >> (v32-- - 2)) & 1);
          }

          while (v32 > 1);

          return sub_277AB9664(a1, v27 & 1);
        }

        else
        {
          v28 = v24 + 1;
          do
          {
            result = sub_277AB9664(a1, (v26 >> (v28-- - 2)) & 1);
          }

          while (v28 > 1);
        }
      }

      return result;
    }
  }

  if (v19 >= 1)
  {
    v29 = v18 - v6;
    v30 = v19 + 1;
    do
    {
      result = sub_277AB9664(a1, (v29 >> (v30-- - 2)) & 1);
    }

    while (v30 > 1);
  }

  return result;
}

uint64_t sub_277AB9950(int a1, int a2)
{
  pthread_once(&stru_280A72360, sub_2779985A8);
  pthread_once(&stru_280A72948, sub_277BB3CE8);
  pthread_once(&stru_280A72560, sub_277A588E0);
  pthread_once(&stru_280A72928, sub_277A7C138);
  result = pthread_once(&stru_280A72938, sub_277A89D18);
  if (a1 == 2)
  {
    if (a2 == 3)
    {
      return result;
    }
  }

  else
  {
    pthread_once(&stru_280A72350, sub_27798DBDC);
  }

  return pthread_once(&stru_280A72570, sub_277A588E4);
}

uint64_t sub_277AB9A60(uint64_t a1)
{
  v2 = (a1 + 270312);
  v83 = a1 + 101352;
  v84 = a1 + 245664;
  (*(a1 + 246224))(a1 + 246136, *(a1 + 245672), *(a1 + 245676), *(a1 + 395554));
  v3 = 0;
  v4 = (a1 + 246320);
  v5 = *(*v2 + 77);
  v6 = (a1 + 263376);
  v7 = (a1 + 246288);
  v8 = (a1 + 262160);
  v9 = (a1 + 246256);
  v10 = (a1 + 260944);
  v85 = a1;
  v11 = (a1 + 86672);
  do
  {
    if (*(v11 - 176))
    {
      v12 = v11 - 3;
      if (v3 == 1)
      {
        v13 = v7[1];
        *v12 = *v7;
        *(v11 - 2) = v13;
        v14 = v8;
      }

      else
      {
        v16 = v4[1];
        *v12 = *v4;
        *(v11 - 2) = v16;
        v14 = v6;
      }
    }

    else
    {
      v15 = v9[1];
      *(v11 - 3) = *v9;
      *(v11 - 2) = v15;
      v14 = v10;
    }

    memcpy(v11, v14, 0x4C0uLL);
    if (v5)
    {
      break;
    }

    v11 += 163;
  }

  while (v3++ < 2);
  *(v85 + 86488) = *(v84 + 532);
  *(v85 + 97216) = *v84;
  v18 = *v2;
  bzero((v85 + 97256), 0x1000uLL);
  *(v83 + 144) = *(v18 + 96);
  *(v83 + 140) = 0;
  *(v83 + 152) = 0;
  *(v83 + 2) = 0;
  *v83 = 0;
  if (*(*v85 + 376))
  {
    v19 = *(v18 + 36);
  }

  else
  {
    v20 = sub_277BA4DB8(v85 + 271104, *(v84 + 8), *(v84 + 12), *(*v85 + 51028));
    *(v18 + 28) = v20;
    *(v18 + 32) = byte_277C3F990[v20];
    v19 = byte_277C42228[v20];
    *(v18 + 36) = v19;
  }

  v21 = *(v84 + 488);
  v22 = -1;
  v23 = ~(-1 << v19);
  v24 = (v21 + v23) >> v19;
  v25 = *(v84 + 484);
  v26 = 0x1000u >> (v19 + 2);
  v2[8] = v26;
  do
  {
    ++v22;
  }

  while (v26 << v22 < v24);
  v2[16] = v22;
  if (v24 >= 64)
  {
    v27 = 64;
  }

  else
  {
    v27 = (v21 + v23) >> v19;
  }

  v28 = -1;
  do
  {
    ++v28;
  }

  while (1 << v28 < v27);
  v29 = (v25 + v23) >> v19;
  v2[18] = v28;
  if (v29 >= 64)
  {
    v30 = 64;
  }

  else
  {
    v30 = v29;
  }

  v31 = -1;
  do
  {
    ++v31;
  }

  while (1 << v31 < v30);
  result = 9437184;
  v2[19] = v31;
  v33 = v24 * v29;
  v34 = -1;
  do
  {
    ++v34;
  }

  while ((0x900000u >> (2 * (v19 + 2)) << v34) < v33);
  if (v34 <= v22)
  {
    v34 = v22;
  }

  v2[20] = v34;
  v35 = (v21 + (1 << v19) - 1) >> v19;
  if (v2[284] && v2[285])
  {
    if ((v2[286] & 0x80000000) != 0)
    {
      result = sub_277ABA140(v85 + 245616, v35, v2[282], 1);
      v21 = *(v84 + 488);
      v25 = *(v84 + 484);
      v47 = v2[11] == 0;
    }

    else
    {
      v2[11] = 0;
      if (v35 < 1)
      {
        LODWORD(v36) = 0;
      }

      else
      {
        v36 = 0;
        v37 = 0;
        for (i = 0; i < v35; i += v40)
        {
          v39 = v36;
          *(v85 + 270396 + 4 * v36) = i;
          v40 = v2[v37 + 286];
          result = v2[284];
          if (v37 + 1 < result)
          {
            ++v37;
          }

          else
          {
            v37 = 0;
          }

          if (v40 >= v26)
          {
            v40 = v26;
          }

          ++v36;
          if (v39 > 0x3E)
          {
            break;
          }
        }
      }

      v2[6] = v36;
      *(v85 + 4 * v36 + 270396) = v35;
      v47 = 1;
    }
  }

  else
  {
    v2[11] = 1;
    v41 = v35 * *(v84 + 32);
    v43 = v41 + 4;
    v42 = v41 < -4;
    v44 = v41 + 11;
    if (!v42)
    {
      v44 = v43;
    }

    v45 = v44 >> 3;
    v46 = -1;
    do
    {
      ++v46;
    }

    while (v26 << v46 <= v45);
    v47 = 0;
    if (v2[282] > v22)
    {
      v22 = v2[282];
    }

    if (v22 <= v46)
    {
      v22 = v46;
    }

    if (v22 >= v28)
    {
      v22 = v28;
    }

    v2[12] = v22;
  }

  v48 = *(v18 + 36);
  v49 = -1;
  v50 = ~(-1 << v48);
  v51 = (v21 + v50) >> v48;
  v52 = (v25 + v50) >> v48;
  v2[10] = -1;
  if (v47)
  {
    v53 = v2[6];
    do
    {
      ++v49;
    }

    while (1 << v49 < v53);
    v54 = v52 * v51;
    v2[12] = v49;
    if (v53 < 1)
    {
      v57 = 0x10000;
      v56 = 1;
    }

    else
    {
      v55 = 0;
      LODWORD(result) = v2[21];
      v56 = 1;
      v57 = 0x10000;
      do
      {
        v58 = *(v85 + 270400 + 4 * v55) - result;
        if (v56 <= v58)
        {
          v56 = v58;
        }

        if (v57 < v58)
        {
          v58 = v57;
        }

        v59 = v55 + 1;
        if (v55 < (v53 - 1))
        {
          v57 = v58;
        }

        result = *(v85 + 270400 + 4 * v55++);
      }

      while (v53 != v59);
    }

    v64 = v2[20];
    if (v64)
    {
      v65 = v64 + 1;
    }

    else
    {
      v65 = 0;
    }

    v66 = (v54 >> v65) / v56;
    if (v66 <= 1)
    {
      v66 = 1;
    }

    v2[9] = v66;
    if (v53 > 1)
    {
      v21 = v57 << v48;
LABEL_85:
      v2[10] = v21;
    }
  }

  else
  {
    v60 = v2[12];
    v61 = (v51 + (1 << v60) - 1) >> v60;
    if (v51 < 1)
    {
      LODWORD(v62) = 0;
    }

    else
    {
      v62 = 0;
      v63 = 0;
      do
      {
        *(v85 + 270396 + 4 * v62) = v63;
        v63 += v61;
        ++v62;
      }

      while (v63 < v51);
    }

    v2[6] = v62;
    *(v85 + 4 * v62 + 270396) = v51;
    v67 = (v2[20] - v60) & ~((v2[20] - v60) >> 31);
    v2[17] = v67;
    v66 = v52 >> v67;
    v2[9] = v66;
    v68 = *(v18 + 36);
    v69 = v61 << v68;
    if (v69 < v21)
    {
      v21 = v69;
    }

    v2[14] = v21;
    LOBYTE(v48) = v68;
    if (v62 > 1)
    {
      goto LABEL_85;
    }
  }

  v70 = v25 - 1;
  if (v47)
  {
    v71 = (v70 + (1 << v48)) >> v48;
    if ((v2[350] & 0x80000000) == 0)
    {
      if (v71 < 1)
      {
        LODWORD(v72) = 0;
      }

      else
      {
        v72 = 0;
        v73 = 0;
        for (j = 0; j < v71; j += v76)
        {
          v75 = v72;
          *(v85 + 270656 + 4 * v72) = j;
          v76 = v2[v73 + 350];
          if (v73 + 1 < v2[285])
          {
            ++v73;
          }

          else
          {
            v73 = 0;
          }

          if (v76 >= v66)
          {
            v76 = v66;
          }

          ++v72;
          if (v75 > 0x3E)
          {
            break;
          }
        }
      }

      v2[7] = v72;
      *(v85 + 4 * v72 + 270656) = v71;
      goto LABEL_115;
    }

    result = sub_277ABA140(v85 + 245616, v71, v2[283], 0);
    if (!v2[11])
    {
LABEL_115:
      v82 = -1;
      do
      {
        ++v82;
      }

      while (1 << v82 < v2[7]);
      v2[13] = v82;
      return result;
    }

    v25 = *(v84 + 484);
    v78 = (v25 + (1 << *(v18 + 36)) - 1) >> *(v18 + 36);
  }

  else
  {
    v77 = v2[283];
    if (v77 <= v2[17])
    {
      v77 = v2[17];
    }

    if (v77 >= v2[19])
    {
      v77 = v2[19];
    }

    v2[13] = v77;
    v78 = (v70 + (1 << *(v18 + 36))) >> *(v18 + 36);
  }

  v79 = (v78 + (1 << v2[13]) - 1) >> v2[13];
  if (v78 < 1)
  {
    LODWORD(v80) = 0;
  }

  else
  {
    v80 = 0;
    v81 = 0;
    do
    {
      *(v85 + 270656 + 4 * v80) = v81;
      v81 += v79;
      ++v80;
    }

    while (v81 < v78);
  }

  *(v85 + 4 * v80 + 270656) = v78;
  v2[7] = v80;
  if (v79 << *(v18 + 36) < v25)
  {
    v25 = v79 << *(v18 + 36);
  }

  v2[15] = v25;
  return result;
}

uint64_t sub_277ABA140(uint64_t result, int a2, char a3, int a4)
{
  *(result + 24740) = 0;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = a2 >> a3;
    v7 = *(result + 24728);
    v8 = 24780;
    if (!a4)
    {
      v8 = 25040;
    }

    v9 = result + v8;
    do
    {
      *(v9 + 4 * v4) = v5;
      if ((1 << a3) - a2 + (a2 >> a3 << a3) == v4)
      {
        ++v6;
      }

      if (v6 >= v7)
      {
        v10 = v7;
      }

      else
      {
        v10 = v6;
      }

      v5 += v10;
      v11 = v4 + 1;
      if (v5 >= a2)
      {
        break;
      }
    }

    while (v4++ < 0x3F);
  }

  v13 = 24720;
  if (!a4)
  {
    v13 = 24724;
  }

  v14 = 24780;
  if (!a4)
  {
    v14 = 25040;
  }

  *(result + v13) = v11;
  *(result + v14 + 4 * v11) = a2;
  return result;
}

int32x4_t (*sub_277ABA1EC(uint64_t a1, uint64_t a2, _BYTE *a3))(uint64_t, int, void *, int, int32x4_t *)
{
  v4 = a2;
  v6 = a1 + 49072;
  v7 = (a2 + 924);
  v8 = *(a2 + 1072);
  if (*(a1 + 49141) != v8)
  {
    *(a1 + 49141) = v8;
  }

  *(a1 + 49144) = *(a2 + 272);
  *(a1 + 49152) = *(a2 + 904);
  v9 = *(a2 + 912);
  *(a1 + 49149) = *(a2 + 292);
  *(a1 + 49176) = *(a2 + 916);
  v10 = *(a2 + 920);
  *(a1 + 49160) = v9;
  *(a1 + 49164) = v10;
  v11 = *(a2 + 946);
  *(a1 + 49320) = v11;
  v12 = *v7;
  *(a1 + 49324) = *v7;
  *(a1 + 49360) = *(a2 + 945);
  v13 = *(a2 + 944);
  *(a1 + 49340) = v13;
  if (v13 == 1)
  {
    *(a1 + 49344) = *(a2 + 940);
    v14 = 1;
    *(a1 + 51020) = 1;
    *(a1 + 49348) = 0xA00000010;
    *(a1 + 49356) = 10;
    v15 = xmmword_277BB7970;
LABEL_8:
    *(a1 + 49432) = v14;
    *(a1 + 49456) = v15;
    v16 = 8;
    goto LABEL_9;
  }

  v16 = 10;
  if (v11 && DWORD2(v12))
  {
    v14 = 0;
    v15 = xmmword_277BB7960;
    goto LABEL_8;
  }

LABEL_9:
  v17 = (a1 + 44136);
  *(a1 + 49472) = v16;
  v18 = *(a2 + 896) || *(a2 + 880) || *(a2 + 892) == 2 || *(a2 + 1012) > 0.0;
  *(a1 + 49181) = v18;
  if (*(a1 + 376))
  {
    goto LABEL_130;
  }

  v19 = *(a1 + 49100);
  v20 = sub_277BA4DB8(a2, *(a2 + 24), *(a2 + 28), *(a1 + 51028));
  v21 = 0;
  *(v6 + 28) = v20;
  *(v6 + 32) = byte_277C3F990[v20];
  *(v6 + 36) = byte_277C42228[v20];
  v22 = (v6 + 321);
  do
  {
    v22[v21] = (*(v4 + 1024) >> v21) & 1;
    ++v21;
  }

  while (v21 != 32);
  if (a3 && v19 != v20)
  {
    *a3 = 1;
  }

  v23 = 0;
  v24 = *(v6 + 1956);
  v25 = *(v6 + 1952);
  if (v25 > 1 || v24 > 1)
  {
    v27 = v25 * v24 - 1;
  }

  else
  {
    v27 = 0;
  }

  *(v6 + 112) = v27;
  v28 = (a1 + 23176);
  if (!*(v6 + 1944))
  {
    v23 = *(a1 + 85776) == 0;
  }

  if (*(v4 + 289))
  {
    v29 = 0;
    *(v6 + 57) = 0;
  }

  else
  {
    v30 = *(v4 + 12) == 1;
    *(v6 + 57) = v30;
    if (v30)
    {
      v29 = *(v4 + 293) ^ 1;
    }

    else
    {
      v29 = 0;
    }
  }

  *(v6 + 58) = v29 & 1;
  *(v6 + 56) = 2;
  *(v6 + 59) = 2;
  v31 = *(v4 + 295);
  *(v6 + 40) = v31;
  if (v29)
  {
    v31 = 0;
    *(v6 + 16) = 0;
    *(v6 + 40) = 0;
  }

  else
  {
    if (*(v4 + 864))
    {
      v32 = 0;
    }

    else
    {
      v32 = v23 & *(v4 + 290);
    }

    *(v6 + 16) = v32;
    if (v31)
    {
      v33 = 6;
      goto LABEL_40;
    }
  }

  v33 = -1;
LABEL_40:
  *(v6 + 44) = v33;
  v34 = *(v4 + 32);
  if (!v34)
  {
    v34 = *(v4 + 24);
  }

  v35 = *(v4 + 36);
  v36 = *(v4 + 28);
  if (!v35)
  {
    v35 = *(v4 + 28);
  }

  *(v6 + 8) = v34;
  *(v6 + 12) = v35;
  v37 = vcgt_s32(__PAIR64__(v35, v34), 0x100000001);
  *v6 = vsub_s32(vand_s8(vadd_s32(veor_s8(vclz_s32(vadd_s32(__PAIR64__(v35, v34), -1)), 0x1F0000001FLL), 0x100000001), v37), vmvn_s8(v37));
  *(v6 + 20) = 0xE0000000FLL;
  *(v6 + 64) = *(v4 + 294);
  v38 = *(v4 + 296);
  *(v6 + 48) = (v31 & *(v4 + 984));
  *(v6 + 52) = v31 & v38;
  *(v6 + 66) = *(v4 + 252);
  *(v6 + 67) = *(v4 + 284) != 0;
  *(v6 + 68) = *(v4 + 288);
  *(v6 + 65) = *(v4 + 964);
  *(v6 + 62) = *(v4 + 298);
  *(v6 + 63) = *(v4 + 985);
  *(v6 + 61) = *(v4 + 967);
  *(v6 + 60) = *(v4 + 968);
  v39 = *(v4 + 24);
  v40 = *v4;
  v41 = v36 * v39;
  v73 = v4;
  if (v41 <= 147456)
  {
    v43 = v40 * v41;
    if (v36 <= 1152 && v39 <= 2048 && v43 <= 4423680.0)
    {
      v42 = 0;
      goto LABEL_106;
    }

LABEL_57:
    if (v36 <= 1584 && v39 <= 2816 && v43 <= 8363520.0)
    {
      v42 = 1;
      goto LABEL_106;
    }

LABEL_63:
    if (v36 <= 2448 && v39 <= 4352 && v43 <= 19975680.0)
    {
      v42 = 4;
      goto LABEL_106;
    }

LABEL_68:
    if (v36 <= 3096 && v39 <= 5504 && v43 <= 31950720.0)
    {
      v42 = 5;
      goto LABEL_106;
    }

LABEL_73:
    if (v36 <= 3456 && v39 <= 6144 && v43 <= 70778880.0)
    {
      v42 = 8;
      goto LABEL_106;
    }

    if (v36 <= 3456 && v39 <= 6144 && v43 <= 141557760.0)
    {
      v42 = 9;
      goto LABEL_106;
    }

    goto LABEL_81;
  }

  if (v41 <= 0x44100)
  {
    v43 = v40 * v41;
    goto LABEL_57;
  }

  if (v41 <= 0xA2900)
  {
    v43 = v40 * v41;
    goto LABEL_63;
  }

  if (v41 <= 0x104040)
  {
    v43 = v40 * v41;
    goto LABEL_68;
  }

  if (v41 <= 0x240000)
  {
    v43 = v40 * v41;
    goto LABEL_73;
  }

  if (v41 > 0x880000)
  {
    if (v41 > 0x2200000)
    {
LABEL_51:
      v42 = 31;
      goto LABEL_106;
    }

    v40 = v40 * v41;
    goto LABEL_94;
  }

LABEL_81:
  v40 = v40 * v41;
  if (v36 <= 4352 && v39 <= 0x2000 && v40 <= 267386880.0)
  {
    v42 = 12;
    goto LABEL_106;
  }

  if (v36 <= 4352 && v39 <= 0x2000 && v40 <= 534773760.0)
  {
    v42 = 13;
    goto LABEL_106;
  }

  if (v36 <= 4352 && v39 <= 0x2000 && v40 <= 1069547520.0)
  {
    v42 = 14;
    goto LABEL_106;
  }

LABEL_94:
  if (v36 > 8704 || v39 > 0x4000 || v40 > 1069547520.0)
  {
    if (v36 > 8704 || v39 > 0x4000 || v40 > 2139095040.0)
    {
      if (v36 > 8704 || v39 > 0x4000 || v40 > 4278190080.0)
      {
        goto LABEL_51;
      }

      v42 = 18;
    }

    else
    {
      v42 = 17;
    }
  }

  else
  {
    v42 = 16;
  }

LABEL_106:
  v44 = (v6 + 368);
  v45 = 32;
  do
  {
    v47 = *v28++;
    v46 = v47;
    v48 = v47;
    if (v42 >= v47 || v48 >= 0x1C)
    {
      v46 = v42;
    }

    *(v22 - 32) = v46;
    if (*v22)
    {
      v50 = &unk_277BC0B5C;
    }

    else
    {
      v50 = &unk_277BC0BFC;
    }

    v51 = dword_277BC0BDC[*(v6 + 69)] * v50[v46];
    v52 = 1000 * v51;
    *v44 = 1000 * v51;
    if (!v51)
    {
      v53 = v28;
      sub_2779F5C10(a1 + 51032, 5, "AV1 does not support this combination of profile, level, and tier.", v40);
      v28 = v53;
      v52 = *v44;
    }

    v44[1] = v52;
    v44 += 6;
    ++v22;
    --v45;
  }

  while (v45);
  v54 = *(v6 + 112);
  if (v54)
  {
    v55 = *(v6 + 1956);
    v4 = v73;
    if (v55)
    {
      v56 = 0;
      LODWORD(v57) = 0;
      v58 = *(v6 + 1952);
      do
      {
        if (v58)
        {
          v59 = 0;
          v60 = 0;
          v57 = v57;
          do
          {
            *(a1 + 49188 + 4 * v57++) = ~(-1 << (v58 + v59)) | (~(-1 << (*(v6 + 1956) - v56)) << 8);
            ++v60;
            v58 = *(v6 + 1952);
            --v59;
          }

          while (v60 < v58);
          v55 = *(v6 + 1956);
        }

        ++v56;
      }

      while (v56 < v55);
    }

    LOBYTE(v54) = 1;
  }

  else
  {
    *(v6 + 116) = 0;
    v4 = v73;
  }

  *(v6 + 244) = v54;
  v11 = *(v6 + 248);
LABEL_130:
  v61 = v11 & 1;
  if (*(v6 + 58))
  {
    v61 = 0;
  }

  *(v6 + 248) = v61;
  result = sub_277ABAA18(a1);
  v63 = *(v4 + 120);
  v65 = *(v4 + 128);
  v64 = *(v4 + 136);
  v66 = v63 * v64 / 1000;
  if (v64 >= 0)
  {
    v67 = *(v4 + 136);
  }

  else
  {
    v67 = v64 + 7;
  }

  v30 = v63 == 0;
  v68 = v67 >> 3;
  if (!v30)
  {
    v68 = v66;
  }

  *v17 = *(v4 + 112) * v64 / 1000;
  v17[1] = v68;
  v69 = v65 * v64 / 1000;
  if (v64 >= 0)
  {
    v70 = v64;
  }

  else
  {
    v70 = v64 + 7;
  }

  v71 = v70 >> 3;
  if (!v65)
  {
    v69 = v71;
  }

  v17[2] = v69;
  v72 = v17[29];
  if (v72 >= v69)
  {
    v72 = v69;
  }

  v17[29] = v72;
  if (v17[25] < v69)
  {
    v69 = v17[25];
  }

  v17[25] = v69;
  return result;
}

int32x4_t (*sub_277ABAA18(int32x4_t (*result)(uint64_t, int, void *, int, int32x4_t *)))(uint64_t, int, void *, int, int32x4_t *)
{
  v347 = result;
  v1 = (result + 49144);
  if (*(result + 49148))
  {
    result = *v1;
    v339 = sub_277ABF55C;
    v338 = sub_277ABF5C0;
    v346 = sub_277ABF708;
    v345 = sub_277ABF7EC;
    v344 = sub_277ABF850;
    v343 = sub_277ABF988;
    v342 = sub_277ABF9EC;
    v341 = sub_277ABFA28;
    v340 = sub_277ABFA8C;
    v315 = sub_277ABFAC8;
    v314 = sub_277ABFB2C;
    v313 = sub_277ABFC10;
    v312 = sub_277ABFC74;
    v311 = sub_277ABFD58;
    v310 = sub_277ABFDBC;
    v309 = sub_277ABFEA0;
    v308 = sub_277ABFF04;
    v307 = sub_277AC003C;
    v306 = sub_277AC00A0;
    v305 = sub_277AC01D8;
    v304 = sub_277AC023C;
    v303 = sub_277AC0374;
    v302 = sub_277AC03D8;
    v301 = sub_277AC0414;
    v300 = sub_277AC0478;
    v299 = sub_277AC04B4;
    v298 = sub_277AC0518;
    v297 = sub_277AC0554;
    v296 = sub_277AC05B8;
    v295 = sub_277AC05F4;
    v294 = sub_277AC0658;
    v293 = sub_277AC0694;
    v292 = sub_277AC06F8;
    v332 = sub_277AC0734;
    v330 = sub_277AC0798;
    v327 = sub_277AC07D4;
    v325 = sub_277AC0838;
    v317 = sub_277B6C02C;
    v337 = sub_277A6C1F4;
    v336 = sub_277AC0874;
    v316 = sub_277B6C524;
    v335 = sub_277A6C4AC;
    v334 = sub_277AC09C0;
    v333 = sub_277B6C424;
    v331 = sub_277A6C424;
    v329 = sub_277AC09FC;
    v328 = sub_277B6D52C;
    v326 = sub_277A6C86C;
    v324 = sub_277AC0B18;
    v323 = sub_277B6D084;
    v322 = sub_277A6C7AC;
    v321 = sub_277AC0B54;
    v320 = sub_277B6E898;
    v319 = sub_277A6CBFC;
    v318 = sub_277AC0B90;
    v276 = sub_277B6BE3C;
    v274 = sub_277A6C0C4;
    v272 = sub_277AC0BCC;
    v270 = sub_277B6C12C;
    v269 = sub_277A6C28C;
    v268 = sub_277AC0D18;
    v267 = sub_277B6BF34;
    v266 = sub_277A6C15C;
    v265 = sub_277AC0E34;
    v264 = sub_277B6C224;
    v263 = sub_277A6C314;
    v262 = sub_277AC0F80;
    v261 = sub_277B6C64C;
    v260 = sub_277A6C56C;
    v259 = sub_277AC109C;
    v258 = sub_277B6C324;
    v257 = sub_277A6C39C;
    v256 = sub_277AC10D8;
    v255 = sub_277B6C774;
    v254 = sub_277A6C62C;
    v253 = sub_277AC11F4;
    v252 = sub_277B6CBFC;
    v251 = sub_277A6C6EC;
    v250 = sub_277AC1230;
    v249 = sub_277B6DA00;
    v248 = sub_277A6C950;
    v247 = sub_277AC126C;
    v246 = sub_277B6DEBC;
    v245 = sub_277A6CA34;
    v244 = sub_277AC12A8;
    v243 = sub_277B6E398;
    v242 = sub_277A6CB18;
    v240 = sub_277AC12E4;
    v238 = sub_277B6ED74;
    v236 = sub_277A6CCE0;
    v234 = sub_277AC1320;
    v233 = sub_277B6F274;
    v232 = sub_277A6CDC4;
    v231 = sub_277AC135C;
    v230 = sub_277B6F774;
    v229 = sub_277A6CEA8;
    v228 = sub_277AC1398;
    v287 = sub_277B6FC74;
    v291 = sub_277A6CF8C;
    v290 = sub_277AC13D4;
    v283 = sub_277B70174;
    v289 = sub_277A6D070;
    v288 = sub_277AC1410;
    v286 = sub_277B5EAB8;
    v285 = sub_277AC144C;
    v284 = sub_277B5EDB0;
    v282 = sub_277AC1488;
    v281 = sub_277B5EC18;
    v280 = sub_277AC14C4;
    v279 = sub_277B6006C;
    v278 = sub_277AC1500;
    v277 = sub_277B5F6E4;
    v275 = sub_277AC153C;
    v273 = sub_277B609C8;
    v271 = sub_277AC1578;
    v215 = sub_277B57AF0;
    v213 = sub_277AC15B4;
    v211 = sub_277B57DA0;
    v209 = sub_277AC15F0;
    v207 = sub_277B57C48;
    v206 = sub_277AC162C;
    v205 = sub_277B57F38;
    v203 = sub_277AC1668;
    v202 = sub_277B58268;
    v201 = sub_277AC16A4;
    v200 = sub_277B580D0;
    v199 = sub_277AC16E0;
    v198 = sub_277B58B9C;
    v197 = sub_277AC171C;
    v196 = sub_277B594D0;
    v195 = sub_277AC1758;
    v194 = sub_277B59E04;
    v193 = sub_277AC1794;
    v192 = sub_277B5A748;
    v191 = sub_277AC17D0;
    v190 = sub_277B5B0DC;
    v189 = sub_277AC180C;
    v188 = sub_277B5BA80;
    v187 = sub_277AC1848;
    v186 = sub_277B5C424;
    v185 = sub_277AC1884;
    v184 = sub_277B5CDC8;
    v183 = sub_277AC18C0;
    v241 = sub_277B5D76C;
    v239 = sub_277AC18FC;
    v237 = sub_277B5E110;
    v235 = sub_277AC1938;
    v182 = sub_277B7DAB0;
    v181 = sub_277AC1974;
    v180 = sub_277AC19C8;
    v179 = sub_277AC1A2C;
    v178 = sub_277B486AC;
    v177 = sub_277B36740;
    v176 = sub_277995F60;
    v175 = sub_277AC1A90;
    v174 = sub_277AC1ACC;
    v226 = sub_277B7E28C;
    v227 = sub_277AC1B08;
    v225 = sub_277AC1B5C;
    v224 = sub_277AC1BC0;
    v223 = sub_277B48F18;
    v222 = sub_277B36F4C;
    v221 = sub_277995FE8;
    v220 = sub_277AC1C24;
    v173 = sub_277AC1C60;
    v204 = sub_277B7EA68;
    v219 = sub_277AC1C9C;
    v218 = sub_277AC1CF0;
    v217 = sub_277AC1D54;
    v216 = sub_277B49784;
    v214 = sub_277B37758;
    v212 = sub_277996070;
    v210 = sub_277AC1DB8;
    v208 = sub_277AC1DF4;
    v172 = sub_277B796F0;
    v171 = sub_277AC1E30;
    v170 = sub_277AC1E84;
    v169 = sub_277AC1EE8;
    v168 = sub_277B43F4C;
    v167 = sub_277B322B0;
    v166 = sub_2779958B4;
    v165 = sub_277AC1F4C;
    v164 = sub_277AC2044;
    v163 = sub_277B79808;
    v162 = sub_277AC210C;
    v161 = sub_277AC2160;
    v160 = sub_277AC21C4;
    v159 = sub_277B44050;
    v158 = sub_277B323A8;
    v157 = sub_27799593C;
    v156 = sub_277AC2228;
    v155 = sub_277AC2320;
    v154 = sub_277B79920;
    v153 = sub_277AC23E8;
    v152 = sub_277AC243C;
    v151 = sub_277AC24A0;
    v150 = sub_277B44154;
    v149 = sub_277B324A0;
    v148 = sub_2779959C4;
    v147 = sub_277AC2504;
    v146 = sub_277AC2608;
    v145 = sub_277B79AF8;
    v144 = sub_277AC26D0;
    v143 = sub_277AC2724;
    v142 = sub_277AC2788;
    v141 = sub_277B442A4;
    v140 = sub_277B325E4;
    v139 = sub_277995A34;
    v138 = sub_277AC27EC;
    v137 = sub_277AC28F0;
    v136 = sub_277B79C48;
    v135 = sub_277AC29B8;
    v134 = sub_277AC2A0C;
    v133 = sub_277AC2A70;
    v132 = sub_277B443FC;
    v131 = sub_277B32730;
    v130 = sub_277995AA4;
    v129 = sub_277AC2AD4;
    v128 = sub_277AC2BD8;
    v127 = sub_277B79D98;
    v126 = sub_277AC2CA0;
    v125 = sub_277AC2CF4;
    v124 = sub_277AC2D58;
    v123 = sub_277B44554;
    v122 = sub_277B3287C;
    v121 = sub_277995B14;
    v120 = sub_277AC2DBC;
    v119 = sub_277AC2F20;
    v118 = sub_277B7A510;
    v117 = sub_277AC303C;
    v116 = sub_277AC3090;
    v115 = sub_277AC30F4;
    v114 = sub_277B44D3C;
    v113 = sub_277B33028;
    v112 = sub_277995BA0;
    v111 = sub_277AC3158;
    v110 = sub_277AC32BC;
    v109 = sub_277B7D2D4;
    v108 = sub_277AC33D8;
    v107 = sub_277AC342C;
    v105 = sub_277AC3490;
    v102 = sub_277B47E40;
    v100 = sub_277B35F34;
    v98 = sub_277995ED8;
    v96 = sub_277AC34F4;
    v94 = sub_277AC3530;
    v92 = sub_277B7BB80;
    v90 = sub_277AC356C;
    v89 = sub_277AC35C0;
    v87 = sub_277AC3624;
    v84 = sub_277B4653C;
    v82 = sub_277B34740;
    v80 = sub_277995D40;
    v78 = sub_277AC3688;
    v76 = sub_277AC36C4;
    v74 = sub_277B7C31C;
    v72 = sub_277AC3858;
    v70 = sub_277AC38AC;
    v68 = sub_277AC3910;
    v66 = sub_277B46D68;
    v64 = sub_277B34F1C;
    v62 = sub_277995DC8;
    v60 = sub_277AC3974;
    v58 = sub_277AC39B0;
    v56 = sub_277B7CAF8;
    v54 = sub_277AC3B44;
    v52 = sub_277AC3B98;
    v50 = sub_277AC3BFC;
    v48 = sub_277B475D4;
    v46 = sub_277B35728;
    v44 = sub_277995E50;
    v42 = sub_277AC3C60;
    v40 = sub_277AC3C9C;
    v38 = sub_277B7AC88;
    v36 = sub_277AC3CD8;
    v34 = sub_277AC3D2C;
    v32 = sub_277AC3D90;
    v30 = sub_277B45534;
    v28 = sub_277B337D4;
    v2 = sub_277995C2C;
    v3 = sub_277AC3DF4;
    v4 = sub_277AC3F58;
    v5 = sub_277B7B400;
    v6 = sub_277AC4074;
    v7 = sub_277AC40C8;
    v8 = sub_277AC412C;
    v9 = sub_277B45D2C;
    v10 = sub_277B33F80;
    v11 = sub_277995CB8;
    v12 = sub_277AC4190;
    v13 = sub_277AC41CC;
    v104 = sub_277B7F248;
    v106 = sub_277AC4360;
    v103 = sub_277AC43B4;
    v101 = sub_277AC4418;
    v99 = sub_277B49FF4;
    v97 = sub_277B37F68;
    v95 = sub_277997618;
    v93 = sub_277AC447C;
    v91 = sub_277AC4574;
    v86 = sub_277B7F4B8;
    v88 = sub_277AC463C;
    v85 = sub_277AC4690;
    v83 = sub_277AC46F4;
    v81 = sub_277B4A258;
    v79 = sub_277B381B4;
    v77 = sub_277997710;
    v75 = sub_277AC4758;
    v73 = sub_277AC48BC;
    v71 = sub_277B7F368;
    v69 = sub_277AC49D8;
    v67 = sub_277AC4A2C;
    v65 = sub_277AC4A90;
    v63 = sub_277B4A100;
    v61 = sub_277B38068;
    v59 = sub_2779976A0;
    v57 = sub_277AC4AF4;
    v55 = sub_277AC4BF8;
    v53 = sub_277B803C4;
    v51 = sub_277AC4CCC;
    v49 = sub_277AC4D20;
    v47 = sub_277AC4D84;
    v45 = sub_277B4B264;
    v43 = sub_277B39128;
    v41 = sub_277997828;
    v39 = sub_277AC4DE8;
    v37 = sub_277AC4E24;
    v35 = sub_277B7FC30;
    v33 = sub_277AC4FB8;
    v31 = sub_277AC500C;
    v29 = sub_277AC5070;
    v14 = sub_277B4AA50;
    v15 = sub_277B38960;
    v16 = sub_27799779C;
    v17 = sub_277AC50D4;
    v18 = sub_277AC5238;
    v19 = sub_277B80B44;
    v20 = sub_277AC5354;
    v21 = sub_277AC53A8;
    v22 = sub_277AC540C;
    v23 = sub_277B4BA5C;
    v24 = sub_277B39900;
    v25 = sub_2779978B0;
    v26 = sub_277AC5470;
    v27 = sub_277AC54AC;
    switch(result)
    {
      case 8:
        result = sub_277ABF6A4;
        break;
      case 0xC:
        v339 = sub_277ABF560;
        v338 = sub_277ABF60C;
        result = sub_277ABF6A8;
        v346 = sub_277ABF754;
        v345 = sub_277ABF7F0;
        v344 = sub_277ABF8B8;
        v343 = sub_277ABF98C;
        v342 = sub_277ABF9F0;
        v341 = sub_277ABFA2C;
        v340 = sub_277ABFA90;
        v315 = sub_277ABFACC;
        v314 = sub_277ABFB78;
        v313 = sub_277ABFC14;
        v312 = sub_277ABFCC0;
        v311 = sub_277ABFD5C;
        v310 = sub_277ABFE08;
        v309 = sub_277ABFEA4;
        v308 = sub_277ABFF6C;
        v307 = sub_277AC0040;
        v306 = sub_277AC0108;
        v305 = sub_277AC01DC;
        v304 = sub_277AC02A4;
        v303 = sub_277AC0378;
        v302 = sub_277AC03DC;
        v301 = sub_277AC0418;
        v300 = sub_277AC047C;
        v299 = sub_277AC04B8;
        v298 = sub_277AC051C;
        v297 = sub_277AC0558;
        v296 = sub_277AC05BC;
        v295 = sub_277AC05F8;
        v294 = sub_277AC065C;
        v293 = sub_277AC0698;
        v292 = sub_277AC06FC;
        v332 = sub_277AC0738;
        v330 = sub_277AC079C;
        v327 = sub_277AC07D8;
        v325 = sub_277AC083C;
        v317 = sub_277B750A4;
        v337 = sub_277A6E4F4;
        v336 = sub_277AC08E0;
        v316 = sub_277B7559C;
        v335 = sub_277A6E810;
        v334 = sub_277AC09C4;
        v333 = sub_277B7549C;
        v331 = sub_277A6E774;
        v329 = sub_277AC0A58;
        v328 = sub_277B765A4;
        v326 = sub_277A6EC34;
        v324 = sub_277AC0B1C;
        v323 = sub_277B760FC;
        v322 = sub_277A6EB60;
        v321 = sub_277AC0B58;
        v320 = sub_277B77910;
        v319 = sub_277A6F024;
        v318 = sub_277AC0B94;
        v276 = sub_277B74EB4;
        v274 = sub_277A6E39C;
        v272 = sub_277AC0C38;
        v270 = sub_277B751A4;
        v269 = sub_277A6E5A0;
        v268 = sub_277AC0D74;
        v267 = sub_277B74FAC;
        v266 = sub_277A6E448;
        v265 = sub_277AC0EA0;
        v264 = sub_277B7529C;
        v263 = sub_277A6E63C;
        v262 = sub_277AC0FDC;
        v261 = sub_277B756C4;
        v260 = sub_277A6E8E4;
        v259 = sub_277AC10A0;
        v258 = sub_277B7539C;
        v257 = sub_277A6E6D8;
        v256 = sub_277AC1134;
        v255 = sub_277B757EC;
        v254 = sub_277A6E9B8;
        v253 = sub_277AC11F8;
        v252 = sub_277B75C74;
        v251 = sub_277A6EA8C;
        v250 = sub_277AC1234;
        v249 = sub_277B76A78;
        v248 = sub_277A6ED2C;
        v247 = sub_277AC1270;
        v246 = sub_277B76F34;
        v245 = sub_277A6EE24;
        v244 = sub_277AC12AC;
        v243 = sub_277B77410;
        v242 = sub_277A6EF1C;
        v240 = sub_277AC12E8;
        v238 = sub_277B77DEC;
        v236 = sub_277A6F11C;
        v234 = sub_277AC1324;
        v233 = sub_277B782EC;
        v232 = sub_277A6F224;
        v231 = sub_277AC1360;
        v230 = sub_277B787EC;
        v229 = sub_277A6F358;
        v228 = sub_277AC139C;
        v287 = sub_277B78CEC;
        v291 = sub_277A6F48C;
        v290 = sub_277AC13D8;
        v283 = sub_277B791EC;
        v289 = sub_277A6F5C0;
        v288 = sub_277AC1414;
        v286 = sub_277B6A770;
        v285 = sub_277AC1450;
        v284 = sub_277B6AA20;
        v282 = sub_277AC148C;
        v281 = sub_277B6A8D0;
        v280 = sub_277AC14C8;
        v279 = sub_277B6B3F0;
        v278 = sub_277AC1504;
        v277 = sub_277B6AEE4;
        v275 = sub_277AC1540;
        v273 = sub_277B6B900;
        v271 = sub_277AC157C;
        v215 = sub_277B668CC;
        v213 = sub_277AC15B8;
        v211 = sub_277B66B7C;
        v209 = sub_277AC15F4;
        v207 = sub_277B66A24;
        v206 = sub_277AC1630;
        v205 = sub_277B66CCC;
        v203 = sub_277AC166C;
        v202 = sub_277B66F6C;
        v201 = sub_277AC16A8;
        v200 = sub_277B66E1C;
        v199 = sub_277AC16E4;
        v198 = sub_277B67430;
        v197 = sub_277AC1720;
        v196 = sub_277B678F4;
        v195 = sub_277AC175C;
        v194 = sub_277B67DB8;
        v193 = sub_277AC1798;
        v192 = sub_277B682B0;
        v191 = sub_277AC17D4;
        v190 = sub_277B687EC;
        v189 = sub_277AC1810;
        v188 = sub_277B68D2C;
        v187 = sub_277AC184C;
        v186 = sub_277B6926C;
        v185 = sub_277AC1888;
        v184 = sub_277B697AC;
        v183 = sub_277AC18C4;
        v241 = sub_277B69CEC;
        v239 = sub_277AC1900;
        v237 = sub_277B6A22C;
        v235 = sub_277AC193C;
        v182 = sub_277B89278;
        v181 = sub_277AC1980;
        v180 = sub_277AC19CC;
        v179 = sub_277AC1A30;
        v178 = sub_277B55110;
        v177 = sub_277B41B4C;
        v176 = sub_2779973A8;
        v175 = sub_277AC1A94;
        v174 = sub_277AC1AD0;
        v226 = sub_277B897A8;
        v227 = sub_277AC1B14;
        v225 = sub_277AC1B60;
        v224 = sub_277AC1BC4;
        v223 = sub_277B556EC;
        v222 = sub_277B42050;
        v221 = sub_277997478;
        v220 = sub_277AC1C28;
        v173 = sub_277AC1C64;
        v204 = sub_277B89CD8;
        v219 = sub_277AC1CA8;
        v218 = sub_277AC1CF4;
        v217 = sub_277AC1D58;
        v216 = sub_277B55CC8;
        v214 = sub_277B42554;
        v212 = sub_277997548;
        v210 = sub_277AC1DBC;
        v208 = sub_277AC1DF8;
        v172 = sub_277B86558;
        v171 = sub_277AC1E3C;
        v170 = sub_277AC1E88;
        v169 = sub_277AC1EEC;
        v168 = sub_277B51EBC;
        v167 = sub_277B3F014;
        v166 = sub_277996B04;
        v165 = sub_277AC1F9C;
        v164 = sub_277AC2084;
        v163 = sub_277B86670;
        v162 = sub_277AC2118;
        v161 = sub_277AC2164;
        v160 = sub_277AC21C8;
        v159 = sub_277B51FC0;
        v158 = sub_277B3F10C;
        v157 = sub_277996BAC;
        v156 = sub_277AC2278;
        v155 = sub_277AC2360;
        v154 = sub_277B86788;
        v153 = sub_277AC23F4;
        v152 = sub_277AC2440;
        v151 = sub_277AC24A4;
        v150 = sub_277B520C4;
        v149 = sub_277B3F204;
        v148 = sub_277996C54;
        v147 = sub_277AC2558;
        v146 = sub_277AC2648;
        v145 = sub_277B86884;
        v144 = sub_277AC26DC;
        v143 = sub_277AC2728;
        v142 = sub_277AC278C;
        v141 = sub_277B521C8;
        v140 = sub_277B3F2FC;
        v139 = sub_277996CE0;
        v138 = sub_277AC2840;
        v137 = sub_277AC2930;
        v136 = sub_277B86988;
        v135 = sub_277AC29C4;
        v134 = sub_277AC2A10;
        v133 = sub_277AC2A74;
        v132 = sub_277B522D4;
        v131 = sub_277B3F3FC;
        v130 = sub_277996D6C;
        v129 = sub_277AC2B28;
        v128 = sub_277AC2C18;
        v127 = sub_277B86A8C;
        v126 = sub_277AC2CAC;
        v125 = sub_277AC2CF8;
        v124 = sub_277AC2D5C;
        v123 = sub_277B523E0;
        v122 = sub_277B3F4FC;
        v121 = sub_277996DF8;
        v120 = sub_277AC2E30;
        v119 = sub_277AC2F7C;
        v118 = sub_277B86F64;
        v117 = sub_277AC3048;
        v116 = sub_277AC3094;
        v115 = sub_277AC30F8;
        v114 = sub_277B52950;
        v113 = sub_277B3F988;
        v112 = sub_277996EA0;
        v111 = sub_277AC31CC;
        v110 = sub_277AC3318;
        v109 = sub_277B88D48;
        v108 = sub_277AC33E4;
        v107 = sub_277AC3430;
        v105 = sub_277AC3494;
        v102 = sub_277B54B34;
        v100 = sub_277B41648;
        v98 = sub_2779972D8;
        v96 = sub_277AC34F8;
        v94 = sub_277AC3534;
        v92 = sub_277B87DF0;
        v90 = sub_277AC3578;
        v89 = sub_277AC35C4;
        v87 = sub_277AC3628;
        v84 = sub_277B539D8;
        v82 = sub_277B40760;
        v80 = sub_277997094;
        v78 = sub_277AC368C;
        v76 = sub_277AC3748;
        v74 = sub_277B882E8;
        v72 = sub_277AC3864;
        v70 = sub_277AC38B0;
        v68 = sub_277AC3914;
        v66 = sub_277B53F7C;
        v64 = sub_277B40C40;
        v62 = sub_277997138;
        v60 = sub_277AC3978;
        v58 = sub_277AC3A34;
        v56 = sub_277B88818;
        v54 = sub_277AC3B50;
        v52 = sub_277AC3B9C;
        v50 = sub_277AC3C00;
        v48 = sub_277B54558;
        v46 = sub_277B41144;
        v44 = sub_277997208;
        v42 = sub_277AC3C64;
        v40 = sub_277AC3CA0;
        v38 = sub_277B8743C;
        v36 = sub_277AC3CE4;
        v34 = sub_277AC3D30;
        v32 = sub_277AC3D94;
        v30 = sub_277B52ED0;
        v28 = sub_277B3FE14;
        v2 = sub_277996F48;
        v3 = sub_277AC3E68;
        v4 = sub_277AC3FB4;
        v5 = sub_277B87914;
        v6 = sub_277AC4080;
        v7 = sub_277AC40CC;
        v8 = sub_277AC4130;
        v9 = sub_277B53450;
        v10 = sub_277B402A0;
        v11 = sub_277996FF0;
        v12 = sub_277AC4194;
        v13 = sub_277AC4250;
        v104 = sub_277B8A20C;
        v106 = sub_277AC436C;
        v103 = sub_277AC43B8;
        v101 = sub_277AC441C;
        v99 = sub_277B562A8;
        v97 = sub_277B42A5C;
        v95 = sub_277997D04;
        v93 = sub_277AC44CC;
        v91 = sub_277AC45B4;
        v86 = sub_277B8A430;
        v88 = sub_277AC4648;
        v85 = sub_277AC4694;
        v83 = sub_277AC46F8;
        v81 = sub_277B564C0;
        v79 = sub_277B42C5C;
        v77 = sub_277997E38;
        v75 = sub_277AC47CC;
        v73 = sub_277AC4918;
        v71 = sub_277B8A32C;
        v69 = sub_277AC49E4;
        v67 = sub_277AC4A30;
        v65 = sub_277AC4A94;
        v63 = sub_277B563B4;
        v61 = sub_277B42B5C;
        v59 = sub_277997DAC;
        v57 = sub_277AC4B48;
        v55 = sub_277AC4C3C;
        v53 = sub_277B8ADFC;
        v51 = sub_277AC4CD8;
        v49 = sub_277AC4D24;
        v47 = sub_277AC4D88;
        v45 = sub_277B56FDC;
        v43 = sub_277B43594;
        v41 = sub_277997F88;
        v39 = sub_277AC4DEC;
        v37 = sub_277AC4EA8;
        v35 = sub_277B8A908;
        v33 = sub_277AC4FC4;
        v31 = sub_277AC5010;
        v29 = sub_277AC5074;
        v14 = sub_277B56A40;
        v15 = sub_277B430E8;
        v16 = sub_277997EE0;
        v17 = sub_277AC5148;
        v18 = sub_277AC5294;
        v19 = sub_277B8B2D8;
        v20 = sub_277AC5360;
        v21 = sub_277AC53AC;
        v22 = sub_277AC5410;
        v23 = sub_277B5754C;
        v24 = sub_277B43A6C;
        v25 = sub_27799802C;
        v26 = sub_277AC5474;
        v27 = sub_277AC54B0;
        break;
      case 0xA:
        v339 = sub_277ABF590;
        v338 = sub_277ABF658;
        result = sub_277ABF6D8;
        v346 = sub_277ABF7A0;
        v345 = sub_277ABF820;
        v344 = sub_277ABF920;
        v343 = sub_277ABF9BC;
        v342 = sub_277ABFA0C;
        v341 = sub_277ABFA5C;
        v340 = sub_277ABFAAC;
        v315 = sub_277ABFAFC;
        v314 = sub_277ABFBC4;
        v313 = sub_277ABFC44;
        v312 = sub_277ABFD0C;
        v311 = sub_277ABFD8C;
        v310 = sub_277ABFE54;
        v309 = sub_277ABFED4;
        v308 = sub_277ABFFD4;
        v307 = sub_277AC0070;
        v306 = sub_277AC0170;
        v305 = sub_277AC020C;
        v304 = sub_277AC030C;
        v303 = sub_277AC03A8;
        v302 = sub_277AC03F8;
        v301 = sub_277AC0448;
        v300 = sub_277AC0498;
        v299 = sub_277AC04E8;
        v298 = sub_277AC0538;
        v297 = sub_277AC0588;
        v296 = sub_277AC05D8;
        v295 = sub_277AC0628;
        v294 = sub_277AC0678;
        v293 = sub_277AC06C8;
        v292 = sub_277AC0718;
        v332 = sub_277AC0768;
        v330 = sub_277AC07B8;
        v327 = sub_277AC0808;
        v325 = sub_277AC0858;
        v317 = sub_277B70868;
        v337 = sub_277A6D2AC;
        v336 = sub_277AC0950;
        v316 = sub_277B70D60;
        v335 = sub_277A6D5C8;
        v334 = sub_277AC09E0;
        v333 = sub_277B70C60;
        v331 = sub_277A6D52C;
        v329 = sub_277AC0AB8;
        v328 = sub_277B71D68;
        v326 = sub_277A6D9EC;
        v324 = sub_277AC0B38;
        v323 = sub_277B718C0;
        v322 = sub_277A6D918;
        v321 = sub_277AC0B74;
        v320 = sub_277B730D4;
        v319 = sub_277A6DDCC;
        v318 = sub_277AC0BB0;
        v276 = sub_277B70678;
        v274 = sub_277A6D154;
        v272 = sub_277AC0CA8;
        v270 = sub_277B70968;
        v269 = sub_277A6D358;
        v268 = sub_277AC0DD4;
        v267 = sub_277B70770;
        v266 = sub_277A6D200;
        v265 = sub_277AC0F10;
        v264 = sub_277B70A60;
        v263 = sub_277A6D3F4;
        v262 = sub_277AC103C;
        v261 = sub_277B70E88;
        v260 = sub_277A6D69C;
        v259 = sub_277AC10BC;
        v258 = sub_277B70B60;
        v257 = sub_277A6D490;
        v256 = sub_277AC1194;
        v255 = sub_277B70FB0;
        v254 = sub_277A6D770;
        v253 = sub_277AC1214;
        v252 = sub_277B71438;
        v251 = sub_277A6D844;
        v250 = sub_277AC1250;
        v249 = sub_277B7223C;
        v248 = sub_277A6DAE4;
        v247 = sub_277AC128C;
        v246 = sub_277B726F8;
        v245 = sub_277A6DBDC;
        v244 = sub_277AC12C8;
        v243 = sub_277B72BD4;
        v242 = sub_277A6DCD4;
        v240 = sub_277AC1304;
        v238 = sub_277B735B0;
        v236 = sub_277A6DEC4;
        v234 = sub_277AC1340;
        v233 = sub_277B73AB0;
        v232 = sub_277A6DFBC;
        v231 = sub_277AC137C;
        v230 = sub_277B73FB0;
        v229 = sub_277A6E0B4;
        v228 = sub_277AC13B8;
        v287 = sub_277B744B0;
        v291 = sub_277A6E1AC;
        v290 = sub_277AC13F4;
        v283 = sub_277B749B0;
        v289 = sub_277A6E2A4;
        v288 = sub_277AC1430;
        v286 = sub_277B65200;
        v285 = sub_277AC146C;
        v284 = sub_277B654B0;
        v282 = sub_277AC14A8;
        v281 = sub_277B65360;
        v280 = sub_277AC14E4;
        v279 = sub_277B65E80;
        v278 = sub_277AC1520;
        v277 = sub_277B65974;
        v275 = sub_277AC155C;
        v273 = sub_277B66390;
        v271 = sub_277AC1598;
        v215 = sub_277B6135C;
        v213 = sub_277AC15D4;
        v211 = sub_277B6160C;
        v209 = sub_277AC1610;
        v207 = sub_277B614B4;
        v206 = sub_277AC164C;
        v205 = sub_277B6175C;
        v203 = sub_277AC1688;
        v202 = sub_277B619FC;
        v201 = sub_277AC16C4;
        v200 = sub_277B618AC;
        v199 = sub_277AC1700;
        v198 = sub_277B61EC0;
        v197 = sub_277AC173C;
        v196 = sub_277B62384;
        v195 = sub_277AC1778;
        v194 = sub_277B62848;
        v193 = sub_277AC17B4;
        v192 = sub_277B62D40;
        v191 = sub_277AC17F0;
        v190 = sub_277B6327C;
        v189 = sub_277AC182C;
        v188 = sub_277B637BC;
        v187 = sub_277AC1868;
        v186 = sub_277B63CFC;
        v185 = sub_277AC18A4;
        v184 = sub_277B6423C;
        v183 = sub_277AC18E0;
        v241 = sub_277B6477C;
        v239 = sub_277AC191C;
        v237 = sub_277B64CBC;
        v235 = sub_277AC1958;
        v182 = sub_277B84000;
        v181 = sub_277AC19A4;
        v180 = sub_277AC19FC;
        v179 = sub_277AC1A60;
        v178 = sub_277B4F4DC;
        v177 = sub_277B3CC14;
        v176 = sub_277996918;
        v175 = sub_277AC1AB0;
        v174 = sub_277AC1AEC;
        v226 = sub_277B84530;
        v227 = sub_277AC1B38;
        v225 = sub_277AC1B90;
        v224 = sub_277AC1BF4;
        v223 = sub_277B4FAB8;
        v222 = sub_277B3D118;
        v221 = sub_2779969BC;
        v220 = sub_277AC1C44;
        v173 = sub_277AC1C80;
        v204 = sub_277B84A60;
        v219 = sub_277AC1CCC;
        v218 = sub_277AC1D24;
        v217 = sub_277AC1D88;
        v216 = sub_277B50094;
        v214 = sub_277B3D61C;
        v212 = sub_277996A60;
        v210 = sub_277AC1DD8;
        v208 = sub_277AC1E14;
        v172 = sub_277B812E0;
        v171 = sub_277AC1E60;
        v170 = sub_277AC1EB8;
        v169 = sub_277AC1F1C;
        v168 = sub_277B4C288;
        v167 = sub_277B3A0DC;
        v166 = sub_2779960F8;
        v165 = sub_277AC1FF0;
        v164 = sub_277AC20C8;
        v163 = sub_277B813F8;
        v162 = sub_277AC213C;
        v161 = sub_277AC2194;
        v160 = sub_277AC21F8;
        v159 = sub_277B4C38C;
        v158 = sub_277B3A1D4;
        v157 = sub_2779961A0;
        v156 = sub_277AC22CC;
        v155 = sub_277AC23A4;
        v154 = sub_277B81510;
        v153 = sub_277AC2418;
        v152 = sub_277AC2470;
        v151 = sub_277AC24D4;
        v150 = sub_277B4C490;
        v149 = sub_277B3A2CC;
        v148 = sub_277996248;
        v147 = sub_277AC25B0;
        v146 = sub_277AC268C;
        v145 = sub_277B8160C;
        v144 = sub_277AC2700;
        v143 = sub_277AC2758;
        v142 = sub_277AC27BC;
        v141 = sub_277B4C594;
        v140 = sub_277B3A3C4;
        v139 = sub_2779962D4;
        v138 = sub_277AC2898;
        v137 = sub_277AC2974;
        v136 = sub_277B81710;
        v135 = sub_277AC29E8;
        v134 = sub_277AC2A40;
        v133 = sub_277AC2AA4;
        v132 = sub_277B4C6A0;
        v131 = sub_277B3A4C4;
        v130 = sub_277996360;
        v129 = sub_277AC2B80;
        v128 = sub_277AC2C5C;
        v127 = sub_277B81814;
        v126 = sub_277AC2CD0;
        v125 = sub_277AC2D28;
        v124 = sub_277AC2D8C;
        v123 = sub_277B4C7AC;
        v122 = sub_277B3A5C4;
        v121 = sub_2779963EC;
        v120 = sub_277AC2EA8;
        v119 = sub_277AC2FDC;
        v118 = sub_277B81CEC;
        v117 = sub_277AC306C;
        v116 = sub_277AC30C4;
        v115 = sub_277AC3128;
        v114 = sub_277B4CD1C;
        v113 = sub_277B3AA50;
        v112 = sub_277996494;
        v111 = sub_277AC3244;
        v110 = sub_277AC3378;
        v109 = sub_277B83AD0;
        v108 = sub_277AC3408;
        v107 = sub_277AC3460;
        v105 = sub_277AC34C4;
        v102 = sub_277B4EF00;
        v100 = sub_277B3C710;
        v98 = sub_277996874;
        v96 = sub_277AC3514;
        v94 = sub_277AC3550;
        v92 = sub_277B82B78;
        v90 = sub_277AC359C;
        v89 = sub_277AC35F4;
        v87 = sub_277AC3658;
        v84 = sub_277B4DDA4;
        v82 = sub_277B3B828;
        v80 = sub_277996688;
        v78 = sub_277AC36A8;
        v76 = sub_277AC37D0;
        v74 = sub_277B83070;
        v72 = sub_277AC3888;
        v70 = sub_277AC38E0;
        v68 = sub_277AC3944;
        v66 = sub_277B4E348;
        v64 = sub_277B3BD08;
        v62 = sub_27799672C;
        v60 = sub_277AC3994;
        v58 = sub_277AC3ABC;
        v56 = sub_277B835A0;
        v54 = sub_277AC3B74;
        v52 = sub_277AC3BCC;
        v50 = sub_277AC3C30;
        v48 = sub_277B4E924;
        v46 = sub_277B3C20C;
        v44 = sub_2779967D0;
        v42 = sub_277AC3C80;
        v40 = sub_277AC3CBC;
        v38 = sub_277B821C4;
        v36 = sub_277AC3D08;
        v34 = sub_277AC3D60;
        v32 = sub_277AC3DC4;
        v30 = sub_277B4D29C;
        v28 = sub_277B3AEDC;
        v2 = sub_27799653C;
        v3 = sub_277AC3EE0;
        v4 = sub_277AC4014;
        v5 = sub_277B8269C;
        v6 = sub_277AC40A4;
        v7 = sub_277AC40FC;
        v8 = sub_277AC4160;
        v9 = sub_277B4D81C;
        v10 = sub_277B3B368;
        v11 = sub_2779965E4;
        v12 = sub_277AC41B0;
        v13 = sub_277AC42D8;
        v104 = sub_277B84F94;
        v106 = sub_277AC4390;
        v103 = sub_277AC43E8;
        v101 = sub_277AC444C;
        v99 = sub_277B50674;
        v97 = sub_277B3DB24;
        v95 = sub_277997938;
        v93 = sub_277AC4520;
        v91 = sub_277AC45F8;
        v86 = sub_277B851B8;
        v88 = sub_277AC466C;
        v85 = sub_277AC46C4;
        v83 = sub_277AC4728;
        v81 = sub_277B5088C;
        v79 = sub_277B3DD24;
        v77 = sub_277997A6C;
        v75 = sub_277AC4844;
        v73 = sub_277AC4978;
        v71 = sub_277B850B4;
        v69 = sub_277AC4A08;
        v67 = sub_277AC4A60;
        v65 = sub_277AC4AC4;
        v63 = sub_277B50780;
        v61 = sub_277B3DC24;
        v59 = sub_2779979E0;
        v57 = sub_277AC4BA0;
        v55 = sub_277AC4C84;
        v53 = sub_277B85B84;
        v51 = sub_277AC4CFC;
        v49 = sub_277AC4D54;
        v47 = sub_277AC4DB8;
        v45 = sub_277B513A8;
        v43 = sub_277B3E65C;
        v41 = sub_277997BBC;
        v39 = sub_277AC4E08;
        v37 = sub_277AC4F30;
        v35 = sub_277B85690;
        v33 = sub_277AC4FE8;
        v31 = sub_277AC5040;
        v29 = sub_277AC50A4;
        v14 = sub_277B50E0C;
        v15 = sub_277B3E1B0;
        v16 = sub_277997B14;
        v17 = sub_277AC51C0;
        v18 = sub_277AC52F4;
        v19 = sub_277B86060;
        v20 = sub_277AC5384;
        v21 = sub_277AC53DC;
        v22 = sub_277AC5440;
        v23 = sub_277B51918;
        v24 = sub_277B3EB34;
        v25 = sub_277997C60;
        v26 = sub_277AC5490;
        v27 = sub_277AC54CC;
        break;
      default:
        return result;
    }

    v1[415] = v13;
    v1[417] = v12;
    v1[418] = v11;
    v1[419] = v10;
    v1[420] = v9;
    v1[421] = v8;
    v1[422] = v7;
    v1[429] = v6;
    v1[430] = v5;
    v1[399] = v4;
    v1[401] = v3;
    v1[402] = v2;
    v1[403] = v28;
    v1[404] = v30;
    v1[405] = v32;
    v1[406] = v34;
    v1[413] = v36;
    v1[414] = v38;
    v1[463] = v40;
    v1[465] = v42;
    v1[466] = v44;
    v1[467] = v46;
    v1[468] = v48;
    v1[469] = v50;
    v1[470] = v52;
    v1[477] = v54;
    v1[478] = v56;
    v1[447] = v58;
    v1[449] = v60;
    v1[450] = v62;
    v1[451] = v64;
    v1[452] = v66;
    v1[453] = v68;
    v1[454] = v70;
    v1[461] = v72;
    v1[462] = v74;
    v1[431] = v76;
    v1[433] = v78;
    v1[434] = v80;
    v1[435] = v82;
    v1[436] = v84;
    v1[437] = v87;
    v1[438] = v89;
    v1[445] = v90;
    v1[446] = v92;
    v1[479] = v94;
    v1[481] = v96;
    v1[482] = v98;
    v1[483] = v100;
    v1[484] = v102;
    v1[485] = v105;
    v1[486] = v107;
    v1[493] = v108;
    v1[494] = v109;
    v1[383] = v110;
    v1[385] = v111;
    v1[386] = v112;
    v1[387] = v113;
    v1[388] = v114;
    v1[389] = v115;
    v1[390] = v116;
    v1[397] = v117;
    v1[398] = v118;
    v1[367] = v119;
    v1[369] = v120;
    v1[370] = v121;
    v1[371] = v122;
    v1[372] = v123;
    v1[373] = v124;
    v1[374] = v125;
    v1[381] = v126;
    v1[382] = v127;
    v1[351] = v128;
    v1[353] = v129;
    v1[354] = v130;
    v1[355] = v131;
    v1[356] = v132;
    v1[357] = v133;
    v1[358] = v134;
    v1[365] = v135;
    v1[366] = v136;
    v1[335] = v137;
    v1[337] = v138;
    v1[338] = v139;
    v1[339] = v140;
    v1[340] = v141;
    v1[341] = v142;
    v1[342] = v143;
    v1[349] = v144;
    v1[350] = v145;
    v1[319] = v146;
    v1[321] = v147;
    v1[322] = v148;
    v1[323] = v149;
    v1[324] = v150;
    v1[325] = v151;
    v1[326] = v152;
    v1[333] = v153;
    v1[334] = v154;
    v1[303] = v155;
    v1[305] = v156;
    v1[306] = v157;
    v1[307] = v158;
    v1[308] = v159;
    v1[309] = v160;
    v1[310] = v161;
    v1[317] = v162;
    v1[318] = v163;
    v1[287] = v164;
    v1[289] = v165;
    v1[290] = v166;
    v1[291] = v167;
    v1[292] = v168;
    v1[293] = v169;
    v1[294] = v170;
    v1[301] = v171;
    v1[302] = v172;
    v1[511] = v173;
    v1[495] = v174;
    v1[497] = v175;
    v1[498] = v176;
    v1[499] = v177;
    v1[500] = v178;
    v1[501] = v179;
    v1[502] = v180;
    v1[509] = v181;
    v1[510] = v182;
    v1[504] = v183;
    v1[505] = v184;
    v1[488] = v185;
    v1[489] = v186;
    v1[472] = v187;
    v1[473] = v188;
    v1[456] = v189;
    v1[457] = v190;
    v1[440] = v191;
    v1[441] = v192;
    v1[424] = v193;
    v1[425] = v194;
    v1[408] = v195;
    v1[409] = v196;
    v1[392] = v197;
    v1[393] = v198;
    v1[360] = v199;
    v1[361] = v200;
    v1[376] = v201;
    v1[377] = v202;
    v1[344] = v203;
    v1[345] = v205;
    v1[312] = v206;
    v1[313] = v207;
    v1[328] = v209;
    v1[329] = v211;
    v1[296] = v213;
    v1[297] = v215;
    v1[506] = v228;
    v1[507] = v229;
    v1[508] = v230;
    v1[490] = v231;
    v1[491] = v232;
    v1[492] = v233;
    v1[474] = v234;
    v1[475] = v236;
    v1[476] = v238;
    v1[458] = v240;
    v1[459] = v242;
    v1[460] = v243;
    v1[442] = v244;
    v1[443] = v245;
    v1[444] = v246;
    v1[426] = v247;
    v1[427] = v248;
    v1[428] = v249;
    v1[410] = v250;
    v1[411] = v251;
    v1[412] = v252;
    v1[394] = v253;
    v1[395] = v254;
    v1[396] = v255;
    v1[362] = v256;
    v1[363] = v257;
    v1[364] = v258;
    v1[378] = v259;
    v1[379] = v260;
    v1[380] = v261;
    v1[346] = v262;
    v1[347] = v263;
    v1[348] = v264;
    v1[314] = v265;
    v1[315] = v266;
    v1[316] = v267;
    v1[330] = v268;
    v1[331] = v269;
    v1[332] = v270;
    v1[298] = v272;
    v1[299] = v274;
    v1[300] = v276;
    v1[496] = v292;
    v1[503] = v293;
    v1[480] = v294;
    v1[487] = v295;
    v1[464] = v296;
    v1[471] = v297;
    v1[448] = v298;
    v1[455] = v299;
    v1[432] = v300;
    v1[439] = v301;
    v1[416] = v302;
    v1[423] = v303;
    v1[400] = v304;
    v1[407] = v305;
    v1[384] = v306;
    v1[391] = v307;
    v1[368] = v308;
    v1[375] = v309;
    v1[352] = v310;
    v1[359] = v311;
    v1[336] = v312;
    v1[343] = v313;
    v1[304] = v314;
    v1[311] = v315;
    v347[6766] = v27;
    v347[6768] = v26;
    v347[6769] = v25;
    v347[6770] = v24;
    v347[6771] = v23;
    v347[6772] = v22;
    v347[6773] = v21;
    v347[6780] = v20;
    v347[6781] = v19;
    v347[6750] = v18;
    v347[6752] = v17;
    v347[6753] = v16;
    v347[6754] = v15;
    v347[6755] = v14;
    v347[6756] = v29;
    v347[6757] = v31;
    v347[6764] = v33;
    v347[6765] = v35;
    v347[6734] = v37;
    v347[6736] = v39;
    v347[6737] = v41;
    v347[6738] = v43;
    v347[6739] = v45;
    v347[6740] = v47;
    v347[6741] = v49;
    v347[6748] = v51;
    v347[6749] = v53;
    v347[6717] = v86;
    v347[6718] = v55;
    v347[6720] = v57;
    v347[6721] = v59;
    v347[6722] = v61;
    v347[6723] = v63;
    v347[6724] = v65;
    v347[6725] = v67;
    v347[6732] = v69;
    v347[6733] = v71;
    v347[6701] = v104;
    v347[6702] = v73;
    v347[6704] = v75;
    v347[6705] = v77;
    v347[6706] = v79;
    v347[6707] = v81;
    v347[6708] = v83;
    v347[6709] = v85;
    v347[6715] = v316;
    v347[6716] = v88;
    v347[6685] = v204;
    v347[6686] = v91;
    v347[6687] = v338;
    v347[6688] = v93;
    v347[6689] = v95;
    v347[6690] = v97;
    v347[6691] = v99;
    v347[6692] = v101;
    v347[6693] = v103;
    v347[6694] = v339;
    v347[6699] = v317;
    v347[6700] = v106;
    v347[6669] = v226;
    v347[6670] = v208;
    v347[6671] = v325;
    v347[6672] = v210;
    v347[6673] = v212;
    v347[6674] = v214;
    v347[6675] = v216;
    v347[6676] = v217;
    v347[6677] = v218;
    v347[6678] = v327;
    v347[6683] = v283;
    v347[6684] = v219;
    v347[6655] = v330;
    v347[6656] = v220;
    v347[6657] = v221;
    v347[6658] = v222;
    v347[6659] = v223;
    v347[6660] = v224;
    v347[6661] = v225;
    v347[6662] = v332;
    v347[6667] = v287;
    v347[6668] = v227;
    v347[6679] = v235;
    v347[6680] = v237;
    v347[6663] = v239;
    v347[6664] = v241;
    v347[6775] = v271;
    v347[6776] = v273;
    v347[6759] = v275;
    v347[6760] = v277;
    v347[6743] = v278;
    v347[6744] = v279;
    v347[6727] = v280;
    v347[6728] = v281;
    v347[6711] = v282;
    v347[6712] = v284;
    v347[6695] = v285;
    v347[6696] = v286;
    v347[6681] = v288;
    v347[6682] = v289;
    v347[6665] = v290;
    v347[6666] = v291;
    v347[6777] = v318;
    v347[6778] = v319;
    v347[6779] = v320;
    v347[6761] = v321;
    v347[6762] = v322;
    v347[6763] = v323;
    v347[6745] = v324;
    v347[6746] = v326;
    v347[6747] = v328;
    v347[6729] = v329;
    v347[6730] = v331;
    v347[6731] = v333;
    v347[6713] = v334;
    v347[6714] = v335;
    v347[6697] = v336;
    v347[6698] = v337;
    v347[6767] = v340;
    v347[6774] = v341;
    v347[6735] = v342;
    v347[6742] = v343;
    v347[6751] = v344;
    v347[6758] = v345;
    v347[6719] = v346;
    v347[6726] = result;
  }

  return result;
}

int32x4_t sub_277ABF560(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7755C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277ABF590(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7755C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277ABF5C0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return (2 * vaddvq_s32(v6));
}

uint64_t sub_277ABF60C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return (vaddvq_s32(v6) >> 3) & 0xFFFFFFF;
}

uint64_t sub_277ABF658(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return (vaddvq_s32(v6) >> 1) & 0x3FFFFFFF;
}

int32x4_t sub_277ABF6A8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A775EC(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277ABF6D8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A775EC(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277ABF708(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return 2 * vaddlvq_u16(v6);
}

uint64_t sub_277ABF754(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return (vaddlvq_u16(v6) >> 3) & 0xFFFFFFF;
}

uint64_t sub_277ABF7A0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return (vaddlvq_u16(v6) >> 1) & 0x3FFFFFFF;
}

int32x4_t sub_277ABF7F0(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7768C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277ABF820(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7768C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277ABF850(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -32;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v7 = vpadalq_u16(v7, vabdq_u16(*v5, *v4));
    v4 = (v4 + 4 * a4);
    v5 = (v5 + 4 * a2);
  }

  while (!__CFADD__(v8++, 1));
  return (2 * vaddvq_s32(vaddq_s32(v7, v6)));
}

uint64_t sub_277ABF8B8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -32;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v7 = vpadalq_u16(v7, vabdq_u16(*v5, *v4));
    v4 = (v4 + 4 * a4);
    v5 = (v5 + 4 * a2);
  }

  while (!__CFADD__(v8++, 1));
  return (vaddvq_s32(vaddq_s32(v7, v6)) >> 3) & 0xFFFFFFF;
}

uint64_t sub_277ABF920(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -32;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v7 = vpadalq_u16(v7, vabdq_u16(*v5, *v4));
    v4 = (v4 + 4 * a4);
    v5 = (v5 + 4 * a2);
  }

  while (!__CFADD__(v8++, 1));
  return (vaddvq_s32(vaddq_s32(v7, v6)) >> 1) & 0x3FFFFFFF;
}

int32x4_t sub_277ABF98C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A77784(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277ABF9BC(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A77784(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277ABFA2C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A778D8(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277ABFA5C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A778D8(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277ABFACC(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76544(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277ABFAFC(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76544(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277ABFB2C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return (2 * vaddvq_s32(v6));
}

uint64_t sub_277ABFB78(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return (vaddvq_s32(v6) >> 3) & 0xFFFFFFF;
}

uint64_t sub_277ABFBC4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return (vaddvq_s32(v6) >> 1) & 0x3FFFFFFF;
}

int32x4_t sub_277ABFC14(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A765D4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277ABFC44(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A765D4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277ABFC74(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return 2 * vaddlvq_u16(v6);
}

uint64_t sub_277ABFCC0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return (vaddlvq_u16(v6) >> 3) & 0xFFFFFFF;
}

uint64_t sub_277ABFD0C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return (vaddlvq_u16(v6) >> 1) & 0x3FFFFFFF;
}

int32x4_t sub_277ABFD5C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76674(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277ABFD8C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76674(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277ABFDBC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return 2 * vaddlvq_u16(v6);
}

uint64_t sub_277ABFE08(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return (vaddlvq_u16(v6) >> 3) & 0xFFFFFFF;
}

uint64_t sub_277ABFE54(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 4 * a4);
    v4 = (v4 + 4 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return (vaddlvq_u16(v6) >> 1) & 0x3FFFFFFF;
}

int32x4_t sub_277ABFEA4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76714(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277ABFED4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76714(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277ABFF04(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -4;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v7 = vpadalq_u16(v7, vabdq_u16(*v5, *v4));
    v4 = (v4 + 4 * a4);
    v5 = (v5 + 4 * a2);
  }

  while (!__CFADD__(v8++, 1));
  return (2 * vaddvq_s32(vaddq_s32(v7, v6)));
}

uint64_t sub_277ABFF6C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -4;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v7 = vpadalq_u16(v7, vabdq_u16(*v5, *v4));
    v4 = (v4 + 4 * a4);
    v5 = (v5 + 4 * a2);
  }

  while (!__CFADD__(v8++, 1));
  return (vaddvq_s32(vaddq_s32(v7, v6)) >> 3) & 0xFFFFFFF;
}

uint64_t sub_277ABFFD4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -4;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v7 = vpadalq_u16(v7, vabdq_u16(*v5, *v4));
    v4 = (v4 + 4 * a4);
    v5 = (v5 + 4 * a2);
  }

  while (!__CFADD__(v8++, 1));
  return (vaddvq_s32(vaddq_s32(v7, v6)) >> 1) & 0x3FFFFFFF;
}

int32x4_t sub_277AC0040(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7680C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC0070(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7680C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC00A0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -8;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v7 = vpadalq_u16(v7, vabdq_u16(*v5, *v4));
    v4 = (v4 + 4 * a4);
    v5 = (v5 + 4 * a2);
  }

  while (!__CFADD__(v8++, 1));
  return (2 * vaddvq_s32(vaddq_s32(v7, v6)));
}

uint64_t sub_277AC0108(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -8;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v7 = vpadalq_u16(v7, vabdq_u16(*v5, *v4));
    v4 = (v4 + 4 * a4);
    v5 = (v5 + 4 * a2);
  }

  while (!__CFADD__(v8++, 1));
  return (vaddvq_s32(vaddq_s32(v7, v6)) >> 3) & 0xFFFFFFF;
}

uint64_t sub_277AC0170(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -8;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v7 = vpadalq_u16(v7, vabdq_u16(*v5, *v4));
    v4 = (v4 + 4 * a4);
    v5 = (v5 + 4 * a2);
  }

  while (!__CFADD__(v8++, 1));
  return (vaddvq_s32(vaddq_s32(v7, v6)) >> 1) & 0x3FFFFFFF;
}

int32x4_t sub_277AC01DC(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76904(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC020C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76904(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC023C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -16;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v7 = vpadalq_u16(v7, vabdq_u16(*v5, *v4));
    v4 = (v4 + 4 * a4);
    v5 = (v5 + 4 * a2);
  }

  while (!__CFADD__(v8++, 1));
  return (2 * vaddvq_s32(vaddq_s32(v7, v6)));
}

uint64_t sub_277AC02A4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -16;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v7 = vpadalq_u16(v7, vabdq_u16(*v5, *v4));
    v4 = (v4 + 4 * a4);
    v5 = (v5 + 4 * a2);
  }

  while (!__CFADD__(v8++, 1));
  return (vaddvq_s32(vaddq_s32(v7, v6)) >> 3) & 0xFFFFFFF;
}

uint64_t sub_277AC030C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -16;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v7 = vpadalq_u16(v7, vabdq_u16(*v5, *v4));
    v4 = (v4 + 4 * a4);
    v5 = (v5 + 4 * a2);
  }

  while (!__CFADD__(v8++, 1));
  return (vaddvq_s32(vaddq_s32(v7, v6)) >> 1) & 0x3FFFFFFF;
}

int32x4_t sub_277AC0378(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A769FC(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC03A8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A769FC(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC0418(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76B50(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC0448(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76B50(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC04B8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76CA4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC04E8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76CA4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC0558(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76DF8(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC0588(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76DF8(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC05F8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76F74(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC0628(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76F74(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC0698(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A770F0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC06C8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A770F0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC0738(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7726C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC0768(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7726C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC07D8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A773E4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC0808(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A773E4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC0874(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, vmovn_s32(*(a4 + v4)))), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_s16(*(v5 + 2 * a2), vmovn_s32(*(a4 + v4 + 16)))), 0xCuLL);
    v4 += 32;
    v5 = (v5 + 2 * (2 * a2));
  }

  while (v4 != 256);
  return vaddvq_s32(v6);
}

uint64_t sub_277AC08E0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, vmovn_s32(*(a4 + v4)))), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_s16(*(v5 + 2 * a2), vmovn_s32(*(a4 + v4 + 16)))), 0xCuLL);
    v4 += 32;
    v5 = (v5 + 2 * (2 * a2));
  }

  while (v4 != 256);
  return vaddvq_s32(v6) >> 4;
}

uint64_t sub_277AC0950(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, vmovn_s32(*(a4 + v4)))), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_s16(*(v5 + 2 * a2), vmovn_s32(*(a4 + v4 + 16)))), 0xCuLL);
    v4 += 32;
    v5 = (v5 + 2 * (2 * a2));
  }

  while (v4 != 256);
  return vaddvq_s32(v6) >> 2;
}

uint64_t sub_277AC09FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(*v5->i8, v7)), 0xCuLL);
    v5 = (v5 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 1024);
  return vaddvq_s32(v6);
}

uint64_t sub_277AC0A58(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(*v5->i8, v7)), 0xCuLL);
    v5 = (v5 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 1024);
  return vaddvq_s32(v6) >> 4;
}

uint64_t sub_277AC0AB8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(*v5->i8, v7)), 0xCuLL);
    v5 = (v5 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 1024);
  return vaddvq_s32(v6) >> 2;
}

uint64_t sub_277AC0BCC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, vmovn_s32(*(a4 + v4)))), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_s16(*(v5 + 2 * a2), vmovn_s32(*(a4 + v4 + 16)))), 0xCuLL);
    v4 += 32;
    v5 = (v5 + 2 * (2 * a2));
  }

  while (v4 != 64);
  return vaddvq_s32(v6);
}

uint64_t sub_277AC0C38(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, vmovn_s32(*(a4 + v4)))), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_s16(*(v5 + 2 * a2), vmovn_s32(*(a4 + v4 + 16)))), 0xCuLL);
    v4 += 32;
    v5 = (v5 + 2 * (2 * a2));
  }

  while (v4 != 64);
  return vaddvq_s32(v6) >> 4;
}

uint64_t sub_277AC0CA8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, vmovn_s32(*(a4 + v4)))), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_s16(*(v5 + 2 * a2), vmovn_s32(*(a4 + v4 + 16)))), 0xCuLL);
    v4 += 32;
    v5 = (v5 + 2 * (2 * a2));
  }

  while (v4 != 64);
  return vaddvq_s32(v6) >> 2;
}

uint64_t sub_277AC0D18(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(*v5->i8, v7)), 0xCuLL);
    v5 = (v5 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 128);
  return vaddvq_s32(v6);
}

uint64_t sub_277AC0D74(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(*v5->i8, v7)), 0xCuLL);
    v5 = (v5 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 128);
  return vaddvq_s32(v6) >> 4;
}

uint64_t sub_277AC0DD4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(*v5->i8, v7)), 0xCuLL);
    v5 = (v5 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 128);
  return vaddvq_s32(v6) >> 2;
}

uint64_t sub_277AC0E34(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, vmovn_s32(*(a4 + v4)))), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_s16(*(v5 + 2 * a2), vmovn_s32(*(a4 + v4 + 16)))), 0xCuLL);
    v4 += 32;
    v5 = (v5 + 2 * (2 * a2));
  }

  while (v4 != 128);
  return vaddvq_s32(v6);
}

uint64_t sub_277AC0EA0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, vmovn_s32(*(a4 + v4)))), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_s16(*(v5 + 2 * a2), vmovn_s32(*(a4 + v4 + 16)))), 0xCuLL);
    v4 += 32;
    v5 = (v5 + 2 * (2 * a2));
  }

  while (v4 != 128);
  return vaddvq_s32(v6) >> 4;
}

uint64_t sub_277AC0F10(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, vmovn_s32(*(a4 + v4)))), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_s16(*(v5 + 2 * a2), vmovn_s32(*(a4 + v4 + 16)))), 0xCuLL);
    v4 += 32;
    v5 = (v5 + 2 * (2 * a2));
  }

  while (v4 != 128);
  return vaddvq_s32(v6) >> 2;
}

uint64_t sub_277AC0F80(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(*v5->i8, v7)), 0xCuLL);
    v5 = (v5 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 256);
  return vaddvq_s32(v6);
}

uint64_t sub_277AC0FDC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(*v5->i8, v7)), 0xCuLL);
    v5 = (v5 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 256);
  return vaddvq_s32(v6) >> 4;
}

uint64_t sub_277AC103C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(*v5->i8, v7)), 0xCuLL);
    v5 = (v5 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 256);
  return vaddvq_s32(v6) >> 2;
}

uint64_t sub_277AC10D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(*v5->i8, v7)), 0xCuLL);
    v5 = (v5 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 512);
  return vaddvq_s32(v6);
}

uint64_t sub_277AC1134(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(*v5->i8, v7)), 0xCuLL);
    v5 = (v5 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 512);
  return vaddvq_s32(v6) >> 4;
}

uint64_t sub_277AC1194(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (2 * a1);
  v6 = 0uLL;
  do
  {
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmull_s16(*v5, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(*v5->i8, v7)), 0xCuLL);
    v5 = (v5 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 512);
  return vaddvq_s32(v6) >> 2;
}

uint32x4_t sub_277AC19CC(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A784A8(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC19FC(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A784A8(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC1A30(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75B54(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC1A60(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75B54(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC1B60(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A785D8(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC1B90(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A785D8(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC1BC4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75CC4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC1BF4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75CC4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC1CF4(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78708(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC1D24(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78708(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC1D58(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75E30(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC1D88(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75E30(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC1E88(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77A54(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC1EB8(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77A54(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC1EEC(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A74F14(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC1F1C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A74F14(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC1F4C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vabal_u16(v8, *v6, vrhadd_u16(*v7, *(2 * a5 + v5)));
    v5 += 8;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 32);
  return vaddvq_s32(v8);
}

uint64_t sub_277AC1F9C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vabal_u16(v8, *v6, vrhadd_u16(*v7, *(2 * a5 + v5)));
    v5 += 8;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 32);
  return vaddvq_s32(v8) >> 4;
}

uint64_t sub_277AC1FF0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vabal_u16(v8, *v6, vrhadd_u16(*v7, *(2 * a5 + v5)));
    v5 += 8;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 32);
  return vaddvq_s32(v8) >> 2;
}

uint64_t sub_277AC2044(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6);
}

uint64_t sub_277AC2084(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6) >> 4;
}

uint64_t sub_277AC20C8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6) >> 2;
}

uint32x4_t sub_277AC2164(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77AD0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC2194(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77AD0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC21C8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A74F98(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC21F8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A74F98(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC2228(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vabal_u16(v8, *v6, vrhadd_u16(*v7, *(2 * a5 + v5)));
    v5 += 8;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 64);
  return vaddvq_s32(v8);
}

uint64_t sub_277AC2278(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vabal_u16(v8, *v6, vrhadd_u16(*v7, *(2 * a5 + v5)));
    v5 += 8;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 64);
  return vaddvq_s32(v8) >> 4;
}

uint64_t sub_277AC22CC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vabal_u16(v8, *v6, vrhadd_u16(*v7, *(2 * a5 + v5)));
    v5 += 8;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 64);
  return vaddvq_s32(v8) >> 2;
}

uint64_t sub_277AC2320(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6);
}

uint64_t sub_277AC2360(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6) >> 4;
}

uint64_t sub_277AC23A4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6) >> 2;
}

uint32x4_t sub_277AC2440(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77B4C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC2470(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77B4C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC24A4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7501C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC24D4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7501C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC2504(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 64);
  return vaddvq_s32(v8);
}

uint64_t sub_277AC2558(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 64);
  return vaddvq_s32(v8) >> 4;
}

uint64_t sub_277AC25B0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 64);
  return vaddvq_s32(v8) >> 2;
}

uint64_t sub_277AC2608(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddlvq_u16(v6);
}

uint64_t sub_277AC2648(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddlvq_u16(v6) >> 4;
}

uint64_t sub_277AC268C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddlvq_u16(v6) >> 2;
}

uint32x4_t sub_277AC2728(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77BC8(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC2758(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77BC8(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC278C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A750B0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC27BC(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A750B0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC27EC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(v8);
}

uint64_t sub_277AC2840(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(v8) >> 4;
}

uint64_t sub_277AC2898(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(v8) >> 2;
}

uint64_t sub_277AC28F0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddlvq_u16(v6);
}

uint64_t sub_277AC2930(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddlvq_u16(v6) >> 4;
}

uint64_t sub_277AC2974(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddlvq_u16(v6) >> 2;
}

uint32x4_t sub_277AC2A10(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77C44(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC2A40(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77C44(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC2A74(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75144(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC2AA4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75144(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC2AD4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 256);
  return vaddvq_s32(v8);
}

uint64_t sub_277AC2B28(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 256);
  return vaddvq_s32(v8) >> 4;
}

uint64_t sub_277AC2B80(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 256);
  return vaddvq_s32(v8) >> 2;
}

uint64_t sub_277AC2BD8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddlvq_u16(v6);
}

uint64_t sub_277AC2C18(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddlvq_u16(v6) >> 4;
}

uint64_t sub_277AC2C5C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v6 = vabaq_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddlvq_u16(v6) >> 2;
}

uint32x4_t sub_277AC2CF8(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77CC0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC2D28(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77CC0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC2D5C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A751D8(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC2D8C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A751D8(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC2DBC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 256);
  return vaddvq_s32(vaddq_s32(v10, v9));
}

uint64_t sub_277AC2E30(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 256);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 4;
}

uint64_t sub_277AC2EA8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 256);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 2;
}

uint64_t sub_277AC2F20(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6));
}

uint64_t sub_277AC2F7C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 4;
}

uint64_t sub_277AC2FDC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 2;
}

uint32x4_t sub_277AC3094(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77D88(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC30C4(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77D88(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC30F8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A752C4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3128(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A752C4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC3158(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 512);
  return vaddvq_s32(vaddq_s32(v10, v9));
}

uint64_t sub_277AC31CC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 512);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 4;
}

uint64_t sub_277AC3244(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 512);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 2;
}

uint64_t sub_277AC32BC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6));
}

uint64_t sub_277AC3318(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 4;
}

uint64_t sub_277AC3378(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 2;
}

uint32x4_t sub_277AC3430(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78378(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC3460(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78378(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3494(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A759E4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC34C4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A759E4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC35C4(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78028(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC35F4(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78028(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3628(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A755E4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3658(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A755E4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC36C4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10)));
}

uint64_t sub_277AC3748(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 4;
}

uint64_t sub_277AC37D0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 2;
}

uint32x4_t sub_277AC38B0(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78138(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC38E0(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78138(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3914(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7572C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3944(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7572C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC39B0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10)));
}

uint64_t sub_277AC3A34(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 4;
}

uint64_t sub_277AC3ABC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 2;
}

uint32x4_t sub_277AC3B9C(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78248(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}