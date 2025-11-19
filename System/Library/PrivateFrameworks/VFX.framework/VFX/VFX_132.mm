void sub_1AFB35250(unsigned __int8 a1, uint64_t a2, uint64_t a3, void *a4, float32x4_t a5, float32x4_t a6)
{
  v9 = a6;
  v11 = a4[8];
  v12 = a4[11];
  v13 = a4[14];
  v15 = a4[4];
  v14 = a4[5];
  if ((*(a3 + 64) & 1) == 0)
  {
    sub_1AF6DE920();
    a5 = v16;
    v9 = a6;
  }

  v62 = v9;
  v63 = a5;
  v17 = vmulq_f32(v9, v9);
  a6.i64[0] = 0;
  v18.i64[0] = 0;
  v18.i32[3] = 0;
  *&v18.i32[2] = sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)) * 0.2;
  v19 = vbslq_s8(vdupq_lane_s32(*&vceqq_f32(vdupq_laneq_s32(v9, 2), a6), 0), v18, v18.u32[2]);
  v20 = (v11 + 16 * v15);
  v61 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v9)), v19, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  *&v21 = sub_1AF6DD708(0.1, a5, v9);
  v60 = v21;
  *v22.i64 = sub_1AF6DD708(0.9, v63, v62);
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v25 = 0;
      v35 = v63;
      v36 = vaddq_f32(v63, v62);
      v35.i32[3] = 1.0;
      *v20 = v35;
      v36.i32[3] = 1.0;
      v24 = 1;
      v37 = 2;
      v38 = 2;
      v20[1] = v36;
      if ((a2 & 0x100000000) != 0)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    v24 = 0;
    v50 = v63;
    v22 = vaddq_f32(v63, v62);
    v22.i32[3] = 1.0;
    v50.i32[3] = 1.0;
    *v20 = v22;
    v20[1] = v50;
    __asm { FMOV            V1.4S, #1.0 }

    v51.i32[3] = _Q1.i32[3];
    v51.f32[0] = *&v60 + v61.f32[2];
    v51.f32[1] = *(&v60 + 1) + v61.f32[0];
    v51.f32[2] = *(&v60 + 2) + v61.f32[1];
    v20[2] = v51;
    v22.f32[0] = *&v60 - v61.f32[2];
    v43 = *(&v60 + 1) - v61.f32[0];
    v44 = *(&v60 + 2) - v61.f32[1];
    goto LABEL_15;
  }

  if (a1 == 2)
  {
    v24 = 0;
    v39 = v63;
    v40 = vaddq_f32(v63, v62);
    v39.i32[3] = 1.0;
    v40.i32[3] = 1.0;
    *v20 = v39;
    v20[1] = v40;
    __asm { FMOV            V1.4S, #1.0 }

    v42.i32[3] = _Q1.i32[3];
    v42.f32[0] = v22.f32[0] + v61.f32[2];
    v42.f32[1] = v22.f32[1] + v61.f32[0];
    v42.f32[2] = v22.f32[2] + v61.f32[1];
    v20[2] = v42;
    v22.f32[0] = v22.f32[0] - v61.f32[2];
    v43 = v22.f32[1] - v61.f32[0];
    v44 = v22.f32[2] - v61.f32[1];
LABEL_15:
    _Q1.i64[0] = __PAIR64__(LODWORD(v43), v22.u32[0]);
    _Q1.f32[2] = v44;
    v25 = 1;
    v38 = 6;
    v37 = 4;
    v20[3] = _Q1;
    if ((a2 & 0x100000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  v23 = v63;
  if (a1 == 3)
  {
    v24 = 0;
    v25 = 0;
    v26 = vaddq_f32(v63, v62);
    v23.i32[3] = 1.0;
    v26.i32[3] = 1.0;
    *v20 = v23;
    v20[1] = v26;
    __asm { FMOV            V1.4S, #1.0 }

    v31.i32[3] = _Q1.i32[3];
    v31.f32[0] = v22.f32[0] + v61.f32[2];
    v31.f32[1] = v22.f32[1] + v61.f32[0];
    v31.f32[2] = v22.f32[2] + v61.f32[1];
    v32.i32[3] = _Q1.i32[3];
    v32.f32[0] = v22.f32[0] - v61.f32[2];
    v32.f32[1] = v22.f32[1] - v61.f32[0];
    v32.f32[2] = v22.f32[2] - v61.f32[1];
    v20[2] = v31;
    v20[3] = v32;
    v33.i32[3] = _Q1.i32[3];
    v33.f32[0] = *&v60 + v61.f32[2];
    v33.f32[1] = *(&v60 + 1) + v61.f32[0];
    v33.f32[2] = *(&v60 + 2) + v61.f32[1];
    v20[4] = v33;
    _Q1.f32[0] = *&v60 - v61.f32[2];
    _Q1.f32[1] = *(&v60 + 1) - v61.f32[0];
    _Q1.f32[2] = *(&v60 + 2) - v61.f32[1];
  }

  else
  {
    v45 = sub_1AF6DD708(0.5, v63, v62);
    v24 = 0;
    v25 = 0;
    v46 = v63;
    v47 = vaddq_f32(v63, v62);
    v46.i32[3] = 1.0;
    v47.i32[3] = 1.0;
    *v20 = v46;
    v20[1] = v47;
    __asm { FMOV            V1.4S, #1.0 }

    v48.i32[3] = _Q1.i32[3];
    v48.f32[0] = v61.f32[2] + *&v45;
    v48.f32[1] = v61.f32[0] + *(&v45 + 1);
    v48.f32[2] = v61.f32[1] + v49;
    _Q1.f32[0] = *&v45 - v61.f32[2];
    _Q1.f32[1] = *(&v45 + 1) - v61.f32[0];
    _Q1.f32[2] = v49 - v61.f32[1];
    v20[2] = v48;
    v20[3] = _Q1;
    v20[4] = v48;
  }

  v38 = 10;
  v37 = 6;
  v20[5] = _Q1;
  if ((a2 & 0x100000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  v52 = (v12 + 4 * v15);
  *v52 = a2;
  v52[1] = a2;
  if (v24)
  {
    goto LABEL_27;
  }

  v53 = vdupq_n_s64(v37 - 1);
  v54 = vmovn_s64(vcgtq_u64(v53, xmmword_1AFE431C0));
  if ((v54.i8[0] & 1) == 0)
  {
    if ((v54.i8[4] & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v52[3] = a2;
    if (v25)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v52[2] = a2;
  if (v54.i8[4])
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v25)
  {
    goto LABEL_27;
  }

LABEL_23:
  v55 = vmovn_s64(vcgtq_u64(v53, xmmword_1AFE431E0));
  if (v55.i8[0])
  {
    v52[4] = a2;
  }

  if (v55.i8[4])
  {
    v52[5] = a2;
  }

LABEL_27:
  v56 = (v13 + 2 * v14);
  v57 = v38;
  v58 = &word_1F2500BA0;
  do
  {
    v59 = *v58++;
    *v56++ = v59 + v15;
    --v57;
  }

  while (v57);
  a4[4] = v37 + v15;
  a4[5] = v38 + v14;
}

void *sub_1AFB356C8(void *result, uint64_t a2)
{
  v3 = result;
  if (a2)
  {
    if (v2[2].i64[0] >= 1)
    {
      v4 = v2[3].i64[0];
      if (v4)
      {
        v5 = v2[3].i64[1];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v6 = v4;
        v7 = v2;
        sub_1AF6F5B9C(v6, v5, 0, 4);
        sub_1AF6F5B9C(v7[9], v7[10], 0, 5);
        sub_1AF6F5C4C(1, v7[5], 0, v7[12], v7[13], 1, 0, 0);
        result = swift_unknownObjectRelease();
      }
    }
  }

  v8 = vsubq_s64(*v2, v2[2]);
  *v2 = v8;
  v2[2].i64[0] = 0;
  v2[2].i64[1] = 0;
  if (v8.i64[0] >= 1)
  {
    if (v8.i64[0] >= 0xFFFFuLL)
    {
      v9 = 0xFFFFLL;
    }

    else
    {
      v9 = v8.i64[0];
    }

    if (v8.i64[1] >= 0xFFFF)
    {
      v10 = 0xFFFFLL;
    }

    else
    {
      v10 = v8.i64[1];
    }

    v2[1].i64[0] = v9;
    v2[1].i64[1] = v10;
    CFXBufferAllocatorPerFrameAllocateWithLength(v3[29], 16 * v9);
    v12 = v11;
    v14 = v13;
    v2[3].i64[0] = v11;
    v2[3].i64[1] = v13;
    v15 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    if (v15 == 2)
    {
      v16 = 0;
    }

    else
    {
      v17 = [swift_unknownObjectRetain() contents];
      v18 = v12;
      v16 = &v17[v14];
    }

    v2[4].i64[0] = v16;
    CFXBufferAllocatorPerFrameAllocateWithLength(v3[29], 4 * v9);
    v20 = v19;
    v22 = v21;
    v2[4].i64[1] = v19;
    v2[5].i64[0] = v21;
    v23 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    if (v23 == 2)
    {
      v24 = 0;
    }

    else
    {
      v25 = [swift_unknownObjectRetain() contents];
      v26 = v20;
      v24 = &v25[v22];
    }

    v2[5].i64[1] = v24;
    CFXBufferAllocatorPerFrameAllocateWithLength(v3[29], 2 * v10);
    v28 = v27;
    v30 = v29;
    v2[6].i64[0] = v27;
    v2[6].i64[1] = v29;
    v31 = [swift_unknownObjectRetain() storageMode];
    result = swift_unknownObjectRelease();
    if (v31 == 2)
    {
      v32 = 0;
    }

    else
    {
      v33 = [swift_unknownObjectRetain() contents];
      result = v28;
      v32 = &v33[v30];
    }

    v2[7].i64[0] = v32;
  }

  return result;
}

uint64_t sub_1AFB35950()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

void sub_1AFB35990(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int128 *a5)
{
  if (!a2)
  {
    return;
  }

  v7 = a2;

  sub_1AF5FCA80();
  v10 = v9;

  if (v10 != 2)
  {
    *(v7 + 240) = 1;
    v153 = a4;
    v154 = v7;
    v143 = a1;
    v151 = a5;
    if ((v10 & 0x100) != 0)
    {
      v156 = v10;

      sub_1AF8989FC(0xD000000000000023, 0x80000001AFF37870, 0xD000000000000014, 0x80000001AFF488C0, MEMORY[0x1E69E7CC0], v193);
      *&__src[128] = v193[8];
      *&__src[144] = v193[9];
      *&__src[64] = v193[4];
      *&__src[80] = v193[5];
      *&__src[96] = v193[6];
      *&__src[112] = v193[7];
      *__src = v193[0];
      *&__src[16] = v193[1];
      *&__src[32] = v193[2];
      *&__src[48] = v193[3];
      v49 = a5[2];
      v50 = a5[4];
      *&__src[224] = a5[3];
      *&__src[240] = v50;
      v51 = *a5;
      v52 = a5[1];
      *&__src[160] = v193[10];
      *&__src[176] = v51;
      *&__src[256] = *(a5 + 10);
      *&__src[192] = v52;
      *&__src[208] = v49;
      sub_1AF5FF2F0(&v211);
      v213 = xmmword_1AFE68E40;
      v214 = xmmword_1AFE68E40;
      v211 = xmmword_1AFE9AB00;
      v212 = xmmword_1AFE68E40;
      *&__src[264] = xmmword_1AFE9AB00;
      *&__src[280] = xmmword_1AFE68E40;
      *&__src[296] = xmmword_1AFE68E40;
      *&__src[312] = xmmword_1AFE68E40;
      sub_1AFDFF308();
      sub_1AF6021F8(v193, __dst);
      sub_1AF89747C(v177);
      sub_1AF602254(v193);
      v53 = *a5;
      v54 = *(a5 + 1);
      v55 = *(a5 + 2);
      v56 = *(a5 + 3);
      v57 = *(a5 + 4);
      v58 = *(a5 + 5);
      v59 = *(a5 + 6);
      v60 = *(v151 + 7);
      MEMORY[0x1B271ACB0](v53);
      MEMORY[0x1B271ACB0](v54);
      MEMORY[0x1B271ACB0](v55);
      MEMORY[0x1B271ACB0](v56);
      MEMORY[0x1B271ACB0](v57);
      MEMORY[0x1B271ACB0](v58);
      MEMORY[0x1B271ACB0](v59);
      MEMORY[0x1B271ACB0](v60);
      MEMORY[0x1B271ACB0](*(v151 + 8));
      MEMORY[0x1B271ACB0](*(v151 + 9));
      sub_1AFDFF2A8();
      v318 = v211;
      v319 = v212;
      v320 = v213;
      v321 = v214;
      sub_1AF5FF304();
      sub_1AFDFF2A8();
      sub_1AFDFF2A8();
      MEMORY[0x1B271ACB0](3);
      sub_1AFDFF2A8();
      sub_1AFDFF2A8();
      v314 = *&v177[16];
      v315 = *&v177[32];
      v316 = *&v177[48];
      v317 = *&v177[64];
      v313 = *v177;
      v61 = sub_1AFDFF2E8();
      memcpy(__dst, __src, sizeof(__dst));
      v301 = 0;
      v300 = 0;
      v302 = 3;
      v303 = 0;
      v304 = 0;
      v305 = 2;
      v308 = 0;
      v306 = 0;
      v307 = 0;
      v309 = 257;
      v310 = v178;
      v311 = WORD2(v178);
      v312 = v61;
      v62 = sub_1AF730058(__dst, 0);
      v64 = v63;
      v66 = v65;
      v67 = v65;

      sub_1AF602304(__dst);
      if (v67)
      {
        sub_1AF6022A8(v62, v64, v66);
        goto LABEL_100;
      }

      v68 = swift_unknownObjectRetain();
      sub_1AF6022A8(v68, v64, 0);
      if (qword_1ED72D720 != -1)
      {
        swift_once();
      }

      v293 = qword_1ED73B840;
      v294 = 0;
      v295 = 2;
      v296 = 0;
      v297 = 2;
      v298 = 0;
      sub_1AFCC39D0(1, 2, v194);
      v242[0] = v194[0];
      v242[1] = v194[1];
      v243 = v195;
      a1 = v143;
      sub_1AF6B06C0(v143, v242, 0x200000000, &v196);
      v7 = v154;
      LOBYTE(v10) = v156;
      v150 = v196;
      if (v196)
      {
        v69 = v199;
        v70 = v200;
        v71 = v201;
        v72 = v202;
        v229 = v197;
        v230 = v198;
        v148 = v203;
        if (v203 <= 0)
        {
        }

        else
        {
          v142 = *(v202 + 32);
          v170 = *(v201 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

          if (v70)
          {
            v144 = v71;
            v166 = v70;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            sub_1AF5D15C0(&v196, v177);
            v73 = (v69 + 24);
            v146 = v62;
            v74 = v142;
            do
            {
              v76 = *(v73 - 6);
              v75 = *(v73 - 5);
              v77 = *(v73 - 4);
              v161 = *v73;
              v163 = *(v73 - 1);
              v78 = v73[2];
              v159 = v73[1];
              if (v170)
              {
                v79 = *(v78 + 376);

                v74 = v142;
                os_unfair_lock_lock(v79);
                os_unfair_lock_lock(*(v78 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v74);
              v80 = *(v72 + 64);
              v286[0] = *(v72 + 48);
              v286[1] = v80;
              v287 = *(v72 + 80);
              v81 = *(v72 + 32);
              v82 = *(*(*(*(v78 + 40) + 16) + 32) + 16) + 1;

              *(v72 + 48) = ecs_stack_allocator_allocate(v81, 48 * v82, 8);
              *(v72 + 56) = v82;
              *(v72 + 72) = 0;
              *(v72 + 80) = 0;
              *(v72 + 64) = 0;

              v177[0] = 1;
              v288[0] = v144;
              v288[1] = v78;
              v288[2] = v72;
              v288[3] = v77;
              v288[4] = (v75 - v76 + v77);
              v288[5] = v148;
              v288[6] = v76;
              v288[7] = v75;
              v288[8] = 0;
              v288[9] = 0;
              v289 = 1;
              v290 = v163;
              v291 = v161;
              v292 = v159;
              v7 = v154;

              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              sub_1AFD29AD8(v288, v153, v146, v154);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              v231 = v150;
              v232 = v229;
              v233 = v230;
              sub_1AF630994(v72, &v231, v286);
              sub_1AF62D29C(v78);
              ecs_stack_allocator_pop_snapshot(v74);
              LOBYTE(v10) = v156;
              if (v170)
              {
                os_unfair_lock_unlock(*(v78 + 344));
                os_unfair_lock_unlock(*(v78 + 376));
              }

              v73 += 6;
              --v166;
            }

            while (v166);
            swift_unknownObjectRelease();
            sub_1AFB3CAC4(v194, sub_1AF7004C4);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            sub_1AF0D9DB0(&v196, &qword_1ED725EA0);
            sub_1AF0D9DB0(&v196, &qword_1ED725EA0);
            a1 = v143;
            goto LABEL_7;
          }
        }

        sub_1AF5D15C0(&v196, v177);
        sub_1AFB3CAC4(v194, sub_1AF7004C4);

        swift_unknownObjectRelease();
        sub_1AF0D9DB0(&v196, &qword_1ED725EA0);
        sub_1AF0D9DB0(&v196, &qword_1ED725EA0);
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1AFB3CAC4(v194, sub_1AF7004C4);
      }
    }

LABEL_7:
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v280 = qword_1ED73B840;
    v281 = 0;
    v282 = 2;
    v283 = 0;
    v284 = 2;
    v285 = 0;
    sub_1AF829118(v204);
    sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
    v11 = swift_allocObject();
    v12 = &type metadata for DebugInfoB;
    *(v11 + 16) = xmmword_1AFE431C0;
    if (v10)
    {
      v12 = &type metadata for DebugInfoA;
    }

    v13 = &off_1F2560048;
    if ((v10 & 1) == 0)
    {
      v13 = &off_1F255FFB8;
    }

    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    sub_1AF5F9038(v205);
    sub_1AFB3F8A4(v204, &unk_1EB642A48);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v240[0] = v205[0];
    v240[1] = v205[1];
    v241 = v206;
    sub_1AF6B06C0(a1, v240, 0x200000000, v207);
    if (!*v207)
    {
      sub_1AFB3F8A4(v205, &unk_1EB642A48);
      *(v7 + 240) = 0;
      goto LABEL_161;
    }

    v158 = *&v207[40];
    v169 = *(&v209 + 1);
    v227 = *&v207[8];
    v228 = *&v207[24];
    v160 = *(&v208 + 1);
    v145 = v209;
    v147 = *v207;
    v149 = v210;
    if (v210 < 1 || !*(&v208 + 1))
    {
      v16 = 0;
      v17 = 0;
      goto LABEL_96;
    }

    v14 = *(v209 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v168 = *(*(&v209 + 1) + 32);
    v237 = *v207;
    v238 = *&v207[8];
    v239 = *&v207[24];
    *&__src[32] = *&v207[32];
    *&__src[48] = v208;
    *&__src[64] = v209;
    *&__src[80] = v210;
    *__src = *v207;
    *&__src[16] = *&v207[16];
    sub_1AF5DD298(__src, v177);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v155 = v14;
    while (1)
    {
      v18 = (v158 + 48 * v15);
      v19 = *v18;
      v162 = v18[1];
      v165 = v15;
      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = *(v18 + 4);
      v23 = *(v18 + 5);
      if (v14)
      {
        v24 = *(v23 + 376);

        os_unfair_lock_lock(v24);
        os_unfair_lock_lock(*(v23 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v168);
      v25 = *(v169 + 64);
      v278[0] = *(v169 + 48);
      v278[1] = v25;
      v279 = *(v169 + 80);
      v26 = *(*(*(*(v23 + 40) + 16) + 32) + 16) + 1;
      *(v169 + 48) = ecs_stack_allocator_allocate(*(v169 + 32), 48 * v26, 8);
      *(v169 + 56) = v26;
      *(v169 + 72) = 0;
      *(v169 + 80) = 0;
      *(v169 + 64) = 0;
      v27 = sub_1AF64B110(&type metadata for DebugInfoWireframePrimitive, &off_1F25604A8, v21, v20, v22, v169);
      if (v21)
      {
        v28 = v160;
        v14 = v155;
        if (v22)
        {
          v29 = v27 + 48;
          v30 = v165;
          do
          {
            v33 = v29;
            v34 = *(v29 - 16);
            v35 = *(v29 + 48);
            v29 += 112;
            v31 = 72;
            switch(v35)
            {
              case 1:
                v17 += 3;
                v32 = 6;
                break;
              case 2:
                v17 += 6;
                v32 = 6;
                break;
              case 3:
                goto LABEL_25;
              case 4:
                v31 = 24;
                goto LABEL_25;
              case 5:
                v31 = (*(v33 - 7) * 24.0);
LABEL_25:
                v17 += v31;
                v32 = 2 * v31;
                break;
              case 6:
              case 8:
                v17 += 8;
                v32 = 24;
                break;
              case 7:
                v17 += 48;
                v32 = 2 * v34 + 96;
                break;
              case 9:
                v36 = *(v33 - 1) + *v33;
                v17 += 24 * v36;
                v32 = 48 * v36;
                break;
              case 10:
                v17 += 4;
                v32 = 4;
                break;
              case 11:
                v17 += 2;
                v32 = 2;
                break;
              case 12:
                v17 += 12;
                v32 = 18;
                break;
              default:
                v37 = v17 + 6;
                v38 = 10;
                if (!v34)
                {
                  v38 = 2;
                  v37 = v17 + 2;
                }

                if (v34 == 1)
                {
                  v39 = 6;
                }

                else
                {
                  v39 = v38;
                }

                if (v34 == 1)
                {
                  v37 = v17 + 4;
                }

                v40 = v34 == 2;
                if (v34 == 2)
                {
                  v32 = 6;
                }

                else
                {
                  v32 = v39;
                }

                if (v40)
                {
                  v17 += 4;
                }

                else
                {
                  v17 = v37;
                }

                break;
            }

            v16 += v32;
            --v22;
          }

          while (v22);
          goto LABEL_53;
        }
      }

      else
      {
        v14 = v155;
        if (v19 != v162)
        {
          v41 = ~v19 + v162;
          v42 = v27 + 112 * v19 + 48;
          v28 = v160;
          v30 = v165;
          while (1)
          {
            v45 = v42;
            v46 = *(v42 - 16);
            v47 = *(v42 + 48);
            v42 += 112;
            v43 = 72;
            switch(v47)
            {
              case 1:
                v17 += 3;
                goto LABEL_72;
              case 2:
                v17 += 6;
LABEL_72:
                v16 += 6;
                if (!v41)
                {
                  goto LABEL_53;
                }

                goto LABEL_58;
              case 3:
                goto LABEL_65;
              case 4:
                v43 = 24;
LABEL_65:
                v44 = 2 * v43;
                goto LABEL_57;
              case 5:
                v43 = (*(v45 - 7) * 24.0);
                v44 = 2 * v43;
                goto LABEL_57;
              case 6:
              case 8:
                v17 += 8;
                v16 += 24;
                if (!v41)
                {
                  goto LABEL_53;
                }

                goto LABEL_58;
              case 7:
                v44 = 2 * v46 + 96;
                v43 = 48;
                goto LABEL_57;
              case 9:
                v43 = 24 * (*(v45 - 1) + *v45);
                v44 = 48 * (*(v45 - 1) + *v45);
                goto LABEL_57;
              case 10:
                v17 += 4;
                v16 += 4;
                if (!v41)
                {
                  goto LABEL_53;
                }

                goto LABEL_58;
              case 11:
                v17 += 2;
                v16 += 2;
                if (!v41)
                {
                  goto LABEL_53;
                }

                goto LABEL_58;
              case 12:
                v17 += 12;
                v16 += 18;
                if (!v41)
                {
                  goto LABEL_53;
                }

                goto LABEL_58;
              default:
                if (v46 >= 3u)
                {
                  v44 = 10;
                  v43 = 6;
                }

                else
                {
                  v48 = v46 & 3;
                  v44 = qword_1AFE9B290[v48];
                  v43 = qword_1AFE9B2A8[v48];
                }

LABEL_57:
                v17 += v43;
                v16 += v44;
                if (!v41)
                {
                  goto LABEL_53;
                }

LABEL_58:
                --v41;
                break;
            }
          }
        }

        v28 = v160;
      }

      v30 = v165;
LABEL_53:
      sub_1AF630994(v169, &v237, v278);
      sub_1AF62D29C(v23);
      ecs_stack_allocator_pop_snapshot(v168);
      if (v14)
      {
        os_unfair_lock_unlock(*(v23 + 344));
        os_unfair_lock_unlock(*(v23 + 376));
      }

      v15 = v30 + 1;
      if (v15 == v28)
      {
        sub_1AF0D9DB0(v207, &qword_1ED725EA0);
        a1 = v143;
LABEL_96:
        sub_1AFB3CC14(v17, v16, a1, &v211);
        v190 = v223;
        v191 = v224;
        v192 = v225;
        v186 = v219;
        v187 = v220;
        v188 = v221;
        v189 = v222;
        v182 = v215;
        v183 = v216;
        v184 = v217;
        v185 = v218;
        v178 = v211;
        v179 = v212;
        v180 = v213;
        v181 = v214;
        if (v211)
        {
          v83 = v154;

          sub_1AF8989FC(0xD000000000000015, 0x80000001AFF488A0, 0x72665F6775626564, 0xEA00000000006761, MEMORY[0x1E69E7CC0], v226);
          *&v177[112] = v226[7];
          *&v177[128] = v226[8];
          *&v177[144] = v226[9];
          *&v177[160] = v226[10];
          *&v177[48] = v226[3];
          *&v177[64] = v226[4];
          *&v177[80] = v226[5];
          *&v177[96] = v226[6];
          *v177 = v226[0];
          *&v177[16] = v226[1];
          *&v177[32] = v226[2];
          v84 = v151[3];
          *&v177[208] = v151[2];
          *&v177[224] = v84;
          *&v177[240] = v151[4];
          *&v177[256] = *(v151 + 10);
          v85 = v151[1];
          *&v177[176] = *v151;
          *&v177[192] = v85;
          sub_1AF5FF2F0(&v171);
          v173 = xmmword_1AFE68E40;
          v174 = xmmword_1AFE68E40;
          v171 = xmmword_1AFE68E40;
          v172 = xmmword_1AFE68E40;
          *&v177[264] = xmmword_1AFE68E40;
          *&v177[280] = xmmword_1AFE68E40;
          *&v177[296] = xmmword_1AFE68E40;
          *&v177[312] = xmmword_1AFE68E40;
          sub_1AFDFF308();
          sub_1AF6021F8(v226, __src);
          sub_1AF89747C(&v248);
          sub_1AF602254(v226);
          v86 = *(v151 + 1);
          v87 = *(v151 + 2);
          v88 = *(v151 + 3);
          v89 = *(v151 + 4);
          v90 = *(v151 + 5);
          v92 = *(v151 + 6);
          v91 = *(v151 + 7);
          MEMORY[0x1B271ACB0](*v151);
          MEMORY[0x1B271ACB0](v86);
          MEMORY[0x1B271ACB0](v87);
          MEMORY[0x1B271ACB0](v88);
          MEMORY[0x1B271ACB0](v89);
          MEMORY[0x1B271ACB0](v90);
          MEMORY[0x1B271ACB0](v92);
          MEMORY[0x1B271ACB0](v91);
          MEMORY[0x1B271ACB0](*(v151 + 8));
          MEMORY[0x1B271ACB0](*(v151 + 9));
          sub_1AFDFF2A8();
          v274 = v171;
          v275 = v172;
          v276 = v173;
          v277 = v174;
          sub_1AF5FF304();
          sub_1AFDFF2A8();
          sub_1AFDFF2A8();
          MEMORY[0x1B271ACB0](2);
          sub_1AFDFF2A8();
          sub_1AFDFF2A8();
          v271 = v250;
          v272 = v251;
          v273 = v252;
          v269 = v248;
          v270 = v249;
          v93 = sub_1AFDFF2E8();
          memcpy(__src, v177, sizeof(__src));
          v257 = 0;
          v256 = 0;
          v258 = 2;
          v259 = 0;
          v260 = 0;
          v261 = 2;
          v264 = 0;
          v262 = 0;
          v263 = 0;
          v265 = 257;
          v266 = v175;
          v267 = v176;
          v268 = v93;
          v94 = sub_1AF730058(__src, 0);
          v96 = v95;
          v98 = v97;
          v99 = v97;

          sub_1AF602304(__src);
          if (v99)
          {
            sub_1AF6022A8(v94, v96, v98);
            sub_1AFB3F8A4(v205, &unk_1EB642A48);
            sub_1AF0D9DB0(v207, &qword_1ED725EA0);
            goto LABEL_160;
          }

          v100 = swift_unknownObjectRetain();
          sub_1AF6022A8(v100, v96, 0);
          v101 = v153;
          swift_getObjectType();
          [v153 setRenderPipelineState_];
          [v153 setDepthStencilState_];
          sub_1AFB19490(v143, v154);
          sub_1AF6F5CFC(2.0);
          if (v149 >= 1 && v160)
          {
            v102 = *(v145 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v103 = *(v169 + 32);
            v234 = v147;
            v235 = v227;
            v236 = v228;
            sub_1AF5D15C0(v207, &v248);
            v104 = 0;
            v157 = v102;
            v152 = v103;
            while (1)
            {
              v105 = (v158 + 48 * v104);
              v107 = *v105;
              v106 = v105[1];
              v108 = *(v105 + 2);
              v109 = *(v105 + 3);
              v111 = *(v105 + 4);
              v110 = *(v105 + 5);
              v167 = v104;
              if (v102)
              {
                v112 = *(v110 + 376);

                os_unfair_lock_lock(v112);
                os_unfair_lock_lock(*(v110 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v103);
              v113 = *(v169 + 64);
              v244[0] = *(v169 + 48);
              v244[1] = v113;
              v245 = *(v169 + 80);
              v114 = *(*(*(*(v110 + 40) + 16) + 32) + 16) + 1;
              *(v169 + 48) = ecs_stack_allocator_allocate(*(v169 + 32), 48 * v114, 8);
              *(v169 + 56) = v114;
              *(v169 + 72) = 0;
              *(v169 + 80) = 0;
              *(v169 + 64) = 0;
              v115 = v110;
              v116 = sub_1AF64B110(&type metadata for DebugInfoWireframePrimitive, &off_1F25604A8, v108, v109, v111, v169);
              v117 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v108, v109, v111, v169);
              v119 = v118;
              v164 = v115;
              v120 = sub_1AF64B110(&type metadata for DebugInfoColor, &off_1F2560488, v108, v109, v111, v169);
              if (v107 != v106)
              {
                break;
              }

              v83 = v154;
LABEL_110:
              sub_1AF630994(v169, &v234, v244);
              sub_1AF62D29C(v115);
              v103 = v152;
              ecs_stack_allocator_pop_snapshot(v152);
              v102 = v157;
              if (v157)
              {
                os_unfair_lock_unlock(*(v164 + 43));
                os_unfair_lock_unlock(*(v164 + 47));
              }

              v104 = v167 + 1;
              if (v167 + 1 == v160)
              {
                sub_1AF0D9DB0(v207, &qword_1ED725EA0);
                v101 = v153;
                goto LABEL_159;
              }
            }

            v125 = v121;
            v126 = v106 - v107;
            v127 = (v120 + 4 * v107);
            v128 = v116 + 112 * v107 + 32;
            v129 = (v117 + (v107 << 6) + 32);
            v83 = v154;
            while (2)
            {
              v135 = v128;
              v254 = *(v128 + 64);
              v251 = *(v128 + 16);
              v252 = *(v128 + 32);
              v253 = *(v128 + 48);
              v248 = *(v128 - 32);
              v249 = *(v128 - 16);
              v250 = *v128;
              v137 = *v128;
              v128 += 112;
              v136 = v137;
              v138 = 72;
              v139 = 144;
              switch(v254)
              {
                case 1:
                  if (v179 >= v180 + 3)
                  {
                    goto LABEL_130;
                  }

                  goto LABEL_147;
                case 2:
                  if (v179 < v180 + 6)
                  {
                    goto LABEL_147;
                  }

LABEL_130:
                  if (*(&v179 + 1) < *(&v180 + 1) + 6)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_140;
                case 3:
                  goto LABEL_138;
                case 4:
                  v139 = 48;
                  v138 = 24;
                  goto LABEL_138;
                case 5:
                  v138 = (*(&v249 + 1) * 24.0);
                  v139 = 2 * (*(v135 - 12) * 24.0);
                  goto LABEL_138;
                case 6:
                case 8:
                  if (v179 < v180 + 8 || *(&v179 + 1) < *(&v180 + 1) + 24)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_140;
                case 7:
                  if (v179 < v180 + 48)
                  {
                    goto LABEL_147;
                  }

                  v139 = 2 * v136 + 96;
                  goto LABEL_139;
                case 9:
                  v138 = 24 * (*(&v250 + 1) + v251);
                  v139 = 48 * (*(v135 + 8) + *(v135 + 16));
                  goto LABEL_138;
                case 10:
                  if (v179 < v180 + 4 || *(&v179 + 1) < *(&v180 + 1) + 4)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_140;
                case 11:
                  if (v179 < v180 + 2 || *(&v179 + 1) < *(&v180 + 1) + 2)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_140;
                case 12:
                  if (v179 < v180 + 12 || *(&v179 + 1) < *(&v180 + 1) + 18)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_140;
                default:
                  if (v250 > 2uLL)
                  {
                    v138 = 6;
                    v140 = v136;
                    if (!v136)
                    {
LABEL_151:
                      v139 = 2;
                      goto LABEL_138;
                    }
                  }

                  else
                  {
                    v138 = qword_1AFE9B2A8[v250];
                    v140 = v136;
                    if (!v136)
                    {
                      goto LABEL_151;
                    }
                  }

                  if (v140 == 2 || v140 == 1)
                  {
                    v139 = 6;
                  }

                  else
                  {
                    v139 = 10;
                  }

LABEL_138:
                  if (v179 < v138 + v180)
                  {
                    goto LABEL_147;
                  }

LABEL_139:
                  if (*(&v179 + 1) < v139 + *(&v180 + 1))
                  {
LABEL_147:
                    sub_1AFB356C8(v154, v153);
                    if (v125)
                    {
LABEL_141:
                      v141 = 0;
                      if ((v119 & 1) == 0)
                      {
                        goto LABEL_149;
                      }

                      goto LABEL_113;
                    }
                  }

                  else
                  {
LABEL_140:
                    if (v125)
                    {
                      goto LABEL_141;
                    }
                  }

                  v141 = *v127;
                  if ((v119 & 1) == 0)
                  {
LABEL_149:
                    v130 = 0;
                    v131 = v129[-2];
                    v132 = v129[-1];
                    v133 = *v129;
                    v134 = v129[1];
LABEL_114:
                    v246[0] = v131;
                    v246[1] = v132;
                    v246[2] = v133;
                    v246[3] = v134;
                    v247 = v130;
                    sub_1AFB32C68(v141 | ((v125 & 1) << 32), v246, &v178, *v131.i64, *v132.i64, v133, *v134.i64, v122, v123, v124);
                    ++v127;
                    v129 += 4;
                    if (!--v126)
                    {
                      goto LABEL_110;
                    }

                    continue;
                  }

LABEL_113:
                  v130 = 1;
                  v131 = 0uLL;
                  v132 = 0uLL;
                  v133 = 0uLL;
                  v134 = 0uLL;
                  goto LABEL_114;
              }
            }
          }

LABEL_159:
          sub_1AFB356C8(v83, v101);
          sub_1AFB3F8A4(v205, &unk_1EB642A48);
          sub_1AF0D9DB0(v207, &qword_1ED725EA0);
          swift_unknownObjectRelease();
LABEL_160:
          *(v83 + 240) = 0;
LABEL_161:

          return;
        }

        sub_1AFB3F8A4(v205, &unk_1EB642A48);
        sub_1AF0D9DB0(v207, &qword_1ED725EA0);
LABEL_100:
        *(v154 + 240) = 0;
        goto LABEL_161;
      }
    }
  }
}

uint64_t sub_1AFB371F8(uint64_t a1)
{

  sub_1AF5FCA80();
  v3 = v2;

  if (v3 == 2)
  {
    return 0;
  }

  v5 = *(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v4) + 8);
  sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0);
  v6 = swift_allocObject();
  v7 = &type metadata for DebugInfoB;
  *(v6 + 16) = xmmword_1AFE431C0;
  if (v3)
  {
    v7 = &type metadata for DebugInfoA;
  }

  v8 = &off_1F2560428;
  if ((v3 & 1) == 0)
  {
    v8 = &off_1F2560448;
  }

  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  return v5;
}

uint64_t sub_1AFB372F8(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v28 = a2[1];
  v29 = *a2;
  v26 = a2[3];
  v27 = a2[2];
  v30[0] = xmmword_1AFE201A0;
  v30[1] = xmmword_1AFE9AB10;
  v31 = 6;
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v9 = *(a4 + 16);
  v10 = 2 * v9;
  v11 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v9 + 64, 8);
  *v11 = &type metadata for DebugInfoWireframePrimitive;
  v11[1] = &off_1F25604A8;
  v11[2] = &type metadata for DebugInfoColor;
  v11[3] = &off_1F2560488;
  v11[4] = &type metadata for WorldTransform;
  v11[5] = &off_1F2529FC0;
  v11[6] = &type metadata for Beamed;
  v11[7] = &off_1F2529FA0;
  if (v9)
  {
    if (v9 > 0x13)
    {
      v12 = 0;
      v18 = 2 * (v9 - 1);
      v13 = 4;
      if (&v11[v18 + 8] < v11 + 8 || &v11[v18 + 9] < v11 + 9 || (v9 - 1) >> 60)
      {
        goto LABEL_4;
      }

      if ((v11 + 8) >= a4 + v10 * 8 + 32 || a4 + 32 >= &v11[v10 + 8])
      {
        v12 = v9 & 0x1FFFFFFFFFFFFFFCLL;
        v13 = (v9 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v19 = v11 + 12;
        v20 = (a4 + 64);
        v21 = v9 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v23 = *(v20 - 2);
          v22 = *(v20 - 1);
          v25 = *v20;
          v24 = v20[1];
          v20 += 4;
          *(v19 - 2) = v23;
          *(v19 - 1) = v22;
          *v19 = v25;
          v19[1] = v24;
          v19 += 4;
          v21 -= 4;
        }

        while (v21);
        if (v9 == v12)
        {
          goto LABEL_8;
        }

        goto LABEL_4;
      }
    }

    v12 = 0;
    v13 = 4;
LABEL_4:
    v14 = v9 - v12;
    v15 = (a4 + 16 * v12 + 32);
    do
    {
      v16 = *v15++;
      *&v11[2 * v13++] = v16;
      --v14;
    }

    while (v14);
    goto LABEL_8;
  }

  v13 = 4;
LABEL_8:
  sub_1AF63D8A8(v11, v13, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, v30, a5, v29, v28, v27, v26);
  result = ecs_stack_allocator_pop_snapshot(*(a3 + 32));
  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_1AFB37500(uint64_t a1)
{

  sub_1AF5FCA80();
  v3 = v2;

  if (v3 != 2)
  {
    v121 = *(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v4) + 8);
    sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0);
    v5 = swift_allocObject();
    v6 = v5;
    v7 = &type metadata for DebugInfoB;
    *(v5 + 16) = xmmword_1AFE431C0;
    if (v3)
    {
      v7 = &type metadata for DebugInfoA;
    }

    v8 = &off_1F2560428;
    if ((v3 & 1) == 0)
    {
      v8 = &off_1F2560448;
    }

    *(v5 + 32) = v7;
    *(v5 + 40) = v8;
    v120 = sub_1AFB3CAA4(0, 255, 0);
    if (qword_1EB637250 != -1)
    {
      swift_once();
    }

    v230[0] = xmmword_1EB6C3578;
    v230[1] = unk_1EB6C3588;
    v231 = qword_1EB6C3598;
    sub_1AF6B06C0(a1, v230, 0x200000000, &v122);
    v119 = v6;
    v93 = a1;
    v94 = v122;
    if (v122)
    {
      v9 = v125;
      v10 = v126;
      v11 = v128;
      v171 = v123;
      v172 = v124;
      v83 = v129;
      v88 = v127;
      if (v129 > 0 && v126)
      {
        v12 = *(v128 + 32);
        v13 = *(v127 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(&v122, v225);
        v14 = (v9 + 24);
        v79 = v13;
        do
        {
          v114 = v10;
          v15 = *(v14 - 6);
          v16 = *(v14 - 5);
          v17 = *(v14 - 4);
          v104 = *v14;
          v109 = *(v14 - 1);
          v18 = v14[2];
          v99 = v14[1];
          if (v13)
          {
            v19 = *(v18 + 376);

            os_unfair_lock_lock(v19);
            os_unfair_lock_lock(*(v18 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v12);
          v20 = *(v11 + 64);
          v223[0] = *(v11 + 48);
          v223[1] = v20;
          v224 = *(v11 + 80);
          v21 = *(v11 + 32);
          v22 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;

          *(v11 + 48) = ecs_stack_allocator_allocate(v21, 48 * v22, 8);
          *(v11 + 56) = v22;
          *(v11 + 72) = 0;
          *(v11 + 80) = 0;
          *(v11 + 64) = 0;

          LOBYTE(v216[0]) = 1;
          v225[0] = v88;
          v225[1] = v18;
          v225[2] = v11;
          v225[3] = v17;
          v225[4] = (v16 - v15 + v17);
          v225[5] = v83;
          v225[6] = v15;
          v225[7] = v16;
          v225[8] = 0;
          v225[9] = 0;
          v226 = 1;
          v227 = v109;
          v228 = v104;
          v229 = v99;

          sub_1AFD27208(v225, v121, v119, v120);

          v173 = v94;
          v174 = v171;
          v175 = v172;
          sub_1AF630994(v11, &v173, v223);
          sub_1AF62D29C(v18);
          ecs_stack_allocator_pop_snapshot(v12);
          v13 = v79;
          if (v79)
          {
            os_unfair_lock_unlock(*(v18 + 344));
            os_unfair_lock_unlock(*(v18 + 376));
          }

          v14 += 6;
          v10 = v114 - 1;
        }

        while (v114 != 1);
        sub_1AF0D9DB0(&v122, &qword_1ED725EA0);
        v6 = v119;
        sub_1AF0D9DB0(&v122, &qword_1ED725EA0);

        a1 = v93;
      }

      else
      {
        sub_1AF0D9DB0(&v122, &qword_1ED725EA0);
      }
    }

    if (qword_1EB637228 != -1)
    {
      swift_once();
    }

    v221[0] = xmmword_1EB6C34B0;
    v221[1] = unk_1EB6C34C0;
    v222 = qword_1EB6C34D0;
    sub_1AF6B06C0(a1, v221, 0x200000000, &v130);
    v95 = v130;
    if (v130)
    {
      v23 = v133;
      v24 = v134;
      v25 = v136;
      v169 = v131;
      v170 = v132;
      v84 = v137;
      v89 = v135;
      if (v137 > 0 && v134)
      {
        v26 = *(v136 + 32);
        v27 = *(v135 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(&v130, v216);
        v28 = (v23 + 24);
        v80 = v27;
        do
        {
          v115 = v24;
          v29 = *(v28 - 6);
          v30 = *(v28 - 5);
          v31 = *(v28 - 4);
          v105 = *v28;
          v110 = *(v28 - 1);
          v32 = v28[2];
          v100 = v28[1];
          if (v27)
          {
            v33 = *(v32 + 376);

            os_unfair_lock_lock(v33);
            os_unfair_lock_lock(*(v32 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v26);
          v34 = *(v25 + 64);
          v214[0] = *(v25 + 48);
          v214[1] = v34;
          v215 = *(v25 + 80);
          v35 = *(v25 + 32);
          v36 = *(*(*(*(v32 + 40) + 16) + 32) + 16) + 1;

          *(v25 + 48) = ecs_stack_allocator_allocate(v35, 48 * v36, 8);
          *(v25 + 56) = v36;
          *(v25 + 72) = 0;
          *(v25 + 80) = 0;
          *(v25 + 64) = 0;

          LOBYTE(v207[0]) = 1;
          v216[0] = v89;
          v216[1] = v32;
          v216[2] = v25;
          v216[3] = v31;
          v216[4] = (v30 - v29 + v31);
          v216[5] = v84;
          v216[6] = v29;
          v216[7] = v30;
          v216[8] = 0;
          v216[9] = 0;
          v217 = 1;
          v218 = v110;
          v219 = v105;
          v220 = v100;

          sub_1AFD27734(v216, v121, v119, v120);

          v176 = v95;
          v177 = v169;
          v178 = v170;
          sub_1AF630994(v25, &v176, v214);
          sub_1AF62D29C(v32);
          ecs_stack_allocator_pop_snapshot(v26);
          v27 = v80;
          if (v80)
          {
            os_unfair_lock_unlock(*(v32 + 344));
            os_unfair_lock_unlock(*(v32 + 376));
          }

          v28 += 6;
          v24 = v115 - 1;
        }

        while (v115 != 1);
        sub_1AF0D9DB0(&v130, &qword_1ED725EA0);
        v6 = v119;
        sub_1AF0D9DB0(&v130, &qword_1ED725EA0);

        a1 = v93;
      }

      else
      {
        sub_1AF0D9DB0(&v130, &qword_1ED725EA0);
      }
    }

    if (qword_1EB637240 != -1)
    {
      swift_once();
    }

    v212[0] = xmmword_1EB6C3528;
    v212[1] = unk_1EB6C3538;
    v213 = qword_1EB6C3548;
    sub_1AF6B06C0(a1, v212, 0x200000000, &v138);
    v96 = v138;
    if (v138)
    {
      v37 = v141;
      v38 = v142;
      v39 = v144;
      v167 = v139;
      v168 = v140;
      v85 = v145;
      v90 = v143;
      if (v145 > 0 && v142)
      {
        v40 = v144[4];
        v116 = *(v143 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v41 = v6;

        sub_1AF5D15C0(&v138, v207);
        v42 = (v37 + 24);
        do
        {
          v43 = v39;
          v45 = *(v42 - 6);
          v44 = *(v42 - 5);
          v46 = *(v42 - 4);
          v106 = *v42;
          v111 = *(v42 - 1);
          v47 = v42[2];
          v101 = v42[1];
          if (v116)
          {
            v48 = *(v47 + 376);

            v49 = v48;
            v50 = v119;
            os_unfair_lock_lock(v49);
            os_unfair_lock_lock(*(v47 + 344));
          }

          else
          {

            v50 = v41;
          }

          ecs_stack_allocator_push_snapshot(v40);

          sub_1AF630914(v51, v43, v146);

          LOBYTE(v200[0]) = 1;
          v207[0] = v90;
          v207[1] = v47;
          v207[2] = v43;
          v207[3] = v46;
          v207[4] = (v44 - v45 + v46);
          v207[5] = v85;
          v207[6] = v45;
          v207[7] = v44;
          v207[8] = 0;
          v207[9] = 0;
          v208 = 1;
          v209 = v111;
          v210 = v106;
          v211 = v101;

          v41 = v50;
          sub_1AFD10858(v207, v121, v50, v120);
          v179 = v96;
          v180 = v167;
          v181 = v168;
          sub_1AF630994(v43, &v179, v146);
          sub_1AF62D29C(v47);
          ecs_stack_allocator_pop_snapshot(v40);
          v39 = v43;
          if (v116)
          {
            os_unfair_lock_unlock(*(v47 + 344));
            os_unfair_lock_unlock(*(v47 + 376));
          }

          v42 += 6;
          --v38;
        }

        while (v38);
        sub_1AF0D9DB0(&v138, &qword_1ED725EA0);
        sub_1AF0D9DB0(&v138, &qword_1ED725EA0);

        a1 = v93;
      }

      else
      {
        sub_1AF0D9DB0(&v138, &qword_1ED725EA0);
      }
    }

    if (qword_1EB637230 != -1)
    {
      swift_once();
    }

    v205[0] = xmmword_1EB6C34D8;
    v205[1] = unk_1EB6C34E8;
    v206 = qword_1EB6C34F8;
    sub_1AF6B06C0(a1, v205, 0x200000000, &v147);
    v97 = v147;
    if (v147)
    {
      v52 = v150;
      v53 = v151;
      v54 = v153;
      v165 = v148;
      v166 = v149;
      v86 = v154;
      v91 = v152;
      if (v154 > 0 && v151)
      {
        v55 = *(v153 + 32);
        v56 = *(v152 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(&v147, v200);
        v57 = (v52 + 24);
        v81 = v56;
        do
        {
          v117 = v53;
          v58 = *(v57 - 6);
          v59 = *(v57 - 5);
          v60 = *(v57 - 4);
          v107 = *v57;
          v112 = *(v57 - 1);
          v61 = v57[2];
          v102 = v57[1];
          if (v56)
          {
            v62 = *(v61 + 376);

            os_unfair_lock_lock(v62);
            os_unfair_lock_lock(*(v61 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v55);
          v63 = *(v54 + 64);
          v198[0] = *(v54 + 48);
          v198[1] = v63;
          v199 = *(v54 + 80);
          v64 = *(v54 + 32);
          v65 = *(*(*(*(v61 + 40) + 16) + 32) + 16) + 1;

          *(v54 + 48) = ecs_stack_allocator_allocate(v64, 48 * v65, 8);
          *(v54 + 56) = v65;
          *(v54 + 72) = 0;
          *(v54 + 80) = 0;
          *(v54 + 64) = 0;

          LOBYTE(v191[0]) = 1;
          v200[0] = v91;
          v200[1] = v61;
          v200[2] = v54;
          v200[3] = v60;
          v200[4] = (v59 - v58 + v60);
          v200[5] = v86;
          v200[6] = v58;
          v200[7] = v59;
          v200[8] = 0;
          v200[9] = 0;
          v201 = 1;
          v202 = v112;
          v203 = v107;
          v204 = v102;

          sub_1AFD27C10(v200, v121, v119, v120);

          v182 = v97;
          v183 = v165;
          v184 = v166;
          sub_1AF630994(v54, &v182, v198);
          sub_1AF62D29C(v61);
          ecs_stack_allocator_pop_snapshot(v55);
          v56 = v81;
          if (v81)
          {
            os_unfair_lock_unlock(*(v61 + 344));
            os_unfair_lock_unlock(*(v61 + 376));
          }

          v57 += 6;
          v53 = v117 - 1;
        }

        while (v117 != 1);
        sub_1AF0D9DB0(&v147, &qword_1ED725EA0);
        sub_1AF0D9DB0(&v147, &qword_1ED725EA0);

        a1 = v93;
      }

      else
      {
        sub_1AF0D9DB0(&v147, &qword_1ED725EA0);
      }
    }

    if (qword_1EB637238 != -1)
    {
      swift_once();
    }

    v196[0] = xmmword_1EB6C3500;
    v196[1] = *algn_1EB6C3510;
    v197 = qword_1EB6C3520;
    sub_1AF6B06C0(a1, v196, 0x200000000, &v155);
    v92 = v155;
    if (v155)
    {
      v66 = v158;
      v67 = v159;
      v68 = v161;
      v163 = v156;
      v164 = v157;
      v82 = v162;
      v87 = v160;
      if (v162 > 0 && v159)
      {
        v69 = *(v161 + 32);
        v118 = *(v160 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(&v155, v191);
        v70 = (v66 + 24);
        do
        {
          v113 = v67;
          v72 = *(v70 - 6);
          v71 = *(v70 - 5);
          v73 = *(v70 - 4);
          v74 = v70[2];
          v103 = *v70;
          v108 = *(v70 - 1);
          v98 = v70[1];
          if (v118)
          {
            v75 = *(v74 + 376);

            os_unfair_lock_lock(v75);
            os_unfair_lock_lock(*(v74 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v69);
          v76 = *(v68 + 64);
          v189[0] = *(v68 + 48);
          v189[1] = v76;
          v190 = *(v68 + 80);
          v77 = *(v68 + 32);
          v78 = *(*(*(*(v74 + 40) + 16) + 32) + 16) + 1;

          *(v68 + 48) = ecs_stack_allocator_allocate(v77, 48 * v78, 8);
          *(v68 + 56) = v78;
          *(v68 + 72) = 0;
          *(v68 + 80) = 0;
          *(v68 + 64) = 0;

          LOBYTE(v185) = 1;
          v191[0] = v87;
          v191[1] = v74;
          v191[2] = v68;
          v191[3] = v73;
          v191[4] = (v71 - v72 + v73);
          v191[5] = v82;
          v191[6] = v72;
          v191[7] = v71;
          v191[8] = 0;
          v191[9] = 0;
          v192 = 1;
          v193 = v108;
          v194 = v103;
          v195 = v98;

          sub_1AFD280CC(v191, v93, v121, v119, v120);

          v186 = v92;
          v187 = v163;
          v188 = v164;
          sub_1AF630994(v68, &v186, v189);
          sub_1AF62D29C(v74);
          ecs_stack_allocator_pop_snapshot(v69);
          if (v118)
          {
            os_unfair_lock_unlock(*(v74 + 344));
            os_unfair_lock_unlock(*(v74 + 376));
          }

          v70 += 6;
          v67 = v113 - 1;
        }

        while (v113 != 1);

        sub_1AF0D9DB0(&v155, &qword_1ED725EA0);
      }

      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AF0D9DB0(&v155, &qword_1ED725EA0);
    }

    else
    {
      swift_setDeallocating();
      swift_deallocClassInstance();
    }
  }
}

uint64_t sub_1AFB38684(_BYTE *a1, __n128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v61 = a2[2];
  v62 = a2[3];
  v59 = *a2;
  v60 = a2[1];
  if (!*a1)
  {
    v63 = xmmword_1AFE201A0;
    v64 = xmmword_1AFE9AB10;
    v65 = 6;
    v9 = (a3 + 32);
    ecs_stack_allocator_push_snapshot(*(a3 + 32));
    v22 = *(a4 + 16);
    v23 = 2 * v22;
    v12 = ecs_stack_allocator_allocate(*v9, 16 * v22 + 64, 8);
    *v12 = &type metadata for DebugInfoWireframePrimitive;
    v12[1] = &off_1F25604A8;
    v12[2] = &type metadata for DebugInfoColor;
    v12[3] = &off_1F2560488;
    v12[4] = &type metadata for WorldTransform;
    v12[5] = &off_1F2529FC0;
    v12[6] = &type metadata for Beamed;
    v12[7] = &off_1F2529FA0;
    if (!v22)
    {
      goto LABEL_21;
    }

    v13 = v61;
    v14 = v62;
    v15 = v59;
    v16 = v60;
    if (v22 > 0x13)
    {
      v24 = 0;
      v43 = 2 * (v22 - 1);
      v18 = 4;
      if (&v12[v43 + 8] < v12 + 8 || &v12[v43 + 9] < v12 + 9 || (v22 - 1) >> 60)
      {
        goto LABEL_12;
      }

      if ((v12 + 8) >= a4 + v23 * 8 + 32 || a4 + 32 >= &v12[v23 + 8])
      {
        v24 = v22 & 0x1FFFFFFFFFFFFFFCLL;
        v18 = (v22 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v44 = v12 + 12;
        v45 = (a4 + 64);
        v46 = v22 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v47 = *(v45 - 2);
          v48 = *(v45 - 1);
          v49 = *v45;
          v50 = v45[1];
          v45 += 4;
          *(v44 - 2) = v47;
          *(v44 - 1) = v48;
          *v44 = v49;
          v44[1] = v50;
          v44 += 4;
          v46 -= 4;
        }

        while (v46);
        if (v22 == v24)
        {
          goto LABEL_22;
        }

        goto LABEL_12;
      }
    }

    v24 = 0;
    v18 = 4;
LABEL_12:
    v25 = v22 - v24;
    v26 = (a4 + 16 * v24 + 32);
    do
    {
      v27 = *v26++;
      *&v12[2 * v18++] = v27;
      --v25;
    }

    while (v25);
    goto LABEL_22;
  }

  if (*a1 != 1)
  {
    v63 = xmmword_1AFE718B0;
    v65 = 3;
    v9 = (a3 + 32);
    ecs_stack_allocator_push_snapshot(*(a3 + 32));
    v28 = *(a4 + 16);
    v29 = 2 * v28;
    v12 = ecs_stack_allocator_allocate(*v9, 16 * v28 + 64, 8);
    *v12 = &type metadata for DebugInfoWireframePrimitive;
    v12[1] = &off_1F25604A8;
    v12[2] = &type metadata for DebugInfoColor;
    v12[3] = &off_1F2560488;
    v12[4] = &type metadata for WorldTransform;
    v12[5] = &off_1F2529FC0;
    v12[6] = &type metadata for Beamed;
    v12[7] = &off_1F2529FA0;
    if (!v28)
    {
      goto LABEL_21;
    }

    v13 = v61;
    v14 = v62;
    v15 = v59;
    v16 = v60;
    if (v28 > 0x13)
    {
      v30 = 0;
      v51 = 2 * (v28 - 1);
      v18 = 4;
      if (&v12[v51 + 8] < v12 + 8 || &v12[v51 + 9] < v12 + 9 || (v28 - 1) >> 60)
      {
        goto LABEL_18;
      }

      if ((v12 + 8) >= a4 + v29 * 8 + 32 || a4 + 32 >= &v12[v29 + 8])
      {
        v30 = v28 & 0x1FFFFFFFFFFFFFFCLL;
        v18 = (v28 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v52 = v12 + 12;
        v53 = (a4 + 64);
        v54 = v28 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v55 = *(v53 - 2);
          v56 = *(v53 - 1);
          v57 = *v53;
          v58 = v53[1];
          v53 += 4;
          *(v52 - 2) = v55;
          *(v52 - 1) = v56;
          *v52 = v57;
          v52[1] = v58;
          v52 += 4;
          v54 -= 4;
        }

        while (v54);
        if (v28 == v30)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    v30 = 0;
    v18 = 4;
LABEL_18:
    v31 = v28 - v30;
    v32 = (a4 + 16 * v30 + 32);
    do
    {
      v33 = *v32++;
      *&v12[2 * v18++] = v33;
      --v31;
    }

    while (v31);
    goto LABEL_22;
  }

  v63 = xmmword_1AFE201A0;
  v64 = xmmword_1AFE52680;
  v65 = 6;
  v9 = (a3 + 32);
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v10 = *(a4 + 16);
  v11 = 2 * v10;
  v12 = ecs_stack_allocator_allocate(*v9, 16 * v10 + 64, 8);
  *v12 = &type metadata for DebugInfoWireframePrimitive;
  v12[1] = &off_1F25604A8;
  v12[2] = &type metadata for DebugInfoColor;
  v12[3] = &off_1F2560488;
  v12[4] = &type metadata for WorldTransform;
  v12[5] = &off_1F2529FC0;
  v12[6] = &type metadata for Beamed;
  v12[7] = &off_1F2529FA0;
  if (v10)
  {
    v13 = v61;
    v14 = v62;
    v15 = v59;
    v16 = v60;
    if (v10 > 0x13)
    {
      v17 = 0;
      v35 = 2 * (v10 - 1);
      v18 = 4;
      if (&v12[v35 + 8] < v12 + 8 || &v12[v35 + 9] < v12 + 9 || (v10 - 1) >> 60)
      {
        goto LABEL_6;
      }

      if ((v12 + 8) >= a4 + v11 * 8 + 32 || a4 + 32 >= &v12[v11 + 8])
      {
        v17 = v10 & 0x1FFFFFFFFFFFFFFCLL;
        v18 = (v10 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v36 = v12 + 12;
        v37 = (a4 + 64);
        v38 = v10 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v39 = *(v37 - 2);
          v40 = *(v37 - 1);
          v41 = *v37;
          v42 = v37[1];
          v37 += 4;
          *(v36 - 2) = v39;
          *(v36 - 1) = v40;
          *v36 = v41;
          v36[1] = v42;
          v36 += 4;
          v38 -= 4;
        }

        while (v38);
        if (v10 == v17)
        {
          goto LABEL_22;
        }

        goto LABEL_6;
      }
    }

    v17 = 0;
    v18 = 4;
LABEL_6:
    v19 = v10 - v17;
    v20 = (a4 + 16 * v17 + 32);
    do
    {
      v21 = *v20++;
      *&v12[2 * v18++] = v21;
      --v19;
    }

    while (v19);
    goto LABEL_22;
  }

LABEL_21:
  v18 = 4;
  v13 = v61;
  v14 = v62;
  v15 = v59;
  v16 = v60;
LABEL_22:
  v66 = 1;
  sub_1AF63D8A8(v12, v18, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, &v63, a5, v15, v16, v13, v14);
  result = ecs_stack_allocator_pop_snapshot(*v9);
  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB38B80(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (*(a1 + 4) != 1)
  {
    v124 = a2[1];
    v126 = *a2;
    v120 = a2[3];
    v122 = a2[2];
    v127 = 0uLL;
    v128 = xmmword_1AFE20180;
    *&v129[0] = v7 | 0x3F00000000000000;
    *(v129 + 8) = xmmword_1AFE9AB20;
    v130 = 9;
    v11 = (a3 + 32);
    ecs_stack_allocator_push_snapshot(*(a3 + 32));
    v20 = *(a4 + 16);
    v21 = 2 * v20;
    v22 = ecs_stack_allocator_allocate(*v11, 16 * v20 + 48, 8);
    *v22 = &type metadata for DebugInfoWireframePrimitive;
    v22[1] = &off_1F25604A8;
    v22[2] = &type metadata for WorldTransform;
    v22[3] = &off_1F2529FC0;
    v22[4] = &type metadata for Beamed;
    v22[5] = &off_1F2529FA0;
    if (!v20)
    {
      goto LABEL_61;
    }

    if (v20 <= 0x13)
    {
      goto LABEL_13;
    }

    v23 = 0;
    v34 = 2 * (v20 - 1);
    v24 = 3;
    if (&v22[v34 + 6] < v22 + 6 || &v22[v34 + 7] < v22 + 7 || (v20 - 1) >> 60)
    {
      goto LABEL_14;
    }

    if ((v22 + 6) < a4 + v21 * 8 + 32 && a4 + 32 < &v22[v21 + 6])
    {
LABEL_13:
      v23 = 0;
      v24 = 3;
    }

    else
    {
      v23 = v20 & 0x1FFFFFFFFFFFFFFCLL;
      v24 = v20 | 3;
      v35 = v22 + 10;
      v36 = (a4 + 64);
      v37 = v20 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v39 = *(v36 - 2);
        v38 = *(v36 - 1);
        v41 = *v36;
        v40 = v36[1];
        v36 += 4;
        *(v35 - 2) = v39;
        *(v35 - 1) = v38;
        *v35 = v41;
        v35[1] = v40;
        v35 += 4;
        v37 -= 4;
      }

      while (v37);
      if (v20 == v23)
      {
        goto LABEL_62;
      }
    }

LABEL_14:
    v25 = v20 - v23;
    v26 = (a4 + 16 * v23 + 32);
    do
    {
      v27 = *v26++;
      *&v22[2 * v24++] = v27;
      --v25;
    }

    while (v25);
    goto LABEL_62;
  }

  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        *&v9 = sub_1AF6DE29C();
        v118 = v9;
        v123 = a2[1];
        v125 = *a2;
        v119 = a2[3];
        v121 = a2[2];
        v10 = sub_1AFB3CAA4(255, 255, 255);
        v127 = v118;
        v130 = 3;
        v11 = (a3 + 32);
        ecs_stack_allocator_push_snapshot(*(a3 + 32));
        v12 = *(a4 + 16);
        v13 = 2 * v12;
        v14 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v12 + 64, 8);
        *v14 = &type metadata for DebugInfoWireframePrimitive;
        v14[1] = &off_1F25604A8;
        v14[2] = &type metadata for DebugInfoColor;
        v14[3] = &off_1F2560488;
        v14[4] = &type metadata for WorldTransform;
        v14[5] = &off_1F2529FC0;
        v14[6] = &type metadata for Beamed;
        v14[7] = &off_1F2529FA0;
        if (v12)
        {
          if (v12 <= 0x13)
          {
            goto LABEL_7;
          }

          v15 = 0;
          v86 = 2 * (v12 - 1);
          v16 = 4;
          if (&v14[v86 + 8] < v14 + 8 || &v14[v86 + 9] < v14 + 9 || (v12 - 1) >> 60)
          {
            goto LABEL_8;
          }

          if ((v14 + 8) < a4 + v13 * 8 + 32 && a4 + 32 < &v14[v13 + 8])
          {
LABEL_7:
            v15 = 0;
            v16 = 4;
          }

          else
          {
            v15 = v12 & 0x1FFFFFFFFFFFFFFCLL;
            v16 = (v12 & 0x1FFFFFFFFFFFFFFCLL) + 4;
            v87 = v14 + 12;
            v88 = (a4 + 64);
            v89 = v12 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v91 = *(v88 - 2);
              v90 = *(v88 - 1);
              v93 = *v88;
              v92 = v88[1];
              v88 += 4;
              *(v87 - 2) = v91;
              *(v87 - 1) = v90;
              *v87 = v93;
              v87[1] = v92;
              v87 += 4;
              v89 -= 4;
            }

            while (v89);
            if (v12 == v15)
            {
              goto LABEL_53;
            }
          }

LABEL_8:
          v17 = v12 - v15;
          v18 = (a4 + 16 * v15 + 32);
          do
          {
            v19 = *v18++;
            *&v14[2 * v16++] = v19;
            --v17;
          }

          while (v17);
          goto LABEL_53;
        }

LABEL_52:
        v16 = 4;
        goto LABEL_53;
      }

      v123 = a2[1];
      v125 = *a2;
      v119 = a2[3];
      v121 = a2[2];
      v10 = sub_1AFB3CAA4(255, 255, 255);
      v127 = xmmword_1AFE201A0;
      v128 = xmmword_1AFE52680;
      v130 = 6;
      v11 = (a3 + 32);
      ecs_stack_allocator_push_snapshot(*(a3 + 32));
      v57 = *(a4 + 16);
      v58 = 2 * v57;
      v14 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v57 + 64, 8);
      *v14 = &type metadata for DebugInfoWireframePrimitive;
      v14[1] = &off_1F25604A8;
      v14[2] = &type metadata for DebugInfoColor;
      v14[3] = &off_1F2560488;
      v14[4] = &type metadata for WorldTransform;
      v14[5] = &off_1F2529FC0;
      v14[6] = &type metadata for Beamed;
      v14[7] = &off_1F2529FA0;
      if (!v57)
      {
        goto LABEL_52;
      }

      if (v57 <= 0x13)
      {
        goto LABEL_48;
      }

      v59 = 0;
      v102 = 2 * (v57 - 1);
      v16 = 4;
      if (&v14[v102 + 8] < v14 + 8 || &v14[v102 + 9] < v14 + 9 || (v57 - 1) >> 60)
      {
        goto LABEL_49;
      }

      if ((v14 + 8) < a4 + v58 * 8 + 32 && a4 + 32 < &v14[v58 + 8])
      {
LABEL_48:
        v59 = 0;
        v16 = 4;
      }

      else
      {
        v59 = v57 & 0x1FFFFFFFFFFFFFFCLL;
        v16 = (v57 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v103 = v14 + 12;
        v104 = (a4 + 64);
        v105 = v57 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v107 = *(v104 - 2);
          v106 = *(v104 - 1);
          v109 = *v104;
          v108 = v104[1];
          v104 += 4;
          *(v103 - 2) = v107;
          *(v103 - 1) = v106;
          *v103 = v109;
          v103[1] = v108;
          v103 += 4;
          v105 -= 4;
        }

        while (v105);
        if (v57 == v59)
        {
          goto LABEL_53;
        }
      }

LABEL_49:
      v60 = v57 - v59;
      v61 = (a4 + 16 * v59 + 32);
      do
      {
        v62 = *v61++;
        *&v14[2 * v16++] = v62;
        --v60;
      }

      while (v60);
      goto LABEL_53;
    }

    v124 = a2[1];
    v126 = *a2;
    v120 = a2[3];
    v122 = a2[2];
    v127 = 0u;
    v128 = 0u;
    memset(v129, 0, sizeof(v129));
    v130 = 12;
    v11 = (a3 + 32);
    ecs_stack_allocator_push_snapshot(*(a3 + 32));
    v42 = *(a4 + 16);
    v43 = 2 * v42;
    v22 = ecs_stack_allocator_allocate(*v11, 16 * v42 + 48, 8);
    *v22 = &type metadata for DebugInfoWireframePrimitive;
    v22[1] = &off_1F25604A8;
    v22[2] = &type metadata for WorldTransform;
    v22[3] = &off_1F2529FC0;
    v22[4] = &type metadata for Beamed;
    v22[5] = &off_1F2529FA0;
    if (!v42)
    {
      goto LABEL_61;
    }

    if (v42 <= 0x13)
    {
      goto LABEL_36;
    }

    v44 = 0;
    v70 = 2 * (v42 - 1);
    v24 = 3;
    if (&v22[v70 + 6] < v22 + 6 || &v22[v70 + 7] < v22 + 7 || (v42 - 1) >> 60)
    {
      goto LABEL_37;
    }

    if ((v22 + 6) < a4 + v43 * 8 + 32 && a4 + 32 < &v22[v43 + 6])
    {
LABEL_36:
      v44 = 0;
      v24 = 3;
    }

    else
    {
      v44 = v42 & 0x1FFFFFFFFFFFFFFCLL;
      v24 = v42 | 3;
      v71 = v22 + 10;
      v72 = (a4 + 64);
      v73 = v42 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v75 = *(v72 - 2);
        v74 = *(v72 - 1);
        v77 = *v72;
        v76 = v72[1];
        v72 += 4;
        *(v71 - 2) = v75;
        *(v71 - 1) = v74;
        *v71 = v77;
        v71[1] = v76;
        v71 += 4;
        v73 -= 4;
      }

      while (v73);
      if (v42 == v44)
      {
        goto LABEL_62;
      }
    }

LABEL_37:
    v45 = v42 - v44;
    v46 = (a4 + 16 * v44 + 32);
    do
    {
      v47 = *v46++;
      *&v22[2 * v24++] = v47;
      --v45;
    }

    while (v45);
    goto LABEL_62;
  }

  if (v7 == 3)
  {
    *&v49 = sub_1AF6DE900();
    v124 = a2[1];
    v126 = *a2;
    v120 = a2[3];
    v122 = a2[2];
    v127 = v49;
    v128 = v50;
    *&v129[0] = 4;
    v130 = 7;
    v11 = (a3 + 32);
    ecs_stack_allocator_push_snapshot(*(a3 + 32));
    v51 = *(a4 + 16);
    v52 = 2 * v51;
    v22 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v51 + 48, 8);
    *v22 = &type metadata for DebugInfoWireframePrimitive;
    v22[1] = &off_1F25604A8;
    v22[2] = &type metadata for WorldTransform;
    v22[3] = &off_1F2529FC0;
    v22[4] = &type metadata for Beamed;
    v22[5] = &off_1F2529FA0;
    if (!v51)
    {
      goto LABEL_61;
    }

    if (v51 <= 0x13)
    {
      goto LABEL_42;
    }

    v53 = 0;
    v78 = 2 * (v51 - 1);
    v24 = 3;
    if (&v22[v78 + 6] < v22 + 6 || &v22[v78 + 7] < v22 + 7 || (v51 - 1) >> 60)
    {
      goto LABEL_43;
    }

    if ((v22 + 6) < a4 + v52 * 8 + 32 && a4 + 32 < &v22[v52 + 6])
    {
LABEL_42:
      v53 = 0;
      v24 = 3;
    }

    else
    {
      v53 = v51 & 0x1FFFFFFFFFFFFFFCLL;
      v24 = v51 | 3;
      v79 = v22 + 10;
      v80 = (a4 + 64);
      v81 = v51 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v83 = *(v80 - 2);
        v82 = *(v80 - 1);
        v85 = *v80;
        v84 = v80[1];
        v80 += 4;
        *(v79 - 2) = v83;
        *(v79 - 1) = v82;
        *v79 = v85;
        v79[1] = v84;
        v79 += 4;
        v81 -= 4;
      }

      while (v81);
      if (v51 == v53)
      {
        goto LABEL_62;
      }
    }

LABEL_43:
    v54 = v51 - v53;
    v55 = (a4 + 16 * v53 + 32);
    do
    {
      v56 = *v55++;
      *&v22[2 * v24++] = v56;
      --v54;
    }

    while (v54);
    goto LABEL_62;
  }

  if (v7 != 4)
  {
    goto LABEL_55;
  }

  v123 = a2[1];
  v125 = *a2;
  v119 = a2[3];
  v121 = a2[2];
  v10 = sub_1AFB3CAA4(255, 255, 255);
  v127 = xmmword_1AFE201A0;
  v128 = xmmword_1AFE9AB10;
  v130 = 6;
  v11 = (a3 + 32);
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v28 = *(a4 + 16);
  v29 = 2 * v28;
  v14 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v28 + 64, 8);
  *v14 = &type metadata for DebugInfoWireframePrimitive;
  v14[1] = &off_1F25604A8;
  v14[2] = &type metadata for DebugInfoColor;
  v14[3] = &off_1F2560488;
  v14[4] = &type metadata for WorldTransform;
  v14[5] = &off_1F2529FC0;
  v14[6] = &type metadata for Beamed;
  v14[7] = &off_1F2529FA0;
  if (!v28)
  {
    goto LABEL_52;
  }

  if (v28 <= 0x13)
  {
    goto LABEL_21;
  }

  v30 = 0;
  v94 = 2 * (v28 - 1);
  v16 = 4;
  if (&v14[v94 + 8] < v14 + 8 || &v14[v94 + 9] < v14 + 9 || (v28 - 1) >> 60)
  {
    goto LABEL_22;
  }

  if ((v14 + 8) < a4 + v29 * 8 + 32 && a4 + 32 < &v14[v29 + 8])
  {
LABEL_21:
    v30 = 0;
    v16 = 4;
LABEL_22:
    v31 = v28 - v30;
    v32 = (a4 + 16 * v30 + 32);
    do
    {
      v33 = *v32++;
      *&v14[2 * v16++] = v33;
      --v31;
    }

    while (v31);
    goto LABEL_53;
  }

  v30 = v28 & 0x1FFFFFFFFFFFFFFCLL;
  v16 = (v28 & 0x1FFFFFFFFFFFFFFCLL) + 4;
  v95 = v14 + 12;
  v96 = (a4 + 64);
  v97 = v28 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    v99 = *(v96 - 2);
    v98 = *(v96 - 1);
    v101 = *v96;
    v100 = v96[1];
    v96 += 4;
    *(v95 - 2) = v99;
    *(v95 - 1) = v98;
    *v95 = v101;
    v95[1] = v100;
    v95 += 4;
    v97 -= 4;
  }

  while (v97);
  if (v28 != v30)
  {
    goto LABEL_22;
  }

LABEL_53:
  v131 = 1;
  sub_1AF63D8A8(v14, v16, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, &v127, v10, v125, v123, v121, v119);
  if (v4)
  {
    while (1)
    {
      ecs_stack_allocator_pop_snapshot(*v11);
      __break(1u);
LABEL_55:
      v124 = a2[1];
      v126 = *a2;
      v120 = a2[3];
      v122 = a2[2];
      v127 = xmmword_1AFE9AB30;
      v128 = xmmword_1AFE9AB40;
      *&v129[0] = 4;
      v130 = 7;
      v11 = (a3 + 32);
      ecs_stack_allocator_push_snapshot(*(a3 + 32));
      v63 = *(a4 + 16);
      v64 = 2 * v63;
      v22 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v63 + 48, 8);
      *v22 = &type metadata for DebugInfoWireframePrimitive;
      v22[1] = &off_1F25604A8;
      v22[2] = &type metadata for WorldTransform;
      v22[3] = &off_1F2529FC0;
      v22[4] = &type metadata for Beamed;
      v22[5] = &off_1F2529FA0;
      if (v63)
      {
        break;
      }

LABEL_61:
      v24 = 3;
LABEL_62:
      v131 = 1;
      sub_1AF63D0A0(v22, v24, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, &v127, v126, v124, v122, v120);
      if (!v4)
      {
        return ecs_stack_allocator_pop_snapshot(*v11);
      }
    }

    if (v63 > 0x13)
    {
      v65 = 0;
      v110 = 2 * (v63 - 1);
      v24 = 3;
      if (&v22[v110 + 6] < v22 + 6 || &v22[v110 + 7] < v22 + 7 || (v63 - 1) >> 60)
      {
        goto LABEL_58;
      }

      if ((v22 + 6) >= a4 + v64 * 8 + 32 || a4 + 32 >= &v22[v64 + 6])
      {
        v65 = v63 & 0x1FFFFFFFFFFFFFFCLL;
        v24 = v63 | 3;
        v111 = v22 + 10;
        v112 = (a4 + 64);
        v113 = v63 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v115 = *(v112 - 2);
          v114 = *(v112 - 1);
          v117 = *v112;
          v116 = v112[1];
          v112 += 4;
          *(v111 - 2) = v115;
          *(v111 - 1) = v114;
          *v111 = v117;
          v111[1] = v116;
          v111 += 4;
          v113 -= 4;
        }

        while (v113);
        if (v63 == v65)
        {
          goto LABEL_62;
        }

        goto LABEL_58;
      }
    }

    v65 = 0;
    v24 = 3;
LABEL_58:
    v66 = v63 - v65;
    v67 = (a4 + 16 * v65 + 32);
    do
    {
      v68 = *v67++;
      *&v22[2 * v24++] = v68;
      --v66;
    }

    while (v66);
    goto LABEL_62;
  }

  return ecs_stack_allocator_pop_snapshot(*v11);
}

uint64_t *sub_1AFB396B0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  if (!*result)
  {
    return result;
  }

  v121 = *(*(v4 + 16) + 16);
  if (!v121)
  {
    return result;
  }

  v125 = result[2] + 32;
  v6 = *(a4 + 16);
  v122 = 2 * v6;
  v123 = a4 + 32;

  v8 = 0;
  v117 = a4 + 16 * v6 + 32;
  v118 = 16 * v6 + 32;
  v116 = 2 * (v6 - 1);
  v110 = v6 | 3;
  v114 = v6 & 0x7FFFFFFFFFFFFFFCLL;
  v111 = v6 & 0x7FFFFFFFFFFFFFFCLL | 2;
  v112 = v6 & 0x1FFFFFFFFFFFFFFCLL;
  v113 = (a4 + 64);
  v115 = (v6 - 1) >> 60;
  v119 = v6;
  v120 = v4;
  while (1)
  {
    v9 = (v125 + (v8 << 6));
    v128 = v9[1];
    v129 = *v9;
    v127 = v9[2];
    v132 = v9[3];
    ecs_stack_allocator_push_snapshot(*(a3 + 32));
    v10 = ecs_stack_allocator_allocate(*(a3 + 32), v122 * 8 + 48, 8);
    v11 = v10;
    *v10 = &type metadata for DebugInfoWireframePrimitive;
    v10[1] = &off_1F25604A8;
    v10[2] = &type metadata for WorldTransform;
    v10[3] = &off_1F2529FC0;
    v10[4] = &type metadata for Beamed;
    v10[5] = &off_1F2529FA0;
    v131 = v8;
    if (v6)
    {
      if (v6 > 0xD && ((v12 = v10 + 6, &v10[v116 + 6] >= v10 + 6) ? (v13 = &v10[v116 + 7] >= v10 + 7) : (v13 = 0), v13 ? (v14 = v115 == 0) : (v14 = 0), v14 && (v12 >= v117 || v123 >= &v12[v122])))
      {
        v52 = v10 + 10;
        v53 = v112;
        v54 = v113;
        do
        {
          v56 = *(v54 - 2);
          v55 = *(v54 - 1);
          v58 = *v54;
          v57 = v54[1];
          v54 += 4;
          *(v52 - 2) = v56;
          *(v52 - 1) = v55;
          *v52 = v58;
          v52[1] = v57;
          v52 += 4;
          v53 -= 4;
        }

        while (v53);
        v15 = v112;
        v16 = v110;
        if (v6 == v112)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v15 = 0;
        v16 = 3;
      }

      v17 = v6 - v15;
      v18 = (v123 + 16 * v15);
      do
      {
        v19 = *v18++;
        *&v10[2 * v16++] = v19;
        --v17;
      }

      while (v17);
    }

    else
    {
      v16 = 3;
    }

LABEL_23:
    v20 = *(a3 + 16);
    v21 = v20 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
    v22 = *(v20 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

    os_unfair_lock_lock(v22);
    v23 = sub_1AF66F020(v11, v16, MEMORY[0x1E69E7CC0]);
    v24 = v23;
    v26 = v25;
    v27 = *(v20 + 80);
    v28 = *(v27 + 16);
    if (!v28)
    {
      goto LABEL_29;
    }

    v29 = 0;
    v30 = v27 + 32;
    while (*(*(v30 + 8 * v29) + 144) != v23)
    {
      if (v28 == ++v29)
      {
        goto LABEL_29;
      }
    }

    v31 = sub_1AF65D418(v26, v29);
    v32 = v31;
    if ((v31 & 0x100000000) != 0)
    {
LABEL_29:
      sub_1AFC0EF2C(v11, v16);
      v32 = sub_1AF65D480(v24, v26, v33, MEMORY[0x1E69E7CC0]);
    }

    v34 = *(*(v20 + 88) + 8 * v32 + 32);
    v35 = *(v21 + 24);

    os_unfair_lock_unlock(v35);

    v36 = *(a3 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
    v37 = *v36;

    if (v37)
    {
      vfx_counters.add(_:_:)(*(v36 + 40), 1);
    }

    v38 = *(a3 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
    v39 = *v38;

    if (v39)
    {
      vfx_counters.add(_:_:)(*(v38 + 48), 1);
    }

    v40 = *(v34 + 204);
    if (*(v34 + 208))
    {
      v41 = -1;
    }

    else
    {

      v41 = sub_1AF65B2E4();
    }

    v42 = *(a3 + 16);
    v43 = *(*(*(v42 + 88) + 8 * v40 + 32) + 200);

    if (v43 == 1)
    {
      *(v42 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    }

    v44 = *(v42 + 136);
    swift_retain_n();
    os_unfair_lock_lock(v44);
    if (!sub_1AF62173C(v40))
    {
      sub_1AF6AFD3C(v40);
    }

    v45 = *(*(v42 + 104) + 40 * v40 + 64);
    if (v45 != -1)
    {
      v46 = *(*(v42 + 144) + 8 * v45 + 32);
      if ((*(v46 + 32) & 1) != 0 && os_unfair_lock_trylock(*(v46 + 376)))
      {
        os_unfair_lock_lock(*(v46 + 344));
        os_unfair_lock_unlock(*(v46 + 376));
        if ((*(v46 + 121) & 1) != 0 || *(v46 + 240) < *(v46 + 88))
        {
          v47 = sub_1AF622B60(v41);
          v48 = v47;
          if ((*(v34 + 208) & 1) == 0)
          {
            v49 = *(*(a3 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v41;
            *v49 = *(v46 + 188);
            *(v49 + 4) = v47;
            *(v49 + 6) = v40;
          }

          if (*(v34 + 212) == 1)
          {
            v50 = *(v46 + 192);
            if (v50)
            {
              v51 = *(v46 + 208);
              *(v50 + 8 * (v47 >> 6)) |= 1 << v47;
              *(v51 + 8 * (v47 >> 6)) &= ~(1 << v47);
            }

            sub_1AF705804(v47);
          }

          os_unfair_lock_unlock(*(v46 + 344));
          os_unfair_lock_unlock(*(v42 + 136));
          goto LABEL_83;
        }

        os_unfair_lock_unlock(*(v46 + 344));
      }
    }

    v126 = v41;
    os_unfair_lock_unlock(*(v42 + 136));
    v59 = sub_1AF624654();
    if ((v59 & 0x100000000) != 0)
    {
      v60 = *(*(v42 + 144) + 16);
      type metadata accessor for ComponentsDataChunk();
      swift_allocObject();

      v137 = 1;
      v62 = sub_1AF64BF6C(v66, 0x100000000, v40, 1, v60);

      _swift_stdlib_immortalize();

      v63 = *(v42 + 144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + 144) = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05EFC(0, *(v63 + 2) + 1, 1);
        v63 = *(v42 + 144);
      }

      v69 = *(v63 + 2);
      v68 = *(v63 + 3);
      if (v69 >= v68 >> 1)
      {
        sub_1AFC05EFC(v68 > 1, v69 + 1, 1);
        v63 = *(v42 + 144);
      }

      *(v63 + 2) = v69 + 1;
      v65 = &v63[8 * v69];
    }

    else
    {
      v60 = v59;
      type metadata accessor for ComponentsDataChunk();
      swift_allocObject();

      v137 = 1;
      v62 = sub_1AF64BF6C(v61, 0x100000000, v40, 1, v60);

      _swift_stdlib_immortalize();

      v63 = *(v42 + 144);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + 144) = v63;
      if ((v64 & 1) == 0)
      {
        v63 = sub_1AF6247B0(v63);
      }

      v65 = &v63[8 * v60];
    }

    *(v65 + 4) = v62;
    *(v42 + 144) = v63;
    v70 = *(v42 + 104);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + 104) = v70;
    if ((v71 & 1) == 0)
    {
      v70 = sub_1AFC0D9B8(v70);
      *(v42 + 104) = v70;
    }

    v72 = &v70[40 * v40];
    v75 = *(v72 + 4);
    v74 = v72 + 32;
    v73 = v75;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *v74 = v75;
    if ((v76 & 1) == 0)
    {
      v73 = sub_1AF420E8C(0, *(v73 + 2) + 1, 1, v73);
      *v74 = v73;
    }

    v78 = *(v73 + 2);
    v77 = *(v73 + 3);
    if (v78 >= v77 >> 1)
    {
      v73 = sub_1AF420E8C(v77 > 1, v78 + 1, 1, v73);
      *v74 = v73;
    }

    *(v73 + 2) = v78 + 1;
    *&v73[4 * v78 + 32] = v60;
    *(v74 + 8) = v60;
    v74[24] = 1;
    v79 = *(*(v42 + 144) + 8 * v60 + 32);
    v80 = *(v79 + 376);

    if (!os_unfair_lock_trylock(v80))
    {
      goto LABEL_109;
    }

    os_unfair_lock_lock(*(v79 + 344));
    os_unfair_lock_unlock(*(v79 + 376));
    if ((*(v79 + 121) & 1) == 0 && *(v79 + 240) >= *(v79 + 88))
    {
      goto LABEL_108;
    }

    v81 = sub_1AF622B60(v126);
    v48 = v81;
    if ((*(v34 + 208) & 1) == 0)
    {
      v82 = *(*(a3 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v126;
      *v82 = *(v79 + 188);
      *(v82 + 4) = v81;
      *(v82 + 6) = v40;
    }

    if (*(v34 + 212) == 1)
    {
      v83 = *(v79 + 192);
      if (v83)
      {
        v84 = *(v79 + 208);
        *(v83 + 8 * (v81 >> 6)) |= 1 << v81;
        *(v84 + 8 * (v81 >> 6)) &= ~(1 << v81);
      }

      sub_1AF705804(v81);
    }

    os_unfair_lock_unlock(*(v79 + 344));

LABEL_83:

    swift_retain_n();
    v85 = sub_1AF64B03C(&type metadata for DebugInfoWireframePrimitive);
    v87 = v86;

    v88 = (v87 & 1) != 0 ? 0 : v85 + 112 * v48;

    v89 = sub_1AF64B03C(&type metadata for WorldTransform);
    v91 = v90;

    v92 = (v91 & 1) != 0 ? 0 : (v89 + (v48 << 6));

    sub_1AF64B03C(&type metadata for Beamed);

    *(v88 + 64) = 0u;
    *(v88 + 80) = 0u;
    *(v88 + 32) = 0u;
    *(v88 + 48) = 0u;
    *v88 = 0u;
    *(v88 + 16) = 0u;
    *(v88 + 96) = 12;
    *v92 = v129;
    v92[1] = v128;
    v92[2] = v127;
    v92[3] = v132;

    ecs_stack_allocator_pop_snapshot(*(a3 + 32));
    v93 = *(*(v120 + 40) + 8 * v131 + 32);
    if (v93 != -1)
    {
      break;
    }

    v6 = v119;
LABEL_5:
    v8 = v131 + 1;
    if (v131 + 1 == v121)
    {
    }
  }

  v94 = *(v125 + (v93 << 6) + 48);
  v95 = vsubq_f32(v132, v94);
  v94.i32[3] = 1.0;
  v133 = v94;
  v95.i32[3] = 0;
  v130 = v95;
  v79 = sub_1AFB3CAA4(0, 255, 0);
  v134[0] = v133;
  v134[1] = v130;
  v135 = 4;
  v136 = 0;
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v96 = ecs_stack_allocator_allocate(*(a3 + 32), v118, 8);
  *v96 = &type metadata for DebugInfoWireframePrimitive;
  v96[1] = &off_1F25604A8;
  v96[2] = &type metadata for DebugInfoColor;
  v96[3] = &off_1F2560488;
  v6 = v119;
  if (v119)
  {
    v97 = v124;
    if (v119 <= 3 || (v96 + 4) < v117 && v123 < v96 + v118)
    {
      v98 = 0;
      v99 = 2;
      goto LABEL_95;
    }

    v103 = v96 + 8;
    v105 = v113;
    v104 = v114;
    do
    {
      v107 = *(v105 - 2);
      v106 = *(v105 - 1);
      v109 = *v105;
      v108 = v105[1];
      v105 += 4;
      *(v103 - 2) = v107;
      *(v103 - 1) = v106;
      *v103 = v109;
      v103[1] = v108;
      v103 += 4;
      v104 -= 4;
    }

    while (v104);
    v98 = v114;
    v99 = v111;
    if (v119 != v114)
    {
LABEL_95:
      v100 = v119 - v98;
      v101 = (v123 + 16 * v98);
      do
      {
        v102 = *v101++;
        *&v96[2 * v99++] = v102;
        --v100;
      }

      while (v100);
    }
  }

  else
  {
    v99 = 2;
    v97 = v124;
  }

  v137 = 1;
  sub_1AF63C898(v96, v99, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, v134, v79);
  v124 = v97;
  if (!v97)
  {
    ecs_stack_allocator_pop_snapshot(*(a3 + 32));
    goto LABEL_5;
  }

  ecs_stack_allocator_pop_snapshot(*(a3 + 32));
  __break(1u);
LABEL_108:
  os_unfair_lock_unlock(*(v79 + 344));
LABEL_109:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AFB3A210(uint64_t a1)
{

  sub_1AF5FCA80();
  v3 = v2;

  if (v3 == 2)
  {
    return;
  }

  v104 = *(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v4) + 8);
  sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0);
  v5 = swift_allocObject();
  v6 = v5;
  *(v5 + 16) = xmmword_1AFE431C0;
  v7 = &type metadata for DebugInfoB;
  if (v3)
  {
    v7 = &type metadata for DebugInfoA;
  }

  v8 = &off_1F2560448;
  if (v3)
  {
    v8 = &off_1F2560428;
  }

  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  v9 = *(a1 + 184);

  sub_1AF6D452C(&type metadata for DebugDrawingState, &off_1F25603A8, v9, v221);

  v10 = LOBYTE(v221[0]);
  v11 = BYTE1(v221[0]);
  v12 = BYTE5(v221[0]);
  v13 = BYTE6(v221[0]);
  if (BYTE2(v221[0]) == 1)
  {
    sub_1AFB37500(a1);
  }

  v103 = v6;
  if (!v10)
  {
LABEL_24:
    if (!v11)
    {
      goto LABEL_42;
    }

    goto LABEL_25;
  }

  v91 = sub_1AFB3CAA4(255, 0, 0);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v226 = qword_1ED73B840;
  v227 = 0;
  v228 = 2;
  v229 = 0;
  v230 = 2;
  v231 = 0;
  sub_1AFCC58BC(1, 1, v106);
  v178[0] = v106[0];
  v178[1] = v106[1];
  v179 = v107;
  sub_1AF6B06C0(a1, v178, 0x200000000, &v108);
  v95 = v108;
  if (!v108)
  {
    sub_1AFB3CAC4(v106, sub_1AFB3FAF0);
    goto LABEL_24;
  }

  v14 = v111;
  v15 = v112;
  v159 = v109;
  v160 = v110;
  v83 = v115;
  v87 = v113;
  if (v115 > 0 && v112)
  {
    v65 = v11;
    v66 = v12;
    v68 = v13;
    v71 = a1;
    v79 = v114;
    v16 = v114[4];
    v17 = *(v113 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

    sub_1AF5D15C0(&v108, v221);
    v18 = (v14 + 24);
    v75 = v17;
    do
    {
      v20 = *(v18 - 6);
      v19 = *(v18 - 5);
      v21 = *(v18 - 4);
      v22 = *(v18 - 1);
      v105 = *v18;
      v23 = v18[2];
      v99 = v18[1];
      if (v17)
      {
        v24 = *(v23 + 376);

        os_unfair_lock_lock(v24);
        os_unfair_lock_lock(*(v23 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v16);

      sub_1AF630914(v25, v79, v116);

      LOBYTE(v210[0]) = 1;
      v221[0] = v87;
      v221[1] = v23;
      v221[2] = v79;
      v221[3] = v21;
      v221[4] = (v19 - v20 + v21);
      v221[5] = v83;
      v221[6] = v20;
      v221[7] = v19;
      v221[8] = 0;
      v221[9] = 0;
      v222 = 1;
      v223 = v22;
      v224 = v105;
      v225 = v99;

      sub_1AFD109B4(v221, v104, v103, v91);
      v161 = v95;
      v162 = v159;
      v163 = v160;
      sub_1AF630994(v79, &v161, v116);
      sub_1AF62D29C(v23);
      ecs_stack_allocator_pop_snapshot(v16);
      v17 = v75;
      if (v75)
      {
        os_unfair_lock_unlock(*(v23 + 344));
        os_unfair_lock_unlock(*(v23 + 376));
      }

      v18 += 6;
      --v15;
    }

    while (v15);
    sub_1AFB3CAC4(v106, sub_1AFB3FAF0);
    sub_1AF0D9DB0(&v108, &qword_1ED725EA0);
    v6 = v103;

    sub_1AF0D9DB0(&v108, &qword_1ED725EA0);
    a1 = v71;
    v12 = v66;
    v13 = v68;
    if (!v65)
    {
LABEL_42:
      if (v12)
      {
        goto LABEL_43;
      }

      goto LABEL_60;
    }
  }

  else
  {
    sub_1AFB3CAC4(v106, sub_1AFB3FAF0);
    sub_1AF0D9DB0(&v108, &qword_1ED725EA0);
    if (!v11)
    {
      goto LABEL_42;
    }
  }

LABEL_25:
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v215 = qword_1ED73B840;
  v216 = 0;
  v217 = 2;
  v218 = 0;
  v219 = 2;
  v220 = 0;
  sub_1AFCC58E0(1, 1, v117);
  v176[0] = v117[0];
  v176[1] = v117[1];
  v177 = v118;
  sub_1AF6B06C0(a1, v176, 0x200000000, &v119);
  v88 = v119;
  if (v119)
  {
    v26 = v122;
    v27 = v123;
    v157 = v120;
    v158 = v121;
    v80 = v126;
    v84 = v124;
    if (v126 > 0 && v123)
    {
      v67 = v12;
      v69 = v13;
      v72 = a1;
      v76 = v125;
      v28 = v125[4];
      v100 = *(v124 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF5D15C0(&v119, v210);
      v29 = (v26 + 24);
      do
      {
        v31 = *(v29 - 6);
        v30 = *(v29 - 5);
        v32 = *(v29 - 4);
        v92 = *v29;
        v96 = *(v29 - 1);
        v34 = v29[1];
        v33 = v29[2];
        if (v100)
        {
          v35 = *(v33 + 376);

          v36 = v103;
          os_unfair_lock_lock(v35);
          os_unfair_lock_lock(*(v33 + 344));
        }

        else
        {

          v36 = v6;
        }

        ecs_stack_allocator_push_snapshot(v28);

        sub_1AF630914(v37, v76, v127);

        LOBYTE(v199[0]) = 1;
        v210[0] = v84;
        v210[1] = v33;
        v210[2] = v76;
        v210[3] = v32;
        v210[4] = (v30 - v31 + v32);
        v210[5] = v80;
        v210[6] = v31;
        v210[7] = v30;
        v210[8] = 0;
        v210[9] = 0;
        v211 = 1;
        v212 = v96;
        v213 = v92;
        v214 = v34;

        sub_1AFD10B0C(v210, v104, v36);
        v164 = v88;
        v165 = v157;
        v166 = v158;
        sub_1AF630994(v76, &v164, v127);
        sub_1AF62D29C(v33);
        ecs_stack_allocator_pop_snapshot(v28);
        if (v100)
        {
          os_unfair_lock_unlock(*(v33 + 344));
          os_unfair_lock_unlock(*(v33 + 376));
        }

        v29 += 6;
        --v27;
        v6 = v36;
      }

      while (v27);
      sub_1AFB3CAC4(v117, sub_1AFB3FA74);
      sub_1AF0D9DB0(&v119, &qword_1ED725EA0);

      sub_1AF0D9DB0(&v119, &qword_1ED725EA0);
      a1 = v72;
      v13 = v69;
      if (v67)
      {
LABEL_43:
        if (qword_1ED72D720 != -1)
        {
          swift_once();
        }

        v204 = qword_1ED73B840;
        v205 = 0;
        v206 = 2;
        v207 = 0;
        v208 = 2;
        v209 = 0;
        sub_1AFCC5904(1, 1, v128);
        v174[0] = v128[0];
        v174[1] = v128[1];
        v175 = v129;
        sub_1AF6B06C0(a1, v174, 0x200000000, &v130);
        v89 = v130;
        if (v130)
        {
          v38 = v133;
          v39 = v134;
          v155 = v131;
          v156 = v132;
          v81 = v137;
          v85 = v135;
          if (v137 > 0 && v134)
          {
            v70 = v13;
            v73 = a1;
            v77 = v136;
            v40 = v136[4];
            v101 = *(v135 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

            sub_1AF5D15C0(&v130, v199);
            v41 = (v38 + 24);
            do
            {
              v43 = *(v41 - 6);
              v42 = *(v41 - 5);
              v44 = *(v41 - 4);
              v93 = *v41;
              v97 = *(v41 - 1);
              v46 = v41[1];
              v45 = v41[2];
              if (v101)
              {
                v47 = *(v45 + 376);

                v48 = v103;
                os_unfair_lock_lock(v47);
                os_unfair_lock_lock(*(v45 + 344));
              }

              else
              {

                v48 = v6;
              }

              ecs_stack_allocator_push_snapshot(v40);

              sub_1AF630914(v49, v77, v138);

              LOBYTE(v182[0]) = 1;
              v199[0] = v85;
              v199[1] = v45;
              v199[2] = v77;
              v199[3] = v44;
              v199[4] = (v42 - v43 + v44);
              v199[5] = v81;
              v199[6] = v43;
              v199[7] = v42;
              v199[8] = 0;
              v199[9] = 0;
              v200 = 1;
              v201 = v97;
              v202 = v93;
              v203 = v46;

              sub_1AFD10C58(v199, v104, v48);
              v167 = v89;
              v168 = v155;
              v169 = v156;
              sub_1AF630994(v77, &v167, v138);
              sub_1AF62D29C(v45);
              ecs_stack_allocator_pop_snapshot(v40);
              if (v101)
              {
                os_unfair_lock_unlock(*(v45 + 344));
                os_unfair_lock_unlock(*(v45 + 376));
              }

              v41 += 6;
              --v39;
              v6 = v48;
            }

            while (v39);
            sub_1AFB3CAC4(v128, sub_1AFB3F9F8);
            sub_1AF0D9DB0(&v130, &qword_1ED725EA0);

            sub_1AF0D9DB0(&v130, &qword_1ED725EA0);
            a1 = v73;
            if (!v70)
            {
              goto LABEL_79;
            }
          }

          else
          {
            sub_1AFB3CAC4(v128, sub_1AFB3F9F8);
            sub_1AF0D9DB0(&v130, &qword_1ED725EA0);
            if (!v13)
            {
              goto LABEL_79;
            }
          }
        }

        else
        {
          sub_1AFB3CAC4(v128, sub_1AFB3F9F8);
          if (!v13)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      sub_1AFB3CAC4(v117, sub_1AFB3FA74);
      sub_1AF0D9DB0(&v119, &qword_1ED725EA0);
      if (v12)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    sub_1AFB3CAC4(v117, sub_1AFB3FA74);
    if (v12)
    {
      goto LABEL_43;
    }
  }

LABEL_60:
  if (!v13)
  {
LABEL_79:
    swift_setDeallocating();
    swift_deallocClassInstance();
    return;
  }

LABEL_61:
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v193 = qword_1ED73B840;
  v194 = 0;
  v195 = 2;
  v196 = 0;
  v197 = 2;
  v198 = 0;
  sub_1AFCC5928(1, 1, &v139);
  v187 = v139;
  v188 = v140;
  v189 = v141;
  v190 = v142 | 1;
  v191 = v143;
  v192 = v144;
  sub_1AF6B06C0(a1, &v187, 0x200000000, &v145);
  v86 = v145;
  if (!v145)
  {
    sub_1AFB3CAC4(&v139, sub_1AFB3F97C);
    goto LABEL_79;
  }

  v50 = v148;
  v51 = v149;
  v52 = v151;
  v153 = v146;
  v154 = v147;
  v78 = v152;
  v82 = v150;
  if (v152 <= 0)
  {

    sub_1AFB3CAC4(&v139, sub_1AFB3F97C);
    sub_1AF0D9DB0(&v145, &qword_1ED725EA0);

    goto LABEL_79;
  }

  if (v149)
  {
    v53 = *(v151 + 32);
    v54 = *(v150 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

    v55 = (v50 + 24);
    v74 = v54;
    do
    {
      v102 = v51;
      v56 = *(v55 - 6);
      v57 = *(v55 - 5);
      v58 = *(v55 - 4);
      v94 = *v55;
      v98 = *(v55 - 1);
      v59 = v55[2];
      v90 = v55[1];
      if (v54)
      {
        v60 = *(v59 + 376);

        os_unfair_lock_lock(v60);
        os_unfair_lock_lock(*(v59 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v53);
      v61 = *(v52 + 64);
      v180[0] = *(v52 + 48);
      v180[1] = v61;
      v181 = *(v52 + 80);
      v62 = *(v52 + 32);
      v63 = v53;
      v64 = *(*(*(*(v59 + 40) + 16) + 32) + 16) + 1;

      *(v52 + 48) = ecs_stack_allocator_allocate(v62, 48 * v64, 8);
      *(v52 + 56) = v64;
      *(v52 + 72) = 0;
      *(v52 + 80) = 0;
      *(v52 + 64) = 0;

      LOBYTE(v170) = 1;
      v182[0] = v82;
      v182[1] = v59;
      v182[2] = v52;
      v182[3] = v58;
      v182[4] = (v57 - v56 + v58);
      v182[5] = v78;
      v182[6] = v56;
      v182[7] = v57;
      v182[8] = 0;
      v182[9] = 0;
      v183 = 1;
      v184 = v98;
      v185 = v94;
      v186 = v90;
      sub_1AFD28DA8(v182, v104, v103);
      v171 = v86;
      v172 = v153;
      v173 = v154;
      sub_1AF630994(v52, &v171, v180);
      sub_1AF62D29C(v59);
      ecs_stack_allocator_pop_snapshot(v63);
      v53 = v63;
      v54 = v74;
      if (v74)
      {
        os_unfair_lock_unlock(*(v59 + 344));
        os_unfair_lock_unlock(*(v59 + 376));
      }

      v55 += 6;
      v51 = v102 - 1;
    }

    while (v102 != 1);
  }

  sub_1AFB3CAC4(&v139, sub_1AFB3F97C);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF0D9DB0(&v145, &qword_1ED725EA0);
}

uint64_t sub_1AFB3B238(uint64_t a1)
{

  sub_1AF5FCA80();
  v3 = v2;

  if (v3 == 2)
  {
    return 0;
  }

  v5 = *(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v4) + 8);
  sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  *(v6 + 32) = &type metadata for DebugInfoViewDependant;
  *(v6 + 40) = &off_1F2560468;
  v7 = &type metadata for DebugInfoA;
  v8 = &off_1F2560448;
  if (v3)
  {
    v8 = &off_1F2560428;
  }

  else
  {
    v7 = &type metadata for DebugInfoB;
  }

  *(v6 + 48) = v7;
  *(v6 + 56) = v8;
  return v5;
}

void sub_1AFB3B34C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v206 = sub_1AFBE45A8(a1);

  if (v206)
  {

    v4 = sub_1AF5FCC3C();

    v181 = v4;
    if (v4 == 2)
    {

      return;
    }

    v5 = *(a1 + 184);

    os_unfair_recursive_lock_lock_with_options();
    v6 = sub_1AF6D2A6C(&type metadata for MainCullGroup);
    if (v7 == 2 || (v7 & 1) == 0)
    {
      os_unfair_recursive_lock_unlock();
      v179 = 0;
    }

    else
    {
      v9 = *(v5 + 16);
      v10 = 32 * v8;
      v11 = v6;
      os_unfair_lock_lock(*(*(v5 + 32) + 32 * v8 + 24));
      os_unfair_recursive_lock_unlock();
      v179 = *(v9 + v11);
      os_unfair_lock_unlock(*(*(v5 + 32) + v10 + 24));
    }

    v161 = a1;
    v12 = sub_1AFDFE238();
    v14 = v13;

    sub_1AF7180FC();

    v15 = sub_1AF6F3D60(v206, v12, v14);
    swift_bridgeObjectRelease_n();
    sub_1AF709E8C(v15);
    swift_unknownObjectRelease();

    v16 = *(a2 + 280);
    v17 = *(v16 + 80);
    v205 = a2;
    if (v17)
    {
      v18 = v17;
      sub_1AF474680(v242);
      v198 = v242[0];
      v194 = v242[1];
      v19 = v242[2];
      v20 = v242[3];
      v190 = v242[4];
      v183 = v242[5];
      v168 = v242[6];
      v165 = v242[7];
      v163 = v242[8];
      v162 = v242[9];
      v21 = v242[10];

      v22 = 0;
    }

    else
    {
      v21 = 0;
      v198 = 0;
      v194 = 0;
      v19 = 0;
      v20 = 0;
      v190 = 0;
      v183 = 0;
      v168 = 0;
      v165 = 0;
      v163 = 0;
      v162 = 0;
      v22 = 1;
    }

    *v241 = v21;
    v241[8] = v22;
    v159 = *&v241[1];
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v288 = qword_1ED73B840;
    v289 = 0;
    v290 = 2;
    v291 = 0;
    v292 = 2;
    v293 = 0;
    sub_1AF702F28(1, v243);
    sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AFE431C0;
    *(v23 + 32) = &type metadata for DrawCallComponent;
    *(v23 + 40) = &off_1F25607D0;
    sub_1AF5D1EBC(v23, v244);
    sub_1AFB3F8A4(v243, &qword_1ED723BE0);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v272[0] = v244[0];
    v272[1] = v244[1];
    v273 = v245;
    sub_1AF6B06C0(v161, v272, 0x200000000, &v246);
    sub_1AFB3F8A4(v244, &qword_1ED723BE0);
    if (!v246)
    {
LABEL_22:

      return;
    }

    v156 = v246;
    v157 = v16;
    v175 = v251;
    v177 = v250;
    v24 = v252;
    v171 = v249;
    v173 = v253;
    v262 = v247;
    v263 = v248;

    sub_1AF8989FC(0xD00000000000001ALL, 0x80000001AFF487E0, 0x72665F6775626564, 0xEA00000000006761, MEMORY[0x1E69E7CC0], v254);
    v238 = v254[8];
    v239 = v254[9];
    v240 = v254[10];
    v234 = v254[4];
    v235 = v254[5];
    v236 = v254[6];
    v237 = v254[7];
    v230 = v254[0];
    v231 = v254[1];
    v232 = v254[2];
    v233 = v254[3];
    sub_1AF5FF2F0(&v220);
    v222 = xmmword_1AFE68E40;
    v223 = xmmword_1AFE68E40;
    v220 = xmmword_1AFE68E40;
    v221 = xmmword_1AFE68E40;
    v226 = xmmword_1AFE68E40;
    v227 = xmmword_1AFE68E40;
    v228 = xmmword_1AFE68E40;
    v229 = xmmword_1AFE68E40;
    sub_1AFDFF308();
    sub_1AF6021F8(v254, v299);
    sub_1AF89747C(&v211);
    sub_1AF602254(v254);
    MEMORY[0x1B271ACB0](v198);
    MEMORY[0x1B271ACB0](v194);
    MEMORY[0x1B271ACB0](v19);
    MEMORY[0x1B271ACB0](v20);
    MEMORY[0x1B271ACB0](v190);
    MEMORY[0x1B271ACB0](v183);
    MEMORY[0x1B271ACB0](v168);
    MEMORY[0x1B271ACB0](v165);
    MEMORY[0x1B271ACB0](v163);
    MEMORY[0x1B271ACB0](v162);
    sub_1AFDFF2A8();
    v336 = v220;
    v337 = v221;
    v338 = v222;
    v339 = v223;
    sub_1AF5FF304();
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](2);
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    v332 = v212;
    v333 = v213;
    v334 = v214;
    v335 = v215;
    v331 = v211;
    v25 = sub_1AFDFF2E8();
    v299[8] = v238;
    v299[9] = v239;
    v299[10] = v240;
    v299[4] = v234;
    v299[5] = v235;
    v299[6] = v236;
    v299[7] = v237;
    v299[0] = v230;
    v299[1] = v231;
    v299[2] = v232;
    v299[3] = v233;
    v300 = v198;
    v301 = v194;
    v302 = v19;
    v303 = v20;
    v304 = v190;
    v305 = v183;
    v306 = v168;
    v307 = v165;
    v308 = v163;
    v309 = v162;
    v310 = v21;
    v312 = WORD2(v159);
    v311 = v159;
    v313 = BYTE6(v159);
    v314 = v226;
    v315 = v227;
    v316 = v228;
    v317 = v229;
    v319 = 0;
    v318 = 0;
    v320 = 2;
    v321 = 0;
    v322 = 0;
    v323 = 2;
    v326 = 0;
    v324 = 0;
    v325 = 0;
    v327 = 257;
    v328 = v224;
    v329 = v225;
    v330 = v25;
    v26 = sub_1AF730058(v299, 0);
    v28 = v27;
    v30 = v29;
    v31 = v29;

    sub_1AF602304(v299);
    if (v31)
    {
      sub_1AF6022A8(v26, v28, v30);
      sub_1AF0D9DB0(&v246, &qword_1ED725EA0);
      goto LABEL_22;
    }

    v32 = v181;
    v33 = swift_unknownObjectRetain();
    v160 = v26;
    sub_1AF6022A8(v33, v28, 0);
    if (*(v157 + 64))
    {
      v34 = **(v157 + 96);
      v35 = a2;
      v37 = v175;
      v36 = v177;
      if (v34)
      {
        swift_unknownObjectRetain();
        goto LABEL_30;
      }

      v38 = [swift_unknownObjectRetain() renderCommandEncoder];
      *&v211 = 0x646F636E45627573;
      *(&v211 + 1) = 0xEB000000005B7265;
      v294[0] = 0;
      v39 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v39);

      MEMORY[0x1B2718AE0](93, 0xE100000000000000);
      v40 = sub_1AFDFCEC8();

      [v38 setLabel_];

      v41 = *(v157 + 96);
      *v41 = [objc_allocWithZone(type metadata accessor for RenderCommandEncoder()) initWithEncoder_];
      v32 = v181;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v34 = **(v157 + 96);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = *(v157 + 56);
      swift_unknownObjectRetain();
      v35 = a2;
      v37 = v175;
      v36 = v177;
    }

    if (!v34)
    {
LABEL_31:
      if (v173 > 0 && v36)
      {
        v158 = v32;
        v42 = *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v202 = *(v24 + 32);
        v264 = v156;
        v265 = v262;
        v266 = v263;
        sub_1AF5D15C0(&v246, &v211);
        v43 = 0;
        v166 = vdupq_n_s64(0x3F80000000000000uLL);
        v44 = v171;
        v169 = v42;
        while (1)
        {
          v199 = v43;
          v45 = (v44 + 48 * v43);
          v46 = *v45;
          v47 = v45[1];
          v48 = v45[2];
          v49 = *(v45 + 2);
          v50 = *(v45 + 3);
          v51 = *(v45 + 4);
          v52 = *(v45 + 5);
          if (v42)
          {
            v53 = *(v52 + 376);

            os_unfair_lock_lock(v53);
            os_unfair_lock_lock(*(v52 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v202);
          v187 = *(v24 + 64);
          v191 = *(v24 + 48);
          v184 = *(v24 + 80);
          v54 = *(*(*(*(v52 + 40) + 16) + 32) + 16) + 1;
          *(v24 + 48) = ecs_stack_allocator_allocate(*(v24 + 32), 48 * v54, 8);
          *(v24 + 56) = v54;
          *(v24 + 72) = 0;
          *(v24 + 80) = 0;
          *(v24 + 64) = 0;
          LOBYTE(v211) = 1;
          v294[0] = v37;
          v195 = v52;
          v294[1] = v52;
          v294[2] = v24;
          v294[3] = v48;
          v294[4] = (v47 - v46 + v48);
          v294[5] = v173;
          v294[6] = v46;
          v294[7] = v47;
          v294[8] = 0;
          v294[9] = 0;
          v295 = 1;
          v296 = v49;
          v297 = v50;
          v298 = v51;
          v35 = v205;
          sub_1AFB30290(v294, v205, v181 & 0x10101, v179, 5, 4, xmmword_1AFE9AB50, v166, xmmword_1AFE9AB60);
          v55 = *(v24 + 48);
          v56 = *(v24 + 64);
          if (!v56)
          {
            v78 = *(v24 + 56);
            v79 = *(v24 + 32);
            v44 = v171;
            goto LABEL_68;
          }

          for (i = 0; i != v56; ++i)
          {
            v59 = (v55 + 48 * i);
            v60 = *v59;
            v61 = v59[4];
            v62 = *(v24 + 72);
            if (v62)
            {
              v63 = v60 == v62;
            }

            else
            {
              v63 = 0;
            }

            if (v63)
            {
              goto LABEL_40;
            }

            v64 = v264;
            if (!v264[11])
            {
              goto LABEL_40;
            }

            v65 = v59[2];
            v66 = v264 + 41;
            v67 = v264[9];
            if (v67 >= 0x10)
            {
              v68 = &v66[v264[8]];
              v69 = v67 >> 4;
              v70 = v264 + 41;
              while (*v68 != v60)
              {
                ++v70;
                v68 += 16;
                if (!--v69)
                {
                  goto LABEL_56;
                }
              }

              v71 = v70[v264[10]];
              v72 = v71 > 5;
              v73 = (1 << v71) & 0x23;
              if (v72 || v73 == 0)
              {
LABEL_40:

                v61(v58);

                continue;
              }
            }

LABEL_56:
            if (swift_conformsToProtocol2() && v65)
            {
              if (sub_1AF5FC8D8(v65))
              {
                goto LABEL_40;
              }

              v75 = v64[9];
              if (v75 < 0x10)
              {
                goto LABEL_40;
              }

              v76 = &v66[v64[8]];
              v77 = 16 * (v75 >> 4);
              while (*v76 != v65)
              {
                v76 += 16;
                v77 -= 16;
                if (!v77)
                {
                  goto LABEL_40;
                }
              }
            }
          }

          v78 = *(v24 + 56);
          v55 = *(v24 + 48);
          v79 = *(v24 + 32);
          v44 = v171;
          if (*(v24 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v35 = v205;
LABEL_68:
          ecs_stack_allocator_deallocate(v79, v55, 48 * v78);
          *(v24 + 48) = v191;
          *(v24 + 64) = v187;
          *(v24 + 80) = v184;
          sub_1AF62D29C(v195);
          ecs_stack_allocator_pop_snapshot(v202);
          v42 = v169;
          if (v169)
          {
            os_unfair_lock_unlock(*(v195 + 344));
            os_unfair_lock_unlock(*(v195 + 376));
          }

          v43 = v199 + 1;
          v37 = v175;
          if (v199 + 1 == v177)
          {
            sub_1AF0D9DB0(&v246, &qword_1ED725EA0);
            v32 = v158;
            break;
          }
        }
      }

      if ((v32 & 0x100) == 0)
      {
        goto LABEL_131;
      }

      v80 = sub_1AFB3B238(v161);
      if (!v80)
      {
        swift_unknownObjectRelease();
        sub_1AF0D9DB0(&v246, &qword_1ED725EA0);
        goto LABEL_22;
      }

      v82 = v80;
      v83 = v81;
      sub_1AF5C9150(v255);
      sub_1AFA1CFD4(0, &qword_1ED7269F0, &qword_1ED72C1B0, &qword_1ED72C1D0);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1AFE431C0;
      *(v84 + 32) = &type metadata for EmitterReference;
      *(v84 + 40) = &off_1F2563D20;
      sub_1AFB2FCE0(v84, v256);
      sub_1AFB3CAC4(v255, sub_1AFB3CB24);
      swift_setDeallocating();
      swift_deallocClassInstance();
      v270[0] = v256[0];
      v270[1] = v256[1];
      v271 = v257;
      sub_1AF6B06C0(v161, v270, 0x200000000, v258);
      if (*v258)
      {
        if (v261 > 0)
        {
          v180 = *(&v259 + 1);
          if (*(&v259 + 1))
          {
            v178 = *&v258[40];
            v85 = *(&v260 + 1);
            v86 = *(v260 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v87 = *(*(&v260 + 1) + 32);
            v267 = *v258;
            v268 = *&v258[8];
            v269 = *&v258[24];
            v213 = *&v258[32];
            v214 = v259;
            v215 = v260;
            v216 = v261;
            v211 = *v258;
            v212 = *&v258[16];
            sub_1AF5DD298(&v211, v281);
            v88 = 0;
            v174 = v83;
            v176 = v83 + 32;
            v164 = (v83 + 64);
            v172 = v82;
            v170 = v86;
            v167 = v87;
            while (1)
            {
              v203 = v88;
              v89 = *(v178 + 48 * v88 + 40);
              if (v86)
              {
                v90 = *(v89 + 376);

                os_unfair_lock_lock(v90);
                os_unfair_lock_lock(*(v89 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v87);
              v192 = *(v85 + 64);
              v196 = *(v85 + 48);
              v188 = *(v85 + 80);
              v91 = *(*(*(*(v89 + 40) + 16) + 32) + 16) + 1;
              *(v85 + 48) = ecs_stack_allocator_allocate(*(v85 + 32), 48 * v91, 8);
              *(v85 + 56) = v91;
              *(v85 + 72) = 0;
              *(v85 + 80) = 0;
              *(v85 + 64) = 0;
              v182 = *(v89 + 288);
              v185 = *(v89 + 272);
              v200 = v89;
              LODWORD(v274) = *(v89 + 24);
              sub_1AFDFEA08();
              sub_1AFDFF308();
              sub_1AFDFD038();

              v285 = v276;
              v286 = v277;
              v287 = v278;
              v283 = v274;
              v284 = v275;
              v92 = sub_1AFDFF2E8();
              v281[0] = v185;
              v281[1] = v182;
              v281[2] = v207;
              v281[3] = v208;
              v281[4] = v209;
              v281[5] = v210;
              v282 = 6;
              ecs_stack_allocator_push_snapshot(*(v82 + 32));
              v93 = *(v83 + 16);
              v94 = 2 * v93;
              v95 = ecs_stack_allocator_allocate(*(v82 + 32), 16 * v93 + 32, 8);
              *v95 = &type metadata for DebugInfoWireframePrimitive;
              v95[1] = &off_1F25604A8;
              v95[2] = &type metadata for DebugInfoColor;
              v95[3] = &off_1F2560488;
              if (v93)
              {
                if (v93 > 3 && ((v95 + 4) >= v176 + v94 * 8 || v176 >= &v95[v94 + 4]))
                {
                  v96 = v93 & 0x7FFFFFFFFFFFFFFCLL;
                  v97 = v93 & 0x7FFFFFFFFFFFFFFCLL | 2;
                  v125 = v95 + 8;
                  v126 = v93 & 0x7FFFFFFFFFFFFFFCLL;
                  v127 = v164;
                  do
                  {
                    v129 = *(v127 - 2);
                    v128 = *(v127 - 1);
                    v131 = *v127;
                    v130 = v127[1];
                    v127 += 4;
                    *(v125 - 2) = v129;
                    *(v125 - 1) = v128;
                    *v125 = v131;
                    v125[1] = v130;
                    v125 += 4;
                    v126 -= 4;
                  }

                  while (v126);
                  if (v93 == v96)
                  {
                    goto LABEL_90;
                  }
                }

                else
                {
                  v96 = 0;
                  v97 = 2;
                }

                v98 = v93 - v96;
                v99 = (v176 + 16 * v96);
                do
                {
                  v100 = *v99++;
                  *&v95[2 * v97++] = v100;
                  --v98;
                }

                while (v98);
              }

              else
              {
                v97 = 2;
              }

LABEL_90:
              LOBYTE(v274) = 1;
              sub_1AF63C898(v95, v97, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v82, v281, v92 | 0xFF000000);
              ecs_stack_allocator_pop_snapshot(*(v82 + 32));
              v101 = *(v85 + 48);
              v102 = *(v85 + 64);
              if (!v102)
              {
                v123 = *(v85 + 56);
                v124 = *(v85 + 32);
                goto LABEL_120;
              }

              for (j = 0; j != v102; ++j)
              {
                v105 = (v101 + 48 * j);
                v106 = *v105;
                v107 = v105[4];
                v108 = *(v85 + 72);
                if (v108)
                {
                  v109 = v106 == v108;
                }

                else
                {
                  v109 = 0;
                }

                if (v109)
                {
                  goto LABEL_92;
                }

                v110 = v267;
                if (!v267[11])
                {
                  goto LABEL_92;
                }

                v111 = v105[2];
                v112 = v267 + 41;
                v113 = v267[9];
                if (v113 >= 0x10)
                {
                  v114 = &v112[v267[8]];
                  v115 = v113 >> 4;
                  v116 = v267 + 41;
                  while (*v114 != v106)
                  {
                    ++v116;
                    v114 += 16;
                    if (!--v115)
                    {
                      goto LABEL_108;
                    }
                  }

                  v117 = v116[v267[10]];
                  v72 = v117 > 5;
                  v118 = (1 << v117) & 0x23;
                  if (v72 || v118 == 0)
                  {
LABEL_92:

                    v107(v104);

                    continue;
                  }
                }

LABEL_108:
                if (swift_conformsToProtocol2() && v111)
                {
                  if (sub_1AF5FC8D8(v111))
                  {
                    goto LABEL_92;
                  }

                  v120 = v110[9];
                  if (v120 < 0x10)
                  {
                    goto LABEL_92;
                  }

                  v121 = &v112[v110[8]];
                  v122 = 16 * (v120 >> 4);
                  while (*v121 != v111)
                  {
                    v121 += 16;
                    v122 -= 16;
                    if (!v122)
                    {
                      goto LABEL_92;
                    }
                  }
                }
              }

              v123 = *(v85 + 56);
              v101 = *(v85 + 48);
              v124 = *(v85 + 32);
              if (*(v85 + 64) >= 1)
              {
                swift_arrayDestroy();
              }

              v82 = v172;
              v83 = v174;
              v86 = v170;
              v87 = v167;
LABEL_120:
              ecs_stack_allocator_deallocate(v124, v101, 48 * v123);
              *(v85 + 48) = v196;
              *(v85 + 64) = v192;
              *(v85 + 80) = v188;
              sub_1AF62D29C(v200);
              ecs_stack_allocator_pop_snapshot(v87);
              if (v86)
              {
                os_unfair_lock_unlock(*(v200 + 344));
                os_unfair_lock_unlock(*(v200 + 376));
              }

              v88 = v203 + 1;
              if (v203 + 1 == v180)
              {
                sub_1AFB3CAB4(v82);
                sub_1AF0D9DB0(v258, &qword_1ED725EA0);
                sub_1AFB3CAC4(v256, sub_1AFB3CB24);
                sub_1AF0D9DB0(v258, &qword_1ED725EA0);
                v35 = v205;
                goto LABEL_131;
              }
            }
          }

          sub_1AFB3CAB4(v82);
          sub_1AFB3CAC4(v256, sub_1AFB3CB24);
          sub_1AF0D9DB0(v258, &qword_1ED725EA0);
LABEL_131:
          v132 = sub_1AFB3B238(v161);
          if (!v132)
          {

            swift_unknownObjectRelease();
            sub_1AF0D9DB0(&v246, &qword_1ED725EA0);

            return;
          }

          v134 = v132;
          v135 = v133;
          v136 = *(v35 + 656);
          v217 = *(v35 + 640);
          v218 = v136;
          v219[0] = *(v35 + 672);
          v137 = *(v35 + 592);
          v213 = *(v35 + 576);
          v214 = v137;
          v138 = *(v35 + 624);
          v215 = *(v35 + 608);
          v216 = v138;
          v139 = *(v35 + 560);
          v211 = *(v35 + 544);
          v212 = v139;
          *(v219 + 9) = *(v35 + 681);
          if (sub_1AF448314(&v211) == 1)
          {
            sub_1AFDFE518();
            __break(1u);
            return;
          }

          v201 = v215;
          v204 = v214;
          v193 = v217;
          v197 = v216;
          v186 = v219[0];
          v189 = v218;
          v140 = sub_1AFB3CAA4(255, 255, 255);
          v274 = v204;
          v275 = v201;
          v276 = v197;
          v277 = v193;
          v278 = v189;
          v279 = v186;
          v280 = 8;
          ecs_stack_allocator_push_snapshot(*(v134 + 32));
          v141 = *(v135 + 16);
          v142 = 2 * v141;
          v143 = ecs_stack_allocator_allocate(*(v134 + 32), 16 * v141 + 32, 8);
          *v143 = &type metadata for DebugInfoWireframePrimitive;
          v143[1] = &off_1F25604A8;
          v143[2] = &type metadata for DebugInfoColor;
          v143[3] = &off_1F2560488;
          if (v141)
          {
            if (v141 > 5 && ((v143 + 4) >= v135 + v142 * 8 + 32 || v135 + 32 >= &v143[v142 + 4]))
            {
              v144 = v141 & 0x7FFFFFFFFFFFFFFCLL;
              v145 = v141 & 0x7FFFFFFFFFFFFFFCLL | 2;
              v149 = v143 + 8;
              v150 = (v135 + 64);
              v151 = v141 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v153 = *(v150 - 2);
                v152 = *(v150 - 1);
                v155 = *v150;
                v154 = v150[1];
                v150 += 4;
                *(v149 - 2) = v153;
                *(v149 - 1) = v152;
                *v149 = v155;
                v149[1] = v154;
                v149 += 4;
                v151 -= 4;
              }

              while (v151);
              if (v141 == v144)
              {
                goto LABEL_143;
              }
            }

            else
            {
              v144 = 0;
              v145 = 2;
            }

            v146 = v141 - v144;
            v147 = (v135 + 16 * v144 + 32);
            do
            {
              v148 = *v147++;
              *&v143[2 * v145++] = v148;
              --v146;
            }

            while (v146);
          }

          else
          {
            v145 = 2;
          }

LABEL_143:
          sub_1AF63C898(v143, v145, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v134, &v274, v140);
          ecs_stack_allocator_pop_snapshot(*(v134 + 32));

          swift_unknownObjectRelease();
          sub_1AF0D9DB0(&v246, &qword_1ED725EA0);

          sub_1AFB3CAB4(v134);
          return;
        }

        sub_1AFB3CAC4(v256, sub_1AFB3CB24);
        sub_1AF0D9DB0(v258, &qword_1ED725EA0);
      }

      else
      {
        sub_1AFB3CAC4(v256, sub_1AFB3CB24);
      }

      sub_1AFB3CAB4(v82);
      goto LABEL_131;
    }

LABEL_30:
    swift_getObjectType();
    [v34 setRenderPipelineState_];
    [v34 setDepthStencilState_];
    sub_1AFB19490(v161, v35);
    swift_unknownObjectRelease();
    goto LABEL_31;
  }
}

uint64_t sub_1AFB3CAB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AFB3CAC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB3CB24()
{
  if (!qword_1EB642A08)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642A08);
    }
  }
}

uint64_t sub_1AFB3CBB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

float32x4_t sub_1AFB3CC14@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 184);

  sub_1AF6D4A34(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v8);
  v19 = v10;
  v20 = v9;
  v18 = v11;

  sub_1AFB21428(a3, &v21);
  v12 = v24;
  v13 = v28;
  v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v21.f32[0]), v26, *v21.f32, 1), v27, v21, 2), v28, v21, 3);
  result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v22.f32[0]), v26, *v22.f32, 1), v27, v22, 2), v28, v22, 3);
  v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v23.f32[0]), v26, *v23.f32, 1), v27, v23, 2), v28, v23, 3);
  v17 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v24.f32[0]), v26, *v24.f32, 1), v27, v24, 2);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0;
  *(a4 + 128) = v20;
  *(a4 + 144) = v19;
  *(a4 + 160) = v18;
  *(a4 + 176) = v14;
  *(a4 + 192) = result;
  *(a4 + 208) = v16;
  *(a4 + 224) = vmlaq_laneq_f32(v17, v13, v12, 3);
  return result;
}

void sub_1AFB3CD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(*(a2 + 280) + 80);
    if (v4)
    {

      v7 = v4;
      sub_1AF474680(v19);

      v18 = sub_1AFBE45A8(a1);

      if (v18)
      {
        v8 = sub_1AF6F3FF4(0);
        if (v8)
        {
          v9 = v8;
          v10 = sub_1AFDFE238();
          v12 = v11;

          sub_1AF7180FC();

          v13 = sub_1AF6F3D60(v18, v10, v12);

          sub_1AF709E8C(v13);
          swift_unknownObjectRelease();

          sub_1AFB35990(a1, a2, a3, v9, v19);
          v14 = sub_1AFB3B238(a1);
          if (v14)
          {
            v16 = v14;
            v17 = sub_1AF3C3FEC(v15);
            sub_1AFB3CAB4(v16);
            sub_1AF6B85A0(v17, MEMORY[0x1E69E7CC0], v20);

            sub_1AF6B06C0(a1, v20, 0x200000000, &v21);
            if (v21)
            {
              v31 = v24;
              v32 = v25;
              v33 = v26;
              v28 = v21;
              v34 = v27;
              v29 = v22;
              v30 = v23;
              sub_1AF6B8EAC(0);
              sub_1AF692DB0(v20);

              swift_unknownObjectRelease();
              sub_1AF0D9DB0(&v21, &qword_1ED725EA0);
            }

            else
            {
              sub_1AF692DB0(v20);

              swift_unknownObjectRelease();
            }
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1AFB3D078(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a2;
  HIDWORD(v7) = 1.0;
  HIDWORD(v8) = 0;
  v27 = v8;
  v28 = v7;
  v9 = sub_1AFB3CAA4(255, 0, 255);
  v29[0] = v28;
  v29[1] = v27;
  v10 = 2;
  v30 = 2;
  v31 = 0;
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v11 = *(a4 + 16);
  v12 = 2 * v11;
  v13 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v11 + 32, 8);
  *v13 = &type metadata for DebugInfoWireframePrimitive;
  v13[1] = &off_1F25604A8;
  v13[2] = &type metadata for DebugInfoColor;
  v13[3] = &off_1F2560488;
  if (!v11)
  {
    goto LABEL_15;
  }

  if (v11 > 5 && ((v13 + 4) < a4 + v12 * 8 + 32 ? (v14 = a4 + 32 >= &v13[v12 + 4]) : (v14 = 1), v14))
  {
    v15 = v11 & 0x7FFFFFFFFFFFFFFCLL;
    v10 = v11 & 0x7FFFFFFFFFFFFFFCLL | 2;
    v16 = v13 + 8;
    v17 = (a4 + 64);
    v18 = v11 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v20 = *(v17 - 2);
      v19 = *(v17 - 1);
      v22 = *v17;
      v21 = v17[1];
      v17 += 4;
      *(v16 - 2) = v20;
      *(v16 - 1) = v19;
      *v16 = v22;
      v16[1] = v21;
      v16 += 4;
      v18 -= 4;
    }

    while (v18);
    if (v11 == v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    v10 = 2;
  }

  v23 = v11 - v15;
  v24 = (a4 + 16 * v15 + 32);
  do
  {
    v25 = *v24++;
    *&v13[2 * v10++] = v25;
    --v23;
  }

  while (v23);
LABEL_15:
  v32 = 1;
  sub_1AF63C898(v13, v10, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, v29, v9);
  result = ecs_stack_allocator_pop_snapshot(*(a3 + 32));
  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB3D228(__n128 *a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a2;
  v7.n128_u32[3] = 1.0;
  v35 = v7;
  v9 = vmulq_f32(v8, v8);
  v10 = vmulq_laneq_f32(v8, v8, 3);
  v11 = vmuls_lane_f32(v8.f32[0], *v8.f32, 1);
  v12 = vmuls_lane_f32(v8.f32[0], v8, 2);
  v13.i32[3] = 0;
  v13.f32[0] = (0.5 - v9.f32[1]) - v9.f32[2];
  v13.f32[1] = v11 + v10.f32[2];
  v13.f32[2] = v12 - v10.f32[1];
  v8.f32[0] = vmuls_lane_f32(v8.f32[1], v8, 2);
  v9.f32[0] = 0.5 - v9.f32[0];
  v14.i32[3] = 0;
  v14.f32[0] = v11 - v10.f32[2];
  v14.f32[1] = v9.f32[0] - v9.f32[2];
  v14.f32[2] = v8.f32[0] + v10.f32[0];
  v8.f32[0] = v8.f32[0] - v10.f32[0];
  v10.i32[3] = 0;
  v10.f32[0] = v12 + v10.f32[1];
  v10.i32[1] = v8.i32[0];
  v10.f32[2] = v9.f32[0] - v9.f32[1];
  v33 = vaddq_f32(v14, v14);
  v34 = vaddq_f32(v13, v13);
  v32 = vaddq_f32(v10, v10);
  memset(v36, 0, sizeof(v36));
  v37 = 12;
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v15 = *(a4 + 16);
  v16 = 2 * v15;
  v17 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v15 + 48, 8);
  *v17 = &type metadata for DebugInfoWireframePrimitive;
  v17[1] = &off_1F25604A8;
  v17[2] = &type metadata for WorldTransform;
  v17[3] = &off_1F2529FC0;
  v17[4] = &type metadata for Beamed;
  v17[5] = &off_1F2529FA0;
  if (v15)
  {
    if (v15 > 0x13)
    {
      v18 = 0;
      v24 = 2 * (v15 - 1);
      v19 = 3;
      if (&v17[v24 + 6] < v17 + 6 || &v17[v24 + 7] < v17 + 7 || (v15 - 1) >> 60)
      {
        goto LABEL_4;
      }

      if ((v17 + 6) >= a4 + v16 * 8 + 32 || a4 + 32 >= &v17[v16 + 6])
      {
        v18 = v15 & 0x1FFFFFFFFFFFFFFCLL;
        v19 = v15 | 3;
        v25 = v17 + 10;
        v26 = (a4 + 64);
        v27 = v15 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v29 = *(v26 - 2);
          v28 = *(v26 - 1);
          v31 = *v26;
          v30 = v26[1];
          v26 += 4;
          *(v25 - 2) = v29;
          *(v25 - 1) = v28;
          *v25 = v31;
          v25[1] = v30;
          v25 += 4;
          v27 -= 4;
        }

        while (v27);
        if (v15 == v18)
        {
          goto LABEL_8;
        }

        goto LABEL_4;
      }
    }

    v18 = 0;
    v19 = 3;
LABEL_4:
    v20 = v15 - v18;
    v21 = (a4 + 16 * v18 + 32);
    do
    {
      v22 = *v21++;
      *&v17[2 * v19++] = v22;
      --v20;
    }

    while (v20);
    goto LABEL_8;
  }

  v19 = 3;
LABEL_8:
  v38 = 1;
  sub_1AF63D0A0(v17, v19, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, v36, v34, v33, v32, v35);
  result = ecs_stack_allocator_pop_snapshot(*(a3 + 32));
  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB3D4B4(__int128 *a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v28 = *a1;
  sub_1AF5C5D6C(*a2);
  v7 = v28;
  HIDWORD(v7) = 1.0;
  HIDWORD(v8) = 0;
  v27 = v8;
  v29 = v7;
  v9 = sub_1AFB3CAA4(0, 0, 255);
  v30[0] = v29;
  v30[1] = v27;
  v31 = 0;
  v32 = 0;
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v10 = *(a4 + 16);
  v11 = 2 * v10;
  v12 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v10 + 32, 8);
  *v12 = &type metadata for DebugInfoWireframePrimitive;
  v12[1] = &off_1F25604A8;
  v12[2] = &type metadata for DebugInfoColor;
  v12[3] = &off_1F2560488;
  if (v10)
  {
    if (v10 > 5 && ((v12 + 4) < a4 + v11 * 8 + 32 ? (v13 = a4 + 32 >= &v12[v11 + 4]) : (v13 = 1), v13))
    {
      v14 = v10 & 0x7FFFFFFFFFFFFFFCLL;
      v15 = v10 & 0x7FFFFFFFFFFFFFFCLL | 2;
      v16 = v12 + 8;
      v17 = (a4 + 64);
      v18 = v10 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *(v17 - 2);
        v19 = *(v17 - 1);
        v22 = *v17;
        v21 = v17[1];
        v17 += 4;
        *(v16 - 2) = v20;
        *(v16 - 1) = v19;
        *v16 = v22;
        v16[1] = v21;
        v16 += 4;
        v18 -= 4;
      }

      while (v18);
      if (v10 == v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
      v15 = 2;
    }

    v23 = v10 - v14;
    v24 = (a4 + 16 * v14 + 32);
    do
    {
      v25 = *v24++;
      *&v12[2 * v15++] = v25;
      --v23;
    }

    while (v23);
  }

  else
  {
    v15 = 2;
  }

LABEL_17:
  sub_1AF63C898(v12, v15, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, v30, v9);
  result = ecs_stack_allocator_pop_snapshot(*(a3 + 32));
  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1AFB3D668(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v424 = *MEMORY[0x1E69E9840];

  sub_1AF5FCA80();
  v9 = v8;

  if (v9 == 2)
  {
    return;
  }

  v11 = HIDWORD(v3);
  v250 = *(*(v7 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v10) + 8);
  sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0);
  v12 = swift_allocObject();
  v13 = v12;
  v14 = &type metadata for DebugInfoB;
  if (v9)
  {
    v14 = &type metadata for DebugInfoA;
  }

  *(v12 + 32) = v14;
  v202 = v12 + 32;
  v203 = HIDWORD(v3);
  v15 = &off_1F2560448;
  *(v12 + 16) = xmmword_1AFE431C0;
  if (v9)
  {
    v15 = &off_1F2560428;
  }

  *(v12 + 40) = v15;
  v16 = *(v5 + 90);
  v215 = v3;
  if (v16 & 1) == 0 || (sub_1AF3CCD70(v3, v343), (v344))
  {

    v17 = 0;
    goto LABEL_26;
  }

  v251 = v343[1];
  v246 = v343[0];
  v18 = sub_1AFB3CAA4(255, 255, 255);
  v422[0] = v246;
  v422[1] = v251;
  v423 = 6;

  ecs_stack_allocator_push_snapshot(*(v250 + 32));
  v19 = *(v13 + 16);
  v20 = 2 * v19;
  v21 = ecs_stack_allocator_allocate(*(v250 + 32), 16 * v19 + 32, 8);
  *v21 = &type metadata for DebugInfoWireframePrimitive;
  v21[1] = &off_1F25604A8;
  v21[2] = &type metadata for DebugInfoColor;
  v21[3] = &off_1F2560488;
  if (v19)
  {
    if (v19 > 5 && ((v21 + 4) < v13 + v20 * 8 + 32 ? (v22 = v202 >= &v21[v20 + 4]) : (v22 = 1), v22))
    {
      v23 = v19 & 0x7FFFFFFFFFFFFFFCLL;
      v24 = v19 & 0x7FFFFFFFFFFFFFFCLL | 2;
      v25 = v21 + 8;
      v26 = (v13 + 64);
      v27 = v19 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v29 = *(v26 - 2);
        v28 = *(v26 - 1);
        v31 = *v26;
        v30 = v26[1];
        v26 += 4;
        *(v25 - 2) = v29;
        *(v25 - 1) = v28;
        *v25 = v31;
        v25[1] = v30;
        v25 += 4;
        v27 -= 4;
      }

      while (v27);
      if (v19 == v23)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v23 = 0;
      v24 = 2;
    }

    v32 = v19 - v23;
    v33 = (v13 + 16 * v23 + 32);
    do
    {
      v34 = *v33++;
      *&v21[2 * v24++] = v34;
      --v32;
    }

    while (v32);
  }

  else
  {
    v24 = 2;
  }

LABEL_25:
  LOBYTE(v336[0]) = 1;
  v17 = 0;
  sub_1AF63C898(v21, v24, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v250, v422, v18);
  ecs_stack_allocator_pop_snapshot(*(v250 + 32));
  v3 = v215;
  LODWORD(v11) = v203;
LABEL_26:
  v247 = v13;
  v205 = v16;
  if ((v16 & 4) != 0)
  {
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v324 = qword_1ED73B840;
    v325 = 0;
    v326 = 2;
    v327 = 0;
    v328 = 2;
    v329 = 0;
    sub_1AF5C9204(v260);
    sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1AFE431C0;
    *(v35 + 56) = &type metadata for EmitterReference;
    *(v35 + 64) = &off_1F2563D20;
    *(v35 + 32) = v3;
    v36 = v35 + 32;
    *(v35 + 36) = v11;
    sub_1AF5FDBF0(v261);
    sub_1AFB3CAC4(v260, sub_1AF9FA148);
    swift_setDeallocating();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v36);
    swift_deallocClassInstance();
    v298[0] = v261[0];
    v298[1] = v261[1];
    v299 = v262;
    sub_1AF6B06C0(v7, v298, 0x200000000, &v345);
    v221 = v345;
    if (!v345)
    {
      sub_1AFB3CAC4(v261, sub_1AF9FA148);
      goto LABEL_44;
    }

    v37 = v348;
    v38 = v349;
    v216 = v350;
    v39 = v351;
    v396 = v346;
    v397 = v347;
    v210 = v352;
    if (v352 > 0 && v349)
    {
      v197 = v7;
      v40 = *(v351 + 32);
      v41 = *(v350 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF5D15C0(&v345, v336);
      v42 = (v37 + 24);
      v208 = v41;
      do
      {
        v241 = v38;
        v44 = *(v42 - 6);
        v43 = *(v42 - 5);
        v45 = *(v42 - 4);
        v236 = *(v42 - 1);
        v231 = *v42;
        v46 = v42[2];
        v226 = v42[1];
        if (v41)
        {
          v47 = *(v46 + 376);

          os_unfair_lock_lock(v47);
          os_unfair_lock_lock(*(v46 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v40);
        v48 = *(v39 + 64);
        v415[0] = *(v39 + 48);
        v415[1] = v48;
        v416 = *(v39 + 80);
        v49 = *(v39 + 32);
        v50 = *(*(*(*(v46 + 40) + 16) + 32) + 16) + 1;

        *(v39 + 48) = ecs_stack_allocator_allocate(v49, 48 * v50, 8);
        *(v39 + 56) = v50;
        *(v39 + 72) = 0;
        *(v39 + 80) = 0;
        *(v39 + 64) = 0;

        LOBYTE(v336[0]) = 1;
        v417[0] = v216;
        v417[1] = v46;
        v417[2] = v39;
        v417[3] = v45;
        v417[4] = (v43 - v44 + v45);
        v417[5] = v210;
        v417[6] = v44;
        v417[7] = v43;
        v417[8] = 0;
        v417[9] = 0;
        v418 = 1;
        v419 = v236;
        v420 = v231;
        v421 = v226;
        v13 = v247;

        v17 = 0;
        sub_1AFD53548(v417, v250, v247);

        v275 = v221;
        v276 = v396;
        v277 = v397;
        sub_1AF630994(v39, &v275, v415);
        sub_1AF62D29C(v46);
        ecs_stack_allocator_pop_snapshot(v40);
        v41 = v208;
        if (v208)
        {
          os_unfair_lock_unlock(*(v46 + 344));
          os_unfair_lock_unlock(*(v46 + 376));
        }

        v42 += 6;
        v38 = v241 - 1;
      }

      while (v241 != 1);
      sub_1AFB3CAC4(v261, sub_1AF9FA148);
      sub_1AF0D9DB0(&v345, &qword_1ED725EA0);

      sub_1AF0D9DB0(&v345, &qword_1ED725EA0);
      v7 = v197;
      v3 = v215;
      LODWORD(v11) = v203;
LABEL_44:
      LOBYTE(v16) = v205;
      if ((v205 & 8) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_45;
    }

    sub_1AFB3CAC4(v261, sub_1AF9FA148);
    sub_1AF0D9DB0(&v345, &qword_1ED725EA0);
    v3 = v215;
    LODWORD(v11) = v203;
  }

  if ((v16 & 8) == 0)
  {
LABEL_60:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_61;
  }

LABEL_45:
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v318 = qword_1ED73B840;
  v319 = 0;
  v320 = 2;
  v321 = 0;
  v322 = 2;
  v323 = 0;
  sub_1AF5C9174(v263);
  sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1AFE431C0;
  *(v51 + 56) = &type metadata for EmitterReference;
  *(v51 + 64) = &off_1F2563D20;
  *(v51 + 32) = v3;
  v52 = v51 + 32;
  *(v51 + 36) = v11;
  sub_1AF5FDBF0(v264);
  sub_1AFB3CAC4(v263, sub_1AFA0D2A0);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v52);
  swift_deallocClassInstance();
  v296[0] = v264[0];
  v296[1] = v264[1];
  v297 = v265;
  sub_1AF6B06C0(v7, v296, 0x200000000, &v353);
  v227 = v353;
  if (!v353)
  {
    sub_1AFB3CAC4(v264, sub_1AFA0D2A0);
    LOBYTE(v16) = v205;
    goto LABEL_60;
  }

  v53 = v356;
  v54 = v357;
  v222 = v358;
  v211 = v359;
  v394 = v354;
  v395 = v355;
  v217 = v360;
  LOBYTE(v16) = v205;
  if (v360 > 0 && v357)
  {
    v198 = v7;
    v55 = v359;
    v56 = v359[4];
    v242 = *(v358 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

    sub_1AF5D15C0(&v353, v336);
    v57 = (v53 + 24);
    do
    {
      v58 = v56;
      v59 = *(v57 - 6);
      v60 = *(v57 - 5);
      v61 = *(v57 - 4);
      v62 = *(v57 - 1);
      v237 = *v57;
      v63 = v57[2];
      v232 = v57[1];
      if (v242)
      {
        v64 = *(v63 + 376);

        v55 = v211;
        os_unfair_lock_lock(v64);
        os_unfair_lock_lock(*(v63 + 344));
      }

      else
      {
      }

      v56 = v58;
      ecs_stack_allocator_push_snapshot(v58);

      sub_1AF630914(v65, v55, v361);

      LOBYTE(v336[0]) = 1;
      v410[0] = v222;
      v410[1] = v63;
      v410[2] = v55;
      v410[3] = v61;
      v410[4] = (v60 - v59 + v61);
      v410[5] = v217;
      v410[6] = v59;
      v410[7] = v60;
      v410[8] = 0;
      v410[9] = 0;
      v411 = 1;
      v412 = v62;
      v413 = v237;
      v414 = v232;

      sub_1AFD11F0C(v410, v250, v247);
      v278 = v227;
      v279 = v394;
      v280 = v395;
      sub_1AF630994(v55, &v278, v361);
      sub_1AF62D29C(v63);
      ecs_stack_allocator_pop_snapshot(v58);
      if (v242)
      {
        os_unfair_lock_unlock(*(v63 + 344));
        os_unfair_lock_unlock(*(v63 + 376));
      }

      v57 += 6;
      --v54;
    }

    while (v54);
    sub_1AFB3CAC4(v264, sub_1AFA0D2A0);
    sub_1AF0D9DB0(&v353, &qword_1ED725EA0);
    v13 = v247;

    sub_1AF0D9DB0(&v353, &qword_1ED725EA0);
    v7 = v198;
    v3 = v215;
    v17 = 0;
    LODWORD(v11) = v203;
    LOBYTE(v16) = v205;
    if ((v205 & 0x10) == 0)
    {
LABEL_77:
      if ((v16 & 0x20) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_81;
    }
  }

  else
  {
    sub_1AFB3CAC4(v264, sub_1AFA0D2A0);
    sub_1AF0D9DB0(&v353, &qword_1ED725EA0);
    v3 = v215;
    LODWORD(v11) = v203;
    if ((v205 & 0x10) == 0)
    {
      goto LABEL_77;
    }
  }

LABEL_61:
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v312 = qword_1ED73B840;
  v313 = 0;
  v314 = 2;
  v315 = 0;
  v316 = 2;
  v317 = 0;
  sub_1AF5C948C(v266);
  sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1AFE431C0;
  *(v66 + 56) = &type metadata for EmitterReference;
  *(v66 + 64) = &off_1F2563D20;
  *(v66 + 32) = v3;
  v67 = v66 + 32;
  *(v66 + 36) = v11;
  sub_1AF5FDBF0(v267);
  sub_1AFB3CAC4(v266, sub_1AFB3F900);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v67);
  swift_deallocClassInstance();
  v294[0] = v267[0];
  v294[1] = v267[1];
  v295 = v268;
  sub_1AF6B06C0(v7, v294, 0x200000000, &v362);
  v228 = v362;
  if (v362)
  {
    v68 = v365;
    v69 = v366;
    v223 = v367;
    v212 = v368;
    v392 = v363;
    v393 = v364;
    v218 = v369;
    LOBYTE(v16) = v205;
    if (v369 <= 0 || !v366)
    {
      sub_1AFB3CAC4(v267, sub_1AFB3F900);
      sub_1AF0D9DB0(&v362, &qword_1ED725EA0);
      v3 = v215;
      LODWORD(v11) = v203;
      if ((v205 & 0x20) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_81;
    }

    v199 = v7;
    v70 = v368;
    v71 = v368[4];
    v243 = *(v367 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

    sub_1AF5D15C0(&v362, v336);
    v72 = (v68 + 24);
    do
    {
      v73 = v71;
      v74 = *(v72 - 6);
      v75 = *(v72 - 5);
      v76 = *(v72 - 4);
      v77 = *(v72 - 1);
      v238 = *v72;
      v78 = v72[2];
      v233 = v72[1];
      if (v243)
      {
        v79 = *(v78 + 376);

        v70 = v212;
        os_unfair_lock_lock(v79);
        os_unfair_lock_lock(*(v78 + 344));
      }

      else
      {
      }

      v71 = v73;
      ecs_stack_allocator_push_snapshot(v73);

      sub_1AF630914(v80, v70, v370);

      LOBYTE(v336[0]) = 1;
      v405[0] = v223;
      v405[1] = v78;
      v405[2] = v70;
      v405[3] = v76;
      v405[4] = (v75 - v74 + v76);
      v405[5] = v218;
      v405[6] = v74;
      v405[7] = v75;
      v405[8] = 0;
      v405[9] = 0;
      v406 = 1;
      v407 = v77;
      v408 = v238;
      v409 = v233;

      sub_1AFD12058(v405, v250, v247);
      v281 = v228;
      v282 = v392;
      v283 = v393;
      sub_1AF630994(v70, &v281, v370);
      sub_1AF62D29C(v78);
      ecs_stack_allocator_pop_snapshot(v73);
      if (v243)
      {
        os_unfair_lock_unlock(*(v78 + 344));
        os_unfair_lock_unlock(*(v78 + 376));
      }

      v72 += 6;
      --v69;
    }

    while (v69);
    sub_1AFB3CAC4(v267, sub_1AFB3F900);
    sub_1AF0D9DB0(&v362, &qword_1ED725EA0);
    v13 = v247;

    sub_1AF0D9DB0(&v362, &qword_1ED725EA0);
    v7 = v199;
    v3 = v215;
    v17 = 0;
    LODWORD(v11) = v203;
  }

  else
  {
    sub_1AFB3CAC4(v267, sub_1AFB3F900);
  }

  LOBYTE(v16) = v205;
  if ((v205 & 0x20) == 0)
  {
    goto LABEL_97;
  }

LABEL_81:
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v306 = qword_1ED73B840;
  v307 = 0;
  v308 = 2;
  v309 = 0;
  v310 = 2;
  v311 = 0;
  sub_1AF5C948C(v269);
  sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1AFE431C0;
  *(v81 + 56) = &type metadata for EmitterReference;
  *(v81 + 64) = &off_1F2563D20;
  *(v81 + 32) = v3;
  v82 = v81 + 32;
  *(v81 + 36) = v11;
  sub_1AF5FDBF0(v270);
  sub_1AFB3CAC4(v269, sub_1AFB3F900);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v82);
  swift_deallocClassInstance();
  v292[0] = v270[0];
  v292[1] = v270[1];
  v293 = v271;
  sub_1AF6B06C0(v7, v292, 0x200000000, &v371);
  v229 = v371;
  if (v371)
  {
    v83 = v374;
    v84 = v375;
    v224 = v376;
    v213 = v377;
    v390 = v372;
    v391 = v373;
    v219 = v378;
    LOBYTE(v16) = v205;
    if (v378 <= 0 || !v375)
    {
      sub_1AFB3CAC4(v270, sub_1AFB3F900);
      sub_1AF0D9DB0(&v371, &qword_1ED725EA0);
      v3 = v215;
      LODWORD(v11) = v203;
      goto LABEL_97;
    }

    v200 = v7;
    v85 = v377;
    v86 = v377[4];
    v244 = *(v376 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

    sub_1AF5D15C0(&v371, v336);
    v87 = (v83 + 24);
    do
    {
      v88 = v86;
      v89 = *(v87 - 6);
      v90 = *(v87 - 5);
      v91 = *(v87 - 4);
      v92 = *(v87 - 1);
      v239 = *v87;
      v93 = v87[2];
      v234 = v87[1];
      if (v244)
      {
        v94 = *(v93 + 376);

        v85 = v213;
        os_unfair_lock_lock(v94);
        os_unfair_lock_lock(*(v93 + 344));
      }

      else
      {
      }

      v86 = v88;
      ecs_stack_allocator_push_snapshot(v88);

      sub_1AF630914(v95, v85, v379);

      LOBYTE(v336[0]) = 1;
      v400[0] = v224;
      v400[1] = v93;
      v400[2] = v85;
      v400[3] = v91;
      v400[4] = (v90 - v89 + v91);
      v400[5] = v219;
      v400[6] = v89;
      v400[7] = v90;
      v400[8] = 0;
      v400[9] = 0;
      v401 = 1;
      v402 = v92;
      v403 = v239;
      v404 = v234;

      sub_1AFD12084(v400, v250, v247);
      v284 = v229;
      v285 = v390;
      v286 = v391;
      sub_1AF630994(v85, &v284, v379);
      sub_1AF62D29C(v93);
      ecs_stack_allocator_pop_snapshot(v88);
      if (v244)
      {
        os_unfair_lock_unlock(*(v93 + 344));
        os_unfair_lock_unlock(*(v93 + 376));
      }

      v87 += 6;
      --v84;
    }

    while (v84);
    sub_1AFB3CAC4(v270, sub_1AFB3F900);
    sub_1AF0D9DB0(&v371, &qword_1ED725EA0);
    v13 = v247;

    sub_1AF0D9DB0(&v371, &qword_1ED725EA0);
    v7 = v200;
    v3 = v215;
    v17 = 0;
    LODWORD(v11) = v203;
  }

  else
  {
    sub_1AFB3CAC4(v270, sub_1AFB3F900);
  }

  LOBYTE(v16) = v205;
LABEL_97:
  if ((v16 & 2) == 0)
  {
    goto LABEL_156;
  }

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v300 = qword_1ED73B840;
  v301 = 0;
  v302 = 2;
  v303 = 0;
  v304 = 2;
  v305 = 0;
  sub_1AF705094(1, v272);
  sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1AFE431C0;
  *(v96 + 56) = &type metadata for EmitterReference;
  *(v96 + 64) = &off_1F2563D20;
  *(v96 + 32) = v3;
  v97 = v96 + 32;
  *(v96 + 36) = v11;
  sub_1AF5FDBF0(v273);
  sub_1AFB3F8A4(v272, &qword_1EB641FE8);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v97);
  swift_deallocClassInstance();
  v290[0] = v273[0];
  v290[1] = v273[1];
  v291 = v274;
  sub_1AF6B06C0(v7, v290, 0x200000000, v380);
  if (!*v380)
  {
    sub_1AFB3F8A4(v273, &qword_1EB641FE8);
    goto LABEL_156;
  }

  if (v383 <= 0 || (v214 = *(&v381 + 1)) == 0)
  {
    sub_1AFB3F8A4(v273, &qword_1EB641FE8);
    sub_1AF0D9DB0(v380, &qword_1ED725EA0);
    goto LABEL_156;
  }

  v201 = v7;
  v209 = *&v380[40];
  v98 = *(&v382 + 1);
  v99 = *(v382 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v100 = *(*(&v382 + 1) + 32);
  v287 = *v380;
  v288 = *&v380[8];
  v289 = *&v380[24];
  v336[2] = *&v380[32];
  v337 = v381;
  v338 = v382;
  v339 = v383;
  v336[0] = *v380;
  v336[1] = *&v380[16];
  sub_1AF5DD298(v336, &v330);
  v101 = 0;
  v206 = v13 + 32;
  v207 = v100;
  v196 = (v13 + 64);
  v204 = v99;
  while (2)
  {
    v102 = *(v209 + 48 * v101 + 40);
    if (v99)
    {
      v103 = *(v102 + 376);

      os_unfair_lock_lock(v103);
      os_unfair_lock_lock(*(v102 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v100);
    v230 = *(v98 + 64);
    v235 = *(v98 + 48);
    v225 = *(v98 + 80);
    v104 = v102;
    v105 = *(*(*(*(v102 + 40) + 16) + 32) + 16) + 1;
    *(v98 + 48) = ecs_stack_allocator_allocate(*(v98 + 32), 48 * v105, 8);
    *(v98 + 56) = v105;
    *(v98 + 72) = 0;
    *(v98 + 80) = 0;
    *(v98 + 64) = 0;
    v252 = *(v104 + 272);
    v220 = *(v104 + 288);
    sub_1AFDFF288();
    v240 = v104;
    MEMORY[0x1B271ACB0](v104);
    v330.i64[0] = sub_1AFDFF2F8();
    sub_1AFDFEA08();
    sub_1AFDFF308();
    sub_1AFDFD038();

    v258[4] = v332;
    v258[5] = v333;
    v259 = v334;
    v258[2] = v330;
    v258[3] = v331;
    v106 = sub_1AFDFF2E8();
    v398[0] = v252;
    v398[1] = v220;
    v398[2] = aBlock;
    v398[3] = v387;
    v398[4] = v388;
    v398[5] = v389;
    v399 = 6;
    ecs_stack_allocator_push_snapshot(*(v250 + 32));
    v107 = *(v13 + 16);
    v108 = 2 * v107;
    v109 = ecs_stack_allocator_allocate(*(v250 + 32), 16 * v107 + 32, 8);
    *v109 = &type metadata for DebugInfoWireframePrimitive;
    v109[1] = &off_1F25604A8;
    v109[2] = &type metadata for DebugInfoColor;
    v109[3] = &off_1F2560488;
    v245 = v101;
    if (v107)
    {
      if (v107 > 3 && ((v109 + 4) >= v206 + v108 * 8 || v202 >= &v109[v108 + 4]))
      {
        v110 = v107 & 0x7FFFFFFFFFFFFFFCLL;
        v111 = v107 & 0x7FFFFFFFFFFFFFFCLL | 2;
        v140 = v109 + 8;
        v141 = v107 & 0x7FFFFFFFFFFFFFFCLL;
        v142 = v196;
        do
        {
          v144 = *(v142 - 2);
          v143 = *(v142 - 1);
          v146 = *v142;
          v145 = v142[1];
          v142 += 4;
          *(v140 - 2) = v144;
          *(v140 - 1) = v143;
          *v140 = v146;
          v140[1] = v145;
          v140 += 4;
          v141 -= 4;
        }

        while (v141);
        if (v107 == v110)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v110 = 0;
        v111 = 2;
      }

      v112 = v107 - v110;
      v113 = (v206 + 16 * v110);
      do
      {
        v114 = *v113++;
        *&v109[2 * v111++] = v114;
        --v112;
      }

      while (v112);
    }

    else
    {
      v111 = 2;
    }

LABEL_117:
    v330.i8[0] = 1;
    sub_1AF63C898(v109, v111, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v250, v398, v106 | 0xFF000000);
    ecs_stack_allocator_pop_snapshot(*(v250 + 32));
    v115 = *(v98 + 48);
    v116 = *(v98 + 64);
    if (!v116)
    {
      v138 = *(v98 + 56);
      v139 = *(v98 + 32);
      goto LABEL_147;
    }

    v253 = v17;
    for (i = 0; i != v116; ++i)
    {
      v119 = (v115 + 48 * i);
      v120 = *v119;
      v121 = v119[4];
      v122 = *(v98 + 72);
      if (v122)
      {
        v123 = v120 == v122;
      }

      else
      {
        v123 = 0;
      }

      if (v123)
      {
        goto LABEL_119;
      }

      v124 = v287;
      if (!v287[11])
      {
        goto LABEL_119;
      }

      v125 = v119[2];
      v126 = v287 + 41;
      v127 = v287[9];
      if (v127 >= 0x10)
      {
        v128 = &v126[v287[8]];
        v129 = v127 >> 4;
        v130 = v287 + 41;
        while (*v128 != v120)
        {
          ++v130;
          v128 += 16;
          if (!--v129)
          {
            goto LABEL_135;
          }
        }

        v131 = v130[v287[10]];
        v132 = v131 > 5;
        v133 = (1 << v131) & 0x23;
        if (v132 || v133 == 0)
        {
LABEL_119:

          v121(v118);

          continue;
        }
      }

LABEL_135:
      if (swift_conformsToProtocol2() && v125)
      {
        if (sub_1AF5FC8D8(v125))
        {
          goto LABEL_119;
        }

        v135 = v124[9];
        if (v135 < 0x10)
        {
          goto LABEL_119;
        }

        v136 = &v126[v124[8]];
        v137 = 16 * (v135 >> 4);
        while (*v136 != v125)
        {
          v136 += 16;
          v137 -= 16;
          if (!v137)
          {
            goto LABEL_119;
          }
        }
      }
    }

    v138 = *(v98 + 56);
    v115 = *(v98 + 48);
    v139 = *(v98 + 32);
    v3 = v215;
    if (*(v98 + 64) >= 1)
    {
      swift_arrayDestroy();
    }

    v13 = v247;
    v17 = v253;
    v99 = v204;
LABEL_147:
    ecs_stack_allocator_deallocate(v139, v115, 48 * v138);
    *(v98 + 48) = v235;
    *(v98 + 64) = v230;
    *(v98 + 80) = v225;
    sub_1AF62D29C(v240);
    v100 = v207;
    ecs_stack_allocator_pop_snapshot(v207);
    if (v99)
    {
      os_unfair_lock_unlock(*(v240 + 344));
      os_unfair_lock_unlock(*(v240 + 376));
    }

    v101 = v245 + 1;
    if (v245 + 1 != v214)
    {
      continue;
    }

    break;
  }

  sub_1AF0D9DB0(v380, &qword_1ED725EA0);
  sub_1AFB3F8A4(v273, &qword_1EB641FE8);
  sub_1AF0D9DB0(v380, &qword_1ED725EA0);
  v7 = v201;
LABEL_156:
  sub_1AF3CF3A4(v3, v384);
  v147 = v385;
  if (v385 == 2)
  {
    goto LABEL_172;
  }

  sub_1AF3CB0C0(v3, &v330);
  if (!*(&v333 + 1))
  {
    swift_bridgeObjectRelease_n();
    sub_1AF0D9DB0(&v330, &qword_1ED722AC0);
    return;
  }

  sub_1AF9FA090(&v330, v336);
  if ((v147 & 1) == 0)
  {
    sub_1AF58D38C(v336);
LABEL_172:
    swift_bridgeObjectRelease_n();
    return;
  }

  if (v340 != 1)
  {
    v163 = sub_1AF67DEF4(v3, v7);
    v257 = 0u;
    v258[0] = 0u;
    vfx_uniform_grid_get_aabb(*(v163 + 16), v258, &v257);
    v165 = v257;
    v164 = v258[0];
    v164.i32[3] = 1.0;
    v165.i32[3] = 1.0;
    v166.i64[0] = 0x3F0000003F000000;
    v166.i64[1] = 0x3F0000003F000000;
    v256 = vmulq_f32(vaddq_f32(v164, v165), v166);
    v249 = vmulq_f32(vsubq_f32(v165, v164), v166);
    v167 = sub_1AFB3CAA4(255, 128, 0);
    v330 = v256;
    v331 = v249;
    v335 = 6;
    ecs_stack_allocator_push_snapshot(*(v250 + 32));
    v168 = *(v13 + 16);
    v169 = 2 * v168;
    v170 = ecs_stack_allocator_allocate(*(v250 + 32), 16 * v168 + 32, 8);
    *v170 = &type metadata for DebugInfoWireframePrimitive;
    v170[1] = &off_1F25604A8;
    v170[2] = &type metadata for DebugInfoColor;
    v170[3] = &off_1F2560488;
    if (v168)
    {
      if (v168 > 5 && ((v170 + 4) >= v13 + v169 * 8 + 32 || v202 >= &v170[v169 + 4]))
      {
        v171 = v168 & 0x7FFFFFFFFFFFFFFCLL;
        v172 = v168 & 0x7FFFFFFFFFFFFFFCLL | 2;
        v189 = v170 + 8;
        v190 = (v13 + 64);
        v191 = v168 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v193 = *(v190 - 2);
          v192 = *(v190 - 1);
          v195 = *v190;
          v194 = v190[1];
          v190 += 4;
          *(v189 - 2) = v193;
          *(v189 - 1) = v192;
          *v189 = v195;
          v189[1] = v194;
          v189 += 4;
          v191 -= 4;
        }

        while (v191);
        if (v168 == v171)
        {
          goto LABEL_185;
        }
      }

      else
      {
        v171 = 0;
        v172 = 2;
      }

      v173 = v168 - v171;
      v174 = (v13 + 16 * v171 + 32);
      do
      {
        v175 = *v174++;
        *&v170[2 * v172++] = v175;
        --v173;
      }

      while (v173);
    }

    else
    {
      v172 = 2;
    }

LABEL_185:
    LOBYTE(aBlock) = 1;
    sub_1AF63C898(v170, v172, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v250, &v330, v167);
    ecs_stack_allocator_pop_snapshot(*(v250 + 32));

    v176 = *(v163 + 16);
    v177 = swift_allocObject();
    *(v177 + 16) = v250;
    *(v177 + 24) = v13;
    v178 = swift_allocObject();
    *(v178 + 16) = sub_1AFB3F85C;
    *(v178 + 24) = v177;
    *&v388 = sub_1AFB3F864;
    *(&v388 + 1) = v178;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v387 = sub_1AFB322C0;
    *(&v387 + 1) = &unk_1F24E6208;
    v179 = _Block_copy(&aBlock);

    vfx_uniform_grid_for_each_cell(v176, v179, v180, v181);
    _Block_release(v179);

    sub_1AF58D38C(v336);
    swift_isEscapingClosureAtFileLocation();

    return;
  }

  v149 = v342;
  v150.i64[0] = 0;
  v150.i32[2] = 0;
  if ((BYTE1(v337) & 1) == 0)
  {
    v254 = v342;
    sub_1AF3C9244(v3, &aBlock);
    v149 = v254;
    v150 = v389;
  }

  *v148.i8 = vshr_n_u32(*v149.i8, 1uLL);
  v151 = vcvt_f32_u32(*v148.i8);
  v148.i32[2] = v149.i32[2] >> 1;
  v152 = vsubq_s32(v149, v148);
  *v152.f32 = vsub_f32(*v150.f32, vmul_n_f32(vcvt_f32_u32(*v152.f32), v341));
  *v150.f32 = vadd_f32(*v150.f32, vmul_n_f32(v151, v341));
  v152.f32[2] = v150.f32[2] - (v341 * v152.u32[2]);
  v152.i32[3] = 1.0;
  v150.f32[2] = v150.f32[2] + (v341 * (v149.i32[2] >> 1));
  v150.i32[3] = 1.0;
  v153.i64[0] = 0x3F0000003F000000;
  v153.i64[1] = 0x3F0000003F000000;
  v255 = vmulq_f32(vaddq_f32(v150, v152), v153);
  v248 = vmulq_f32(vsubq_f32(v150, v152), v153);
  v154 = sub_1AFB3CAA4(255, 255, 255);
  v330 = v255;
  v331 = v248;
  v335 = 6;
  ecs_stack_allocator_push_snapshot(*(v250 + 32));
  v155 = *(v13 + 16);
  v156 = 2 * v155;
  v157 = ecs_stack_allocator_allocate(*(v250 + 32), 16 * v155 + 32, 8);
  *v157 = &type metadata for DebugInfoWireframePrimitive;
  v157[1] = &off_1F25604A8;
  v157[2] = &type metadata for DebugInfoColor;
  v157[3] = &off_1F2560488;
  if (v155)
  {
    if (v155 <= 5 || (v157 + 4) < v13 + v156 * 8 + 32 && v202 < &v157[v156 + 4])
    {
      v158 = 0;
      v159 = 2;
      goto LABEL_167;
    }

    v158 = v155 & 0x7FFFFFFFFFFFFFFCLL;
    v159 = v155 & 0x7FFFFFFFFFFFFFFCLL | 2;
    v182 = v157 + 8;
    v183 = (v13 + 64);
    v184 = v155 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v186 = *(v183 - 2);
      v185 = *(v183 - 1);
      v188 = *v183;
      v187 = v183[1];
      v183 += 4;
      *(v182 - 2) = v186;
      *(v182 - 1) = v185;
      *v182 = v188;
      v182[1] = v187;
      v182 += 4;
      v184 -= 4;
    }

    while (v184);
    if (v155 != v158)
    {
LABEL_167:
      v160 = v155 - v158;
      v161 = (v13 + 16 * v158 + 32);
      do
      {
        v162 = *v161++;
        *&v157[2 * v159++] = v162;
        --v160;
      }

      while (v160);
    }
  }

  else
  {
    v159 = 2;
  }

  LOBYTE(v258[0]) = 1;
  sub_1AF63C898(v157, v159, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v250, &v330, v154);
  ecs_stack_allocator_pop_snapshot(*(v250 + 32));

  sub_1AF58D38C(v336);
}

uint64_t sub_1AFB3F88C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AFB3F8A4(uint64_t a1, unint64_t *a2)
{
  sub_1AF5DD590(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB3F900()
{
  if (!qword_1EB642A10)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642A10);
    }
  }
}

void sub_1AFB3F97C()
{
  if (!qword_1EB642A28)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642A28);
    }
  }
}

void sub_1AFB3F9F8()
{
  if (!qword_1EB642A30)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642A30);
    }
  }
}

void sub_1AFB3FA74()
{
  if (!qword_1EB642A38)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642A38);
    }
  }
}

void sub_1AFB3FAF0()
{
  if (!qword_1EB642A40)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642A40);
    }
  }
}

_DWORD *initializeBufferWithCopyOfBuffer for DebugDrawingState(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DebugDrawingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
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

uint64_t storeEnumTagSinglePayload for DebugDrawingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for DebugDrawSystemState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t assignWithTake for DebugDrawSystemState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for DebugCullingSystemState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DebugCullingSystemState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for DebugCullingSystemState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DebugInfoState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1AFB3FEC8()
{
  result = qword_1EB642A60;
  if (!qword_1EB642A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642A60);
  }

  return result;
}

void sub_1AFB3FF1C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1AFDFE9A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AFB3FF7C()
{
  result = qword_1EB642A70;
  if (!qword_1EB642A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642A70);
  }

  return result;
}

uint64_t sub_1AFB3FFF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 97))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 96);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AFB40038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AFB40098(uint64_t a1)
{
  if (*(a1 + 96) <= 0xBu)
  {
    return *(a1 + 96);
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t sub_1AFB400B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    LOBYTE(a2) = 12;
    *(result + 88) = 0;
  }

  *(result + 96) = a2;
  return result;
}

