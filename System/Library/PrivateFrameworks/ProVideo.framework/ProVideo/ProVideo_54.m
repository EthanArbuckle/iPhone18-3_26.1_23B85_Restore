void sub_25FE054CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE05504(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE054FCLL);
}

uint64_t HgcDemosaic_2::BindTexture(HgcDemosaic_2 *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v5.n128_f32[0] = *(a2 + 60);
  v6.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 136))(a2, 3, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcDemosaic_2::Bind(HgcDemosaic_2 *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcDemosaic_2::RenderTile(HgcDemosaic_2 *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = (a2[1].i32[1] - HIDWORD(*a2));
  if (v3 >= 1 && a2[1].i32[0] - v2.i32[0] >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[10];
    v7 = a2[2];
    v8 = 16 * a2[11].i32[0];
    v9 = 16 * a2[3].i32[0];
    v10 = 16 * (a2[1].i32[0] - v2.i32[0]);
    v11 = 0uLL;
    v12.i64[0] = 0x3F0000003F000000;
    v12.i64[1] = 0x3F0000003F000000;
    v13 = v5;
    v371 = v5;
    do
    {
      v14 = 0;
      v370 = v13;
      do
      {
        v390 = v13;
        v15 = vcvtq_f32_s32(vcvtq_s32_f32(v13));
        v16 = *(this + 51);
        v17 = *(v16 + 48);
        v385 = *(v16 + 32);
        v18 = vsubq_f32(v15, vandq_s8(v17, vcgtq_f32(v15, v13)));
        v19.i64[0] = v18.i64[0];
        v19.i64[1] = vmulq_f32(v17, vdupq_lane_s64(*&v18, 0)).i64[1];
        v20 = vcvtq_f32_s32(vcvtq_s32_f32(v19));
        v21 = *(v16 + 80);
        v384 = *(v16 + 64);
        v22 = vsubq_f32(v20, vbslq_s8(vcgtq_f32(v20, v19), v384, v11));
        v19.i64[0] = v18.i64[0];
        v19.i64[1] = v22.i64[1];
        v23 = vsubq_f32(v19, vmulq_laneq_f32(vextq_s8(v22, v18, 8uLL), v21, 2));
        v24 = vaddq_f32(vrev64q_s32(v23), vmulq_laneq_f32(v23, v21, 2));
        v25 = *(v16 + 16);
        v27 = *(v16 + 96);
        v26 = *(v16 + 112);
        v28 = vsubq_f32(vbslq_s8(v27, vaddq_f32(*v16, vrev64q_s32(v24)), v24), v21);
        v29 = vbslq_s8(v27, v28, v24);
        v30 = vrev64q_s32(*v16);
        v31 = vandq_s8(v17, vcgtq_f32(v384, vabsq_f32(vbslq_s8(v27, v28, vsubq_f32(v30, v29)))));
        v32 = vextq_s8(v30, v31, 0xCuLL);
        v33 = vdupq_laneq_s64(v32, 1).u64[0];
        v32.i64[0] = v23.i64[0];
        v23.i64[1] = v33;
        v34 = vextq_s8(v390, v390, 8uLL);
        v35 = vbslq_s8(v26, vmaxq_f32(vrev64q_s32(v23), vextq_s8(v31, v31, 4uLL)), v32);
        v36 = vandq_s8(v17, vcgtq_f32(v17, v390));
        v380 = vrev64q_s32(v35);
        v383 = vnegq_f32(v35);
        v37 = v35;
        v382 = v35;
        v38 = *(v16 + 144);
        v39 = vandq_s8(v17, vcgeq_f32(vextq_s8(v383, v383, 0xCuLL), v38));
        v40 = vbslq_s8(*(v16 + 128), vminq_f32(v380, vextq_s8(v36, v36, 8uLL)), vandq_s8(v21, vcgtq_f32(v21, v34)));
        v41 = *(v16 + 128);
        v42 = vdupq_lane_s32(*v39.f32, 0);
        v44 = *(v16 + 160);
        v43 = *(v16 + 176);
        v45 = vcgtq_f32(v42, v43);
        v46 = a2[10];
        v47 = a2[11].u32[0];
        v48 = vaddq_f32(vsubq_f32(vaddq_f32(v390, vbslq_s8(v45, v38, v44)), v5), v12);
        v49 = vcvtq_s32_f32(v48);
        v50 = vcgtq_f32(v42, v38);
        v51 = vaddq_f32(v34, vbslq_s8(v50, v44, v43));
        v44.i64[0] = vcgtq_f32(vcvtq_f32_s32(v49), v48).u64[0];
        v52 = vaddq_f32(vsubq_f32(vextq_s8(v51, v51, 8uLL), v5), v12);
        v53 = vcvtq_s32_f32(v52);
        *v44.i8 = vadd_s32(*v49.i8, *v44.i8);
        *v52.f32 = vadd_s32(*v53.f32, *&vcgtq_f32(vcvtq_f32_s32(v53), v52));
        *v52.f32 = vmla_s32(vzip1_s32(*v44.i8, *v52.f32), vzip2_s32(*v44.i8, *v52.f32), vdup_n_s32(v47));
        v54 = v52.i32[1];
        v53.i64[0] = vextq_s8(v40, v40, 8uLL).u64[0];
        v55 = *(*&v46 + 16 * v52.i32[0]);
        v57 = *(v16 + 192);
        v56 = *(v16 + 208);
        v45.i64[0] = vaddq_f32(v390, vbslq_s8(v45, v57, v17)).u64[0];
        v58 = *(*&v46 + 16 * v54);
        v59 = vbslq_s8(v50, v56, v57);
        v45.i64[1] = v59.i64[1];
        v50.i64[0] = v58.i64[0];
        v60 = vext_s8(*v58.f32, *v53.f32, 4uLL);
        *v53.f32 = vext_s8(*v53.f32, *v58.f32, 4uLL);
        v58.i64[1] = v40.i64[1];
        v61 = vaddq_f32(vsubq_f32(v45, v5), v12);
        v62 = vcvtq_s32_f32(v61);
        v50.i64[1] = vdupq_laneq_s64(v40, 1).u64[0];
        v61.i64[0] = vaddq_s32(v62, vcgtq_f32(vcvtq_f32_s32(v62), v61)).u64[0];
        v63 = vrev64q_s32(v50);
        v64 = *(*&v46 + 16 * (v61.i32[0] + v61.i32[1] * v47));
        v65 = vdupq_lane_s64(v58.i64[0], 0);
        v66 = vminq_f32(v63, v58);
        *&v53.u32[2] = v60;
        v67 = vdupq_laneq_s32(v66, 2);
        v68 = vandq_s8(v17, vcgeq_f32(vnegq_f32(v53), v56));
        *v69.f32 = vext_s8(*v68.i8, *&vextq_s8(v66, v66, 8uLL), 4uLL);
        v70 = vextq_s8(v66, v68, 0xCuLL).u64[0];
        v68.i64[1] = v66.i64[1];
        v71 = vbslq_s8(v41, vandq_s8(v43, vcgtq_f32(vextq_s8(v390, v390, 0xCuLL), vextq_s8(v40, vsubq_f32(vdupq_laneq_s64(*v16, 1), v17), 8uLL))), v40);
        v69.i64[1] = v70;
        v72 = vextq_s8(vaddq_f32(v34, v59), v64, 8uLL);
        v73 = vaddq_f32(vsubq_f32(v72, v5), v12);
        v74 = vcvtq_s32_f32(v73);
        v75 = vcgtq_f32(v67, v38);
        v73.i64[0] = vaddq_s32(v74, vcgtq_f32(vcvtq_f32_s32(v74), v73)).u64[0];
        v76 = vminq_f32(v69, v63);
        v77 = *(*&v46 + 16 * (v73.i32[0] + v73.i32[1] * v47));
        v63.i64[0] = vextq_s8(v71, v71, 8uLL).u64[0];
        *v67.f32 = vext_s8(*v63.f32, *v77.f32, 4uLL);
        *v63.f32 = vext_s8(*v77.f32, *v63.f32, 4uLL);
        v63.i64[1] = v67.i64[0];
        v77.i64[1] = v71.i64[1];
        v78 = vbslq_s8(v26, v76, v68);
        v79 = *(v16 + 224);
        v80 = *(v16 + 240);
        v81 = vbslq_s8(v75, vdupq_lane_s64(v64.i64[0], 0), v65);
        v82 = vbslq_s8(v79, vminq_f32(v63, vextq_s8(v78, v78, 8uLL)), v78);
        v83 = vdupq_laneq_s32(v82, 2);
        v84 = vbslq_s8(vcgtq_f32(v83, v38), v72, vdupq_lane_s64(v77.i64[0], 0));
        v85 = vandq_s8(v43, vcgeq_f32(vnegq_f32(v77), v38));
        v43.i64[0] = vbslq_s8(vcgtq_f32(v83, v56), v64, v55).u64[0];
        v86 = vbslq_s8(v41, v85, v82);
        v375 = v41;
        v87 = vdupq_lane_s32(*v86.f32, 1);
        v88 = vcgtq_f32(v87, v56);
        v64.i64[1] = v84.i64[1];
        v43.i64[1] = v81.i64[1];
        v89 = vbslq_s8(v26, vminq_f32(vrev64q_s32(v86), v86), v86);
        v387 = v26;
        v90 = vbslq_s8(vcgtq_f32(v87, v80), vdupq_laneq_s64(v81, 1), v64);
        v30.i64[0] = vsubq_f32(v30, v17).u64[0];
        v30.i64[1] = v81.i64[1];
        v91 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v89, 3), v80), v90, vbslq_s8(v88, vdupq_laneq_s64(v43, 1), v43));
        *&v36.u32[2] = vand_s8(*v17.f32, *&vcgeq_f32(vnegq_f32(v36), v80));
        v92 = vbslq_s8(v79, vrev64q_s32(vandq_s8(v17, vcgtq_f32(v390, v30))), v36);
        v381 = vextq_s8(v37, v37, 8uLL);
        v30.i64[0] = v91.i64[0];
        v93 = vbslq_s8(v79, vminq_f32(v381, vextq_s8(v92, v92, 4uLL)), v89);
        v30.i64[1] = v71.i64[1];
        v94 = vrev64q_s32(vminq_f32(v93, v92));
        v95 = vrev64q_s32(vminq_f32(v93, v94));
        v96 = vbslq_s8(v27, v94, v95);
        v64.i64[0] = vdupq_laneq_s64(v71, 1).u64[0];
        v97 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v93, 3), v80), v81, v90);
        v98 = vbslq_s8(v26, vminq_f32(v30, vextq_s8(v96, v96, 4uLL)), v93);
        v99 = vextq_s8(v97, v90, 8uLL);
        v100 = vcgtq_f32(vdupq_laneq_s32(v98, 3), v80);
        v91.i64[0] = vbslq_s8(v100, v91, v99).u64[0];
        v101 = vextq_s8(v30, v30, 8uLL);
        v102 = vbslq_s8(v27, vminq_f32(v101, vrev64q_s32(v96)), v95);
        v103 = vbslq_s8(v100, v101, v99);
        v104 = vbslq_s8(v41, vminq_f32(vextq_s8(v102, v102, 0xCuLL), v98), v98);
        v105 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v104, 3), v80), v101, v81);
        v106 = vdupq_lane_s32(*v102.i8, 0);
        v107 = vcgtq_f32(v106, v80);
        v91.i64[1] = v105.i64[1];
        v105.i64[0] = vandq_s8(v17, vcgeq_f32(vnegq_f32(vrev64q_s32(v92)), v80)).u64[0];
        v105.i64[1] = v71.i64[1];
        v108 = vbslq_s8(v107, v91, v30);
        v109 = vminq_f32(vrev64q_s32(v104), v105);
        v17.i64[0] = v109.i64[0];
        v17.i64[1] = v71.i64[1];
        v110 = vextq_s8(v91, v91, 8uLL);
        v111 = vextq_s8(v71, v109, 8uLL);
        v109.i64[1] = v64.i64[0];
        v112 = vbslq_s8(v79, vminq_f32(v111, vrev64q_s32(v109)), v17);
        v17.i64[0] = v108.i64[0];
        v17.i64[1] = vbslq_s8(v107, *&v110, v103).i64[1];
        v113 = vdupq_laneq_s32(v104, 2);
        v114 = vcgtq_f32(vdupq_lane_s32(*v112.f32, 1), v80);
        v115 = vbslq_s8(vcgtq_f32(v80, vminq_f32(vnegq_f32(v113), vnegq_f32(v106))), v110, v91);
        v116 = vcgtq_f32(v113, v80);
        v117 = vbslq_s8(v114, v17, v91);
        v118 = vbslq_s8(v116, vdupq_lane_s64(v108.i64[0], 0), v17);
        v119 = vextq_s8(v118, v108, 8uLL);
        v120 = vbslq_s8(v114, v119, vextq_s8(v115, v115, 8uLL));
        v121 = vcgtq_f32(vminq_f32(vdupq_lane_s32(*&vminq_f32(v112, v104), 0), vdupq_laneq_s32(v112, 2)), v80);
        v122 = vbslq_s8(v121, vdupq_lane_s64(v117.i64[0], 0), v119);
        v17.i64[0] = v117.i64[0];
        v104.i64[0] = vminq_f32(v39, v104).u64[0];
        v17.i64[1] = v122.i64[1];
        v104.i64[1] = v118.i64[1];
        v123 = vbslq_s8(v121, vdupq_lane_s64(v120.i64[0], 0), v104);
        v124 = vextq_s8(v112, v112, 8uLL);
        v125 = vbslq_s8(v27, v104, vminq_f32(vrev64q_s32(v39), v124));
        v112.i64[0] = v120.i64[0];
        v112.i64[1] = v123.i64[1];
        v377 = v123;
        v378 = v112;
        v379 = v17;
        v126 = vextq_s8(v17, v17, 8uLL);
        v127 = vextq_s8(v112, v112, 8uLL);
        v128 = *(*&v6 + v14);
        v129.i64[0] = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v125.f32, 1), v80), v127, v126).u64[0];
        v130 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vminq_f32(v124, v125), 0), v80), v122, v123);
        v131 = vaddq_f32(vrev64q_s32(v128), v25);
        v129.i64[1] = v130.i64[1];
        v132 = vmulq_lane_f32(vmulq_f32(v131, v131), *v25.f32, 1);
        v133 = vaddq_f32(vmaxq_f32(vextq_s8(v132, v132, 8uLL), v25), vextq_s8(v25, v25, 4uLL));
        v134 = *(v16 + 256);
        v135 = *(v16 + 272);
        v136 = vminq_f32(vmulq_f32(vrsqrteq_f32(v133), v134), v135);
        v137 = vmulq_f32(v133, vminq_f32(vmulq_f32(v136, vrsqrtsq_f32(vmulq_f32(v133, v136), v136)), v135));
        v138 = vextq_s8(v137, v137, 4uLL);
        v139 = vbslq_s8(v27, v39, vandq_s8(v135, vcgtq_f32(v128, v138)));
        v140 = *(v16 + 304);
        v389 = *(v16 + 288);
        *v83.f32 = vqtbl1_s8(v129, *v389.i8);
        v376 = vextq_s8(v389, v389, 8uLL).u64[0];
        *&v83.u32[2] = vqtbl1_s8(v129, v376);
        v141 = vminq_f32(vextq_s8(v139, v139, 8uLL), vextq_s8(v139, v139, 0xCuLL));
        *v110.f32 = vqtbl1_s8(v129, *v140.i8);
        v386 = vextq_s8(v140, v140, 8uLL).u64[0];
        *&v110.u32[2] = vqtbl1_s8(v129, v386);
        v142 = vdupq_lane_s32(*v25.f32, 0);
        v143 = vaddq_f32(v142, v83);
        v144 = v142;
        v374 = v142;
        v388 = vdupq_laneq_s32(v25, 2);
        v373 = vdupq_laneq_s32(v25, 3);
        v145 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v141, 2), v80), vaddq_f32(v373, vmaxq_f32(vmulq_lane_f32(vmulq_f32(v143, v143), *v25.f32, 1), v388)), v80);
        v146 = vrsqrteq_f32(v145);
        v147 = vminq_f32(v146, v134);
        v148 = vminq_f32(vmulq_f32(v147, vrsqrtsq_f32(vmulq_f32(v145, v147), v147)), v134);
        v149 = vminq_f32(v146, v135);
        v150 = vminq_f32(vmulq_f32(v149, vrsqrtsq_f32(vmulq_f32(v145, v149), v149)), v135);
        v148.i64[0] = vminq_f32(vmulq_f32(v148, vrsqrtsq_f32(vmulq_f32(v145, v148), v148)), v134).u64[0];
        v148.i64[1] = vminq_f32(vmulq_f32(v150, vrsqrtsq_f32(vmulq_f32(v145, v150), v150)), v135).i64[1];
        v151 = vmulq_f32(v145, v148);
        v152 = *(v16 + 320);
        v153 = *(v16 + 336);
        v154 = vandq_s8(v152, vcgtq_f32(v83, v151));
        v155 = vminq_f32(v154, vrev64q_s32(v154));
        v112.i64[0] = v155.i64[0];
        v112.i64[1] = v154.i64[1];
        v112.i64[0] = vminq_f32(v112, vextq_s8(v154, v155, 8uLL)).u64[0];
        v63.i64[0] = vextq_s8(v154, v154, 8uLL).u64[0];
        *v155.f32 = vmin_f32(*v155.f32, *v63.f32);
        *v124.f32 = vext_s8(*v155.f32, *v63.f32, 4uLL);
        *v155.f32 = vext_s8(*v63.f32, *v155.f32, 4uLL);
        v155.i64[1] = v124.i64[0];
        v112.i64[1] = v154.i64[1];
        v156 = vminq_f32(v112, v155);
        v157 = vaddq_f32(v144, v110);
        v158 = vaddq_f32(v373, vmaxq_f32(vmulq_lane_f32(vmulq_f32(v157, v157), *v25.f32, 1), v388));
        v159 = vminq_f32(vrsqrteq_f32(v158), v134);
        v160 = vminq_f32(vmulq_f32(v159, vrsqrtsq_f32(vmulq_f32(v158, v159), v159)), v134);
        v160.i64[0] = vmulq_f32(v158, vminq_f32(vmulq_f32(v160, vrsqrtsq_f32(vmulq_f32(v158, v160), v160)), v134)).u64[0];
        v112.i64[0] = v160.i64[0];
        v112.i64[1] = v158.i64[1];
        v161 = vminq_f32(vrsqrteq_f32(v112), v135);
        v162 = vminq_f32(vmulq_f32(v161, vrsqrtsq_f32(vmulq_f32(v161, v112), v161)), v135);
        v160.i64[1] = vmulq_f32(v158, vminq_f32(vmulq_f32(v162, vrsqrtsq_f32(vmulq_f32(v112, v162), v162)), v135)).i64[1];
        v163 = vandq_s8(v152, vcgtq_f32(v110, v160));
        v112.i64[0] = vminq_f32(v163, vrev64q_s32(v163)).u64[0];
        v112.i64[1] = v163.i64[1];
        v164 = vbslq_s8(v79, vrev64q_s32(vandq_s8(v152, vcgeq_f32(vnegq_f32(v156), v135))), v112);
        v165 = vextq_s8(v141, v139, 8uLL);
        v139.i64[1] = v141.i64[1];
        v166 = vbslq_s8(v27, vminq_f32(v164, vextq_s8(v164, v164, 8uLL)), v164);
        v167 = vextq_s8(v166, v166, 8uLL);
        v168 = vrev64q_s32(v166);
        v169 = vbslq_s8(v27, vminq_f32(v165, v168), vbslq_s8(v375, vminq_f32(v167, v168), v129));
        v170 = vbslq_s8(v387, vbslq_s8(vcgtq_f32(vextq_s8(v169, v169, 4uLL), v134), v134, vrev64q_s32(v169)), v139);
        v171 = *(v16 + 384);
        v372 = *(v16 + 400);
        v172 = vbslq_s8(vcgtq_f32(vminq_f32(vdupq_lane_s32(*v92.f32, 1), vminq_f32(vdupq_lane_s32(*v170.f32, 0), vdupq_laneq_s32(v92, 2))), v171), v126, v127);
        v120.i64[0] = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vminq_f32(v170, v92), 0), v80), v120, v117).u64[0];
        v167.i64[0] = vsubq_f32(v128, v138).u64[0];
        v167.i64[1] = v137.i64[1];
        *v112.f32 = vqtbl1_s8(v169, *v140.i8);
        *&v112.u32[2] = vqtbl1_s8(v169, v386);
        v173 = *(v16 + 352);
        v174 = *(v16 + 368);
        v175 = vminq_f32(vmaxq_f32(vrecpeq_f32(v112), v153), v173);
        v176 = vminq_f32(vmaxq_f32(vmulq_f32(v175, vrecpsq_f32(v112, v175)), v153), v173);
        v177 = vmulq_f32(vmulq_lane_f32(v83, *v128.f32, 1), vmulq_f32(v176, vrecpsq_f32(v112, v176)));
        v178 = vmulq_f32(v174, v177);
        v179 = vaddq_f32(v178, vextq_s8(v178, v178, 4uLL));
        v180 = vrev64q_s32(v170);
        v181 = vbslq_s8(v387, vminq_f32(v180, v170), v167);
        v182 = vaddq_f32(v160, v110);
        v183 = vsubq_f32(v110, v160);
        v184 = vbslq_s8(v27, vbslq_s8(vcgtq_f32(vextq_s8(v181, v181, 0xCuLL), v135), vaddq_f32(v179, vextq_s8(v179, v179, 8uLL)), v135), v181);
        v185 = vminq_f32(vmaxq_f32(vrecpeq_f32(v182), v153), v173);
        v186 = vminq_f32(vmaxq_f32(vmulq_f32(v185, vrecpsq_f32(v182, v185)), v153), v173);
        v187 = vmulq_f32(v186, vrecpsq_f32(v182, v186));
        v188 = vbslq_s8(v375, vaddq_f32(vextq_s8(v128, v128, 0xCuLL), v184), v184);
        v189 = vminq_f32(vmaxq_f32(vrecpeq_f32(v183), v153), v173);
        v190 = vminq_f32(vmaxq_f32(vmulq_f32(v189, vrecpsq_f32(v183, v189)), v153), v173);
        v191 = vmulq_f32(vmulq_f32(v190, vrecpsq_f32(v183, v190)), vmulq_laneq_f32(vaddq_f32(v151, v83), v188, 2));
        v192 = vsubq_f32(v177, vdupq_lane_s32(*v188.f32, 0));
        v193 = vmulq_f32(vaddq_f32(v177, vmulq_f32(v187, vmulq_lane_f32(vsubq_f32(v151, v83), *v188.f32, 1))), vsubq_f32(v191, v177));
        v194 = vmulq_f32(v192, v192);
        v195 = vaddq_f32(v194, vextq_s8(v194, v194, 4uLL));
        v196 = vaddq_f32(v193, vextq_s8(v193, v193, 4uLL));
        v197 = vaddq_f32(vaddq_f32(v195, vextq_s8(v195, v195, 8uLL)), vmulq_f32(v171, vaddq_f32(v196, vextq_s8(v196, v196, 8uLL))));
        v198 = vmulq_f32(v174, v83);
        v199 = vaddq_f32(v198, vextq_s8(v198, v198, 4uLL));
        v200 = vbslq_s8(v387, vaddq_f32(v199, vextq_s8(v199, v199, 8uLL)), v188);
        v201 = vsubq_f32(v83, vdupq_laneq_s32(v200, 3));
        v120.i64[1] = v172.i64[1];
        *v162.f32 = vqtbl1_s8(v120, *v389.i8);
        *&v162.u32[2] = vqtbl1_s8(v120, v376);
        v202 = vmulq_f32(v201, v201);
        v203 = vaddq_f32(v202, vextq_s8(v202, v202, 4uLL));
        v204 = vbslq_s8(v27, vbslq_s8(vcgtq_f32(vextq_s8(v188, v188, 0xCuLL), v135), v197, v135), vaddq_f32(v203, vextq_s8(v203, v203, 8uLL)));
        v205 = vmulq_f32(v145, v372);
        v206 = vaddq_f32(v205, vextq_s8(v205, v205, 4uLL));
        v207 = vaddq_f32(vrev64q_s32(vaddq_f32(v206, vextq_s8(v206, v206, 8uLL))), v204);
        v208 = vdupq_lane_s64(v204.i64[0], 0);
        v209 = vaddq_f32(v374, v162);
        v210 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v170, 2), v80), vaddq_f32(v373, vmaxq_f32(vmulq_lane_f32(vmulq_f32(v209, v209), *v25.f32, 1), v388)), v80);
        v207.i64[1] = vaddq_f32(v208, vextq_s8(*&v208, *&v207, 0xCuLL)).i64[1];
        *v209.f32 = vqtbl1_s8(v120, *v140.i8);
        *&v209.u32[2] = vqtbl1_s8(v120, v386);
        v211 = vminq_f32(vrsqrteq_f32(v210), v173);
        v212 = vminq_f32(vmulq_f32(v211, vrsqrtsq_f32(vmulq_f32(v210, v211), v211)), v173);
        v213 = vmulq_f32(v210, vminq_f32(vmulq_f32(v212, vrsqrtsq_f32(vmulq_f32(v210, v212), v212)), v173));
        v214 = vandq_s8(v152, vcgtq_f32(v162, v213));
        v215 = vminq_f32(v214, vrev64q_s32(v214));
        v138.i64[0] = v215.i64[0];
        v138.i64[1] = v214.i64[1];
        v138.i64[0] = vminq_f32(v138, vextq_s8(v214, v215, 8uLL)).u64[0];
        v137.i64[0] = vextq_s8(v214, v214, 8uLL).u64[0];
        *v215.f32 = vmin_f32(*v215.f32, *v137.f32);
        *v110.f32 = vext_s8(*v215.f32, *v137.f32, 4uLL);
        *v215.f32 = vext_s8(*v137.f32, *v215.f32, 4uLL);
        v138.i64[1] = v214.i64[1];
        v215.i64[1] = v110.i64[0];
        v216 = vminq_f32(v138, v215);
        v217 = vaddq_f32(v374, v209);
        v218 = vaddq_f32(v373, vmaxq_f32(vmulq_lane_f32(vmulq_f32(v217, v217), *v25.f32, 1), v388));
        v219 = vminq_f32(vrsqrteq_f32(v218), v173);
        v220 = vminq_f32(vmulq_f32(v219, vrsqrtsq_f32(vmulq_f32(v218, v219), v219)), v173);
        v220.i64[0] = vmulq_f32(v218, vminq_f32(vmulq_f32(v220, vrsqrtsq_f32(vmulq_f32(v218, v220), v220)), v173)).u64[0];
        v137.i64[0] = v220.i64[0];
        v137.i64[1] = v218.i64[1];
        v221 = vminq_f32(vrsqrteq_f32(v137), v173);
        v222 = vminq_f32(vmulq_f32(v221, vrsqrtsq_f32(vmulq_f32(v221, v137), v221)), v173);
        v220.i64[1] = vmulq_f32(v218, vminq_f32(vmulq_f32(v222, vrsqrtsq_f32(vmulq_f32(v137, v222), v222)), v173)).i64[1];
        v223 = vandq_s8(v152, vcgtq_f32(v209, v220));
        v137.i64[0] = vminq_f32(v223, vrev64q_s32(v223)).u64[0];
        v137.i64[1] = v223.i64[1];
        v224 = vbslq_s8(v79, vrev64q_s32(vandq_s8(v152, vcgeq_f32(vnegq_f32(v216), v135))), v137);
        v225 = vbslq_s8(v27, vminq_f32(v224, vextq_s8(v224, v224, 8uLL)), v224);
        v226 = vextq_s8(v225, v225, 8uLL);
        v227 = vrev64q_s32(v225);
        v228 = vbslq_s8(v375, vminq_f32(v226, v227), v120);
        v229 = vextq_s8(v170, v170, 8uLL);
        v230 = vbslq_s8(v27, vminq_f32(v229, v227), v228);
        v231 = vbslq_s8(v27, vbslq_s8(vcgtq_f32(v230, v135), v135, vextq_s8(v230, v230, 8uLL)), v207);
        *v207.f32 = vqtbl1_s8(v230, *v140.i8);
        *&v207.u32[2] = vqtbl1_s8(v230, v386);
        v232 = vminq_f32(vmaxq_f32(vrecpeq_f32(v207), v153), v173);
        v233 = vminq_f32(vmaxq_f32(vmulq_f32(v232, vrecpsq_f32(v207, v232)), v153), v173);
        v234 = vmulq_f32(vmulq_lane_f32(v162, *v128.f32, 1), vmulq_f32(v233, vrecpsq_f32(v207, v233)));
        v235 = vmulq_f32(v174, v234);
        v236 = vaddq_f32(v235, vextq_s8(v235, v235, 4uLL));
        v237 = vaddq_f32(v236, vextq_s8(v236, v236, 8uLL));
        v238 = vaddq_f32(v220, v209);
        v239 = vsubq_f32(v209, v220);
        v240 = vminq_f32(vmaxq_f32(vrecpeq_f32(v238), v153), v173);
        v241 = vminq_f32(v229, v231);
        v242 = vbslq_s8(vcgtq_f32(v241, v135), v237, v135);
        v243 = vminq_f32(vmaxq_f32(vmulq_f32(v240, vrecpsq_f32(v238, v240)), v153), v173);
        v244 = vmulq_f32(v243, vrecpsq_f32(v238, v243));
        v245 = vbslq_s8(v387, vextq_s8(v242, v242, 4uLL), v231);
        v246 = vminq_f32(vmaxq_f32(vrecpeq_f32(v239), v153), v173);
        v247 = vminq_f32(vmaxq_f32(vmulq_f32(v246, vrecpsq_f32(v239, v246)), v153), v173);
        v248 = vmulq_f32(v247, vrecpsq_f32(v239, v247));
        v249 = vmulq_f32(vmulq_lane_f32(vsubq_f32(v213, v162), *v200.f32, 1), v244);
        v250 = vmulq_f32(vmulq_laneq_f32(vaddq_f32(v213, v162), v200, 2), v248);
        v251 = vaddq_f32(v234, v249);
        v252 = vsubq_f32(v234, vdupq_laneq_s32(v245, 3));
        v253 = vmulq_f32(v251, vsubq_f32(v250, v234));
        v254 = vaddq_f32(v253, vextq_s8(v253, v253, 4uLL));
        v255 = vmulq_f32(v252, v252);
        v256 = vaddq_f32(v255, vextq_s8(v255, v255, 4uLL));
        v257 = vaddq_f32(vrev64q_s32(vaddq_f32(v256, vdupq_laneq_s64(v256, 1))), vmulq_n_f32(v372, vaddq_f32(v254, vdupq_laneq_s32(v254, 2)).f32[0]));
        v258 = vmulq_f32(v174, v162);
        v259 = vaddq_f32(v258, vextq_s8(v258, v258, 4uLL));
        v257.i64[0] = vbslq_s8(v27, vaddq_f32(v259, vdupq_laneq_s64(v259, 1)), v257).u64[0];
        v260 = vsubq_f32(v162, vdupq_lane_s32(*v257.i8, 0));
        v261 = vmulq_f32(v260, v260);
        v262 = vaddq_f32(v261, vextq_s8(v261, v261, 4uLL));
        v263 = vrev64q_s32(v377);
        v263.i64[0] = vaddq_f32(v262, vdupq_laneq_s64(v262, 1)).u64[0];
        v264 = vmulq_f32(v372, v210);
        v265 = vaddq_f32(v264, vextq_s8(v264, v264, 4uLL));
        v266 = vaddq_f32(v265, vdupq_lane_s64(v265.i64[0], 0));
        v257.i64[1] = v266.i64[1];
        v267 = vbslq_s8(v27, v257, vbslq_s8(vcgtq_f32(vrev64q_s32(v241), v171), v257, v171));
        v268 = vbslq_s8(v375, vbslq_s8(vcgtq_f32(v170, v171), vextq_s8(v245, v245, 8uLL), v171), v263);
        v266.i64[0] = vaddq_f32(vdupq_laneq_s64(v266, 1), v268).u64[0];
        v263.i64[0] = v266.i64[0];
        v263.i64[1] = v268.i64[1];
        v266.i64[1] = vdupq_laneq_s64(v268, 1).u64[0];
        v269 = vbslq_s8(v79, vaddq_f32(vrev64q_s32(v266), v267), v263);
        v270 = vrev64q_s32(v269);
        v271 = vminq_f32(vmaxq_f32(vrecpeq_f32(v270), v153), v173);
        v272 = vminq_f32(vmaxq_f32(vmulq_f32(v271, vrecpsq_f32(v270, v271)), v153), v173);
        v270.i64[0] = vmulq_f32(vmulq_f32(v272, vrecpsq_f32(v270, v272)), v269).u64[0];
        v272.i64[0] = vextq_s8(v269, v269, 8uLL).u64[0];
        *v252.f32 = vext_s8(*v272.f32, *v270.f32, 4uLL);
        *v272.f32 = vext_s8(*v270.f32, *v272.f32, 4uLL);
        v270.i64[1] = v269.i64[1];
        v272.i64[1] = v252.i64[0];
        v273 = vbslq_s8(v79, vandq_s8(v152, vcgeq_f32(vnegq_f32(v272), v171)), v270);
        v274 = vbslq_s8(v27, vaddq_f32(vmulq_f32(vsubq_f32(vextq_s8(v245, v245, 0xCuLL), v267), v273), v267), v273);
        v275 = vbslq_s8(v79, vminq_f32(v180, v274), v274);
        v276 = vbslq_s8(vcgtq_f32(vrev64q_s32(v275), v135), v267, v275);
        v277 = vbslq_s8(v27, v276, v245);
        v278 = vminq_f32(vmaxq_f32(vrecpeq_f32(v277), v153), v173);
        v279 = vminq_f32(vmaxq_f32(vmulq_f32(v278, vrecpsq_f32(v277, v278)), v153), v173);
        v280 = vbslq_s8(v375, vmulq_lane_f32(vmulq_f32(v279, vrecpsq_f32(v277, v279)), *v277.f32, 1), v275);
        v281 = vextq_s8(v170, v170, 0xCuLL);
        v275.i64[0] = vbslq_s8(vcgtq_f32(v229, v135), v281, v135).u64[0];
        v275.i64[1] = v280.i64[1];
        v282 = vextq_s8(v200, v200, 0xCuLL);
        v283 = vaddq_f32(vmulq_laneq_f32(vsubq_f32(v200, v282), v280, 2), v282);
        v284 = vbslq_s8(v27, v283, vminq_f32(v180, vbslq_s8(v27, v283, vrev64q_s32(vandq_s8(v152, vcgeq_f32(vnegq_f32(v275), v135))))));
        v285 = vbslq_s8(vcgtq_f32(vrev64q_s32(v284), v135), v282, v284);
        v286 = vbslq_s8(v375, vminq_f32(v380, v281), v378);
        v287 = vmvnq_s8(v375);
        *v280.f32 = vorr_s8(vand_s8(*&vextq_s8(v280, v280, 8uLL), *&vextq_s8(v287, v287, 8uLL)), vand_s8(*v286.i8, *&vextq_s8(v375, v375, 8uLL)));
        *v287.f32 = vqtbl1_s8(v379, *v389.i8);
        v287.i64[1] = v280.i64[0];
        v288 = vbslq_s8(v27, v285, v286);
        v289 = vaddq_f32(v374, v287);
        v290 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v288, 2), v80), vaddq_f32(v373, vmaxq_f32(vmulq_lane_f32(vmulq_f32(v289, v289), *v25.f32, 1), v388)), v80);
        v291 = vminq_f32(vrsqrteq_f32(v290), v173);
        v292 = vminq_f32(vmulq_f32(v291, vrsqrtsq_f32(vmulq_f32(v291, v290), v291)), v173);
        v293 = vmulq_f32(v292, vrsqrtsq_f32(vmulq_f32(v292, v290), v292));
        *v117.f32 = vqtbl1_s8(v379, *v140.i8);
        v292.i64[0] = v117.i64[0];
        *&v292.u32[2] = vqtbl1_s8(v288, v386);
        v294 = vaddq_f32(v374, v292);
        v295 = vaddq_f32(v373, vmaxq_f32(vmulq_lane_f32(vmulq_f32(v294, v294), *v25.f32, 1), v388));
        v296 = vmulq_f32(vminq_f32(v293, v173), v290);
        v297 = vandq_s8(v152, vcgtq_f32(v287, v296));
        v298 = vminq_f32(v297, vrev64q_s32(v297));
        v151.i64[0] = v298.i64[0];
        v151.i64[1] = v297.i64[1];
        v151.i64[0] = vminq_f32(v151, vextq_s8(v297, v298, 8uLL)).u64[0];
        v162.i64[0] = vextq_s8(v297, v297, 8uLL).u64[0];
        *v298.f32 = vmin_f32(*v298.f32, *v162.f32);
        *v83.f32 = vext_s8(*v298.f32, *v162.f32, 4uLL);
        *v298.f32 = vext_s8(*v162.f32, *v298.f32, 4uLL);
        v298.i64[1] = v83.i64[0];
        v151.i64[1] = v297.i64[1];
        v299 = vminq_f32(vrsqrteq_f32(v295), v173);
        v300 = vminq_f32(vmulq_f32(v299, vrsqrtsq_f32(vmulq_f32(v295, v299), v299)), v173);
        v301 = vmulq_f32(v295, vminq_f32(vmulq_f32(v300, vrsqrtsq_f32(vmulq_f32(v295, v300), v300)), v173));
        v302 = vandq_s8(v152, vcgtq_f32(v292, v301));
        v162.i64[0] = vminq_f32(v302, vrev64q_s32(v302)).u64[0];
        v162.i64[1] = v302.i64[1];
        v303 = vbslq_s8(v79, vrev64q_s32(vandq_s8(v152, vcgeq_f32(vnegq_f32(vminq_f32(v151, v298)), v135))), v162);
        v304 = vbslq_s8(v27, vminq_f32(v303, vextq_s8(v303, v303, 8uLL)), v303);
        v305 = vrev64q_s32(v304);
        v306 = vbslq_s8(v27, vminq_f32(vextq_s8(v288, v288, 8uLL), v305), vminq_f32(v305, vextq_s8(v304, v304, 8uLL)));
        *v305.f32 = vqtbl1_s8(v288, *v140.i8);
        v305.i64[1] = v292.i64[1];
        v307 = vminq_f32(vmaxq_f32(vrecpeq_f32(v305), v153), v173);
        v308 = vbslq_s8(v79, vbslq_s8(vcgtq_f32(vrev64q_s32(v306), v171), v171, v306), v288);
        v309 = vbslq_s8(v387, vminq_f32(vrev64q_s32(v308), vextq_s8(v308, v308, 8uLL)), v308);
        *&v117.u32[2] = vqtbl1_s8(v379, v386);
        v310 = vminq_f32(vmaxq_f32(vrecpeq_f32(v117), v153), v173);
        v311 = vminq_f32(vmaxq_f32(vmulq_f32(v307, vrecpsq_f32(v305, v307)), v153), v173);
        v312 = vminq_f32(vmaxq_f32(vmulq_f32(v310, vrecpsq_f32(v117, v310)), v153), v173);
        v117.i64[0] = vrecpsq_f32(v117, v312).u64[0];
        v312.i64[1] = v311.i64[1];
        v117.i64[1] = vrecpsq_f32(v305, v311).i64[1];
        v313 = vmulq_f32(vmulq_f32(v312, v117), vmulq_lane_f32(v287, *v128.f32, 1));
        v314 = vmulq_f32(v174, v313);
        v315 = vaddq_f32(v314, vextq_s8(v314, v314, 4uLL));
        v316 = vaddq_f32(v301, v292);
        v317 = vsubq_f32(v292, v301);
        v318 = vextq_s8(v309, v309, 0xCuLL);
        v319 = vbslq_s8(vcgtq_f32(v318, v135), vaddq_f32(v315, vextq_s8(v315, v315, 8uLL)), v135);
        v320 = vmulq_lane_f32(vsubq_f32(v296, v287), *v200.f32, 1);
        v321 = vmulq_laneq_f32(vaddq_f32(v287, v296), v200, 2);
        v322 = vminq_f32(vmaxq_f32(vrecpeq_f32(v316), v153), v173);
        v323 = vminq_f32(vmaxq_f32(vmulq_f32(v322, vrecpsq_f32(v316, v322)), v153), v173);
        v324 = vmulq_f32(vmulq_f32(v323, vrecpsq_f32(v316, v323)), v320);
        v325 = vminq_f32(vmaxq_f32(vrecpeq_f32(v317), v153), v173);
        v326 = vminq_f32(vmaxq_f32(vmulq_f32(v325, vrecpsq_f32(v317, v325)), v153), v173);
        v327 = vmulq_f32(vmulq_f32(v326, vrecpsq_f32(v317, v326)), v321);
        v328 = vsubq_f32(v313, vdupq_lane_s32(*v319.f32, 0));
        v329 = vmulq_f32(vaddq_f32(v313, v324), vsubq_f32(v327, v313));
        v330 = vaddq_f32(v329, vextq_s8(v329, v329, 4uLL));
        v331 = vmulq_f32(v328, v328);
        v332 = vaddq_f32(v331, vextq_s8(v331, v331, 4uLL));
        v333 = vmulq_f32(v174, v287);
        v334 = vaddq_f32(v333, vextq_s8(v333, v333, 4uLL));
        v330.i64[0] = vbslq_s8(v27, vaddq_f32(v334, vdupq_laneq_s64(v334, 1)), vaddq_f32(vrev64q_s32(vaddq_f32(v332, vdupq_laneq_s64(v332, 1))), vmulq_n_f32(v372, vaddq_f32(v330, vdupq_laneq_s32(v330, 2)).f32[0]))).u64[0];
        v335 = vsubq_f32(v287, vdupq_lane_s32(*v330.f32, 0));
        v336 = vmulq_f32(v335, v335);
        v337 = vaddq_f32(v336, vextq_s8(v336, v336, 4uLL));
        v338 = vmulq_f32(v372, v290);
        v339 = vaddq_f32(v338, vextq_s8(v338, v338, 4uLL));
        v340 = vbslq_s8(vcgtq_f32(v309, v171), v318, v171);
        v341 = vaddq_f32(v339, vdupq_lane_s64(v339.i64[0], 0));
        v330.i64[1] = v341.i64[1];
        v337.i64[0] = vaddq_f32(vdupq_laneq_s64(v341, 1), vaddq_f32(v337, vdupq_laneq_s64(v337, 1))).u64[0];
        v341.i64[0] = v337.i64[0];
        v341.i64[1] = v340.i64[1];
        v337.i64[1] = vdupq_laneq_s64(v340, 1).u64[0];
        v342 = vbslq_s8(v27, v330, vbslq_s8(vcgtq_f32(vextq_s8(v309, v309, 8uLL), v171), v330, v171));
        v343 = vbslq_s8(v79, vaddq_f32(vrev64q_s32(v337), v342), v341);
        v344 = vrev64q_s32(v343);
        v345 = vminq_f32(vmaxq_f32(vrecpeq_f32(v344), v153), v173);
        v346 = vminq_f32(vmaxq_f32(vmulq_f32(v345, vrecpsq_f32(v344, v345)), v153), v173);
        v344.i64[0] = vmulq_f32(vmulq_f32(v346, vrecpsq_f32(v344, v346)), v343).u64[0];
        v346.i64[0] = vextq_s8(v343, v343, 8uLL).u64[0];
        *v340.i8 = vext_s8(*v346.f32, *v344.f32, 4uLL);
        *v346.f32 = vext_s8(*v344.f32, *v346.f32, 4uLL);
        v344.i64[1] = v343.i64[1];
        v346.i64[1] = v340.i64[0];
        v347 = vnegq_f32(v346);
        v11 = 0uLL;
        v348 = vandq_s8(v152, vcgeq_f32(v347, v171));
        v349 = vaddq_f32(vmulq_f32(vsubq_f32(v319, v342), vbslq_s8(v27, v344, v348)), v342);
        v350 = vbslq_s8(v27, v349, vminq_f32(v381, vbslq_s8(v27, v349, v348)));
        v351 = vbslq_s8(vcgtq_f32(v350, v171), vrev64q_s32(v342), vrev64q_s32(v350));
        v352 = vbslq_s8(v27, vmulq_f32(v384, *v16), v351);
        v353 = vcvtq_f32_s32(vcvtq_s32_f32(v352));
        v351.i64[0] = vbslq_s8(v27, vsubq_f32(v353, vbslq_s8(vcgtq_f32(v353, v352), v152, 0)), v351).u64[0];
        v354 = vandq_s8(v152, vcgeq_f32(v383, v171));
        v353.i64[0] = vextq_s8(v354, v354, 8uLL).u64[0];
        *v344.f32 = vext_s8(*v353.f32, *v351.i8, 4uLL);
        *v353.f32 = vext_s8(*v351.i8, *v353.f32, 4uLL);
        v353.i64[1] = v344.i64[0];
        v351.i64[1] = v354.i64[1];
        v355 = vbslq_s8(v387, vsubq_f32(v381, v353), v351);
        v356 = vbslq_s8(v375, vminq_f32(v380, v355), v355);
        v357 = vbslq_s8(v375, vminq_f32(v380, v382), vbslq_s8(v27, vbslq_s8(vcgtq_f32(vextq_s8(v356, v356, 8uLL), v135), vrev64q_s32(v356), v128), v356));
        v358 = vcgtq_f32(vextq_s8(v357, v357, 4uLL), v171);
        v5 = v371;
        v359 = vbslq_s8(v79, vbslq_s8(v358, v357, vextq_s8(v128, v128, 4uLL)), v357);
        v360 = vbslq_s8(v27, vandq_s8(vcagtq_f32(v384, vextq_s8(v359, v359, 0xCuLL)), v152), v128);
        v12.i64[0] = 0x3F0000003F000000;
        v12.i64[1] = 0x3F0000003F000000;
        v361 = vminq_f32(v170, v360);
        v362 = vbslq_s8(v375, vextq_s8(v361, v361, 8uLL), v360);
        v363 = vbslq_s8(v27, v276, vrev64q_s32(v309));
        v359.i64[0] = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v362, 2), v80), v363, v359).u64[0];
        v364 = vbslq_s8(v27, vsubq_f32(vmulq_f32(v170, v362), v170), v362);
        *v363.i8 = vorr_s8(vand_s8(vrev64_s32(*v363.i8), *&vmvnq_s8(v27)), vand_s8(*v309.f32, *v27.i8));
        v365.i64[0] = v363.u32[0];
        v365.i64[1] = v363.u32[1];
        v366 = v365;
        v365.i64[0] = v359.u32[0];
        v365.i64[1] = v359.u32[1];
        v367 = *(v16 + 416);
        v368 = vbslq_s8(v367, vbslq_s8(vcgtq_f32(v80, vdupq_lane_s64(v364.i64[0], 0)), v366, v365), v364);
        v365.i64[0] = v385;
        v365.i64[1] = DWORD1(v385);
        *(*&v7 + v14) = vminq_f32(vmulq_f32(vbslq_s8(v367, v365, v152), v368), v152);
        v13 = vaddq_f32(v390, xmmword_2603429B0);
        v14 += 16;
      }

      while (v10 != v14);
      v13 = vaddq_f32(v370, xmmword_2603429C0);
      ++v4;
      *&v6 += v8;
      *&v7 += v9;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcDemosaic_2::GetDOD(HgcDemosaic_2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcDemosaic_2::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcDemosaic_2::HgcDemosaic_2(HgcDemosaic_2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287236070;
  operator new();
}

void HgcDemosaic_2::~HgcDemosaic_2(HgcDemosaic_2 *this)
{
  *this = &unk_287236070;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4003455651);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287236070;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4003455651);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcDemosaic_2::~HgcDemosaic_2(HGNode *this)
{
  *this = &unk_287236070;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4003455651);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcDemosaic_2::SetParameter(HgcDemosaic_2 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcDemosaic_2::GetParameter(HgcDemosaic_2 *this, unsigned int a2, float *a3)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcWhiteBalanceRAW::GetProgram(HgcWhiteBalanceRAW *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000634\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0;\n    FragmentOut output;\n\n    r0.xy = half2(hg_Params[2].zw) - c0.xx;\n    r0.zw = half2(frag._texCoord0.xy) - half2(hg_Params[1].xy);\n    r0.zw = fmin(r0.zw, r0.xy);\n    r0.zw = fmax(r0.zw, c0.xx);\n    s0.xy = float2(r0.zw) + hg_Params[3].xy;\n    s0.xy = s0.xy*hg_Params[3].zw;\n    r1.x = (half) hg_Texture0.sample(hg_Sampler0, s0.xy).x;\n    r0.zw = half2(frag._texCoord0.xy) - half2(hg_Params[2].xy);\n    r1.zw = half2(frag._texCoord0.xy) - half2(hg_Params[1].zw);\n    r0.zw = fmin(r0.xy, r0.zw);\n    r1.zw = fmin(r0.xy, r1.zw);\n    r0.xy = fmax(r0.zw, c0.xx);\n    r0.zw = fmax(r1.zw, c0.xx);\n    s0.xy = float2(r0.xy) + hg_Params[3].xy;\n    s0.xy = s0.xy*hg_Params[3].zw;\n    r1.z = (half) hg_Texture0.sample(hg_Sampler0, s0.xy).z;\n    s0.xy = float2(r0.zw) + hg_Params[3].xy;\n    s0.xy = s0.xy*hg_Params[3].zw;\n    r1.y = (half) hg_Texture0.sample(hg_Sampler0, s0.xy).y;\n    r1.xyz = r1.xyz - half3(hg_Params[0].xxx);\n    r1.xyz = r1.xyz*half3(hg_Params[0].yzw);\n    output.color0.xyz = fmin(float3(r1.xyz), float3(c0.yyy));\n    output.color0.w = float(c0.y);\n    return output;\n}\n//MD5=a6698d57:f4cd57fc:1ac6cad7:05401ec0\n//SIG=00400000:00000000:00000000:00000001:0001:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005aa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = hg_Params[2].zw - c0.xx;\n    r0.zw = frag._texCoord0.xy - hg_Params[1].xy;\n    r0.zw = fmin(r0.zw, r0.xy);\n    r0.zw = fmax(r0.zw, c0.xx);\n    r1.xy = r0.zw + hg_Params[3].xy;\n    r1.xy = r1.xy*hg_Params[3].zw;\n    r1.x = hg_Texture0.sample(hg_Sampler0, r1.xy).x;\n    r0.zw = frag._texCoord0.xy - hg_Params[2].xy;\n    r1.zw = frag._texCoord0.xy - hg_Params[1].zw;\n    r0.zw = fmin(r0.xy, r0.zw);\n    r1.zw = fmin(r0.xy, r1.zw);\n    r0.xy = fmax(r0.zw, c0.xx);\n    r0.zw = fmax(r1.zw, c0.xx);\n    r2.xy = r0.xy + hg_Params[3].xy;\n    r2.xy = r2.xy*hg_Params[3].zw;\n    r1.z = hg_Texture0.sample(hg_Sampler0, r2.xy).z;\n    r0.xy = r0.zw + hg_Params[3].xy;\n    r0.xy = r0.xy*hg_Params[3].zw;\n    r1.y = hg_Texture0.sample(hg_Sampler0, r0.xy).y;\n    r1.xyz = r1.xyz - hg_Params[0].xxx;\n    r1.xyz = r1.xyz*hg_Params[0].yzw;\n    output.color0.xyz = fmin(r1.xyz, c0.yyy);\n    output.color0.w = c0.y;\n    return output;\n}\n//MD5=23ff346a:c4a2d73b:0b76461a:7c8c8ac4\n//SIG=00000000:00000000:00000000:00000000:0001:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000005ef\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 1.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xy = hg_ProgramLocal2.zw - c0.xx;\n    r0.zw = hg_TexCoord0.xy - hg_ProgramLocal1.xy;\n    r0.zw = min(r0.zw, r0.xy);\n    r0.zw = max(r0.zw, c0.xx);\n    r1.xy = r0.zw + hg_ProgramLocal3.xy;\n    r1.xy = r1.xy*hg_ProgramLocal3.zw;\n    r1.x = texture2D(hg_Texture0, r1.xy).x;\n    r0.zw = hg_TexCoord0.xy - hg_ProgramLocal2.xy;\n    r1.zw = hg_TexCoord0.xy - hg_ProgramLocal1.zw;\n    r0.zw = min(r0.xy, r0.zw);\n    r1.zw = min(r0.xy, r1.zw);\n    r0.xy = max(r0.zw, c0.xx);\n    r0.zw = max(r1.zw, c0.xx);\n    r2.xy = r0.xy + hg_ProgramLocal3.xy;\n    r2.xy = r2.xy*hg_ProgramLocal3.zw;\n    r1.z = texture2D(hg_Texture0, r2.xy).z;\n    r0.xy = r0.zw + hg_ProgramLocal3.xy;\n    r0.xy = r0.xy*hg_ProgramLocal3.zw;\n    r1.y = texture2D(hg_Texture0, r0.xy).y;\n    r1.xyz = r1.xyz - hg_ProgramLocal0.xxx;\n    r1.xyz = r1.xyz*hg_ProgramLocal0.yzw;\n    gl_FragColor.xyz = min(r1.xyz, c0.yyy);\n    gl_FragColor.w = c0.y;\n}\n//MD5=b7fe7f36:69cec0c5:5dc0df38:8bfb24de\n//SIG=00000000:00000000:00000000:00000000:0001:0004:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE0732C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE07364(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE0735CLL);
}

uint64_t HgcWhiteBalanceRAW::BindTexture(HgcWhiteBalanceRAW *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v5.n128_f32[0] = *(a2 + 60);
  v6.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 136))(a2, 3, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcWhiteBalanceRAW::Bind(HgcWhiteBalanceRAW *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcWhiteBalanceRAW::RenderTile(HgcWhiteBalanceRAW *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = a2[2];
    v8 = (*&v7 + 32);
    v9 = 16 * a2[3].i32[0];
    v10 = 1.0;
    v11 = v5;
    do
    {
      v194 = v11;
      v12 = 0;
      if (v6 >= 4)
      {
        v13 = v8;
        for (i = v6; i > 3; i -= 4)
        {
          v15 = vaddq_f32(v11, xmmword_2603429B0);
          v16 = vaddq_f32(v15, xmmword_2603429B0);
          v17 = *(this + 51);
          v19 = *(v17 + 32);
          v18 = *(v17 + 48);
          v20 = vaddq_f32(v16, xmmword_2603429B0);
          v21 = vsubq_f32(vdupq_laneq_s64(v19, 1), v18);
          v22 = *(v17 + 16);
          *v23.f32 = vsub_f32(*v11.f32, *v22.f32);
          v24.i64[0] = v21.i64[0];
          *v25.f32 = vsub_f32(*v15.f32, *v22.f32);
          v26.i64[0] = v21.i64[0];
          v24.i64[1] = v23.i64[0];
          v26.i64[1] = v25.i64[0];
          *v27.f32 = vsub_f32(*v16.f32, *v22.f32);
          v28.i64[0] = v21.i64[0];
          v28.i64[1] = v27.i64[0];
          *v29.f32 = vsub_f32(*v20.f32, *v22.f32);
          v30.i64[0] = v21.i64[0];
          v30.i64[1] = v29.i64[0];
          v23.i64[1] = v21.i64[0];
          v25.i64[1] = v21.i64[0];
          v27.i64[1] = v21.i64[0];
          v29.i64[1] = v21.i64[0];
          v31 = vminq_f32(v24, v23);
          v32 = vminq_f32(v26, v25);
          v33 = vminq_f32(v28, v27);
          v34 = vminq_f32(v30, v29);
          v27.i64[0] = v21.i64[0];
          v27.i64[1] = v31.i64[1];
          v28.i64[0] = v21.i64[0];
          v29.i64[0] = v21.i64[0];
          v28.i64[1] = v32.i64[1];
          v29.i64[1] = v33.i64[1];
          v32.i64[0] = v21.i64[0];
          v32.i64[1] = v34.i64[1];
          v36 = *(v17 + 64);
          v35 = *(v17 + 80);
          v37 = vmaxq_f32(v27, v36);
          v38 = vmaxq_f32(v28, v36);
          v39 = vextq_s8(vmaxq_f32(v29, v36), v21, 8uLL);
          v40 = vextq_s8(vmaxq_f32(v32, v36), v21, 8uLL);
          v41 = a2[10];
          v42 = a2[11].i32[0];
          v43 = vsubq_f32(vextq_s8(v37, v21, 8uLL), v5);
          v44 = vaddq_s32(vcvtq_s32_f32(v43), vcltzq_f32(v43));
          v45 = vsubq_f32(vextq_s8(v38, v21, 8uLL), v5);
          v37.i64[0] = vsubq_f32(v43, vcvtq_f32_s32(v44)).u64[0];
          v46 = vaddq_s32(vcvtq_s32_f32(v45), vcltzq_f32(v45));
          v45.i64[0] = vsubq_f32(v45, vcvtq_f32_s32(v46)).u64[0];
          *v43.f32 = vdup_n_s32(v42);
          *v44.i8 = vmla_s32(vzip1_s32(*v44.i8, *v46.i8), vzip2_s32(*v44.i8, *v46.i8), *v43.f32);
          v47 = (*&v41 + 16 * v44.i32[0]);
          v42 *= 16;
          v48 = (*&v41 + 16 * v44.i32[1]);
          v49 = *v48;
          v50 = vsubq_f32(v48[1], *v48);
          v51 = (v48 + v42);
          v52 = vaddq_f32(*v47, vmulq_n_f32(vsubq_f32(v47[1], *v47), *v37.i32));
          v53 = *v51;
          v54 = vsubq_f32(v39, v5);
          v55 = vaddq_f32(*(v47 + v42), vmulq_n_f32(vsubq_f32(*(v47 + v42 + 16), *(v47 + v42)), *v37.i32));
          v56 = vaddq_s32(vcvtq_s32_f32(v54), vcltzq_f32(v54));
          v54.i64[0] = vsubq_f32(v54, vcvtq_f32_s32(v56)).u64[0];
          v57 = vsubq_f32(v40, v5);
          v58 = vaddq_s32(vcvtq_s32_f32(v57), vcltzq_f32(v57));
          v57.i64[0] = vsubq_f32(v57, vcvtq_f32_s32(v58)).u64[0];
          v59 = vmulq_n_f32(vsubq_f32(v51[1], *v51), v45.f32[0]);
          *v56.i8 = vmla_s32(vzip1_s32(*v56.i8, *v58.f32), vzip2_s32(*v56.i8, *v58.f32), *v43.f32);
          LODWORD(v51) = v56.i32[1];
          v60 = vaddq_f32(v49, vmulq_n_f32(v50, v45.f32[0]));
          v61 = (*&v41 + 16 * v56.i32[0]);
          v62 = vaddq_f32(*v61, vmulq_n_f32(vsubq_f32(v61[1], *v61), v54.f32[0]));
          v63 = vaddq_f32(v53, v59);
          v64 = (*&v41 + 16 * v51);
          v65 = vaddq_f32(*v64, vmulq_n_f32(vsubq_f32(v64[1], *v64), v57.f32[0]));
          v66 = vmulq_lane_f32(vsubq_f32(v55, v52), *v37.i8, 1);
          *v55.f32 = vsub_f32(*v11.f32, *v19.i8);
          v58.i64[0] = v21.i64[0];
          v58.i64[1] = v55.i64[0];
          *v67.f32 = vsub_f32(*v15.f32, *v19.i8);
          v68.i64[0] = v21.i64[0];
          v68.i64[1] = v67.i64[0];
          *v69.f32 = vsub_f32(*v16.f32, *v19.i8);
          v70.i64[0] = v21.i64[0];
          v70.i64[1] = v69.i64[0];
          v66.i64[0] = vaddq_f32(v52, v66).u64[0];
          *v50.f32 = vsub_f32(*v20.f32, *v19.i8);
          v71.i64[0] = v21.i64[0];
          v71.i64[1] = v50.i64[0];
          v19.i64[0] = vaddq_f32(v62, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v61 + v42), vmulq_n_f32(vsubq_f32(*(v61 + v42 + 16), *(v61 + v42)), v54.f32[0])), v62), *v54.f32, 1)).u64[0];
          v72 = vdupq_lane_s64(v11.i64[0], 0);
          v73.i64[0] = vaddq_f32(v60, vmulq_lane_f32(vsubq_f32(v63, v60), *v45.f32, 1)).u64[0];
          v74 = vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v64 + v42), vmulq_n_f32(vsubq_f32(*(v64 + v42 + 16), *(v64 + v42)), v57.f32[0])), v65), *v57.f32, 1);
          v75 = vsubq_f32(v72, v22);
          v76 = vsubq_f32(vdupq_lane_s64(v16.i64[0], 0), v22);
          v16.i64[0] = vaddq_f32(v65, v74).u64[0];
          v74.i64[0] = v66.i64[0];
          v74.i64[1] = v75.i64[1];
          v54.i64[0] = v19.i64[0];
          v54.i64[1] = v76.i64[1];
          v75.i64[0] = v73.i64[0];
          v76.i64[0] = v16.i64[0];
          v55.i64[1] = v21.i64[0];
          v75.i64[1] = vsubq_f32(vdupq_lane_s64(*&v15, 0), v22).i64[1];
          v67.i64[1] = v21.i64[0];
          v69.i64[1] = v21.i64[0];
          v76.i64[1] = vsubq_f32(vdupq_lane_s64(*&v20, 0), v22).i64[1];
          v50.i64[1] = v21.i64[0];
          v77 = vextq_s8(vminq_f32(v55, v58), v21, 8uLL);
          v78 = vextq_s8(vminq_f32(v67, v68), v21, 8uLL);
          v79 = vextq_s8(vminq_f32(v69, v70), v21, 8uLL);
          v80 = vextq_s8(vminq_f32(v50, v71), v21, 8uLL);
          v81 = vminq_f32(v77, v74);
          v82 = vminq_f32(v78, v75);
          v83 = vminq_f32(v79, v54);
          v84 = vminq_f32(v80, v76);
          v75.i64[0] = v66.i64[0];
          v75.i64[1] = v81.i64[1];
          v81.i64[0] = v73.i64[0];
          v76.i64[0] = v19.i64[0];
          v76.i64[1] = v83.i64[1];
          v81.i64[1] = v82.i64[1];
          v82.i64[0] = v16.i64[0];
          v82.i64[1] = v84.i64[1];
          v85 = vmaxq_f32(v77, v18);
          v86 = vmaxq_f32(v78, v18);
          v87 = vmaxq_f32(v79, v18);
          v88 = vmaxq_f32(v80, v18);
          v89 = vmaxq_f32(v75, v36);
          v90 = vmaxq_f32(v81, v36);
          v91 = vmaxq_f32(v76, v36);
          v92 = vmaxq_f32(v82, v36);
          v93 = vextq_s8(v89, v85, 8uLL);
          v85.i64[1] = v89.i64[1];
          v94 = vextq_s8(v90, v86, 8uLL);
          v95 = vextq_s8(v91, v87, 8uLL);
          v87.i64[1] = v91.i64[1];
          v96 = vextq_s8(v92, v88, 8uLL);
          v86.i64[1] = v90.i64[1];
          v88.i64[1] = v92.i64[1];
          v97 = vsubq_f32(v85, v5);
          v98 = vaddq_s32(vcvtq_s32_f32(v97), vcltzq_f32(v97));
          v99 = vsubq_f32(v86, v5);
          v92.i64[0] = vsubq_f32(v97, vcvtq_f32_s32(v98)).u64[0];
          v100 = vaddq_s32(vcvtq_s32_f32(v99), vcltzq_f32(v99));
          v85.i64[0] = vsubq_f32(v99, vcvtq_f32_s32(v100)).u64[0];
          *v100.i8 = vmla_s32(vzip1_s32(*v98.i8, *v100.i8), vzip2_s32(*v98.i8, *v100.i8), *v43.f32);
          LODWORD(v64) = v100.i32[1];
          v101 = (*&v41 + 16 * v100.i32[0]);
          v102 = *v101;
          v103 = vsubq_f32(v101[1], *v101);
          v104 = (v101 + v42);
          v105 = *v104;
          v106 = (*&v41 + 16 * v64);
          v107 = *v106;
          v108 = v106[1];
          v109 = (v106 + v42);
          v110 = vsubq_f32(v87, v5);
          v111 = vsubq_f32(v104[1], *v104);
          v112 = vaddq_s32(vcvtq_s32_f32(v110), vcltzq_f32(v110));
          v99.i64[0] = vsubq_f32(v110, vcvtq_f32_s32(v112)).u64[0];
          v113 = vsubq_f32(v88, v5);
          v115 = *v109;
          v114 = v109[1];
          v116 = vaddq_s32(vcvtq_s32_f32(v113), vcltzq_f32(v113));
          v98.i64[0] = vsubq_f32(v113, vcvtq_f32_s32(v116)).u64[0];
          *v112.i8 = vmla_s32(vzip1_s32(*v112.i8, *v116.i8), vzip2_s32(*v112.i8, *v116.i8), *v43.f32);
          v117 = (*&v41 + 16 * v112.i32[0]);
          v118 = vaddq_f32(v102, vmulq_n_f32(v103, *v92.i32));
          v119 = (*&v41 + 16 * v112.i32[1]);
          v120 = vsubq_f32(v93, v5);
          v121 = vaddq_f32(*v117, vmulq_n_f32(vsubq_f32(v117[1], *v117), v99.f32[0]));
          v122 = vaddq_s32(vcvtq_s32_f32(v120), vcltzq_f32(v120));
          v120.i64[0] = vsubq_f32(v120, vcvtq_f32_s32(v122)).u64[0];
          v123 = vsubq_f32(v94, v5);
          v124 = vaddq_f32(v105, vmulq_n_f32(v111, *v92.i32));
          v125 = vaddq_s32(vcvtq_s32_f32(v123), vcltzq_f32(v123));
          v116.i64[0] = vsubq_f32(v123, vcvtq_f32_s32(v125)).u64[0];
          v126 = vaddq_f32(*(v117 + v42), vmulq_n_f32(vsubq_f32(*(v117 + v42 + 16), *(v117 + v42)), v99.f32[0]));
          *v125.i8 = vmla_s32(vzip1_s32(*v122.i8, *v125.i8), vzip2_s32(*v122.i8, *v125.i8), *v43.f32);
          LODWORD(v117) = v125.i32[1];
          v127 = (*&v41 + 16 * v125.i32[0]);
          v128 = vaddq_f32(v107, vmulq_n_f32(vsubq_f32(v108, v107), v85.f32[0]));
          v129 = vaddq_f32(*v127, vmulq_n_f32(vsubq_f32(v127[1], *v127), v120.f32[0]));
          v130 = vaddq_f32(*v119, vmulq_n_f32(vsubq_f32(v119[1], *v119), *v98.i32));
          v131 = vaddq_f32(v115, vmulq_n_f32(vsubq_f32(v114, v115), v85.f32[0]));
          v132 = vaddq_f32(*(v119 + v42), vmulq_n_f32(vsubq_f32(*(v119 + v42 + 16), *(v119 + v42)), *v98.i32));
          v133 = (*&v41 + 16 * v117);
          v134 = vaddq_f32(v129, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v127 + v42), vmulq_n_f32(vsubq_f32(*(v127 + v42 + 16), *(v127 + v42)), v120.f32[0])), v129), *v120.f32, 1));
          v135 = vaddq_f32(*v133, vmulq_n_f32(vsubq_f32(v133[1], *v133), *v116.i32));
          v136 = vsubq_f32(v95, v5);
          v137 = vaddq_f32(v118, vmulq_lane_f32(vsubq_f32(v124, v118), *v92.i8, 1));
          v138 = vaddq_s32(vcvtq_s32_f32(v136), vcltzq_f32(v136));
          v136.i64[0] = vsubq_f32(v136, vcvtq_f32_s32(v138)).u64[0];
          v139 = vsubq_f32(v96, v5);
          v140 = vaddq_f32(v121, vmulq_lane_f32(vsubq_f32(v126, v121), *v99.f32, 1));
          v141 = vaddq_s32(vcvtq_s32_f32(v139), vcltzq_f32(v139));
          *v138.i8 = vmla_s32(vzip1_s32(*v138.i8, *v141.i8), vzip2_s32(*v138.i8, *v141.i8), *v43.f32);
          v142 = (*&v41 + 16 * v138.i32[0]);
          v139.i64[0] = vsubq_f32(v139, vcvtq_f32_s32(v141)).u64[0];
          v143 = vaddq_f32(*v142, vmulq_n_f32(vsubq_f32(v142[1], *v142), v136.f32[0]));
          v66.i64[1] = v137.i64[1];
          v144 = vaddq_f32(v143, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v142 + v42), vmulq_n_f32(vsubq_f32(*(v142 + v42 + 16), *(v142 + v42)), v136.f32[0])), v143), *v136.f32, 1));
          v10 = 1.0;
          v145 = (*&v41 + 16 * v138.i32[1]);
          v19.i64[1] = v140.i64[1];
          v146 = vaddq_f32(*v145, vmulq_n_f32(vsubq_f32(v145[1], *v145), v139.f32[0]));
          v73.i64[1] = vaddq_f32(v128, vmulq_lane_f32(vsubq_f32(v131, v128), *&v85, 1)).i64[1];
          v16.i64[1] = vaddq_f32(v130, vmulq_lane_f32(vsubq_f32(v132, v130), *&v98, 1)).i64[1];
          v147 = vbslq_s8(v35, vaddq_f32(v146, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v145 + v42), vmulq_n_f32(vsubq_f32(*(v145 + v42 + 16), *(v145 + v42)), v139.f32[0])), v146), *v139.f32, 1)), v16);
          v148 = vdupq_lane_s32(*v17, 0);
          v149 = vsubq_f32(vbslq_s8(v35, v134, v66), v148);
          v150 = vsubq_f32(vbslq_s8(v35, vaddq_f32(v135, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v133 + v42), vmulq_n_f32(vsubq_f32(*(v133 + v42 + 16), *(v133 + v42)), *v116.i32)), v135), *v116.i8, 1)), v73), v148);
          v151 = vsubq_f32(vbslq_s8(v35, v144, v19), v148);
          v152 = vsubq_f32(v147, v148);
          v153 = vextq_s8(*v17, *v17, 4uLL);
          v154 = vmulq_f32(v153, v149);
          v155 = vmulq_f32(v153, v150);
          v156 = vmulq_f32(v153, v151);
          v157 = vmulq_f32(v153, v152);
          v158 = *(v17 + 96);
          v159 = vminq_f32(v154, v158);
          v160 = vminq_f32(v156, v158);
          v161 = vminq_f32(v155, v158);
          v159.i32[3] = 1.0;
          v160.i32[3] = 1.0;
          v161.i32[3] = 1.0;
          v162 = vminq_f32(v157, v158);
          v162.i32[3] = 1.0;
          v13[-1] = v161;
          *v13 = v160;
          v13[-2] = v159;
          v13[1] = v162;
          v11 = vaddq_f32(v20, xmmword_2603429B0);
          v12 += 4;
          v13 += 4;
        }
      }

      if (v12 < v6)
      {
        do
        {
          v163 = *(this + 51);
          v165 = *(v163 + 32);
          v164 = *(v163 + 48);
          v166 = vsubq_f32(vdupq_laneq_s64(v165, 1), v164);
          v167 = *(v163 + 16);
          *v168.f32 = vsub_f32(*v11.f32, *v167.f32);
          v169.i64[0] = v166.i64[0];
          v169.i64[1] = v168.i64[0];
          v168.i64[1] = v166.i64[0];
          v170 = vminq_f32(v169, v168);
          v169.i64[0] = v166.i64[0];
          v169.i64[1] = v170.i64[1];
          v171 = *(v163 + 64);
          v172 = a2[10];
          v173 = vsubq_f32(vextq_s8(vmaxq_f32(v169, v171), v166, 8uLL), v5);
          v174 = vaddq_s32(vcvtq_s32_f32(v173), vcltzq_f32(v173));
          v175 = a2[11].i32[0];
          v173.i64[0] = vsubq_f32(v173, vcvtq_f32_s32(v174)).u64[0];
          v176 = (*&v172 + 16 * (v174.i32[0] + v174.i32[1] * v175));
          v177 = vaddq_f32(*v176, vmulq_n_f32(vsubq_f32(v176[1], *v176), v173.f32[0]));
          *v178.f32 = vsub_f32(*v11.f32, *v165.i8);
          v179.i64[0] = v166.i64[0];
          v165.i64[0] = vaddq_f32(v177, vmulq_lane_f32(vsubq_f32(vaddq_f32(v176[v175], vmulq_n_f32(vsubq_f32(v176[v175 + 1], v176[v175]), v173.f32[0])), v177), *v173.f32, 1)).u64[0];
          v179.i64[1] = v178.i64[0];
          v177.i64[0] = v165.i64[0];
          v177.i64[1] = vsubq_f32(vdupq_lane_s64(*&v11, 0), v167).i64[1];
          v178.i64[1] = v166.i64[0];
          v180 = vextq_s8(vminq_f32(v178, v179), v166, 8uLL);
          v166.i64[0] = v165.i64[0];
          v166.i64[1] = vminq_f32(v180, v177).i64[1];
          v181 = vmaxq_f32(v180, v164);
          v182 = vmaxq_f32(v166, v171);
          v183 = vextq_s8(v182, v181, 8uLL);
          v181.i64[1] = v182.i64[1];
          v184 = vsubq_f32(v181, v5);
          v185 = vsubq_f32(v183, v5);
          v186 = vaddq_s32(vcvtq_s32_f32(v185), vcltzq_f32(v185));
          v187 = vaddq_s32(vcvtq_s32_f32(v184), vcltzq_f32(v184));
          v185.i64[0] = vsubq_f32(v185, vcvtq_f32_s32(v186)).u64[0];
          *v186.i8 = vmla_s32(vzip1_s32(*v187.i8, *v186.i8), vzip2_s32(*v187.i8, *v186.i8), vdup_n_s32(v175));
          v184.i64[0] = vsubq_f32(v184, vcvtq_f32_s32(v187)).u64[0];
          v188 = (*&v172 + 16 * v186.i32[0]);
          v189 = vaddq_f32(*v188, vmulq_n_f32(vsubq_f32(v188[1], *v188), v184.f32[0]));
          v190 = (*&v172 + 16 * v186.i32[1]);
          v191 = vaddq_f32(*v190, vmulq_n_f32(vsubq_f32(v190[1], *v190), v185.f32[0]));
          v165.i64[1] = vaddq_f32(v189, vmulq_lane_f32(vsubq_f32(vaddq_f32(v188[16 * v175], vmulq_n_f32(vsubq_f32((v188 + 16 * v175)[16], v188[16 * v175]), *&v184)), v189), *&v184, 1)).i64[1];
          v192 = vminq_f32(vmulq_f32(vextq_s8(*v163, *v163, 4uLL), vsubq_f32(vbslq_s8(*(v163 + 80), vaddq_f32(v191, vmulq_lane_f32(vsubq_f32(vaddq_f32(v190[v175], vmulq_n_f32(vsubq_f32(v190[v175 + 1], v190[v175]), v185.f32[0])), v191), *v185.f32, 1)), v165), vdupq_lane_s32(*v163, 0))), *(v163 + 96));
          v192.f32[3] = v10;
          *(*&v7 + 16 * v12) = v192;
          v11 = vaddq_f32(v11, xmmword_2603429B0);
          ++v12;
        }

        while (v12 < v6);
      }

      v11 = vaddq_f32(v194, xmmword_2603429C0);
      ++v4;
      v8 = (v8 + v9);
      *&v7 += v9;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcWhiteBalanceRAW::GetDOD(HgcWhiteBalanceRAW *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  HGRectGrow(v6, v5, v7);
  return 0x8000000080000000;
}

uint64_t HgcWhiteBalanceRAW::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  DOD = HGRenderer::GetDOD(a2, Input);
  v9 = v8;
  v10 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  return HGRectGrow(DOD, v9, v10);
}

void HgcWhiteBalanceRAW::HgcWhiteBalanceRAW(HgcWhiteBalanceRAW *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872362D8;
  operator new();
}

void HgcWhiteBalanceRAW::~HgcWhiteBalanceRAW(HgcWhiteBalanceRAW *this)
{
  *this = &unk_2872362D8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AC4F46D1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_2872362D8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AC4F46D1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcWhiteBalanceRAW::~HgcWhiteBalanceRAW(HGNode *this)
{
  *this = &unk_2872362D8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AC4F46D1);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcWhiteBalanceRAW::SetParameter(HgcWhiteBalanceRAW *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcWhiteBalanceRAW::GetParameter(HgcWhiteBalanceRAW *this, unsigned int a2, float *a3)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcRasterizerGenerator::GetProgram(HgcRasterizerGenerator *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000183\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    FragmentOut output;\n\n    output.color0 = frag._color*hg_Params[0];\n    return output;\n}\n//MD5=f0fb2d12:8a63952b:8c3e7840:9534b621\n//SIG=02400000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0200:0000:0000:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000183\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    FragmentOut output;\n\n    output.color0 = frag._color*hg_Params[0];\n    return output;\n}\n//MD5=f0fb2d12:8a63952b:8c3e7840:9534b621\n//SIG=02000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0200:0000:0000:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000017b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp vec4 hg_ProgramLocal0;\nvoid main()\n{\n\n    gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0)*hg_ProgramLocal0;\n}\n//MD5=5ce95289:5b0ceedb:528a5b25:059f4e88\n//SIG=02000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
  }
}

void sub_25FE085C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE085F0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE085E8);
}

uint64_t HgcRasterizerGenerator::Bind(HgcRasterizerGenerator *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcRasterizerGenerator::RenderTile(HgcRasterizerGenerator *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1 && *(a2 + 2) - *a2 >= 1)
  {
    v3 = 0;
    v4 = *(*(this + 51) + 16);
    v5 = *(a2 + 2);
    v6 = 16 * *(a2 + 6);
    v7 = 16 * (*(a2 + 2) - *a2);
    do
    {
      v8 = 0;
      do
      {
        *(v5 + v8) = vmulq_f32(v4, **(this + 51));
        v8 += 16;
      }

      while (v7 != v8);
      ++v3;
      v5 += v6;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcRasterizerGenerator::GetDOD(HgcRasterizerGenerator *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcRasterizerGenerator::GetProperty(HGNode *this, int a2, uint64_t a3)
{
  if (a2 == 20)
  {
    return 1;
  }

  else
  {
    return HGNode::GetProperty(this, a2, a3);
  }
}

void HgcRasterizerGenerator::HgcRasterizerGenerator(HgcRasterizerGenerator *this)
{
  HGNode3D::HGNode3D(this);
  *v1 = &unk_287236540;
  operator new();
}

void HgcRasterizerGenerator::~HgcRasterizerGenerator(HgcRasterizerGenerator *this)
{
  *this = &unk_287236540;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGMipmapLevel::~HGMipmapLevel(this);
}

{
  *this = &unk_287236540;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGMipmapLevel::~HGMipmapLevel(this);
}

{
  *this = &unk_287236540;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGMipmapLevel::~HGMipmapLevel(this);

  HGObject::operator delete(v3);
}

uint64_t HgcRasterizerGenerator::SetParameter(HgcRasterizerGenerator *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcRasterizerGenerator::GetParameter(HgcRasterizerGenerator *this, unsigned int a2, float *a3)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcRasterizerTexture::GetProgram(HgcRasterizerTexture *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002e8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0.xy = half2(frag._texCoord0.xy)/half2(frag._texCoord0.ww);\n    r0.xy = r0.xy + half2(hg_Params[5].xy);\n    r0.xy = r0.xy*half2(hg_Params[5].zw);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, float2(r0.xy));\n    r0 = r0*half4(frag._color);\n    output.color0 = float4(r0)*hg_Params[0];\n    return output;\n}\n//MD5=e403a67b:687ef7e8:b76ee859:1a4e898a\n//SIG=02400000:00000000:00000000:00000000:0000:0006:0001:0000:0000:0000:0202:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002af\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy/frag._texCoord0.ww;\n    r0.xy = r0.xy + hg_Params[5].xy;\n    r0.xy = r0.xy*hg_Params[5].zw;\n    r0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    r0 = r0*frag._color;\n    output.color0 = r0*hg_Params[0];\n    return output;\n}\n//MD5=ed919563:adff3d10:d856f429:fd9e4277\n//SIG=02000000:00000000:00000000:00000000:0000:0006:0001:0000:0000:0000:0202:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000342\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    highp vec4 r0;\n\n    r0.xy = hg_TexCoord0.xy/hg_TexCoord0.ww;\n    r0.xy = r0.xy + hg_ProgramLocal5.xy;\n    r0.xy = r0.xy*hg_ProgramLocal5.zw;\n    r0 = texture2D(hg_Texture0, r0.xy);\n    r0 = r0*vec4(1.0, 1.0, 1.0, 1.0);\n    gl_FragColor = r0*hg_ProgramLocal0;\n}\n//MD5=18ef6ee5:2f79df4d:2199991e:ce4393d9\n//SIG=02000000:00000000:00000000:00000000:0000:0006:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE08F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE08F5C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE08F54);
}

uint64_t HgcRasterizerTexture::BindTexture(HgcRasterizerTexture *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v5.n128_f32[0] = *(a2 + 60);
  v6.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 136))(a2, 5, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcRasterizerTexture::Bind(HgcRasterizerTexture *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 120))(a2, *(this + 51) + 32);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 80, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcRasterizerTexture::RenderFragment(uint64_t a1, float32x4_t *a2, int32x2_t *a3)
{
  *v3.f32 = vadd_f32(vcvt_f32_s32(*a3), 0x3F0000003F000000);
  v3.i64[1] = 0x3F80000000000000;
  v4 = a2[9];
  v5 = a2[1];
  v6 = vdupq_laneq_s32(v5, 3);
  v7 = *(a1 + 408);
  v8 = v7[10];
  v9 = v7[11];
  v10 = vminq_f32(vmaxq_f32(vrecpeq_f32(v6), v8), v9);
  v11 = vminq_f32(vmaxq_f32(vmulq_f32(v10, vrecpsq_f32(v6, v10)), v8), v9);
  v12 = a3[10];
  v13 = a3[11].i32[0];
  v14 = vsubq_f32(vmulq_f32(v5, vmulq_f32(v11, vrecpsq_f32(v6, v11))), v3);
  if (a2[14].i32[0])
  {
    v15 = vaddq_s32(vcvtq_s32_f32(v14), vcltzq_f32(v14));
    v16 = vsubq_f32(v14, vcvtq_f32_s32(v15)).u64[0];
    v17 = (*&v12 + 16 * (v15.i32[0] + v15.i32[1] * v13));
    v18 = vaddq_f32(*v17, vmulq_n_f32(vsubq_f32(v17[1], *v17), v16.f32[0]));
    v19 = vmulq_f32(v4, vaddq_f32(v18, vmulq_lane_f32(vsubq_f32(vaddq_f32(v17[v13], vmulq_n_f32(vsubq_f32(v17[v13 + 1], v17[v13]), v16.f32[0])), v18), v16, 1)));
  }

  else
  {
    v21.i64[0] = 0x3F0000003F000000;
    v21.i64[1] = 0x3F0000003F000000;
    v22 = vaddq_f32(v14, v21);
    v23 = vcvtq_s32_f32(v22);
    v22.i64[0] = vaddq_s32(v23, vcgtq_f32(vcvtq_f32_s32(v23), v22)).u64[0];
    v19 = vmulq_f32(v4, *(*&v12 + 16 * (v22.i32[0] + v22.i32[1] * v13)));
  }

  **&a3[2] = vmulq_f32(v19, *v7);
  return 0;
}

uint64_t HgcRasterizerTexture::RenderTile(HgcRasterizerTexture *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *a2;
  v7 = *(a2 + 3) - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = (*(a2 + 2) - v6.i32[0]);
    if (v8 >= 1)
    {
      *v9.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
      v9.i64[1] = 0x3F80000000000000;
      v10 = *(a2 + 2);
      v11 = *(*(this + 51) + 16);
      v12 = 0;
      v13 = 16 * *(a2 + 6);
      v14 = 16 * v8;
      if (v5)
      {
        v15 = v9;
        do
        {
          v16 = 0;
          v17 = v15;
          do
          {
            v18 = vdupq_laneq_s32(v17, 3);
            v19 = *(this + 51);
            v20 = v19[10];
            v21 = v19[11];
            v22 = vminq_f32(vmaxq_f32(vrecpeq_f32(v18), v20), v21);
            v23 = vminq_f32(vmaxq_f32(vmulq_f32(v22, vrecpsq_f32(v18, v22)), v20), v21);
            v24 = *(a2 + 22);
            v25 = vsubq_f32(vmulq_f32(v17, vmulq_f32(v23, vrecpsq_f32(v18, v23))), v9);
            v26 = vaddq_s32(vcvtq_s32_f32(v25), vcltzq_f32(v25));
            v25.i64[0] = vsubq_f32(v25, vcvtq_f32_s32(v26)).u64[0];
            v27 = (*(a2 + 10) + 16 * (v26.i32[0] + v26.i32[1] * v24));
            v28 = vaddq_f32(*v27, vmulq_n_f32(vsubq_f32(v27[1], *v27), v25.f32[0]));
            *(v10 + v16) = vmulq_f32(vmulq_f32(v11, vaddq_f32(v28, vmulq_lane_f32(vsubq_f32(vaddq_f32(v27[v24], vmulq_n_f32(vsubq_f32(v27[v24 + 1], v27[v24]), v25.f32[0])), v28), *v25.f32, 1))), *v19);
            v17 = vaddq_f32(v17, xmmword_2603429B0);
            v16 += 16;
          }

          while (v14 != v16);
          v15 = vaddq_f32(v15, xmmword_2603429C0);
          ++v12;
          v10 += v13;
        }

        while (v12 != v7);
      }

      else
      {
        v29.i64[0] = 0x3F0000003F000000;
        v29.i64[1] = 0x3F0000003F000000;
        v30 = v9;
        do
        {
          v31 = 0;
          v32 = v30;
          do
          {
            v33 = vdupq_laneq_s32(v32, 3);
            v34 = *(this + 51);
            v35 = v34[10];
            v36 = v34[11];
            v37 = vminq_f32(vmaxq_f32(vrecpeq_f32(v33), v35), v36);
            v38 = vminq_f32(vmaxq_f32(vmulq_f32(v37, vrecpsq_f32(v33, v37)), v35), v36);
            v39 = vaddq_f32(vsubq_f32(vmulq_f32(v32, vmulq_f32(v38, vrecpsq_f32(v33, v38))), v9), v29);
            v40 = vcvtq_s32_f32(v39);
            v39.i64[0] = vaddq_s32(v40, vcgtq_f32(vcvtq_f32_s32(v40), v39)).u64[0];
            *(v10 + v31) = vmulq_f32(vmulq_f32(v11, *(*(a2 + 10) + 16 * (v39.i32[0] + v39.i32[1] * *(a2 + 22)))), *v34);
            v32 = vaddq_f32(v32, xmmword_2603429B0);
            v31 += 16;
          }

          while (v14 != v31);
          v30 = vaddq_f32(v30, xmmword_2603429C0);
          ++v12;
          v10 += v13;
        }

        while (v12 != v7);
      }
    }
  }

  return 0;
}

uint64_t HgcRasterizerTexture::GetDOD(HgcRasterizerTexture *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v8 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v6 = HGRectGrow(v6, v5, v8);
    v5 = v9;
  }

  HGTransform::HGTransform(v15);
  HGTransform::LoadMatrixf(v15, (*(this + 51) + 32));
  HGTransform::Invert2D(v15);
  v11 = HGTransformUtils::MinW(v10);
  *&v16.var0 = v5;
  DOD = HGTransformUtils::GetDOD(v15, v6, v16, 0.5, v11);
  v14 = HGRectUnion(0, 0, DOD, v13);
  HGTransform::~HGTransform(v15);
  return v14;
}

uint64_t HgcRasterizerTexture::GetROI(HgcRasterizerTexture *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    HGTransform::HGTransform(v17);
    HGTransform::LoadMatrixf(v17, (*(this + 51) + 32));
    v10 = HGTransformUtils::MinW(v9);
    *&v18.var0 = v5;
    ROI = HGTransformUtils::GetROI(v17, v6, v18, 0.5, v10);
    v4 = HGRectUnion(0, 0, ROI, v12);
    v14 = v13;
    HGTransform::~HGTransform(v17);
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v15 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      return HGRectGrow(v4, v14, v15);
    }
  }

  return v4;
}

uint64_t HgcRasterizerTexture::GetProperty(HGNode *this, int a2, uint64_t a3)
{
  if (a2 == 20)
  {
    return 1;
  }

  else
  {
    return HGNode::GetProperty(this, a2, a3);
  }
}

void HgcRasterizerTexture::HgcRasterizerTexture(HgcRasterizerTexture *this)
{
  HGNode3D::HGNode3D(this);
  *v1 = &unk_2872367B8;
  *(v1 + 416) = 1;
  operator new();
}

void HgcRasterizerTexture::~HgcRasterizerTexture(HgcRasterizerTexture *this)
{
  *this = &unk_2872367B8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C408070C27FLL);
    this = v2;
    v1 = vars8;
  }

  HGMipmapLevel::~HGMipmapLevel(this);
}

{
  *this = &unk_2872367B8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C408070C27FLL);
    this = v2;
    v1 = vars8;
  }

  HGMipmapLevel::~HGMipmapLevel(this);
}

{
  *this = &unk_2872367B8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C408070C27FLL);
  }

  HGMipmapLevel::~HGMipmapLevel(this);

  HGObject::operator delete(v3);
}

uint64_t HgcRasterizerTexture::SetParameter(HgcRasterizerTexture *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  *(this + 104) = 1;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcRasterizerTexture::GetParameter(HgcRasterizerTexture *this, unsigned int a2, float *a3)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

double HgcRasterizerTexture::GetOutput(HgcRasterizerTexture *this, HGRenderer *a2)
{
  if (*(this + 104))
  {
    v2 = *(this + 51);
    v3 = *(v2 + 112);
    *(v2 + 32) = *(v2 + 96);
    *(*(this + 51) + 48) = v3;
    *(*(this + 51) + 64) = xmmword_2603429D0;
    result = 0.0;
    *(*(this + 51) + 80) = xmmword_2603427D0;
    *(this + 104) = 0;
  }

  return result;
}

const char *HgcBlur_cs9s::GetProgram(HgcBlur_cs9s *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n"
             "//LEN=0000000ef3\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]], \n"
             "    texture2d< half > hg_Texture0 [[ texture(0) ]], \n"
             "    sampler hg_Sampler0 [[ sampler(0) ]])\n"
             "{\n"
             "    const half4 c0 = half4(0.5000000000, 0.5000000000, 0.000000000, 0.000000000);\n"
             "    half4 r0, r1, r2, r3, r4, r5, r6;\n"
             "    float4 s0, s1, s2, s3, s4, s5, s6, s7;\n"
             "    FragmentOut output;\n"
             "\n"
             "    s0.xy = frag._texCoord1.xy*hg_Params[5].xy;\n"
             "    s0.xy = s0.xy + frag._texCoord0.xy;\n"
             "    s0.xy = s0.xy + hg_Params[6].xy;\n"
             "    s0.zw = s0.xy + hg_Params[7].xy;\n"
             "    s1.xy = s0.zw + hg_Params[7].xy;\n"
             "    s2.zw = s1.xy + hg_Params[7].xy;\n"
             "    s3.xy = s2.zw + hg_Params[7].xy;\n"
             "    s4.xy = s3.xy + hg_Params[7].xy;\n"
             "    s2.xy = s4.xy + hg_Params[7].xy;\n"
             "    s1.zw = s3.xy + hg_Params[8].xy;\n"
             "    s1.zw = s1.zw*hg_Params[8].zw;\n"
             "    s6.xy = s1.zw*hg_Params[9].xy;\n"
             "    s6.xy = fmax(s6.xy, float2(c0.xy));\n"
             "    s7.xy = hg_Params[9].xy - float2(c0.xy);\n"
             "    s6.xy = fmin(s6.xy, s7.xy);\n"
             "    r1 = (half4) hg_Texture0.sample(hg_Sampler0, s6.xy);\n"
             "    s1.zw = s2.xy + hg_Params[8].xy;\n"
             "    s1.xy = s1.xy + hg_Params[8].xy;\n"
             "    s4.zw = s1.xy*hg_Params[8].zw;\n"
             "    s1.zw = s1.zw*hg_Params[8].zw;\n"
             "    s4.xy = s4.xy + hg_Params[8].xy;\n"
             "    s2.zw = s2.zw + hg_Params[8].xy;\n"
             "    s0.zw = s0.zw + hg_Params[8].xy;\n"
             "    r1 = r1*half4(hg_Params[0]);\n"
             "    s7.xy = s4.zw*hg_Params[9].xy;\n"
             "    s7.xy = fmax(s7.xy, float2(c0.xy));\n"
             "    s6.xy = hg_Params[9].xy - float2(c0.xy);\n"
             "    s7.xy = fmin(s7.xy, s6.xy);\n"
             "    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s7.xy);\n"
             "    s6.xy = s1.zw*hg_Params[9].xy;\n"
             "    s6.xy = fmax(s6.xy, float2(c0.xy));\n"
             "    s7.xy = hg_Params[9].xy - float2(c0.xy);\n"
             "    s6.xy = fmin(s6.xy, s7.xy);\n"
             "    r2 = (half4) hg_Texture0.sample(hg_Sampler0, s6.xy);\n"
             "    s4.xy = s4.xy*hg_Params[8].zw;\n"
             "    r2 = r0 + r2;\n"
             "    s2.zw = s2.zw*hg_Params[8].zw;\n"
             "    s7.xy = s2.zw*hg_Params[9].xy;\n"
             "    s7.xy = fmax(s7.xy, float2(c0.xy));\n"
             "    s6.xy = hg_Params[9].xy - float2(c0.xy);\n"
             "    s7.xy = fmin(s7.xy, s6.xy);\n"
             "    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s7.xy);\n"
             "    s6.xy = s4.xy*hg_Params[9].xy;\n"
             "    s6.xy = fmax(s6.xy, float2(c0.xy));\n"
             "    s7.xy = hg_Params[9].xy - float2(c0.xy);\n"
             "    s6.xy = fmin(s6.xy, s7.xy);\n"
             "    r3 = (half4) hg_Texture0.sample(hg_Sampler0, s6.xy);\n"
             "    r3 = r0 + r3;\n"
             "    r3 = r3*half4(hg_Params[1]) + r1;\n"
             "    s5.xy = s2.xy + hg_Params[7].xy;\n"
             "    s5.zw = s5.xy + hg_Params[8].xy;\n"
             "    s5.zw = s5.zw*hg_Params[8].zw;\n"
             "    r2 = r2*half4(hg_Params[2]) + r3;\n"
             "    s0.zw = s0.zw*hg_Params[8].zw;\n"
             "    s7.xy = s0.zw*hg_Params[9].xy;\n"
             "    s7.xy = fmax(s7.xy, float2(c0.xy));\n"
             "    s6.xy = hg_Params[9].xy - float2(c0.xy);\n"
             "    s7.xy = fmin(s7.xy, s6.xy);\n"
             "    r3 = (half4) hg_Texture0.sample(hg_Sampler0, s7.xy);\n"
             "    s0.zw = s5.xy + hg_Params[7].xy;\n"
             "    s5.xy = s0.zw + hg_Params[8].xy;\n"
             "    s0.zw = s0.xy + hg_Params[8].xy;\n"
             "    s6.xy = s5.zw*hg_Params[9].xy;\n"
             "    s6.xy = fmax(s6.xy, float2(c0.xy));\n"
             "    s7.xy = hg_Params[9].xy - float2(c0.xy);\n"
             "    s6.xy = fmin(s6.xy, s7.xy);\n"
             "    r4 = (half4) hg_Texture0.sample(hg_Sampler0, s6.xy);\n"
             "    s0.xy = s5.xy*hg_Params[8].zw;\n"
             "    s5.xy = s0.zw*hg_Params[8].zw;\n"
             "    r4 = r3 + r4;\n"
             "    r2 = r4*half4(hg_Params[3]) + r2;\n"
             "    s7.xy = s0.xy*hg_Params[9].xy;\n"
             "    s7.xy = fmax(s7.xy, float2(c0.xy));\n"
             "    s6.xy = hg_Params[9].xy - float2(c0.xy);\n"
             "    s7.xy = fmin(s7.xy, s6.xy);\n"
             "    r5 = (half4) hg_Texture0.sample(hg_Sampler0, s7.xy);\n"
             "    s6.xy = s5.xy*hg_Params[9].xy;\n"
             "    s6.xy = fmax(s6.xy, float2(c0.xy));\n"
             "    s7.xy = hg_Params[9].xy - float2(c0.xy);\n"
             "    s6.xy = fmin(s6.xy, s7.xy);\n"
             "    r6 = (half4) hg_Texture0.sample(hg_Sampler0, s6.xy);\n"
             "    r5 = r6 + r5;\n"
             "    output.color0 = float4(r5)*hg_Params[4] + float4(r2);\n"
             "    return output;\n"
             "}\n"
             "//MD5=8af31599:eb0d3a9d:b19e4849:d2105752\n"
             "//SIG=00400000:00000000:00000000:00000001:0001:000a:000f:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n"
             "//LEN=0000000dcc\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]], \n"
             "    texture2d< float > hg_Texture0 [[ texture(0) ]], \n"
             "    sampler hg_Sampler0 [[ sampler(0) ]])\n"
             "{\n"
             "    const float4 c0 = float4(0.5000000000, 0.5000000000, 0.000000000, 0.000000000);\n"
             "    float4 r0, r1, r2, r3, r4, r5, r6, r7;\n"
             "    FragmentOut output;\n"
             "\n"
             "    r0.xy = frag._texCoord1.xy*hg_Params[5].xy;\n"
             "    r0.xy = r0.xy + frag._texCoord0.xy;\n"
             "    r0.xy = r0.xy + hg_Params[6].xy;\n"
             "    r0.zw = r0.xy + hg_Params[7].xy;\n"
             "    r1.xy = r0.zw + hg_Params[7].xy;\n"
             "    r3.zw = r1.xy + hg_Params[7].xy;\n"
             "    r2.xy = r3.zw + hg_Params[7].xy;\n"
             "    r4.xy = r2.xy + hg_Params[7].xy;\n"
             "    r3.xy = r4.xy + hg_Params[7].xy;\n"
             "    r1.zw = r2.xy + hg_Params[8].xy;\n"
             "    r1.zw = r1.zw*hg_Params[8].zw;\n"
             "    r6.xy = r1.zw*hg_Params[9].xy;\n"
             "    r6.xy = fmax(r6.xy, c0.xy);\n"
             "    r7.xy = hg_Params[9].xy - c0.xy;\n"
             "    r6.xy = fmin(r6.xy, r7.xy);\n"
             "    r2 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n"
             "    r1.zw = r3.xy + hg_Params[8].xy;\n"
             "    r1.xy = r1.xy + hg_Params[8].xy;\n"
             "    r4.zw = r1.xy*hg_Params[8].zw;\n"
             "    r1.zw = r1.zw*hg_Params[8].zw;\n"
             "    r4.xy = r4.xy + hg_Params[8].xy;\n"
             "    r3.zw = r3.zw + hg_Params[8].xy;\n"
             "    r0.zw = r0.zw + hg_Params[8].xy;\n"
             "    r2 = r2*hg_Params[0];\n"
             "    r7.xy = r4.zw*hg_Params[9].xy;\n"
             "    r7.xy = fmax(r7.xy, c0.xy);\n"
             "    r6.xy = hg_Params[9].xy - c0.xy;\n"
             "    r7.xy = fmin(r7.xy, r6.xy);\n"
             "    r5 = hg_Texture0.sample(hg_Sampler0, r7.xy);\n"
             "    r6.xy = r1.zw*hg_Params[9].xy;\n"
             "    r6.xy = fmax(r6.xy, c0.xy);\n"
             "    r7.xy = hg_Params[9].xy - c0.xy;\n"
             "    r6.xy = fmin(r6.xy, r7.xy);\n"
             "    r1 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n"
             "    r4.xy = r4.xy*hg_Params[8].zw;\n"
             "    r1 = r5 + r1;\n"
             "    r3.zw = r3.zw*hg_Params[8].zw;\n"
             "    r7.xy = r3.zw*hg_Params[9].xy;\n"
             "    r7.xy = fmax(r7.xy, c0.xy);\n"
             "    r6.xy = hg_Params[9].xy - c0.xy;\n"
             "    r7.xy = fmin(r7.xy, r6.xy);\n"
             "    r5 = hg_Texture0.sample(hg_Sampler0, r7.xy);\n"
             "    r6.xy = r4.xy*hg_Params[9].xy;\n"
             "    r6.xy = fmax(r6.xy, c0.xy);\n"
             "    r7.xy = hg_Params[9].xy - c0.xy;\n"
             "    r6.xy = fmin(r6.xy, r7.xy);\n"
             "    r4 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n"
             "    r4 = r5 + r4;\n"
             "    r4 = r4*hg_Params[1] + r2;\n"
             "    r2.xy = r3.xy + hg_Params[7].xy;\n"
             "    r2.zw = r2.xy + hg_Params[8].xy;\n"
             "    r2.zw = r2.zw*hg_Params[8].zw;\n"
             "    r1 = r1*hg_Params[2] + r4;\n"
             "    r0.zw = r0.zw*hg_Params[8].zw;\n"
             "    r7.xy = r0.zw*hg_Params[9].xy;\n"
             "    r7.xy = fmax(r7.xy, c0.xy);\n"
             "    r6.xy = hg_Params[9].xy - c0.xy;\n"
             "    r7.xy = fmin(r7.xy, r6.xy);\n"
             "    r4 = hg_Texture0.sample(hg_Sampler0, r7.xy);\n"
             "    r0.zw = r2.xy + hg_Params[7].xy;\n"
             "    r2.xy = r0.zw + hg_Params[8].xy;\n"
             "    r0.zw = r0.xy + hg_Params[8].xy;\n"
             "    r6.xy = r2.zw*hg_Params[9].xy;\n"
             "    r6.xy = fmax(r6.xy, c0.xy);\n"
             "    r7.xy = hg_Params[9].xy - c0.xy;\n"
             "    r6.xy = fmin(r6.xy, r7.xy);\n"
             "    r3 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n"
             "    r0.xy = r2.xy*hg_Params[8].zw;\n"
             "    r2.xy = r0.zw*hg_Params[8].zw;\n"
             "    r3 = r4 + r3;\n"
             "    r1 = r3*hg_Params[3] + r1;\n"
             "    r7.xy = r0.xy*hg_Params[9].xy;\n"
             "    r7.xy = fmax(r7.xy, c0.xy);\n"
             "    r6.xy = hg_Params[9].xy - c0.xy;\n"
             "    r7.xy = fmin(r7.xy, r6.xy);\n"
             "    r0 = hg_Texture0.sample(hg_Sampler0, r7.xy);\n"
             "    r6.xy = r2.xy*hg_Params[9].xy;\n"
             "    r6.xy = fmax(r6.xy, c0.xy);\n"
             "    r7.xy = hg_Params[9].xy - c0.xy;\n"
             "    r6.xy = fmin(r6.xy, r7.xy);\n"
             "    r2 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n"
             "    r0 = r2 + r0;\n"
             "    output.color0 = r0*hg_Params[4] + r1;\n"
             "    return output;\n"
             "}\n"
             "//MD5=2a372906:61260339:48778105:68017d9d\n"
             "//SIG=00000000:00000000:00000000:00000000:0001:000a:0008:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000c12\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0.xy = hg_TexCoord1.xy*hg_ProgramLocal5.xy;\n    r0.xy = r0.xy + hg_TexCoord0.xy;\n    r0.xy = r0.xy + hg_ProgramLocal6.xy;\n    r0.zw = r0.xy + hg_ProgramLocal7.xy;\n    r1.xy = r0.zw + hg_ProgramLocal7.xy;\n    r3.zw = r1.xy + hg_ProgramLocal7.xy;\n    r2.xy = r3.zw + hg_ProgramLocal7.xy;\n    r4.xy = r2.xy + hg_ProgramLocal7.xy;\n    r3.xy = r4.xy + hg_ProgramLocal7.xy;\n    r1.zw = r2.xy + hg_ProgramLocal8.xy;\n    r1.zw = r1.zw*hg_ProgramLocal8.zw;\n    r6.xy = hg_ProgramLocal9.xy*c0.xy + r1.zw;\n    r2 = texture2D(hg_Texture0, r6.xy);\n    r1.zw = r3.xy + hg_ProgramLocal8.xy;\n    r1.xy = r1.xy + hg_ProgramLocal8.xy;\n    r4.zw = r1.xy*hg_ProgramLocal8.zw;\n    r1.zw = r1.zw*hg_ProgramLocal8.zw;\n    r4.xy = r4.xy + hg_ProgramLocal8.xy;\n    r3.zw = r3.zw + hg_ProgramLocal8.xy;\n    r0.zw = r0.zw + hg_ProgramLocal8.xy;\n    r2 = r2*hg_ProgramLocal0;\n    r6.xy = hg_ProgramLocal9.xy*c0.xy + r4.zw;\n    r5 = texture2D(hg_Texture0, r6.xy);\n    r6.xy = hg_ProgramLocal9.xy*c0.xy + r1.zw;\n    r1 = texture2D(hg_Texture0, r6.xy);\n    r4.xy = r4.xy*hg_ProgramLocal8.zw;\n    r1 = r5 + r1;\n    r3.zw = r3.zw*hg_ProgramLocal8.zw;\n    r6.xy = hg_ProgramLocal9.xy*c0.xy + r3.zw;\n    r5 = texture2D(hg_Texture0, r6.xy);\n    r6.xy = hg_ProgramLocal9.xy*c0.xy + r4.xy;\n    r4 = texture2D(hg_Texture0, r6.xy);\n    r4 = r5 + r4;\n    r4 = r4*hg_ProgramLocal1 + r2;\n    r2.xy = r3.xy + hg_ProgramLocal7.xy;\n    r2.zw = r2.xy + hg_ProgramLocal8.xy;\n    r2.zw = r2.zw*hg_ProgramLocal8.zw;\n    r1 = r1*hg_ProgramLocal2 + r4;\n    r0.zw = r0.zw*hg_ProgramLocal8.zw;\n    r6.xy = hg_ProgramLocal9.xy*c0.xy + r0.zw;\n    r4 = texture2D(hg_Texture0, r6.xy);\n    r0.zw = r2.xy + hg_ProgramLocal7.xy;\n    r2.xy = r0.zw + hg_ProgramLocal8.xy;\n    r0.zw = r0.xy + hg_ProgramLocal8.xy;\n    r6.xy = hg_ProgramLocal9.xy*c0.xy + r2.zw;\n    r3 = texture2D(hg_Texture0, r6.xy);\n    r0.xy = r2.xy*hg_ProgramLocal8.zw;\n    r2.xy = r0.zw*hg_ProgramLocal8.zw;\n    r3 = r4 + r3;\n    r1 = r3*hg_ProgramLocal3 + r1;\n    r6.xy = hg_ProgramLocal9.xy*c0.xy + r0.xy;\n    r0 = texture2D(hg_Texture0, r6.xy);\n    r6.xy = hg_ProgramLocal9.xy*c0.xy + r2.xy;\n    r2 = texture2D(hg_Texture0, r6.xy);\n    r0 = r2 + r0;\n    gl_FragColor = r0*hg_ProgramLocal4 + r1;\n}\n//MD5=55e7fd50:9f7d4509:b6988dd8:48d03ab1\n//SIG=00000000:00000000:00000000:00000000:0001:000a:0007:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void HgcBlur_cs9s::InitProgramDescriptor(HgcBlur_cs9s *this, HGProgramDescriptor *a2)
{
  HGProgramDescriptor::SetVisibleShaderWithSource( a2,  "HgcBlur_cs9s_hgc_visible",  "//Metal1.0     \n //LEN=0000000d1b\n [[ visible ]] FragmentOut HgcBlur_cs9s_hgc_visible(const constant float4* hg_Params, \n texture2d< float > hg_Texture0, \n sampler hg_Sampler0,\n float4 texCoord0,\n float4 texCoord1)\n {\n const float4 c0 = float4(0.5000000000, 0.5000000000, 0.000000000, 0.000000000);\n"
    "    float4 r0, r1, r2, r3, r4, r5, r6, r7;\n"
    "    FragmentOut output;\n"
    "\n"
    "    r0.xy = texCoord1.xy*hg_Params[5].xy;\n"
    "    r0.xy = r0.xy + texCoord0.xy;\n"
    "    r0.xy = r0.xy + hg_Params[6].xy;\n"
    "    r0.zw = r0.xy + hg_Params[7].xy;\n"
    "    r1.xy = r0.zw + hg_Params[7].xy;\n"
    "    r3.zw = r1.xy + hg_Params[7].xy;\n"
    "    r2.xy = r3.zw + hg_Params[7].xy;\n"
    "    r4.xy = r2.xy + hg_Params[7].xy;\n"
    "    r3.xy = r4.xy + hg_Params[7].xy;\n"
    "    r1.zw = r2.xy + hg_Params[8].xy;\n"
    "    r1.zw = r1.zw*hg_Params[8].zw;\n"
    "    r6.xy = r1.zw*hg_Params[9].xy;\n"
    "    r6.xy = fmax(r6.xy, c0.xy);\n"
    "    r7.xy = hg_Params[9].xy - c0.xy;\n"
    "    r6.xy = fmin(r6.xy, r7.xy);\n"
    "    r2 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n"
    "    r1.zw = r3.xy + hg_Params[8].xy;\n"
    "    r1.xy = r1.xy + hg_Params[8].xy;\n"
    "    r4.zw = r1.xy*hg_Params[8].zw;\n"
    "    r1.zw = r1.zw*hg_Params[8].zw;\n"
    "    r4.xy = r4.xy + hg_Params[8].xy;\n"
    "    r3.zw = r3.zw + hg_Params[8].xy;\n"
    "    r0.zw = r0.zw + hg_Params[8].xy;\n"
    "    r2 = r2*hg_Params[0];\n"
    "    r7.xy = r4.zw*hg_Params[9].xy;\n"
    "    r7.xy = fmax(r7.xy, c0.xy);\n"
    "    r6.xy = hg_Params[9].xy - c0.xy;\n"
    "    r7.xy = fmin(r7.xy, r6.xy);\n"
    "    r5 = hg_Texture0.sample(hg_Sampler0, r7.xy);\n"
    "    r6.xy = r1.zw*hg_Params[9].xy;\n"
    "    r6.xy = fmax(r6.xy, c0.xy);\n"
    "    r7.xy = hg_Params[9].xy - c0.xy;\n"
    "    r6.xy = fmin(r6.xy, r7.xy);\n"
    "    r1 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n"
    "    r4.xy = r4.xy*hg_Params[8].zw;\n"
    "    r1 = r5 + r1;\n"
    "    r3.zw = r3.zw*hg_Params[8].zw;\n"
    "    r7.xy = r3.zw*hg_Params[9].xy;\n"
    "    r7.xy = fmax(r7.xy, c0.xy);\n"
    "    r6.xy = hg_Params[9].xy - c0.xy;\n"
    "    r7.xy = fmin(r7.xy, r6.xy);\n"
    "    r5 = hg_Texture0.sample(hg_Sampler0, r7.xy);\n"
    "    r6.xy = r4.xy*hg_Params[9].xy;\n"
    "    r6.xy = fmax(r6.xy, c0.xy);\n"
    "    r7.xy = hg_Params[9].xy - c0.xy;\n"
    "    r6.xy = fmin(r6.xy, r7.xy);\n"
    "    r4 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n"
    "    r4 = r5 + r4;\n"
    "    r4 = r4*hg_Params[1] + r2;\n"
    "    r2.xy = r3.xy + hg_Params[7].xy;\n"
    "    r2.zw = r2.xy + hg_Params[8].xy;\n"
    "    r2.zw = r2.zw*hg_Params[8].zw;\n"
    "    r1 = r1*hg_Params[2] + r4;\n"
    "    r0.zw = r0.zw*hg_Params[8].zw;\n"
    "    r7.xy = r0.zw*hg_Params[9].xy;\n"
    "    r7.xy = fmax(r7.xy, c0.xy);\n"
    "    r6.xy = hg_Params[9].xy - c0.xy;\n"
    "    r7.xy = fmin(r7.xy, r6.xy);\n"
    "    r4 = hg_Texture0.sample(hg_Sampler0, r7.xy);\n"
    "    r0.zw = r2.xy + hg_Params[7].xy;\n"
    "    r2.xy = r0.zw + hg_Params[8].xy;\n"
    "    r0.zw = r0.xy + hg_Params[8].xy;\n"
    "    r6.xy = r2.zw*hg_Params[9].xy;\n"
    "    r6.xy = fmax(r6.xy, c0.xy);\n"
    "    r7.xy = hg_Params[9].xy - c0.xy;\n"
    "    r6.xy = fmin(r6.xy, r7.xy);\n"
    "    r3 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n"
    "    r0.xy = r2.xy*hg_Params[8].zw;\n"
    "    r2.xy = r0.zw*hg_Params[8].zw;\n"
    "    r3 = r4 + r3;\n"
    "    r1 = r3*hg_Params[3] + r1;\n"
    "    r7.xy = r0.xy*hg_Params[9].xy;\n"
    "    r7.xy = fmax(r7.xy, c0.xy);\n"
    "    r6.xy = hg_Params[9].xy - c0.xy;\n"
    "    r7.xy = fmin(r7.xy, r6.xy);\n"
    "    r0 = hg_Texture0.sample(hg_Sampler0, r7.xy);\n"
    "    r6.xy = r2.xy*hg_Params[9].xy;\n"
    "    r6.xy = fmax(r6.xy, c0.xy);\n"
    "    r7.xy = hg_Params[9].xy - c0.xy;\n"
    "    r6.xy = fmin(r6.xy, r7.xy);\n"
    "    r2 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n"
    "    r0 = r2 + r0;\n"
    "    output.color0 = r0*hg_Params[4] + r1;\n"
    "    return output;\n"
    "}\n");
  HGProgramDescriptor::SetFragmentFunctionName(a2, "HgcBlur_cs9s");
}

void sub_25FE0A0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE0A110(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE0A108);
}

uint64_t HgcBlur_cs9s::BindTexture(HgcBlur_cs9s *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
  {
    (*(*a2 + 72))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
  }

  (*(*a2 + 136))(a2, 9, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), 0.0, 0.0);
  return 0;
}

uint64_t HgcBlur_cs9s::Bind(HgcBlur_cs9s *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBlur_cs9s::RenderTile(float32x4_t **this, int32x2_t *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = ((*this)[19].i64[1])(this, v4);
  v6 = *a2;
  v7 = a2[1].i32[1] - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = a2[1].i32[0] - v6.i32[0];
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = vcvt_f32_s32(vsub_s32(a2[27], a2[26]));
      __asm { FMOV            V2.2S, #-1.0 }

      v16 = vadd_f32(v10, _D2);
      v17 = vadd_f32(v16, _D2);
      *v18.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
      v18.i64[1] = 0x3F80000000000000;
      v19 = a2[2];
      v20 = 16 * a2[3].i32[0];
      v21 = 16 * v8;
      v22 = v18;
      do
      {
        v23 = 0;
        v24 = v18;
        v25 = v22;
        do
        {
          v32 = this[51];
          v33 = vaddq_f32(v32[6], vaddq_f32(v24, vmulq_f32(v25, v32[5])));
          v34 = v32[7];
          v35 = v32[8];
          v36 = vdupq_lane_s64(vaddq_f32(v34, v33).i64[0], 0);
          v37 = vaddq_f32(v34, vextq_s8(v36, v33, 8uLL));
          v38 = vaddq_f32(v34, v37);
          v39 = vaddq_f32(v34, v38);
          v40 = vextq_s8(v35, v35, 8uLL);
          v41 = a2[10];
          v42 = a2[11].i32[0];
          v43 = vmul_f32(v10, vmul_f32(*v40.f32, vadd_f32(*v35.f32, *v39.f32)));
          if (v5)
          {
            v44 = vmin_f32(vmax_f32(vadd_f32(v43, 0xBF000000BF000000), 0), v16);
            v45 = vcvt_s32_f32(vmin_f32(v44, v17));
            v46 = vsub_f32(v44, vcvt_f32_s32(v45));
            v47 = (*&v41 + 16 * (v45.i32[0] + v45.i32[1] * v42));
            v48 = vaddq_f32(*v47, vmulq_n_f32(vsubq_f32(v47[1], *v47), v46.f32[0]));
            v49 = vaddq_f32(v48, vmulq_lane_f32(vsubq_f32(vaddq_f32(v47[v42], vmulq_n_f32(vsubq_f32(v47[v42 + 1], v47[v42]), v46.f32[0])), v48), v46, 1));
          }

          else
          {
            v50 = vcvt_s32_f32(vmin_f32(vmax_f32(v43, 0), v16));
            v49 = *(*&v41 + 16 * (v50.i32[0] + v50.i32[1] * v42));
          }

          v51 = vdupq_lane_s64(v38.i64[0], 0);
          v52 = vaddq_f32(v34, v39);
          v38.i64[0] = vaddq_f32(v34, v52).u64[0];
          v53.i64[0] = vaddq_f32(v35, v37).u64[0];
          v53.i64[1] = vaddq_f32(v40, vdupq_lane_s64(*&v38, 0)).i64[1];
          v54 = vmulq_f32(v35, vdupq_lane_s64(v53.i64[0], 0));
          v55 = vmulq_f32(v35, v53);
          v56 = vaddq_f32(v35, v52).u64[0];
          v57.i64[0] = v38.i64[0];
          v57.u64[1] = vadd_f32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v51, v51, 8uLL));
          v58 = vmul_f32(v10, *&vextq_s8(v54, v54, 8uLL));
          v59 = vextq_s8(v55, v55, 8uLL).u64[0];
          v60 = vextq_s8(v57, v57, 8uLL).u64[0];
          if (v5)
          {
            v61 = vmin_f32(vmax_f32(vadd_f32(v58, 0xBF000000BF000000), 0), v16);
            v62 = vcvt_s32_f32(vmin_f32(v61, v17));
            v63 = vsub_f32(v61, vcvt_f32_s32(v62));
            v64 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, v59), 0xBF000000BF000000), 0), v16);
            v65 = vcvt_s32_f32(vmin_f32(v64, v17));
            v66 = vsub_f32(v64, vcvt_f32_s32(v65));
            v67 = vdup_n_s32(v42);
            v68 = vmla_s32(vzip1_s32(v62, v65), vzip2_s32(v62, v65), v67);
            v69 = v68.i32[1];
            v70 = (*&v41 + 16 * v68.i32[0]);
            v71 = vaddq_f32(*v70, vmulq_n_f32(vsubq_f32(v70[1], *v70), v63.f32[0]));
            v72 = vaddq_f32(v71, vmulq_lane_f32(vsubq_f32(vaddq_f32(v70[v42], vmulq_n_f32(vsubq_f32(v70[v42 + 1], v70[v42]), v63.f32[0])), v71), v63, 1));
            v73 = (*&v41 + 16 * v69);
            v74 = vaddq_f32(*v73, vmulq_n_f32(vsubq_f32(v73[1], *v73), v66.f32[0]));
            v75 = vaddq_f32(v74, vmulq_lane_f32(vsubq_f32(vaddq_f32(v73[v42], vmulq_n_f32(vsubq_f32(v73[v42 + 1], v73[v42]), v66.f32[0])), v74), v66, 1));
            *&v38.u32[2] = vmul_f32(*v40.f32, v60);
            v76 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, *&v38.u32[2]), 0xBF000000BF000000), 0), v16);
            v77 = vcvt_s32_f32(vmin_f32(v76, v17));
            v78 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, vmul_f32(*v40.f32, v56)), 0xBF000000BF000000), 0), v16);
            v79 = vcvt_s32_f32(vmin_f32(v78, v17));
            v80 = vmla_s32(vzip1_s32(v77, v79), vzip2_s32(v77, v79), v67);
            v81 = vaddq_f32(v72, v75);
            v82 = (*&v41 + 16 * v80.i32[0]);
            v83 = vsub_f32(v76, vcvt_f32_s32(v77));
            v84 = vsub_f32(v78, vcvt_f32_s32(v79));
            v85 = vaddq_f32(*v82, vmulq_n_f32(vsubq_f32(v82[1], *v82), v83.f32[0]));
            v86 = vaddq_f32(v85, vmulq_lane_f32(vsubq_f32(vaddq_f32(v82[v42], vmulq_n_f32(vsubq_f32(v82[v42 + 1], v82[v42]), v83.f32[0])), v85), v83, 1));
            v87 = (*&v41 + 16 * v80.i32[1]);
            v88 = vaddq_f32(*v87, vmulq_n_f32(vsubq_f32(v87[1], *v87), v84.f32[0]));
            v89 = vaddq_f32(v88, vmulq_lane_f32(vsubq_f32(vaddq_f32(v87[v42], vmulq_n_f32(vsubq_f32(v87[v42 + 1], v87[v42]), v84.f32[0])), v88), v84, 1));
            v90 = vaddq_f32(v40, v36);
            *v90.i8 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, vmul_f32(*v40.f32, *&vextq_s8(v90, v90, 8uLL))), 0xBF000000BF000000), 0), v16);
            *v72.f32 = vcvt_s32_f32(vmin_f32(*v90.i8, v17));
            *v90.i8 = vsub_f32(*v90.i8, vcvt_f32_s32(*v72.f32));
            v91 = (*&v41 + 16 * (v72.i32[0] + v72.i32[1] * v42));
            v92 = vaddq_f32(*v91, vmulq_n_f32(vsubq_f32(v91[1], *v91), *v90.i32));
            v93 = vaddq_f32(v92, vmulq_lane_f32(vsubq_f32(vaddq_f32(v91[v42], vmulq_n_f32(vsubq_f32(v91[v42 + 1], v91[v42]), *v90.i32)), v92), *v90.i8, 1));
            v94 = vaddq_f32(v34, v38).u64[0];
            v95 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, vmul_f32(*v40.f32, vadd_f32(*v35.f32, v94))), 0xBF000000BF000000), 0), v16);
            v96 = vcvt_s32_f32(vmin_f32(v95, v17));
            v97 = vsub_f32(v95, vcvt_f32_s32(v96));
            v98 = (*&v41 + 16 * (v96.i32[0] + v96.i32[1] * v42));
            v99 = vaddq_f32(*v98, vmulq_n_f32(vsubq_f32(v98[1], *v98), v97.f32[0]));
            v100 = vaddq_f32(v99, vmulq_lane_f32(vsubq_f32(vaddq_f32(v98[v42], vmulq_n_f32(vsubq_f32(v98[v42 + 1], v98[v42]), v97.f32[0])), v99), v97, 1));
          }

          else
          {
            v101 = vcvt_s32_f32(vmin_f32(vmax_f32(v58, 0), v16));
            v102 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, v59), 0), v16));
            v103 = vdup_n_s32(v42);
            v104 = vmla_s32(vzip1_s32(v101, v102), vzip2_s32(v101, v102), v103);
            v105 = vmul_f32(*v40.f32, v60);
            v106 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, v105), 0), v16));
            v107 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, vmul_f32(*v40.f32, v56)), 0), v16));
            v108 = vmla_s32(vzip1_s32(v106, v107), vzip2_s32(v106, v107), v103);
            v109 = v108.i32[1];
            v86 = *(*&v41 + 16 * v108.i32[0]);
            v81 = vaddq_f32(*(*&v41 + 16 * v104.i32[0]), *(*&v41 + 16 * v104.i32[1]));
            *&v38.u32[2] = v105;
            v89 = *(*&v41 + 16 * v109);
            v110 = vaddq_f32(v40, v36);
            *v110.i8 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, vmul_f32(*v40.f32, *&vextq_s8(v110, v110, 8uLL))), 0), v16));
            v93 = *(*&v41 + 16 * (v110.i32[0] + v110.i32[1] * v42));
            v94 = vaddq_f32(v34, v38).u64[0];
            v111 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, vmul_f32(*v40.f32, vadd_f32(*v35.f32, v94))), 0), v16));
            v100 = *(*&v41 + 16 * (v111.i32[0] + v111.i32[1] * v42));
          }

          *v112.f32 = vadd_f32(*v34.f32, v94);
          v112.i64[1] = v33.i64[0];
          v113 = vmulq_f32(v40, vaddq_f32(v35, v112));
          v114 = vmulq_f32(v40, vextq_s8(vaddq_f32(v40, v112), v113, 8uLL)).u64[0];
          v115 = vmul_f32(v10, *v113.i8);
          if (v5)
          {
            v116 = vmin_f32(vmax_f32(vadd_f32(v115, 0xBF000000BF000000), 0), v16);
            v117 = vcvt_s32_f32(vmin_f32(v116, v17));
            v118 = vsub_f32(v116, vcvt_f32_s32(v117));
            v119 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, v114), 0xBF000000BF000000), 0), v16);
            v120 = vcvt_s32_f32(vmin_f32(v119, v17));
            v121 = vsub_f32(v119, vcvt_f32_s32(v120));
            v122 = vmla_s32(vzip1_s32(v117, v120), vzip2_s32(v117, v120), vdup_n_s32(v42));
            v123 = (*&v41 + 16 * v122.i32[0]);
            v124 = vaddq_f32(*v123, vmulq_n_f32(vsubq_f32(v123[1], *v123), v118.f32[0]));
            v30 = vaddq_f32(v124, vmulq_lane_f32(vsubq_f32(vaddq_f32(v123[v42], vmulq_n_f32(vsubq_f32(v123[v42 + 1], v123[v42]), v118.f32[0])), v124), v118, 1));
            v125 = (*&v41 + 16 * v122.i32[1]);
            v126 = vaddq_f32(*v125, vmulq_n_f32(vsubq_f32(v125[1], *v125), v121.f32[0]));
            v31 = vaddq_f32(v126, vmulq_lane_f32(vsubq_f32(vaddq_f32(v125[v42], vmulq_n_f32(vsubq_f32(v125[v42 + 1], v125[v42]), v121.f32[0])), v126), v121, 1));
          }

          else
          {
            v26 = vcvt_s32_f32(vmin_f32(vmax_f32(v115, 0), v16));
            v27 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, v114), 0), v16));
            v28 = vmla_s32(vzip1_s32(v26, v27), vzip2_s32(v26, v27), vdup_n_s32(v42));
            v29 = v28.i32[1];
            v30 = *(*&v41 + 16 * v28.i32[0]);
            v31 = *(*&v41 + 16 * v29);
          }

          *(*&v19 + v23) = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v81, v32[2]), vaddq_f32(vmulq_f32(v49, *v32), vmulq_f32(vaddq_f32(v86, v89), v32[1]))), vmulq_f32(vaddq_f32(v93, v100), v32[3])), vmulq_f32(vaddq_f32(v30, v31), v32[4]));
          v24 = vaddq_f32(v24, xmmword_2603429B0);
          v25 = vaddq_f32(v25, xmmword_2603429B0);
          v23 += 16;
        }

        while (v21 != v23);
        v18 = vaddq_f32(v18, xmmword_2603429C0);
        v22 = vaddq_f32(v22, xmmword_2603429C0);
        ++v9;
        *&v19 += v20;
      }

      while (v9 != v7);
    }
  }

  return 0;
}

uint64_t HgcBlur_cs9s::GetDOD(HgcBlur_cs9s *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcBlur_cs9s::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcBlur_cs9s::HgcBlur_cs9s(HgcBlur_cs9s *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287236A30;
  operator new();
}

void HgcBlur_cs9s::~HgcBlur_cs9s(HgcBlur_cs9s *this)
{
  *this = &unk_287236A30;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40265AC83CLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287236A30;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40265AC83CLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBlur_cs9s::~HgcBlur_cs9s(HGNode *this)
{
  *this = &unk_287236A30;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40265AC83CLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBlur_cs9s::SetParameter(HgcBlur_cs9s *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBlur_cs9s::GetParameter(HgcBlur_cs9s *this, unsigned int a2, float *a3)
{
  if (a2 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcBlur_cs9s_rect::GetProgram(HgcBlur_cs9s_rect *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000952\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2, r3, r4, r5, r6, r7, r8;\n    float4 s0, s1, s2, s3, s4, s5, s6, s7, s8, s9;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord1.xy*hg_Params[5].xy + frag._texCoord0.xy;\n    s0.xy = s0.xy + hg_Params[6].xy;\n    s1.xy = s0.xy + hg_Params[7].xy;\n    s2.xy = s1.xy + hg_Params[7].xy;\n    s3.xy = s2.xy + hg_Params[7].xy;\n    s4.xy = s3.xy + hg_Params[7].xy;\n    s5.xy = s4.xy + hg_Params[7].xy;\n    s6.xy = s5.xy + hg_Params[7].xy;\n    s7.xy = s6.xy + hg_Params[7].xy;\n    s8.xy = s7.xy + hg_Params[7].xy;\n    s9.xy = s0.xy + hg_Params[8].xy;\n    s9.xy = s9.xy*hg_Params[8].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n    s9.xy = s8.xy + hg_Params[8].xy;\n    s9.xy = s9.xy*hg_Params[8].zw;\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n    r0 = r0 + r1;\n    s9.xy = s1.xy + hg_Params[8].xy;\n    s9.xy = s9.xy*hg_Params[8].zw;\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n    s9.xy = s7.xy + hg_Params[8].xy;\n    s9.xy = s9.xy*hg_Params[8].zw;\n    r3 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n    r2 = r2 + r3;\n    s9.xy = s2.xy + hg_Params[8].xy;\n    s9.xy = s9.xy*hg_Params[8].zw;\n    r4 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n    s9.xy = s6.xy + hg_Params[8].xy;\n    s9.xy = s9.xy*hg_Params[8].zw;\n    r5 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n    r4 = r4 + r5;\n    s9.xy = s3.xy + hg_Params[8].xy;\n    s9.xy = s9.xy*hg_Params[8].zw;\n    r6 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n    s9.xy = s5.xy + hg_Params[8].xy;\n    s9.xy = s9.xy*hg_Params[8].zw;\n    r7 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n    r6 = r6 + r7;\n    s9.xy = s4.xy + hg_Params[8].xy;\n    s9.xy = s9.xy*hg_Params[8].zw;\n    r8 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n    r8 = r8*half4(hg_Params[0]);\n    r8 = r6*half4(hg_Params[1]) + r8;\n    r8 = r4*half4(hg_Params[2]) + r8;\n    r8 = r2*half4(hg_Params[3]) + r8;\n    r8 = r0*half4(hg_Params[4]) + r8;\n    output.color0 = float4(r8);\n    return output;\n}\n//MD5=20231576:38422c71:410e9f91:50cad1c9\n//SIG=00400000:00000000:00000000:00000001:0000:0009:0013:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000008b2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord1.xy*hg_Params[5].xy + frag._texCoord0.xy;\n    r0.xy = r0.xy + hg_Params[6].xy;\n    r1.xy = r0.xy + hg_Params[7].xy;\n    r2.xy = r1.xy + hg_Params[7].xy;\n    r3.xy = r2.xy + hg_Params[7].xy;\n    r4.xy = r3.xy + hg_Params[7].xy;\n    r5.xy = r4.xy + hg_Params[7].xy;\n    r6.xy = r5.xy + hg_Params[7].xy;\n    r7.xy = r6.xy + hg_Params[7].xy;\n    r8.xy = r7.xy + hg_Params[7].xy;\n    r9.xy = r0.xy + hg_Params[8].xy;\n    r9.xy = r9.xy*hg_Params[8].zw;\n    r0 = hg_Texture0.sample(hg_Sampler0, r9.xy);\n    r9.xy = r8.xy + hg_Params[8].xy;\n    r9.xy = r9.xy*hg_Params[8].zw;\n    r8 = hg_Texture0.sample(hg_Sampler0, r9.xy);\n    r0 = r0 + r8;\n    r9.xy = r1.xy + hg_Params[8].xy;\n    r9.xy = r9.xy*hg_Params[8].zw;\n    r1 = hg_Texture0.sample(hg_Sampler0, r9.xy);\n    r9.xy = r7.xy + hg_Params[8].xy;\n    r9.xy = r9.xy*hg_Params[8].zw;\n    r7 = hg_Texture0.sample(hg_Sampler0, r9.xy);\n    r1 = r1 + r7;\n    r9.xy = r2.xy + hg_Params[8].xy;\n    r9.xy = r9.xy*hg_Params[8].zw;\n    r2 = hg_Texture0.sample(hg_Sampler0, r9.xy);\n    r9.xy = r6.xy + hg_Params[8].xy;\n    r9.xy = r9.xy*hg_Params[8].zw;\n    r6 = hg_Texture0.sample(hg_Sampler0, r9.xy);\n    r2 = r2 + r6;\n    r9.xy = r3.xy + hg_Params[8].xy;\n    r9.xy = r9.xy*hg_Params[8].zw;\n    r3 = hg_Texture0.sample(hg_Sampler0, r9.xy);\n    r9.xy = r5.xy + hg_Params[8].xy;\n    r9.xy = r9.xy*hg_Params[8].zw;\n    r5 = hg_Texture0.sample(hg_Sampler0, r9.xy);\n    r3 = r3 + r5;\n    r9.xy = r4.xy + hg_Params[8].xy;\n    r9.xy = r9.xy*hg_Params[8].zw;\n    r4 = hg_Texture0.sample(hg_Sampler0, r9.xy);\n    r4 = r4*hg_Params[0];\n    r4 = r3*hg_Params[1] + r4;\n    r4 = r2*hg_Params[2] + r4;\n    r4 = r1*hg_Params[3] + r4;\n    r4 = r0*hg_Params[4] + r4;\n    output.color0 = r4;\n    return output;\n}\n//MD5=32296e5f:5026098e:617aecba:68002612\n//SIG=00000000:00000000:00000000:00000000:0000:0009:000a:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000009f8\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    highp vec4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9;\n\n    r0.xy = hg_TexCoord1.xy*hg_ProgramLocal5.xy + hg_TexCoord0.xy;\n    r0.xy = r0.xy + hg_ProgramLocal6.xy;\n    r1.xy = r0.xy + hg_ProgramLocal7.xy;\n    r2.xy = r1.xy + hg_ProgramLocal7.xy;\n    r3.xy = r2.xy + hg_ProgramLocal7.xy;\n    r4.xy = r3.xy + hg_ProgramLocal7.xy;\n    r5.xy = r4.xy + hg_ProgramLocal7.xy;\n    r6.xy = r5.xy + hg_ProgramLocal7.xy;\n    r7.xy = r6.xy + hg_ProgramLocal7.xy;\n    r8.xy = r7.xy + hg_ProgramLocal7.xy;\n    r9.xy = r0.xy + hg_ProgramLocal8.xy;\n    r9.xy = r9.xy*hg_ProgramLocal8.zw;\n    r0 = texture2D(hg_Texture0, r9.xy);\n    r9.xy = r8.xy + hg_ProgramLocal8.xy;\n    r9.xy = r9.xy*hg_ProgramLocal8.zw;\n    r8 = texture2D(hg_Texture0, r9.xy);\n    r0 = r0 + r8;\n    r9.xy = r1.xy + hg_ProgramLocal8.xy;\n    r9.xy = r9.xy*hg_ProgramLocal8.zw;\n    r1 = texture2D(hg_Texture0, r9.xy);\n    r9.xy = r7.xy + hg_ProgramLocal8.xy;\n    r9.xy = r9.xy*hg_ProgramLocal8.zw;\n    r7 = texture2D(hg_Texture0, r9.xy);\n    r1 = r1 + r7;\n    r9.xy = r2.xy + hg_ProgramLocal8.xy;\n    r9.xy = r9.xy*hg_ProgramLocal8.zw;\n    r2 = texture2D(hg_Texture0, r9.xy);\n    r9.xy = r6.xy + hg_ProgramLocal8.xy;\n    r9.xy = r9.xy*hg_ProgramLocal8.zw;\n    r6 = texture2D(hg_Texture0, r9.xy);\n    r2 = r2 + r6;\n    r9.xy = r3.xy + hg_ProgramLocal8.xy;\n    r9.xy = r9.xy*hg_ProgramLocal8.zw;\n    r3 = texture2D(hg_Texture0, r9.xy);\n    r9.xy = r5.xy + hg_ProgramLocal8.xy;\n    r9.xy = r9.xy*hg_ProgramLocal8.zw;\n    r5 = texture2D(hg_Texture0, r9.xy);\n    r3 = r3 + r5;\n    r9.xy = r4.xy + hg_ProgramLocal8.xy;\n    r9.xy = r9.xy*hg_ProgramLocal8.zw;\n    r4 = texture2D(hg_Texture0, r9.xy);\n    r4 = r4*hg_ProgramLocal0;\n    r4 = r3*hg_ProgramLocal1 + r4;\n    r4 = r2*hg_ProgramLocal2 + r4;\n    r4 = r1*hg_ProgramLocal3 + r4;\n    r4 = r0*hg_ProgramLocal4 + r4;\n    gl_FragColor = r4;\n}\n//MD5=7ad25e9b:38f9f67b:041a5da1:774d8277\n//SIG=00000000:00000000:00000000:00000000:0000:0009:000a:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FE0B3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE0B42C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE0B424);
}

uint64_t HgcBlur_cs9s_rect::BindTexture(HgcBlur_cs9s_rect *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v5.n128_f32[0] = *(a2 + 60);
  v6.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 136))(a2, 8, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcBlur_cs9s_rect::Bind(HgcBlur_cs9s_rect *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBlur_cs9s_rect::RenderTile(float32x4_t **this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = ((*this)[19].i64[1])(this, v4);
  v6 = *a2;
  v7 = *(a2 + 3) - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = (*(a2 + 2) - v6.i32[0]);
    if (v8 >= 1)
    {
      *v9.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
      v9.i64[1] = 0x3F80000000000000;
      v10 = *(a2 + 2);
      v11 = 0;
      v12 = 16 * *(a2 + 6);
      v13 = 16 * v8;
      if (v5)
      {
        v14 = v9;
        v15 = v9;
        do
        {
          v16 = 0;
          v17 = v14;
          v18 = v15;
          do
          {
            v19 = this[51];
            v20 = v19[7];
            v21 = vaddq_f32(v19[6], vaddq_f32(v17, vmulq_f32(v18, v19[5])));
            v22 = vaddq_f32(v20, v21);
            v23 = vaddq_f32(v20, v22);
            v24 = vaddq_f32(v20, v23);
            v25 = vaddq_f32(v20, v24);
            v26 = vaddq_f32(v20, v25);
            v27 = vaddq_f32(v20, v26);
            v28 = vaddq_f32(v20, v27);
            v29 = *(a2 + 10);
            v30 = *(a2 + 22);
            v31 = vsubq_f32(v21, v9);
            v32 = vaddq_f32(v20, v28);
            v33 = vaddq_s32(vcvtq_s32_f32(v31), vcltzq_f32(v31));
            v20.i64[0] = vsubq_f32(v31, vcvtq_f32_s32(v33)).u64[0];
            v34 = vsubq_f32(v32, v9);
            v35 = vaddq_s32(vcvtq_s32_f32(v34), vcltzq_f32(v34));
            v36 = vcvtq_f32_s32(v35);
            v37 = vzip2_s32(*v33.i8, *v35.i8);
            v38 = vdup_n_s32(v30);
            *v33.i8 = vzip1_s32(*v33.i8, *v35.i8);
            v39 = vsubq_f32(v22, v9);
            v40 = vaddq_s32(vcvtq_s32_f32(v39), vcltzq_f32(v39));
            v34.i64[0] = vsubq_f32(v34, v36).u64[0];
            v41 = vsubq_f32(v28, v9);
            v42 = vaddq_s32(vcvtq_s32_f32(v41), vcltzq_f32(v41));
            *v33.i8 = vmla_s32(*v33.i8, v37, v38);
            v43 = vmla_s32(vzip1_s32(*v40.i8, *v42.i8), vzip2_s32(*v40.i8, *v42.i8), v38);
            v44 = v43.i32[1];
            v45 = v33.i32[1];
            v46 = (v29 + 16 * v43.i32[0]);
            v47 = *v46;
            v48 = v46[1];
            v49 = &v46[v30];
            v50 = *v49;
            v51 = v49[1];
            v52 = (v29 + 16 * v33.i32[0]);
            v54 = *v52;
            v53 = v52[1];
            v55 = &v52[v30];
            v28.i64[0] = vsubq_f32(v39, vcvtq_f32_s32(v40)).u64[0];
            v39.i64[0] = vsubq_f32(v41, vcvtq_f32_s32(v42)).u64[0];
            v56 = (v29 + 16 * v44);
            v57 = vsubq_f32(v48, v47);
            v58 = *v56;
            v59 = v56[1];
            v60 = vsubq_f32(v23, v9);
            v61 = &v56[v30];
            v62 = vaddq_s32(vcvtq_s32_f32(v60), vcltzq_f32(v60));
            v40.i64[0] = vsubq_f32(v60, vcvtq_f32_s32(v62)).u64[0];
            v63 = vsubq_f32(v27, v9);
            v64 = *v55;
            v65 = v55[1];
            v66 = vaddq_s32(vcvtq_s32_f32(v63), vcltzq_f32(v63));
            v68 = *v61;
            v67 = v61[1];
            *v62.i8 = vmla_s32(vzip1_s32(*v62.i8, *v66.i8), vzip2_s32(*v62.i8, *v66.i8), v38);
            LODWORD(v61) = v62.i32[1];
            v66.i64[0] = vsubq_f32(v63, vcvtq_f32_s32(v66)).u64[0];
            v69 = (v29 + 16 * v62.i32[0]);
            v70 = vaddq_f32(v47, vmulq_n_f32(v57, v28.f32[0]));
            v71 = vaddq_f32(v50, vmulq_n_f32(vsubq_f32(v51, v50), v28.f32[0]));
            v72 = vmulq_n_f32(vsubq_f32(v53, v54), v20.f32[0]);
            v73 = (v29 + 16 * v45);
            v74 = vaddq_f32(*v69, vmulq_n_f32(vsubq_f32(v69[1], *v69), *v40.i32));
            v75 = vmulq_n_f32(vsubq_f32(v65, v64), v20.f32[0]);
            v76 = (v29 + 16 * v61);
            v77 = vaddq_f32(*v76, vmulq_n_f32(vsubq_f32(v76[1], *v76), *v66.i32));
            v78 = vaddq_f32(v54, v72);
            v79 = vaddq_f32(v76[v30], vmulq_n_f32(vsubq_f32(v76[v30 + 1], v76[v30]), *v66.i32));
            v80 = vsubq_f32(v24, v9);
            v81 = vaddq_f32(v58, vmulq_n_f32(vsubq_f32(v59, v58), v39.f32[0]));
            v82 = vaddq_s32(vcvtq_s32_f32(v80), vcltzq_f32(v80));
            v59.i64[0] = vsubq_f32(v80, vcvtq_f32_s32(v82)).u64[0];
            v83 = vaddq_f32(v64, v75);
            v84 = vsubq_f32(v26, v9);
            v85 = vaddq_s32(vcvtq_s32_f32(v84), vcltzq_f32(v84));
            *v82.i8 = vmla_s32(vzip1_s32(*v82.i8, *v85.i8), vzip2_s32(*v82.i8, *v85.i8), v38);
            v86 = &v73[v30];
            v85.i64[0] = vsubq_f32(v84, vcvtq_f32_s32(v85)).u64[0];
            v87 = vaddq_f32(v74, vmulq_lane_f32(vsubq_f32(vaddq_f32(v69[v30], vmulq_n_f32(vsubq_f32(v69[v30 + 1], v69[v30]), *v40.i32)), v74), *v40.i8, 1));
            v88 = *v86;
            v89 = vmulq_n_f32(vsubq_f32(v86[1], *v86), v34.f32[0]);
            v90 = vaddq_f32(*v73, vmulq_n_f32(vsubq_f32(v73[1], *v73), v34.f32[0]));
            LODWORD(v86) = v82.i32[1];
            v91 = (v29 + 16 * v82.i32[0]);
            v92 = vaddq_f32(*v91, vmulq_n_f32(vsubq_f32(v91[1], *v91), v59.f32[0]));
            v93 = &v91[v30];
            v94 = vmulq_lane_f32(vsubq_f32(v79, v77), *v66.i8, 1);
            v95 = vaddq_f32(v70, vmulq_lane_f32(vsubq_f32(v71, v70), *v28.f32, 1));
            v96 = (v29 + 16 * v86);
            v97 = vaddq_f32(*v96, vmulq_n_f32(vsubq_f32(v96[1], *v96), *v85.i32));
            v98 = vsubq_f32(v25, v9);
            v99 = vaddq_s32(vcvtq_s32_f32(v98), vcltzq_f32(v98));
            v100 = vaddq_f32(v81, vmulq_lane_f32(vsubq_f32(vaddq_f32(v68, vmulq_n_f32(vsubq_f32(v67, v68), v39.f32[0])), v81), *v39.f32, 1));
            v98.i64[0] = vsubq_f32(v98, vcvtq_f32_s32(v99)).u64[0];
            v101 = (v29 + 16 * (v99.i32[0] + v99.i32[1] * v30));
            v102 = vaddq_f32(*v101, vmulq_n_f32(vsubq_f32(v101[1], *v101), v98.f32[0]));
            *(v10 + v16) = vaddq_f32(vmulq_f32(vaddq_f32(vaddq_f32(v78, vmulq_lane_f32(vsubq_f32(v83, v78), *v20.f32, 1)), vaddq_f32(v90, vmulq_lane_f32(vsubq_f32(vaddq_f32(v88, v89), v90), *v34.f32, 1))), v19[4]), vaddq_f32(vmulq_f32(vaddq_f32(v95, v100), v19[3]), vaddq_f32(vmulq_f32(vaddq_f32(v87, vaddq_f32(v77, v94)), v19[2]), vaddq_f32(vmulq_f32(vaddq_f32(v102, vmulq_lane_f32(vsubq_f32(vaddq_f32(v101[v30], vmulq_n_f32(vsubq_f32(v101[v30 + 1], v101[v30]), v98.f32[0])), v102), *v98.f32, 1)), *v19), vmulq_f32(vaddq_f32(vaddq_f32(v92, vmulq_lane_f32(vsubq_f32(vaddq_f32(*v93, vmulq_n_f32(vsubq_f32(v93[1], *v93), v59.f32[0])), v92), *v59.f32, 1)), vaddq_f32(v97, vmulq_lane_f32(vsubq_f32(vaddq_f32(v96[v30], vmulq_n_f32(vsubq_f32(v96[v30 + 1], v96[v30]), *v85.i32)), v97), *v85.i8, 1))), v19[1])))));
            v17 = vaddq_f32(v17, xmmword_2603429B0);
            v18 = vaddq_f32(v18, xmmword_2603429B0);
            v16 += 16;
          }

          while (v13 != v16);
          v14 = vaddq_f32(v14, xmmword_2603429C0);
          v15 = vaddq_f32(v15, xmmword_2603429C0);
          ++v11;
          v10 += v12;
        }

        while (v11 != v7);
      }

      else
      {
        v103.i64[0] = 0x3F0000003F000000;
        v103.i64[1] = 0x3F0000003F000000;
        v104 = v9;
        v105 = v9;
        do
        {
          v106 = 0;
          v107 = v104;
          v108 = v105;
          do
          {
            v109 = this[51];
            v110 = v109[7];
            v111 = vaddq_f32(v109[6], vaddq_f32(v107, vmulq_f32(v108, v109[5])));
            v112 = vaddq_f32(v110, v111);
            v113 = vaddq_f32(v110, v112);
            v114 = vaddq_f32(v110, v113);
            v115 = vaddq_f32(v110, v114);
            v116 = vaddq_f32(v110, v115);
            v117 = vaddq_f32(v110, v116);
            v118 = vaddq_f32(v110, v117);
            v119 = vaddq_f32(vsubq_f32(v111, v9), v103);
            v120 = vcvtq_s32_f32(v119);
            v121 = vaddq_f32(vsubq_f32(vaddq_f32(v110, v118), v9), v103);
            v122 = vcvtq_s32_f32(v121);
            *v119.f32 = vadd_s32(*v120.i8, *&vcgtq_f32(vcvtq_f32_s32(v120), v119));
            v123 = vaddq_f32(vsubq_f32(v112, v9), v103);
            v124 = vcvtq_s32_f32(v123);
            v125 = vaddq_f32(vsubq_f32(v118, v9), v103);
            v126 = vcvtq_s32_f32(v125);
            *v123.f32 = vadd_s32(*v124.i8, *&vcgtq_f32(vcvtq_f32_s32(v124), v123));
            *v125.f32 = vadd_s32(*v126.i8, *&vcgtq_f32(vcvtq_f32_s32(v126), v125));
            v127 = vaddq_f32(vsubq_f32(v113, v9), v103);
            *v124.i8 = vzip2_s32(*v123.f32, *v125.f32);
            v128 = vcvtq_s32_f32(v127);
            v129 = vaddq_f32(vsubq_f32(v117, v9), v103);
            *v123.f32 = vzip1_s32(*v123.f32, *v125.f32);
            v130 = vcvtq_s32_f32(v129);
            v131 = *(a2 + 10);
            v132 = *(a2 + 22);
            *v121.f32 = vadd_s32(*v122.i8, *&vcgtq_f32(vcvtq_f32_s32(v122), v121));
            *v127.f32 = vadd_s32(*v128.i8, *&vcgtq_f32(vcvtq_f32_s32(v128), v127));
            *v129.f32 = vadd_s32(*v130.i8, *&vcgtq_f32(vcvtq_f32_s32(v130), v129));
            *v130.i8 = vdup_n_s32(v132);
            *v127.f32 = vmla_s32(vzip1_s32(*v127.f32, *v129.f32), vzip2_s32(*v127.f32, *v129.f32), *v130.i8);
            v133 = v127.i32[1];
            *v119.f32 = vmla_s32(vzip1_s32(*v119.f32, *v121.f32), vzip2_s32(*v119.f32, *v121.f32), *v130.i8);
            *v123.f32 = vmla_s32(*v123.f32, *v124.i8, *v130.i8);
            v134 = *(v131 + 16 * v127.i32[0]);
            v135 = v123.i32[1];
            v136 = vaddq_f32(vsubq_f32(v114, v9), v103);
            v137 = vcvtq_s32_f32(v136);
            v138 = v123.i32[0];
            v139 = vaddq_f32(vsubq_f32(v116, v9), v103);
            v140 = vcvtq_s32_f32(v139);
            *v136.f32 = vadd_s32(*v137.i8, *&vcgtq_f32(vcvtq_f32_s32(v137), v136));
            *v139.f32 = vadd_s32(*v140.i8, *&vcgtq_f32(vcvtq_f32_s32(v140), v139));
            *v139.f32 = vmla_s32(vzip1_s32(*v136.f32, *v139.f32), vzip2_s32(*v136.f32, *v139.f32), *v130.i8);
            v141 = vaddq_f32(vsubq_f32(v115, v9), v103);
            v142 = vcvtq_s32_f32(v141);
            v141.i64[0] = vaddq_s32(v142, vcgtq_f32(vcvtq_f32_s32(v142), v141)).u64[0];
            *(v10 + v106) = vaddq_f32(vmulq_f32(vaddq_f32(*(v131 + 16 * v119.i32[0]), *(v131 + 16 * v119.i32[1])), v109[4]), vaddq_f32(vmulq_f32(vaddq_f32(*(v131 + 16 * v138), *(v131 + 16 * v135)), v109[3]), vaddq_f32(vmulq_f32(vaddq_f32(v134, *(v131 + 16 * v133)), v109[2]), vaddq_f32(vmulq_f32(*(v131 + 16 * (v141.i32[0] + v141.i32[1] * v132)), *v109), vmulq_f32(vaddq_f32(*(v131 + 16 * v139.i32[0]), *(v131 + 16 * v139.i32[1])), v109[1])))));
            v107 = vaddq_f32(v107, xmmword_2603429B0);
            v108 = vaddq_f32(v108, xmmword_2603429B0);
            v106 += 16;
          }

          while (v13 != v106);
          v104 = vaddq_f32(v104, xmmword_2603429C0);
          v105 = vaddq_f32(v105, xmmword_2603429C0);
          ++v11;
          v10 += v12;
        }

        while (v11 != v7);
      }
    }
  }

  return 0;
}

uint64_t HgcBlur_cs9s_rect::GetDOD(HgcBlur_cs9s_rect *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var0;
  v6 = *&a4.var2;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    HGRectGrow(v5, v6, v7);
  }

  return 0x8000000080000000;
}

uint64_t HgcBlur_cs9s_rect::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  DOD = HGRenderer::GetDOD(a2, Input);
  v10 = v9;
  if ((*(*this + 312))(this, a2) < 1)
  {
    return DOD;
  }

  v11 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  return HGRectGrow(DOD, v10, v11);
}

void HgcBlur_cs9s_rect::HgcBlur_cs9s_rect(HgcBlur_cs9s_rect *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287236C98;
  operator new();
}

void HgcBlur_cs9s_rect::~HgcBlur_cs9s_rect(HgcBlur_cs9s_rect *this)
{
  *this = &unk_287236C98;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287236C98;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBlur_cs9s_rect::~HgcBlur_cs9s_rect(HGNode *this)
{
  *this = &unk_287236C98;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AE2C30F4);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBlur_cs9s_rect::SetParameter(HgcBlur_cs9s_rect *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBlur_cs9s_rect::GetParameter(HgcBlur_cs9s_rect *this, unsigned int a2, float *a3)
{
  if (a2 > 7)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcColorGamma_chroma_upsample_f1::GetProgram(HgcColorGamma_chroma_upsample_f1 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000532\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.5000000000, 0.000000000);\n    half4 r0, r1, r2;\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.x = floor(frag._texCoord1.x);\n    s1.xz = hg_Params[1].xz;\n    s1.x = dot(s1.xz, 1.00000f);\n    s1.x = s1.x - float(c0.x);\n    s1.x = s1.x - s0.x;\n    s1.xy = select(-float2(c0.xy), float2(c0.xy), s1.xx > 0.00000h);\n    s1.xy = frag._texCoord1.xy + s1.xy;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    s1.xy = s1.xy + hg_Params[0].xy;\n    s1.xy = s1.xy*hg_Params[0].zw;\n    r1.yz = (half2) hg_Texture0.sample(hg_Sampler0, s1.xy).yz;\n    r2.yz = (half2) hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy).yz;\n    r1.yz = mix(r2.yz, r1.yz, c0.zz);\n    s0.yz = float2(fract(0.500000f*frag._texCoord1.xx) >= 0.500000f);\n    s1.xw = float2(r0.xw);\n    s1.yz = select(float2(r0.yz), float2(r1.yz), s0.yz > 0.00000h);\n    output.color0 = s1;\n    return output;\n}\n//MD5=d15e8235:1bcea85f:801bb56b:2741a3f6\n//SIG=00400000:00000000:00000000:00000001:0001:0002:0005:0000:0000:0000:000e:0000:0003:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004c9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.5000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.x = floor(frag._texCoord1.x);\n    r1.xz = hg_Params[1].xz;\n    r1.x = dot(r1.xz, 1.00000f);\n    r1.x = r1.x - c0.x;\n    r1.x = r1.x - r0.x;\n    r1.xy = select(-c0.xy, c0.xy, r1.xx > 0.00000f);\n    r1.xy = frag._texCoord1.xy + r1.xy;\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xy = r1.xy + hg_Params[0].xy;\n    r1.xy = r1.xy*hg_Params[0].zw;\n    r1.yz = hg_Texture0.sample(hg_Sampler0, r1.xy).yz;\n    r2.yz = hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy).yz;\n    r1.yz = mix(r2.yz, r1.yz, c0.zz);\n    r2.yz = float2(fract(0.500000f*frag._texCoord1.xx) >= 0.500000f);\n    r0.yz = select(r0.yz, r1.yz, r2.yz > 0.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=f819144d:7b0341ff:b247e70a:9881758d\n//SIG=00000000:00000000:00000000:00000000:0001:0002:0003:0000:0000:0000:000e:0000:0003:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000054a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.000000000, 0.5000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.x = floor(hg_TexCoord1.x);\n    r1.xz = hg_ProgramLocal1.xz;\n    r1.x = dot(r1.xz, vec2(1.00000));\n    r1.x = r1.x - c0.x;\n    r1.x = r1.x - r0.x;\n    r1.xy = vec2(r1.x > 0.00000 ? c0.x : -c0.x, r1.x > 0.00000 ? c0.y : -c0.y);\n    r1.xy = hg_TexCoord1.xy + r1.xy;\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xy = r1.xy + hg_ProgramLocal0.xy;\n    r1.xy = r1.xy*hg_ProgramLocal0.zw;\n    r1.yz = texture2D(hg_Texture0, r1.xy).yz;\n    r2.yz = texture2D(hg_Texture0, hg_TexCoord2.xy).yz;\n    r1.yz = mix(r2.yz, r1.yz, c0.zz);\n    r2.yz = c0.zz*hg_TexCoord1.xx;\n    r2.yz = fract(r2.yz);\n    r2.yz = vec2(greaterThanEqual(r2.yz, c0.zz));\n    r0.yz = vec2(r2.y > 0.00000 ? r1.y : r0.y, r2.z > 0.00000 ? r1.z : r0.z);\n    gl_FragColor = r0;\n}\n//MD5=2635f3eb:1d6c7af1:cbb290bc:c440b6c0\n//SIG=00000000:00000000:00000000:00000000:0001:0002:0003:0000:0000:0000:0000:0000:0003:01:0:1:0\n";
  }
}

void sub_25FE0C864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE0C8A4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE0C89CLL);
}

uint64_t HgcColorGamma_chroma_upsample_f1::BindTexture(HgcColorGamma_chroma_upsample_f1 *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v5.n128_f32[0] = *(a2 + 60);
  v6.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 136))(a2, 0, v5, v6, v7, v8);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  HGHandler::TexCoord(a2, 2, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -1.0, 0.0, 0.0);
  return 0;
}

uint64_t HgcColorGamma_chroma_upsample_f1::Bind(HgcColorGamma_chroma_upsample_f1 *this, HGHandler *a2)
{
  (*(*a2 + 136))(a2, 1, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), *(a2 + 47), *(a2 + 48));
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcColorGamma_chroma_upsample_f1::RenderTile(HGNode *this, int8x8_t *a2)
{
  v4 = a2[1].i32[0];
  v69 = *a2;
  v5 = (a2[1].i32[1] - HIDWORD(*a2));
  v6 = a2[11].i32[0];
  v7 = a2[10];
  v8 = HGTile::Renderer(a2);
  DOD = HGRenderer::GetDOD(v8, this);
  if (v5 >= 1)
  {
    v12 = 0;
    *v13.f32 = vadd_f32(vcvt_f32_s32(v69), 0x3F0000003F000000);
    v13.i64[1] = 0x3F80000000000000;
    v14 = v4 - v69.i32[0];
    v15 = a2[3].i32[0];
    *v16.i8 = vcvt_f32_u32(vand_s8(*a2, 0x100000001));
    v16.i64[1] = 0x3F80000000000000;
    *v17.i32 = ((v4 - v69.i32[0]) & 1);
    v17.i32[1] = 1.0;
    v17.i64[1] = 0;
    v18.f32[0] = (v10 - DOD);
    v11.f32[0] = DOD;
    v18.f32[1] = (HIDWORD(v10) - HIDWORD(DOD));
    v18.f32[2] = DOD;
    v18.f32[3] = SHIDWORD(DOD);
    v19 = a2[2];
    v20 = vaddq_f32(v18, vextq_s8(v18, v18, 8uLL));
    v21 = vaddq_f32(v11, v18);
    v22 = (*&v7 + 16);
    v23 = (*&v19 + 16);
    v24 = 0xFFFFFFFF00000000;
    v25.i64[0] = 0x3F0000003F000000;
    v25.i64[1] = 0x3F0000003F000000;
    v26 = v13;
    while (1)
    {
      v27 = veorq_s8(v16, xmmword_2603429B0);
      v28 = vdupq_lane_s32(*v16.i8, 0);
      if (v14 >= 2)
      {
        break;
      }

      v29 = 0;
      v35 = v26;
      if (v14 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v26 = vaddq_f32(v26, xmmword_2603429C0);
      *&v19 += 16 * v15;
      ++v12;
      v16 = veorq_s8(v16, v17);
      v22 += v6;
      v24 += v6 << 32;
      v23 += v15;
      if (v12 == v5)
      {
        return 0;
      }
    }

    v29 = 0;
    v30 = v23;
    v31 = vdupq_lane_s32(*v27.i8, 0);
    v32 = v14;
    v33 = v24;
    v34 = v22;
    v35 = v26;
    do
    {
      v36 = vaddq_f32(v35, xmmword_2603429B0);
      v37 = vcvtq_f32_s32(vcvtq_s32_f32(v35));
      v38 = vcvtq_f32_s32(vcvtq_s32_f32(v36));
      v39 = *(this + 51);
      v40 = *(v39 + 16);
      v41 = vsubq_f32(v20, *v39);
      v38.i64[0] = vsubq_f32(v41, vsubq_f32(v38, vbslq_s8(vcgtq_f32(v38, v36), *v39, 0))).u64[0];
      v42 = vdupq_lane_s32(*&vsubq_f32(v41, vsubq_f32(v37, vbslq_s8(vcgtq_f32(v37, v35), *v39, 0))), 0);
      v43 = *(v39 + 32);
      v44 = *(v39 + 48);
      v45 = vaddq_f32(v36, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v38.f32, 0), v43), *v39, v40));
      v46 = a2[10];
      v47 = &a2[11];
      v48 = vaddq_f32(vsubq_f32(vaddq_f32(v35, vbslq_s8(vcgtq_f32(v42, v43), *v39, v40)), v13), v25);
      v49 = vcvtq_s32_f32(v48);
      v50 = vaddq_f32(vsubq_f32(v45, v13), v25);
      v51 = vcvtq_s32_f32(v50);
      *v48.f32 = vadd_s32(*v49.i8, *&vcgtq_f32(vcvtq_f32_s32(v49), v48));
      *v50.f32 = vadd_s32(*v51.i8, *&vcgtq_f32(vcvtq_f32_s32(v51), v50));
      *v49.i8 = vld1_dup_f32(v47);
      *v48.f32 = vmla_s32(vzip1_s32(*v48.f32, *v50.f32), vzip2_s32(*v48.f32, *v50.f32), *v49.i8);
      LODWORD(v47) = v48.i32[1];
      v52 = v34[-1];
      v53 = vaddq_f32(*(*&v7 + (v33 >> 28)), vmulq_f32(vsubq_f32(*(*&v46 + 16 * v48.i32[0]), *(*&v7 + (v33 >> 28))), v44));
      v54 = vaddq_f32(v52, vmulq_f32(vsubq_f32(*(*&v46 + 16 * v47), v52), v44));
      v55 = vcgtq_f32(v28, v43);
      v56 = vbslq_s8(vcgtq_f32(v31, v43), v54, *v34);
      v57 = *(v39 + 64);
      v58 = vbslq_s8(v57, vbslq_s8(v55, v53, v52), v52);
      v59 = vbslq_s8(v57, v56, *v34);
      v35 = vaddq_f32(v36, xmmword_2603429B0);
      v30[-1] = v58;
      *v30 = v59;
      v34 += 2;
      v33 += 0x200000000;
      v32 -= 2;
      v30 += 2;
      v29 += 2;
    }

    while (v32 > 1);
    if (v29 >= v14)
    {
      goto LABEL_3;
    }

LABEL_10:
    v60 = vcvtq_f32_s32(vcvtq_s32_f32(v35));
    v61 = *(this + 51);
    v62 = *(v61 + 32);
    v63 = vaddq_f32(v35, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vaddq_f32(vsubq_f32(v21, *v61), vsubq_f32(vbslq_s8(vcgtq_f32(v60, v35), *v61, 0), v60)), 0), v62), *v61, *(v61 + 16)));
    v64 = *(*&v7 + 16 * v12 * v6 + 16 * v29);
    v65 = vaddq_f32(vsubq_f32(v63, v13), v25);
    v66 = vcvtq_s32_f32(v65);
    v65.i64[0] = vaddq_s32(v66, vcgtq_f32(vcvtq_f32_s32(v66), v65)).u64[0];
    v67 = *(*&v7 + 16 * (v12 * v6 + v29 - 1));
    *(*&v19 + 16 * v29) = vbslq_s8(*(v61 + 64), vbslq_s8(vcgtq_f32(v28, v62), vaddq_f32(v67, vmulq_f32(vsubq_f32(*(*&a2[10] + 16 * (v65.i32[0] + v65.i32[1] * a2[11].i32[0])), v67), *(v61 + 48))), v64), v64);
    v16 = v27;
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcColorGamma_chroma_upsample_f1::GetDOD(HgcColorGamma_chroma_upsample_f1 *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcColorGamma_chroma_upsample_f1::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcColorGamma_chroma_upsample_f1::HgcColorGamma_chroma_upsample_f1(HgcColorGamma_chroma_upsample_f1 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287236F00;
  operator new();
}

void HgcColorGamma_chroma_upsample_f1::~HgcColorGamma_chroma_upsample_f1(HgcColorGamma_chroma_upsample_f1 *this)
{
  *this = &unk_287236F00;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287236F00;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcColorGamma_chroma_upsample_f1::~HgcColorGamma_chroma_upsample_f1(HGNode *this)
{
  *this = &unk_287236F00;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcTextureWrapClampToEdge::GetProgram(HgcTextureWrapClampToEdge *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000036f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0 = hg_Params[1];\n    s1.xy = frag._texCoord0.xy - s0.zw;\n    s2.xy = s0.xy - float2(c0.xx);\n    s1.xy = fmin(s1.xy, s2.xy);\n    s1.xy = fmax(s1.xy, float2(c0.xx));\n    s1.xy = s1.xy + s0.zw;\n    s1.xy = s1.xy + hg_Params[0].xy;\n    s1.xy = s1.xy*hg_Params[0].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    return output;\n}\n//MD5=221ff63d:13dd7d75:60c547a0:c3470b13\n//SIG=00400000:00000000:00000000:00000001:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000359\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Params[1];\n    r1.xy = frag._texCoord0.xy - r0.zw;\n    r2.xy = r0.xy - c0.xx;\n    r1.xy = fmin(r1.xy, r2.xy);\n    r1.xy = fmax(r1.xy, c0.xx);\n    r1.xy = r1.xy + r0.zw;\n    r1.xy = r1.xy + hg_Params[0].xy;\n    r1.xy = r1.xy*hg_Params[0].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    return output;\n}\n//MD5=8f249fac:b1c9a8e2:b56a003b:e01656c1\n//SIG=00000000:00000000:00000000:00000000:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000034e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = hg_ProgramLocal1;\n    r1.xy = hg_TexCoord0.xy - r0.zw;\n    r2.xy = r0.xy - c0.xx;\n    r1.xy = min(r1.xy, r2.xy);\n    r1.xy = max(r1.xy, c0.xx);\n    r1.xy = r1.xy + r0.zw;\n    r1.xy = r1.xy + hg_ProgramLocal0.xy;\n    r1.xy = r1.xy*hg_ProgramLocal0.zw;\n    gl_FragColor = texture2D(hg_Texture0, r1.xy);\n}\n//MD5=334048ff:96ec5d13:4628fd48:15f149a4\n//SIG=00000000:00000000:00000000:00000000:0001:0002:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE0D670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE0D6A8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE0D6A0);
}

uint64_t HgcTextureWrapClampToEdge::BindTexture(HgcTextureWrapClampToEdge *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v5.n128_f32[0] = *(a2 + 60);
  v6.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 136))(a2, 0, v5, v6, v7, v8);
  (*(*a2 + 136))(a2, 1, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), *(a2 + 47), *(a2 + 48));
  return 0;
}

uint64_t HgcTextureWrapClampToEdge::Bind(HgcTextureWrapClampToEdge *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcTextureWrapClampToEdge::RenderTile(HgcTextureWrapClampToEdge *this, int32x2_t *a2)
{
  v4 = a2[1].i32[0];
  v63 = *a2;
  v5 = a2[1].i32[1] - HIDWORD(*a2);
  v6 = HGTile::Renderer(a2);
  v7 = HGTile::Renderer(a2);
  Input = HGRenderer::GetInput(v7, this, 0);
  DOD = HGRenderer::GetDOD(v6, Input);
  if (v5 >= 1)
  {
    *v11.f32 = vadd_f32(vcvt_f32_s32(v63), 0x3F0000003F000000);
    v11.i64[1] = 0x3F80000000000000;
    *v12.i8 = vsub_s32(v10, DOD);
    v12.u64[1] = DOD;
    v13 = (v4 - v63.i32[0]);
    v14 = vcvtq_f32_s32(v12);
    v15 = a2[2];
    v16 = a2[3].i32[0];
    v17 = vextq_s8(v14, v14, 8uLL);
    if (v13 < 4)
    {
      if (v13 >= 1)
      {
        v55 = 0;
        v56.i64[0] = 0x3F0000003F000000;
        v56.i64[1] = 0x3F0000003F000000;
        v57 = v11;
        do
        {
          v58 = 0;
          v59 = v57;
          do
          {
            v60 = vaddq_f32(vsubq_f32(vaddq_f32(v17, vmaxq_f32(vminq_f32(vsubq_f32(v59, v17), vsubq_f32(v14, **(this + 51))), **(this + 51))), v11), v56);
            v61 = vcvtq_s32_f32(v60);
            v60.i64[0] = vaddq_s32(v61, vcgtq_f32(vcvtq_f32_s32(v61), v60)).u64[0];
            *(*&v15 + v58) = *(*&a2[10] + 16 * (v60.i32[0] + v60.i32[1] * a2[11].i32[0]));
            v59 = vaddq_f32(v59, xmmword_2603429B0);
            v58 += 16;
          }

          while (16 * (v4 - v63.i32[0]) != v58);
          v57 = vaddq_f32(v57, xmmword_2603429C0);
          ++v55;
          *&v15 += 16 * v16;
        }

        while (v55 != v5);
      }
    }

    else
    {
      v18 = 0;
      v19 = (*&v15 + 32);
      v20 = 16 * v16;
      v21 = (*&v15 + 64);
      v22.i64[0] = 0x3F0000003F000000;
      v22.i64[1] = 0x3F0000003F000000;
      v23 = v11;
      do
      {
        v24 = 0;
        v25 = v21;
        v26 = v19;
        v27 = v23;
        do
        {
          v28 = vaddq_f32(v27, xmmword_2603429B0);
          v29 = vaddq_f32(v28, xmmword_2603429B0);
          v30 = vaddq_f32(v29, xmmword_2603429B0);
          v31 = **(this + 51);
          v32 = vsubq_f32(v14, v31);
          v33 = vaddq_f32(v17, vmaxq_f32(vminq_f32(vsubq_f32(v28, v17), v32), v31));
          v34 = vaddq_f32(v17, vmaxq_f32(vminq_f32(vsubq_f32(v29, v17), v32), v31));
          v35 = vaddq_f32(v17, vmaxq_f32(vminq_f32(vsubq_f32(v30, v17), v32), v31));
          v36 = a2[10];
          v37 = &a2[11];
          v38 = vaddq_f32(vsubq_f32(vaddq_f32(v17, vmaxq_f32(vminq_f32(vsubq_f32(v27, v17), v32), v31)), v11), v22);
          v39 = vcvtq_s32_f32(v38);
          v40 = vaddq_f32(vsubq_f32(v33, v11), v22);
          v41 = vcvtq_s32_f32(v40);
          *v40.f32 = vadd_s32(*v41.i8, *&vcgtq_f32(vcvtq_f32_s32(v41), v40));
          *v32.f32 = vld1_dup_f32(v37);
          *v38.f32 = vadd_s32(*v39.i8, *&vcgtq_f32(vcvtq_f32_s32(v39), v38));
          *v38.f32 = vmla_s32(vzip1_s32(*v38.f32, *v40.f32), vzip2_s32(*v38.f32, *v40.f32), *v32.f32);
          LODWORD(v37) = v38.i32[1];
          v42 = vaddq_f32(vsubq_f32(v34, v11), v22);
          v43 = vcvtq_s32_f32(v42);
          v44 = v38.i32[0];
          v45 = vaddq_f32(vsubq_f32(v35, v11), v22);
          v46 = vcvtq_s32_f32(v45);
          v47 = *(*&v36 + 16 * v44);
          *v42.f32 = vadd_s32(*v43.i8, *&vcgtq_f32(vcvtq_f32_s32(v43), v42));
          *v45.f32 = vadd_s32(*v46.i8, *&vcgtq_f32(vcvtq_f32_s32(v46), v45));
          *v43.i8 = vzip2_s32(*v42.f32, *v45.f32);
          *v45.f32 = vzip1_s32(*v42.f32, *v45.f32);
          v48 = *(*&v36 + 16 * v37);
          *v45.f32 = vmla_s32(*v45.f32, *v43.i8, *v32.f32);
          v49 = v45.i32[1];
          v50 = *(*&v36 + 16 * v45.i32[0]);
          v51 = v25;
          v52 = *(*&v36 + 16 * v49);
          *(v26 - 2) = v47;
          *(v26 - 1) = v48;
          *v26 = v50;
          v26[1] = v52;
          v26 += 4;
          v27 = vaddq_f32(v30, xmmword_2603429B0);
          v24 += 4;
          v25 += 4;
        }

        while (v24 < (v13 - 3));
        if (v13 > v24)
        {
          do
          {
            v53 = vaddq_f32(vsubq_f32(vaddq_f32(v17, vmaxq_f32(vminq_f32(vsubq_f32(v27, v17), vsubq_f32(v14, **(this + 51))), **(this + 51))), v11), v22);
            v54 = vcvtq_s32_f32(v53);
            v53.i64[0] = vaddq_s32(v54, vcgtq_f32(vcvtq_f32_s32(v54), v53)).u64[0];
            *v51++ = *(*&a2[10] + 16 * (v53.i32[0] + v53.i32[1] * a2[11].i32[0]));
            v27 = vaddq_f32(v27, xmmword_2603429B0);
            ++v24;
          }

          while (v24 < v13);
        }

        v23 = vaddq_f32(v23, xmmword_2603429C0);
        ++v18;
        v19 = (v19 + v20);
        v21 = (v21 + v20);
      }

      while (v18 != v5);
    }
  }

  return 0;
}

uint64_t HgcTextureWrapClampToEdge::GetDOD(HgcTextureWrapClampToEdge *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcTextureWrapClampToEdge::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcTextureWrapClampToEdge::HgcTextureWrapClampToEdge(HgcTextureWrapClampToEdge *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287237168;
  operator new();
}

void HgcTextureWrapClampToEdge::~HgcTextureWrapClampToEdge(HgcTextureWrapClampToEdge *this)
{
  *this = &unk_287237168;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40451B5BE8);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287237168;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40451B5BE8);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcTextureWrapClampToEdge::~HgcTextureWrapClampToEdge(HGNode *this)
{
  *this = &unk_287237168;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcToneParamCurve2::GetProgram(HgcToneParamCurve2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000369\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = half3(hg_Params[1].xyz)*r0.xyz + half3(hg_Params[2].xyz);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xyz));\n    r1.xyz = r1.xyz + half3(hg_Params[3].xyz);\n    r2.xyz = r0.xyz - half3(hg_Params[4].xyz);\n    output.color0.xyz = select(float3(r1.xyz), hg_Params[3].xyz, float3(r2.xyz) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=11f96f30:b2be53b4:29dcc524:84f02f26\n//SIG=00400000:00000001:00000001:00000001:0000:0005:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000329\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = hg_Params[1].xyz*r0.xyz + hg_Params[2].xyz;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xyz);\n    r1.xyz = r1.xyz + hg_Params[3].xyz;\n    r2.xyz = r0.xyz - hg_Params[4].xyz;\n    output.color0.xyz = select(r1.xyz, hg_Params[3].xyz, r2.xyz < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=882be748:9bb58854:7a0b6941:5bec227a\n//SIG=00000000:00000001:00000001:00000000:0000:0005:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003f5\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = hg_ProgramLocal1.xyz*r0.xyz + hg_ProgramLocal2.xyz;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xyz);\n    r1.xyz = r1.xyz + hg_ProgramLocal3.xyz;\n    r2.xyz = r0.xyz - hg_ProgramLocal4.xyz;\n    gl_FragColor.xyz = vec3(r2.x < 0.00000 ? hg_ProgramLocal3.x : r1.x, r2.y < 0.00000 ? hg_ProgramLocal3.y : r1.y, r2.z < 0.00000 ? hg_ProgramLocal3.z : r1.z);\n    gl_FragColor.w = r0.w;\n}\n//MD5=6881b252:4d76b384:24ec1fbe:a73e8ed3\n//SIG=00000000:00000001:00000001:00000000:0000:0005:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE0E1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE0E21C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE0E214);
}

uint64_t HgcToneParamCurve2::BindTexture(HgcToneParamCurve2 *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcToneParamCurve2::Bind(HgcToneParamCurve2 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcToneParamCurve2::RenderTile(HgcToneParamCurve2 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    while (v4 < 2)
    {
      v9 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v6 += v8;
      v5 += v7;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v9 = 0;
    v10 = 16;
    for (i = v4; i > 1; i -= 2)
    {
      v12 = *(v6 + v10 - 16);
      v13 = *(v6 + v10);
      v14 = *(this + 51);
      v15 = *(v14 + 16);
      v17 = *(v14 + 32);
      v16 = *(v14 + 48);
      v18 = vaddq_f32(v17, vmulq_f32(v12, v15));
      v19 = vaddq_f32(v17, vmulq_f32(v13, v15));
      v20 = *(v14 + 64);
      v21 = *(v14 + 80);
      v22 = *(v14 + 96);
      v23 = *(v14 + 112);
      v24 = vorrq_s8(vandq_s8(v21, v18), v22);
      v25 = *(v14 + 128);
      v26 = *(v14 + 144);
      v27 = vorrq_s8(vandq_s8(v21, v19), v22);
      v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v19, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v19)));
      v29 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v18))), v26);
      v30 = *(v14 + 160);
      v31 = *(v14 + 176);
      v32 = vandq_s8(v22, vcgtq_f32(v24, v30));
      v33 = vandq_s8(v22, vcgtq_f32(v27, v30));
      v34 = vaddq_f32(v29, v32);
      v35 = vaddq_f32(vsubq_f32(v28, v26), v33);
      v36 = vsubq_f32(vsubq_f32(v24, v22), vmulq_f32(vmulq_f32(v31, v32), v24));
      v37 = vsubq_f32(vsubq_f32(v27, v22), vmulq_f32(vmulq_f32(v31, v33), v27));
      v38 = *(v14 + 192);
      v39 = *(v14 + 208);
      v40 = vaddq_f32(v38, vmulq_f32(v39, v36));
      v41 = vaddq_f32(v38, vmulq_f32(v39, v37));
      v42 = *(v14 + 224);
      v43 = *(v14 + 240);
      v44 = vmulq_f32(*v14, vaddq_f32(v35, vmulq_f32(v37, vaddq_f32(vaddq_f32(v42, vmulq_f32(v37, v43)), vmulq_f32(vmulq_f32(v37, v37), v41)))));
      v45 = *(v14 + 256);
      v46 = *(v14 + 272);
      v47 = vmaxq_f32(vmulq_f32(*v14, vaddq_f32(v34, vmulq_f32(v36, vaddq_f32(vaddq_f32(v42, vmulq_f32(v36, v43)), vmulq_f32(vmulq_f32(v36, v36), v40))))), v45);
      v48 = vmaxq_f32(v44, v45);
      v49 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
      v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
      v51 = vsubq_f32(v49, vandq_s8(v22, vcgtq_f32(v49, v47)));
      v52 = vsubq_f32(v50, vandq_s8(v22, vcgtq_f32(v50, v48)));
      v53 = vsubq_f32(v47, v51);
      v54 = vsubq_f32(v48, v52);
      v55 = *(v14 + 288);
      v56 = *(v14 + 304);
      v57 = vmulq_f32(v54, vaddq_f32(v56, vmulq_f32(v54, vaddq_f32(v46, vmulq_f32(v55, v54)))));
      v58 = vaddq_f32(v22, vmulq_f32(v53, vaddq_f32(v56, vmulq_f32(v53, vaddq_f32(v46, vmulq_f32(v55, v53))))));
      v59 = vcvtq_s32_f32(v52);
      v60 = *(v14 + 320);
      v61 = *(v14 + 336);
      v62 = vaddq_f32(v22, v57);
      v63 = vbslq_s8(vcgtq_f32(v61, vsubq_f32(v12, v20)), v16, vaddq_f32(v16, vmulq_f32(v58, vshlq_n_s32(vaddq_s32(v60, vcvtq_s32_f32(v51)), 0x17uLL))));
      v64 = vbslq_s8(vcgtq_f32(v61, vsubq_f32(v13, v20)), v16, vaddq_f32(v16, vmulq_f32(v62, vshlq_n_s32(vaddq_s32(v60, v59), 0x17uLL))));
      v65 = *(v14 + 352);
      v66 = (v5 + v10);
      v66[-1] = vbslq_s8(v65, v12, v63);
      *v66 = vbslq_s8(v65, v13, v64);
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v67 = 16 * v9;
    v68 = *(v6 + v67);
    v69 = *(this + 51);
    v70 = vaddq_f32(*(v69 + 32), vmulq_f32(v68, *(v69 + 16)));
    v71 = *(v69 + 96);
    v72 = vorrq_s8(vandq_s8(*(v69 + 80), v70), v71);
    v73 = vandq_s8(v71, vcgtq_f32(v72, *(v69 + 160)));
    v74 = vsubq_f32(vsubq_f32(v72, v71), vmulq_f32(vmulq_f32(*(v69 + 176), v73), v72));
    v75 = vmaxq_f32(vmulq_f32(*v69, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v70, 0x17uLL)), vandq_s8(*(v69 + 128), vcgtq_f32(*(v69 + 112), v70))), *(v69 + 144)), v73), vmulq_f32(v74, vaddq_f32(vaddq_f32(*(v69 + 224), vmulq_f32(v74, *(v69 + 240))), vmulq_f32(vmulq_f32(v74, v74), vaddq_f32(*(v69 + 192), vmulq_f32(*(v69 + 208), v74))))))), *(v69 + 256));
    v76 = vcvtq_f32_s32(vcvtq_s32_f32(v75));
    v77 = vsubq_f32(v76, vandq_s8(v71, vcgtq_f32(v76, v75)));
    v78 = vsubq_f32(v75, v77);
    *(v5 + v67) = vbslq_s8(*(v69 + 352), v68, vbslq_s8(vcgtq_f32(*(v69 + 336), vsubq_f32(v68, *(v69 + 64))), *(v69 + 48), vaddq_f32(*(v69 + 48), vmulq_f32(vaddq_f32(v71, vmulq_f32(v78, vaddq_f32(*(v69 + 304), vmulq_f32(v78, vaddq_f32(*(v69 + 272), vmulq_f32(*(v69 + 288), v78)))))), vshlq_n_s32(vaddq_s32(*(v69 + 320), vcvtq_s32_f32(v77)), 0x17uLL)))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcToneParamCurve2::GetDOD(HgcToneParamCurve2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcToneParamCurve2::GetROI(HgcToneParamCurve2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcToneParamCurve2::HgcToneParamCurve2(HgcToneParamCurve2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872373D0;
  operator new();
}

void HgcToneParamCurve2::~HgcToneParamCurve2(HgcToneParamCurve2 *this)
{
  *this = &unk_2872373D0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C409BD2D9E4);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcToneParamCurve2::~HgcToneParamCurve2(HGNode *this)
{
  *this = &unk_2872373D0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcToneParamCurve2::SetParameter(HgcToneParamCurve2 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 4)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcToneParamCurve2::GetParameter(HgcToneParamCurve2 *this, unsigned int a2, float *a3)
{
  if (a2 > 4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcToneParamCurve1::GetProgram(HgcToneParamCurve1 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000388\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = half3(hg_Params[1].xyz)*r0.xyz + half3(hg_Params[2].xyz);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xyz));\n    r2.xyz = r0.xyz - half3(hg_Params[3].xyz);\n    output.color0.xyz = select(float3(r1.xyz), float3(c0.xxx), float3(r2.xyz) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=bbf4a9d3:8ac3c576:5d1632bf:935fc9e2\n//SIG=00400000:00000001:00000001:00000001:0001:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000349\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = hg_Params[1].xyz*r0.xyz + hg_Params[2].xyz;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xyz);\n    r2.xyz = r0.xyz - hg_Params[3].xyz;\n    output.color0.xyz = select(r1.xyz, c0.xxx, r2.xyz < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=6f388f1a:83ba6503:f0c59378:67222bba\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003ce\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = hg_ProgramLocal1.xyz*r0.xyz + hg_ProgramLocal2.xyz;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xyz);\n    r2.xyz = r0.xyz - hg_ProgramLocal3.xyz;\n    gl_FragColor.xyz = vec3(r2.x < 0.00000 ? c0.x : r1.x, r2.y < 0.00000 ? c0.x : r1.y, r2.z < 0.00000 ? c0.x : r1.z);\n    gl_FragColor.w = r0.w;\n}\n//MD5=073b1929:ac9c9606:88f5e5f8:42afc5ab\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE0EE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE0EEA4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE0EE9CLL);
}

uint64_t HgcToneParamCurve1::BindTexture(HgcToneParamCurve1 *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcToneParamCurve1::Bind(HgcToneParamCurve1 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcToneParamCurve1::RenderTile(HgcToneParamCurve1 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    while (v4 < 2)
    {
      v9 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v6 += v8;
      v5 += v7;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v9 = 0;
    v10 = 16;
    for (i = v4; i > 1; i -= 2)
    {
      v12 = *(v6 + v10 - 16);
      v13 = *(v6 + v10);
      v14 = *(this + 51);
      v15 = *(v14 + 16);
      v17 = *(v14 + 32);
      v16 = *(v14 + 48);
      v18 = vaddq_f32(v17, vmulq_f32(v12, v15));
      v19 = vaddq_f32(v17, vmulq_f32(v13, v15));
      v21 = *(v14 + 64);
      v20 = *(v14 + 80);
      v22 = vorrq_s8(vandq_s8(v21, v18), v20);
      v23 = *(v14 + 96);
      v24 = *(v14 + 112);
      v25 = vorrq_s8(vandq_s8(v21, v19), v20);
      v26 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), vandq_s8(v24, vcgtq_f32(v23, v18)));
      v27 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v19, 0x17uLL)), vandq_s8(v24, vcgtq_f32(v23, v19)));
      v28 = *(v14 + 128);
      v29 = *(v14 + 144);
      v30 = vsubq_f32(v26, v28);
      v31 = vsubq_f32(v27, v28);
      v32 = vandq_s8(v20, vcgtq_f32(v22, v29));
      v33 = vandq_s8(v20, vcgtq_f32(v25, v29));
      v34 = *(v14 + 160);
      v35 = *(v14 + 176);
      v36 = vaddq_f32(v31, v33);
      v37 = vsubq_f32(vsubq_f32(v22, v20), vmulq_f32(vmulq_f32(v34, v32), v22));
      v38 = vsubq_f32(vsubq_f32(v25, v20), vmulq_f32(vmulq_f32(v34, v33), v25));
      v39 = *(v14 + 192);
      v40 = *(v14 + 208);
      v41 = vaddq_f32(v35, vmulq_f32(v39, v37));
      v42 = vaddq_f32(v35, vmulq_f32(v39, v38));
      v43 = *(v14 + 224);
      v44 = *(v14 + 240);
      v45 = vmulq_f32(*v14, vaddq_f32(v36, vmulq_f32(v38, vaddq_f32(vaddq_f32(v40, vmulq_f32(v38, v43)), vmulq_f32(vmulq_f32(v38, v38), v42)))));
      v46 = vmaxq_f32(vmulq_f32(*v14, vaddq_f32(vaddq_f32(v30, v32), vmulq_f32(v37, vaddq_f32(vaddq_f32(v40, vmulq_f32(v37, v43)), vmulq_f32(vmulq_f32(v37, v37), v41))))), v44);
      v47 = vmaxq_f32(v45, v44);
      v48 = vcvtq_f32_s32(vcvtq_s32_f32(v46));
      v49 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
      v50 = vsubq_f32(v48, vandq_s8(v20, vcgtq_f32(v48, v46)));
      v51 = vsubq_f32(v49, vandq_s8(v20, vcgtq_f32(v49, v47)));
      v52 = vsubq_f32(v46, v50);
      v53 = vsubq_f32(v47, v51);
      v54 = *(v14 + 256);
      v55 = *(v14 + 272);
      v56 = vaddq_f32(v54, vmulq_f32(v55, v52));
      v57 = vaddq_f32(v54, vmulq_f32(v55, v53));
      v58 = vmulq_f32(v52, v56);
      v59 = *(v14 + 288);
      v60 = *(v14 + 304);
      v61 = vaddq_f32(v20, vmulq_f32(v52, vaddq_f32(v59, v58)));
      v62 = vaddq_f32(v20, vmulq_f32(v53, vaddq_f32(v59, vmulq_f32(v53, v57))));
      v63 = vshlq_n_s32(vaddq_s32(v60, vcvtq_s32_f32(v51)), 0x17uLL);
      v64 = *(v14 + 320);
      v65 = *(v14 + 336);
      v66 = (v5 + v10);
      v66[-1] = vbslq_s8(v65, v12, vbslq_s8(vcgtq_f32(v64, vsubq_f32(v12, v16)), v64, vmulq_f32(v61, vshlq_n_s32(vaddq_s32(v60, vcvtq_s32_f32(v50)), 0x17uLL))));
      *v66 = vbslq_s8(v65, v13, vbslq_s8(vcgtq_f32(v64, vsubq_f32(v13, v16)), v64, vmulq_f32(v62, v63)));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v67 = 16 * v9;
    v68 = *(v6 + v67);
    v69 = *(this + 51);
    v70 = vaddq_f32(*(v69 + 32), vmulq_f32(v68, *(v69 + 16)));
    v71 = *(v69 + 80);
    v72 = vorrq_s8(vandq_s8(*(v69 + 64), v70), v71);
    v73 = vandq_s8(v71, vcgtq_f32(v72, *(v69 + 144)));
    v74 = vsubq_f32(vsubq_f32(v72, v71), vmulq_f32(vmulq_f32(*(v69 + 160), v73), v72));
    v75 = vmaxq_f32(vmulq_f32(*v69, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v70, 0x17uLL)), vandq_s8(*(v69 + 112), vcgtq_f32(*(v69 + 96), v70))), *(v69 + 128)), v73), vmulq_f32(v74, vaddq_f32(vaddq_f32(*(v69 + 208), vmulq_f32(v74, *(v69 + 224))), vmulq_f32(vmulq_f32(v74, v74), vaddq_f32(*(v69 + 176), vmulq_f32(*(v69 + 192), v74))))))), *(v69 + 240));
    v76 = vcvtq_f32_s32(vcvtq_s32_f32(v75));
    v77 = vsubq_f32(v76, vandq_s8(v71, vcgtq_f32(v76, v75)));
    v78 = vsubq_f32(v75, v77);
    *(v5 + v67) = vbslq_s8(*(v69 + 336), v68, vbslq_s8(vcgtq_f32(*(v69 + 320), vsubq_f32(v68, *(v69 + 48))), *(v69 + 320), vmulq_f32(vaddq_f32(v71, vmulq_f32(v78, vaddq_f32(*(v69 + 288), vmulq_f32(v78, vaddq_f32(*(v69 + 256), vmulq_f32(*(v69 + 272), v78)))))), vshlq_n_s32(vaddq_s32(*(v69 + 304), vcvtq_s32_f32(v77)), 0x17uLL))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcToneParamCurve1::GetDOD(HgcToneParamCurve1 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcToneParamCurve1::GetROI(HgcToneParamCurve1 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcToneParamCurve1::HgcToneParamCurve1(HgcToneParamCurve1 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287237638;
  operator new();
}

void HgcToneParamCurve1::~HgcToneParamCurve1(HgcToneParamCurve1 *this)
{
  *this = &unk_287237638;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AF73A19ALL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcToneParamCurve1::~HgcToneParamCurve1(HGNode *this)
{
  *this = &unk_287237638;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AF73A19ALL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcToneParamCurve1::SetParameter(HgcToneParamCurve1 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcToneParamCurve1::GetParameter(HgcToneParamCurve1 *this, unsigned int a2, float *a3)
{
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcPixelFormatConversion_kV4B10Bit_BE_output::GetProgram(HgcPixelFormatConversion_kV4B10Bit_BE_output *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003db\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(255.7500000, 63.93750000, 15.98437500, 0.000000000);\n    const half4 c1 = half4(4.000000000, 16.00000000, 64.00000000, 0.000000000);\n    const half4 c2 = half4(1.000000000, 0.003921568859, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = clamp((half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy), 0.00000h, 1.00000h);\n    r0 = r0*c0;\n    r1 = fract(r0);\n    r1 = r1*c1;\n    r1 = floor(r1.wxyz);\n    r1 = r1*c1.wzyx;\n    r0 = floor(r0);\n    r0 = r0*c2.xxxw + r1;\n    output.color0 = float4(r0)*float4(c2.yyyy);\n    return output;\n}\n//MD5=bb27e3be:38664bb7:ce3c51bf:a917b29d\n//SIG=00400000:00000001:00000001:00000001:0003:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003cb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(255.7500000, 63.93750000, 15.98437500, 0.000000000);\n    const float4 c1 = float4(4.000000000, 16.00000000, 64.00000000, 0.000000000);\n    const float4 c2 = float4(1.000000000, 0.003921568859, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = clamp(hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy), 0.00000f, 1.00000f);\n    r0 = r0*c0;\n    r1 = fract(r0);\n    r1 = r1*c1;\n    r1 = floor(r1.wxyz);\n    r1 = r1*c1.wzyx;\n    r0 = floor(r0);\n    r0 = r0*c2.xxxw + r1;\n    output.color0 = r0*c2.yyyy;\n    return output;\n}\n//MD5=61aa77c2:f5fae104:c9ee071c:f4d1cc49\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000382\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(255.7500000, 63.93750000, 15.98437500, 0.000000000);\n    const mediump vec4 c1 = vec4(4.000000000, 16.00000000, 64.00000000, 0.000000000);\n    const mediump vec4 c2 = vec4(1.000000000, 0.003921568859, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = clamp(texture2D(hg_Texture0, hg_TexCoord0.xy), vec4(0.00000), vec4(1.00000));\n    r0 = r0*c0;\n    r1 = fract(r0);\n    r1 = r1*c1;\n    r1 = floor(r1.wxyz);\n    r1 = r1*c1.wzyx;\n    r0 = floor(r0);\n    r0 = r0*c2.xxxw + r1;\n    gl_FragColor = r0*c2.yyyy;\n}\n//MD5=ca498554:4fd18e60:1c6325ca:76efb0c5\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE0FAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE0FAE0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE0FAD8);
}

uint64_t HgcPixelFormatConversion_kV4B10Bit_BE_output::BindTexture(HgcPixelFormatConversion_kV4B10Bit_BE_output *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcPixelFormatConversion_kV4B10Bit_BE_output::RenderTile(HgcPixelFormatConversion_kV4B10Bit_BE_output *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v68 = 0;
        v69 = 16 * v7;
        v70 = 16 * v6;
        v71 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v72 = 0;
          do
          {
            v73 = *(this + 51);
            v74 = v73[1];
            v75 = vmulq_f32(vminq_f32(vmaxq_f32(v4[v72 / 0x10], *v73), v74), v73[2]);
            v76 = vcvtq_f32_s32(vcvtq_s32_f32(v75));
            v77 = vsubq_f32(v76, vandq_s8(v74, vcgtq_f32(v76, v75)));
            v78 = vmulq_f32(v73[3], vsubq_f32(v75, v77));
            v79 = vextq_s8(v78, v78, 0xCuLL);
            v80 = vcvtq_f32_s32(vcvtq_s32_f32(v79));
            v5[v72 / 0x10] = vmulq_f32(v73[6], vaddq_f32(vmulq_f32(v77, v73[5]), vmulq_f32(v73[4], vsubq_f32(v80, vandq_s8(v74, vcgtq_f32(v80, v79))))));
            v72 += 16;
          }

          while (v71 != v72);
          ++v68;
          v4 = (v4 + v69);
          v5 = (v5 + v70);
        }

        while (v68 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = *(this + 51);
          v19 = v18[1];
          v20 = v14;
          v21 = v18[2];
          v22 = v18[3];
          v23 = vmulq_f32(vminq_f32(vmaxq_f32(v4[v16 - 2], *v18), v19), v21);
          v24 = vmulq_f32(vminq_f32(vmaxq_f32(v4[v16 - 1], *v18), v19), v21);
          v25 = vmulq_f32(vminq_f32(vmaxq_f32(v4[v16], *v18), v19), v21);
          v26 = vmulq_f32(vminq_f32(vmaxq_f32(v4[v16 + 1], *v18), v19), v21);
          v27 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
          v28 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
          v29 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
          v30 = vcvtq_f32_s32(vcvtq_s32_f32(v26));
          v31 = vsubq_f32(v27, vandq_s8(v19, vcgtq_f32(v27, v23)));
          v32 = vsubq_f32(v28, vandq_s8(v19, vcgtq_f32(v28, v24)));
          v33 = vsubq_f32(v29, vandq_s8(v19, vcgtq_f32(v29, v25)));
          v34 = vsubq_f32(v30, vandq_s8(v19, vcgtq_f32(v30, v26)));
          v35 = vmulq_f32(v22, vsubq_f32(v23, v31));
          v36 = vmulq_f32(v22, vsubq_f32(v24, v32));
          v37 = vmulq_f32(v22, vsubq_f32(v25, v33));
          v38 = vmulq_f32(v22, vsubq_f32(v26, v34));
          v39 = vextq_s8(v35, v35, 0xCuLL);
          v40 = vextq_s8(v36, v36, 0xCuLL);
          v41 = vextq_s8(v37, v37, 0xCuLL);
          v42 = vextq_s8(v38, v38, 0xCuLL);
          v43 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
          v44 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
          v45 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
          v46 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
          v47 = vandq_s8(v19, vcgtq_f32(v44, v40));
          v48 = vandq_s8(v19, vcgtq_f32(v45, v41));
          v49 = vsubq_f32(v43, vandq_s8(v19, vcgtq_f32(v43, v39)));
          v50 = vsubq_f32(v46, vandq_s8(v19, vcgtq_f32(v46, v42)));
          v51 = v18[4];
          v52 = v18[5];
          v53 = vaddq_f32(vmulq_f32(v31, v52), vmulq_f32(v51, v49));
          v54 = vaddq_f32(vmulq_f32(v32, v52), vmulq_f32(v51, vsubq_f32(v44, v47)));
          v55 = vaddq_f32(vmulq_f32(v33, v52), vmulq_f32(v51, vsubq_f32(v45, v48)));
          v56 = vaddq_f32(vmulq_f32(v34, v52), vmulq_f32(v51, v50));
          v57 = v18[6];
          v58 = &v5[v16];
          v13 += 4;
          v58[-2] = vmulq_f32(v57, v53);
          v58[-1] = vmulq_f32(v57, v54);
          *v58 = vmulq_f32(v57, v55);
          v58[1] = vmulq_f32(v57, v56);
          v16 += 4;
          v15 = v17 + 4;
          v14 += 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v59 = *v17++;
            v60 = *(this + 51);
            v61 = v60[1];
            v62 = vmulq_f32(vminq_f32(vmaxq_f32(v59, *v60), v61), v60[2]);
            v63 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
            v64 = vsubq_f32(v63, vandq_s8(v61, vcgtq_f32(v63, v62)));
            v65 = vmulq_f32(v60[3], vsubq_f32(v62, v64));
            v66 = vextq_s8(v65, v65, 0xCuLL);
            v67 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
            *v20++ = vmulq_f32(v60[6], vaddq_f32(vmulq_f32(v64, v60[5]), vmulq_f32(v60[4], vsubq_f32(v67, vandq_s8(v61, vcgtq_f32(v67, v66))))));
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcPixelFormatConversion_kV4B10Bit_BE_output::GetDOD(HgcPixelFormatConversion_kV4B10Bit_BE_output *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcPixelFormatConversion_kV4B10Bit_BE_output::GetROI(HgcPixelFormatConversion_kV4B10Bit_BE_output *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcPixelFormatConversion_kV4B10Bit_BE_output::HgcPixelFormatConversion_kV4B10Bit_BE_output(HgcPixelFormatConversion_kV4B10Bit_BE_output *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872378A0;
  operator new();
}

void HgcPixelFormatConversion_kV4B10Bit_BE_output::~HgcPixelFormatConversion_kV4B10Bit_BE_output(HgcPixelFormatConversion_kV4B10Bit_BE_output *this)
{
  *this = &unk_2872378A0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AC4F46D1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_2872378A0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AC4F46D1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcPixelFormatConversion_kV4B10Bit_BE_output::~HgcPixelFormatConversion_kV4B10Bit_BE_output(HGNode *this)
{
  *this = &unk_2872378A0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AC4F46D1);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcPixelFormatConversion_kV4B_WXYZ_input::GetProgram(HgcPixelFormatConversion_kV4B_WXYZ_input *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000023d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0.yxwz) - hg_Params[0];\n    return output;\n}\n//MD5=1dbd242c:497308d0:b7cfb140:ddbffa01\n//SIG=00400000:00000001:00000001:00000001:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000022f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r0.yxwz - hg_Params[0];\n    return output;\n}\n//MD5=2f76817a:3863da94:44205a76:e1835bc2\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001fd\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0.yxwz - hg_ProgramLocal0;\n}\n//MD5=0342e6cd:919b4f83:c06c49fe:3495a499\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE1052C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE1055C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE10554);
}

uint64_t HgcPixelFormatConversion_kV4B_WXYZ_input::BindTexture(HgcPixelFormatConversion_kV4B_WXYZ_input *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcPixelFormatConversion_kV4B_WXYZ_input::Bind(HgcPixelFormatConversion_kV4B_WXYZ_input *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcPixelFormatConversion_kV4B_WXYZ_input::RenderTile(HgcPixelFormatConversion_kV4B_WXYZ_input *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v25 = 0;
        v26 = 16 * v7;
        v27 = 16 * v6;
        v28 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v29 = 0;
          do
          {
            v5[v29 / 0x10] = vsubq_f32(vrev64q_s32(v4[v29 / 0x10]), **(this + 51));
            v29 += 16;
          }

          while (v28 != v29);
          ++v25;
          v4 = (v4 + v26);
          v5 = (v5 + v27);
        }

        while (v25 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = v14;
          v19 = **(this + 51);
          v20 = vsubq_f32(vrev64q_s32(v4[v16 - 1]), v19);
          v21 = vsubq_f32(vrev64q_s32(v4[v16]), v19);
          v22 = vsubq_f32(vrev64q_s32(v4[v16 + 1]), v19);
          v23 = &v5[v16];
          v23[-2] = vsubq_f32(vrev64q_s32(v4[v16 - 2]), v19);
          v23[-1] = v20;
          v13 += 4;
          *v23 = v21;
          v23[1] = v22;
          v16 += 4;
          v15 += 4;
          v14 = v18 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v24 = *v17++;
            *v18++ = vsubq_f32(vrev64q_s32(v24), **(this + 51));
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcPixelFormatConversion_kV4B_WXYZ_input::GetDOD(HgcPixelFormatConversion_kV4B_WXYZ_input *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcPixelFormatConversion_kV4B_WXYZ_input::GetROI(HgcPixelFormatConversion_kV4B_WXYZ_input *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcPixelFormatConversion_kV4B_WXYZ_input::HgcPixelFormatConversion_kV4B_WXYZ_input(HgcPixelFormatConversion_kV4B_WXYZ_input *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287237B08;
  operator new();
}

void HgcPixelFormatConversion_kV4B_WXYZ_input::~HgcPixelFormatConversion_kV4B_WXYZ_input(HgcPixelFormatConversion_kV4B_WXYZ_input *this)
{
  *this = &unk_287237B08;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40451B5BE8);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287237B08;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40451B5BE8);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcPixelFormatConversion_kV4B_WXYZ_input::~HgcPixelFormatConversion_kV4B_WXYZ_input(HGNode *this)
{
  *this = &unk_287237B08;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcPixelFormatConversion_kV4B_WXYZ_input::SetParameter(HgcPixelFormatConversion_kV4B_WXYZ_input *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (*v8 == a3 && v8[1] == a4 && v8[2] == a5 && v8[3] == a6)
  {
    return 0;
  }

  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float HgcPixelFormatConversion_kV4B_WXYZ_input::GetParameter(HgcPixelFormatConversion_kV4B_WXYZ_input *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    result = v3[3];
    a3[3] = result;
  }

  return result;
}

const char *HgcPixelFormatConversion_kV4B_WXYZ_output::GetProgram(HgcPixelFormatConversion_kV4B_WXYZ_output *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000022e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0.yxwz);\n    return output;\n}\n//MD5=1444beee:fe229edf:8efe5f39:cebbac56\n//SIG=00400000:00000001:00000001:00000001:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000220\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r0.yxwz;\n    return output;\n}\n//MD5=55de5a34:399890da:0381eeee:8693b352\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001c2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0.yxwz;\n}\n//MD5=db620396:7a9f1d56:e8273dfb:0aa51d5a\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE10E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE10EA4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE10E9CLL);
}

uint64_t HgcPixelFormatConversion_kV4B_WXYZ_output::BindTexture(HgcPixelFormatConversion_kV4B_WXYZ_output *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcPixelFormatConversion_kV4B_WXYZ_output::RenderTile(HgcPixelFormatConversion_kV4B_WXYZ_output *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v24 = 0;
        v25 = 16 * v7;
        v26 = 16 * v6;
        v27 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v28 = 0;
          do
          {
            v5[v28 / 0x10] = vrev64q_s32(v4[v28 / 0x10]);
            v28 += 16;
          }

          while (v27 != v28);
          ++v24;
          v4 = (v4 + v25);
          v5 = (v5 + v26);
        }

        while (v24 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = v14;
          v19 = vrev64q_s32(v4[v16 - 1]);
          v20 = vrev64q_s32(v4[v16]);
          v21 = vrev64q_s32(v4[v16 + 1]);
          v22 = &v5[v16];
          v22[-2] = vrev64q_s32(v4[v16 - 2]);
          v22[-1] = v19;
          v13 += 4;
          *v22 = v20;
          v22[1] = v21;
          v16 += 4;
          v15 += 4;
          v14 = v18 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v23 = *v17++;
            *v18++ = vrev64q_s32(v23);
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcPixelFormatConversion_kV4B_WXYZ_output::GetDOD(HgcPixelFormatConversion_kV4B_WXYZ_output *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcPixelFormatConversion_kV4B_WXYZ_output::GetROI(HgcPixelFormatConversion_kV4B_WXYZ_output *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcPixelFormatConversion_kV4B_WXYZ_output::~HgcPixelFormatConversion_kV4B_WXYZ_output(HgcPixelFormatConversion_kV4B_WXYZ_output *this)
{
  *this = &unk_287237D70;
  if (*(this + 62))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 62), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGColorMatrix::~HGColorMatrix(this);
}

{
  *this = &unk_287237D70;
  if (*(this + 62))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 62), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGColorMatrix::~HGColorMatrix(this);
}

{
  *this = &unk_287237D70;
  v2 = *(this + 62);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AE2C30F4);
  }

  HGColorMatrix::~HGColorMatrix(this);

  HGObject::operator delete(v3);
}

HGNode *HgcPixelFormatConversion_kV4B_WXYZ_output::GetOutput(__n128 *this, HGRenderer *a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (this[31].n128_u32[2])
  {
    v5 = this[31].n128_u64[0];
    a4 = vrev64q_s32(v5[5]);
    a5 = vrev64q_s32(v5[6]);
    v6 = vrev64q_s32(v5[7]);
    *v5 = vrev64q_s32(v5[4]);
    *(this[31].n128_u64[0] + 16) = a4;
    *(this[31].n128_u64[0] + 32) = a5;
    *(this[31].n128_u64[0] + 48) = v6;
    v7 = this[31].n128_u64[0];
    this[27] = *v7;
    this[28] = v7[1];
    this[29] = v7[2];
    a3 = v7[3];
    this[30] = a3;
    this[31].n128_u32[2] = 0;
  }

  return HGColorMatrix::GetOutput(this, a2, a3.n128_f64[0], a4.n128_f64[0], a5.n128_u64[0]);
}

const char *HgcColorGamma_v216_yxzx_expand::GetProgram(HgcColorGamma_v216_yxzx_expand *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000303\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1;\n    float4 s0, s1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    s0.x = float(fract(0.500000f*frag._texCoord1.x) >= 0.500000f);\n    r1 = half4(r0.y, r0.x, r0.z, 1.00000h);\n    s1.yzw = float3(r1.yzw);\n    s1.x = select(float(r1.x), float(r0.w), -s0.x < 0.00000h);\n    output.color0 = s1;\n    return output;\n}\n//MD5=e21a45a6:09902464:305afcf0:4fad99f2\n//SIG=00400000:00000000:00000000:00000001:0000:0000:0004:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002c4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = float(fract(0.500000f*frag._texCoord1.x) >= 0.500000f);\n    r2 = float4(r0.y, r0.x, r0.z, 1.00000f);\n    r2.x = select(r2.x, r0.w, -r1.x < 0.00000f);\n    output.color0 = r2;\n    return output;\n}\n//MD5=255181fe:8739b9fa:717e3924:0c6abb8c\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0003:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002e4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = c0.x*hg_TexCoord1.x;\n    r1.x = fract(r1.x);\n    r1.x = float(r1.x >= c0.x);\n    r2 = vec4(r0.y, r0.x, r0.z, 1.00000);\n    r2.x = -r1.x < 0.00000 ? r0.w : r2.x;\n    gl_FragColor = r2;\n}\n//MD5=d30aa489:0cf70260:00ac23f3:bdc5057d\n//SIG=00000000:00000000:00000000:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FE118FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE11938(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE11930);
}

uint64_t HgcColorGamma_v216_yxzx_expand::BindTexture(HgcColorGamma_v216_yxzx_expand *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 104))(a2, 0.5, 1.0, 1.0);
  return 0;
}

uint64_t HgcColorGamma_v216_yxzx_expand::Bind(HgcColorGamma_v216_yxzx_expand *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcColorGamma_v216_yxzx_expand::RenderTile(HgcColorGamma_v216_yxzx_expand *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = vmulq_f32(v5, xmmword_2608457E0);
    *v8.f32 = vcvt_f32_u32(vand_s8(v2, 0x100000001));
    v8.i64[1] = 0x3F80000000000000;
    *v9.i32 = (v6 & 1);
    v9.i32[1] = 1.0;
    v9.i64[1] = 0;
    v10 = a2[2];
    v11 = v10 + 2;
    v12 = 16 * a2[3].i32[0];
    __asm { FMOV            V16.4S, #4.0 }

    v18.i64[0] = 0x3F0000003F000000;
    v18.i64[1] = 0x3F0000003F000000;
    while (v6 < 4)
    {
      v19 = 0;
      v21 = 0uLL;
      if (v6 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 = vaddq_f32(v7, xmmword_2603429C0);
      v8 = veorq_s8(v8, v9);
      ++v4;
      v11 = (v11 + v12);
      v10 = (v10 + v12);
      if (v4 == v3)
      {
        return 0;
      }
    }

    v19 = 0;
    v20 = veorq_s8(v8, xmmword_2603429B0);
    v21 = 0uLL;
    v22 = v11;
    for (i = v6; i > 3; i -= 4)
    {
      v24 = vaddq_f32(v7, vmulq_f32(v21, xmmword_260344E30));
      v25 = vaddq_f32(v24, xmmword_260344E30);
      v26 = vaddq_f32(v25, xmmword_260344E30);
      v27 = vaddq_f32(v26, xmmword_260344E30);
      v28 = a2[10];
      v29 = &a2[11];
      v30 = vaddq_f32(vsubq_f32(v24, v5), v18);
      v31 = vcvtq_s32_f32(v30);
      v32 = vaddq_f32(vsubq_f32(v25, v5), v18);
      v33 = vcvtq_s32_f32(v32);
      *v30.f32 = vadd_s32(*v31.i8, *&vcgtq_f32(vcvtq_f32_s32(v31), v30));
      *v31.i8 = vld1_dup_f32(v29);
      *v32.f32 = vadd_s32(*v33.i8, *&vcgtq_f32(vcvtq_f32_s32(v33), v32));
      *v30.f32 = vmla_s32(vzip1_s32(*v30.f32, *v32.f32), vzip2_s32(*v30.f32, *v32.f32), *v31.i8);
      LODWORD(v29) = v30.i32[1];
      v34 = vaddq_f32(vsubq_f32(v26, v5), v18);
      v35 = vcvtq_s32_f32(v34);
      v36 = v30.i32[0];
      v37 = vaddq_f32(vsubq_f32(v27, v5), v18);
      v38 = vcvtq_s32_f32(v37);
      v33.i64[0] = vcgtq_f32(vcvtq_f32_s32(v38), v37).u64[0];
      v39 = *(*&v28 + 16 * v36);
      *v34.f32 = vadd_s32(*v35.i8, *&vcgtq_f32(vcvtq_f32_s32(v35), v34));
      *v35.i8 = vadd_s32(*v38.i8, *v33.i8);
      *v38.i8 = vzip2_s32(*v34.f32, *v35.i8);
      *v35.i8 = vzip1_s32(*v34.f32, *v35.i8);
      v40 = *(*&v28 + 16 * v29);
      *v35.i8 = vmla_s32(*v35.i8, *v38.i8, *v31.i8);
      v41 = *(*&v28 + 16 * v35.i32[0]);
      v42 = *(*&v28 + 16 * v35.i32[1]);
      v43 = *(this + 51);
      v44 = *(v43 + 16);
      *v45.i8 = vqtbl1_s8(v39, *v43);
      v46 = vextq_s8(*v43, *v43, 8uLL).u64[0];
      v45.i64[1] = __PAIR64__(1.0, vqtbl1_s8(v39, v46).u32[0]);
      *v47.i8 = vqtbl1_s8(v40, *v43);
      v47.i64[1] = __PAIR64__(1.0, vqtbl1_s8(v40, v46).u32[0]);
      *v48.i8 = vqtbl1_s8(v41, *v43);
      v48.i64[1] = __PAIR64__(1.0, vqtbl1_s8(v41, v46).u32[0]);
      *v31.i8 = vqtbl1_s8(v42, *v43);
      v31.i64[1] = __PAIR64__(1.0, vqtbl1_s8(v42, v46).u32[0]);
      v49 = vcgtq_f32(v8, v44);
      v50 = vcgtq_f32(v20, v44);
      v51 = vbslq_s8(v50, vextq_s8(v40, v40, 0xCuLL), v47);
      v52 = vbslq_s8(v50, vextq_s8(v42, v42, 0xCuLL), v31);
      v53 = *(v43 + 32);
      v21 = vaddq_f32(v21, _Q16);
      v22[-2] = vbslq_s8(v53, vbslq_s8(v49, vextq_s8(v39, v39, 0xCuLL), v45), v45);
      v22[-1] = vbslq_s8(v53, v51, v47);
      *v22 = vbslq_s8(v53, vbslq_s8(v49, vextq_s8(v41, v41, 0xCuLL), v48), v48);
      v22[1] = vbslq_s8(v53, v52, v31);
      v22 += 4;
      v19 += 4;
    }

    if (v19 >= v6)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v54 = vaddq_f32(vsubq_f32(vaddq_f32(v7, vmulq_f32(v21, xmmword_260344E30)), v5), v18);
      v55 = vcvtq_s32_f32(v54);
      v54.i64[0] = vaddq_s32(v55, vcgtq_f32(vcvtq_f32_s32(v55), v54)).u64[0];
      v56 = *(*&a2[10] + 16 * (v54.i32[0] + v54.i32[1] * a2[11].i32[0]));
      v57 = *(this + 51);
      *v55.i8 = vqtbl1_s8(v56, *v57);
      v55.i64[1] = __PAIR64__(1.0, vqtbl1_s8(v56, *&vextq_s8(*v57, *v57, 8uLL)).u32[0]);
      v10[v19] = vbslq_s8(*(v57 + 32), vbslq_s8(vcgtq_f32(v8, *(v57 + 16)), vextq_s8(v56, v56, 0xCuLL), v55), v55);
      v8 = veorq_s8(v8, xmmword_2603429B0);
      __asm { FMOV            V19.4S, #1.0 }

      v21 = vaddq_f32(v21, _Q19);
      ++v19;
    }

    while (v19 < v6);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcColorGamma_v216_yxzx_expand::GetDOD(HgcColorGamma_v216_yxzx_expand *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    v7 = HGRectMake4i(0, 0, 1u, 0);
    v8 = HGRectGrow(v6, v5, v7);
    v9 = HGRectFloat(v8);
    v13 = HGRectScale(v9, v10, v11, v12, 2.0);
    v18 = HGRectIntegral(v14, v13, v15, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

uint64_t HgcColorGamma_v216_yxzx_expand::GetROI(HgcColorGamma_v216_yxzx_expand *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 0.5);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    v16 = v15;
    v17 = HGRectMake4i(0xFFFFFFFF, 0, 0, 0);
    v18 = HGRectGrow(v14, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

void HgcColorGamma_v216_yxzx_expand::HgcColorGamma_v216_yxzx_expand(HgcColorGamma_v216_yxzx_expand *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287237FE8;
  operator new();
}

void HgcColorGamma_v216_yxzx_expand::~HgcColorGamma_v216_yxzx_expand(HgcColorGamma_v216_yxzx_expand *this)
{
  *this = &unk_287237FE8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40EED21634);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287237FE8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40EED21634);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcColorGamma_v216_yxzx_expand::~HgcColorGamma_v216_yxzx_expand(HGNode *this)
{
  *this = &unk_287237FE8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40EED21634);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcBlur_g4u2::GetProgram(HgcBlur_g4u2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000918\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.5000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    float4 s0, s1, s2, s3, s4, s5, s6;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord1.xy*hg_Params[4].xy;\n    s0.xy = s0.xy + frag._texCoord0.xy;\n    s0.zw = s0.xy + hg_Params[5].xy;\n    s1.zw = s0.zw + hg_Params[6].xy;\n    s1.xy = s0.xy + -hg_Params[6].xy;\n    s2.zw = floor(s0.xy);\n    s2.xy = floor(s0.zw);\n    s2.xy = s2.xy + -s2.zw;\n    s1.zw = s1.zw + hg_Params[7].xy;\n    s1.zw = s1.zw*hg_Params[7].zw;\n    s1.xy = s1.xy + hg_Params[7].xy;\n    s0.zw = s0.zw + hg_Params[7].xy;\n    s0.xy = s0.xy + hg_Params[7].xy;\n    s3.x = s2.x + s2.y;\n    s5.xy = s1.zw*hg_Params[8].xy;\n    s5.xy = fmax(s5.xy, float2(c0.xy));\n    s6.xy = hg_Params[8].xy - float2(c0.xy);\n    s5.xy = fmin(s5.xy, s6.xy);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s5.xy);\n    s1.xy = s1.xy*hg_Params[7].zw;\n    s6.xy = s1.xy*hg_Params[8].xy;\n    s6.xy = fmax(s6.xy, float2(c0.xy));\n    s5.xy = hg_Params[8].xy - float2(c0.xy);\n    s6.xy = fmin(s6.xy, s5.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, s6.xy);\n    r0 = r1 + r0;\n    r1 = half4(hg_Params[1]);\n    r1 = -r1 + half4(hg_Params[3]);\n    s2 = s3.xxxx*float4(r1) + hg_Params[1];\n    r1 = half4(hg_Params[0]);\n    s2 = float4(r0)*s2;\n    r0 = -r1 + half4(hg_Params[2]);\n    s0.zw = s0.zw*hg_Params[7].zw;\n    s5.xy = s0.zw*hg_Params[8].xy;\n    s5.xy = fmax(s5.xy, float2(c0.xy));\n    s6.xy = hg_Params[8].xy - float2(c0.xy);\n    s5.xy = fmin(s5.xy, s6.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, s5.xy);\n    s0.xy = s0.xy*hg_Params[7].zw;\n    s6.xy = s0.xy*hg_Params[8].xy;\n    s6.xy = fmax(s6.xy, float2(c0.xy));\n    s5.xy = hg_Params[8].xy - float2(c0.xy);\n    s6.xy = fmin(s6.xy, s5.xy);\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, s6.xy);\n    r2 = r2 + r1;\n    s4 = s3.xxxx*float4(r0) + hg_Params[0];\n    output.color0 = float4(r2)*s4 + s2;\n    return output;\n}\n//MD5=82cbc070:1e8f1392:17c94f80:ede0e467\n//SIG=00400000:00000000:00000000:00000001:0001:0009:000a:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000869\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.5000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord1.xy*hg_Params[4].xy;\n    r0.xy = r0.xy + frag._texCoord0.xy;\n    r0.zw = r0.xy + hg_Params[5].xy;\n    r1.zw = r0.zw + hg_Params[6].xy;\n    r1.xy = r0.xy + -hg_Params[6].xy;\n    r3.zw = floor(r0.xy);\n    r3.xy = floor(r0.zw);\n    r3.xy = r3.xy + -r3.zw;\n    r1.zw = r1.zw + hg_Params[7].xy;\n    r1.zw = r1.zw*hg_Params[7].zw;\n    r1.xy = r1.xy + hg_Params[7].xy;\n    r0.zw = r0.zw + hg_Params[7].xy;\n    r0.xy = r0.xy + hg_Params[7].xy;\n    r4.x = r3.x + r3.y;\n    r5.xy = r1.zw*hg_Params[8].xy;\n    r5.xy = fmax(r5.xy, c0.xy);\n    r6.xy = hg_Params[8].xy - c0.xy;\n    r5.xy = fmin(r5.xy, r6.xy);\n    r2 = hg_Texture0.sample(hg_Sampler0, r5.xy);\n    r1.xy = r1.xy*hg_Params[7].zw;\n    r6.xy = r1.xy*hg_Params[8].xy;\n    r6.xy = fmax(r6.xy, c0.xy);\n    r5.xy = hg_Params[8].xy - c0.xy;\n    r6.xy = fmin(r6.xy, r5.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n    r2 = r1 + r2;\n    r1 = hg_Params[1];\n    r1 = -r1 + hg_Params[3];\n    r3 = r4.xxxx*r1 + hg_Params[1];\n    r1 = hg_Params[0];\n    r3 = r2*r3;\n    r2 = -r1 + hg_Params[2];\n    r0.zw = r0.zw*hg_Params[7].zw;\n    r5.xy = r0.zw*hg_Params[8].xy;\n    r5.xy = fmax(r5.xy, c0.xy);\n    r6.xy = hg_Params[8].xy - c0.xy;\n    r5.xy = fmin(r5.xy, r6.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, r5.xy);\n    r0.xy = r0.xy*hg_Params[7].zw;\n    r6.xy = r0.xy*hg_Params[8].xy;\n    r6.xy = fmax(r6.xy, c0.xy);\n    r5.xy = hg_Params[8].xy - c0.xy;\n    r6.xy = fmin(r6.xy, r5.xy);\n    r0 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n    r0 = r0 + r1;\n    r1 = r4.xxxx*r2 + hg_Params[0];\n    output.color0 = r0*r1 + r3;\n    return output;\n}\n//MD5=27c82f99:05d3f9c9:9a09a632:03ef48aa\n//SIG=00000000:00000000:00000000:00000000:0001:0009:0007:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000838\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3, r4, r5;\n\n    r0.xy = hg_TexCoord1.xy*hg_ProgramLocal4.xy;\n    r0.xy = r0.xy + hg_TexCoord0.xy;\n    r0.zw = r0.xy + hg_ProgramLocal5.xy;\n    r1.zw = r0.zw + hg_ProgramLocal6.xy;\n    r1.xy = r0.xy + -hg_ProgramLocal6.xy;\n    r3.zw = floor(r0.xy);\n    r3.xy = floor(r0.zw);\n    r3.xy = r3.xy + -r3.zw;\n    r1.zw = r1.zw + hg_ProgramLocal7.xy;\n    r1.zw = r1.zw*hg_ProgramLocal7.zw;\n    r1.xy = r1.xy + hg_ProgramLocal7.xy;\n    r0.zw = r0.zw + hg_ProgramLocal7.xy;\n    r0.xy = r0.xy + hg_ProgramLocal7.xy;\n    r4.x = r3.x + r3.y;\n    r5.xy = hg_ProgramLocal8.xy*c0.xy + r1.zw;\n    r2 = texture2D(hg_Texture0, r5.xy);\n    r1.xy = r1.xy*hg_ProgramLocal7.zw;\n    r5.xy = hg_ProgramLocal8.xy*c0.xy + r1.xy;\n    r1 = texture2D(hg_Texture0, r5.xy);\n    r2 = r1 + r2;\n    r1 = hg_ProgramLocal1;\n    r1 = -r1 + hg_ProgramLocal3;\n    r3 = r4.xxxx*r1 + hg_ProgramLocal1;\n    r1 = hg_ProgramLocal0;\n    r3 = r2*r3;\n    r2 = -r1 + hg_ProgramLocal2;\n    r0.zw = r0.zw*hg_ProgramLocal7.zw;\n    r5.xy = hg_ProgramLocal8.xy*c0.xy + r0.zw;\n    r1 = texture2D(hg_Texture0, r5.xy);\n    r0.xy = r0.xy*hg_ProgramLocal7.zw;\n    r5.xy = hg_ProgramLocal8.xy*c0.xy + r0.xy;\n    r0 = texture2D(hg_Texture0, r5.xy);\n    r0 = r0 + r1;\n    r1 = r4.xxxx*r2 + hg_ProgramLocal0;\n    gl_FragColor = r0*r1 + r3;\n}\n//MD5=b7d40998:4cb87aed:89098058:1dba952d\n//SIG=00000000:00000000:00000000:00000000:0001:0009:0006:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FE12644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE12680(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE12678);
}

uint64_t HgcBlur_g4u2::BindTexture(HgcBlur_g4u2 *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
  {
    (*(*a2 + 72))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
  }

  (*(*a2 + 136))(a2, 8, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), 0.0, 0.0);
  return 0;
}

uint64_t HgcBlur_g4u2::Bind(HgcBlur_g4u2 *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBlur_g4u2::RenderTile(HgcBlur_g4u2 *this, int32x2_t *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *a2;
  v7 = a2[1].i32[1] - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = a2[1].i32[0] - v6.i32[0];
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = vcvt_f32_s32(vsub_s32(a2[27], a2[26]));
      __asm { FMOV            V2.2S, #-1.0 }

      v16 = vadd_f32(v10, _D2);
      v17 = vadd_f32(v16, _D2);
      *v18.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
      v18.i64[1] = 0x3F80000000000000;
      v19 = a2[2];
      v20 = 16 * a2[3].i32[0];
      v21 = 16 * v8;
      v22 = v18;
      do
      {
        v23 = 0;
        v24 = v18;
        v25 = v22;
        do
        {
          v32 = *(this + 51);
          v33 = vaddq_f32(v24, vmulq_f32(v25, *(v32 + 64)));
          v34 = vdupq_lane_s64(vaddq_f32(*(v32 + 80), v33).i64[0], 0);
          v35.i64[1] = v34.i64[1];
          v35.i64[0] = v33.i64[0];
          v36 = *(v32 + 96);
          v37 = *(v32 + 112);
          v38 = vaddq_f32(vdupq_lane_s64(v36.i64[0], 0), v35);
          v39 = vsubq_f32(v33, v36);
          v40 = vextq_s8(v37, v37, 8uLL);
          v41 = vmulq_f32(v37, vaddq_f32(v40, v38));
          v42 = vaddq_f32(v37, v39).u64[0];
          v43 = a2[10];
          v44 = a2[11].i32[0];
          v45 = vmul_f32(v10, *&vextq_s8(v41, v41, 8uLL));
          if (v5)
          {
            v46 = vmin_f32(vmax_f32(vadd_f32(v45, 0xBF000000BF000000), 0), v16);
            v47 = vcvt_s32_f32(vmin_f32(v46, v17));
            v48 = vsub_f32(v46, vcvt_f32_s32(v47));
            v49 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, vmul_f32(*v40.f32, v42)), 0xBF000000BF000000), 0), v16);
            v50 = vcvt_s32_f32(vmin_f32(v49, v17));
            v51 = vsub_f32(v49, vcvt_f32_s32(v50));
            v52 = vmla_s32(vzip1_s32(v47, v50), vzip2_s32(v47, v50), vdup_n_s32(v44));
            v53 = (*&v43 + 16 * v52.i32[0]);
            v54 = vaddq_f32(*v53, vmulq_n_f32(vsubq_f32(v53[1], *v53), v48.f32[0]));
            v55 = vaddq_f32(v54, vmulq_lane_f32(vsubq_f32(vaddq_f32(v53[v44], vmulq_n_f32(vsubq_f32(v53[v44 + 1], v53[v44]), v48.f32[0])), v54), v48, 1));
            v56 = (*&v43 + 16 * v52.i32[1]);
            v57 = vaddq_f32(*v56, vmulq_n_f32(vsubq_f32(v56[1], *v56), v51.f32[0]));
            v58 = vaddq_f32(v57, vmulq_lane_f32(vsubq_f32(vaddq_f32(v56[v44], vmulq_n_f32(vsubq_f32(v56[v44 + 1], v56[v44]), v51.f32[0])), v57), v51, 1));
          }

          else
          {
            v59 = vcvt_s32_f32(vmin_f32(vmax_f32(v45, 0), v16));
            v60 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, vmul_f32(*v40.f32, v42)), 0), v16));
            v61 = vmla_s32(vzip1_s32(v59, v60), vzip2_s32(v59, v60), vdup_n_s32(v44));
            v62 = v61.i32[1];
            v55 = *(*&v43 + 16 * v61.i32[0]);
            v58 = *(*&v43 + 16 * v62);
          }

          v63 = vextq_s8(v34, v33, 8uLL);
          v64 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
          v65 = vsubq_f32(v64, vandq_s8(*(v32 + 128), vcgtq_f32(v64, v63)));
          v66 = vsubq_f32(v65, vextq_s8(v65, v65, 8uLL));
          v67 = vaddq_f32(v35, v40);
          v68 = vadd_f32(*v33.f32, *v37.f32);
          LODWORD(v69) = vaddq_f32(v66, vdupq_lane_s32(*v66.f32, 1)).u32[0];
          v70 = vmul_f32(v10, vmul_f32(*v40.f32, *&vextq_s8(v67, v67, 8uLL)));
          if (v5)
          {
            v71 = vmin_f32(vmax_f32(vadd_f32(v70, 0xBF000000BF000000), 0), v16);
            v72 = vcvt_s32_f32(vmin_f32(v71, v17));
            v73 = vsub_f32(v71, vcvt_f32_s32(v72));
            v74 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, vmul_f32(*v40.f32, v68)), 0xBF000000BF000000), 0), v16);
            v75 = vcvt_s32_f32(vmin_f32(v74, v17));
            v76 = vsub_f32(v74, vcvt_f32_s32(v75));
            v77 = vmla_s32(vzip1_s32(v72, v75), vzip2_s32(v72, v75), vdup_n_s32(v44));
            v78 = (*&v43 + 16 * v77.i32[0]);
            v79 = vaddq_f32(*v78, vmulq_n_f32(vsubq_f32(v78[1], *v78), v73.f32[0]));
            v30 = vaddq_f32(v79, vmulq_lane_f32(vsubq_f32(vaddq_f32(v78[v44], vmulq_n_f32(vsubq_f32(v78[v44 + 1], v78[v44]), v73.f32[0])), v79), v73, 1));
            v80 = (*&v43 + 16 * v77.i32[1]);
            v81 = vaddq_f32(*v80, vmulq_n_f32(vsubq_f32(v80[1], *v80), v76.f32[0]));
            v31 = vaddq_f32(v81, vmulq_lane_f32(vsubq_f32(vaddq_f32(v80[v44], vmulq_n_f32(vsubq_f32(v80[v44 + 1], v80[v44]), v76.f32[0])), v81), v76, 1));
          }

          else
          {
            v26 = vcvt_s32_f32(vmin_f32(vmax_f32(v70, 0), v16));
            v27 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, vmul_f32(*v40.f32, v68)), 0), v16));
            v28 = vmla_s32(vzip1_s32(v26, v27), vzip2_s32(v26, v27), vdup_n_s32(v44));
            v29 = v28.i32[1];
            v30 = *(*&v43 + 16 * v28.i32[0]);
            v31 = *(*&v43 + 16 * v29);
          }

          *(*&v19 + v23) = vaddq_f32(vmulq_f32(vaddq_f32(v55, v58), vaddq_f32(*(v32 + 16), vmulq_n_f32(vsubq_f32(*(v32 + 48), *(v32 + 16)), v69))), vmulq_f32(vaddq_f32(*v32, vmulq_n_f32(vsubq_f32(*(v32 + 32), *v32), v69)), vaddq_f32(v30, v31)));
          v24 = vaddq_f32(v24, xmmword_2603429B0);
          v25 = vaddq_f32(v25, xmmword_2603429B0);
          v23 += 16;
        }

        while (v21 != v23);
        v18 = vaddq_f32(v18, xmmword_2603429C0);
        v22 = vaddq_f32(v22, xmmword_2603429C0);
        ++v9;
        *&v19 += v20;
      }

      while (v9 != v7);
    }
  }

  return 0;
}

uint64_t HgcBlur_g4u2::GetDOD(HgcBlur_g4u2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcBlur_g4u2::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcBlur_g4u2::HgcBlur_g4u2(HgcBlur_g4u2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287238250;
  operator new();
}

void HgcBlur_g4u2::~HgcBlur_g4u2(HgcBlur_g4u2 *this)
{
  *this = &unk_287238250;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40265AC83CLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287238250;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40265AC83CLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBlur_g4u2::~HgcBlur_g4u2(HGNode *this)
{
  *this = &unk_287238250;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40265AC83CLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBlur_g4u2::SetParameter(HgcBlur_g4u2 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBlur_g4u2::GetParameter(HgcBlur_g4u2 *this, unsigned int a2, float *a3)
{
  if (a2 > 7)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcBlur_g4u2_rect::GetProgram(HgcBlur_g4u2_rect *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005f2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2, r3;\n    float4 s0, s1, s2, s3, s4, s5, s6, s7, s8, s9;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord1.xy*hg_Params[4].xy + frag._texCoord0.xy;\n    s1.xy = s0.xy - hg_Params[6].xy;\n    s2.xy = s0.xy + hg_Params[5].xy;\n    s3.xy = s2.xy + hg_Params[6].xy;\n    s4.xy = floor(s0.xy);\n    s5.xy = floor(s2.xy);\n    s4.xy = s5.xy - s4.xy;\n    s4 = s4.xxxx + s4.yyyy;\n    s6 = mix(hg_Params[0], hg_Params[2], s4);\n    s7 = mix(hg_Params[1], hg_Params[3], s4);\n    s9.xy = s1.xy + hg_Params[7].xy;\n    s9.xy = s9.xy*hg_Params[7].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n    s9.xy = s3.xy + hg_Params[7].xy;\n    s9.xy = s9.xy*hg_Params[7].zw;\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n    r0 = r0 + r1;\n    s9.xy = s0.xy + hg_Params[7].xy;\n    s9.xy = s9.xy*hg_Params[7].zw;\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n    s9.xy = s2.xy + hg_Params[7].xy;\n    s9.xy = s9.xy*hg_Params[7].zw;\n    r3 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n    r2 = r2 + r3;\n    s8 = float4(r0)*s7;\n    s8 = float4(r2)*s6 + s8;\n    output.color0 = s8;\n    return output;\n}\n//MD5=6880a678:737fce71:a2b9662a:27e9fc5b\n//SIG=00400000:00000000:00000000:00000001:0000:0008:000e:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005a5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8;\n    FragmentOut output;\n\n    r1.xy = frag._texCoord1.xy*hg_Params[4].xy + frag._texCoord0.xy;\n    r0.xy = r1.xy - hg_Params[6].xy;\n    r2.xy = r1.xy + hg_Params[5].xy;\n    r3.xy = r2.xy + hg_Params[6].xy;\n    r4.xy = floor(r1.xy);\n    r5.xy = floor(r2.xy);\n    r4.xy = r5.xy - r4.xy;\n    r4 = r4.xxxx + r4.yyyy;\n    r6 = mix(hg_Params[0], hg_Params[2], r4);\n    r7 = mix(hg_Params[1], hg_Params[3], r4);\n    r8.xy = r0.xy + hg_Params[7].xy;\n    r8.xy = r8.xy*hg_Params[7].zw;\n    r0 = hg_Texture0.sample(hg_Sampler0, r8.xy);\n    r8.xy = r3.xy + hg_Params[7].xy;\n    r8.xy = r8.xy*hg_Params[7].zw;\n    r3 = hg_Texture0.sample(hg_Sampler0, r8.xy);\n    r0 = r0 + r3;\n    r8.xy = r1.xy + hg_Params[7].xy;\n    r8.xy = r8.xy*hg_Params[7].zw;\n    r1 = hg_Texture0.sample(hg_Sampler0, r8.xy);\n    r8.xy = r2.xy + hg_Params[7].xy;\n    r8.xy = r8.xy*hg_Params[7].zw;\n    r2 = hg_Texture0.sample(hg_Sampler0, r8.xy);\n    r1 = r1 + r2;\n    r0 = r0*r7;\n    r0 = r1*r6 + r0;\n    output.color0 = r0;\n    return output;\n}\n//MD5=325c15d5:053de68f:ddd38fee:92ec3141\n//SIG=00000000:00000000:00000000:00000000:0000:0008:0009:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006af\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    highp vec4 r0, r1, r2, r3, r4, r5, r6, r7, r8;\n\n    r1.xy = hg_TexCoord1.xy*hg_ProgramLocal4.xy + hg_TexCoord0.xy;\n    r0.xy = r1.xy - hg_ProgramLocal6.xy;\n    r2.xy = r1.xy + hg_ProgramLocal5.xy;\n    r3.xy = r2.xy + hg_ProgramLocal6.xy;\n    r4.xy = floor(r1.xy);\n    r5.xy = floor(r2.xy);\n    r4.xy = r5.xy - r4.xy;\n    r4 = r4.xxxx + r4.yyyy;\n    r6 = mix(hg_ProgramLocal0, hg_ProgramLocal2, r4);\n    r7 = mix(hg_ProgramLocal1, hg_ProgramLocal3, r4);\n    r8.xy = r0.xy + hg_ProgramLocal7.xy;\n    r8.xy = r8.xy*hg_ProgramLocal7.zw;\n    r0 = texture2D(hg_Texture0, r8.xy);\n    r8.xy = r3.xy + hg_ProgramLocal7.xy;\n    r8.xy = r8.xy*hg_ProgramLocal7.zw;\n    r3 = texture2D(hg_Texture0, r8.xy);\n    r0 = r0 + r3;\n    r8.xy = r1.xy + hg_ProgramLocal7.xy;\n    r8.xy = r8.xy*hg_ProgramLocal7.zw;\n    r1 = texture2D(hg_Texture0, r8.xy);\n    r8.xy = r2.xy + hg_ProgramLocal7.xy;\n    r8.xy = r8.xy*hg_ProgramLocal7.zw;\n    r2 = texture2D(hg_Texture0, r8.xy);\n    r1 = r1 + r2;\n    r0 = r0*r7;\n    r0 = r1*r6 + r0;\n    gl_FragColor = r0;\n}\n//MD5=497577be:b0d0ecde:f4ebf00e:861916a5\n//SIG=00000000:00000000:00000000:00000000:0000:0008:0009:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FE13628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE13664(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE1365CLL);
}

uint64_t HgcBlur_g4u2_rect::BindTexture(HgcBlur_g4u2_rect *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v5.n128_f32[0] = *(a2 + 60);
  v6.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 136))(a2, 7, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcBlur_g4u2_rect::Bind(HgcBlur_g4u2_rect *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBlur_g4u2_rect::RenderTile(HgcBlur_g4u2_rect *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *a2;
  v7 = *(a2 + 3) - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = (*(a2 + 2) - v6.i32[0]);
    if (v8 >= 1)
    {
      *v9.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
      v9.i64[1] = 0x3F80000000000000;
      v10 = *(a2 + 2);
      v11 = 0;
      v12 = 16 * *(a2 + 6);
      v13 = 16 * v8;
      if (v5)
      {
        v14 = v9;
        v15 = v9;
        do
        {
          v16 = 0;
          v17 = v14;
          v18 = v15;
          do
          {
            v19 = *(this + 51);
            v20 = vaddq_f32(v17, vmulq_f32(v18, *(v19 + 64)));
            v21 = *(v19 + 96);
            v22 = vaddq_f32(v20, *(v19 + 80));
            v23 = vcvtq_f32_s32(vcvtq_s32_f32(v20));
            v24 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
            v23.i64[0] = vaddq_f32(vsubq_f32(vbslq_s8(vcgtq_f32(v23, v20), *(v19 + 112), 0), v23), vsubq_f32(v24, vbslq_s8(vcgtq_f32(v24, v22), *(v19 + 112), 0))).u64[0];
            v25 = *v19;
            v26 = *(v19 + 16);
            v27 = vsubq_f32(*(v19 + 32), *v19);
            v28 = vdupq_lane_s32(*v23.f32, 0);
            v29 = vsubq_f32(*(v19 + 48), v26);
            v30 = *(a2 + 10);
            v31 = *(a2 + 22);
            v32 = vsubq_f32(vsubq_f32(v20, v21), v9);
            v33 = vdupq_lane_s32(*v23.f32, 1);
            v34 = vaddq_s32(vcvtq_s32_f32(v32), vcltzq_f32(v32));
            v23.i64[0] = vsubq_f32(v32, vcvtq_f32_s32(v34)).u64[0];
            v35 = vaddq_f32(v28, v33);
            v36 = vsubq_f32(vaddq_f32(v21, v22), v9);
            v37 = vaddq_s32(vcvtq_s32_f32(v36), vcltzq_f32(v36));
            v38 = vmulq_f32(v27, v35);
            v36.i64[0] = vsubq_f32(v36, vcvtq_f32_s32(v37)).u64[0];
            *v27.f32 = vdup_n_s32(v31);
            v39 = vmulq_f32(v29, v35);
            *v37.i8 = vmla_s32(vzip1_s32(*v34.i8, *v37.i8), vzip2_s32(*v34.i8, *v37.i8), *v27.f32);
            v40 = (v30 + 16 * v37.i32[0]);
            v41 = vaddq_f32(v25, v38);
            v31 *= 16;
            v42 = vaddq_f32(v26, v39);
            v43 = (v30 + 16 * v37.i32[1]);
            v44 = vsubq_f32(v20, v9);
            v45 = vaddq_s32(vcvtq_s32_f32(v44), vcltzq_f32(v44));
            v38.i64[0] = vsubq_f32(v44, vcvtq_f32_s32(v45)).u64[0];
            v46 = vsubq_f32(v22, v9);
            v47 = vaddq_s32(vcvtq_s32_f32(v46), vcltzq_f32(v46));
            v48 = vaddq_f32(*v40, vmulq_n_f32(vsubq_f32(v40[1], *v40), v23.f32[0]));
            v46.i64[0] = vsubq_f32(v46, vcvtq_f32_s32(v47)).u64[0];
            *v37.i8 = vzip2_s32(*v45.i8, *v47.i8);
            *v47.i8 = vzip1_s32(*v45.i8, *v47.i8);
            v49 = *v43;
            v50 = vaddq_f32(*(v40 + v31), vmulq_n_f32(vsubq_f32(*(v40 + v31 + 16), *(v40 + v31)), v23.f32[0]));
            v51 = vsubq_f32(v43[1], *v43);
            v52 = (v43 + v31);
            *v47.i8 = vmla_s32(*v47.i8, *v37.i8, *v27.f32);
            v53 = *v52;
            v54 = vmulq_n_f32(vsubq_f32(v52[1], *v52), v36.f32[0]);
            LODWORD(v52) = v47.i32[1];
            LODWORD(v40) = v47.i32[0];
            v55 = vaddq_f32(v49, vmulq_n_f32(v51, v36.f32[0]));
            v56 = (v30 + 16 * v40);
            v57 = vaddq_f32(v53, v54);
            v58 = vaddq_f32(*v56, vmulq_n_f32(vsubq_f32(v56[1], *v56), v38.f32[0]));
            v59 = (v30 + 16 * v52);
            v60 = vmulq_lane_f32(vsubq_f32(v57, v55), *v36.f32, 1);
            v61 = vaddq_f32(*v59, vmulq_n_f32(vsubq_f32(v59[1], *v59), v46.f32[0]));
            *(v10 + v16) = vaddq_f32(vmulq_f32(v42, vaddq_f32(vaddq_f32(v48, vmulq_lane_f32(vsubq_f32(v50, v48), *v23.f32, 1)), vaddq_f32(v55, v60))), vmulq_f32(v41, vaddq_f32(vaddq_f32(v58, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v56 + v31), vmulq_n_f32(vsubq_f32(*(v56 + v31 + 16), *(v56 + v31)), v38.f32[0])), v58), *v38.f32, 1)), vaddq_f32(v61, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v59 + v31), vmulq_n_f32(vsubq_f32(*(v59 + v31 + 16), *(v59 + v31)), v46.f32[0])), v61), *v46.f32, 1)))));
            v17 = vaddq_f32(v17, xmmword_2603429B0);
            v18 = vaddq_f32(v18, xmmword_2603429B0);
            v16 += 16;
          }

          while (v13 != v16);
          v14 = vaddq_f32(v14, xmmword_2603429C0);
          v15 = vaddq_f32(v15, xmmword_2603429C0);
          ++v11;
          v10 += v12;
        }

        while (v11 != v7);
      }

      else
      {
        v62.i64[0] = 0x3F0000003F000000;
        v62.i64[1] = 0x3F0000003F000000;
        v63 = v9;
        v64 = v9;
        do
        {
          v65 = 0;
          v66 = v63;
          v67 = v64;
          do
          {
            v68 = *(this + 51);
            v69 = vaddq_f32(v66, vmulq_f32(v67, *(v68 + 64)));
            v70 = *(v68 + 96);
            v71 = *(v68 + 112);
            v72 = vsubq_f32(v69, v70);
            v73 = vaddq_f32(v69, *(v68 + 80));
            v74 = vaddq_f32(v70, v73);
            v75 = vcvtq_f32_s32(vcvtq_s32_f32(v69));
            v76 = vcvtq_f32_s32(vcvtq_s32_f32(v73));
            v77 = vsubq_f32(vbslq_s8(vcgtq_f32(v75, v69), v71, 0), v75);
            v78 = *(v68 + 32);
            v79 = *(v68 + 48);
            v80 = vsubq_f32(v76, vbslq_s8(vcgtq_f32(v76, v73), v71, 0));
            v81 = vaddq_f32(vsubq_f32(v72, v9), v62);
            v82 = vcvtq_s32_f32(v81);
            v80.i64[0] = vaddq_f32(v77, v80).u64[0];
            v83 = vaddq_f32(vsubq_f32(v74, v9), v62);
            v84 = vcvtq_s32_f32(v83);
            *v81.f32 = vadd_s32(*v82.i8, *&vcgtq_f32(vcvtq_f32_s32(v82), v81));
            v85 = vaddq_f32(vsubq_f32(v69, v9), v62);
            v86 = vcvtq_s32_f32(v85);
            *v83.f32 = vadd_s32(*v84.i8, *&vcgtq_f32(vcvtq_f32_s32(v84), v83));
            v87 = vaddq_f32(vsubq_f32(v73, v9), v62);
            v88 = vcvtq_s32_f32(v87);
            v89 = vzip2_s32(*v81.f32, *v83.f32);
            *v81.f32 = vzip1_s32(*v81.f32, *v83.f32);
            v90 = (a2 + 88);
            *v85.f32 = vadd_s32(*v86.i8, *&vcgtq_f32(vcvtq_f32_s32(v86), v85));
            *v83.f32 = vld1_dup_f32(v90);
            *v87.f32 = vadd_s32(*v88.i8, *&vcgtq_f32(vcvtq_f32_s32(v88), v87));
            *v81.f32 = vmla_s32(*v81.f32, v89, *v83.f32);
            *v85.f32 = vmla_s32(vzip1_s32(*v85.f32, *v87.f32), vzip2_s32(*v85.f32, *v87.f32), *v83.f32);
            v91 = *v68;
            v92 = *(v68 + 16);
            v93 = *(a2 + 10);
            v94 = vaddq_f32(vdupq_lane_s32(*v80.f32, 0), vdupq_lane_s32(*v80.f32, 1));
            *(v10 + v65) = vaddq_f32(vmulq_f32(vaddq_f32(v92, vmulq_f32(vsubq_f32(v79, v92), v94)), vaddq_f32(*(v93 + 16 * v81.i32[0]), *(v93 + 16 * v81.i32[1]))), vmulq_f32(vaddq_f32(v91, vmulq_f32(vsubq_f32(v78, v91), v94)), vaddq_f32(*(v93 + 16 * v85.i32[0]), *(v93 + 16 * v85.i32[1]))));
            v66 = vaddq_f32(v66, xmmword_2603429B0);
            v67 = vaddq_f32(v67, xmmword_2603429B0);
            v65 += 16;
          }

          while (v13 != v65);
          v63 = vaddq_f32(v63, xmmword_2603429C0);
          v64 = vaddq_f32(v64, xmmword_2603429C0);
          ++v11;
          v10 += v12;
        }

        while (v11 != v7);
      }
    }
  }

  return 0;
}

uint64_t HgcBlur_g4u2_rect::GetDOD(HgcBlur_g4u2_rect *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var0;
  v6 = *&a4.var2;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    HGRectGrow(v5, v6, v7);
  }

  return 0x8000000080000000;
}

uint64_t HgcBlur_g4u2_rect::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  DOD = HGRenderer::GetDOD(a2, Input);
  v10 = v9;
  if ((*(*this + 312))(this, a2) < 1)
  {
    return DOD;
  }

  v11 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  return HGRectGrow(DOD, v10, v11);
}

void HgcBlur_g4u2_rect::HgcBlur_g4u2_rect(HgcBlur_g4u2_rect *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872384B8;
  operator new();
}

void HgcBlur_g4u2_rect::~HgcBlur_g4u2_rect(HgcBlur_g4u2_rect *this)
{
  *this = &unk_2872384B8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_2872384B8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBlur_g4u2_rect::~HgcBlur_g4u2_rect(HGNode *this)
{
  *this = &unk_2872384B8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AE2C30F4);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBlur_g4u2_rect::SetParameter(HgcBlur_g4u2_rect *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBlur_g4u2_rect::GetParameter(HgcBlur_g4u2_rect *this, unsigned int a2, float *a3)
{
  if (a2 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcApply3DLUTTetrahedral_basekernel::GetProgram(HgcApply3DLUTTetrahedral_basekernel *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_1169;
    }

    else
    {
      return aMetal10Len0000_1170;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_438;
  }
}

void sub_25FE147F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void sub_25FE14838(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE14830);
}

uint64_t HgcApply3DLUTTetrahedral_basekernel::BindTexture(HgcApply3DLUTTetrahedral_basekernel *this, HGHandler *a2, int a3)
{
  if (a3 == 2)
  {
    (*(*a2 + 72))(a2, 2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      v12.n128_u32[0] = 1.0;
      v13.n128_u32[0] = 1.0;
    }

    else
    {
      v12.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v13.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v10.n128_f32[0] = *(a2 + 60);
    v11.n128_f32[0] = *(a2 + 61);
    (*(*a2 + 136))(a2, 5, v10, v11, v12, v13);
    return 0;
  }

  else if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      v8.n128_u32[0] = 1.0;
      v9.n128_u32[0] = 1.0;
    }

    else
    {
      v8.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v9.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v6.n128_f32[0] = *(a2 + 60);
    v7.n128_f32[0] = *(a2 + 61);
    (*(*a2 + 136))(a2, 4, v6, v7, v8, v9);
    return 0;
  }

  else if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    v4 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (!v4)
    {
      (*(*a2 + 168))(a2);
      return 0;
    }
  }

  return result;
}

uint64_t HgcApply3DLUTTetrahedral_basekernel::Bind(HgcApply3DLUTTetrahedral_basekernel *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcApply3DLUTTetrahedral_basekernel::RenderTile(HgcApply3DLUTTetrahedral_basekernel *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = a2[1].i32[0] - v2.i32[0];
    if (v4 >= 1)
    {
      v5 = 0;
      *v6.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
      v6.i64[1] = 0x3F80000000000000;
      v7 = a2[10];
      v8 = a2[2];
      v9 = 16 * a2[11].i32[0];
      v10 = 16 * a2[3].i32[0];
      v11 = 16 * v4;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      do
      {
        v13 = 0;
        do
        {
          v14 = *(*&v7 + v13);
          v15 = *(this + 51);
          v16 = *(v15 + 1);
          v17 = vaddq_f32(vdupq_lane_s32(*v15, 1), vmulq_n_f32(v14, COERCE_FLOAT(*v15)));
          v18 = *(v15 + 3);
          v19 = vmulq_f32(v17, v17);
          v20 = vaddq_f32(vaddq_f32(vdupq_lane_s32(*v18.f32, 0), vmulq_lane_f32(v17, *v18.f32, 1)), vmulq_laneq_f32(v19, v18, 2));
          v21 = vmulq_laneq_f32(vmulq_f32(v17, v19), v18, 3);
          v22 = *(v15 + 4);
          v23 = *(v15 + 5);
          v24 = vsubq_f32(vdupq_lane_s32(*v16.f32, 1), v23);
          v25 = vminq_f32(vmaxq_f32(vaddq_f32(v20, v21), v22), v24);
          v26 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
          v27 = vsubq_f32(v26, vandq_s8(v23, vcgtq_f32(v26, v25)));
          v28 = vsubq_f32(vminq_f32(vaddq_f32(v23, v27), v24), v27);
          v29 = vmulq_f32(v16, v27);
          v30 = vmulq_f32(v16, v28);
          v31 = *(v15 + 6);
          v32 = *(v15 + 7);
          v33 = vaddq_f32(v32, vbslq_s8(v31, vaddq_f32(v29, vrev64q_s32(v29)), vextq_s8(v27, v27, 4uLL)));
          v34 = a2[12];
          v35 = &a2[13];
          v36 = vaddq_f32(vsubq_f32(v33, v6), v12);
          v37 = vcvtq_s32_f32(v36);
          v38 = vbslq_s8(v31, vaddq_f32(v30, v33), v33);
          v39 = vaddq_f32(vsubq_f32(v38, v6), v12);
          v40 = vcvtq_s32_f32(v39);
          *v39.f32 = vadd_s32(*v40.i8, *&vcgtq_f32(vcvtq_f32_s32(v40), v39));
          *v36.f32 = vadd_s32(*v37.i8, *&vcgtq_f32(vcvtq_f32_s32(v37), v36));
          *v37.i8 = vld1_dup_f32(v35);
          *v36.f32 = vmla_s32(vzip1_s32(*v36.f32, *v39.f32), vzip2_s32(*v36.f32, *v39.f32), *v37.i8);
          v41 = vrev64q_s32(v30);
          v42 = vbslq_s8(v31, vaddq_f32(v41, v38), v33);
          LODWORD(v35) = v36.i32[1];
          v43 = vaddq_f32(vsubq_f32(v42, v6), v12);
          v44 = vcvtq_s32_f32(v43);
          v45 = v36.i32[0];
          v46 = vsubq_f32(v42, v30);
          v47 = vbslq_s8(v31, v46, v33);
          v48 = vaddq_f32(vsubq_f32(v47, v6), v12);
          v49 = *(*&v34 + 16 * v45);
          v50 = vcvtq_s32_f32(v48);
          v51 = vcgtq_f32(vcvtq_f32_s32(v50), v48).u64[0];
          *v44.i8 = vadd_s32(*v44.i8, *&vcgtq_f32(vcvtq_f32_s32(v44), v43));
          v52 = *(*&v34 + 16 * v35);
          *v50.i8 = vadd_s32(*v50.i8, v51);
          v53 = vzip2_s32(*v44.i8, *v50.i8);
          v54 = vaddq_f32(vextq_s8(v30, v30, 4uLL), v47);
          v55 = vbslq_s8(v31, v46, v54);
          *v44.i8 = vzip1_s32(*v44.i8, *v50.i8);
          v56 = vaddq_f32(vsubq_f32(v55, v6), v12);
          v57 = vcvtq_s32_f32(v56);
          *v44.i8 = vmla_s32(*v44.i8, v53, *v37.i8);
          v58 = vbslq_s8(v31, vsubq_f32(v55, v41), v54);
          v59 = vaddq_f32(vsubq_f32(v58, v6), v12);
          v60 = vcvtq_s32_f32(v59);
          *v56.f32 = vadd_s32(*v57.i8, *&vcgtq_f32(vcvtq_f32_s32(v57), v56));
          v61 = vbslq_s8(v31, vaddq_f32(v30, v58), v54);
          LODWORD(v35) = v44.i32[1];
          v62 = vaddq_f32(v32, v27);
          v63 = vaddq_f32(vsubq_f32(vbslq_s8(v31, v62, v32), v6), v12);
          v64 = vcvtq_s32_f32(v63);
          v65 = v44.i32[0];
          v44.i64[0] = vcgtq_f32(vcvtq_f32_s32(v64), v63).u64[0];
          v66 = vaddq_f32(vsubq_f32(vbslq_s8(v31, vrev64q_s32(v62), v32), v6), v12);
          v67 = vcvtq_s32_f32(v66);
          v68 = vcgtq_f32(vcvtq_f32_s32(v67), v66).u64[0];
          v69 = *(*&v34 + 16 * v65);
          v70 = vaddq_f32(vsubq_f32(v61, v6), v12);
          *v58.f32 = vadd_s32(*v64.i8, *v44.i8);
          v71 = vcvtq_s32_f32(v70);
          v72 = a2[15].u32[0];
          *v67.i8 = vadd_s32(*v67.i8, v68);
          *v59.f32 = vadd_s32(*v60.i8, *&vcgtq_f32(vcvtq_f32_s32(v60), v59));
          *v60.i8 = vzip2_s32(*v58.f32, *v67.i8);
          *v67.i8 = vzip1_s32(*v58.f32, *v67.i8);
          v73 = *(*&v34 + 16 * v35);
          *v67.i8 = vmla_s32(*v67.i8, *v60.i8, vdup_n_s32(v72));
          v74 = vaddq_f32(vsubq_f32(vbslq_s8(v31, vextq_s8(v62, v62, 8uLL), v32), v6), v12);
          v75 = vcvtq_s32_f32(v74);
          v74.i64[0] = vaddq_s32(v75, vcgtq_f32(vcvtq_f32_s32(v75), v74)).u64[0];
          v76 = v74.i32[0] + v74.i32[1] * v72;
          *v56.f32 = vmla_s32(vzip1_s32(*v56.f32, *v59.f32), vzip2_s32(*v56.f32, *v59.f32), *v37.i8);
          v77 = a2[14];
          v78 = *(*&v77 + 16 * v67.i32[0]);
          v79 = vaddq_f32(v41, v61);
          v80 = *(*&v77 + 16 * v67.i32[1]);
          v81 = vaddq_f32(vsubq_f32(vbslq_s8(v31, v79, v54), v6), v12);
          v82 = vcvtq_s32_f32(v81);
          v83 = *(*&v34 + 16 * v56.i32[0]);
          *v71.i8 = vadd_s32(*v71.i8, *&vcgtq_f32(vcvtq_f32_s32(v71), v70));
          v59.i64[0] = vbslq_s8(v31, v78, vrev64q_s32(v80)).u64[0];
          v31.i64[0] = vbslq_s8(v31, vrev64q_s32(v78), v80).u64[0];
          v59.i64[1] = *(*&v77 + 16 * v76);
          *v81.f32 = vadd_s32(*v82.i8, *&vcgtq_f32(vcvtq_f32_s32(v82), v81));
          v84 = vextq_s8(v6, *(*&v77 + 16 * v76), 0xCuLL);
          v84.i64[0] = v31.i64[0];
          v85 = *(*&v34 + 16 * v56.i32[1]);
          v86 = vbslq_s8(vcgtq_f32(v22, vsubq_f32(v17, v23)), vmulq_f32(v84, vsubq_f32(vmaxq_f32(v17, v22), v59)), v22);
          v87 = *(v15 + 8);
          v88 = *(v15 + 9);
          *v78.f32 = vqtbl1_s8(v86, *v87.f32);
          *&v78.u32[2] = vqtbl1_s8(v86, *&vextq_s8(v87, v87, 8uLL));
          *v87.f32 = vqtbl1_s8(v86, *v88.f32);
          *v81.f32 = vmla_s32(vzip1_s32(*v71.i8, *v81.f32), vzip2_s32(*v71.i8, *v81.f32), *v37.i8);
          *&v87.u32[2] = vqtbl1_s8(v86, *&vextq_s8(v88, v88, 8uLL));
          v89 = vandq_s8(v23, vcgtq_f32(v87, v78));
          LODWORD(v35) = v81.i32[1];
          v90 = *(v15 + 10);
          v91 = *(v15 + 11);
          *v88.f32 = vqtbl1_s8(v86, *v90.i8);
          *&v88.u32[2] = vqtbl1_s8(v86, *&vextq_s8(v90, v90, 8uLL));
          v92 = *(*&v34 + 16 * v81.i32[0]);
          v31.i64[0] = vandq_s8(v23, vcgtq_f32(vrev64q_s32(v86), v86)).u64[0];
          *v81.f32 = vqtbl1_s8(v86, *v91.i8);
          v93 = *(*&v34 + 16 * v35);
          *&v81.u32[2] = vqtbl1_s8(v86, *&vextq_s8(v91, v91, 8uLL));
          v94 = vandq_s8(v23, vcgeq_f32(v81, v88));
          v95 = vmulq_lane_f32(vsubq_f32(v73, v49), *v86.f32, 1);
          v96 = vmulq_laneq_f32(vsubq_f32(v83, v73), v86, 2);
          v97 = vmulq_n_f32(vsubq_f32(v93, v83), v86.f32[0]);
          v98 = vmulq_n_f32(vsubq_f32(v92, v85), v86.f32[0]);
          v99 = vmulq_laneq_f32(vsubq_f32(v85, v49), v86, 2);
          v100 = vmulq_lane_f32(vsubq_f32(v93, v92), *v86.f32, 1);
          v101 = vmulq_lane_f32(vsubq_f32(v83, v85), *v86.f32, 1);
          v102 = vaddq_f32(v96, vaddq_f32(v97, v95));
          v103 = vmulq_n_f32(vsubq_f32(v52, v49), v86.f32[0]);
          v104 = vaddq_f32(v103, vmulq_lane_f32(vsubq_f32(v69, v52), *v86.f32, 1));
          v105 = vmulq_laneq_f32(vsubq_f32(v93, v69), v86, 2);
          v106 = vaddq_f32(vmulq_n_f32(vsubq_f32(v69, v73), v86.f32[0]), v95);
          v107 = vdupq_laneq_s32(v94, 2);
          *(*&v8 + v13) = vbslq_s8(vcgtq_f32(v22, *(v15 + 2)), v14, vaddq_f32(vdupq_laneq_s32(*v15, 3), vmulq_laneq_f32(vaddq_f32(v49, vbslq_s8(vcgtq_f32(vminq_f32(vdupq_laneq_s32(v94, 3), v107), v22), vaddq_f32(vmulq_laneq_f32(vsubq_f32(v92, v52), v86, 2), vaddq_f32(v103, v100)), vbslq_s8(vcgtq_f32(vminq_f32(v107, vdupq_lane_s32(*v31.i8, 0)), v22), vaddq_f32(v105, v106), vbslq_s8(vcgtq_f32(vminq_f32(vdupq_laneq_s32(v89, 3), vdupq_lane_s32(*v94.i8, 1)), v22), vaddq_f32(v105, v104), vbslq_s8(vcgtq_f32(vminq_f32(vdupq_lane_s32(*v94.i8, 0), vdupq_laneq_s32(v89, 2)), v22), vaddq_f32(v99, vaddq_f32(v97, v101)), vbslq_s8(vcgtq_f32(vminq_f32(vdupq_lane_s32(*v89.i8, 0), vdupq_lane_s32(*v89.i8, 1)), v22), vaddq_f32(v99, vaddq_f32(v98, v100)), v102)))))), *v15, 2)));
          v13 += 16;
        }

        while (v11 != v13);
        ++v5;
        *&v7 += v9;
        *&v8 += v10;
      }

      while (v5 != v3);
    }
  }

  return 0;
}

uint64_t HgcApply3DLUTTetrahedral_basekernel::GetDOD(HgcApply3DLUTTetrahedral_basekernel *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 2 || a3 == 1)
  {
    return 0x8000000080000000;
  }

  if (a3)
  {
    return 0;
  }

  return *&a4.var0;
}

uint64_t HgcApply3DLUTTetrahedral_basekernel::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 == 2 || a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, a3);
    return HGRenderer::GetDOD(a2, Input);
  }

  else
  {
    if (a3)
    {
      *&a4.var0 = 0;
    }

    return *&a4.var0;
  }
}

void HgcApply3DLUTTetrahedral_basekernel::HgcApply3DLUTTetrahedral_basekernel(HgcApply3DLUTTetrahedral_basekernel *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287238720;
  operator new();
}

void HgcApply3DLUTTetrahedral_basekernel::~HgcApply3DLUTTetrahedral_basekernel(HgcApply3DLUTTetrahedral_basekernel *this)
{
  *this = &unk_287238720;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C408070C27FLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287238720;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C408070C27FLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcApply3DLUTTetrahedral_basekernel::~HgcApply3DLUTTetrahedral_basekernel(HGNode *this)
{
  *this = &unk_287238720;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C408070C27FLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcApply3DLUTTetrahedral_basekernel::SetParameter(HgcApply3DLUTTetrahedral_basekernel *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcApply3DLUTTetrahedral_basekernel::GetParameter(HgcApply3DLUTTetrahedral_basekernel *this, unsigned int a2, float *a3)
{
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcApply3DLUTTrilinear_basekernel::GetProgram(HgcApply3DLUTTrilinear_basekernel *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_1172;
    }

    else
    {
      return "//Metal1.0     \n"
             "//LEN=0000000ea9\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]], \n"
             "    texture2d< float > hg_Texture0 [[ texture(0) ]], \n"
             "    sampler hg_Sampler0 [[ sampler(0) ]], \n"
             "    texture2d< float > hg_Texture1 [[ texture(1) ]], \n"
             "    sampler hg_Sampler1 [[ sampler(1) ]], \n"
             "    texture2d< float > hg_Texture2 [[ texture(2) ]], \n"
             "    sampler hg_Sampler2 [[ sampler(2) ]])\n"
             "{\n"
             "    const float4 c0 = float4(0.000000000, 1.000000000, 0.5000000000, 0.000000000);\n"
             "    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14;\n"
             "    FragmentOut output;\n"
             "\n"
             "    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n"
             "    r1.xyz = r0.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n"
             "    r2.xyz = r1.xyz*r1.xyz;\n"
             "    r3.xyz = r2.xyz*r1.xyz;\n"
             "    r4.xyz = r1.xyz*hg_Params[3].yyy + hg_Params[3].xxx;\n"
             "    r4.xyz = r2.xyz*hg_Params[3].zzz + r4.xyz;\n"
             "    r4.xyz = r3.xyz*hg_Params[3].www + r4.xyz;\n"
             "    r4.xyz = fmax(r4.xyz, c0.xxx);\n"
             "    r2.xyz = hg_Params[1].yyy - c0.yyy;\n"
             "    r4.xyz = fmin(r4.xyz, r2.xyz);\n"
             "    r4.xyz = floor(r4.xyz);\n"
             "    r3.xyz = r4.xyz + c0.yyy;\n"
             "    r3.xyz = fmin(r3.xyz, r2.xyz);\n"
             "    r3.xyz = r3.xyz - r4.xyz;\n"
             "    r3.xyz = r3.xyz*hg_Params[1].xyz;\n"
             "    r2.x = dot(r4.xy, hg_Params[1].xy);\n"
             "    r2.y = r4.z;\n"
             "    r2.xy = r2.xy + c0.zz;\n"
             "    r5.xy = r2.xy + hg_Params[4].xy;\n"
             "    r5.xy = r5.xy*hg_Params[4].zw;\n"
             "    r5 = hg_Texture1.sample(hg_Sampler1, r5.xy);\n"
             "    r2.x = r2.x + r3.x;\n"
             "    r6.xy = r2.xy + hg_Params[4].xy;\n"
             "    r6.xy = r6.xy*hg_Params[4].zw;\n"
             "    r6 = hg_Texture1.sample(hg_Sampler1, r6.xy);\n"
             "    r2.x = r2.x + r3.y;\n"
             "    r7.xy = r2.xy + hg_Params[4].xy;\n"
             "    r7.xy = r7.xy*hg_Params[4].zw;\n"
             "    r7 = hg_Texture1.sample(hg_Sampler1, r7.xy);\n"
             "    r2.x = r2.x - r3.x;\n"
             "    r8.xy = r2.xy + hg_Params[4].xy;\n"
             "    r8.xy = r8.xy*hg_Params[4].zw;\n"
             "    r8 = hg_Texture1.sample(hg_Sampler1, r8.xy);\n"
             "    r2.y = r2.y + r3.z;\n"
             "    r9.xy = r2.xy + hg_Params[4].xy;\n"
             "    r9.xy = r9.xy*hg_Params[4].zw;\n"
             "    r9 = hg_Texture1.sample(hg_Sampler1, r9.xy);\n"
             "    r2.x = r2.x - r3.y;\n"
             "    r10.xy = r2.xy + hg_Params[4].xy;\n"
             "    r10.xy = r10.xy*hg_Params[4].zw;\n"
             "    r10 = hg_Texture1.sample(hg_Sampler1, r10.xy);\n"
             "    r2.x = r2.x + r3.x;\n"
             "    r11.xy = r2.xy + hg_Params[4].xy;\n"
             "    r11.xy = r11.xy*hg_Params[4].zw;\n"
             "    r11 = hg_Texture1.sample(hg_Sampler1, r11.xy);\n"
             "    r2.x = r2.x + r3.y;\n"
             "    r2.xy = r2.xy + hg_Params[4].xy;\n"
             "    r2.xy = r2.xy*hg_Params[4].zw;\n"
             "    r2 = hg_Texture1.sample(hg_Sampler1, r2.xy);\n"
             "    r4.xyz = r4.xyz + c0.zzz;\n"
             "    r3.y = c0.z;\n"
             "    r3.x = r4.x;\n"
             "    r12.xy = r3.xy + hg_Params[5].xy;\n"
             "    r12.xy = r12.xy*hg_Params[5].zw;\n"
             "    r12.xy = hg_Texture2.sample(hg_Sampler2, r12.xy).xy;\n"
             "    r13.x = r12.x;\n"
             "    r12.x = r12.y;\n"
             "    r3.x = r4.y;\n"
             "    r14.xy = r3.xy + hg_Params[5].xy;\n"
             "    r14.xy = r14.xy*hg_Params[5].zw;\n"
             "    r14.xy = hg_Texture2.sample(hg_Sampler2, r14.xy).xy;\n"
             "    r13.y = r14.x;\n"
             "    r12.y = r14.y;\n"
             "    r3.x = r4.z;\n"
             "    r3.xy = r3.xy + hg_Params[5].xy;\n"
             "    r3.xy = r3.xy*hg_Params[5].zw;\n"
             "    r3.xy = hg_Texture2.sample(hg_Sampler2, r3.xy).xy;\n"
             "    r13.z = r3.x;\n"
             "    r12.z = r3.y;\n"
             "    r14.xyz = fmax(r1.xyz, c0.xxx);\n"
             "    r14.xyz = r14.xyz - r13.xyz;\n"
             "    r14.xyz = r14.xyz*r12.xyz;\n"
             "    r1.xyz = r1.xyz - c0.yyy;\n"
             "    r14.xyz = select(c0.xxx, r14.xyz, r1.xyz < 0.00000f);\n"
             "    r5 = mix(r5, r6, r14.xxxx);\n"
             "    r8 = mix(r8, r7, r14.xxxx);\n"
             "    r10 = mix(r10, r11, r14.xxxx);\n"
             "    r9 = mix(r9, r2, r14.xxxx);\n"
             "    r5 = mix(r5, r8, r14.yyyy);\n"
             "    r10 = mix(r10, r9, r14.yyyy);\n"
             "    r14 = mix(r5, r10, r14.zzzz);\n"
             "    r14 = r14*hg_Params[0].zzzz + hg_Params[0].wwww;\n"
             "    output.color0 = select(r14, r0, hg_Params[2] < 0.00000f);\n"
             "    return output;\n"
             "}\n"
             "//MD5=d69a83c9:92974476:ebb55401:991c55ef\n"
             "//SIG=00000000:00000001:00000001:00000000:0001:0006:000f:0000:0000:0000:0002:0000:0001:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_439;
  }
}

void HgcApply3DLUTTrilinear_basekernel::InitProgramDescriptor(HgcApply3DLUTTrilinear_basekernel *this, HGProgramDescriptor *a2)
{
  HGProgramDescriptor::SetVisibleShaderWithSource( a2,  "HgcApply3DLUTTrilinear_basekernel_hgc_visible",  "//Metal1.0     \n //LEN=0000000d50\n [[ visible ]] FragmentOut HgcApply3DLUTTrilinear_basekernel_hgc_visible(const constant float4* hg_Params,\n float4 color0, \n texture2d< float > hg_Texture1, \n sampler hg_Sampler1, \n texture2d< float > hg_Texture2, \n sampler hg_Sampler2)\n {\n const float4 c0 = float4(0.000000000, 1.000000000, 0.5000000000, 0.000000000);\n"
    "    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14;\n"
    "    FragmentOut output;\n"
    "\n"
    "    r0 = color0;\n"
    "    r1.xyz = r0.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n"
    "    r2.xyz = r1.xyz*r1.xyz;\n"
    "    r3.xyz = r2.xyz*r1.xyz;\n"
    "    r4.xyz = r1.xyz*hg_Params[3].yyy + hg_Params[3].xxx;\n"
    "    r4.xyz = r2.xyz*hg_Params[3].zzz + r4.xyz;\n"
    "    r4.xyz = r3.xyz*hg_Params[3].www + r4.xyz;\n"
    "    r4.xyz = fmax(r4.xyz, c0.xxx);\n"
    "    r2.xyz = hg_Params[1].yyy - c0.yyy;\n"
    "    r4.xyz = fmin(r4.xyz, r2.xyz);\n"
    "    r4.xyz = floor(r4.xyz);\n"
    "    r3.xyz = r4.xyz + c0.yyy;\n"
    "    r3.xyz = fmin(r3.xyz, r2.xyz);\n"
    "    r3.xyz = r3.xyz - r4.xyz;\n"
    "    r3.xyz = r3.xyz*hg_Params[1].xyz;\n"
    "    r2.x = dot(r4.xy, hg_Params[1].xy);\n"
    "    r2.y = r4.z;\n"
    "    r2.xy = r2.xy + c0.zz;\n"
    "    r5.xy = r2.xy + hg_Params[4].xy;\n"
    "    r5.xy = r5.xy*hg_Params[4].zw;\n"
    "    r5 = hg_Texture1.sample(hg_Sampler1, r5.xy);\n"
    "    r2.x = r2.x + r3.x;\n"
    "    r6.xy = r2.xy + hg_Params[4].xy;\n"
    "    r6.xy = r6.xy*hg_Params[4].zw;\n"
    "    r6 = hg_Texture1.sample(hg_Sampler1, r6.xy);\n"
    "    r2.x = r2.x + r3.y;\n"
    "    r7.xy = r2.xy + hg_Params[4].xy;\n"
    "    r7.xy = r7.xy*hg_Params[4].zw;\n"
    "    r7 = hg_Texture1.sample(hg_Sampler1, r7.xy);\n"
    "    r2.x = r2.x - r3.x;\n"
    "    r8.xy = r2.xy + hg_Params[4].xy;\n"
    "    r8.xy = r8.xy*hg_Params[4].zw;\n"
    "    r8 = hg_Texture1.sample(hg_Sampler1, r8.xy);\n"
    "    r2.y = r2.y + r3.z;\n"
    "    r9.xy = r2.xy + hg_Params[4].xy;\n"
    "    r9.xy = r9.xy*hg_Params[4].zw;\n"
    "    r9 = hg_Texture1.sample(hg_Sampler1, r9.xy);\n"
    "    r2.x = r2.x - r3.y;\n"
    "    r10.xy = r2.xy + hg_Params[4].xy;\n"
    "    r10.xy = r10.xy*hg_Params[4].zw;\n"
    "    r10 = hg_Texture1.sample(hg_Sampler1, r10.xy);\n"
    "    r2.x = r2.x + r3.x;\n"
    "    r11.xy = r2.xy + hg_Params[4].xy;\n"
    "    r11.xy = r11.xy*hg_Params[4].zw;\n"
    "    r11 = hg_Texture1.sample(hg_Sampler1, r11.xy);\n"
    "    r2.x = r2.x + r3.y;\n"
    "    r2.xy = r2.xy + hg_Params[4].xy;\n"
    "    r2.xy = r2.xy*hg_Params[4].zw;\n"
    "    r2 = hg_Texture1.sample(hg_Sampler1, r2.xy);\n"
    "    r4.xyz = r4.xyz + c0.zzz;\n"
    "    r3.y = c0.z;\n"
    "    r3.x = r4.x;\n"
    "    r12.xy = r3.xy + hg_Params[5].xy;\n"
    "    r12.xy = r12.xy*hg_Params[5].zw;\n"
    "    r12.xy = hg_Texture2.sample(hg_Sampler2, r12.xy).xy;\n"
    "    r13.x = r12.x;\n"
    "    r12.x = r12.y;\n"
    "    r3.x = r4.y;\n"
    "    r14.xy = r3.xy + hg_Params[5].xy;\n"
    "    r14.xy = r14.xy*hg_Params[5].zw;\n"
    "    r14.xy = hg_Texture2.sample(hg_Sampler2, r14.xy).xy;\n"
    "    r13.y = r14.x;\n"
    "    r12.y = r14.y;\n"
    "    r3.x = r4.z;\n"
    "    r3.xy = r3.xy + hg_Params[5].xy;\n"
    "    r3.xy = r3.xy*hg_Params[5].zw;\n"
    "    r3.xy = hg_Texture2.sample(hg_Sampler2, r3.xy).xy;\n"
    "    r13.z = r3.x;\n"
    "    r12.z = r3.y;\n"
    "    r14.xyz = fmax(r1.xyz, c0.xxx);\n"
    "    r14.xyz = r14.xyz - r13.xyz;\n"
    "    r14.xyz = r14.xyz*r12.xyz;\n"
    "    r1.xyz = r1.xyz - c0.yyy;\n"
    "    r14.xyz = select(c0.xxx, r14.xyz, r1.xyz < 0.00000f);\n"
    "    r5 = mix(r5, r6, r14.xxxx);\n"
    "    r8 = mix(r8, r7, r14.xxxx);\n"
    "    r10 = mix(r10, r11, r14.xxxx);\n"
    "    r9 = mix(r9, r2, r14.xxxx);\n"
    "    r5 = mix(r5, r8, r14.yyyy);\n"
    "    r10 = mix(r10, r9, r14.yyyy);\n"
    "    r14 = mix(r5, r10, r14.zzzz);\n"
    "    r14 = r14*hg_Params[0].zzzz + hg_Params[0].wwww;\n"
    "    output.color0 = select(r14, r0, hg_Params[2] < 0.00000f);\n"
    "    return output;\n"
    "}\n");
  HGProgramDescriptor::SetFragmentFunctionName(a2, "HgcApply3DLUTTrilinear_basekernel");
}

void sub_25FE15B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void sub_25FE15BA0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE15B98);
}

uint64_t HgcApply3DLUTTrilinear_basekernel::BindTexture(HgcApply3DLUTTrilinear_basekernel *this, HGHandler *a2, int a3)
{
  if (a3 == 2)
  {
    (*(*a2 + 72))(a2, 2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      v12.n128_u32[0] = 1.0;
      v13.n128_u32[0] = 1.0;
    }

    else
    {
      v12.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v13.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v10.n128_f32[0] = *(a2 + 60);
    v11.n128_f32[0] = *(a2 + 61);
    (*(*a2 + 136))(a2, 5, v10, v11, v12, v13);
    return 0;
  }

  else if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      v8.n128_u32[0] = 1.0;
      v9.n128_u32[0] = 1.0;
    }

    else
    {
      v8.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v9.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v6.n128_f32[0] = *(a2 + 60);
    v7.n128_f32[0] = *(a2 + 61);
    (*(*a2 + 136))(a2, 4, v6, v7, v8, v9);
    return 0;
  }

  else if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    v4 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (!v4)
    {
      (*(*a2 + 168))(a2);
      return 0;
    }
  }

  return result;
}

uint64_t HgcApply3DLUTTrilinear_basekernel::Bind(HgcApply3DLUTTrilinear_basekernel *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcApply3DLUTTrilinear_basekernel::RenderTile(HgcApply3DLUTTrilinear_basekernel *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = a2[1].i32[0] - v2.i32[0];
    if (v4 >= 1)
    {
      v5 = 0;
      *v6.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
      v6.i64[1] = 0x3F80000000000000;
      v7 = a2[10];
      v8 = a2[2];
      v9 = 16 * a2[11].i32[0];
      v10 = 16 * a2[3].i32[0];
      v11 = 16 * v4;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      do
      {
        v13 = 0;
        do
        {
          v14 = *(this + 51);
          v15 = *(*&v7 + v13);
          v16 = *v14;
          v17 = *(v14 + 1);
          v18 = vaddq_f32(vdupq_lane_s32(*v14, 1), vmulq_n_f32(v15, COERCE_FLOAT(*v14)));
          v19 = vmulq_f32(v18, v18);
          v20 = *(v14 + 2);
          v21 = vaddq_f32(vaddq_f32(vaddq_f32(vdupq_lane_s32(v14[3], 0), vmulq_lane_f32(v18, v14[3], 1)), vmulq_laneq_f32(v19, *(v14 + 3), 2)), vmulq_laneq_f32(vmulq_f32(v18, v19), *(v14 + 3), 3));
          v22 = *(v14 + 4);
          v23 = *(v14 + 5);
          v24 = vsubq_f32(vdupq_lane_s32(*v17.f32, 1), v23);
          v25 = vminq_f32(vmaxq_f32(v21, v22), v24);
          v26 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
          v27 = vsubq_f32(v26, vandq_s8(v23, vcgtq_f32(v26, v25)));
          v28 = vminq_f32(vaddq_f32(v23, v27), v24);
          v29 = vmulq_f32(v17, v27);
          v30 = vaddq_f32(v29, vrev64q_s32(v29));
          v31 = vsubq_f32(v28, v27);
          v32 = *(v14 + 6);
          v33 = *(v14 + 7);
          v34 = vaddq_f32(v33, vbslq_s8(v32, v30, vextq_s8(v27, v27, 4uLL)));
          v35 = vmulq_f32(v17, v31);
          v36 = a2[12];
          v37 = &a2[13];
          v38 = vaddq_f32(vsubq_f32(v34, v6), v12);
          v39 = vcvtq_s32_f32(v38);
          v40 = vbslq_s8(v32, vaddq_f32(v35, v34), v34);
          v41 = vaddq_f32(vsubq_f32(v40, v6), v12);
          v42 = vcvtq_s32_f32(v41);
          *v38.f32 = vadd_s32(*v39.i8, *&vcgtq_f32(vcvtq_f32_s32(v39), v38));
          *v39.i8 = vld1_dup_f32(v37);
          *v41.f32 = vadd_s32(*v42.i8, *&vcgtq_f32(vcvtq_f32_s32(v42), v41));
          *v38.f32 = vmla_s32(vzip1_s32(*v38.f32, *v41.f32), vzip2_s32(*v38.f32, *v41.f32), *v39.i8);
          v43 = vrev64q_s32(v35);
          v44 = vbslq_s8(v32, vaddq_f32(v43, v40), v34);
          v45 = vaddq_f32(vsubq_f32(v44, v6), v12);
          v46 = vcvtq_s32_f32(v45);
          v47 = vsubq_f32(v44, v35);
          v48 = vbslq_s8(v32, v47, v34);
          v49 = vaddq_f32(vsubq_f32(v48, v6), v12);
          v50 = vcvtq_s32_f32(v49);
          *v45.f32 = vadd_s32(*v46.i8, *&vcgtq_f32(vcvtq_f32_s32(v46), v45));
          *v46.i8 = vadd_s32(*v50.i8, *&vcgtq_f32(vcvtq_f32_s32(v50), v49));
          *v45.f32 = vmla_s32(vzip1_s32(*v45.f32, *v46.i8), vzip2_s32(*v45.f32, *v46.i8), *v39.i8);
          v51 = vaddq_f32(vextq_s8(v35, v35, 4uLL), v48);
          v52 = vbslq_s8(v32, v47, v51);
          LODWORD(v37) = v45.i32[1];
          v53 = vaddq_f32(vsubq_f32(v52, v6), v12);
          v54 = vcvtq_s32_f32(v53);
          v55 = v45.i32[0];
          v56 = vbslq_s8(v32, vsubq_f32(v52, v43), v51);
          v57 = vaddq_f32(vsubq_f32(v56, v6), v12);
          v58 = vcvtq_s32_f32(v57);
          v59 = *(*&v36 + 16 * v55);
          *v53.f32 = vadd_s32(*v54.i8, *&vcgtq_f32(vcvtq_f32_s32(v54), v53));
          *v54.i8 = vadd_s32(*v58.i8, *&vcgtq_f32(vcvtq_f32_s32(v58), v57));
          v60 = *(*&v36 + 16 * v37);
          *v58.i8 = vzip2_s32(*v53.f32, *v54.i8);
          v61 = vbslq_s8(v32, vaddq_f32(v35, v56), v51);
          v62 = vaddq_f32(vsubq_f32(v61, v6), v12);
          *v53.f32 = vzip1_s32(*v53.f32, *v54.i8);
          v63 = vcvtq_s32_f32(v62);
          *v53.f32 = vmla_s32(*v53.f32, *v58.i8, *v39.i8);
          v64 = vaddq_f32(vsubq_f32(vbslq_s8(v32, vaddq_f32(v43, v61), v51), v6), v12);
          v65 = vcvtq_s32_f32(v64);
          v66 = vaddq_f32(v33, v27);
          *v63.i8 = vadd_s32(*v63.i8, *&vcgtq_f32(vcvtq_f32_s32(v63), v62));
          v67 = vaddq_f32(vsubq_f32(vbslq_s8(v32, v66, v33), v6), v12);
          v68 = vcvtq_s32_f32(v67);
          LODWORD(v37) = v53.i32[1];
          v69 = vaddq_f32(vsubq_f32(vbslq_s8(v32, vrev64q_s32(v66), v33), v6), v12);
          v70 = v53.i32[0];
          v71 = vcvtq_s32_f32(v69);
          *v67.f32 = vadd_s32(*v68.i8, *&vcgtq_f32(vcvtq_f32_s32(v68), v67));
          v72 = *(*&v36 + 16 * v70);
          v73 = a2[15].u32[0];
          *v71.i8 = vadd_s32(*v71.i8, *&vcgtq_f32(vcvtq_f32_s32(v71), v69));
          *v67.f32 = vmla_s32(vzip1_s32(*v67.f32, *v71.i8), vzip2_s32(*v67.f32, *v71.i8), vdup_n_s32(v73));
          v74 = v67.i32[1];
          *v64.f32 = vadd_s32(*v65.i8, *&vcgtq_f32(vcvtq_f32_s32(v65), v64));
          v75 = a2[14];
          v76 = *(*&v75 + 16 * v67.i32[0]);
          v77 = *(*&v36 + 16 * v37);
          *v71.i8 = vzip2_s32(*v63.i8, *v64.f32);
          v78 = *(*&v75 + 16 * v74);
          v79 = vbslq_s8(v32, vextq_s8(v66, v66, 8uLL), v33);
          *v66.i8 = vzip1_s32(*v63.i8, *v64.f32);
          v80 = vaddq_f32(vsubq_f32(v79, v6), v12);
          v81 = vcvtq_s32_f32(v80);
          *v66.i8 = vmla_s32(*v66.i8, *v71.i8, *v39.i8);
          v80.i64[0] = vaddq_s32(v81, vcgtq_f32(vcvtq_f32_s32(v81), v80)).u64[0];
          LODWORD(v37) = v80.i32[0] + v80.i32[1] * v73;
          v80.i64[0] = vbslq_s8(v32, v76, vrev64q_s32(v78)).u64[0];
          v80.i64[1] = *(*&v75 + 16 * v37);
          v82 = vextq_s8(v6, *(*&v75 + 16 * v37), 0xCuLL);
          v82.i64[0] = vbslq_s8(v32, vrev64q_s32(v76), v78).u64[0];
          v83 = vbslq_s8(vcgtq_f32(v22, vsubq_f32(v18, v23)), vmulq_f32(v82, vsubq_f32(vmaxq_f32(v18, v22), v80)), v22);
          v84 = vaddq_f32(*(*&v36 + 16 * v38.i32[0]), vmulq_n_f32(vsubq_f32(*(*&v36 + 16 * v38.i32[1]), *(*&v36 + 16 * v38.i32[0])), v83.f32[0]));
          v85 = vaddq_f32(v77, vmulq_n_f32(vsubq_f32(*(*&v36 + 16 * v66.i32[0]), v77), v83.f32[0]));
          v86 = vaddq_f32(v84, vmulq_lane_f32(vsubq_f32(vaddq_f32(v60, vmulq_n_f32(vsubq_f32(v59, v60), v83.f32[0])), v84), *v83.f32, 1));
          *(*&v8 + v13) = vbslq_s8(vcgtq_f32(v22, v20), v15, vaddq_f32(vdupq_laneq_s32(v16, 3), vmulq_laneq_f32(vaddq_f32(v86, vmulq_laneq_f32(vsubq_f32(vaddq_f32(v85, vmulq_lane_f32(vsubq_f32(vaddq_f32(v72, vmulq_n_f32(vsubq_f32(*(*&v36 + 16 * v66.i32[1]), v72), v83.f32[0])), v85), *v83.f32, 1)), v86), v83, 2)), v16, 2)));
          v13 += 16;
        }

        while (v11 != v13);
        ++v5;
        *&v7 += v9;
        *&v8 += v10;
      }

      while (v5 != v3);
    }
  }

  return 0;
}

uint64_t HgcApply3DLUTTrilinear_basekernel::GetDOD(HgcApply3DLUTTrilinear_basekernel *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 2 || a3 == 1)
  {
    return 0x8000000080000000;
  }

  if (a3)
  {
    return 0;
  }

  return *&a4.var0;
}

uint64_t HgcApply3DLUTTrilinear_basekernel::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 == 2 || a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, a3);
    return HGRenderer::GetDOD(a2, Input);
  }

  else
  {
    if (a3)
    {
      *&a4.var0 = 0;
    }

    return *&a4.var0;
  }
}

void HgcApply3DLUTTrilinear_basekernel::HgcApply3DLUTTrilinear_basekernel(HgcApply3DLUTTrilinear_basekernel *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287238988;
  operator new();
}

void HgcApply3DLUTTrilinear_basekernel::~HgcApply3DLUTTrilinear_basekernel(HgcApply3DLUTTrilinear_basekernel *this)
{
  *this = &unk_287238988;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287238988;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcApply3DLUTTrilinear_basekernel::~HgcApply3DLUTTrilinear_basekernel(HGNode *this)
{
  *this = &unk_287238988;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AE2C30F4);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcApply3DLUTTrilinear_basekernel::SetParameter(HgcApply3DLUTTrilinear_basekernel *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcApply3DLUTTrilinear_basekernel::GetParameter(HgcApply3DLUTTrilinear_basekernel *this, unsigned int a2, float *a3)
{
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcApply3DLUTTrilinearUniform_basekernel::GetProgram(HgcApply3DLUTTrilinearUniform_basekernel *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000ba7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.5000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz*half3(hg_Params[0].xxx) + half3(hg_Params[0].yyy);\n    r2.xyz = half3(hg_Params[1].yyy) - c0.xxx;\n    r1.xyz = r1.xyz*r2.xyz;\n    r1.xyz = fmax(r1.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, r2.xyz);\n    r3.xyz = fract(r1.xyz);\n    r1.xyz = floor(r1.xyz);\n    r4.xyz = r1.xyz + c0.xxx;\n    r4.xyz = fmin(r4.xyz, r2.xyz);\n    r4.xyz = r4.xyz - r1.xyz;\n    r4.xyz = r4.xyz*half3(hg_Params[1].xyz);\n    r2.x = dot(r1.xy, half2(hg_Params[1].xy));\n    r2.y = r1.z;\n    r2.xy = r2.xy + c0.zz;\n    r1.xy = r2.xy + half2(hg_Params[3].xy);\n    r1.xy = r1.xy*half2(hg_Params[3].zw);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r1.xy));\n    r2.x = r2.x + r4.x;\n    r5.xy = r2.xy + half2(hg_Params[3].xy);\n    r5.xy = r5.xy*half2(hg_Params[3].zw);\n    r5 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r5.xy));\n    r2.x = r2.x + r4.y;\n    r6.xy = r2.xy + half2(hg_Params[3].xy);\n    r6.xy = r6.xy*half2(hg_Params[3].zw);\n    r6 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r6.xy));\n    r2.x = r2.x - r4.x;\n    r7.xy = r2.xy + half2(hg_Params[3].xy);\n    r7.xy = r7.xy*half2(hg_Params[3].zw);\n    r7 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r7.xy));\n    r2.y = r2.y + r4.z;\n    r8.xy = r2.xy + half2(hg_Params[3].xy);\n    r8.xy = r8.xy*half2(hg_Params[3].zw);\n    r8 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r8.xy));\n    r2.x = r2.x - r4.y;\n    r9.xy = r2.xy + half2(hg_Params[3].xy);\n    r9.xy = r9.xy*half2(hg_Params[3].zw);\n    r9 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r9.xy));\n    r2.x = r2.x + r4.x;\n    r10.xy = r2.xy + half2(hg_Params[3].xy);\n    r10.xy = r10.xy*half2(hg_Params[3].zw);\n    r10 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r10.xy));\n    r2.x = r2.x + r4.y;\n    r2.xy = r2.xy + half2(hg_Params[3].xy);\n    r2.xy = r2.xy*half2(hg_Params[3].zw);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r2.xy));\n    r1 = mix(r1, r5, r3.xxxx);\n    r7 = mix(r7, r6, r3.xxxx);\n    r9 = mix(r9, r10, r3.xxxx);\n    r8 = mix(r8, r2, r3.xxxx);\n    r1 = mix(r1, r7, r3.yyyy);\n    r9 = mix(r9, r8, r3.yyyy);\n    r3 = mix(r1, r9, r3.zzzz);\n    r3 = r3*half4(hg_Params[0].zzzz) + half4(hg_Params[0].wwww);\n    output.color0 = select(float4(r3), float4(r0), hg_Params[2] < 0.00000h);\n    return output;\n}\n//MD5=4a246928:7d77d0f6:04f061a8:55d417f5\n//SIG=00400000:00000001:00000001:00000003:0001:0004:000b:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000a73\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.5000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n    r2.xyz = hg_Params[1].yyy - c0.xxx;\n    r1.xyz = r1.xyz*r2.xyz;\n    r1.xyz = fmax(r1.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, r2.xyz);\n    r3.xyz = fract(r1.xyz);\n    r1.xyz = floor(r1.xyz);\n    r4.xyz = r1.xyz + c0.xxx;\n    r4.xyz = fmin(r4.xyz, r2.xyz);\n    r4.xyz = r4.xyz - r1.xyz;\n    r4.xyz = r4.xyz*hg_Params[1].xyz;\n    r2.x = dot(r1.xy, hg_Params[1].xy);\n    r2.y = r1.z;\n    r2.xy = r2.xy + c0.zz;\n    r1.xy = r2.xy + hg_Params[3].xy;\n    r1.xy = r1.xy*hg_Params[3].zw;\n    r1 = hg_Texture1.sample(hg_Sampler1, r1.xy);\n    r2.x = r2.x + r4.x;\n    r5.xy = r2.xy + hg_Params[3].xy;\n    r5.xy = r5.xy*hg_Params[3].zw;\n    r5 = hg_Texture1.sample(hg_Sampler1, r5.xy);\n    r2.x = r2.x + r4.y;\n    r6.xy = r2.xy + hg_Params[3].xy;\n    r6.xy = r6.xy*hg_Params[3].zw;\n    r6 = hg_Texture1.sample(hg_Sampler1, r6.xy);\n    r2.x = r2.x - r4.x;\n    r7.xy = r2.xy + hg_Params[3].xy;\n    r7.xy = r7.xy*hg_Params[3].zw;\n    r7 = hg_Texture1.sample(hg_Sampler1, r7.xy);\n    r2.y = r2.y + r4.z;\n    r8.xy = r2.xy + hg_Params[3].xy;\n    r8.xy = r8.xy*hg_Params[3].zw;\n    r8 = hg_Texture1.sample(hg_Sampler1, r8.xy);\n    r2.x = r2.x - r4.y;\n    r9.xy = r2.xy + hg_Params[3].xy;\n    r9.xy = r9.xy*hg_Params[3].zw;\n    r9 = hg_Texture1.sample(hg_Sampler1, r9.xy);\n    r2.x = r2.x + r4.x;\n    r10.xy = r2.xy + hg_Params[3].xy;\n    r10.xy = r10.xy*hg_Params[3].zw;\n    r10 = hg_Texture1.sample(hg_Sampler1, r10.xy);\n    r2.x = r2.x + r4.y;\n    r2.xy = r2.xy + hg_Params[3].xy;\n    r2.xy = r2.xy*hg_Params[3].zw;\n    r2 = hg_Texture1.sample(hg_Sampler1, r2.xy);\n    r1 = mix(r1, r5, r3.xxxx);\n    r7 = mix(r7, r6, r3.xxxx);\n    r9 = mix(r9, r10, r3.xxxx);\n    r8 = mix(r8, r2, r3.xxxx);\n    r1 = mix(r1, r7, r3.yyyy);\n    r9 = mix(r9, r8, r3.yyyy);\n    r3 = mix(r1, r9, r3.zzzz);\n    r3 = r3*hg_Params[0].zzzz + hg_Params[0].wwww;\n    output.color0 = select(r3, r0, hg_Params[2] < 0.00000f);\n    return output;\n}\n//MD5=f2a8ef5a:d246eef6:2592a446:679ba2ae\n//SIG=00000000:00000001:00000001:00000000:0001:0004:000b:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000b19\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.5000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz*hg_ProgramLocal0.xxx + hg_ProgramLocal0.yyy;\n    r2.xyz = hg_ProgramLocal1.yyy - c0.xxx;\n    r1.xyz = r1.xyz*r2.xyz;\n    r1.xyz = max(r1.xyz, c0.yyy);\n    r1.xyz = min(r1.xyz, r2.xyz);\n    r3.xyz = fract(r1.xyz);\n    r1.xyz = floor(r1.xyz);\n    r4.xyz = r1.xyz + c0.xxx;\n    r4.xyz = min(r4.xyz, r2.xyz);\n    r4.xyz = r4.xyz - r1.xyz;\n    r4.xyz = r4.xyz*hg_ProgramLocal1.xyz;\n    r2.x = dot(r1.xy, hg_ProgramLocal1.xy);\n    r2.y = r1.z;\n    r2.xy = r2.xy + c0.zz;\n    r1.xy = r2.xy + hg_ProgramLocal3.xy;\n    r1.xy = r1.xy*hg_ProgramLocal3.zw;\n    r1 = texture2D(hg_Texture1, r1.xy);\n    r2.x = r2.x + r4.x;\n    r5.xy = r2.xy + hg_ProgramLocal3.xy;\n    r5.xy = r5.xy*hg_ProgramLocal3.zw;\n    r5 = texture2D(hg_Texture1, r5.xy);\n    r2.x = r2.x + r4.y;\n    r6.xy = r2.xy + hg_ProgramLocal3.xy;\n    r6.xy = r6.xy*hg_ProgramLocal3.zw;\n    r6 = texture2D(hg_Texture1, r6.xy);\n    r2.x = r2.x - r4.x;\n    r7.xy = r2.xy + hg_ProgramLocal3.xy;\n    r7.xy = r7.xy*hg_ProgramLocal3.zw;\n    r7 = texture2D(hg_Texture1, r7.xy);\n    r2.y = r2.y + r4.z;\n    r8.xy = r2.xy + hg_ProgramLocal3.xy;\n    r8.xy = r8.xy*hg_ProgramLocal3.zw;\n    r8 = texture2D(hg_Texture1, r8.xy);\n    r2.x = r2.x - r4.y;\n    r9.xy = r2.xy + hg_ProgramLocal3.xy;\n    r9.xy = r9.xy*hg_ProgramLocal3.zw;\n    r9 = texture2D(hg_Texture1, r9.xy);\n    r2.x = r2.x + r4.x;\n    r10.xy = r2.xy + hg_ProgramLocal3.xy;\n    r10.xy = r10.xy*hg_ProgramLocal3.zw;\n    r10 = texture2D(hg_Texture1, r10.xy);\n    r2.x = r2.x + r4.y;\n    r2.xy = r2.xy + hg_ProgramLocal3.xy;\n    r2.xy = r2.xy*hg_ProgramLocal3.zw;\n    r2 = texture2D(hg_Texture1, r2.xy);\n    r1 = mix(r1, r5, r3.xxxx);\n    r7 = mix(r7, r6, r3.xxxx);\n    r9 = mix(r9, r10, r3.xxxx);\n    r8 = mix(r8, r2, r3.xxxx);\n    r1 = mix(r1, r7, r3.yyyy);\n    r9 = mix(r9, r8, r3.yyyy);\n    r3 = mix(r1, r9, r3.zzzz);\n    r3 = r3*hg_ProgramLocal0.zzzz + hg_ProgramLocal0.wwww;\n    gl_FragColor = vec4(hg_ProgramLocal2.x < 0.00000 ? r0.x : r3.x, hg_ProgramLocal2.y < 0.00000 ? r0.y : r3.y, hg_ProgramLocal2.z < 0.00000 ? r0.z : r3.z, hg_ProgramLocal2.w < 0.00000 ? r0.w : r3.w);\n}\n//MD5=66dd5ce0:835ac03a:cf594cc7:10f7ddbe\n//SIG=00000000:00000001:00000001:00000000:0001:0004:000b:0000:0000:0000:0000:0000:0001:02:0:1:0\n";
  }
}

void sub_25FE16C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE16C98(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE16C90);
}

uint64_t HgcApply3DLUTTrilinearUniform_basekernel::BindTexture(HgcApply3DLUTTrilinearUniform_basekernel *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      v8.n128_u32[0] = 1.0;
      v9.n128_u32[0] = 1.0;
    }

    else
    {
      v8.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v9.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v6.n128_f32[0] = *(a2 + 60);
    v7.n128_f32[0] = *(a2 + 61);
    (*(*a2 + 136))(a2, 3, v6, v7, v8, v9);
    return 0;
  }

  else if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    v4 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (!v4)
    {
      (*(*a2 + 168))(a2);
      return 0;
    }
  }

  return result;
}

uint64_t HgcApply3DLUTTrilinearUniform_basekernel::Bind(HgcApply3DLUTTrilinearUniform_basekernel *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcApply3DLUTTrilinearUniform_basekernel::RenderTile(HgcApply3DLUTTrilinearUniform_basekernel *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = a2[1].i32[0] - v2.i32[0];
    if (v4 >= 1)
    {
      v5 = 0;
      *v6.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
      v6.i64[1] = 0x3F80000000000000;
      v7 = a2[10];
      v8 = a2[2];
      v9 = 16 * a2[11].i32[0];
      v10 = 16 * a2[3].i32[0];
      v11 = 16 * v4;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      do
      {
        v13 = 0;
        do
        {
          v14 = *(*&v7 + v13);
          v15 = *(this + 51);
          v16 = *v15;
          v17 = *(v15 + 1);
          v19 = *(v15 + 2);
          v18 = *(v15 + 3);
          v20 = vsubq_f32(vdupq_lane_s32(*v17.f32, 1), v18);
          v21 = *(v15 + 4);
          v22 = *(v15 + 5);
          v23 = vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(vdupq_lane_s32(*v15, 1), vmulq_n_f32(v14, COERCE_FLOAT(*v15))), v20), v21), v20);
          v24 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
          v25 = vsubq_f32(v24, vandq_s8(v18, vcgtq_f32(v24, v23)));
          v26 = vmulq_f32(v17, vsubq_f32(vminq_f32(vaddq_f32(v18, v25), v20), v25));
          v27 = vmulq_f32(v17, v25);
          v28 = vaddq_f32(*(v15 + 6), vbslq_s8(v22, vaddq_f32(v27, vrev64q_s32(v27)), vextq_s8(v25, v25, 4uLL)));
          v29 = a2[12];
          v30 = &a2[13];
          v31 = vaddq_f32(vsubq_f32(v28, v6), v12);
          v32 = vcvtq_s32_f32(v31);
          v33 = vbslq_s8(v22, vaddq_f32(v26, v28), v28);
          v34 = vaddq_f32(vsubq_f32(v33, v6), v12);
          v35 = vcvtq_s32_f32(v34);
          *v34.f32 = vadd_s32(*v35.i8, *&vcgtq_f32(vcvtq_f32_s32(v35), v34));
          *v31.f32 = vadd_s32(*v32.i8, *&vcgtq_f32(vcvtq_f32_s32(v32), v31));
          *v32.i8 = vld1_dup_f32(v30);
          *v31.f32 = vmla_s32(vzip1_s32(*v31.f32, *v34.f32), vzip2_s32(*v31.f32, *v34.f32), *v32.i8);
          v36 = vrev64q_s32(v26);
          v37 = vbslq_s8(v22, vaddq_f32(v36, v33), v28);
          v38 = vaddq_f32(vsubq_f32(v37, v6), v12);
          v39 = vcvtq_s32_f32(v38);
          v40 = vsubq_f32(v37, v26);
          v41 = vbslq_s8(v22, v40, v28);
          v42 = vaddq_f32(vsubq_f32(v41, v6), v12);
          v43 = vcvtq_s32_f32(v42);
          *v38.f32 = vadd_s32(*v39.i8, *&vcgtq_f32(vcvtq_f32_s32(v39), v38));
          *v39.i8 = vadd_s32(*v43.i8, *&vcgtq_f32(vcvtq_f32_s32(v43), v42));
          *v38.f32 = vmla_s32(vzip1_s32(*v38.f32, *v39.i8), vzip2_s32(*v38.f32, *v39.i8), *v32.i8);
          LODWORD(v30) = v38.i32[1];
          v44 = v38.i32[0];
          v45 = vaddq_f32(vextq_s8(v26, v26, 4uLL), v41);
          v46 = vbslq_s8(v22, v40, v45);
          v47 = vaddq_f32(vsubq_f32(v46, v6), v12);
          v48 = vcvtq_s32_f32(v47);
          v49 = vbslq_s8(v22, vsubq_f32(v46, v36), v45);
          v50 = vaddq_f32(vsubq_f32(v49, v6), v12);
          v51 = vcvtq_s32_f32(v50);
          *v47.f32 = vadd_s32(*v48.i8, *&vcgtq_f32(vcvtq_f32_s32(v48), v47));
          v52 = *(*&v29 + 16 * v30);
          *v50.f32 = vadd_s32(*v51.i8, *&vcgtq_f32(vcvtq_f32_s32(v51), v50));
          *v47.f32 = vmla_s32(vzip1_s32(*v47.f32, *v50.f32), vzip2_s32(*v47.f32, *v50.f32), *v32.i8);
          v53 = vsubq_f32(v23, v25);
          v54 = vbslq_s8(v22, vaddq_f32(v26, v49), v45);
          v55 = vaddq_f32(vsubq_f32(v54, v6), v12);
          v56 = vcvtq_s32_f32(v55);
          v57 = vaddq_f32(vsubq_f32(vbslq_s8(v22, vaddq_f32(v36, v54), v45), v6), v12);
          v58 = vcvtq_s32_f32(v57);
          *v45.i8 = vadd_s32(*v56.i8, *&vcgtq_f32(vcvtq_f32_s32(v56), v55));
          *v57.f32 = vadd_s32(*v58.i8, *&vcgtq_f32(vcvtq_f32_s32(v58), v57));
          *v57.f32 = vmla_s32(vzip1_s32(*v45.i8, *v57.f32), vzip2_s32(*v45.i8, *v57.f32), *v32.i8);
          LODWORD(v30) = v57.i32[1];
          v59 = vaddq_f32(*(*&v29 + 16 * v31.i32[0]), vmulq_n_f32(vsubq_f32(*(*&v29 + 16 * v31.i32[1]), *(*&v29 + 16 * v31.i32[0])), v53.f32[0]));
          v60 = vaddq_f32(*(*&v29 + 16 * v47.i32[1]), vmulq_n_f32(vsubq_f32(*(*&v29 + 16 * v57.i32[0]), *(*&v29 + 16 * v47.i32[1])), v53.f32[0]));
          v61 = vaddq_f32(v59, vmulq_lane_f32(vsubq_f32(vaddq_f32(v52, vmulq_n_f32(vsubq_f32(*(*&v29 + 16 * v44), v52), v53.f32[0])), v59), *v53.f32, 1));
          *(*&v8 + v13) = vbslq_s8(vcgtq_f32(v21, v19), v14, vaddq_f32(vdupq_laneq_s32(v16, 3), vmulq_laneq_f32(vaddq_f32(v61, vmulq_laneq_f32(vsubq_f32(vaddq_f32(v60, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(*&v29 + 16 * v47.i32[0]), vmulq_n_f32(vsubq_f32(*(*&v29 + 16 * v30), *(*&v29 + 16 * v47.i32[0])), v53.f32[0])), v60), *v53.f32, 1)), v61), v53, 2)), v16, 2)));
          v13 += 16;
        }

        while (v11 != v13);
        ++v5;
        *&v7 += v9;
        *&v8 += v10;
      }

      while (v5 != v3);
    }
  }

  return 0;
}

uint64_t HgcApply3DLUTTrilinearUniform_basekernel::GetDOD(HgcApply3DLUTTrilinearUniform_basekernel *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    return 0x8000000080000000;
  }

  if (a3)
  {
    return 0;
  }

  return *&a4.var0;
}

uint64_t HgcApply3DLUTTrilinearUniform_basekernel::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, a3);
    return HGRenderer::GetDOD(a2, Input);
  }

  else
  {
    if (a3)
    {
      *&a4.var0 = 0;
    }

    return *&a4.var0;
  }
}

void HgcApply3DLUTTrilinearUniform_basekernel::HgcApply3DLUTTrilinearUniform_basekernel(HgcApply3DLUTTrilinearUniform_basekernel *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287238BF0;
  operator new();
}

void HgcApply3DLUTTrilinearUniform_basekernel::~HgcApply3DLUTTrilinearUniform_basekernel(HgcApply3DLUTTrilinearUniform_basekernel *this)
{
  *this = &unk_287238BF0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AC4F46D1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287238BF0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AC4F46D1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcApply3DLUTTrilinearUniform_basekernel::~HgcApply3DLUTTrilinearUniform_basekernel(HGNode *this)
{
  *this = &unk_287238BF0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AC4F46D1);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcApply3DLUTTrilinearUniform_basekernel::SetParameter(HgcApply3DLUTTrilinearUniform_basekernel *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcApply3DLUTTrilinearUniform_basekernel::GetParameter(HgcApply3DLUTTrilinearUniform_basekernel *this, unsigned int a2, float *a3)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcApply3DLUTTrilinearFast_basekernel::GetProgram(HgcApply3DLUTTrilinearFast_basekernel *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n"
             "//LEN=0000000c76\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]], \n"
             "    texture2d< half > hg_Texture0 [[ texture(0) ]], \n"
             "    sampler hg_Sampler0 [[ sampler(0) ]], \n"
             "    texture2d< half > hg_Texture1 [[ texture(1) ]], \n"
             "    sampler hg_Sampler1 [[ sampler(1) ]])\n"
             "{\n"
             "    const half4 c0 = half4(0.000000000, 1.000000000, 0.5000000000, 0.000000000);\n"
             "    half4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;\n"
             "    FragmentOut output;\n"
             "\n"
             "    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n"
             "    r1.xyz = r0.xyz*half3(hg_Params[0].xxx) + half3(hg_Params[0].yyy);\n"
             "    r2.xyz = r1.xyz*r1.xyz;\n"
             "    r3.xyz = r2.xyz*r1.xyz;\n"
             "    r1.xyz = r1.xyz*half3(hg_Params[3].yyy) + half3(hg_Params[3].xxx);\n"
             "    r1.xyz = r2.xyz*half3(hg_Params[3].zzz) + r1.xyz;\n"
             "    r1.xyz = r3.xyz*half3(hg_Params[3].www) + r1.xyz;\n"
             "    r1.xyz = fmax(r1.xyz, c0.xxx);\n"
             "    r2.xyz = half3(hg_Params[1].yyy) - c0.yyy;\n"
             "    r1.xyz = fmin(r1.xyz, r2.xyz);\n"
             "    r3.xyz = fract(r1.xyz);\n"
             "    r1.xyz = floor(r1.xyz);\n"
             "    r4.xyz = r1.xyz + c0.yyy;\n"
             "    r4.xyz = fmin(r4.xyz, r2.xyz);\n"
             "    r4.xyz = r4.xyz - r1.xyz;\n"
             "    r4.xyz = r4.xyz*half3(hg_Params[1].xyz);\n"
             "    r2.x = dot(r1.xy, half2(hg_Params[1].xy));\n"
             "    r2.y = r1.z;\n"
             "    r2.xy = r2.xy + c0.zz;\n"
             "    r1.xy = r2.xy + half2(hg_Params[4].xy);\n"
             "    r1.xy = r1.xy*half2(hg_Params[4].zw);\n"
             "    r1 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r1.xy));\n"
             "    r2.x = r2.x + r4.x;\n"
             "    r5.xy = r2.xy + half2(hg_Params[4].xy);\n"
             "    r5.xy = r5.xy*half2(hg_Params[4].zw);\n"
             "    r5 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r5.xy));\n"
             "    r2.x = r2.x + r4.y;\n"
             "    r6.xy = r2.xy + half2(hg_Params[4].xy);\n"
             "    r6.xy = r6.xy*half2(hg_Params[4].zw);\n"
             "    r6 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r6.xy));\n"
             "    r2.x = r2.x - r4.x;\n"
             "    r7.xy = r2.xy + half2(hg_Params[4].xy);\n"
             "    r7.xy = r7.xy*half2(hg_Params[4].zw);\n"
             "    r7 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r7.xy));\n"
             "    r2.y = r2.y + r4.z;\n"
             "    r8.xy = r2.xy + half2(hg_Params[4].xy);\n"
             "    r8.xy = r8.xy*half2(hg_Params[4].zw);\n"
             "    r8 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r8.xy));\n"
             "    r2.x = r2.x - r4.y;\n"
             "    r9.xy = r2.xy + half2(hg_Params[4].xy);\n"
             "    r9.xy = r9.xy*half2(hg_Params[4].zw);\n"
             "    r9 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r9.xy));\n"
             "    r2.x = r2.x + r4.x;\n"
             "    r10.xy = r2.xy + half2(hg_Params[4].xy);\n"
             "    r10.xy = r10.xy*half2(hg_Params[4].zw);\n"
             "    r10 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r10.xy));\n"
             "    r2.x = r2.x + r4.y;\n"
             "    r2.xy = r2.xy + half2(hg_Params[4].xy);\n"
             "    r2.xy = r2.xy*half2(hg_Params[4].zw);\n"
             "    r2 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r2.xy));\n"
             "    r1 = mix(r1, r5, r3.xxxx);\n"
             "    r7 = mix(r7, r6, r3.xxxx);\n"
             "    r9 = mix(r9, r10, r3.xxxx);\n"
             "    r8 = mix(r8, r2, r3.xxxx);\n"
             "    r1 = mix(r1, r7, r3.yyyy);\n"
             "    r9 = mix(r9, r8, r3.yyyy);\n"
             "    r3 = mix(r1, r9, r3.zzzz);\n"
             "    r3 = r3*half4(hg_Params[0].zzzz) + half4(hg_Params[0].wwww);\n"
             "    output.color0 = select(float4(r3), float4(r0), hg_Params[2] < 0.00000h);\n"
             "    return output;\n"
             "}\n"
             "//MD5=e070033f:1d621a63:785fa6c2:a792b420\n"
             "//SIG=00400000:00000001:00000001:00000003:0001:0005:000b:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000b26\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n    r2.xyz = r1.xyz*r1.xyz;\n    r3.xyz = r2.xyz*r1.xyz;\n    r1.xyz = r1.xyz*hg_Params[3].yyy + hg_Params[3].xxx;\n    r1.xyz = r2.xyz*hg_Params[3].zzz + r1.xyz;\n    r1.xyz = r3.xyz*hg_Params[3].www + r1.xyz;\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r2.xyz = hg_Params[1].yyy - c0.yyy;\n    r1.xyz = fmin(r1.xyz, r2.xyz);\n    r3.xyz = fract(r1.xyz);\n    r1.xyz = floor(r1.xyz);\n    r4.xyz = r1.xyz + c0.yyy;\n    r4.xyz = fmin(r4.xyz, r2.xyz);\n    r4.xyz = r4.xyz - r1.xyz;\n    r4.xyz = r4.xyz*hg_Params[1].xyz;\n    r2.x = dot(r1.xy, hg_Params[1].xy);\n    r2.y = r1.z;\n    r2.xy = r2.xy + c0.zz;\n    r1.xy = r2.xy + hg_Params[4].xy;\n    r1.xy = r1.xy*hg_Params[4].zw;\n    r1 = hg_Texture1.sample(hg_Sampler1, r1.xy);\n    r2.x = r2.x + r4.x;\n    r5.xy = r2.xy + hg_Params[4].xy;\n    r5.xy = r5.xy*hg_Params[4].zw;\n    r5 = hg_Texture1.sample(hg_Sampler1, r5.xy);\n    r2.x = r2.x + r4.y;\n    r6.xy = r2.xy + hg_Params[4].xy;\n    r6.xy = r6.xy*hg_Params[4].zw;\n    r6 = hg_Texture1.sample(hg_Sampler1, r6.xy);\n    r2.x = r2.x - r4.x;\n    r7.xy = r2.xy + hg_Params[4].xy;\n    r7.xy = r7.xy*hg_Params[4].zw;\n    r7 = hg_Texture1.sample(hg_Sampler1, r7.xy);\n    r2.y = r2.y + r4.z;\n    r8.xy = r2.xy + hg_Params[4].xy;\n    r8.xy = r8.xy*hg_Params[4].zw;\n    r8 = hg_Texture1.sample(hg_Sampler1, r8.xy);\n    r2.x = r2.x - r4.y;\n    r9.xy = r2.xy + hg_Params[4].xy;\n    r9.xy = r9.xy*hg_Params[4].zw;\n    r9 = hg_Texture1.sample(hg_Sampler1, r9.xy);\n    r2.x = r2.x + r4.x;\n    r10.xy = r2.xy + hg_Params[4].xy;\n    r10.xy = r10.xy*hg_Params[4].zw;\n    r10 = hg_Texture1.sample(hg_Sampler1, r10.xy);\n    r2.x = r2.x + r4.y;\n    r2.xy = r2.xy + hg_Params[4].xy;\n    r2.xy = r2.xy*hg_Params[4].zw;\n    r2 = hg_Texture1.sample(hg_Sampler1, r2.xy);\n    r1 = mix(r1, r5, r3.xxxx);\n    r7 = mix(r7, r6, r3.xxxx);\n    r9 = mix(r9, r10, r3.xxxx);\n    r8 = mix(r8, r2, r3.xxxx);\n    r1 = mix(r1, r7, r3.yyyy);\n    r9 = mix(r9, r8, r3.yyyy);\n    r3 = mix(r1, r9, r3.zzzz);\n    r3 = r3*hg_Params[0].zzzz + hg_Params[0].wwww;\n    output.color0 = select(r3, r0, hg_Params[2] < 0.00000f);\n    return output;\n}\n//MD5=c61a1f18:8e6819ed:8e5b4072:dd86156d\n//SIG=00000000:00000001:00000001:00000000:0001:0005:000b:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000c03\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz*hg_ProgramLocal0.xxx + hg_ProgramLocal0.yyy;\n    r2.xyz = r1.xyz*r1.xyz;\n    r3.xyz = r2.xyz*r1.xyz;\n    r1.xyz = r1.xyz*hg_ProgramLocal3.yyy + hg_ProgramLocal3.xxx;\n    r1.xyz = r2.xyz*hg_ProgramLocal3.zzz + r1.xyz;\n    r1.xyz = r3.xyz*hg_ProgramLocal3.www + r1.xyz;\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r2.xyz = hg_ProgramLocal1.yyy - c0.yyy;\n    r1.xyz = min(r1.xyz, r2.xyz);\n    r3.xyz = fract(r1.xyz);\n    r1.xyz = floor(r1.xyz);\n    r4.xyz = r1.xyz + c0.yyy;\n    r4.xyz = min(r4.xyz, r2.xyz);\n    r4.xyz = r4.xyz - r1.xyz;\n    r4.xyz = r4.xyz*hg_ProgramLocal1.xyz;\n    r2.x = dot(r1.xy, hg_ProgramLocal1.xy);\n    r2.y = r1.z;\n    r2.xy = r2.xy + c0.zz;\n    r1.xy = r2.xy + hg_ProgramLocal4.xy;\n    r1.xy = r1.xy*hg_ProgramLocal4.zw;\n    r1 = texture2D(hg_Texture1, r1.xy);\n    r2.x = r2.x + r4.x;\n    r5.xy = r2.xy + hg_ProgramLocal4.xy;\n    r5.xy = r5.xy*hg_ProgramLocal4.zw;\n    r5 = texture2D(hg_Texture1, r5.xy);\n    r2.x = r2.x + r4.y;\n    r6.xy = r2.xy + hg_ProgramLocal4.xy;\n    r6.xy = r6.xy*hg_ProgramLocal4.zw;\n    r6 = texture2D(hg_Texture1, r6.xy);\n    r2.x = r2.x - r4.x;\n    r7.xy = r2.xy + hg_ProgramLocal4.xy;\n    r7.xy = r7.xy*hg_ProgramLocal4.zw;\n    r7 = texture2D(hg_Texture1, r7.xy);\n    r2.y = r2.y + r4.z;\n    r8.xy = r2.xy + hg_ProgramLocal4.xy;\n    r8.xy = r8.xy*hg_ProgramLocal4.zw;\n    r8 = texture2D(hg_Texture1, r8.xy);\n    r2.x = r2.x - r4.y;\n    r9.xy = r2.xy + hg_ProgramLocal4.xy;\n    r9.xy = r9.xy*hg_ProgramLocal4.zw;\n    r9 = texture2D(hg_Texture1, r9.xy);\n    r2.x = r2.x + r4.x;\n    r10.xy = r2.xy + hg_ProgramLocal4.xy;\n    r10.xy = r10.xy*hg_ProgramLocal4.zw;\n    r10 = texture2D(hg_Texture1, r10.xy);\n    r2.x = r2.x + r4.y;\n    r2.xy = r2.xy + hg_ProgramLocal4.xy;\n    r2.xy = r2.xy*hg_ProgramLocal4.zw;\n    r2 = texture2D(hg_Texture1, r2.xy);\n    r1 = mix(r1, r5, r3.xxxx);\n    r7 = mix(r7, r6, r3.xxxx);\n    r9 = mix(r9, r10, r3.xxxx);\n    r8 = mix(r8, r2, r3.xxxx);\n    r1 = mix(r1, r7, r3.yyyy);\n    r9 = mix(r9, r8, r3.yyyy);\n    r3 = mix(r1, r9, r3.zzzz);\n    r3 = r3*hg_ProgramLocal0.zzzz + hg_ProgramLocal0.wwww;\n    gl_FragColor = vec4(hg_ProgramLocal2.x < 0.00000 ? r0.x : r3.x, hg_ProgramLocal2.y < 0.00000 ? r0.y : r3.y, hg_ProgramLocal2.z < 0.00000 ? r0.z : r3.z, hg_ProgramLocal2.w < 0.00000 ? r0.w : r3.w);\n}\n//MD5=73a1f61c:d101d00f:5112a8c9:baad1c77\n//SIG=00000000:00000001:00000001:00000000:0001:0005:000b:0000:0000:0000:0000:0000:0001:02:0:1:0\n";
  }
}

void sub_25FE17AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE17B00(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE17AF8);
}

uint64_t HgcApply3DLUTTrilinearFast_basekernel::BindTexture(HgcApply3DLUTTrilinearFast_basekernel *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      v8.n128_u32[0] = 1.0;
      v9.n128_u32[0] = 1.0;
    }

    else
    {
      v8.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v9.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v6.n128_f32[0] = *(a2 + 60);
    v7.n128_f32[0] = *(a2 + 61);
    (*(*a2 + 136))(a2, 4, v6, v7, v8, v9);
    return 0;
  }

  else if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    v4 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (!v4)
    {
      (*(*a2 + 168))(a2);
      return 0;
    }
  }

  return result;
}

uint64_t HgcApply3DLUTTrilinearFast_basekernel::Bind(HgcApply3DLUTTrilinearFast_basekernel *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcApply3DLUTTrilinearFast_basekernel::RenderTile(HgcApply3DLUTTrilinearFast_basekernel *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = a2[1].i32[0] - v2.i32[0];
    if (v4 >= 1)
    {
      v5 = 0;
      *v6.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
      v6.i64[1] = 0x3F80000000000000;
      v7 = a2[10];
      v8 = a2[2];
      v9 = 16 * a2[11].i32[0];
      v10 = 16 * a2[3].i32[0];
      v11 = 16 * v4;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      do
      {
        v13 = 0;
        do
        {
          v14 = *(*&v7 + v13);
          v15 = *(this + 51);
          v16 = *v15;
          v17 = *(v15 + 1);
          v18 = vaddq_f32(vdupq_lane_s32(*v15, 1), vmulq_n_f32(v14, COERCE_FLOAT(*v15)));
          v20 = *(v15 + 2);
          v19 = *(v15 + 3);
          v21 = vmulq_f32(v18, v18);
          v22 = vaddq_f32(vdupq_lane_s32(*v19.f32, 0), vmulq_lane_f32(v18, *v19.f32, 1));
          v23 = vmulq_f32(v18, v21);
          v24 = vaddq_f32(v22, vmulq_laneq_f32(v21, v19, 2));
          v25 = vmulq_laneq_f32(v23, v19, 3);
          v26 = *(v15 + 4);
          v27 = *(v15 + 5);
          v28 = vmaxq_f32(vaddq_f32(v24, v25), v26);
          v29 = vsubq_f32(vdupq_lane_s32(*v17.f32, 1), v27);
          v30 = vminq_f32(v28, v29);
          v31 = vcvtq_f32_s32(vcvtq_s32_f32(v30));
          v32 = vsubq_f32(v31, vandq_s8(v27, vcgtq_f32(v31, v30)));
          v33 = vsubq_f32(vminq_f32(vaddq_f32(v27, v32), v29), v32);
          v34 = vmulq_f32(v17, v32);
          v35 = vaddq_f32(v34, vrev64q_s32(v34));
          v36 = vmulq_f32(v17, v33);
          v37 = *(v15 + 6);
          v38 = vaddq_f32(*(v15 + 7), vbslq_s8(v37, v35, vextq_s8(v32, v32, 4uLL)));
          v39 = a2[12];
          v40 = vsubq_f32(v30, v32);
          v41 = &a2[13];
          v42 = vaddq_f32(vsubq_f32(v38, v6), v12);
          v43 = vcvtq_s32_f32(v42);
          v44 = vbslq_s8(v37, vaddq_f32(v36, v38), v38);
          v45 = vaddq_f32(vsubq_f32(v44, v6), v12);
          v46 = vcvtq_s32_f32(v45);
          *v45.f32 = vadd_s32(*v46.i8, *&vcgtq_f32(vcvtq_f32_s32(v46), v45));
          *v43.i8 = vadd_s32(*v43.i8, *&vcgtq_f32(vcvtq_f32_s32(v43), v42));
          *v42.f32 = vld1_dup_f32(v41);
          *v43.i8 = vmla_s32(vzip1_s32(*v43.i8, *v45.f32), vzip2_s32(*v43.i8, *v45.f32), *v42.f32);
          v47 = vrev64q_s32(v36);
          LODWORD(v41) = v43.i32[1];
          v48 = vbslq_s8(v37, vaddq_f32(v47, v44), v38);
          v49 = vaddq_f32(vsubq_f32(v48, v6), v12);
          v50 = vcvtq_s32_f32(v49);
          v51 = v43.i32[0];
          v43.i64[0] = vcgtq_f32(vcvtq_f32_s32(v50), v49).u64[0];
          v52 = vsubq_f32(v48, v36);
          v53 = vbslq_s8(v37, v52, v38);
          v54 = *(*&v39 + 16 * v51);
          v55 = vaddq_f32(vsubq_f32(v53, v6), v12);
          v56 = vcvtq_s32_f32(v55);
          v57 = *(*&v39 + 16 * v41);
          *v43.i8 = vadd_s32(*v50.i8, *v43.i8);
          *v55.f32 = vadd_s32(*v56.i8, *&vcgtq_f32(vcvtq_f32_s32(v56), v55));
          *v43.i8 = vmla_s32(vzip1_s32(*v43.i8, *v55.f32), vzip2_s32(*v43.i8, *v55.f32), *v42.f32);
          v58 = vaddq_f32(vextq_s8(v36, v36, 4uLL), v53);
          v59 = vbslq_s8(v37, v52, v58);
          v60 = vaddq_f32(vsubq_f32(v59, v6), v12);
          LODWORD(v41) = v43.i32[1];
          v61 = vcvtq_s32_f32(v60);
          v62 = vbslq_s8(v37, vsubq_f32(v59, v47), v58);
          v63 = v43.i32[0];
          v64 = vaddq_f32(vsubq_f32(v62, v6), v12);
          v65 = vcvtq_s32_f32(v64);
          v66 = *(*&v39 + 16 * v41);
          *v60.f32 = vadd_s32(*v61.i8, *&vcgtq_f32(vcvtq_f32_s32(v61), v60));
          *v64.f32 = vadd_s32(*v65.i8, *&vcgtq_f32(vcvtq_f32_s32(v65), v64));
          *v64.f32 = vmla_s32(vzip1_s32(*v60.f32, *v64.f32), vzip2_s32(*v60.f32, *v64.f32), *v42.f32);
          v67 = vbslq_s8(v37, vaddq_f32(v36, v62), v58);
          LODWORD(v41) = v64.i32[1];
          v68 = vaddq_f32(vsubq_f32(v67, v6), v12);
          v69 = vcvtq_s32_f32(v68);
          v70 = vaddq_f32(vsubq_f32(vbslq_s8(v37, vaddq_f32(v47, v67), v58), v6), v12);
          v71 = *(*&v39 + 16 * v64.i32[0]);
          v72 = vcvtq_s32_f32(v70);
          *v68.f32 = vadd_s32(*v69.i8, *&vcgtq_f32(vcvtq_f32_s32(v69), v68));
          *v70.f32 = vadd_s32(*v72.i8, *&vcgtq_f32(vcvtq_f32_s32(v72), v70));
          *v70.f32 = vmla_s32(vzip1_s32(*v68.f32, *v70.f32), vzip2_s32(*v68.f32, *v70.f32), *v42.f32);
          v73 = *(*&v39 + 16 * v70.i32[1]);
          v74 = vaddq_f32(v54, vmulq_n_f32(vsubq_f32(v57, v54), v40.f32[0]));
          v75 = vaddq_f32(*(*&v39 + 16 * v41), vmulq_n_f32(vsubq_f32(*(*&v39 + 16 * v70.i32[0]), *(*&v39 + 16 * v41)), v40.f32[0]));
          v76 = vaddq_f32(v74, vmulq_lane_f32(vsubq_f32(vaddq_f32(v66, vmulq_n_f32(vsubq_f32(*(*&v39 + 16 * v63), v66), v40.f32[0])), v74), *v40.f32, 1));
          *(*&v8 + v13) = vbslq_s8(vcgtq_f32(v26, v20), v14, vaddq_f32(vdupq_laneq_s32(v16, 3), vmulq_laneq_f32(vaddq_f32(v76, vmulq_laneq_f32(vsubq_f32(vaddq_f32(v75, vmulq_lane_f32(vsubq_f32(vaddq_f32(v71, vmulq_n_f32(vsubq_f32(v73, v71), v40.f32[0])), v75), *v40.f32, 1)), v76), v40, 2)), v16, 2)));
          v13 += 16;
        }

        while (v11 != v13);
        ++v5;
        *&v7 += v9;
        *&v8 += v10;
      }

      while (v5 != v3);
    }
  }

  return 0;
}

uint64_t HgcApply3DLUTTrilinearFast_basekernel::GetDOD(HgcApply3DLUTTrilinearFast_basekernel *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    return 0x8000000080000000;
  }

  if (a3)
  {
    return 0;
  }

  return *&a4.var0;
}

uint64_t HgcApply3DLUTTrilinearFast_basekernel::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, a3);
    return HGRenderer::GetDOD(a2, Input);
  }

  else
  {
    if (a3)
    {
      *&a4.var0 = 0;
    }

    return *&a4.var0;
  }
}

void HgcApply3DLUTTrilinearFast_basekernel::HgcApply3DLUTTrilinearFast_basekernel(HgcApply3DLUTTrilinearFast_basekernel *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287238E58;
  operator new();
}

void HgcApply3DLUTTrilinearFast_basekernel::~HgcApply3DLUTTrilinearFast_basekernel(HgcApply3DLUTTrilinearFast_basekernel *this)
{
  *this = &unk_287238E58;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287238E58;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcApply3DLUTTrilinearFast_basekernel::~HgcApply3DLUTTrilinearFast_basekernel(HGNode *this)
{
  *this = &unk_287238E58;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AE2C30F4);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcApply3DLUTTrilinearFast_basekernel::SetParameter(HgcApply3DLUTTrilinearFast_basekernel *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcApply3DLUTTrilinearFast_basekernel::GetParameter(HgcApply3DLUTTrilinearFast_basekernel *this, unsigned int a2, float *a3)
{
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcColorGamma_2vuy_yxzx_expand::GetProgram(HgcColorGamma_2vuy_yxzx_expand *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003fa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy*float2(c0.xy);\n    s0.xy = floor(s0.xy);\n    s0.xy = s0.xy + float2(c0.xx);\n    s0.xy = s0.xy + hg_Params[0].xy;\n    s0.xy = s0.xy*hg_Params[0].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    s0.x = float(fract(0.500000f*frag._texCoord0.x) >= 0.500000f);\n    r1 = half4(r0.y, r0.z, r0.x, 1.00000h);\n    s1.yzw = float3(r1.yzw);\n    s1.x = select(float(r1.x), float(r0.w), -s0.x < 0.00000h);\n    output.color0 = s1;\n    return output;\n}\n//MD5=3f268be6:187954fb:6e0dcb63:6ce755ba\n//SIG=00400000:00000000:00000000:00000001:0001:0001:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003ad\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy*c0.xy;\n    r0.xy = floor(r0.xy);\n    r0.xy = r0.xy + c0.xx;\n    r0.xy = r0.xy + hg_Params[0].xy;\n    r0.xy = r0.xy*hg_Params[0].zw;\n    r0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    r1.x = float(fract(0.500000f*frag._texCoord0.x) >= 0.500000f);\n    r2 = float4(r0.y, r0.z, r0.x, 1.00000f);\n    r2.x = select(r2.x, r0.w, -r1.x < 0.00000f);\n    output.color0 = r2;\n    return output;\n}\n//MD5=9aad681a:95105c3e:57454f67:c4097cd0\n//SIG=00000000:00000000:00000000:00000000:0001:0001:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000386\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 1.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xy = hg_TexCoord0.xy*c0.xy;\n    r0.xy = floor(r0.xy);\n    r0.xy = r0.xy + c0.xx;\n    r0.xy = r0.xy + hg_ProgramLocal0.xy;\n    r0.xy = r0.xy*hg_ProgramLocal0.zw;\n    r0 = texture2D(hg_Texture0, r0.xy);\n    r1.x = c0.x*hg_TexCoord0.x;\n    r1.x = fract(r1.x);\n    r1.x = float(r1.x >= c0.x);\n    r2 = vec4(r0.y, r0.z, r0.x, 1.00000);\n    r2.x = -r1.x < 0.00000 ? r0.w : r2.x;\n    gl_FragColor = r2;\n}\n//MD5=1b446ee9:f22ade39:784a51a7:e86f3a81\n//SIG=00000000:00000000:00000000:00000000:0001:0001:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE18984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE189BC(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE189B4);
}

uint64_t HgcColorGamma_2vuy_yxzx_expand::BindTexture(HgcColorGamma_2vuy_yxzx_expand *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v5.n128_f32[0] = *(a2 + 60);
  v6.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 136))(a2, 0, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcColorGamma_2vuy_yxzx_expand::Bind(HgcColorGamma_2vuy_yxzx_expand *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcColorGamma_2vuy_yxzx_expand::RenderTile(HgcColorGamma_2vuy_yxzx_expand *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = a2[2];
    v8 = 16 * a2[3].i32[0];
    v9.i64[0] = 0x3F0000003F000000;
    v9.i64[1] = 0x3F0000003F000000;
    v10 = v5;
    while (v6 < 3)
    {
      v11 = 0;
      v13 = v10;
      if (v6 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v10 = vaddq_f32(v10, xmmword_2603429C0);
      ++v4;
      *&v7 += v8;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v11 = 0;
    v12 = v6;
    v13 = v10;
    do
    {
      v14 = vaddq_f32(v13, xmmword_2603429B0);
      v15 = vaddq_f32(v14, xmmword_2603429B0);
      v16 = *(this + 51);
      v17 = *(v16 + 16);
      v18 = vmulq_f32(v13, *v16);
      v19 = vmulq_f32(v14, *v16);
      v20 = vmulq_f32(v15, *v16);
      v21 = vcvtq_f32_s32(vcvtq_s32_f32(v18));
      v22 = vcvtq_f32_s32(vcvtq_s32_f32(v19));
      v23 = vcvtq_f32_s32(vcvtq_s32_f32(v20));
      v24 = vandq_s8(v17, vcgtq_f32(v22, v19));
      v25 = vsubq_f32(v21, vandq_s8(v17, vcgtq_f32(v21, v18)));
      v26 = vsubq_f32(v22, v24);
      v27 = vsubq_f32(v23, vandq_s8(v17, vcgtq_f32(v23, v20)));
      v28 = *(v16 + 32);
      v29 = *(v16 + 48);
      v30 = a2[10];
      v31 = a2[11].u32[0];
      v32 = vaddq_f32(vsubq_f32(vaddq_f32(v28, v25), v5), v9);
      v33 = vcvtq_s32_f32(v32);
      v34 = vaddq_f32(vsubq_f32(vaddq_f32(v28, v26), v5), v9);
      v35 = vcvtq_s32_f32(v34);
      *v34.f32 = vadd_s32(*v35.i8, *&vcgtq_f32(vcvtq_f32_s32(v35), v34));
      *v32.f32 = vadd_s32(*v33.i8, *&vcgtq_f32(vcvtq_f32_s32(v33), v32));
      *v33.i8 = vzip2_s32(*v32.f32, *v34.f32);
      *v32.f32 = vzip1_s32(*v32.f32, *v34.f32);
      v36 = vaddq_f32(vsubq_f32(vaddq_f32(v28, v27), v5), v9);
      v37 = vcvtq_s32_f32(v36);
      *v32.f32 = vmla_s32(*v32.f32, *v33.i8, vdup_n_s32(v31));
      v36.i64[0] = vaddq_s32(v37, vcgtq_f32(vcvtq_f32_s32(v37), v36)).u64[0];
      v38 = v36.i32[0] + v36.i32[1] * v31;
      v39 = v32.i32[1];
      v40 = *(*&v30 + 16 * v32.i32[0]);
      v41 = vmulq_f32(v13, v28);
      v42 = vmulq_f32(v14, v28);
      v43 = vmulq_f32(v15, v28);
      v44 = *(*&v30 + 16 * v38);
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v47 = *(*&v30 + 16 * v39);
      v48 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v49 = vandq_s8(v17, vcgeq_f32(vsubq_f32(v41, vsubq_f32(v45, vandq_s8(v17, vcgtq_f32(v45, v41)))), v28));
      v50 = vandq_s8(v17, vcgeq_f32(vsubq_f32(v42, vsubq_f32(v46, vandq_s8(v17, vcgtq_f32(v46, v42)))), v28));
      v51 = vandq_s8(v17, vcgeq_f32(vsubq_f32(v43, vsubq_f32(v48, vandq_s8(v17, vcgtq_f32(v48, v43)))), v28));
      *v28.f32 = vqtbl1_s8(v40, *v29.i8);
      v43.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
      v28.i64[1] = __PAIR64__(1.0, vqtbl1_s8(v40, *v43.f32).u32[0]);
      *v45.f32 = vqtbl1_s8(v47, *v29.i8);
      *v29.i8 = vqtbl1_s8(v44, *v29.i8);
      v45.i64[1] = __PAIR64__(1.0, vqtbl1_s8(v47, *v43.f32).u32[0]);
      v29.i64[1] = __PAIR64__(1.0, vqtbl1_s8(v44, *v43.f32).u32[0]);
      v52 = vextq_s8(v44, v44, 0xCuLL);
      v53 = *(v16 + 64);
      v54 = *(v16 + 80);
      v55 = (*&v7 + 16 * v11);
      *v55 = vbslq_s8(v54, vbslq_s8(vcgtq_f32(v49, v53), vextq_s8(v40, v40, 0xCuLL), v28), v28);
      v55[1] = vbslq_s8(v54, vbslq_s8(vcgtq_f32(v50, v53), vextq_s8(v47, v47, 0xCuLL), v45), v45);
      v55[2] = vbslq_s8(v54, vbslq_s8(vcgtq_f32(v51, v53), v52, v29), v29);
      v13 = vaddq_f32(v15, xmmword_2603429B0);
      v11 += 3;
      v12 -= 3;
    }

    while (v12 > 2);
    v11 = v11;
    if (v11 >= v6)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v56 = *(this + 51);
      v57 = *(v56 + 16);
      v58 = vmulq_f32(v13, *v56);
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
      v60 = vsubq_f32(v59, vandq_s8(v57, vcgtq_f32(v59, v58)));
      v61 = *(v56 + 32);
      v62 = *(v56 + 48);
      v63 = vaddq_f32(vsubq_f32(vaddq_f32(v61, v60), v5), v9);
      v64 = vcvtq_s32_f32(v63);
      v63.i64[0] = vaddq_s32(v64, vcgtq_f32(vcvtq_f32_s32(v64), v63)).u64[0];
      v65 = v63.i32[0] + v63.i32[1] * a2[11].i32[0];
      v66 = vmulq_f32(v13, v61);
      v67 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
      v68 = *(*&a2[10] + 16 * v65);
      v69 = vcgeq_f32(vsubq_f32(v66, vsubq_f32(v67, vandq_s8(v57, vcgtq_f32(v67, v66)))), v61);
      *v61.f32 = vqtbl1_s8(v68, *v62.i8);
      v61.i64[1] = __PAIR64__(1.0, vqtbl1_s8(v68, *&vextq_s8(v62, v62, 8uLL)).u32[0]);
      *(*&v7 + 16 * v11) = vbslq_s8(*(v56 + 80), vbslq_s8(vcgtq_f32(vandq_s8(v57, v69), *(v56 + 64)), vextq_s8(v68, v68, 0xCuLL), v61), v61);
      v13 = vaddq_f32(v13, xmmword_2603429B0);
      ++v11;
    }

    while (v11 < v6);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcColorGamma_2vuy_yxzx_expand::GetDOD(HgcColorGamma_2vuy_yxzx_expand *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    v7 = HGRectMake4i(0xFFFFFFFF, 0, a3, 0);
    v8 = HGRectGrow(v6, v5, v7);
    v9 = HGRectFloat(v8);
    v13 = HGRectScale(v9, v10, v11, v12, 2.0);
    v18 = HGRectIntegral(v14, v13, v15, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

uint64_t HgcColorGamma_2vuy_yxzx_expand::GetROI(HgcColorGamma_2vuy_yxzx_expand *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 0.5);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    v16 = v15;
    v17 = HGRectMake4i(0, 0, 1u, 0);
    v18 = HGRectGrow(v14, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

void HgcColorGamma_2vuy_yxzx_expand::HgcColorGamma_2vuy_yxzx_expand(HgcColorGamma_2vuy_yxzx_expand *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872390C0;
  operator new();
}

void HgcColorGamma_2vuy_yxzx_expand::~HgcColorGamma_2vuy_yxzx_expand(HgcColorGamma_2vuy_yxzx_expand *this)
{
  *this = &unk_2872390C0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_2872390C0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcColorGamma_2vuy_yxzx_expand::~HgcColorGamma_2vuy_yxzx_expand(HGNode *this)
{
  *this = &unk_2872390C0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcPremultiply::GetProgram(HgcPremultiply *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000245\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=d94e4443:daab1afb:2b68adf7:815e6ba9\n//SIG=00400000:00000001:00000001:00000001:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000237\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=a13a6a2f:33512419:9d3fb3a8:463fe70f\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001d9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=ebd2844b:d31991ae:bbb76419:aca54bd2\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE1959C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE195CC(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE195C4);
}

uint64_t HgcPremultiply::BindTexture(HgcPremultiply *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcPremultiply::RenderTile(HgcPremultiply *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v25 = 0;
        v26 = 16 * v7;
        v27 = 16 * v6;
        v28 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v29 = 0;
          do
          {
            v5[v29 / 0x10] = vbslq_s8(**(this + 51), v4[v29 / 0x10], vmulq_laneq_f32(v4[v29 / 0x10], v4[v29 / 0x10], 3));
            v29 += 16;
          }

          while (v28 != v29);
          ++v25;
          v4 = (v4 + v26);
          v5 = (v5 + v27);
        }

        while (v25 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = v14;
          v19 = **(this + 51);
          v20 = vbslq_s8(v19, v4[v16 - 1], vmulq_laneq_f32(v4[v16 - 1], v4[v16 - 1], 3));
          v21 = vbslq_s8(v19, v4[v16], vmulq_laneq_f32(v4[v16], v4[v16], 3));
          v22 = vbslq_s8(v19, v4[v16 + 1], vmulq_laneq_f32(v4[v16 + 1], v4[v16 + 1], 3));
          v23 = &v5[v16];
          v23[-2] = vbslq_s8(v19, v4[v16 - 2], vmulq_laneq_f32(v4[v16 - 2], v4[v16 - 2], 3));
          v23[-1] = v20;
          v13 += 4;
          *v23 = v21;
          v23[1] = v22;
          v16 += 4;
          v15 += 4;
          v14 = v18 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v24 = *v17++;
            *v18++ = vbslq_s8(**(this + 51), v24, vmulq_laneq_f32(v24, v24, 3));
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcPremultiply::GetDOD(HgcPremultiply *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcPremultiply::GetROI(HgcPremultiply *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcPremultiply::HgcPremultiply(HgcPremultiply *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287239328;
  operator new();
}

void HgcPremultiply::~HgcPremultiply(HgcPremultiply *this)
{
  *this = &unk_287239328;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40451B5BE8);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcPremultiply::~HgcPremultiply(HGNode *this)
{
  *this = &unk_287239328;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcToneParamCurve4::GetProgram(HgcToneParamCurve4 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003b2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = half3(hg_Params[1].xyz)*r0.xyz + half3(hg_Params[2].xyz);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xyz));\n    r1.xyz = r1.xyz + half3(hg_Params[5].xyz);\n    r2.xyz = r0.xyz - half3(hg_Params[4].xyz);\n    r3.xyz = r0.xyz*half3(hg_Params[3].xyz) + half3(hg_Params[6].xyz);\n    output.color0.xyz = select(float3(r1.xyz), float3(r3.xyz), float3(r2.xyz) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=1d41385c:778e5a27:1d60d889:a8729d7e\n//SIG=00400000:00000001:00000001:00000001:0000:0007:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000035c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = hg_Params[1].xyz*r0.xyz + hg_Params[2].xyz;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xyz);\n    r1.xyz = r1.xyz + hg_Params[5].xyz;\n    r2.xyz = r0.xyz - hg_Params[4].xyz;\n    r3.xyz = r0.xyz*hg_Params[3].xyz + hg_Params[6].xyz;\n    output.color0.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=13f252c1:8bebdb6c:281a8258:9f05e0c5\n//SIG=00000000:00000001:00000001:00000000:0000:0007:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000045e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nuniform mediump vec4 hg_ProgramLocal5;\nuniform mediump vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = hg_ProgramLocal1.xyz*r0.xyz + hg_ProgramLocal2.xyz;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xyz);\n    r1.xyz = r1.xyz + hg_ProgramLocal5.xyz;\n    r2.xyz = r0.xyz - hg_ProgramLocal4.xyz;\n    r3.xyz = r0.xyz*hg_ProgramLocal3.xyz + hg_ProgramLocal6.xyz;\n    gl_FragColor.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    gl_FragColor.w = r0.w;\n}\n//MD5=2ab6ce4c:9d775dbf:c9e5cc75:c3634fc7\n//SIG=00000000:00000001:00000001:00000000:0000:0007:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE19D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE19D88(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE19D80);
}

uint64_t HgcToneParamCurve4::BindTexture(HgcToneParamCurve4 *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcToneParamCurve4::Bind(HgcToneParamCurve4 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcToneParamCurve4::RenderTile(HgcToneParamCurve4 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    while (v4 < 2)
    {
      v9 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v6 += v8;
      v5 += v7;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v9 = 0;
    v10 = 16;
    for (i = v4; i > 1; i -= 2)
    {
      v12 = *(v6 + v10 - 16);
      v13 = *(v6 + v10);
      v14 = *(this + 51);
      v15 = *(v14 + 16);
      v17 = *(v14 + 32);
      v16 = *(v14 + 48);
      v18 = vaddq_f32(v17, vmulq_f32(v12, v15));
      v19 = vaddq_f32(v17, vmulq_f32(v13, v15));
      v20 = *(v14 + 96);
      v21 = *(v14 + 112);
      v22 = *(v14 + 128);
      v23 = *(v14 + 144);
      v24 = vorrq_s8(vandq_s8(v21, v18), v22);
      v25 = *(v14 + 160);
      v26 = *(v14 + 176);
      v27 = vorrq_s8(vandq_s8(v21, v19), v22);
      v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v19, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v19)));
      v29 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v18))), v26);
      v30 = *(v14 + 192);
      v31 = *(v14 + 208);
      v32 = vandq_s8(v22, vcgtq_f32(v24, v30));
      v33 = vandq_s8(v22, vcgtq_f32(v27, v30));
      v34 = vaddq_f32(v29, v32);
      v35 = vaddq_f32(vsubq_f32(v28, v26), v33);
      v36 = vsubq_f32(vsubq_f32(v24, v22), vmulq_f32(vmulq_f32(v31, v32), v24));
      v37 = vsubq_f32(vsubq_f32(v27, v22), vmulq_f32(vmulq_f32(v31, v33), v27));
      v38 = *(v14 + 224);
      v39 = *(v14 + 240);
      v40 = vaddq_f32(v38, vmulq_f32(v39, v36));
      v41 = vaddq_f32(v38, vmulq_f32(v39, v37));
      v42 = *(v14 + 256);
      v43 = *(v14 + 272);
      v44 = vmulq_f32(*v14, vaddq_f32(v35, vmulq_f32(v37, vaddq_f32(vaddq_f32(v42, vmulq_f32(v37, v43)), vmulq_f32(vmulq_f32(v37, v37), v41)))));
      v45 = *(v14 + 288);
      v46 = *(v14 + 304);
      v47 = vmaxq_f32(vmulq_f32(*v14, vaddq_f32(v34, vmulq_f32(v36, vaddq_f32(vaddq_f32(v42, vmulq_f32(v36, v43)), vmulq_f32(vmulq_f32(v36, v36), v40))))), v45);
      v48 = vmaxq_f32(v44, v45);
      v49 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
      v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
      v51 = vsubq_f32(v49, vandq_s8(v22, vcgtq_f32(v49, v47)));
      v52 = vsubq_f32(v50, vandq_s8(v22, vcgtq_f32(v50, v48)));
      v53 = vsubq_f32(v47, v51);
      v54 = vsubq_f32(v48, v52);
      v55 = *(v14 + 320);
      v56 = *(v14 + 336);
      v57 = vmulq_f32(v54, vaddq_f32(v56, vmulq_f32(v54, vaddq_f32(v46, vmulq_f32(v55, v54)))));
      v58 = vaddq_f32(v22, vmulq_f32(v53, vaddq_f32(v56, vmulq_f32(v53, vaddq_f32(v46, vmulq_f32(v55, v53))))));
      v59 = vcvtq_s32_f32(v52);
      v60 = *(v14 + 352);
      v61 = *(v14 + 368);
      v62 = vaddq_f32(v22, v57);
      v63 = vmulq_f32(v58, vshlq_n_s32(vaddq_s32(v60, vcvtq_s32_f32(v51)), 0x17uLL));
      v65 = *(v14 + 64);
      v64 = *(v14 + 80);
      v66 = vaddq_f32(v64, v63);
      v67 = vaddq_f32(v64, vmulq_f32(v62, vshlq_n_s32(vaddq_s32(v60, v59), 0x17uLL)));
      v68 = vaddq_f32(v20, vmulq_f32(v12, v16));
      v69 = vbslq_s8(vcgtq_f32(v61, vsubq_f32(v13, v65)), vaddq_f32(v20, vmulq_f32(v13, v16)), v67);
      v70 = *(v14 + 384);
      v71 = (v5 + v10);
      v71[-1] = vbslq_s8(v70, v12, vbslq_s8(vcgtq_f32(v61, vsubq_f32(v12, v65)), v68, v66));
      *v71 = vbslq_s8(v70, v13, v69);
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v72 = 16 * v9;
    v73 = *(v6 + v72);
    v74 = *(this + 51);
    v75 = vaddq_f32(*(v74 + 32), vmulq_f32(v73, *(v74 + 16)));
    v76 = *(v74 + 128);
    v77 = vorrq_s8(vandq_s8(*(v74 + 112), v75), v76);
    v78 = vandq_s8(v76, vcgtq_f32(v77, *(v74 + 192)));
    v79 = vsubq_f32(vsubq_f32(v77, v76), vmulq_f32(vmulq_f32(*(v74 + 208), v78), v77));
    v80 = vmaxq_f32(vmulq_f32(*v74, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v75, 0x17uLL)), vandq_s8(*(v74 + 160), vcgtq_f32(*(v74 + 144), v75))), *(v74 + 176)), v78), vmulq_f32(v79, vaddq_f32(vaddq_f32(*(v74 + 256), vmulq_f32(v79, *(v74 + 272))), vmulq_f32(vmulq_f32(v79, v79), vaddq_f32(*(v74 + 224), vmulq_f32(*(v74 + 240), v79))))))), *(v74 + 288));
    v81 = vcvtq_f32_s32(vcvtq_s32_f32(v80));
    v82 = vsubq_f32(v81, vandq_s8(v76, vcgtq_f32(v81, v80)));
    v83 = vsubq_f32(v80, v82);
    *(v5 + v72) = vbslq_s8(*(v74 + 384), v73, vbslq_s8(vcgtq_f32(*(v74 + 368), vsubq_f32(v73, *(v74 + 64))), vaddq_f32(*(v74 + 96), vmulq_f32(v73, *(v74 + 48))), vaddq_f32(*(v74 + 80), vmulq_f32(vaddq_f32(v76, vmulq_f32(v83, vaddq_f32(*(v74 + 336), vmulq_f32(v83, vaddq_f32(*(v74 + 304), vmulq_f32(*(v74 + 320), v83)))))), vshlq_n_s32(vaddq_s32(*(v74 + 352), vcvtq_s32_f32(v82)), 0x17uLL)))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcToneParamCurve4::GetDOD(HgcToneParamCurve4 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcToneParamCurve4::GetROI(HgcToneParamCurve4 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcToneParamCurve4::HgcToneParamCurve4(HgcToneParamCurve4 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287239590;
  operator new();
}

void HgcToneParamCurve4::~HgcToneParamCurve4(HgcToneParamCurve4 *this)
{
  *this = &unk_287239590;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C402BC884A0);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcToneParamCurve4::~HgcToneParamCurve4(HGNode *this)
{
  *this = &unk_287239590;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C402BC884A0);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcToneParamCurve4::SetParameter(HgcToneParamCurve4 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcToneParamCurve4::GetParameter(HgcToneParamCurve4 *this, unsigned int a2, float *a3)
{
  if (a2 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcColorGamma_v210_yxzx_rgba_expand::GetProgram(HgcColorGamma_v210_yxzx_rgba_expand *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000955\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.1666669995, 1.000000000, 4.000000000, 0.5000000000);\n    const half4 c1 = half4(6.000000000, 1.000000000, 0.000000000, 5.000000000);\n    const half4 c2 = half4(3.000000000, 2.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy*float2(c0.xy);\n    s0.xy = floor(s0.xy);\n    s0.xy = s0.xy*float2(c0.zy) + float2(c0.ww);\n    s1.xyz = floor(frag._texCoord0.xxx);\n    s1.xyz = s1.xyz - float3(c1.xxx)*floor(s1.xyz/float3(c1.xxx));\n    s2.xy = s0.xy + hg_Params[0].xy;\n    s2.xy = s2.xy*hg_Params[0].zw;\n    r0.xyz = (half3) hg_Texture0.sample(hg_Sampler0, s2.xy).xyz;\n    s0.xy = s0.xy + float2(c1.yz);\n    s2.xy = s0.xy + hg_Params[0].xy;\n    s2.xy = s2.xy*hg_Params[0].zw;\n    r1.xyz = (half3) hg_Texture0.sample(hg_Sampler0, s2.xy).xyz;\n    s0.xy = s0.xy + float2(c1.yz);\n    s2.xy = s0.xy + hg_Params[0].xy;\n    s2.xy = s2.xy*hg_Params[0].zw;\n    r2.xyz = (half3) hg_Texture0.sample(hg_Sampler0, s2.xy).xyz;\n    s0.xy = s0.xy + float2(c1.yz);\n    s0.xy = s0.xy + hg_Params[0].xy;\n    s0.xy = s0.xy*hg_Params[0].zw;\n    r3.xyz = (half3) hg_Texture0.sample(hg_Sampler0, s0.xy).xyz;\n    r0.xyz = r0.yxz;\n    r4.yz = r0.yz;\n    r4.x = r1.x;\n    r1.xy = r1.zy;\n    r1.z = r2.x;\n    r5.yz = r1.yz;\n    r5.x = r2.y;\n    r6.xz = r3.xy;\n    r6.y = r2.z;\n    r2.yz = r6.yz;\n    r2.x = r3.z;\n    s2.xyz = s1.xyz - float3(c1.www);\n    s2.xyz = select(float3(r2.xyz), float3(r6.xyz), s2.xyz < 0.00000h);\n    s0.xyz = s1.xyz - float3(c0.zzz);\n    s2.xyz = select(s2.xyz, float3(r5.xyz), s0.xyz < 0.00000h);\n    s0.xyz = s1.xyz - float3(c2.xxx);\n    s2.xyz = select(s2.xyz, float3(r1.xyz), s0.xyz < 0.00000h);\n    s0.xyz = s1.xyz - float3(c2.yyy);\n    s2.xyz = select(s2.xyz, float3(r4.xyz), s0.xyz < 0.00000h);\n    s1.xyz = s1.xyz - float3(c1.yyy);\n    s2.xyz = select(s2.xyz, float3(r0.xyz), s1.xyz < 0.00000h);\n    s2.w = float(c1.y);\n    output.color0 = s2;\n    return output;\n}\n//MD5=9faef4db:63ae184b:410e2309:949438a2\n//SIG=00400000:00000000:00000000:00000001:0003:0001:000a:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000088b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.1666669995, 1.000000000, 4.000000000, 0.5000000000);\n    const float4 c1 = float4(6.000000000, 1.000000000, 0.000000000, 5.000000000);\n    const float4 c2 = float4(3.000000000, 2.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6, r7;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy*c0.xy;\n    r0.xy = floor(r0.xy);\n    r0.xy = r0.xy*c0.zy + c0.ww;\n    r1.xyz = floor(frag._texCoord0.xxx);\n    r1.xyz = r1.xyz - c1.xxx*floor(r1.xyz/c1.xxx);\n    r2.xy = r0.xy + hg_Params[0].xy;\n    r2.xy = r2.xy*hg_Params[0].zw;\n    r2.xyz = hg_Texture0.sample(hg_Sampler0, r2.xy).xyz;\n    r0.xy = r0.xy + c1.yz;\n    r3.xy = r0.xy + hg_Params[0].xy;\n    r3.xy = r3.xy*hg_Params[0].zw;\n    r3.xyz = hg_Texture0.sample(hg_Sampler0, r3.xy).xyz;\n    r0.xy = r0.xy + c1.yz;\n    r4.xy = r0.xy + hg_Params[0].xy;\n    r4.xy = r4.xy*hg_Params[0].zw;\n    r4.xyz = hg_Texture0.sample(hg_Sampler0, r4.xy).xyz;\n    r0.xy = r0.xy + c1.yz;\n    r0.xy = r0.xy + hg_Params[0].xy;\n    r0.xy = r0.xy*hg_Params[0].zw;\n    r0.xyz = hg_Texture0.sample(hg_Sampler0, r0.xy).xyz;\n    r2.xyz = r2.yxz;\n    r5.yz = r2.yz;\n    r5.x = r3.x;\n    r3.xy = r3.zy;\n    r3.z = r4.x;\n    r6.yz = r3.yz;\n    r6.x = r4.y;\n    r7.xz = r0.xy;\n    r7.y = r4.z;\n    r4.yz = r7.yz;\n    r4.x = r0.z;\n    r0.xyz = r1.xyz - c1.www;\n    r4.xyz = select(r4.xyz, r7.xyz, r0.xyz < 0.00000f);\n    r0.xyz = r1.xyz - c0.zzz;\n    r4.xyz = select(r4.xyz, r6.xyz, r0.xyz < 0.00000f);\n    r7.xyz = r1.xyz - c2.xxx;\n    r4.xyz = select(r4.xyz, r3.xyz, r7.xyz < 0.00000f);\n    r0.xyz = r1.xyz - c2.yyy;\n    r4.xyz = select(r4.xyz, r5.xyz, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz - c1.yyy;\n    r4.xyz = select(r4.xyz, r2.xyz, r1.xyz < 0.00000f);\n    r4.w = c1.y;\n    output.color0 = r4;\n    return output;\n}\n//MD5=d483035d:436789a8:f3f21232:16bff0a5\n//SIG=00000000:00000000:00000000:00000000:0003:0001:0008:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000094f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.1666669995, 1.000000000, 4.000000000, 0.5000000000);\n    const highp vec4 c1 = vec4(6.000000000, 1.000000000, 0.000000000, 5.000000000);\n    const highp vec4 c2 = vec4(3.000000000, 2.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3, r4, r5, r6, r7;\n\n    r0.xy = hg_TexCoord0.xy*c0.xy;\n    r0.xy = floor(r0.xy);\n    r0.xy = r0.xy*c0.zy + c0.ww;\n    r1.xyz = floor(hg_TexCoord0.xxx);\n    r1.xyz = mod(r1.xyz, c1.xxx);\n    r2.xy = r0.xy + hg_ProgramLocal0.xy;\n    r2.xy = r2.xy*hg_ProgramLocal0.zw;\n    r2.xyz = texture2D(hg_Texture0, r2.xy).xyz;\n    r0.xy = r0.xy + c1.yz;\n    r3.xy = r0.xy + hg_ProgramLocal0.xy;\n    r3.xy = r3.xy*hg_ProgramLocal0.zw;\n    r3.xyz = texture2D(hg_Texture0, r3.xy).xyz;\n    r0.xy = r0.xy + c1.yz;\n    r4.xy = r0.xy + hg_ProgramLocal0.xy;\n    r4.xy = r4.xy*hg_ProgramLocal0.zw;\n    r4.xyz = texture2D(hg_Texture0, r4.xy).xyz;\n    r0.xy = r0.xy + c1.yz;\n    r0.xy = r0.xy + hg_ProgramLocal0.xy;\n    r0.xy = r0.xy*hg_ProgramLocal0.zw;\n    r0.xyz = texture2D(hg_Texture0, r0.xy).xyz;\n    r2.xyz = r2.yxz;\n    r5.yz = r2.yz;\n    r5.x = r3.x;\n    r3.xy = r3.zy;\n    r3.z = r4.x;\n    r6.yz = r3.yz;\n    r6.x = r4.y;\n    r7.xz = r0.xy;\n    r7.y = r4.z;\n    r4.yz = r7.yz;\n    r4.x = r0.z;\n    r0.xyz = r1.xyz - c1.www;\n    r4.xyz = vec3(r0.x < 0.00000 ? r7.x : r4.x, r0.y < 0.00000 ? r7.y : r4.y, r0.z < 0.00000 ? r7.z : r4.z);\n    r0.xyz = r1.xyz - c0.zzz;\n    r4.xyz = vec3(r0.x < 0.00000 ? r6.x : r4.x, r0.y < 0.00000 ? r6.y : r4.y, r0.z < 0.00000 ? r6.z : r4.z);\n    r7.xyz = r1.xyz - c2.xxx;\n    r4.xyz = vec3(r7.x < 0.00000 ? r3.x : r4.x, r7.y < 0.00000 ? r3.y : r4.y, r7.z < 0.00000 ? r3.z : r4.z);\n    r0.xyz = r1.xyz - c2.yyy;\n    r4.xyz = vec3(r0.x < 0.00000 ? r5.x : r4.x, r0.y < 0.00000 ? r5.y : r4.y, r0.z < 0.00000 ? r5.z : r4.z);\n    r1.xyz = r1.xyz - c1.yyy;\n    r4.xyz = vec3(r1.x < 0.00000 ? r2.x : r4.x, r1.y < 0.00000 ? r2.y : r4.y, r1.z < 0.00000 ? r2.z : r4.z);\n    r4.w = c1.y;\n    gl_FragColor = r4;\n}\n//MD5=81b6259d:b55db391:9900b607:19b19d79\n//SIG=00000000:00000000:00000000:00000000:0003:0001:0008:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE1AB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE1ABD4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE1ABCCLL);
}

uint64_t HgcColorGamma_v210_yxzx_rgba_expand::BindTexture(HgcColorGamma_v210_yxzx_rgba_expand *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v5.n128_f32[0] = *(a2 + 60);
  v6.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 136))(a2, 0, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcColorGamma_v210_yxzx_rgba_expand::Bind(HgcColorGamma_v210_yxzx_rgba_expand *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcColorGamma_v210_yxzx_rgba_expand::RenderTile(HgcColorGamma_v210_yxzx_rgba_expand *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = a2[1].i32[0] - v2.i32[0];
    if (v4 >= 1)
    {
      v5 = 0;
      *v6.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
      v6.i64[1] = 0x3F80000000000000;
      v7 = a2[2];
      v8 = 16 * a2[3].i32[0];
      v9 = 16 * v4;
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v11 = v6;
      do
      {
        v12 = 0;
        v13 = v11;
        do
        {
          v14 = *(this + 51);
          v15 = *(v14 + 16);
          v16 = vmulq_f32(v13, *v14);
          v17 = vcvtq_f32_s32(vcvtq_s32_f32(v16));
          v18 = vmulq_f32(*(v14 + 48), vsubq_f32(v17, vandq_s8(v15, vcgtq_f32(v17, v16))));
          v19 = vdupq_lane_s32(*v13.f32, 0);
          v20 = vcvtq_f32_s32(vcvtq_s32_f32(v19));
          v21 = vaddq_f32(*(v14 + 32), v18);
          v22 = vmulq_f32(*(v14 + 64), vsubq_f32(v20, vandq_s8(v15, vcgtq_f32(v20, v19))));
          v23 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
          v24 = a2[10];
          v25 = &a2[11];
          v26 = vaddq_f32(vsubq_f32(v21, v6), v10);
          v27 = vmulq_f32(*(v14 + 80), vsubq_f32(v22, vsubq_f32(v23, vandq_s8(v15, vcgtq_f32(v23, v22)))));
          v28 = vcvtq_s32_f32(v26);
          v29 = *(v14 + 96);
          v30 = *(v14 + 112);
          v31 = vaddq_f32(v21, v29);
          v32 = vaddq_f32(vsubq_f32(v31, v6), v10);
          v33 = vcvtq_s32_f32(v32);
          *v26.f32 = vadd_s32(*v28.i8, *&vcgtq_f32(vcvtq_f32_s32(v28), v26));
          *v28.i8 = vadd_s32(*v33.i8, *&vcgtq_f32(vcvtq_f32_s32(v33), v32));
          *v32.f32 = vzip2_s32(*v26.f32, *v28.i8);
          *v33.i8 = vld1_dup_f32(v25);
          v34 = vaddq_f32(v29, v31);
          *v26.f32 = vzip1_s32(*v26.f32, *v28.i8);
          v35 = vaddq_f32(vsubq_f32(v34, v6), v10);
          v36 = vcvtq_s32_f32(v35);
          *v26.f32 = vmla_s32(*v26.f32, *v32.f32, *v33.i8);
          v37 = vaddq_f32(vsubq_f32(vaddq_f32(v29, v34), v6), v10);
          v38 = vcvtq_s32_f32(v37);
          *v35.f32 = vadd_s32(*v36.i8, *&vcgtq_f32(vcvtq_f32_s32(v36), v35));
          *v37.f32 = vadd_s32(*v38.i8, *&vcgtq_f32(vcvtq_f32_s32(v38), v37));
          v39 = *(*&v24 + 16 * v26.i32[1]);
          *v37.f32 = vmla_s32(vzip1_s32(*v35.f32, *v37.f32), vzip2_s32(*v35.f32, *v37.f32), *v33.i8);
          LODWORD(v25) = v37.i32[1];
          v40 = *(*&v24 + 16 * v26.i32[0]);
          v41 = v37.i32[0];
          *v37.f32 = vqtbl1_s8(v40, *v30.i8);
          v42 = *(*&v24 + 16 * v41);
          *&v37.u32[2] = vqtbl1_s8(v40, *&vextq_s8(v30, v30, 8uLL));
          v43 = *(*&v24 + 16 * v25);
          *v30.i8 = vqtbl1_s8(v39, *(v14 + 144));
          v30.i64[1] = *(*&v24 + 16 * v41);
          v44 = vrev64q_s32(v42);
          v45.i64[0] = v43.u32[0];
          v45.i64[1] = v43.u32[1];
          v46 = vbslq_s8(*(v14 + 160), vextq_s8(v42, v42, 4uLL), v45);
          v47 = *(v14 + 192);
          v48 = vbslq_s8(vcgtq_f32(v47, vsubq_f32(v27, v15)), v37, vbslq_s8(vcgtq_f32(v47, vsubq_f32(v27, *(v14 + 240))), vbslq_s8(*(v14 + 128), v39, v37), vbslq_s8(vcgtq_f32(v47, vsubq_f32(v27, *(v14 + 224))), v30, vbslq_s8(vcgtq_f32(v47, vsubq_f32(v27, *(v14 + 208))), vbslq_s8(*(v14 + 128), v44, v30), vbslq_s8(vcgtq_f32(v47, vsubq_f32(v27, *(v14 + 176))), v46, vbslq_s8(*(v14 + 128), vextq_s8(v43, v43, 8uLL), v46))))));
          v48.i32[3] = 1.0;
          *(*&v7 + v12) = v48;
          v13 = vaddq_f32(v13, xmmword_2603429B0);
          v12 += 16;
        }

        while (v9 != v12);
        v11 = vaddq_f32(v11, xmmword_2603429C0);
        ++v5;
        *&v7 += v8;
      }

      while (v5 != v3);
    }
  }

  return 0;
}

uint64_t HgcColorGamma_v210_yxzx_rgba_expand::GetDOD(HgcColorGamma_v210_yxzx_rgba_expand *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcColorGamma_v210_yxzx_rgba_expand::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcColorGamma_v210_yxzx_rgba_expand::HgcColorGamma_v210_yxzx_rgba_expand(HgcColorGamma_v210_yxzx_rgba_expand *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872397F8;
  operator new();
}

void HgcColorGamma_v210_yxzx_rgba_expand::~HgcColorGamma_v210_yxzx_rgba_expand(HgcColorGamma_v210_yxzx_rgba_expand *this)
{
  *this = &unk_2872397F8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40104B78CFLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_2872397F8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40104B78CFLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcColorGamma_v210_yxzx_rgba_expand::~HgcColorGamma_v210_yxzx_rgba_expand(HGNode *this)
{
  *this = &unk_2872397F8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40104B78CFLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcBlur_g4u2_noborder::GetProgram(HgcBlur_g4u2_noborder *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n"
             "//LEN=0000000c4a\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]], \n"
             "    texture2d< half > hg_Texture0 [[ texture(0) ]], \n"
             "    sampler hg_Sampler0 [[ sampler(0) ]])\n"
             "{\n"
             "    const half4 c0 = half4(0.5000000000, 0.5000000000, 0.000000000, 0.000000000);\n"
             "    half4 r0, r1, r2, r3;\n"
             "    float4 s0, s1, s2, s3, s4, s5, s6, s7, s8, s9;\n"
             "    FragmentOut output;\n"
             "\n"
             "    s0.xy = frag._texCoord1.xy*hg_Params[4].xy;\n"
             "    s1.xy = s0.xy + frag._texCoord0.xy;\n"
             "    s1.zw = s1.xy + hg_Params[5].xy;\n"
             "    s0.xy = s1.zw + hg_Params[7].xy;\n"
             "    s0.zw = s0.xy*hg_Params[7].zw;\n"
             "    s0.xy = s0.zw + -float2(c0.xx);\n"
             "    s0.xy = s0.xy*hg_Params[8].zw;\n"
             "    s0.xy = abs(s0.xy);\n"
             "    s8.xy = s0.zw*hg_Params[9].xy;\n"
             "    s8.xy = fmax(s8.xy, float2(c0.xy));\n"
             "    s9.xy = hg_Params[9].xy - float2(c0.xy);\n"
             "    s8.xy = fmin(s8.xy, s9.xy);\n"
             "    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s8.xy);\n"
             "    s0.zw = clamp(-s0.xy + hg_Params[8].xy, 0.00000f, 1.00000f);\n"
             "    s0.xy = s1.xy + hg_Params[7].xy;\n"
             "    s0.z = s0.z*s0.w;\n"
             "    s0.xy = s0.xy*hg_Params[7].zw;\n"
             "    s2.xy = s0.xy + -float2(c0.xx);\n"
             "    s2.zw = s2.xy*hg_Params[8].zw;\n"
             "    s2.xy = s1.zw + hg_Params[6].xy;\n"
             "    s3 = float4(r0)*s0.zzzz;\n"
             "    s2.zw = abs(s2.zw);\n"
             "    s2.zw = clamp(-s2.zw + hg_Params[8].xy, 0.00000f, 1.00000f);\n"
             "    s2.xy = s2.xy + hg_Params[7].xy;\n"
             "    s2.xy = s2.xy*hg_Params[7].zw;\n"
             "    s2.z = s2.z*s2.w;\n"
             "    s9.xy = s0.xy*hg_Params[9].xy;\n"
             "    s9.xy = fmax(s9.xy, float2(c0.xy));\n"
             "    s8.xy = hg_Params[9].xy - float2(c0.xy);\n"
             "    s9.xy = fmin(s9.xy, s8.xy);\n"
             "    r1 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n"
             "    s4 = float4(r1)*s2.zzzz + s3;\n"
             "    s2.zw = s1.xy + -hg_Params[6].xy;\n"
             "    s8.xy = s2.xy*hg_Params[9].xy;\n"
             "    s8.xy = fmax(s8.xy, float2(c0.xy));\n"
             "    s9.xy = hg_Params[9].xy - float2(c0.xy);\n"
             "    s8.xy = fmin(s8.xy, s9.xy);\n"
             "    r2 = (half4) hg_Texture0.sample(hg_Sampler0, s8.xy);\n"
             "    s2.zw = s2.zw + hg_Params[7].xy;\n"
             "    s2.xy = s2.xy + -float2(c0.xx);\n"
             "    s5.xy = s2.zw*hg_Params[7].zw;\n"
             "    s2.xy = s2.xy*hg_Params[8].zw;\n"
             "    s2.zw = abs(s2.xy);\n"
             "    s2.xy = s5.xy + -float2(c0.xx);\n"
             "    s2.zw = clamp(-s2.zw + hg_Params[8].xy, 0.00000f, 1.00000f);\n"
             "    s2.xy = s2.xy*hg_Params[8].zw;\n"
             "    s5.zw = abs(s2.xy);\n"
             "    s2.z = s2.z*s2.w;\n"
             "    s2 = float4(r2)*s2.zzzz;\n"
             "    s9.xy = s5.xy*hg_Params[9].xy;\n"
             "    s9.xy = fmax(s9.xy, float2(c0.xy));\n"
             "    s8.xy = hg_Params[9].xy - float2(c0.xy);\n"
             "    s9.xy = fmin(s9.xy, s8.xy);\n"
             "    r2 = (half4) hg_Texture0.sample(hg_Sampler0, s9.xy);\n"
             "    s5.zw = clamp(-s5.zw + hg_Params[8].xy, 0.00000f, 1.00000f);\n"
             "    s5.x = s5.z*s5.w;\n"
             "    s2 = float4(r2)*s5.xxxx + s2;\n"
             "    r2 = half4(hg_Params[0]);\n"
             "    r3 = half4(hg_Params[1]);\n"
             "    s1.xy = floor(s1.xy);\n"
             "    s1.zw = floor(s1.zw);\n"
             "    s1.xy = s1.zw + -s1.xy;\n"
             "    s1.x = s1.x + s1.y;\n"
             "    r3 = -r3 + half4(hg_Params[3]);\n"
             "    s6 = s1.xxxx*float4(r3) + hg_Params[1];\n"
             "    r2 = -r2 + half4(hg_Params[2]);\n"
             "    s2 = s2*s6;\n"
             "    s7 = s1.xxxx*float4(r2) + hg_Params[0];\n"
             "    output.color0 = s4*s7 + s2;\n"
             "    return output;\n"
             "}\n"
             "//MD5=5c82e3c7:07ba83f7:2ad9cba3:69e3d725\n"
             "//SIG=00400000:00000000:00000000:00000001:0001:000a:000e:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000b5b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.5000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord1.xy*hg_Params[4].xy;\n    r4.xy = r0.xy + frag._texCoord0.xy;\n    r4.zw = r4.xy + hg_Params[5].xy;\n    r0.xy = r4.zw + hg_Params[7].xy;\n    r0.zw = r0.xy*hg_Params[7].zw;\n    r0.xy = r0.zw + -c0.xx;\n    r0.xy = r0.xy*hg_Params[8].zw;\n    r0.xy = abs(r0.xy);\n    r5.xy = r0.zw*hg_Params[9].xy;\n    r5.xy = fmax(r5.xy, c0.xy);\n    r6.xy = hg_Params[9].xy - c0.xy;\n    r5.xy = fmin(r5.xy, r6.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, r5.xy);\n    r0.zw = clamp(-r0.xy + hg_Params[8].xy, 0.00000f, 1.00000f);\n    r0.xy = r4.xy + hg_Params[7].xy;\n    r0.z = r0.z*r0.w;\n    r0.xy = r0.xy*hg_Params[7].zw;\n    r2.xy = r0.xy + -c0.xx;\n    r2.zw = r2.xy*hg_Params[8].zw;\n    r2.xy = r4.zw + hg_Params[6].xy;\n    r1 = r1*r0.zzzz;\n    r2.zw = abs(r2.zw);\n    r2.zw = clamp(-r2.zw + hg_Params[8].xy, 0.00000f, 1.00000f);\n    r2.xy = r2.xy + hg_Params[7].xy;\n    r2.xy = r2.xy*hg_Params[7].zw;\n    r2.z = r2.z*r2.w;\n    r6.xy = r0.xy*hg_Params[9].xy;\n    r6.xy = fmax(r6.xy, c0.xy);\n    r5.xy = hg_Params[9].xy - c0.xy;\n    r6.xy = fmin(r6.xy, r5.xy);\n    r0 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n    r0 = r0*r2.zzzz + r1;\n    r2.zw = r4.xy + -hg_Params[6].xy;\n    r5.xy = r2.xy*hg_Params[9].xy;\n    r5.xy = fmax(r5.xy, c0.xy);\n    r6.xy = hg_Params[9].xy - c0.xy;\n    r5.xy = fmin(r5.xy, r6.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, r5.xy);\n    r2.zw = r2.zw + hg_Params[7].xy;\n    r2.xy = r2.xy + -c0.xx;\n    r3.xy = r2.zw*hg_Params[7].zw;\n    r2.xy = r2.xy*hg_Params[8].zw;\n    r2.zw = abs(r2.xy);\n    r2.xy = r3.xy + -c0.xx;\n    r2.zw = clamp(-r2.zw + hg_Params[8].xy, 0.00000f, 1.00000f);\n    r2.xy = r2.xy*hg_Params[8].zw;\n    r3.zw = abs(r2.xy);\n    r2.z = r2.z*r2.w;\n    r2 = r1*r2.zzzz;\n    r6.xy = r3.xy*hg_Params[9].xy;\n    r6.xy = fmax(r6.xy, c0.xy);\n    r5.xy = hg_Params[9].xy - c0.xy;\n    r6.xy = fmin(r6.xy, r5.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, r6.xy);\n    r3.zw = clamp(-r3.zw + hg_Params[8].xy, 0.00000f, 1.00000f);\n    r3.x = r3.z*r3.w;\n    r2 = r1*r3.xxxx + r2;\n    r1 = hg_Params[0];\n    r3 = hg_Params[1];\n    r4.xy = floor(r4.xy);\n    r4.zw = floor(r4.zw);\n    r4.xy = r4.zw + -r4.xy;\n    r4.x = r4.x + r4.y;\n    r3 = -r3 + hg_Params[3];\n    r3 = r4.xxxx*r3 + hg_Params[1];\n    r1 = -r1 + hg_Params[2];\n    r2 = r2*r3;\n    r1 = r4.xxxx*r1 + hg_Params[0];\n    output.color0 = r0*r1 + r2;\n    return output;\n}\n//MD5=bc2fcd6f:3857ab61:c84a8e17:e752aad0\n//SIG=00000000:00000000:00000000:00000000:0001:000a:0007:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000bec\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    const highp vec4 c1 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3, r4, r5;\n\n    r0.xy = hg_TexCoord1.xy*hg_ProgramLocal4.xy;\n    r4.xy = r0.xy + hg_TexCoord0.xy;\n    r4.zw = r4.xy + hg_ProgramLocal5.xy;\n    r0.xy = r4.zw + hg_ProgramLocal7.xy;\n    r0.zw = r0.xy*hg_ProgramLocal7.zw;\n    r0.xy = r0.zw + -c0.xx;\n    r0.xy = r0.xy*hg_ProgramLocal8.zw;\n    r0.xy = abs(r0.xy);\n    r5.xy = hg_ProgramLocal9.xy*c1.xy + r0.zw;\n    r1 = texture2D(hg_Texture0, r5.xy);\n    r0.zw = clamp(-r0.xy + hg_ProgramLocal8.xy, vec2(0.00000), vec2(1.00000));\n    r0.xy = r4.xy + hg_ProgramLocal7.xy;\n    r0.z = r0.z*r0.w;\n    r0.xy = r0.xy*hg_ProgramLocal7.zw;\n    r2.xy = r0.xy + -c0.xx;\n    r2.zw = r2.xy*hg_ProgramLocal8.zw;\n    r2.xy = r4.zw + hg_ProgramLocal6.xy;\n    r1 = r1*r0.zzzz;\n    r2.zw = abs(r2.zw);\n    r2.zw = clamp(-r2.zw + hg_ProgramLocal8.xy, vec2(0.00000), vec2(1.00000));\n    r2.xy = r2.xy + hg_ProgramLocal7.xy;\n    r2.xy = r2.xy*hg_ProgramLocal7.zw;\n    r2.z = r2.z*r2.w;\n    r5.xy = hg_ProgramLocal9.xy*c1.xy + r0.xy;\n    r0 = texture2D(hg_Texture0, r5.xy);\n    r0 = r0*r2.zzzz + r1;\n    r2.zw = r4.xy + -hg_ProgramLocal6.xy;\n    r5.xy = hg_ProgramLocal9.xy*c1.xy + r2.xy;\n    r1 = texture2D(hg_Texture0, r5.xy);\n    r2.zw = r2.zw + hg_ProgramLocal7.xy;\n    r2.xy = r2.xy + -c0.xx;\n    r3.xy = r2.zw*hg_ProgramLocal7.zw;\n    r2.xy = r2.xy*hg_ProgramLocal8.zw;\n    r2.zw = abs(r2.xy);\n    r2.xy = r3.xy + -c0.xx;\n    r2.zw = clamp(-r2.zw + hg_ProgramLocal8.xy, vec2(0.00000), vec2(1.00000));\n    r2.xy = r2.xy*hg_ProgramLocal8.zw;\n    r3.zw = abs(r2.xy);\n    r2.z = r2.z*r2.w;\n    r2 = r1*r2.zzzz;\n    r5.xy = hg_ProgramLocal9.xy*c1.xy + r3.xy;\n    r1 = texture2D(hg_Texture0, r5.xy);\n    r3.zw = clamp(-r3.zw + hg_ProgramLocal8.xy, vec2(0.00000), vec2(1.00000));\n    r3.x = r3.z*r3.w;\n    r2 = r1*r3.xxxx + r2;\n    r1 = hg_ProgramLocal0;\n    r3 = hg_ProgramLocal1;\n    r4.xy = floor(r4.xy);\n    r4.zw = floor(r4.zw);\n    r4.xy = r4.zw + -r4.xy;\n    r4.x = r4.x + r4.y;\n    r3 = -r3 + hg_ProgramLocal3;\n    r3 = r4.xxxx*r3 + hg_ProgramLocal1;\n    r1 = -r1 + hg_ProgramLocal2;\n    r2 = r2*r3;\n    r1 = r4.xxxx*r1 + hg_ProgramLocal0;\n    gl_FragColor = r0*r1 + r2;\n}\n//MD5=a34df5a0:4fe9daf3:c474f320:d4b51f6c\n//SIG=00000000:00000000:00000000:00000000:0002:000a:0006:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FE1B814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE1B850(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE1B848);
}

uint64_t HgcBlur_g4u2_noborder::BindTexture(HgcBlur_g4u2_noborder *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
  {
    (*(*a2 + 72))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
  }

  (*(*a2 + 136))(a2, 9, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), 0.0, 0.0);
  return 0;
}

uint64_t HgcBlur_g4u2_noborder::Bind(HgcBlur_g4u2_noborder *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBlur_g4u2_noborder::RenderTile(HgcBlur_g4u2_noborder *this, int32x2_t *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *a2;
  v7 = a2[1].i32[1] - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = a2[1].i32[0] - v6.i32[0];
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = vcvt_f32_s32(vsub_s32(a2[27], a2[26]));
      __asm { FMOV            V3.2S, #-1.0 }

      v16 = vadd_f32(v10, _D3);
      *v17.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
      v17.i64[1] = 0x3F80000000000000;
      v18 = vadd_f32(v16, _D3);
      v19 = a2[2];
      v20 = 16 * a2[3].i32[0];
      v21 = 16 * v8;
      v22 = v17;
      do
      {
        v23 = 0;
        v24 = v17;
        v25 = v22;
        do
        {
          v45 = *(this + 51);
          v46 = vaddq_f32(v24, vmulq_f32(v25, *(v45 + 64)));
          v47 = vdupq_lane_s64(vaddq_f32(*(v45 + 80), v46).i64[0], 0);
          v48 = vextq_s8(v47, v47, 8uLL).u64[0];
          v49 = *(v45 + 112);
          v50 = vextq_s8(v49, v49, 8uLL);
          *v51.f32 = vmul_f32(*v50.f32, vadd_f32(*v49.f32, v48));
          v52 = a2[10];
          v53 = a2[11].i32[0];
          v54 = vmul_f32(v10, *v51.f32);
          if (v5)
          {
            v55 = vmin_f32(vmax_f32(vadd_f32(v54, 0xBF000000BF000000), 0), v16);
            v56 = vcvt_s32_f32(vmin_f32(v55, v18));
            v57 = vsub_f32(v55, vcvt_f32_s32(v56));
            v58 = (*&v52 + 16 * (v56.i32[0] + v56.i32[1] * v53));
            v59 = vaddq_f32(*v58, vmulq_n_f32(vsubq_f32(v58[1], *v58), v57.f32[0]));
            v60 = vaddq_f32(v59, vmulq_lane_f32(vsubq_f32(vaddq_f32(v58[v53], vmulq_n_f32(vsubq_f32(v58[v53 + 1], v58[v53]), v57.f32[0])), v59), v57, 1));
            v61.i64[1] = v47.i64[1];
            v61.i64[0] = v46.i64[0];
            v62 = vmulq_f32(v50, vaddq_f32(v49, v61));
            v63 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, *v62.f32), 0xBF000000BF000000), 0), v16);
            v64 = vcvt_s32_f32(vmin_f32(v63, v18));
            v65 = vsub_f32(v63, vcvt_f32_s32(v64));
            v66 = (*&v52 + 16 * (v64.i32[0] + v64.i32[1] * v53));
            v67 = vaddq_f32(*v66, vmulq_n_f32(vsubq_f32(v66[1], *v66), v65.f32[0]));
            v68 = vaddq_f32(v67, vmulq_lane_f32(vsubq_f32(vaddq_f32(v66[v53], vmulq_n_f32(vsubq_f32(v66[v53 + 1], v66[v53]), v65.f32[0])), v67), v65, 1));
          }

          else
          {
            v69 = vcvt_s32_f32(vmin_f32(vmax_f32(v54, 0), v16));
            v60 = *(*&v52 + 16 * (v69.i32[0] + v69.i32[1] * v53));
            v61.i64[1] = v47.i64[1];
            v61.i64[0] = v46.i64[0];
            v62 = vmulq_f32(v50, vaddq_f32(v49, v61));
            v70 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, *v62.f32), 0), v16));
            v68 = *(*&v52 + 16 * (v70.i32[0] + v70.i32[1] * v53));
          }

          v71 = vextq_s8(v47, v46, 8uLL);
          v72 = *(v45 + 96);
          v73 = vaddq_f32(v71, v72);
          v74 = vdupq_lane_s64(v72.i64[0], 0);
          v75 = vmulq_f32(v50, vaddq_f32(v49, v73));
          v76 = vsubq_f32(v71, v74);
          v77.i64[0] = v75.i64[0];
          v77.i64[1] = v76.i64[1];
          v78 = vmul_f32(v10, *v75.f32);
          if (v5)
          {
            v79 = vmin_f32(vmax_f32(vadd_f32(v78, 0xBF000000BF000000), 0), v16);
            v80 = vcvt_s32_f32(vmin_f32(v79, v18));
            v81 = vsub_f32(v79, vcvt_f32_s32(v80));
            v82 = (*&v52 + 16 * (v80.i32[0] + v80.i32[1] * v53));
            v83 = vaddq_f32(*v82, vmulq_n_f32(vsubq_f32(v82[1], *v82), v81.f32[0]));
            v84 = vaddq_f32(v83, vmulq_lane_f32(vsubq_f32(vaddq_f32(v82[v53], vmulq_n_f32(vsubq_f32(v82[v53 + 1], v82[v53]), v81.f32[0])), v83), v81, 1));
          }

          else
          {
            v85 = vcvt_s32_f32(vmin_f32(vmax_f32(v78, 0), v16));
            v84 = *(*&v52 + 16 * (v85.i32[0] + v85.i32[1] * v53));
          }

          v86 = *(v45 + 176);
          v87 = vaddq_f32(v86, v75);
          *v50.f32 = vmul_f32(*v50.f32, *&vextq_s8(vaddq_f32(v50, v77), v87, 8uLL));
          v88 = vmul_f32(v10, *v50.f32);
          if (v5)
          {
            v89 = vmin_f32(vmax_f32(vadd_f32(v88, 0xBF000000BF000000), 0), v16);
            v90 = vcvt_s32_f32(vmin_f32(v89, v18));
            v91 = vsub_f32(v89, vcvt_f32_s32(v90));
            v92 = (*&v52 + 16 * (v90.i32[0] + v90.i32[1] * v53));
            v93 = vaddq_f32(*v92, vmulq_n_f32(vsubq_f32(v92[1], *v92), v91.f32[0]));
            v27 = vaddq_f32(v93, vmulq_lane_f32(vsubq_f32(vaddq_f32(v92[v53], vmulq_n_f32(vsubq_f32(v92[v53 + 1], v92[v53]), v91.f32[0])), v93), v91, 1));
          }

          else
          {
            v26 = vcvt_s32_f32(vmin_f32(vmax_f32(v88, 0), v16));
            v27 = *(*&v52 + 16 * (v26.i32[0] + v26.i32[1] * v53));
          }

          v29 = *(v45 + 128);
          v28 = *(v45 + 144);
          v30 = vextq_s8(v29, v29, 8uLL);
          *&v51.u32[2] = vand_s8(*(v45 + 160), vmul_f32(*v30.f32, vadd_f32(*v28.f32, *v51.f32)));
          v31 = vminq_f32(vmaxq_f32(vsubq_f32(v30, v51), v28), v86);
          v32 = vmulq_f32(v29, vdupq_lane_s64(vaddq_f32(v86, v62).i64[0], 0));
          v33 = vmulq_laneq_f32(v60, vmulq_laneq_f32(v31, v31, 3), 2);
          v34 = *(v45 + 208);
          v73.i64[1] = vandq_s8(*(v45 + 192), v32).i64[1];
          v35 = vminq_f32(vmaxq_f32(vsubq_f32(v30, v73), v28), v86);
          v36 = vaddq_f32(v33, vmulq_laneq_f32(v68, vmulq_laneq_f32(v35, v35, 3), 2));
          *v35.f32 = vadd_f32(*v86.f32, *v50.f32);
          *v32.i8 = vmul_f32(*v30.f32, *v35.f32);
          *&v35.u32[2] = vabs_f32(vmul_f32(*v30.f32, *v87.i8));
          v37 = vminq_f32(vmaxq_f32(vsubq_f32(v30, v35), v28), v86);
          *&v50.u32[2] = vabs_f32(*v32.i8);
          v38 = vminq_f32(vmaxq_f32(vsubq_f32(v30, v50), v28), v86);
          v39 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
          v40 = vsubq_f32(v39, vbslq_s8(vcgtq_f32(v39, v61), v34, 0));
          v39.i64[0] = v40.i64[0];
          *&v39.u32[2] = v48;
          v41 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
          v42 = vsubq_f32(v41, vbslq_s8(vcgtq_f32(v41, v39), v34, 0));
          v43 = vextq_s8(v42, v40, 8uLL);
          v40.i64[1] = v42.i64[1];
          v44 = vsubq_f32(v43, v40);
          v44.i32[0] = vaddq_f32(v44, vdupq_lane_s32(*v44.f32, 1)).u32[0];
          *(*&v19 + v23) = vaddq_f32(vmulq_f32(v36, vaddq_f32(*v45, vmulq_n_f32(vsubq_f32(*(v45 + 32), *v45), v44.f32[0]))), vmulq_f32(vaddq_f32(vmulq_laneq_f32(v84, vmulq_laneq_f32(v37, v37, 3), 2), vmulq_n_f32(v27, vmulq_laneq_f32(vdupq_laneq_s32(v38, 3), v38, 2).f32[0])), vaddq_f32(*(v45 + 16), vmulq_n_f32(vsubq_f32(*(v45 + 48), *(v45 + 16)), v44.f32[0]))));
          v24 = vaddq_f32(v24, xmmword_2603429B0);
          v25 = vaddq_f32(v25, xmmword_2603429B0);
          v23 += 16;
        }

        while (v21 != v23);
        v17 = vaddq_f32(v17, xmmword_2603429C0);
        v22 = vaddq_f32(v22, xmmword_2603429C0);
        ++v9;
        *&v19 += v20;
      }

      while (v9 != v7);
    }
  }

  return 0;
}

uint64_t HgcBlur_g4u2_noborder::GetDOD(HgcBlur_g4u2_noborder *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcBlur_g4u2_noborder::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcBlur_g4u2_noborder::HgcBlur_g4u2_noborder(HgcBlur_g4u2_noborder *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287239A60;
  operator new();
}

void HgcBlur_g4u2_noborder::~HgcBlur_g4u2_noborder(HgcBlur_g4u2_noborder *this)
{
  *this = &unk_287239A60;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C405DF52C91);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287239A60;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C405DF52C91);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBlur_g4u2_noborder::~HgcBlur_g4u2_noborder(HGNode *this)
{
  *this = &unk_287239A60;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C405DF52C91);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBlur_g4u2_noborder::SetParameter(HgcBlur_g4u2_noborder *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBlur_g4u2_noborder::GetParameter(HgcBlur_g4u2_noborder *this, unsigned int a2, float *a3)
{
  if (a2 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcColorGamma_2vuy_xyxz_expand::GetProgram(HgcColorGamma_2vuy_xyxz_expand *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003fa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy*float2(c0.xy);\n    s0.xy = floor(s0.xy);\n    s0.xy = s0.xy + float2(c0.xx);\n    s0.xy = s0.xy + hg_Params[0].xy;\n    s0.xy = s0.xy*hg_Params[0].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    s0.x = float(fract(0.500000f*frag._texCoord0.x) >= 0.500000f);\n    r1 = half4(r0.z, r0.y, r0.w, 1.00000h);\n    s1.yzw = float3(r1.yzw);\n    s1.x = select(float(r1.x), float(r0.x), -s0.x < 0.00000h);\n    output.color0 = s1;\n    return output;\n}\n//MD5=e2f1359f:d962dc38:6d45378e:c9de3178\n//SIG=00400000:00000000:00000000:00000001:0001:0001:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003ad\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy*c0.xy;\n    r0.xy = floor(r0.xy);\n    r0.xy = r0.xy + c0.xx;\n    r0.xy = r0.xy + hg_Params[0].xy;\n    r0.xy = r0.xy*hg_Params[0].zw;\n    r0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    r1.x = float(fract(0.500000f*frag._texCoord0.x) >= 0.500000f);\n    r2 = float4(r0.z, r0.y, r0.w, 1.00000f);\n    r2.x = select(r2.x, r0.x, -r1.x < 0.00000f);\n    output.color0 = r2;\n    return output;\n}\n//MD5=9c2db72b:e94c7326:0f4dea4f:07e48d03\n//SIG=00000000:00000000:00000000:00000000:0001:0001:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000386\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 1.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xy = hg_TexCoord0.xy*c0.xy;\n    r0.xy = floor(r0.xy);\n    r0.xy = r0.xy + c0.xx;\n    r0.xy = r0.xy + hg_ProgramLocal0.xy;\n    r0.xy = r0.xy*hg_ProgramLocal0.zw;\n    r0 = texture2D(hg_Texture0, r0.xy);\n    r1.x = c0.x*hg_TexCoord0.x;\n    r1.x = fract(r1.x);\n    r1.x = float(r1.x >= c0.x);\n    r2 = vec4(r0.z, r0.y, r0.w, 1.00000);\n    r2.x = -r1.x < 0.00000 ? r0.x : r2.x;\n    gl_FragColor = r2;\n}\n//MD5=10673228:1a421a4c:e2f1387f:08423341\n//SIG=00000000:00000000:00000000:00000000:0001:0001:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE1C8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE1C92C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE1C924);
}

uint64_t HgcColorGamma_2vuy_xyxz_expand::BindTexture(HgcColorGamma_2vuy_xyxz_expand *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v5.n128_f32[0] = *(a2 + 60);
  v6.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 136))(a2, 0, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcColorGamma_2vuy_xyxz_expand::Bind(HgcColorGamma_2vuy_xyxz_expand *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcColorGamma_2vuy_xyxz_expand::RenderTile(HgcColorGamma_2vuy_xyxz_expand *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = a2[2];
    v8 = 16 * a2[3].i32[0];
    v9.i64[0] = 0x3F0000003F000000;
    v9.i64[1] = 0x3F0000003F000000;
    v10 = v5;
    while (v6 < 3)
    {
      v11 = 0;
      v13 = v10;
      if (v6 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v10 = vaddq_f32(v10, xmmword_2603429C0);
      ++v4;
      *&v7 += v8;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v11 = 0;
    v12 = v6;
    v13 = v10;
    do
    {
      v14 = vaddq_f32(v13, xmmword_2603429B0);
      v15 = vaddq_f32(v14, xmmword_2603429B0);
      v16 = *(this + 51);
      v17 = *(v16 + 16);
      v18 = vmulq_f32(v13, *v16);
      v19 = vmulq_f32(v14, *v16);
      v20 = vmulq_f32(v15, *v16);
      v21 = vcvtq_f32_s32(vcvtq_s32_f32(v18));
      v22 = vcvtq_f32_s32(vcvtq_s32_f32(v19));
      v23 = vcvtq_f32_s32(vcvtq_s32_f32(v20));
      v24 = vandq_s8(v17, vcgtq_f32(v22, v19));
      v25 = vsubq_f32(v21, vandq_s8(v17, vcgtq_f32(v21, v18)));
      v26 = vsubq_f32(v22, v24);
      v27 = vsubq_f32(v23, vandq_s8(v17, vcgtq_f32(v23, v20)));
      v28 = *(v16 + 32);
      v29 = *(v16 + 48);
      v30 = a2[10];
      v31 = a2[11].u32[0];
      v32 = vaddq_f32(vsubq_f32(vaddq_f32(v28, v25), v5), v9);
      v33 = vcvtq_s32_f32(v32);
      v34 = vaddq_f32(vsubq_f32(vaddq_f32(v28, v26), v5), v9);
      v35 = vcvtq_s32_f32(v34);
      *v34.f32 = vadd_s32(*v35.i8, *&vcgtq_f32(vcvtq_f32_s32(v35), v34));
      *v32.f32 = vadd_s32(*v33.i8, *&vcgtq_f32(vcvtq_f32_s32(v33), v32));
      *v33.i8 = vzip2_s32(*v32.f32, *v34.f32);
      *v32.f32 = vzip1_s32(*v32.f32, *v34.f32);
      v36 = vaddq_f32(vsubq_f32(vaddq_f32(v28, v27), v5), v9);
      v37 = vcvtq_s32_f32(v36);
      v36.i64[0] = vaddq_s32(v37, vcgtq_f32(vcvtq_f32_s32(v37), v36)).u64[0];
      *v32.f32 = vmla_s32(*v32.f32, *v33.i8, vdup_n_s32(v31));
      v38 = v36.i32[0] + v36.i32[1] * v31;
      v39 = v32.i32[1];
      v40 = *(*&v30 + 16 * v32.i32[0]);
      v41 = vmulq_f32(v13, v28);
      v42 = *(*&v30 + 16 * v38);
      v43 = vmulq_f32(v14, v28);
      v44 = vmulq_f32(v15, v28);
      v45 = *(*&v30 + 16 * v39);
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
      v47 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v48 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
      v49 = vcgeq_f32(vsubq_f32(v41, vsubq_f32(v46, vandq_s8(v17, vcgtq_f32(v46, v41)))), v28);
      v50 = vcgeq_f32(vsubq_f32(v43, vsubq_f32(v47, vandq_s8(v17, vcgtq_f32(v47, v43)))), v28);
      v51 = vcgeq_f32(vsubq_f32(v44, vsubq_f32(v48, vandq_s8(v17, vcgtq_f32(v48, v44)))), v28);
      v52 = vandq_s8(v17, v49);
      v53 = vandq_s8(v17, v50);
      *v44.f32 = vqtbl1_s8(v40, *v29.i8);
      v46.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
      v44.i64[1] = __PAIR64__(1.0, vqtbl1_s8(v40, *v46.f32).u32[0]);
      *v47.f32 = vqtbl1_s8(v45, *v29.i8);
      v47.i64[1] = __PAIR64__(1.0, vqtbl1_s8(v45, *v46.f32).u32[0]);
      *v29.i8 = vqtbl1_s8(v42, *v29.i8);
      v29.i64[1] = __PAIR64__(1.0, vqtbl1_s8(v42, *v46.f32).u32[0]);
      v54 = vandq_s8(v17, v51);
      v56 = *(v16 + 64);
      v55 = *(v16 + 80);
      v57 = (*&v7 + 16 * v11);
      *v57 = vbslq_s8(v55, vbslq_s8(vcgtq_f32(v52, v56), v40, v44), v44);
      v57[1] = vbslq_s8(v55, vbslq_s8(vcgtq_f32(v53, v56), v45, v47), v47);
      v57[2] = vbslq_s8(v55, vbslq_s8(vcgtq_f32(v54, v56), v42, v29), v29);
      v13 = vaddq_f32(v15, xmmword_2603429B0);
      v11 += 3;
      v12 -= 3;
    }

    while (v12 > 2);
    v11 = v11;
    if (v11 >= v6)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v58 = *(this + 51);
      v59 = *(v58 + 16);
      v60 = vmulq_f32(v13, *v58);
      v61 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v62 = vsubq_f32(v61, vandq_s8(v59, vcgtq_f32(v61, v60)));
      v64 = *(v58 + 32);
      v63 = *(v58 + 48);
      v65 = vaddq_f32(vsubq_f32(vaddq_f32(v64, v62), v5), v9);
      v66 = vcvtq_s32_f32(v65);
      v65.i64[0] = vaddq_s32(v66, vcgtq_f32(vcvtq_f32_s32(v66), v65)).u64[0];
      v67 = v65.i32[0] + v65.i32[1] * a2[11].i32[0];
      v68 = vmulq_f32(v13, v64);
      v69 = vcvtq_f32_s32(vcvtq_s32_f32(v68));
      v70 = *(*&a2[10] + 16 * v67);
      v71 = vcgeq_f32(vsubq_f32(v68, vsubq_f32(v69, vandq_s8(v59, vcgtq_f32(v69, v68)))), v64);
      *v64.f32 = vqtbl1_s8(v70, *v63.i8);
      v64.i64[1] = __PAIR64__(1.0, vqtbl1_s8(v70, *&vextq_s8(v63, v63, 8uLL)).u32[0]);
      *(*&v7 + 16 * v11) = vbslq_s8(*(v58 + 80), vbslq_s8(vcgtq_f32(vandq_s8(v59, v71), *(v58 + 64)), v70, v64), v64);
      v13 = vaddq_f32(v13, xmmword_2603429B0);
      ++v11;
    }

    while (v11 < v6);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcColorGamma_2vuy_xyxz_expand::GetDOD(HgcColorGamma_2vuy_xyxz_expand *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    v7 = HGRectMake4i(0xFFFFFFFF, 0, a3, 0);
    v8 = HGRectGrow(v6, v5, v7);
    v9 = HGRectFloat(v8);
    v13 = HGRectScale(v9, v10, v11, v12, 2.0);
    v18 = HGRectIntegral(v14, v13, v15, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

uint64_t HgcColorGamma_2vuy_xyxz_expand::GetROI(HgcColorGamma_2vuy_xyxz_expand *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 0.5);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    v16 = v15;
    v17 = HGRectMake4i(0, 0, 1u, 0);
    v18 = HGRectGrow(v14, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

void HgcColorGamma_2vuy_xyxz_expand::HgcColorGamma_2vuy_xyxz_expand(HgcColorGamma_2vuy_xyxz_expand *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287239CC8;
  operator new();
}

void HgcColorGamma_2vuy_xyxz_expand::~HgcColorGamma_2vuy_xyxz_expand(HgcColorGamma_2vuy_xyxz_expand *this)
{
  *this = &unk_287239CC8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287239CC8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcColorGamma_2vuy_xyxz_expand::~HgcColorGamma_2vuy_xyxz_expand(HGNode *this)
{
  *this = &unk_287239CC8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcBlur_cs9s_es_noborder::GetProgram(HgcBlur_cs9s_es_noborder *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_1199;
    }

    else
    {
      return aMetal10Len0000_1200;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_448;
  }
}

void sub_25FE1D6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE1D6F8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE1D6F0);
}

uint64_t HgcBlur_cs9s_es_noborder::BindTexture(HgcBlur_cs9s_es_noborder *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
  {
    (*(*a2 + 72))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
  }

  (*(*a2 + 136))(a2, 10, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), 0.0, 0.0);
  return 0;
}

uint64_t HgcBlur_cs9s_es_noborder::Bind(HgcBlur_cs9s_es_noborder *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*a2 + 144))(a2, 9, *(this + 51) + 144, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBlur_cs9s_es_noborder::RenderTile(HgcBlur_cs9s_es_noborder *this, int32x2_t *a2)
{
  v5 = HGTile::Renderer(a2);
  v6 = (*(*this + 312))(this, v5);
  v7 = *a2;
  v8 = a2[1].i32[1] - HIDWORD(*a2);
  if (v8 >= 1 && a2[1].i32[0] - v7.i32[0] >= 1)
  {
    v9 = 0;
    v10 = vcvt_f32_s32(vsub_s32(a2[27], a2[26]));
    __asm { FMOV            V2.2S, #-1.0 }

    v16 = vadd_f32(v10, _D2);
    v17 = vadd_f32(v16, _D2);
    *v18.f32 = vadd_f32(vcvt_f32_s32(v7), 0x3F0000003F000000);
    v18.i64[1] = 0x3F80000000000000;
    v19 = a2[2];
    v20 = 16 * a2[3].i32[0];
    v21 = 16 * (a2[1].i32[0] - v7.i32[0]);
    v22 = v18;
    do
    {
      v23 = 0;
      v152 = v22;
      v153 = v18;
      do
      {
        v38 = *(this + 51);
        v39 = vaddq_f32(*(v38 + 96), vaddq_f32(v18, vmulq_f32(v22, *(v38 + 80))));
        v40 = *(v38 + 112);
        v41 = *(v38 + 128);
        v42 = vdupq_lane_s64(vaddq_f32(v40, v39).i64[0], 0);
        v43 = vaddq_f32(v40, vextq_s8(v42, v39, 8uLL));
        v44 = vaddq_f32(v40, v43);
        v45 = vaddq_f32(v40, v44);
        v46 = vextq_s8(v45, v45, 8uLL);
        v47 = vaddq_f32(v40, vaddq_f32(v40, v45));
        v48.i64[1] = v46.i64[1];
        v48.i64[0] = v47.i64[0];
        v49 = vextq_s8(v41, v41, 8uLL);
        v51 = *(v38 + 144);
        v50 = *(v38 + 160);
        v52 = vmul_f32(*v49.f32, vadd_f32(*v41.f32, *v47.f32));
        v160 = vextq_s8(v50, v50, 8uLL).u64[0];
        v53 = vextq_s8(v51, v51, 8uLL);
        v54.i64[0] = v43.i64[0];
        *&v54.u32[2] = vabs_f32(vmul_f32(*v53.f32, vadd_f32(v160, v52)));
        v59.i64[0] = vaddq_f32(v41, v43).u64[0];
        v55 = vsubq_f32(v53, v54);
        v56 = *(v38 + 176);
        v57 = *(v38 + 192);
        v58 = vminq_f32(vmaxq_f32(v55, v56), v57);
        v59.i64[1] = v58.i64[1];
        v60 = vmulq_f32(v49, v59);
        v61 = a2[10];
        v62 = a2[11].i32[0];
        v63 = vmul_f32(v10, v52);
        if (v6)
        {
          v64 = vmin_f32(vmax_f32(vadd_f32(v63, 0xBF000000BF000000), 0), v16);
          v65 = vcvt_s32_f32(vmin_f32(v64, v17));
          v66 = vsub_f32(v64, vcvt_f32_s32(v65));
          v67 = vmulq_laneq_f32(v59, v58, 3);
          v68 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, *v60.f32), 0xBF000000BF000000), 0), v16);
          v69 = vcvt_s32_f32(vmin_f32(v68, v17));
          v70 = vsub_f32(v68, vcvt_f32_s32(v69));
          v71 = vmla_s32(vzip1_s32(v65, v69), vzip2_s32(v65, v69), vdup_n_s32(v62));
          v72 = v71.i32[1];
          v73 = (*&v61 + 16 * v71.i32[0]);
          v74 = vaddq_f32(*v73, vmulq_n_f32(vsubq_f32(v73[1], *v73), v66.f32[0]));
          v159 = vmulq_laneq_f32(vaddq_f32(v74, vmulq_lane_f32(vsubq_f32(vaddq_f32(v73[v62], vmulq_n_f32(vsubq_f32(v73[v62 + 1], v73[v62]), v66.f32[0])), v74), v66, 1)), v67, 2);
          v75 = (*&v61 + 16 * v72);
          v76 = vaddq_f32(*v75, vmulq_n_f32(vsubq_f32(v75[1], *v75), v70.f32[0]));
          v77 = vaddq_f32(v76, vmulq_lane_f32(vsubq_f32(vaddq_f32(v75[v62], vmulq_n_f32(vsubq_f32(v75[v62 + 1], v75[v62]), v70.f32[0])), v76), v70, 1));
        }

        else
        {
          v78 = vcvt_s32_f32(vmin_f32(vmax_f32(v63, 0), v16));
          v79 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, *v60.f32), 0), v16));
          v80 = vmla_s32(vzip1_s32(v78, v79), vzip2_s32(v78, v79), vdup_n_s32(v62));
          v159 = vmulq_laneq_f32(*(*&v61 + 16 * v80.i32[0]), vmulq_laneq_f32(v59, v58, 3), 2);
          v77 = *(*&v61 + 16 * v80.i32[1]);
        }

        v158 = v77;
        v81 = vextq_s8(v40, v40, 8uLL);
        v82 = vextq_s8(vmulq_f32(v41, vaddq_f32(v49, vaddq_f32(v81, v46))), v44, 8uLL);
        v83 = vmul_f32(v10, *v82.f32);
        if (v6)
        {
          v84 = vmin_f32(vmax_f32(vadd_f32(v83, 0xBF000000BF000000), 0), v16);
          v85 = vcvt_s32_f32(vmin_f32(v84, v17));
          v86 = vsub_f32(v84, vcvt_f32_s32(v85));
          v87 = (*&v61 + 16 * (v85.i32[0] + v85.i32[1] * v62));
          v88 = vaddq_f32(*v87, vmulq_n_f32(vsubq_f32(v87[1], *v87), v86.f32[0]));
          v89 = vaddq_f32(v88, vmulq_lane_f32(vsubq_f32(vaddq_f32(v87[v62], vmulq_n_f32(vsubq_f32(v87[v62 + 1], v87[v62]), v86.f32[0])), v88), v86, 1));
        }

        else
        {
          v90 = vcvt_s32_f32(vmin_f32(vmax_f32(v83, 0), v16));
          v89 = *(*&v61 + 16 * (v90.i32[0] + v90.i32[1] * v62));
        }

        v157 = v89;
        v91 = vmulq_f32(v53, vaddq_f32(v57, v60));
        v92 = vminq_f32(vmaxq_f32(vsubq_f32(v53, vabsq_f32(vextq_s8(v91, v91, 8uLL))), v56), v57);
        v93.i64[0] = vaddq_f32(v57, v82).u64[0];
        v94 = vmulq_laneq_f32(v92, v92, 3);
        v93.i64[1] = v94.i64[1];
        v95 = vmulq_f32(v53, v93);
        v96 = vminq_f32(vmaxq_f32(vsubq_f32(v53, vabsq_f32(vextq_s8(v95, v95, 8uLL))), v56), v57);
        v97.i64[0] = vaddq_f32(v41, v44).u64[0];
        v98 = vmulq_laneq_f32(v96, v96, 3);
        v97.i64[1] = v98.i64[1];
        v99 = vmulq_f32(v49, v97);
        v100 = vmul_f32(v10, *v99.f32);
        if (v6)
        {
          v101 = vmin_f32(vmax_f32(vadd_f32(v100, 0xBF000000BF000000), 0), v16);
          v102 = vcvt_s32_f32(vmin_f32(v101, v17));
          v103 = vsub_f32(v101, vcvt_f32_s32(v102));
          v104 = (*&v61 + 16 * (v102.i32[0] + v102.i32[1] * v62));
          v105 = vaddq_f32(*v104, vmulq_n_f32(vsubq_f32(v104[1], *v104), v103.f32[0]));
          v106 = vaddq_f32(v105, vmulq_lane_f32(vsubq_f32(vaddq_f32(v104[v62], vmulq_n_f32(vsubq_f32(v104[v62 + 1], v104[v62]), v103.f32[0])), v105), v103, 1));
        }

        else
        {
          v107 = vcvt_s32_f32(vmin_f32(vmax_f32(v100, 0), v16));
          v106 = *(*&v61 + 16 * (v107.i32[0] + v107.i32[1] * v62));
        }

        v156 = v106;
        v108 = vextq_s8(v49, v49, 8uLL).u64[0];
        *v2.f32 = vmul_f32(*v49.f32, vadd_f32(v108, *&vextq_s8(v48, v48, 8uLL)));
        v109 = vmul_f32(v10, *v2.f32);
        if (v6)
        {
          v110 = vmin_f32(vmax_f32(vadd_f32(v109, 0xBF000000BF000000), 0), v16);
          v111 = vcvt_s32_f32(vmin_f32(v110, v17));
          v112 = vsub_f32(v110, vcvt_f32_s32(v111));
          v113 = (*&v61 + 16 * (v111.i32[0] + v111.i32[1] * v62));
          v114 = vaddq_f32(*v113, vmulq_n_f32(vsubq_f32(v113[1], *v113), v112.f32[0]));
          v115 = vaddq_f32(v114, vmulq_lane_f32(vsubq_f32(vaddq_f32(v113[v62], vmulq_n_f32(vsubq_f32(v113[v62 + 1], v113[v62]), v112.f32[0])), v114), v112, 1));
        }

        else
        {
          v116 = vcvt_s32_f32(vmin_f32(vmax_f32(v109, 0), v16));
          v115 = *(*&v61 + 16 * (v116.i32[0] + v116.i32[1] * v62));
        }

        v155 = v115;
        v40.i64[0] = vaddq_f32(v40, v47).u64[0];
        v117 = vdupq_lane_s64(v40.i64[0], 0);
        v118 = vextq_s8(v117, v117, 8uLL).u64[0];
        *v47.f32 = vmul_f32(*v49.f32, vadd_f32(v108, v118));
        v119 = vmul_f32(v10, *v47.f32);
        if (v6)
        {
          v120 = vmin_f32(vmax_f32(vadd_f32(v119, 0xBF000000BF000000), 0), v16);
          v121 = vcvt_s32_f32(vmin_f32(v120, v17));
          v122 = vsub_f32(v120, vcvt_f32_s32(v121));
          v123 = (*&v61 + 16 * (v121.i32[0] + v121.i32[1] * v62));
          v124 = vaddq_f32(*v123, vmulq_n_f32(vsubq_f32(v123[1], *v123), v122.f32[0]));
          v154 = vaddq_f32(v124, vmulq_lane_f32(vsubq_f32(vaddq_f32(v123[v62], vmulq_n_f32(vsubq_f32(v123[v62 + 1], v123[v62]), v122.f32[0])), v124), v122, 1));
          v125 = vmulq_f32(v41, vaddq_f32(v49, v42));
          v126 = vextq_s8(v125, v125, 8uLL).u64[0];
          *v125.i8 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, v126), 0xBF000000BF000000), 0), v16);
          v127 = vcvt_s32_f32(vmin_f32(*v125.i8, v17));
          *v125.i8 = vsub_f32(*v125.i8, vcvt_f32_s32(v127));
          v128 = (*&v61 + 16 * (v127.i32[0] + v127.i32[1] * v62));
          v129 = vaddq_f32(*v128, vmulq_n_f32(vsubq_f32(v128[1], *v128), *v125.i32));
          v130 = vaddq_f32(v129, vmulq_lane_f32(vsubq_f32(vaddq_f32(v128[v62], vmulq_n_f32(vsubq_f32(v128[v62 + 1], v128[v62]), *v125.i32)), v129), *v125.i8, 1));
        }

        else
        {
          v131 = vcvt_s32_f32(vmin_f32(vmax_f32(v119, 0), v16));
          v154 = *(*&v61 + 16 * (v131.i32[0] + v131.i32[1] * v62));
          v132 = vmulq_f32(v41, vaddq_f32(v49, v42));
          v126 = vextq_s8(v132, v132, 8uLL).u64[0];
          *v132.i8 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, v126), 0), v16));
          v130 = *(*&v61 + 16 * (v132.i32[0] + v132.i32[1] * v62));
        }

        *v133.f32 = vmul_f32(*v49.f32, vadd_f32(v108, vadd_f32(*&vextq_s8(v81, v81, 8uLL), v118)));
        v134 = vmul_f32(v10, *v133.f32);
        if (v6)
        {
          v135 = vmin_f32(vmax_f32(vadd_f32(v134, 0xBF000000BF000000), 0), v16);
          v136 = vcvt_s32_f32(vmin_f32(v135, v17));
          v137 = vsub_f32(v135, vcvt_f32_s32(v136));
          v138 = (*&v61 + 16 * (v136.i32[0] + v136.i32[1] * v62));
          v139 = vaddq_f32(*v138, vmulq_n_f32(vsubq_f32(v138[1], *v138), v137.f32[0]));
          v140 = vaddq_f32(v139, vmulq_lane_f32(vsubq_f32(vaddq_f32(v138[v62], vmulq_n_f32(vsubq_f32(v138[v62 + 1], v138[v62]), v137.f32[0])), v139), v137, 1));
        }

        else
        {
          v141 = vcvt_s32_f32(vmin_f32(vmax_f32(v134, 0), v16));
          v140 = *(*&v61 + 16 * (v141.i32[0] + v141.i32[1] * v62));
        }

        v133.i64[1] = v39.i64[0];
        v142 = vmulq_f32(v53, vaddq_f32(v57, v133));
        v144.i64[0] = vmulq_f32(v49, vextq_s8(vaddq_f32(v49, v133), v142, 8uLL)).u64[0];
        v142.i64[1] = vmulq_f32(v51, vaddq_f32(v50, vdupq_lane_s64(*&v144, 0))).i64[1];
        v143 = vabsq_f32(v142);
        v144.i64[1] = v143.i64[1];
        v145 = vmul_f32(v10, *v144.f32);
        if (v6)
        {
          v146 = vmin_f32(vmax_f32(vadd_f32(v145, 0xBF000000BF000000), 0), v16);
          v147 = vcvt_s32_f32(vmin_f32(v146, v17));
          v148 = vsub_f32(v146, vcvt_f32_s32(v147));
          v149 = (*&v61 + 16 * (v147.i32[0] + v147.i32[1] * v62));
          v150 = vaddq_f32(*v149, vmulq_n_f32(vsubq_f32(v149[1], *v149), v148.f32[0]));
          v25 = vaddq_f32(v150, vmulq_lane_f32(vsubq_f32(vaddq_f32(v149[v62], vmulq_n_f32(vsubq_f32(v149[v62 + 1], v149[v62]), v148.f32[0])), v150), v148, 1));
        }

        else
        {
          v24 = vcvt_s32_f32(vmin_f32(vmax_f32(v145, 0), v16));
          v25 = *(*&v61 + 16 * (v24.i32[0] + v24.i32[1] * v62));
        }

        v26.i64[0] = vmulq_f32(v53, vaddq_f32(v57, v2)).u64[0];
        *v27.f32 = vand_s8(*(v38 + 224), *v26.f32);
        v26.i64[1] = vandq_s8(*(v38 + 208), vmulq_f32(v51, vdupq_lane_s64(vaddq_f32(v57, v99), 0))).i64[1];
        v28 = vminq_f32(vmaxq_f32(vsubq_f32(v53, v26), v56), v57);
        v29 = vmulq_laneq_f32(v28, v28, 3);
        v27.i64[1] = vextq_s8(v29, v29, 8uLL).u64[0];
        v26.i64[0] = vminq_f32(vmaxq_f32(vsubq_f32(v51, v27), v56), v50).u64[0];
        v30 = vaddq_f32(vmulq_f32(vaddq_f32(v159, vmulq_laneq_f32(v158, v94, 2)), *(v38 + 32)), vaddq_f32(vmulq_f32(vaddq_f32(vmulq_laneq_f32(v157, v98, 2), vmulq_laneq_f32(v156, v29, 2)), *(v38 + 16)), vmulq_f32(*v38, vmulq_laneq_f32(v155, vmulq_n_f32(vdupq_lane_s32(*v26.f32, 1), v26.f32[0]), 2))));
        v47.i64[1] = v40.i64[0];
        v29.i64[0] = v40.i64[0];
        *&v29.u32[2] = vabs_f32(*&vmulq_f32(v53, vaddq_f32(v57, v47)));
        v31 = vminq_f32(vmaxq_f32(vsubq_f32(v53, v29), v56), v57);
        v32 = vmulq_n_f32(v154, vmulq_laneq_f32(vdupq_laneq_s32(v31, 3), v31, 2).f32[0]);
        *&v40.u32[2] = vadd_f32(v160, v126);
        v33 = vmulq_f32(v51, v40);
        v34 = vminq_f32(vmaxq_f32(vsubq_f32(v51, vabsq_f32(vextq_s8(v33, v33, 8uLL))), v56), v50);
        v35 = vaddq_f32(v30, vmulq_f32(*(v38 + 48), vaddq_f32(v32, vmulq_n_f32(v130, vmulq_lane_f32(v34, *v34.f32, 1).f32[0]))));
        v36 = vminq_f32(vmaxq_f32(vsubq_f32(v51, v143), v56), v50);
        v37 = vminq_f32(vmaxq_f32(vsubq_f32(v53, v144), v56), v57);
        *(*&v19 + v23) = vaddq_f32(v35, vmulq_f32(*(v38 + 64), vaddq_f32(vmulq_n_f32(v140, vmulq_lane_f32(v36, *v36.f32, 1).f32[0]), vmulq_n_f32(v25, vmulq_laneq_f32(vdupq_laneq_s32(v37, 3), v37, 2).f32[0]))));
        v18 = vaddq_f32(v18, xmmword_2603429B0);
        v22 = vaddq_f32(v22, xmmword_2603429B0);
        v23 += 16;
      }

      while (v21 != v23);
      v18 = vaddq_f32(v153, xmmword_2603429C0);
      v22 = vaddq_f32(v152, xmmword_2603429C0);
      ++v9;
      *&v19 += v20;
    }

    while (v9 != v8);
  }

  return 0;
}