unint64_t sub_1AFB400F8()
{
  result = qword_1EB642A78;
  if (!qword_1EB642A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642A78);
  }

  return result;
}

unint64_t sub_1AFB40150()
{
  result = qword_1EB642A80;
  if (!qword_1EB642A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642A80);
  }

  return result;
}

unint64_t sub_1AFB401A8()
{
  result = qword_1EB642A88;
  if (!qword_1EB642A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642A88);
  }

  return result;
}

unint64_t sub_1AFB40200()
{
  result = qword_1EB642A90;
  if (!qword_1EB642A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642A90);
  }

  return result;
}

unint64_t sub_1AFB40268()
{
  result = qword_1EB642A98;
  if (!qword_1EB642A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642A98);
  }

  return result;
}

void sub_1AFB40308(uint64_t a1, uint64_t a2)
{
  if (!a2 || (*(a2 + 392) & 1) != 0)
  {
    return;
  }

  v3 = *(a2 + 200);
  if (*(v3 + 24) == 2)
  {
    goto LABEL_31;
  }

  v4 = *(v3 + 32);
  sub_1AFB4168C(0, &unk_1EB6327C8, sub_1AFB415F4, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  sub_1AF0D879C(v123);
  v6 = v123[0];

  v7 = sub_1AF750DEC(v6, *(&v6 + 1), 0, 0, 0, 1, 1);
  sub_1AF0D8F38(v123);

  v85 = v7;
  v5[4] = v7;
  v5[5] = 0;
  sub_1AF0D879C(v124);
  v8 = v124[0];

  v9 = sub_1AF750DEC(v8, *(&v8 + 1), 0, 0, 0, 1, 1);
  sub_1AF0D8F38(v124);

  v84 = v9;
  v5[6] = v9;
  v5[7] = 3;
  sub_1AF0D879C(v125);
  v10 = v125[0];

  v11 = sub_1AF750DEC(v10, *(&v10 + 1), 0, 0, 0, 1, 1);
  sub_1AF0D8F38(v125);

  v82 = v11;
  v5[8] = v11;
  v5[9] = 1;
  sub_1AF0D879C(v126);
  v12 = v126[0];

  v13 = sub_1AF750DEC(v12, *(&v12 + 1), 0, 0, 0, 1, 1);
  sub_1AF0D8F38(v126);

  v5[10] = v13;
  v5[11] = 2;
  if (!v5[4] || !v5[6] || !v5[8] || !v13)
  {
    goto LABEL_19;
  }

  v80 = v4;
  sub_1AF0D879C(&v127);
  v14 = v127;

  v15 = sub_1AF750DEC(v14, *(&v14 + 1), 0, 0, 0, 1, 1);

  v81 = v13;
  if (v15)
  {
    sub_1AF0D8F38(&v127);
    goto LABEL_16;
  }

  v16 = v132;
  v17 = 32;
  if (!v132)
  {
    v17 = 1;
  }

  if (v133)
  {
    v16 = v17;
  }

  v185 = v130;
  v186 = v131;
  v187 = v130;
  v188 = v131;
  v189 = v128;
  v190 = v16;
  v191 = v129;
  v192 = 0u;
  v193 = 0u;
  v18 = *(v3 + 16);
  v19 = v18[38];
  *&__dst[80] = v18[39];
  *&__dst[64] = v19;
  v20 = v18[36];
  *&__dst[48] = v18[37];
  *&__dst[32] = v20;
  v21 = v18[41];
  *&__dst[128] = v18[42];
  v22 = v18[40];
  *&__dst[112] = v21;
  *&__dst[96] = v22;
  v23 = v18[35];
  *__dst = v18[34];
  *&__dst[16] = v23;
  *&__dst[137] = *(v18 + 681);

  if (sub_1AF448314(__dst) == 1)
  {
LABEL_31:
    while (1)
    {
      sub_1AFDFE518();
      __break(1u);
    }
  }

  v24 = *&__dst[8];
  ObjectType = swift_getObjectType();
  v26 = *(v24 + 80);
  swift_unknownObjectRetain();
  v27 = v26(ObjectType, v24);
  v29 = v28;

  swift_unknownObjectRelease();
  v30 = sub_1AFBE973C(0, 2, v27, v29);
  v32 = v31;
  v34 = v33;

  v15 = sub_1AF750DEC(v14, *(&v14 + 1), v30, v32, v34, 0, 1);
  sub_1AF0D8F38(&v127);

  if (!v15)
  {
LABEL_19:

    swift_setDeallocating();
    sub_1AFB415F4();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return;
  }

LABEL_16:
  sub_1AF0D879C(v134);
  v35 = v134[0];

  v36 = sub_1AF750DEC(v35, *(&v35 + 1), 0, 0, 0, 1, 1);
  sub_1AF0D8F38(v134);

  if (!v36)
  {
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v37 = objc_allocWithZone(MEMORY[0x1E6974128]);
  swift_unknownObjectRetain();
  v38 = [v37 init];
  v39 = [v38 colorAttachments];
  v40 = [v39 objectAtIndexedSubscript_];

  [v40 setTexture_];
  [v40 setLoadAction_];
  [v40 setStoreAction_];
  [v40 setClearColor_];
  [v40 setLevel_];
  swift_unknownObjectRelease();

  v41 = [v38 depthAttachment];
  swift_unknownObjectRetain();
  [v41 setTexture_];
  [v41 setLoadAction_];
  [v41 setStoreAction_];
  [v41 setClearDepth_];
  [v41 setLevel_];

  sub_1AF474EC4();
  sub_1AFDFE238();

  sub_1AF7180FC();

  v42 = sub_1AF6F3D60(v38, 0, 0);
  sub_1AF709E8C(v42);

  swift_getObjectType();
  [v42 setFragmentTexture:v85 atIndex:0];
  [v42 &selRef:v84 setFogDensityExponent:3 + 1];
  [v42 &selRef:v82 setFogDensityExponent:1 + 1];
  swift_setDeallocating();
  sub_1AFB415F4();
  swift_unknownObjectRetain();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  [v42 setFragmentTexture:v81 atIndex:2];
  swift_unknownObjectRelease();
  sub_1AF6F3428(v36, 9);
  swift_unknownObjectRelease();
  sub_1AFB19490(a1, a2);

  sub_1AF5FCB40(v121);

  if (v121[0] == 1)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    v43 = v38;
    v44 = v122;
    sub_1AF88DCAC();
    v45 = swift_allocObject();
    v108 = 0;
    *(v45 + 16) = xmmword_1AFE4C6A0;
    *(v45 + 32) = xmmword_1AFE9B2C0;
    *(v45 + 48) = 0;
    v79 = v44 & 1;
    *(v45 + 64) = v44 & 1;
    *(v45 + 128) = 13;
    v113 = 0;
    *(v45 + 144) = xmmword_1AFE9B2D0;
    *(v45 + 160) = 0;
    *(v45 + 176) = 0;
    *(v45 + 240) = 13;
    v46 = *(a2 + 456);
    v114 = 0;
    *(v45 + 256) = xmmword_1AFE9B2E0;
    *(v45 + 272) = 0;
    *(v45 + 288) = v46;
    *(v45 + 352) = 13;
    v115 = 0;
    *(v45 + 368) = xmmword_1AFE9B2F0;
    *(v45 + 384) = 0;
    *(v45 + 400) = (v80 & 0x10000) == 0;
    *(v45 + 464) = 13;
    v120 = 0;
    *(v45 + 480) = xmmword_1AFE9B300;
    *(v45 + 496) = 0;
    *(v45 + 512) = 0;
    *(v45 + 576) = 14;
    sub_1AF8989FC(0xD00000000000001BLL, 0x80000001AFF48940, 0xD000000000000017, 0x80000001AFF48960, v45, v135);

    v78 = OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare;
    v83 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    sub_1AF6021F8(v135, __dst);
    v86 = v43;
    sub_1AF474680(&v136);
    *&__src[64] = v135[8];
    *&__src[72] = v135[9];
    *&__src[32] = v135[4];
    *&__src[40] = v135[5];
    *&__src[48] = v135[6];
    *&__src[56] = v135[7];
    *__src = v135[0];
    *&__src[8] = v135[1];
    *&__src[16] = v135[2];
    *&__src[24] = v135[3];
    *&__src[112] = v139;
    *&__src[120] = v140;
    *&__src[128] = v141;
    *&__src[80] = v135[10];
    *&__src[88] = v136;
    *&__src[96] = v137;
    *&__src[104] = v138;
    sub_1AF5FF2F0(&v99);
    v101 = xmmword_1AFE68E40;
    v102 = xmmword_1AFE68E40;
    v99 = xmmword_1AFE68E40;
    v100 = xmmword_1AFE68E40;
    *&__src[132] = xmmword_1AFE68E40;
    *&__src[140] = xmmword_1AFE68E40;
    *&__src[148] = xmmword_1AFE68E40;
    *&__src[156] = xmmword_1AFE68E40;
    sub_1AFDFF308();
    sub_1AF6021F8(v135, __dst);
    sub_1AF89747C(v98);
    sub_1AF602254(v135);
    v47 = *(&v136 + 1);
    v48 = v137;
    v49 = v138;
    v50 = v139;
    MEMORY[0x1B271ACB0](v136);
    MEMORY[0x1B271ACB0](v47);
    MEMORY[0x1B271ACB0](v48);
    MEMORY[0x1B271ACB0](*(&v48 + 1));
    MEMORY[0x1B271ACB0](v49);
    MEMORY[0x1B271ACB0](*(&v49 + 1));
    MEMORY[0x1B271ACB0](v50);
    MEMORY[0x1B271ACB0](*(&v50 + 1));
    MEMORY[0x1B271ACB0](v140);
    MEMORY[0x1B271ACB0](*(&v140 + 1));
    sub_1AFDFF2A8();
    v181 = v99;
    v182 = v100;
    v183 = v101;
    v184 = v102;
    sub_1AF5FF304();
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](3);
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    v51 = sub_1AFDFF2E8();
    memcpy(__dst, __src, sizeof(__dst));
    v169 = 0;
    v168 = 0;
    v170 = 3;
    v171 = 0;
    v172 = 0;
    v173 = 2;
    v176 = 0;
    v174 = 0;
    v175 = 0;
    v177 = 257;
    v178 = v103;
    v179 = v104;
    v180 = v51;

    v52 = sub_1AF730058(__dst, 0);
    v54 = v53;
    v56 = v55;
    v57 = v55;

    if (v57)
    {
      sub_1AF6022A8(v52, v54, v56);
      sub_1AF602304(__dst);

      sub_1AF602254(v135);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      v58 = swift_unknownObjectRetain();
      sub_1AF6022A8(v58, v54, 0);
      if (*(a1 + v78) == 1)
      {
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1AFE4C6A0;
        *(v59 + 32) = xmmword_1AFE9B2C0;
        *(v59 + 48) = v108;
        *(v59 + 49) = *v107;
        *(v59 + 56) = *&v107[7];
        *(v59 + 64) = v79;
        v60 = *&__src[177];
        *(v59 + 65) = *&__src[169];
        *(v59 + 81) = v60;
        *(v59 + 97) = *v106;
        *(v59 + 112) = *&v106[15];
        *(v59 + 128) = 13;
        *(v59 + 144) = xmmword_1AFE9B2D0;
        *(v59 + 160) = v113;
        *(v59 + 161) = *v112;
        *(v59 + 168) = *&v112[7];
        *(v59 + 176) = 0;
        v61 = v110;
        *(v59 + 177) = v109;
        *(v59 + 193) = v61;
        *(v59 + 209) = *v111;
        *(v59 + 224) = *&v111[15];
        *(v59 + 240) = 13;
        v62 = *(a2 + 456);
        v96 = 0;
        *(v59 + 256) = xmmword_1AFE9B2E0;
        *(v59 + 272) = 0;
        *(v59 + 288) = v62;
        *(v59 + 352) = 13;
        v97 = 0;
        *(v59 + 368) = xmmword_1AFE9B2F0;
        *(v59 + 384) = 0;
        *(v59 + 400) = BYTE2(v80) & 1;
        *(v59 + 464) = 13;
        *(v59 + 480) = xmmword_1AFE9B300;
        *(v59 + 496) = 0;
        *(v59 + 504) = *&v119[7];
        *(v59 + 497) = *v119;
        *(v59 + 512) = 0;
        v63 = v116;
        v64 = v117;
        v65 = *v118;
        *(v59 + 560) = *&v118[12];
        *(v59 + 532) = v64;
        *(v59 + 548) = v65;
        *(v59 + 516) = v63;
        *(v59 + 576) = 14;
        sub_1AF8989FC(0xD00000000000001BLL, 0x80000001AFF48940, 0xD000000000000017, 0x80000001AFF48960, v59, v142);

        sub_1AF6021F8(v142, v149);
        sub_1AF474680(&v143);
        v95[7] = v142[7];
        v95[8] = v142[8];
        v95[9] = v142[9];
        v95[10] = v142[10];
        v95[3] = v142[3];
        v95[4] = v142[4];
        v95[5] = v142[5];
        v95[6] = v142[6];
        v95[0] = v142[0];
        v95[1] = v142[1];
        v95[2] = v142[2];
        v95[13] = v145;
        v95[14] = v146;
        v95[15] = v147;
        v95[11] = v143;
        *&v95[16] = v148;
        v95[12] = v144;
        sub_1AF5FF2F0(&v89);
        v91 = xmmword_1AFE68E40;
        v92 = xmmword_1AFE68E40;
        v89 = xmmword_1AFE68E40;
        v90 = xmmword_1AFE68E40;
        *(&v95[16] + 8) = xmmword_1AFE68E40;
        *(&v95[17] + 8) = xmmword_1AFE68E40;
        *(&v95[18] + 8) = xmmword_1AFE68E40;
        *(&v95[19] + 8) = xmmword_1AFE68E40;
        sub_1AFDFF308();
        sub_1AF6021F8(v142, v149);
        sub_1AF89747C(v88);
        sub_1AF602254(v142);
        v66 = *(&v143 + 1);
        v67 = v144;
        v68 = v145;
        v69 = v146;
        MEMORY[0x1B271ACB0](v143);
        MEMORY[0x1B271ACB0](v66);
        MEMORY[0x1B271ACB0](v67);
        MEMORY[0x1B271ACB0](*(&v67 + 1));
        MEMORY[0x1B271ACB0](v68);
        MEMORY[0x1B271ACB0](*(&v68 + 1));
        MEMORY[0x1B271ACB0](v69);
        MEMORY[0x1B271ACB0](*(&v69 + 1));
        MEMORY[0x1B271ACB0](v147);
        MEMORY[0x1B271ACB0](*(&v147 + 1));
        sub_1AFDFF2A8();
        v163 = v89;
        v164 = v90;
        v165 = v91;
        v166 = v92;
        sub_1AF5FF304();
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        MEMORY[0x1B271ACB0](3);
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        v70 = sub_1AFDFF2E8();
        memcpy(v149, v95, sizeof(v149));
        v151 = 0;
        v150 = 0;
        v152 = 3;
        v153 = 0;
        v154 = 0;
        v155 = 2;
        v158 = 0;
        v156 = 0;
        v157 = 0;
        v159 = 257;
        v160 = v93;
        v161 = v94;
        v162 = v70;

        v71 = sub_1AF730058(v149, 0);
        v73 = v72;
        v75 = v74;
        v76 = v74;
        sub_1AF602304(v149);
        sub_1AF602304(__dst);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        sub_1AF602254(v142);
        sub_1AF602254(v135);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v76)
        {
          v77 = v75;
        }

        else
        {
          v77 = 0;
        }

        sub_1AF6022A8(v71, v73, v77);
      }

      else
      {
        [v42 setDepthStencilState_];
        [v42 setRenderPipelineState_];
        sub_1AF6F5B7C(1);
        swift_unknownObjectRelease();
        sub_1AF602304(__dst);

        sub_1AF602254(v135);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1AFB415F4()
{
  if (!qword_1EB632A60)
  {
    sub_1AFB4168C(255, &qword_1EB632A70, sub_1AF6B7338, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB632A60);
    }
  }
}

void sub_1AFB4168C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1AFB416F0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, void *a8)
{
  v12 = result;
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v28 = *(result + 232);
    if (!*(v28 + 16))
    {
      return result;
    }

    v29 = *a2 & 0xE7FF5C45;
    *&v80[4] = *(a2 + 8);
    *&v80[20] = *(a2 + 24);
    *&v80[84] = *(a2 + 88);
    *&v80[68] = *(a2 + 72);
    *&v80[52] = *(a2 + 56);
    *&v80[36] = *(a2 + 40);
    v82 = v29;
    v84 = *&v80[16];
    v83 = *v80;
    *&v87[12] = *&v80[76];
    *v87 = *&v80[64];
    v86 = *&v80[48];
    v85 = *&v80[32];
    result = sub_1AF419A14(&v82);
    if ((v30 & 1) == 0)
    {
      return result;
    }

    v31 = (*(v28 + 56) + 24 * result);
    v13 = *v31;
    a4 = v31[1];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  ObjectType = swift_getObjectType();
  sub_1AF895668(a3);
  [a6 setRenderPipelineState_];
  [a6 setDepthStencilState_];
  if (*(v12 + 152))
  {
    v16 = *(v12 + 120) == 0;
  }

  else
  {
    v16 = *(v12 + 120);
  }

  [a6 setFrontFacingWinding_];
  [a6 setCullMode_];
  [a6 setTriangleFillMode_];
  if ((*(a7[1] + 24) & 8) != 0)
  {
    [a6 setDepthClipMode_];
  }

  [a6 setStencilFrontReferenceValue:*(v12 + 112) backReferenceValue:*(v12 + 116)];
  v17 = *(v12 + 320);
  *&v80[64] = *(v12 + 304);
  *&v80[80] = v17;
  v81 = *(v12 + 336);
  v18 = *(v12 + 256);
  *v80 = *(v12 + 240);
  *&v80[16] = v18;
  v19 = *(v12 + 288);
  if (*(v12 + 208) <= 0)
  {
    v20 = 3;
  }

  else
  {
    v20 = 26;
  }

  *&v80[32] = *(v12 + 272);
  *&v80[48] = v19;
  sub_1AF5FD904(v80, &v78);
  sub_1AFB488A0(v80, a6, a7, v20);
  sub_1AF5FD960(v80);
  v21 = *(v12 + 160);
  v22 = &qword_1EB63E000;
  if (v21)
  {
    v23 = *(v12 + 168);
    swift_unknownObjectRetain();
    [a6 setTessellationFactorBuffer:v21 offset:v23 instanceStride:0];
    swift_unknownObjectRelease();
    v25 = *(v12 + 80);
    v24 = *(v12 + 88);
    v26 = *(v12 + 32);
    if (v26)
    {
      v27 = *(v12 + 40);
      swift_unknownObjectRetain();
    }

    else
    {
      v27 = 0;
    }

    [a6 drawPatches:0 patchStart:v24 patchCount:v25 patchIndexBuffer:v26 patchIndexBufferOffset:v27 instanceCount:*(v12 + 96) baseInstance:*(v12 + 104)];
    goto LABEL_41;
  }

  v32 = *(v12 + 352);
  if (v32)
  {
    v33 = *(v12 + 360);
    v34 = *(v12 + 208);
    v35 = v34;
    if (v34 < 1)
    {
      v53 = *(v12 + 32);
      if (v53)
      {
        v54 = *(v12 + 40);
        v55 = *(v12 + 16);
        v56 = *(v12 + 48);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v57 = v55;
        v22 = &qword_1EB63E000;
        [a6 drawIndexedPrimitives:v57 indexType:v56 indexBuffer:v53 indexBufferOffset:v54 indirectBuffer:v32 indirectBufferOffset:v33];
        swift_unknownObjectRelease();
      }

      else
      {
        v66 = *(v12 + 16);
        swift_unknownObjectRetain();
        [a6 drawPrimitives:v66 indirectBuffer:v32 indirectBufferOffset:v33];
      }
    }

    else
    {
      v71 = *(v12 + 208);
      v36 = *(v12 + 192);
      v37 = v36;
      v38 = SDWORD1(v36);
      v39 = SDWORD2(v36);
      swift_unknownObjectRetain();
      v40 = v39;
      v22 = &qword_1EB63E000;
      sub_1AF4674F0(v37, v38, v40, &v78);
      v70 = v78;
      v41 = v79;
      sub_1AF4674F0(v35, SDWORD1(v71), SDWORD2(v71), &v78);
      v42 = v79;
      v43 = v78;
      v78 = v70;
      v79 = v41;
      v76 = v43;
      v77 = v42;
      [a6 drawMeshThreadgroupsWithIndirectBuffer:v32 indirectBufferOffset:v33 threadsPerObjectThreadgroup:&v78 threadsPerMeshThreadgroup:&v76];
    }

LABEL_41:
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v44 = *(v12 + 208);
  if (v44.i32[0] < 1)
  {
    if ((*(a2 + 1) & 0x20) != 0)
    {
      v58 = *(v12 + 64);
      if (v58)
      {
        v59 = *(v12 + 72);
        v60 = *(v12 + 48);
        v61 = 1;
        if (v60)
        {
          v61 = 2;
        }

        v62 = HIDWORD(v59) >> v61;
LABEL_33:
        sub_1AF6F5C4C(*(v12 + 16), v62, v60, v58, v59, *(v12 + 96), *(v12 + 88), *(v12 + 104));
        v63 = qword_1EB63E310;
        if (qword_1EB63E310 < 0x2540BE40ALL || !a8)
        {
          goto LABEL_43;
        }

        swift_getObjectType();
        v64 = *(v12 + 96) * *(v12 + 56);
        swift_unknownObjectRetain();
        [a8 setStatsVertexCount_];
        v65 = *(v12 + 16);
        if (v65 <= 1)
        {
          if (!v65)
          {
            goto LABEL_61;
          }

          if (v65 == 1)
          {
            v62 /= 2;
            goto LABEL_61;
          }
        }

        else
        {
          switch(v65)
          {
            case 2:
              --v62;
              goto LABEL_61;
            case 3:
              v62 /= 3;
              goto LABEL_61;
            case 4:
              v62 -= 2;
LABEL_61:
              [a8 setStatsPrimitiveCount_];
              swift_unknownObjectRelease();
              goto LABEL_42;
          }
        }

        v62 = 0;
        goto LABEL_61;
      }
    }

    v58 = *(v12 + 32);
    if (v58)
    {
      v60 = *(v12 + 48);
      v62 = *(v12 + 56);
      v59 = *(v12 + 40);
      goto LABEL_33;
    }

    [a6 drawPrimitives:*(v12 + 16) vertexStart:*(v12 + 88) vertexCount:*(v12 + 80) instanceCount:*(v12 + 96) baseInstance:*(v12 + 104)];
    v63 = qword_1EB63E310;
    if (qword_1EB63E310 < 0x2540BE40ALL || !a8)
    {
      goto LABEL_43;
    }

    swift_getObjectType();
    v67 = *(v12 + 96) * *(v12 + 80);
    swift_unknownObjectRetain();
    [a8 setStatsVertexCount_];
    v68 = *(v12 + 16);
    v69 = *(v12 + 80);
    if (v68 <= 1)
    {
      if (!v68)
      {
        goto LABEL_68;
      }

      if (v68 == 1)
      {
        v69 /= 2;
        goto LABEL_68;
      }
    }

    else
    {
      switch(v68)
      {
        case 2:
          --v69;
          goto LABEL_68;
        case 3:
          v69 /= 3;
          goto LABEL_68;
        case 4:
          v69 -= 2;
LABEL_68:
          [a8 setStatsPrimitiveCount_];
          swift_unknownObjectRelease();
          goto LABEL_42;
      }
    }

    v69 = 0;
    goto LABEL_68;
  }

  v45 = sub_1AF4770E0(*(v12 + 176), v44);
  v47 = v46;
  v49 = v48;
  sub_1AF4674F0(*(v12 + 192), HIDWORD(*(v12 + 192)), *(v12 + 200), &v78);
  v72 = v78;
  v50 = v79;
  sub_1AF4674F0(*(v12 + 208), HIDWORD(*(v12 + 208)), *(v12 + 216), &v78);
  v51 = v79;
  v52 = v78;
  *&v78 = v45;
  *(&v78 + 1) = v47;
  v79 = v49;
  v76 = v72;
  v77 = v50;
  v74 = v52;
  v75 = v51;
  [a6 drawMeshThreadgroups:&v78 threadsPerObjectThreadgroup:&v76 threadsPerMeshThreadgroup:&v74];
LABEL_42:
  v63 = v22[98];
LABEL_43:
  if (v63 >= 0x2540BE40ALL)
  {
    if (a8)
    {
      [a8 setStatsDrawcallCount_];
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void *sub_1AFB41EE8(uint64_t a1, __n128 a2)
{
  CFXBufferAllocatorPerFrameAllocateWithLength(v2, 16 * a1);
  v4 = v3;
  v6 = sub_1AF6F2CC8(v3, v5);
  if ((v8 & 1) == 0 && v6 && (v7 - v6 + 15) >= 0x1F)
  {
    v9 = (v7 - v6) / 16;
    do
    {
      *v6++ = a2;
      --v9;
    }

    while (v9);
  }

  return v4;
}

uint64_t sub_1AFB41F64(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 >> 62)
  {
    v7 = sub_1AFDFE108();
    v11 = sub_1AFDFE108();

    if (v11)
    {
      v12 = sub_1AFB48690(a1);

      v8 = (v12 + 4);
    }

    else
    {
      v8 = -8;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  [v4 useResources:v8 count:v7 usage:a2 stages:a3];

  return swift_unknownObjectRelease();
}

uint64_t sub_1AFB4204C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED725EC0 != -1)
  {
    v5 = a1;
    v6 = a2;
    swift_once();
    a2 = v6;
    a1 = v5;
  }

  v7 = qword_1ED73B5C0;
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = *(v2 + 184);

  sub_1AF6D655C(&_s21DrawCallEntityClassesVN, &off_1F2560C08, v3, sub_1AFB49D64);

  return v7;
}

uint64_t sub_1AFB42154(uint64_t result, char a2, char a3, char a4, void *a5, uint64_t a6, _BYTE *a7)
{
  v46 = result;
  if (a7)
  {
    v41 = a7[393];
    if ((v41 & 1) != 0 || (a7[395] & 1) != 0 || a7[396] == 1)
    {
      v11 = a5[11];
      v10 = a5[12];
      v12 = a5[13];
      v13 = a5[2];

      v14 = sub_1AF64B110(&type metadata for VFXDrawCallHandler, &off_1F253A170, v11, v10, v12, v13);
      v15 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v11, v10, v12, v13);
      if (a7[396])
      {
        v16 = 1065353216;
      }

      else
      {
        v16 = 0;
      }

      v42 = v16;
      v43 = a7[396] ^ 1;
      if ((v43 & 1) == 0 && (a2 & 1) == 0)
      {
        v17 = sub_1AF3C9C7C(v46);
        if ((v17 & 0x100000000) != 0)
        {
          v18 = 1065353216;
        }

        else
        {
          v18 = v17;
        }

        v42 = v18;
        v43 = 0;
      }

      v19 = a5[6];
      v20 = a5[7];
      v21 = v20 - v19;
      if (v20 == v19)
      {
      }

      else
      {
        v22 = HIDWORD(v46);
        if (a2)
        {
          v23 = -1;
        }

        else
        {
          v23 = v46;
        }

        if (a2)
        {
          LODWORD(v22) = 0;
        }

        v39 = v22;
        v40 = v23;
        v24 = v15 + 8 * v19;
        v25 = v14 + 56 * v19 + 24;
        do
        {
          v37 = *v24;
          v38 = *(*v24 + 338);
          *(v25 + 8) = a3 == 1;
          if (a4)
          {
            v26 = 0x6874706544584656;
            v27 = 0xED00006574697257;
          }

          else
          {
            v26 = *&aOpaque_7[8 * a3];
            v27 = qword_1AFE9BB70[a3];
          }

          *(v25 - 24) = v26;
          *(v25 - 16) = v27;

          *(v25 + 13) = (v38 & 4) != 0;
          *(v25 + 14) = *(v37 + 225);
          *(v25 + 16) = v40;
          *(v25 + 20) = v39;
          v28 = swift_allocObject();
          swift_weakInit();
          v29 = swift_allocObject();
          swift_weakInit();
          v30 = swift_allocObject();
          *(v30 + 16) = v28;
          *(v30 + 24) = v29;
          *(v30 + 32) = v42;
          *(v30 + 36) = v43;
          *(v30 + 37) = a3;
          *(v30 + 38) = v41;
          *(v30 + 40) = v37;
          v31 = *(v25 - 8);
          *(v25 - 8) = sub_1AFB49AF0;
          *v25 = v30;

          v32 = sub_1AF0FB8EC(v31);
          MEMORY[0x1EEE9AC00](v32, v33);
          v34 = *(a6 + 184);
          MEMORY[0x1EEE9AC00](v35, v36);

          sub_1AF6D2ADC(&type metadata for DrawCallPool, &off_1F25608D0, v34, sub_1AFB49B48);

          v24 += 8;
          v25 += 56;
          --v21;
        }

        while (v21);
      }
    }
  }

  return result;
}

uint64_t sub_1AFB42518()
{
  swift_getTupleTypeMetadata2();

  return sub_1AFDFD4C8();
}

double sub_1AFB4256C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v24 - v15;
  v18 = *(a1 + *(v17 + 48));
  v25 = *a2;
  v19 = *(v6 - 8);
  (*(v19 + 32))(&v24 - v15, a1, v6, v14);
  *&v16[*(TupleTypeMetadata2 + 48)] = v18;
  (*(v8 + 16))(v11, v16, TupleTypeMetadata2);
  v20 = *&v11[*(TupleTypeMetadata2 + 48)];
  sub_1AFDFD538();
  sub_1AFDFD468();
  v21 = *v3;
  sub_1AFB49794();
  (*(v8 + 8))(v16, TupleTypeMetadata2);
  v22 = v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25;
  (*(v19 + 40))(v22, v11, v6);
  *(v22 + *(TupleTypeMetadata2 + 48)) = v20;
  return nullsub_106();
}

void (*sub_1AFB42774(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getTupleTypeMetadata2();
  sub_1AFDFD538();
  *(v3 + 32) = sub_1AFDFD588();
  return sub_1AF0D9C58;
}

void (*sub_1AFB42870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1AFD556C8(v8, a2, a3, a4);
  return sub_1AF62A6F0;
}

uint64_t sub_1AFB42980()
{
  swift_getWitnessTable();

  return sub_1AFDFD808();
}

uint64_t sub_1AFB42A08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFB42518();
  *a1 = result;
  return result;
}

void (*sub_1AFB42A3C(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v4 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v6 = *(TupleTypeMetadata2 - 8);
  a1[1] = v6;
  v7 = *(v6 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
    a1[2] = v8;
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
    a1[2] = v8;
    v9 = malloc(v7);
  }

  v10 = v9;
  a1[3] = v9;
  sub_1AFDFD598();
  v11 = *(v10 + *(TupleTypeMetadata2 + 48));
  (*(*(v4 - 8) + 32))(v8, v10, v4);
  *(v8 + *(TupleTypeMetadata2 + 48)) = v11;
  return sub_1AFB42BA8;
}

void sub_1AFB42BA8(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  (*(a1[1] + 8))(v2, *a1);
  free(v1);

  free(v2);
}

uint64_t sub_1AFB42BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AFD55A94(a1, a2, WitnessTable, a3);
}

uint64_t sub_1AFB42C64()
{
  swift_getWitnessTable();

  return sub_1AFDFD828();
}

uint64_t sub_1AFB42CD4()
{
  swift_getWitnessTable();

  return sub_1AFDFD7F8();
}

uint64_t sub_1AFB42D5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t sub_1AFB42DD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AFB42E28()
{
  swift_getWitnessTable();
  v0 = sub_1AFD60D38();

  return v0;
}

uint64_t sub_1AFB42E84(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8[2] = a2;
  v2 = type metadata accessor for IndexedArray();
  WitnessTable = swift_getWitnessTable();
  v4 = MEMORY[0x1E69E6158];
  v9 = sub_1AF628B24(sub_1AFB49DEC, v8, v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v5);
  sub_1AFB49E28(0, &qword_1ED726C70, v4, MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v6 = sub_1AFDFCD98();

  return v6;
}

uint64_t sub_1AFB42F90@<X0>(void *a1@<X8>)
{
  MEMORY[0x1B2718AE0](91, 0xE100000000000000);
  swift_getTupleTypeMetadata2();
  v2 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v2);

  MEMORY[0x1B2718AE0](540876893, 0xE400000000000000);
  result = sub_1AFDFEDD8();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1AFB43084(uint64_t a1)
{
  v2 = sub_1AFDFF348();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFB49D88(0, &qword_1EB63D800, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v13 - v9;
  v13[1] = a1;
  v13[0] = MEMORY[0x1E69E7CC0];
  v11 = sub_1AFDFF328();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for IndexedArray();
  sub_1AFB49D88(0, &qword_1EB63D808, sub_1AF6F3144, MEMORY[0x1E69E62F8]);
  sub_1AF6F3204();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);

  return sub_1AFDFF368();
}

uint64_t sub_1AFB432C0(uint64_t a1)
{
  v2 = sub_1AFB4A210();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB432FC(uint64_t a1)
{
  v2 = sub_1AFB4A210();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB43338@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1AFB4A264(0, &qword_1EB642AE8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB4A210();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v11 = sub_1AFDFE798();
  (*(v7 + 8))(v10, v6);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_1AFB434C0(void *a1)
{
  sub_1AFB4A264(0, &qword_1EB642AF8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB4A210();
  sub_1AFDFF3F8();
  sub_1AFDFE948();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AFB43608@<X0>(void *a1@<X8>)
{
  if (qword_1ED723778 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ED73B3A0;
}

uint64_t sub_1AFB43678(uint64_t a1)
{
  v2 = *(v1 + 232);
  if (!*(v2 + 16))
  {
    return 0;
  }

  *&v7[4] = *(a1 + 8);
  *&v7[20] = *(a1 + 24);
  *&v7[84] = *(a1 + 88);
  *&v7[68] = *(a1 + 72);
  *&v7[52] = *(a1 + 56);
  *&v7[36] = *(a1 + 40);
  v8 = *a1 & 0xE7FF5C45;
  v10 = *&v7[16];
  v9 = *v7;
  *&v13[12] = *&v7[76];
  *v13 = *&v7[64];
  v12 = *&v7[48];
  v11 = *&v7[32];
  v3 = sub_1AF419A14(&v8);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 24 * v3);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v5;
}

uint64_t sub_1AFB43774()
{
  type metadata accessor for DrawCall();
  v0 = swift_allocObject();
  result = sub_1AFB43A28();
  qword_1ED73B3A0 = v0;
  return result;
}

__n128 sub_1AFB437B0(uint64_t a1)
{
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = *(a1 + 24);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = *(a1 + 48);
  *(v1 + 56) = *(a1 + 56);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = *(a1 + 80);
  *(v1 + 88) = *(a1 + 88);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 104) = *(a1 + 104);
  *(v1 + 112) = *(a1 + 112);
  *(v1 + 116) = *(a1 + 116);
  *(v1 + 120) = *(a1 + 120);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 136) = *(a1 + 136);
  *(v1 + 144) = *(a1 + 144);
  *(v1 + 152) = *(a1 + 152);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = *(a1 + 208);
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 232) = *(a1 + 232);

  v3 = *(a1 + 320);
  v13[4] = *(a1 + 304);
  v13[5] = v3;
  v13[6] = *(a1 + 336);
  v4 = *(a1 + 256);
  v13[0] = *(a1 + 240);
  v13[1] = v4;
  v5 = *(a1 + 288);
  v13[2] = *(a1 + 272);
  v13[3] = v5;
  v6 = *(v1 + 256);
  v14[0] = *(v1 + 240);
  v14[1] = v6;
  v7 = *(v1 + 272);
  v8 = *(v1 + 288);
  v9 = *(v1 + 336);
  v14[5] = *(v1 + 320);
  v14[6] = v9;
  v10 = *(v1 + 304);
  v14[3] = v8;
  v14[4] = v10;
  v14[2] = v7;
  memmove((v1 + 240), (a1 + 240), 0x70uLL);
  sub_1AF5FD904(v13, &v12);
  sub_1AF5FD960(v14);
  result = *(a1 + 352);
  *(v1 + 352) = result;
  return result;
}

uint64_t sub_1AFB43914()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AFB43A28()
{
  *(v0 + 16) = 3;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 232) = sub_1AF42C624(MEMORY[0x1E69E7CC0]);
  *(v0 + 240) = v1;
  *(v0 + 248) = v1;
  *(v0 + 256) = v1;
  *(v0 + 264) = v1;
  *(v0 + 272) = v1;
  *(v0 + 280) = v1;
  *(v0 + 288) = v1;
  *(v0 + 296) = v1;
  *(v0 + 304) = v1;
  *(v0 + 312) = v1;
  *(v0 + 320) = v1;
  *(v0 + 328) = v1;
  *(v0 + 336) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 344) = v1;
  *(v0 + 368) = 0xFFFFFFFFLL;
  return v0;
}

uint64_t sub_1AFB43AC4(uint64_t a1)
{
  result = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (*(v1 + 32) >> 6 > 2u)
  {
    v6 = *v1;
    sub_1AFB4967C(a1 + 40, &v15);
    if (v16)
    {
      sub_1AF0FBA54(&v15, v17);
      if (v5)
      {
        v7 = sub_1AF441150(v17, v17[3]);
        v8 = sub_1AF755FD0(v6, v4, v5, *v7);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
        return v8;
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
    }

    else
    {
      sub_1AFB4970C(&v15);
    }

    if (v6 > 4u)
    {
      if (v6 == 6 && v5)
      {
        if (v9 = 0xED000073746E6174, v10 = 0x736E6F4373736170, v4 == 0x736E6F4373736170) && v5 == 0xED000073746E6174 || (v10 = sub_1AFDFEE28(), (v10))
        {
          MEMORY[0x1EEE9AC00](v10, v9);
          v12 = *(v11 + 184);

          sub_1AF6D3DD4(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v12, sub_1AFB497DC);
          v14 = v13;

          return v14;
        }
      }
    }

    else if (v6 == 3 && v5)
    {
      if (v4 == 0x6E6F43746867696CLL && v5 == 0xEE0073746E617473 || (sub_1AFDFEE28() & 1) != 0)
      {
        return sub_1AF8956B8();
      }

      if (v4 == 0x74736E6F436C6269 && v5 == 0xEC00000073746E61 || (sub_1AFDFEE28() & 1) != 0)
      {
        return sub_1AF8957F8();
      }
    }

    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB43E18(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = a2;
  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      sub_1AF0D879C(&v29);
      v14 = *(&v29 + 1);
      v13 = v29;

      v5 = sub_1AF750DEC(v13, v14, 0, 0, 0, 1, 1);
      sub_1AF0D8F38(&v29);

      return v5;
    }

    if (HIDWORD(a2) || a2 != -1)
    {
      v6 = *a1;
      v7 = a1[1];

      v8 = sub_1AF8D93C8(v5, &v29, v6, v7);
      if (v8)
      {
        v9 = v8;

        return v9;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v29 = 0;
      *(&v29 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v29 = 0xD000000000000010;
      *(&v29 + 1) = 0x80000001AFF48BD0;
      v18 = sub_1AF3C9078(v5);
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v22 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v22);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        v18 = 0x5B64656D616E6E55;
        v20 = 0xE800000000000000;
      }

      MEMORY[0x1B2718AE0](v18, v20);

      v23 = v29;
      v24 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v26 = v24;
        swift_once();
        v24 = v26;
      }

      *&v29 = 0;
      sub_1AF0D4F18(v24, &v29, v23, *(&v23 + 1));
    }

    return 0;
  }

  if (!a5)
  {
    swift_unknownObjectRetain();
    return v5;
  }

  sub_1AFB4967C((a1 + 5), &v27);
  if (v28)
  {
    sub_1AF0FBA54(&v27, &v29);
    if (a4)
    {
      v12 = sub_1AF441150(&v29, v30);
      v5 = sub_1AF755E78(v5, a3, a4, *v12);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
      return v5;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
  }

  else
  {
    sub_1AFB4970C(&v27);
  }

  if (v5 > 2u)
  {
    if (v5 == 4)
    {
      return sub_1AF7181D8();
    }
  }

  else if (v5 == 2 && a4)
  {
    if (a3 == 0x65636E6169646172 && a4 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
    {
      v15 = sub_1AF8955C0();
      if (v15)
      {
        v17 = v15;
        v5 = v16;
        swift_unknownObjectRetain();
        sub_1AFB4979C(v17);
        return v5;
      }

      return 0;
    }

    if (a3 == 0x6E61696461727269 && a4 == 0xEA00000000006563 || (sub_1AFDFEE28() & 1) != 0)
    {
      v5 = sub_1AF8955C0();
      if (v5)
      {
        v21 = swift_unknownObjectRetain();
        sub_1AFB4979C(v21);
      }

      return v5;
    }
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AFB442D0(unsigned __int8 *a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 80);
  if (v6 && a1[32] >= 0xC0u)
  {
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    v9 = *a1;
    if (v9 > 4)
    {
      if (*a1 <= 6u && v9 == 6 && v8 && (v7 == 0x736E6F4373736170 && v8 == 0xED000073746E6174 || (sub_1AFDFEE28() & 1) != 0))
      {
        v10 = a3;
        v11 = v6;
        v12 = a2;
        v13 = 6;
        goto LABEL_25;
      }
    }

    else if (*a1 > 2u && v9 == 3 && v8)
    {
      if (v7 == 0x6E6F43746867696CLL && v8 == 0xEE0073746E617473 || (sub_1AFDFEE28() & 1) != 0)
      {
        v10 = a3;
        v11 = v6;
        v12 = a2;
        v13 = 4;
LABEL_25:

        sub_1AF22DB5C(v11, v12, v10, v13);
        return;
      }

      if (v7 == 0x74736E6F436C6269 && v8 == 0xEC00000073746E61 || (sub_1AFDFEE28() & 1) != 0)
      {
        v10 = a3;
        v11 = v6;
        v12 = a2;
        v13 = 5;
        goto LABEL_25;
      }
    }

    sub_1AFDFE518();
    __break(1u);
    return;
  }

  if (sub_1AFB43AC4(a4))
  {
    v15 = v14;
    v16 = swift_unknownObjectRetain();
    sub_1AF476BF4(v16, v15, a3, a2);

    swift_unknownObjectRelease();
  }

  else
  {

    sub_1AF476BF4(0, 0, a3, a2);
  }
}

void sub_1AFB445B8(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, uint64_t a6, uint64_t *a7)
{
  v12 = a7[10];
  if (v12)
  {
    v13 = a4 == 1;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v14 = sub_1AFB43E18(a7, a1, a2, a3, a4);
    if (v14)
    {
      sub_1AF476CE0(v14, a6, a5);

      swift_unknownObjectRelease();
    }

    else
    {

      sub_1AF476CE0(0, a6, a5);
    }

    return;
  }

  if (a1 > 2u)
  {
    if (a1 == 4)
    {
      v17 = a6;
      v18 = a5;
      v19 = 2;
      goto LABEL_21;
    }

LABEL_28:
    sub_1AFDFE518();
    __break(1u);
    return;
  }

  if (a1 != 2 || !a3)
  {
    goto LABEL_28;
  }

  if (a2 != 0x65636E6169646172 || a3 != 0xE800000000000000)
  {
    v15 = a7[10];
    v16 = sub_1AFDFEE28();
    v12 = v15;
    if ((v16 & 1) == 0)
    {
      if (a2 == 0x6E61696461727269 && a3 == 0xEA00000000006563 || (v20 = sub_1AFDFEE28(), v12 = v15, (v20 & 1) != 0))
      {
        v17 = a6;
        v18 = a5;
        v19 = 3;
        goto LABEL_21;
      }

      goto LABEL_28;
    }
  }

  v17 = a6;
  v18 = a5;
  v19 = 4;
LABEL_21:

  sub_1AF22DA94(v12, v18, v17, v19);
}

uint64_t sub_1AFB44848(char a1, char a2)
{
  v12 = *MEMORY[0x1E69E9840];
  sub_1AFB49D88(0, &qword_1ED72F7D0, sub_1AF47BC54, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for DrawCallComponent;
  *(inited + 40) = &off_1F2560850;
  *(inited + 48) = &type metadata for WorldAABB;
  *(inited + 56) = &off_1F2510410;
  if (a2)
  {
    inited = sub_1AF422C28(1, 3, 1, inited);
    *(inited + 16) = 3;
    *(inited + 64) = &type metadata for VFXDrawCallHandler;
    *(inited + 72) = &off_1F253A170;
  }

  sub_1AF5FD6BC(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  *(v5 + 56) = &type metadata for AnonymousEntity;
  *(v5 + 64) = &off_1F2532728;
  v6 = sub_1AF420E70(1, 2, 1, v5);
  v10 = &type metadata for DrawCallLayer;
  v11 = &off_1F2560C28;
  LOBYTE(v9) = a1;
  v6[2] = 2;
  sub_1AF0FBA54(&v9, (v6 + 9));
  v7 = sub_1AF65AF08(inited, v6);

  return v7;
}

uint64_t sub_1AFB44A24(uint64_t *a1, char a2, uint64_t *a3, uint64_t a4, _BYTE *a5)
{
  v9 = *a1;
  if (*(*a1 + 16) && (v10 = sub_1AF41B320(a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    if ((a5[393] & 1) != 0 || a5[395] == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a5[396];
    }

    v12 = sub_1AFB44848(a2, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    sub_1AF858DA8(v12, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v16;
  }

  *a3 = v12;
}

uint64_t sub_1AFB44B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 240);
  v6 = *(a2 + 240);
  v7 = v6[2];
  v8 = *(*(a1 + 32) + 16) + v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v6;
  if (!isUniquelyReferenced_nonNull_native || v8 > v6[3] >> 1)
  {
    if (v7 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    v6 = sub_1AF4249DC(isUniquelyReferenced_nonNull_native, v10, 0, v6);
  }

  *v5 = v6;
  v11 = *(*(a1 + 32) + 16);
  v31 = *(a1 + 32);

  if (v11)
  {
    v12 = (v31 + 32);
    v13 = 21;
    do
    {
      v16 = v12[1];
      v28 = *v12;
      v29 = v16;
      v30 = *(v12 + 32);
      v17 = *(a3 + 752);
      if (*(v17 + 16) && (v18 = sub_1AF41A8F8(&v28), (v19 & 1) != 0))
      {
        v20 = *(v17 + 56) + 40 * v18;
        v21 = *v20;
        v22 = *(v20 + 8) | (*(v20 + 16) << 32);
        v26[0] = v21;
        v26[1] = v22;
        v14 = v26;
        v15 = &v27;
      }

      else
      {
        v24[0] = v28;
        v24[1] = DWORD2(v28) | (v29 << 32);
        v14 = v24;
        v15 = &v25;
      }

      *v15 = 0;
      v15[1] = 0;
      *(v14 + 32) = 64;
      sub_1AF88BB90(v14, v13, 1);
      v12 = (v12 + 40);
      ++v13;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1AFB44C8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v47 = a3;
  v50 = result;
  if (*result)
  {
    v5 = *(*result + 40);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = a2;
      v53 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v46 = HIDWORD(a3);
      if (HIDWORD(a3))
      {
        v8 = 0;
      }

      else
      {
        v8 = a3 == -1;
      }

      v9 = v8;
      v51 = v9;
      v52 = a3;
      v48 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;

      v10 = 32;
      v49 = v5;
      while (1)
      {
        v55 = v10;
        v11 = (v5 + v10);
        v12 = *v11;
        v13 = v11[2];
        v58 = v11[1];
        v59 = v13;
        v57 = v12;
        v14 = v11[3];
        v15 = v11[4];
        v16 = v11[6];
        v62 = v11[5];
        v63 = v16;
        v60 = v14;
        v61 = v15;
        v17 = v11[7];
        v18 = v11[8];
        v19 = v11[10];
        v66 = v11[9];
        v67 = v19;
        v64 = v17;
        v65 = v18;
        if ((v51 & 1) != 0 || (v47 & 0x8000000000000000) != 0 || v47 >= v53[1])
        {
          goto LABEL_13;
        }

        if (*(*v53 + 12 * v52 + 8) == v46)
        {
          v31 = sub_1AF6E52F0(&v57, v56);
          v21 = v47;
          v20 = v46;
          goto LABEL_27;
        }

        if (v46 != 0xFFFFFFFF)
        {
LABEL_13:
          v20 = 0;
          v21 = -1;
          if ((*(&v58 + 1) & 0x8000000000000000) == 0)
          {
            v22 = *(v50 + 8);
            if (*(&v58 + 1) < *(v22 + 16))
            {
              v23 = v22 + 8 * *(&v58 + 1);
              v21 = *(v23 + 32);
              v20 = *(v23 + 36);
            }
          }

          if (v21 == -1 && !v20 || v21 < 0 || v53[1] <= v21 || *(*v53 + 12 * v21 + 8) != v20 && v20 != -1)
          {
            v54 = v6;
            v24 = *(v7 + 184);
            sub_1AF6E52F0(&v57, v56);

            os_unfair_recursive_lock_lock_with_options();
            v25 = sub_1AF6D2A6C(&type metadata for DefaultMaterialInstance);
            if (v26 == 2 || (v26 & 1) == 0)
            {
              os_unfair_recursive_lock_unlock();

              v56[0] = 0xFFFFFFFFLL;
            }

            else
            {
              v28 = v7;
              v29 = (*(v24 + 16) + v25);
              v30 = 32 * v27;
              os_unfair_lock_lock(*(*(v24 + 32) + 32 * v27 + 24));
              os_unfair_recursive_lock_unlock();
              v21 = *v29;
              v20 = v29[1];
              os_unfair_lock_unlock(*(*(v24 + 32) + v30 + 24));

              v56[0] = __PAIR64__(v20, v21);
              v7 = v28;
              if (v21 != -1 || v20)
              {
LABEL_26:
                v6 = v54;
                goto LABEL_27;
              }
            }

            sub_1AF892268();
            v34 = v33;
            type metadata accessor for RenderPipelineFactory();
            swift_allocObject();
            v35 = sub_1AF89DCA8(140);
            *(v35 + 88) = sub_1AF891C5C;
            *(v35 + 96) = 0;

            v36 = *(v7 + v48);
            v37 = *v36;
            v38 = *(*v36 + 32);

            ecs_stack_allocator_push_snapshot(v38);
            v39 = ecs_stack_allocator_allocate(*(v37 + 32), 32, 8);
            *v39 = &type metadata for Material;
            v39[1] = &off_1F253F848;
            v39[2] = &type metadata for Name;
            v39[3] = &off_1F2535068;
            v40 = sub_1AF635354(v39, 2, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v37, 0, v35, -1.0, 0, 1, 0xD000000000000018, 0x80000001AFF38800);
            if (v4)
            {

              result = ecs_stack_allocator_pop_snapshot(*(v37 + 32));
              __break(1u);
              return result;
            }

            v41 = v40;

            ecs_stack_allocator_pop_snapshot(*(v37 + 32));

            sub_1AF6879B0(v41, v7, v34);

            v56[0] = v41;
            MEMORY[0x1EEE9AC00](v42, v43);
            v44 = *(v7 + 184);

            sub_1AF6D655C(&type metadata for DefaultMaterialInstance, &off_1F253FC80, v44, sub_1AFB2E718);
            v4 = 0;

            v21 = v56[0];
            v20 = HIDWORD(v56[0]);
            v5 = v49;
            goto LABEL_26;
          }

          v31 = sub_1AF6E52F0(&v57, v56);
        }

        else
        {
          v31 = sub_1AF6E52F0(&v57, v56);
          v20 = -1;
          v21 = v47;
        }

LABEL_27:
        MEMORY[0x1EEE9AC00](v31, v32);
        if ((v21 != -1 || v20) && (v21 & 0x80000000) == 0 && v53[1] > v21)
        {
          v45 = (*v53 + 12 * v21);
          if (v20 == -1 || v45[2] == v20)
          {
            sub_1AFA020FC(*(*(v7 + 144) + 8 * *v45 + 32), *(v45 + 2), 240, sub_1AFB49E78);
          }
        }

        sub_1AF6E534C(&v57);
        v10 = v55 + 176;
        if (!--v6)
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFB45314(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, const void *a6, uint64_t a7, char a8, unint64_t a9, unint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, unint64_t a17)
{
  v120 = a6;
  v113 = a5;
  v124.n128_u64[0] = a9;
  if (qword_1ED725EC0 != -1)
  {
    v91 = a2;
    swift_once();
    a2 = v91;
  }

  v122 = a13;
  v119 = a12;
  v125.n128_u64[0] = a10;
  *&v127[0] = qword_1ED73B5C0;
  MEMORY[0x1EEE9AC00](qword_1ED73B5C0, a2);
  v112 = v23;
  LOBYTE(v98) = v23;
  v99 = v127;
  v100 = v24;
  v101 = a3;
  v114 = v24;
  v25 = *(v24 + 184);
  v109 = v26;

  sub_1AF6D655C(&_s21DrawCallEntityClassesVN, &off_1F2560C08, v25, sub_1AFB4A418);

  v123 = *&v127[0];
  v27 = CFXBufferAllocatorPerFrameAllocateWithBytes(*(a3 + 232), a4, 0x40uLL);
  v117 = v28;
  v118 = v27;
  v29 = *(a3 + 232);
  v121 = a4;
  if ((a8 & 1) != 0 || a7 < 1)
  {
    v32 = v29;
    __asm { FMOV            V0.4S, #1.0 }

    v38 = sub_1AFB41EE8(v113, _Q0);
    v115 = v39;
    v116 = v38;
  }

  else
  {
    v30 = CFXBufferAllocatorPerFrameAllocateWithBytes(v29, v120, 0x10uLL);
    v115 = v31;
    v116 = v30;
  }

  v120 = a16;
  v40 = *(v124.n128_u64[0] + 184);

  v41 = sub_1AF6D5AC8(&type metadata for DrawCallPool, &off_1F25608D0, v40);

  v42 = v122;
  if (v125.n128_u64[0])
  {
    swift_retain_n();
    v43 = v119;
    sub_1AFB44B0C(v119, v41, v125.n128_i64[0]);
    v111 = v17;
  }

  else
  {
    v111 = v17;
    v43 = v119;
  }

  v110 = a11;
  sub_1AFB499A4(v122, v41, 0);
  v45 = *(v43 + 16);
  v44 = *(v43 + 24);

  sub_1AFB49A68(a1, v45, v44, v41);

  v105 = *(a1 + 200);
  v41[8].i64[0] = v105;
  v104 = *(a1 + 192);
  v41[7].i64[1] = v104;
  v103 = *(a1 + 208);
  v41[14].i8[0] = v103;
  v102 = *(a1 + 210);
  v41[14].i8[1] = v102;
  v46 = *(a1 + 112);
  v144[4] = *(a1 + 96);
  v144[5] = v46;
  v144[6] = *(a1 + 128);
  v47 = *(a1 + 48);
  v144[0] = *(a1 + 32);
  v144[1] = v47;
  v48 = *(a1 + 80);
  v144[2] = *(a1 + 64);
  v144[3] = v48;
  v49 = sub_1AF894900(v144);
  v51 = HIDWORD(a17) & 1;
  v107 = v51;
  v108 = a17;
  v106 = a15;
  if (v112)
  {
    v41[6].i64[0] = 1;
    MEMORY[0x1EEE9AC00](v49, v50);
    v53 = v92;
    v92[2] = v121;
    v92[3] = v113;
    v92[4] = v42;
    v92[5] = v41;
    v93 = v118;
    v94 = v55;
    v95 = v54;
    *&v96 = 64;
    *(&v96 + 1) = v116;
    *&v97 = __PAIR64__(v56, v57);
    *(&v97 + 1) = 16;
    v98 = v114;
    v58 = v123;
    v99 = v124.n128_u64[0];
    v100 = v125.n128_u64[0];
    LOBYTE(v101) = v110;
    v59 = a17 | (v51 << 32);
    BYTE1(v101) = v60;
    v61 = sub_1AFB49EE0;
  }

  else
  {
    v41[6].i64[0] = a15;
    v142[0] = v118;
    v142[1] = v117;
    v142[2] = 0;
    v142[3] = 0;
    v143 = 64;
    sub_1AF88BB90(v142, 4, 0);
    v140[0] = v116;
    v140[1] = v115;
    v140[3] = 0;
    v140[2] = 0;
    v141 = 64;
    v62 = sub_1AF88BB90(v140, 5, 0);
    MEMORY[0x1EEE9AC00](v62, v63);
    v53 = &v93;
    v96 = v65;
    v97 = v64;
    v58 = v123;
    v98 = v41;
    v99 = v124.n128_u64[0];
    v100 = v125.n128_u64[0];
    LOWORD(v101) = v110;
    v59 = a17 | (v51 << 32);
    v61 = sub_1AFB49F2C;
    v52 = 1;
  }

  sub_1AF63291C(0, v58, 1, v59, v52, v61, v53, v120);
  v66 = *(a3 + 656);
  v132 = *(a3 + 640);
  v133 = v66;
  v134[0] = *(a3 + 672);
  *(v134 + 9) = *(a3 + 681);
  v67 = *(a3 + 592);
  v128 = *(a3 + 576);
  v129 = v67;
  v68 = *(a3 + 624);
  v130 = *(a3 + 608);
  v131 = v68;
  v69 = *(a3 + 560);
  v127[0] = *(a3 + 544);
  v127[1] = v69;
  if (sub_1AF448314(v127) == 1)
  {
    LODWORD(v101) = 0;
    v100 = 1347;
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v70 = v122;
    if (v128)
    {
      v71 = *(v124.n128_u64[0] + 184);

      v72 = sub_1AF6D5AC8(&type metadata for DrawCallPool, &off_1F25608D0, v71);

      v73 = v119;
      if (v125.n128_u64[0])
      {
        sub_1AFB44B0C(v119, v72, v125.n128_i64[0]);
      }

      sub_1AFB499A4(v70, v72, 0);
      v75 = *(v73 + 16);
      v74 = *(v73 + 24);

      sub_1AFB49A68(a1, v75, v74, v72);

      v76 = v105;
      v72[7].i64[1] = v104;
      v72[8].i64[0] = v76;
      v77 = v102;
      v72[14].i8[0] = v103;
      v72[14].i8[1] = v77;
      v78 = *(a1 + 112);
      v139[4] = *(a1 + 96);
      v139[5] = v78;
      v139[6] = *(a1 + 128);
      v79 = *(a1 + 48);
      v139[0] = *(a1 + 32);
      v139[1] = v79;
      v80 = *(a1 + 80);
      v139[2] = *(a1 + 64);
      v139[3] = v80;
      sub_1AF894900(v139);
      v72[6].i64[0] = v106;
      v137[0] = v118;
      v137[1] = v117;
      v137[2] = 0;
      v137[3] = 0;
      v138 = 64;
      sub_1AF88BB90(v137, 4, 0);
      v135[0] = v116;
      v135[1] = v115;
      v135[2] = 0;
      v135[3] = 0;
      v136 = 64;
      sub_1AF88BB90(v135, 5, 0);
      v126 = v109;
      MEMORY[0x1EEE9AC00](v109, v81);
      LOBYTE(v98) = 2;
      v99 = &v126;
      v100 = v114;
      v101 = a3;
      v82 = *(v114 + 184);

      sub_1AF6D655C(&_s21DrawCallEntityClassesVN, &off_1F2560C08, v82, sub_1AFB4A418);

      v83 = v126;
      v84 = *v121;
      v85 = v121[1];
      v86 = v121[2];
      v87 = *(v70 + 160);
      v88 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v121[3], v86, *(v70 + 144), 2), v85, *(v70 + 144), 1), *v121, COERCE_FLOAT(*(v70 + 144)));
      v88.i32[3] = HIDWORD(*(v70 + 144));
      v125 = v88;
      v89 = v87;
      v89.i32[1] = v87.i32[0];
      v89.i32[2] = v87.i32[0];
      v124 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v85), vuzp2q_s32(vdupq_lane_s32(*v87.i8, 1), v87)), v89, vabsq_f32(v84)), vzip2q_s32(vtrn1q_s32(v87, v87), v87), vabsq_f32(v86));

      sub_1AF63F65C(0, v83, 1, v108 | (v107 << 32), 1, v120, v72, v125, v124);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AFB45B80(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, __n128 a5, __n128 a6, uint64_t a7, char a8)
{
  v11 = a1[11];
  v12 = a1[12];
  v13 = a1[13];
  v14 = a1[2];
  v15 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v11, v12, v13, v14);
  v16 = sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, v11, v12, v13, v14);
  v17 = a1[6];
  v18 = (v16 + 32 * v17);
  *v18 = a5;
  v18[1] = a6;
  *(v15 + 8 * v17) = a2;

  return sub_1AFB42154(0, 1, a8, 0, a1, a3, a4);
}

uint64_t sub_1AFB45C74(void *a1, uint64_t a2, uint64_t a3, int32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _BYTE *a14, char a15, char a16)
{
  v20 = a1[11];
  v21 = a1[12];
  v22 = a1[13];
  v23 = a1[2];
  v59 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v20, v21, v22, v23);
  v24 = sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, v20, v21, v22, v23);
  v25 = a1[6];
  v26 = a1[7];
  v27 = v26 - v25;
  v48 = a1;
  if (v26 != v25)
  {
    v29 = a4[9];
    v28 = a4[10];
    v30 = v28;
    v30.i32[1] = v28.i32[0];
    v30.i32[2] = v28.i32[0];
    v55 = v30;
    v31 = a1[3];
    v53 = vzip2q_s32(vtrn1q_s32(v28, v28), v28);
    v54 = vuzp2q_s32(vdupq_lane_s32(*v28.i8, 1), v28);
    v51 = vdupq_lane_s32(*v29.i8, 1);
    v52 = vdupq_lane_s32(*v29.i8, 0);
    v50 = a5;
    v32 = (v24 + 32 * v25 + 16);
    v33 = (v59 + 8 * v25);
    v34 = (a2 + (v31 << 6) + 32);
    v35 = a7 - ((v31 * a8) << 32);
    v36 = a7 + v31 * a8;
    v56 = v29.i32[3];
    v49 = vdupq_laneq_s32(v29, 2);
    v37 = a10 - ((v31 * a11) << 32);
    v38 = a10 + v31 * a11;
    do
    {
      v60 = v33;
      v62 = v27;
      v39 = v34[-2];
      v40 = v34[-1];
      v41 = *v34;
      v42 = v34[1];
      v34 += 4;
      v43 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v42, v41, v49), v40, v51), v39, v52);
      v43.i32[3] = v56;
      v32[-1] = v43;
      *v32 = vmlaq_f32(vmlaq_f32(vmulq_f32(v54, vabsq_f32(v40)), v55, vabsq_f32(v39)), v53, vabsq_f32(v41));
      v65[0] = a6;
      v65[1] = v35 & 0xFFFFFFFF00000000 | v36;
      v65[2] = 0;
      v65[3] = 0;
      v66 = 64;
      sub_1AF88BB90(v65, 4, 0);
      v63[0] = a9;
      v63[1] = v37 & 0xFFFFFFFF00000000 | v38;
      v63[2] = 0;
      v63[3] = 0;
      v64 = 64;
      sub_1AF88BB90(v63, 5, 0);
      v44 = *(a12 + 184);

      v45 = v67;
      v46 = sub_1AF6D5AC8(&type metadata for DrawCallPool, &off_1F25608D0, v44);
      v67 = v45;

      sub_1AFB437B0(v50);
      *v60 = v46;
      v33 = v60 + 1;

      v32 += 2;
      v35 -= a8 << 32;
      v36 += a8;
      v37 -= a11 << 32;
      v38 += a11;
      v27 = v62 - 1;
    }

    while (v62 != 1);
  }

  return sub_1AFB42154(0, 1, a16, 0, v48, a13, a14);
}