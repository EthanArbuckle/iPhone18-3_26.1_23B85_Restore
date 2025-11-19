uint64_t sub_1AFA49B1C()
{
  sub_1AFDFF288();
  sub_1AF3D4DA8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA49B6C()
{
  sub_1AFDFF288();
  sub_1AF3D4DA8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA49BB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFA4A42C();
  *a1 = result;
  return result;
}

uint64_t sub_1AFA49BE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFA499CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AFA49C28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFA4A42C();
  *a1 = result;
  return result;
}

uint64_t sub_1AFA49C50(uint64_t a1)
{
  v2 = sub_1AFA4BC84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA49C8C(uint64_t a1)
{
  v2 = sub_1AFA4BC84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA49CC8(void *a1)
{
  v3 = v1;
  sub_1AFA4BD28(0, &qword_1EB6424E8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AFA4BC84();
  sub_1AFDFF3F8();
  LOBYTE(v13) = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 3;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 4;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 5;
    sub_1AFDFE8E8();
    LOBYTE(v13) = 6;
    sub_1AFDFE8C8();
    LOBYTE(v13) = 7;
    sub_1AFDFE8C8();
    v13 = *(v3 + 28);
    v14 = *(v3 + 36);
    v12[15] = 8;
    sub_1AFA4BCD8(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
    sub_1AFA4BD8C(&qword_1EB6424F0, sub_1AF480018);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AFA49F9C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA4A478(a1, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a2 = v6;
    *(a2 + 16) = v5;
    *(a2 + 29) = *&v7[13];
  }

  return result;
}

uint64_t sub_1AFA49FFC(uint64_t a1)
{
  v2 = *(a1 + 88);
  v62 = *(a1 + 72);
  v63 = v2;
  v3 = *(a1 + 120);
  v64 = *(a1 + 104);
  v65 = v3;
  v4 = *(a1 + 24);
  v59[0] = *(a1 + 8);
  v59[1] = v4;
  v5 = *(a1 + 56);
  v60 = *(a1 + 40);
  v61 = v5;
  sub_1AFA4A828(v59, *(a1 + 136), *(a1 + 144), v48);
  result = sub_1AFA4BC2C(v48);
  if (result != 1)
  {
    v7.columns[0] = v49;
    v7.columns[1] = v50;
    v7.columns[2] = v51;
    v7.columns[3] = v52;
    if (v48[0] == 1)
    {
      v36 = v58;
      v37 = v57;
      v8 = v57.f32[2];
      v9 = vmuls_lane_f32(v37.f32[2], v37, 2);
      v10 = vmuls_lane_f32(v9, v57, 2);
      v11 = v58.f32[2];
      v12 = vmuls_lane_f32(vmuls_lane_f32(v36.f32[2], v36, 2), v36, 2) - v10;
      v38.columns[0] = v49;
      v38.columns[1] = v50;
      v38.columns[2] = v51;
      v38.columns[3] = v52;
      v39 = __invert_f4(v7);
      v40 = v37;
      v41 = v36;
      v42 = 1.0 / (v11 - v8);
      v43 = -v8 / (v11 - v8);
      v44 = 1.0 / v12;
      v45 = -(v8 * v9) / v12;
      v46 = v10;
      v47 = v12;
      if (*a1)
      {
        ObjectType = swift_getObjectType();
        type metadata accessor for particle_wrap_around_camera_perspective_uniforms(0);
        sub_1AF6F4524(&v38, 1, ObjectType, v14, v15, v16, v17, v18);
      }

      v19 = v60;
      v20 = *(*&v59[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

      v21 = v20;

      MEMORY[0x1EEE9AC00](v22, v23);
      v24 = sub_1AFA09F2C;
      v25 = v19;
    }

    else
    {
      v66.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v50.f32[0]), v54, *v50.f32, 1), v55, v50, 2), v56, v50, 3);
      v66.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v51.f32[0]), v54, *v51.f32, 1), v55, v51, 2), v56, v51, 3);
      v66.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v49.f32[0]), v54, *v49.f32, 1), v55, v49, 2), v56, v49, 3);
      v66.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v52.f32[0]), v54, *v52.f32, 1), v55, v52, 2), v56, v52, 3);
      v38 = v66;
      v39 = __invert_f4(v66);
      if (*a1)
      {
        v26 = swift_getObjectType();
        type metadata accessor for particle_wrap_around_camera_orthographic_uniforms(0);
        sub_1AF6F4524(&v38, 1, v26, v27, v28, v29, v30, v31);
      }

      v32 = v60;
      v33 = *(*&v59[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

      v21 = v33;

      MEMORY[0x1EEE9AC00](v34, v35);
      v24 = sub_1AFA09E00;
      v25 = v32;
    }

    sub_1AFCBF008(v25, v24);
  }

  return result;
}

uint64_t sub_1AFA4A42C()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFA4A478@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA4BD28(0, &qword_1EB6424D0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - v9;
  v34 = 1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA4BC84();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  LOBYTE(v31) = 0;
  sub_1AFDFE738();
  v12 = v11;
  LOBYTE(v31) = 1;
  sub_1AFDFE738();
  v14 = v13;
  LOBYTE(v31) = 2;
  sub_1AFDFE738();
  v16 = v15;
  LOBYTE(v31) = 3;
  sub_1AFDFE738();
  v18 = v17;
  LOBYTE(v31) = 4;
  sub_1AFDFE738();
  v20 = v19;
  LOBYTE(v31) = 5;
  sub_1AFDFE738();
  v22 = v21;
  LOBYTE(v31) = 6;
  v24 = sub_1AFDFE718();
  LOBYTE(v31) = 7;
  v25 = sub_1AFDFE718();
  v33 = v25;
  v26 = a1[3];
  v27 = a1[4];
  sub_1AF441150(a1, v26);
  if (sub_1AF694FF8(1084, v26, v27))
  {
    sub_1AFA4BCD8(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
    v35 = 8;
    sub_1AFA4BD8C(&qword_1EB6424E0, sub_1AF47FEB4);
    sub_1AFDFE768();
    (*(v7 + 8))(v10, v6);
    v28 = v31;
    v34 = v32;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v28 = 0;
  }

  v29 = v33 & 1;
  v30 = v34;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v12;
  *(a2 + 4) = v14;
  *(a2 + 8) = v16;
  *(a2 + 12) = v18;
  *(a2 + 16) = v20;
  *(a2 + 20) = v22;
  *(a2 + 24) = v24 & 1;
  *(a2 + 25) = v29;
  *(a2 + 28) = v28;
  *(a2 + 36) = v30;
  return result;
}

__n128 sub_1AFA4A828@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);

  sub_1AF3CF050(v7, v114);

  v8 = v115;
  if (v115 == 2)
  {
    v8 = 0;
    v9 = 0.0;
    v90 = 1.0;
    v10 = 10.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
LABEL_6:
    v16 = sub_1AFB195A8(a2, a3);
    if ((v17 & 1) == 0)
    {
      v14 = v16;
      if (a3)
      {
        goto LABEL_8;
      }
    }

LABEL_18:
    sub_1AFA4BC48(&v103);
    goto LABEL_49;
  }

  v13 = *v114;
  v12 = *&v114[1];
  v11 = *&v114[2];
  v9 = *&v114[3];
  v10 = *&v114[5];
  v90 = *&v114[4];
  if (((v116 | (v117 << 32)) & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

  *(&v15 + 1) = v116;
  *&v15 = v115;
  v14 = v15 >> 32;
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_8:
  v18 = *(a3 + 104);
  if (*(v18 + 16))
  {
    v19 = *(v18 + 40);
    ObjectType = swift_getObjectType();

    swift_unknownObjectRetain();
    sub_1AF707EC4(ObjectType, v19);
    v22 = v21;
    swift_unknownObjectRelease();
  }

  else
  {

    v22 = 1.0;
  }

  sub_1AF3CEE78(v14, &v92);
  __asm { FMOV            V0.4S, #-1.0 }

  v85 = _Q0;
  if (v94.u8[0] != 2)
  {
    v31 = tanf(*&v92 * 0.5);
    if (v8)
    {
      v32 = v31;
    }

    else
    {
      v32 = v10 * v31;
    }

    v33 = -(v22 * v32) - v13;
    v34 = v12 + (v22 * v32);
    v35 = -v32 - v9;
    if (v8)
    {
      v36 = v11 + v31;
      v37 = v90;
      if (v90 >= 0.0001)
      {
        v38 = v90 + 0.0001;
        if (v10 <= (v90 + 0.0001))
        {
LABEL_34:
          *&v46 = 2.0 / (v34 - v33);
          *&v47 = (v33 + v34) / (v34 - v33);
          v48.i64[0] = 0;
          v48.i64[1] = v47;
          v49.i32[0] = 0;
          *&v49.i32[1] = 2.0 / (v36 - v35);
          v50 = vzip2q_s32(v48, v85);
          v49.i64[1] = COERCE_UNSIGNED_INT((v36 + v35) / (v36 - v35));
          v51 = vzip2q_s32(v49, xmmword_1AFE206C0);
          v89 = vzip2q_s32(v46, vzip1q_s32(v49.u64[0], 0));
          v91 = v46;
          v52 = vzip1q_s32(v50, v51);
          v53 = vzip2q_s32(v50, v51);
          if (fabsf(v38) == INFINITY)
          {
            v52.i32[2] = -1.0;
            v88 = v52;
            v54 = -v37;
          }

          else
          {
            *&v52.i32[2] = v38 / (v37 - v38);
            v88 = v52;
            v54 = (v38 * v37) / (v37 - v38);
          }

          *&v53.i32[2] = v54;
          v87 = v53;
          goto LABEL_45;
        }
      }

      else
      {
        v38 = 0.0002;
        v37 = 0.0001;
        if (v10 <= 0.0002)
        {
          goto LABEL_34;
        }
      }

      v38 = v10;
      goto LABEL_34;
    }

    v45 = v11 + (v10 * v31);
    v43 = v90;
    if (v90 >= -100000.0)
    {
      v44 = v90 + 0.0001;
      if (v10 <= (v90 + 0.0001))
      {
LABEL_41:
        v55 = 2.0 / (v34 - v33);
        v56 = (v33 + v34) / (v33 - v34);
        v57 = 2.0 / (v45 - v35);
        v58 = v45 + v35;
        v59 = v35 - v45;
        goto LABEL_42;
      }
    }

    else
    {
      v43 = -100000.0;
      v44 = -100000.0;
      if (v10 <= -100000.0)
      {
        goto LABEL_41;
      }
    }

    v44 = v10;
    goto LABEL_41;
  }

  v28 = sub_1AF3CEF50(v14);
  if ((v28 & 0xFF00000000) == 0x200000000)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v30 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v78 = v30;
      swift_once();
      v30 = v78;
    }

    *&v92 = 0;
    sub_1AF0D4F18(v30, &v92, 0xD00000000000001DLL, 0x80000001AFF44CE0);

    goto LABEL_18;
  }

  v39 = -*&v28 - v13;
  v40 = v12 + *&v28;
  v41 = -(*&v28 / v22) - v9;
  v42 = v11 + (*&v28 / v22);
  v43 = v90;
  if (v90 < -100000.0)
  {
    v43 = -100000.0;
    v44 = -100000.0;
    if (v10 <= -100000.0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v44 = v90 + 0.0001;
  if (v10 > (v90 + 0.0001))
  {
LABEL_37:
    v44 = v10;
  }

LABEL_38:
  v55 = 2.0 / (v40 - v39);
  v56 = (v39 + v40) / (v39 - v40);
  v57 = 2.0 / (v42 - v41);
  v58 = v42 + v41;
  v59 = v41 - v42;
LABEL_42:
  *v29.i32 = v43 - v44;
  __asm { FMOV            V4.2S, #1.0 }

  _D4.f32[1] = v43;
  *v61.i8 = vdiv_f32(_D4, vdup_lane_s32(v29, 0));
  v62.i64[0] = 0;
  v62.i32[2] = 0;
  *&v62.i32[3] = v56;
  v63.i32[0] = 0;
  v63.i32[2] = 0;
  *&v63.i32[1] = v57;
  v61.i64[1] = v61.i64[0];
  v64 = vzip2q_s32(v62, v61);
  *&v63.i32[3] = v58 / v59;
  v65 = vzip2q_s32(v63, xmmword_1AFE201A0);
  v89 = vzip2q_s32(LODWORD(v55), vzip1q_s32(v63.u64[0], 0));
  v91 = LODWORD(v55);
  v87 = vzip2q_s32(v64, v65);
  v88 = vzip1q_s32(v64, v65);
LABEL_45:
  sub_1AF3C9244(v14, &v118);
  if (v119)
  {
    *&v84[48] = xmmword_1AFE201A0;
    *&v84[32] = xmmword_1AFE20180;
    *&v84[16] = xmmword_1AFE20160;
    *v84 = xmmword_1AFE20150;
  }

  else
  {
    *v84 = __invert_f4(v118);
  }

  v120.columns[1] = v89;
  v120.columns[0] = v91;
  v120.columns[3] = v87;
  v120.columns[2] = v88;
  v121 = __invert_f4(v120);
  v66 = vaddq_f32(v121.columns[2], v121.columns[3]);
  v121.columns[3] = vmlaq_f32(vmlaq_f32(vmlaq_f32(v121.columns[3], 0, v121.columns[2]), v85, v121.columns[1]), v85, v121.columns[0]);
  v121.columns[2] = vdupq_laneq_s32(v121.columns[3], 3);
  v67 = vdupq_n_s32(0x322BCC77u);
  v83 = vdivq_f32(v121.columns[3], vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v121.columns[2], 0)), 0), v121.columns[2], v67));
  v68 = vmlaq_f32(vmlaq_f32(v66, v85, v121.columns[1]), v85, v121.columns[0]);
  v121.columns[0] = vdupq_laneq_s32(v68, 3);
  v86 = vdivq_f32(v68, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v121.columns[0], 0)), 0), v121.columns[0], v67));
  sub_1AFB948D8();
  v79 = v69;
  v80 = v70;
  v81 = v71;
  v82 = v72;

  LOBYTE(v92) = v8 & 1;
  v93 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v84, v79.f32[0]), *&v84[16], *v79.f32, 1), *&v84[32], v79, 2), *&v84[48], v79, 3);
  v94 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v84, v80.f32[0]), *&v84[16], *v80.f32, 1), *&v84[32], v80, 2), *&v84[48], v80, 3);
  v95 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v84, v81.f32[0]), *&v84[16], *v81.f32, 1), *&v84[32], v81, 2), *&v84[48], v81, 3);
  v96 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v84, v82.f32[0]), *&v84[16], *v82.f32, 1), *&v84[32], v82, 2), *&v84[48], v82, 3);
  v97 = v91;
  v98 = v89;
  v99 = v88;
  v100 = v87;
  v101 = v83;
  v102 = v86;
  nullsub_106();
  v111 = v100;
  v112 = v101;
  v113 = v102;
  v107 = v96;
  v108 = v97;
  v109 = v98;
  v110 = v99;
  v103 = v92;
  v104 = v93;
  v105 = v94;
  v106 = v95;
LABEL_49:
  v73 = v112;
  *(a4 + 128) = v111;
  *(a4 + 144) = v73;
  *(a4 + 160) = v113;
  v74 = v108;
  *(a4 + 64) = v107;
  *(a4 + 80) = v74;
  v75 = v110;
  *(a4 + 96) = v109;
  *(a4 + 112) = v75;
  v76 = v104;
  *a4 = v103;
  *(a4 + 16) = v76;
  result = v106;
  *(a4 + 32) = v105;
  *(a4 + 48) = result;
  return result;
}

uint64_t sub_1AFA4AF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;

  sub_1AFA4A828(a1, a2, a3, v164);
  if (sub_1AFA4BC2C(v164) == 1)
  {
  }

  v7.columns[0] = v165;
  v7.columns[1] = v166;
  v7.columns[2] = v167;
  v7.columns[3] = v168;
  if (v164[0] != 1)
  {
    v138 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v169, v166.f32[0]), v170, *v166.f32, 1), v171, v166, 2), v172, v166, 3);
    v140 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v169, v165.f32[0]), v170, *v165.f32, 1), v171, v165, 2), v172, v165, 3);
    v185.columns[0] = v140;
    v185.columns[1] = v138;
    v134 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v169, v168.f32[0]), v170, *v168.f32, 1), v171, v168, 2), v172, v168, 3);
    v136 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v169, v167.f32[0]), v170, *v167.f32, 1), v171, v167, 2), v172, v167, 3);
    v185.columns[2] = v136;
    v185.columns[3] = v134;
    v186 = __invert_f4(v185);
    v130 = v186.columns[1];
    v132 = v186.columns[0];
    v126 = v186.columns[3];
    v128 = v186.columns[2];
    v181 = *(a1 + 88);
    v182 = *(a1 + 104);
    v183 = *(a1 + 120);
    sub_1AF705094(2, &v157);
    v178 = v157;
    v179 = v158;
    v180 = v159;
    sub_1AF6B06C0(v6, &v178, 0x200000000, v160);
    if (*v160)
    {
      if (v163 > 0)
      {
        v124 = *(&v161 + 1);
        if (*(&v161 + 1))
        {
          v122 = *&v160[40];
          v71 = *(&v162 + 1);
          v147 = *(v162 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v143 = *(*(&v162 + 1) + 32);
          v175 = *v160;
          v176 = *&v160[8];
          v177 = *&v160[24];
          v153 = *&v160[32];
          v154 = v161;
          v155 = v162;
          v156 = v163;
          v151 = *v160;
          v152 = *&v160[16];
          sub_1AF5DD298(&v151, &v148);
          v72 = 0;
          do
          {
            v73 = (v122 + 48 * v72);
            v75 = *v73;
            v74 = v73[1];
            v77 = *(v73 + 2);
            v76 = *(v73 + 3);
            v79 = *(v73 + 4);
            v78 = *(v73 + 5);
            if (v147)
            {
              v80 = *(v78 + 376);

              os_unfair_lock_lock(v80);
              os_unfair_lock_lock(*(v78 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v143);
            v81 = *(v71 + 64);
            v148 = *(v71 + 48);
            v149 = v81;
            v150 = *(v71 + 80);
            v82 = *(*(*(*(v78 + 40) + 16) + 32) + 16) + 1;
            *(v71 + 48) = ecs_stack_allocator_allocate(*(v71 + 32), 48 * v82, 8);
            *(v71 + 56) = v82;
            *(v71 + 72) = 0;
            *(v71 + 80) = 0;
            *(v71 + 64) = 0;
            v83 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v77, v76, v79, v71);
            if (v77)
            {
              v84.i64[0] = 0x3F0000003F000000;
              for (v84.i64[1] = 0x3F0000003F000000; v79; --v79)
              {
                v85 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v140, COERCE_FLOAT(*v83->f32)), v138, *v83, 1), v136, *v83->f32, 2), v134, *v83->f32, 3);
                v86 = vaddq_f32(vmulq_f32(v85, v84), v84);
                v86.i32[2] = v85.i32[2];
                v87 = v86;
                v87.i32[3] = 0;
                v88 = vsubq_f32(v86, vrndmq_f32(v87));
                v88.i32[3] = 0;
                v89 = vminnmq_f32(v88, xmmword_1AFE47E30);
                v90 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_n_f32(v132, (v89.f32[0] + v89.f32[0]) + -1.0), v130, (v89.f32[1] + v89.f32[1]) + -1.0), v128, v89, 2), v126, v85, 3);
                v90.i32[3] = 1.0;
                *v83->f32 = v90;
                v83 += 2;
              }
            }

            else
            {
              v91.i64[0] = 0x3F0000003F000000;
              v91.i64[1] = 0x3F0000003F000000;
              if (v75 != v74)
              {
                v92 = v74 - v75;
                v93 = &v83[2 * v75];
                do
                {
                  v94 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v140, COERCE_FLOAT(*v93->f32)), v138, *v93, 1), v136, *v93->f32, 2), v134, *v93->f32, 3);
                  v95 = vaddq_f32(vmulq_f32(v94, v91), v91);
                  v95.i32[2] = v94.i32[2];
                  v96 = v95;
                  v96.i32[3] = 0;
                  v97 = vsubq_f32(v95, vrndmq_f32(v96));
                  v97.i32[3] = 0;
                  v98 = vminnmq_f32(v97, xmmword_1AFE47E30);
                  v99 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_n_f32(v132, (v98.f32[0] + v98.f32[0]) + -1.0), v130, (v98.f32[1] + v98.f32[1]) + -1.0), v128, v98, 2), v126, v94, 3);
                  v99.i32[3] = 1.0;
                  *v93->f32 = v99;
                  v93 += 2;
                  --v92;
                }

                while (v92);
              }
            }

            sub_1AF630994(v71, &v175, &v148);
            if (*(*(v71 + 104) + 16))
            {

              sub_1AF62F348(v100, v78);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v102 = *(v71 + 104);
              if (isUniquelyReferenced_nonNull_native)
              {
                v103 = v102[2];
                v104 = swift_isUniquelyReferenced_nonNull_native();
                *(v71 + 104) = v102;
                if ((v104 & 1) == 0)
                {
                  v102 = sub_1AF420EA0(0, v103, 1, v102);
                  *(v71 + 104) = v102;
                }

                sub_1AF43A540(0);
                swift_arrayDestroy();
                if (v103)
                {
                  v105 = v102[2] - v103;
                  memmove(v102 + 4, &v102[9 * v103 + 4], 72 * v105);
                  v102[2] = v105;
                }

                *(v71 + 104) = v102;
              }

              else
              {
                v106 = MEMORY[0x1E69E7CC0];
                if (v102[3] >= 2uLL)
                {
                  sub_1AF9FA280();
                  v106 = swift_allocObject();
                  v107 = j__malloc_size_0(v106);
                  v106[2] = 0;
                  v106[3] = 2 * ((v107 - 32) / 72);
                }

                *(v71 + 104) = v106;
              }

              if (*(*(v71 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
              {
                v108 = *(v78 + 232);
                v109 = *(v78 + 256);
                if (v108 == v109)
                {
                  v110 = *(v78 + 240);
                }

                else
                {
                  sub_1AF6497A0(v109, v108);
                  v109 = *(v78 + 232);
                  v110 = *(v78 + 240);
                  if (v110 == v109)
                  {
                    v110 = 0;
                    v109 = 0;
                    *(v78 + 232) = 0;
                    *(v78 + 240) = 0;
                  }
                }

                *(v78 + 248) = v110;
                *(v78 + 256) = v109;
              }
            }

            ecs_stack_allocator_pop_snapshot(v143);
            if (v147)
            {
              os_unfair_lock_unlock(*(v78 + 344));
              os_unfair_lock_unlock(*(v78 + 376));
            }

            ++v72;
          }

          while (v72 != v124);
          sub_1AFA3B5D4(&v157);
          goto LABEL_81;
        }
      }

LABEL_78:
      v153 = *&v160[32];
      v154 = v161;
      v155 = v162;
      v156 = v163;
      v151 = *v160;
      v152 = *&v160[16];
      sub_1AF5DD298(&v151, &v148);
      sub_1AFA3B5D4(&v157);
LABEL_81:

      sub_1AF5D1564(v160);
      return sub_1AF5D1564(v160);
    }

    goto LABEL_76;
  }

  v141 = v174;
  v146 = v173;
  v133 = v165;
  v135 = v166;
  v137 = v167;
  v139 = v168;
  v184 = __invert_f4(v7);
  v129 = v184.columns[1];
  v131 = v184.columns[0];
  v125 = v184.columns[3];
  v127 = v184.columns[2];
  v181 = *(a1 + 88);
  v182 = *(a1 + 104);
  v183 = *(a1 + 120);
  sub_1AF705094(2, &v157);
  v178 = v157;
  v179 = v158;
  v180 = v159;
  sub_1AF6B06C0(v6, &v178, 0x200000000, v160);
  if (!*v160)
  {
LABEL_76:
    sub_1AFA3B5D4(&v157);
  }

  if (v163 <= 0)
  {
    goto LABEL_78;
  }

  v116 = *(&v161 + 1);
  if (!*(&v161 + 1))
  {
    goto LABEL_82;
  }

  v8 = 1.0 / (v141.f32[2] - v146.f32[2]);
  v9 = -v146.f32[2] / (v141.f32[2] - v146.f32[2]);
  v10 = vmuls_lane_f32(v146.f32[2], v146, 2);
  v11 = vmuls_lane_f32(v10, v146, 2);
  v12 = vmuls_lane_f32(vmuls_lane_f32(v141.f32[2], v141, 2), v141, 2) - v11;
  v115 = *&v160[40];
  v13 = *(&v162 + 1);
  v119 = *(*(&v162 + 1) + 32);
  v14 = 1.0 / v12;
  v118 = *(v162 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v175 = *v160;
  v176 = *&v160[8];
  v177 = *&v160[24];
  v153 = *&v160[32];
  v154 = v161;
  v155 = v162;
  v156 = v163;
  v151 = *v160;
  v152 = *&v160[16];
  v113 = v12;
  v15 = -(v146.f32[2] * v10) / v12;
  sub_1AF5DD298(&v151, &v148);
  v16 = 0;
  v17 = vsub_f32(*v141.f32, *v146.f32);
  v123 = v11;
  v121 = vdup_n_s32(0x3F7FFFFFu);
  v120 = v15;
  do
  {
    v117 = v16;
    v18 = (v115 + 48 * v16);
    v19 = *v18;
    v142 = v18[1];
    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    v23 = *(v18 + 4);
    v22 = *(v18 + 5);
    if (v118)
    {
      v24 = *(v22 + 376);

      os_unfair_lock_lock(v24);
      os_unfair_lock_lock(*(v22 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v119);
    v25 = *(v13 + 64);
    v148 = *(v13 + 48);
    v149 = v25;
    v150 = *(v13 + 80);
    v26 = *(*(*(*(v22 + 40) + 16) + 32) + 16) + 1;
    *(v13 + 48) = ecs_stack_allocator_allocate(*(v13 + 32), 48 * v26, 8);
    *(v13 + 56) = v26;
    *(v13 + 72) = 0;
    *(v13 + 80) = 0;
    *(v13 + 64) = 0;
    v27 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v21, v20, v23, v13);
    v29 = v27;
    if (v21)
    {
      v28.i32[0] = 1.0;
      if (!v23)
      {
        goto LABEL_19;
      }

      v30 = v15;
      v31 = v117;
      v32.i32[3] = v114;
      do
      {
        v144 = v32.i32[3];
        v37 = *v29;
        v33 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v139, v137, *v29, 2), v135, *v29->f32, 1), v133, COERCE_FLOAT(*v29));
        v34 = vmla_n_f32(*v146.f32, v17, v9 + vmuls_lane_f32(v8, v33, 2));
        v35 = vdiv_f32(vsub_f32(*v33.f32, v34), vmul_f32(v34, 0xC0000000C0000000));
        v36 = vminnm_f32(vsub_f32(v35, vrndm_f32(v35)), v121);
        *v37.i32 = v30 + (v14 * vmuls_lane_f32(vmuls_lane_f32(v33.f32[2], v33, 2), v33, 2));
        *v37.i32 = v11 + (fminf(*v37.i32 - floorf(*v37.i32), 1.0) * v113);
        v33.i64[0] = 0x8000000080000000;
        v33.i64[1] = 0x8000000080000000;
        LODWORD(v38) = vbslq_s8(v33, v28, v37).u32[0];
        if (*v37.i32 == 0.0)
        {
          v38 = 0.0;
        }

        v39 = v38;
        v40 = powf(fabsf(*v37.i32), 0.33333);
        v28.i32[0] = 1.0;
        v41 = v40 * v39;
        v11 = v123;
        v42 = vmla_n_f32(*v146.f32, v17, v9 + (v8 * v41));
        v43 = vmla_f32(v42, v36, vsub_f32(vsub_f32(0, v42), v42));
        v32 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_n_f32(v125, v127, v41), v129, v43, 1), v131, v43.f32[0]);
        v32.i32[3] = v144;
        v44 = v32;
        v44.i32[3] = 1.0;
        *v29++ = v44;
        --v23;
      }

      while (v23);
      v114 = v144;
      v15 = v30;
    }

    else
    {
      v28.i32[0] = 1.0;
      if (v19 == v142)
      {
LABEL_19:
        v31 = v117;
        goto LABEL_25;
      }

      v45 = v142 - v19;
      v46 = (v27 + 16 * v19);
      v47.i32[3] = v112;
      do
      {
        v145 = v47.i32[3];
        v52 = *v46;
        v48 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v139, v137, *v46, 2), v135, *v46->f32, 1), v133, COERCE_FLOAT(*v46));
        v49 = vmla_n_f32(*v146.f32, v17, v9 + vmuls_lane_f32(v8, v48, 2));
        v50 = vdiv_f32(vsub_f32(*v48.f32, v49), vmul_f32(v49, 0xC0000000C0000000));
        v51 = vminnm_f32(vsub_f32(v50, vrndm_f32(v50)), v121);
        *v52.i32 = v120 + (v14 * vmuls_lane_f32(vmuls_lane_f32(v48.f32[2], v48, 2), v48, 2));
        *v52.i32 = v11 + (fminf(*v52.i32 - floorf(*v52.i32), 1.0) * v113);
        v48.i64[0] = 0x8000000080000000;
        v48.i64[1] = 0x8000000080000000;
        LODWORD(v53) = vbslq_s8(v48, v28, v52).u32[0];
        if (*v52.i32 == 0.0)
        {
          v53 = 0.0;
        }

        v54 = v53;
        v55 = powf(fabsf(*v52.i32), 0.33333);
        v28.i32[0] = 1.0;
        v56 = v55 * v54;
        v11 = v123;
        v57 = vmla_n_f32(*v146.f32, v17, v9 + (v8 * v56));
        v58 = vmla_f32(v57, v51, vsub_f32(vsub_f32(0, v57), v57));
        v47 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_n_f32(v125, v127, v56), v129, v58, 1), v131, v58.f32[0]);
        v47.i32[3] = v145;
        v59 = v47;
        v59.i32[3] = 1.0;
        *v46++ = v59;
        --v45;
      }

      while (v45);
      v112 = v145;
      v15 = v120;
      v31 = v117;
    }

LABEL_25:
    sub_1AF630994(v13, &v175, &v148);
    if (*(*(v13 + 104) + 16))
    {

      sub_1AF62F348(v60, v22);

      v61 = swift_isUniquelyReferenced_nonNull_native();
      v62 = *(v13 + 104);
      if (v61)
      {
        v63 = v62[2];
        v64 = swift_isUniquelyReferenced_nonNull_native();
        *(v13 + 104) = v62;
        if ((v64 & 1) == 0)
        {
          v62 = sub_1AF420EA0(0, v63, 1, v62);
          *(v13 + 104) = v62;
        }

        sub_1AF43A540(0);
        swift_arrayDestroy();
        if (v63)
        {
          v65 = v62[2] - v63;
          memmove(v62 + 4, &v62[9 * v63 + 4], 72 * v65);
          v62[2] = v65;
        }

        *(v13 + 104) = v62;
      }

      else
      {
        v66 = MEMORY[0x1E69E7CC0];
        if (v62[3] >= 2uLL)
        {
          sub_1AF9FA280();
          v66 = swift_allocObject();
          v67 = j__malloc_size_0(v66);
          v66[2] = 0;
          v66[3] = 2 * ((v67 - 32) / 72);
        }

        *(v13 + 104) = v66;
      }

      if (*(*(v13 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
      {
        v68 = *(v22 + 232);
        v69 = *(v22 + 256);
        if (v68 == v69)
        {
          v70 = *(v22 + 240);
        }

        else
        {
          sub_1AF6497A0(v69, v68);
          v69 = *(v22 + 232);
          v70 = *(v22 + 240);
          if (v70 == v69)
          {
            v70 = 0;
            v69 = 0;
            *(v22 + 232) = 0;
            *(v22 + 240) = 0;
          }
        }

        *(v22 + 248) = v70;
        *(v22 + 256) = v69;
      }
    }

    ecs_stack_allocator_pop_snapshot(v119);
    if (v118)
    {
      os_unfair_lock_unlock(*(v22 + 344));
      os_unfair_lock_unlock(*(v22 + 376));
    }

    v16 = v31 + 1;
  }

  while (v16 != v116);
  sub_1AF5D1564(v160);
LABEL_82:

  sub_1AFA3B5D4(&v157);
  return sub_1AF5D1564(v160);
}

uint64_t sub_1AFA4BC2C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_1AFA4BC48(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return result;
}

unint64_t sub_1AFA4BC84()
{
  result = qword_1EB6424D8;
  if (!qword_1EB6424D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6424D8);
  }

  return result;
}

void sub_1AFA4BCD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AFA4BD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA4BC84();
    v7 = a3(a1, &type metadata for WrapAroundCamera.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AFA4BD8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AFA4BCD8(255, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WrapAroundCamera(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 37))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WrapAroundCamera(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AFA4BEE0()
{
  result = qword_1EB6424F8;
  if (!qword_1EB6424F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6424F8);
  }

  return result;
}

unint64_t sub_1AFA4BF38()
{
  result = qword_1EB642500;
  if (!qword_1EB642500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642500);
  }

  return result;
}

unint64_t sub_1AFA4BF90()
{
  result = qword_1EB642508;
  if (!qword_1EB642508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642508);
  }

  return result;
}

uint64_t sub_1AFA4C00C()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ProjectionMatrix;
  *(inited + 40) = &off_1F2511D20;
  sub_1AF5F58E4(inited, 1, v4);
  swift_setDeallocating();
  v2 = v4[1];
  *(v0 + 16) = v4[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v5;
  return v0;
}

void sub_1AFA4C11C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v376 = *MEMORY[0x1E69E9840];
  v6 = *(v4 + 184);

  os_unfair_recursive_lock_lock_with_options();
  v7 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
  if (v8 != 2 && (v8 & 1) != 0)
  {
    v10 = *(v6 + 16);
    v11 = 32 * v9;
    v12 = v7;
    os_unfair_lock_lock(*(*(v6 + 32) + 32 * v9 + 24));
    os_unfair_recursive_lock_unlock();
    v13 = *(v10 + v12);
    os_unfair_lock_unlock(*(*(v6 + 32) + v11 + 24));

    sub_1AF3CA934(v13, &v332);
    v14 = BYTE8(v335);
    if (BYTE8(v335) == 2)
    {
      return;
    }

    v15 = v332;
    if (*&v332 <= 0.0 || !v3)
    {
      return;
    }

    v16 = *(&v332 + 1);
    v17 = v333;
    v134 = v334;
    v18 = v335;

    CFXTextureDescriptorMakeDefault(v198);
    v19 = v3[41];
    v247[6] = v3[40];
    v247[7] = v19;
    v248[0] = v3[42];
    *(v248 + 9) = *(v3 + 681);
    v20 = v3[37];
    v247[2] = v3[36];
    v247[3] = v20;
    v21 = v3[39];
    v247[4] = v3[38];
    v247[5] = v21;
    v22 = v3[35];
    v136 = v3;
    v247[0] = v3[34];
    v247[1] = v22;
    if (sub_1AF448314(v247) != 1)
    {
      v23 = *(&v247[0] + 1);
      ObjectType = swift_getObjectType();
      v25 = *(v23 + 80);
      swift_unknownObjectRetain();
      v26 = v25(ObjectType, v23);
      swift_unknownObjectRelease();
      sub_1AF46749C(v26, v198);
      v27 = v3[41];
      v245[6] = v3[40];
      v245[7] = v27;
      v246[0] = v3[42];
      *(v246 + 9) = *(v3 + 681);
      v28 = v3[37];
      v245[2] = v3[36];
      v245[3] = v28;
      v29 = v3[39];
      v245[4] = v3[38];
      v245[5] = v29;
      v30 = v3[35];
      v245[0] = v3[34];
      v245[1] = v30;
      if (sub_1AF448314(v245) != 1)
      {
        v31 = *(&v245[0] + 1);
        v32 = swift_getObjectType();
        v33 = *(v31 + 80);
        swift_unknownObjectRetain();
        v33(v32, v31);
        v35 = v34;
        swift_unknownObjectRelease();
        sub_1AF4674A4(v35, v198);
        v36 = v136;
        sub_1AF46748C(*(v136 + 36), v198);
        sub_1AFA4DCA8(v198);
        sub_1AF48F3EC(v198);
        sub_1AF4674D0(v198);
        if (sub_1AF8DB86C(v198[0], v198[1], v199 | (v200 << 16)) <= 1)
        {

          return;
        }

        v137 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
        v37 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
        v38 = *(v136 + 25);
        sub_1AF0D879C(v249);
        v40 = *(&v249[0] + 1);
        v39 = *&v249[0];

        v131 = v37;
        v41 = sub_1AF750DEC(v39, v40, 0, 0, 0, 1, 1);
        sub_1AF0D8F38(v249);

        v126 = v14;
        if (v41)
        {
          v129 = 0;
        }

        else
        {

          v41 = sub_1AFBE4EC4();

          v129 = *(v136 + 456);
        }

        sub_1AF0D879C(&v250);
        v42 = v250;

        v43 = sub_1AF750DEC(v42, *(&v42 + 1), 0, 0, 0, 1, 1);

        v132 = v41;
        if (v43)
        {
          sub_1AF0D8F38(&v250);
        }

        else
        {
          v44 = v255;
          v45 = 32;
          if (!v255)
          {
            v45 = 1;
          }

          if (v256)
          {
            v44 = v45;
          }

          v368 = v254;
          v367 = v253;
          v369 = v253;
          v370 = v254;
          v371 = v251;
          v372 = v44;
          v373 = v252;
          v374 = 0u;
          v375 = 0u;
          v46 = *(v38 + 16);
          v47 = v46[38];
          v337 = v46[39];
          v336 = v47;
          v48 = v46[36];
          v335 = v46[37];
          v334 = v48;
          v49 = v46[41];
          *v340 = v46[42];
          v50 = v46[40];
          v339 = v49;
          v338 = v50;
          v51 = v46[34];
          v333 = v46[35];
          v332 = v51;
          *&v340[9] = *(v46 + 681);

          if (sub_1AF448314(&v332) == 1)
          {
            goto LABEL_69;
          }

          v52 = *(&v332 + 1);
          v53 = swift_getObjectType();
          v54 = *(v52 + 80);
          swift_unknownObjectRetain();
          v55 = v54(v53, v52);
          v57 = v56;

          swift_unknownObjectRelease();
          v58 = sub_1AFBE973C(0, 2, v55, v57);
          v60 = v59;
          v62 = v61;

          v43 = sub_1AF750DEC(v42, *(&v42 + 1), v58, v60, v62, 0, 1);
          sub_1AF0D8F38(&v250);

          if (!v43)
          {

            swift_unknownObjectRelease();
            return;
          }

          v36 = v136;
        }

        swift_getObjectType();
        v63 = sub_1AF473274() - 3;
        if (v16 < v63)
        {
          v63 = v16;
        }

        if (v63 <= 2)
        {
          v64 = 2;
        }

        else
        {
          v64 = v63;
        }

        v65 = *(v36 + 24);

        CFXTextureDescriptorFromMTLTexture(v43, v66, v67, v68, &v332);
        v69 = sub_1AF750DEC(0x4D545F4D4F4F4C42, 0xE900000000000050, v332, *(&v332 + 1), v333, 0, 0);

        if (!v69)
        {
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          return;
        }

        v124 = v65;
        v125 = v43;
        v70 = [v69 pixelFormat];
        v242[0] = v15;
        v243 = v134;
        v244 = v18;
        sub_1AF88DCAC();
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1AFE431C0;
        *(v71 + 32) = xmmword_1AFE96850;
        *(v71 + 48) = 0;
        *(v71 + 64) = v129;
        *(v71 + 128) = 13;
        sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0x68745F6D6F6F6C62, 0xEF646C6F68736572, v71, v257);

        v239 = v257[8];
        v240 = v257[9];
        v241 = v257[10];
        v235 = v257[4];
        v236 = v257[5];
        v238 = v257[7];
        v237 = v257[6];
        v231 = v257[0];
        v232 = v257[1];
        v234 = v257[3];
        v233 = v257[2];
        sub_1AF5FF2F0(&v156);
        v158 = xmmword_1AFE68E40;
        v159 = xmmword_1AFE68E40;
        v156 = xmmword_1AFE68E40;
        v157 = xmmword_1AFE68E40;
        v160 = xmmword_1AFE68E40;
        v161 = xmmword_1AFE68E40;
        v162 = xmmword_1AFE68E40;
        v163 = xmmword_1AFE68E40;
        sub_1AFDFF308();
        sub_1AF6021F8(v257, &v332);
        sub_1AF89747C(&v296);
        sub_1AF602254(v257);
        MEMORY[0x1B271ACB0](v70);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        sub_1AFDFF2A8();
        v187 = v156;
        v188 = v157;
        v189 = v158;
        v190 = v159;
        sub_1AF5FF304();
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        MEMORY[0x1B271ACB0](3);
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        v184 = v298;
        v185 = v299;
        v186 = v300;
        v182 = v296;
        v183 = v297;
        v72 = sub_1AFDFF2E8();
        *v340 = v239;
        *&v340[16] = v240;
        v341 = v241;
        v336 = v235;
        v337 = v236;
        v339 = v238;
        v338 = v237;
        v332 = v231;
        v333 = v232;
        v335 = v234;
        v334 = v233;
        v343 = 0u;
        v344 = 0u;
        v345 = 0u;
        v346 = 0u;
        v342 = v70;
        v347 = 0;
        v348 = 1;
        *v349 = *v196;
        *&v349[3] = *&v196[3];
        v350 = v160;
        v351 = v161;
        v352 = v162;
        v353 = v163;
        v355 = 0;
        v354 = 0;
        v356 = 3;
        v357 = 0;
        v358 = 0;
        v359 = 2;
        v362 = 0;
        v360 = 0;
        v361 = 0;
        v363 = 257;
        v364 = v194[2];
        v365 = v195;
        v366 = v72;

        v73 = sub_1AF730058(&v332, 0);
        v75 = v74;
        v77 = v76;
        v78 = v76;

        v135 = v69;
        if (v78)
        {
          v128 = 0;
        }

        else
        {
          swift_unknownObjectRetain();
          v77 = 0;
          v128 = v73;
        }

        sub_1AF6022A8(v73, v75, v77);
        v79 = swift_allocObject();
        v80 = v126 & 1;
        *(v79 + 16) = xmmword_1AFE431C0;
        *(v79 + 32) = xmmword_1AFE96860;
        *(v79 + 48) = 0;
        *(v79 + 64) = v126 & 1;
        *(v79 + 128) = 13;
        sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0xD000000000000011, 0x80000001AFF44DD0, v79, v258);

        v224 = v258[8];
        v225 = v258[9];
        v226 = v258[10];
        v220 = v258[4];
        v221 = v258[5];
        v223 = v258[7];
        v222 = v258[6];
        v216 = v258[0];
        v217 = v258[1];
        v219 = v258[3];
        v218 = v258[2];
        v194[0] = *v197;
        *(v194 + 3) = *&v197[3];
        sub_1AF5FF2F0(&v148);
        v150 = xmmword_1AFE68E40;
        v151 = xmmword_1AFE68E40;
        v148 = xmmword_1AFE68E40;
        v149 = xmmword_1AFE68E40;
        v152 = xmmword_1AFE68E40;
        v153 = xmmword_1AFE68E40;
        v154 = xmmword_1AFE68E40;
        v155 = xmmword_1AFE68E40;
        sub_1AFDFF308();
        sub_1AF6021F8(v258, &v296);
        sub_1AF89747C(&v260);
        sub_1AF602254(v258);
        MEMORY[0x1B271ACB0](v70);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        sub_1AFDFF2A8();
        v178 = v148;
        v179 = v149;
        v180 = v150;
        v181 = v151;
        sub_1AF5FF304();
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        MEMORY[0x1B271ACB0](3);
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        v175 = v262;
        v176 = v263;
        v177 = v264;
        v173 = v260;
        v174 = v261;
        v81 = sub_1AFDFF2E8();
        v304 = v224;
        v305 = v225;
        v306 = v226;
        v300 = v220;
        v301 = v221;
        v303 = v223;
        v302 = v222;
        v296 = v216;
        v297 = v217;
        v299 = v219;
        v298 = v218;
        v308 = 0u;
        v309 = 0u;
        v310 = 0u;
        v311 = 0u;
        v307 = v70;
        v312 = 0;
        v313 = 1;
        *v314 = v194[0];
        *&v314[3] = *(v194 + 3);
        v315 = v152;
        v316 = v153;
        v317 = v154;
        v318 = v155;
        v320 = 0;
        v319 = 0;
        v321 = 3;
        v322 = 0;
        v323 = 0;
        v324 = 2;
        v327 = 0;
        v325 = 0;
        v326 = 0;
        v328 = 257;
        v329 = *&v193[5];
        v330 = v193[7];
        v331 = v81;

        v82 = sub_1AF730058(&v296, 0);
        v84 = v83;
        v86 = v85;
        v87 = v85;

        if (v87)
        {
          v127 = 0;
        }

        else
        {
          swift_unknownObjectRetain();
          v86 = 0;
          v127 = v82;
        }

        sub_1AF6022A8(v82, v84, v86);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1AFE4C620;
        *(v88 + 32) = xmmword_1AFE96860;
        *(v88 + 48) = 0;
        *(v88 + 49) = *v230;
        *(v88 + 56) = *&v230[7];
        *(v88 + 64) = v80;
        v89 = v228;
        *(v88 + 65) = v227;
        *(v88 + 81) = v89;
        *(v88 + 97) = *v229;
        *(v88 + 112) = *&v229[15];
        *(v88 + 128) = 13;
        *(v88 + 144) = xmmword_1AFE96870;
        *(v88 + 160) = 0;
        *(v88 + 176) = 1;
        *(v88 + 240) = 13;
        sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0xD00000000000001DLL, 0x80000001AFF44DF0, v88, v259);

        v213 = v259[8];
        v214 = v259[9];
        v215 = v259[10];
        v209 = v259[4];
        v210 = v259[5];
        v212 = v259[7];
        v211 = v259[6];
        v205 = v259[0];
        v206 = v259[1];
        v208 = v259[3];
        v207 = v259[2];
        *v193 = *v197;
        *(&v193[1] + 1) = *&v197[3];
        sub_1AF5FF2F0(&v140);
        v142 = xmmword_1AFE68E40;
        v143 = xmmword_1AFE68E40;
        v140 = xmmword_1AFE68E40;
        v141 = xmmword_1AFE68E40;
        v144 = xmmword_1AFE68E40;
        v145 = xmmword_1AFE68E40;
        v146 = xmmword_1AFE68E40;
        v147 = xmmword_1AFE68E40;
        sub_1AFDFF308();
        sub_1AF6021F8(v259, &v260);
        sub_1AF89747C(v203);
        sub_1AF602254(v259);
        MEMORY[0x1B271ACB0](v70);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        MEMORY[0x1B271ACB0](0);
        sub_1AFDFF2A8();
        v169 = v140;
        v170 = v141;
        v171 = v142;
        v172 = v143;
        sub_1AF5FF304();
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        MEMORY[0x1B271ACB0](3);
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        v166 = v203[2];
        v167 = v203[3];
        v168 = v204;
        v164 = v203[0];
        v165 = v203[1];
        v90 = sub_1AFDFF2E8();
        v268 = v213;
        v269 = v214;
        v270 = v215;
        v264 = v209;
        v265 = v210;
        v267 = v212;
        v266 = v211;
        v260 = v205;
        v261 = v206;
        v263 = v208;
        v262 = v207;
        v272 = 0u;
        v273 = 0u;
        v274 = 0u;
        v275 = 0u;
        v271 = v70;
        v276 = 0;
        v277 = 1;
        *v278 = *v193;
        *&v278[3] = *(&v193[1] + 1);
        v279 = v144;
        v280 = v145;
        v281 = v146;
        v282 = v147;
        v284 = 0;
        v283 = 0;
        v285 = 3;
        v286 = 0;
        v287 = 0;
        v288 = 2;
        v291 = 0;
        v289 = 0;
        v290 = 0;
        v292 = 257;
        v293 = v191;
        v294 = v192;
        v295 = v90;

        v91 = sub_1AF730058(&v260, 0);
        v93 = v92;
        v95 = v94;
        v96 = v94;

        if (v96)
        {
          v133 = 0;
        }

        else
        {
          swift_unknownObjectRetain();
          v95 = 0;
          v133 = v91;
        }

        sub_1AF6022A8(v91, v93, v95);
        if (v137)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1AF602304(&v260);
          sub_1AF602304(&v296);
          sub_1AF602304(&v332);
          v97 = v124;
LABEL_61:

          v121 = sub_1AF8509C8(0x4D545F4D4F4F4C42, 0xE900000000000050);
          if (v121)
          {
            CFXTextureAllocatorPerFrameFree(*(v97 + 16), v121);
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v122 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v123 = v122;
              swift_once();
              v122 = v123;
            }

            v139[0] = 0;
            sub_1AF0D4F18(v122, v139, 0xD00000000000001ELL, 0x80000001AFF44E90);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          return;
        }

        if (v128 && v127 && v133)
        {
          v130 = *(v36 + 35);
          v98 = *(v130 + 16);
          if (v98)
          {
            *&v203[0] = 0x6D6F6F6C42;
            *(&v203[0] + 1) = 0xE500000000000000;
            swift_unknownObjectRetain();
            sub_1AFDFD1E8();
            v99 = sub_1AFDFCEC8();

            [v98 pushDebugGroup_];

            swift_unknownObjectRelease();
          }

          v100 = objc_allocWithZone(MEMORY[0x1E6974128]);
          swift_unknownObjectRetain();
          v101 = [v100 init];
          v102 = [v101 colorAttachments];
          v103 = [v102 objectAtIndexedSubscript_];

          [v103 setTexture_];
          [v103 setLoadAction_];
          [v103 setStoreAction_];
          [v103 setClearColor_];
          [v103 setLevel_];

          sub_1AF7180FC();

          v104 = sub_1AF6F3D60(v101, 0, 0);
          sub_1AF474680(v201);
          swift_getObjectType();
          [v104 setRenderPipelineState_];
          [v104 setFragmentTexture:v132 atIndex:0];
          *&v203[0] = v17;
          [v104 setFragmentBytes:v203 length:8 atIndex:0];
          v105 = 1;
          sub_1AF6F5B7C(1);

          swift_unknownObjectRelease();

          do
          {
            v106 = objc_allocWithZone(MEMORY[0x1E6974128]);
            swift_unknownObjectRetain();
            v107 = [v106 init];
            v108 = [v107 colorAttachments];
            v109 = [v108 objectAtIndexedSubscript_];

            [v109 setTexture_];
            [v109 setLoadAction_];
            [v109 setStoreAction_];
            [v109 setClearColor_];
            [v109 setLevel_];
            swift_unknownObjectRelease();

            sub_1AF7180FC();

            v110 = sub_1AF6F3D60(v107, 0, 0);
            sub_1AF474680(v202);
            swift_getObjectType();
            [v110 setRenderPipelineState_];
            [v110 setFragmentTexture:v135 atIndex:0];
            *v203 = (v105 - 1);
            [v110 setFragmentBytes:v203 length:4 atIndex:0];
            sub_1AF6F5B7C(1);

            swift_unknownObjectRelease();

            ++v105;
          }

          while (v105 != v64);
          swift_unknownObjectRelease();
          v111 = 0;
          v112 = v64 - 1;
          do
          {
            v138 = v112;
            v113 = v112 - 1;
            v114 = objc_allocWithZone(MEMORY[0x1E6974128]);
            swift_unknownObjectRetain_n();
            v115 = [v114 init];
            v116 = [v115 colorAttachments];
            v117 = [v116 objectAtIndexedSubscript_];

            [v117 setTexture_];
            [v117 setLoadAction_];
            [v117 setStoreAction_];
            [v117 setClearColor_];
            [v117 setLevel_];
            swift_unknownObjectRelease_n();

            sub_1AF7180FC();

            v118 = sub_1AF6F3D60(v115, 0, 0);
            sub_1AF474680(v203);
            swift_getObjectType();
            [v118 setRenderPipelineState_];
            if (v111)
            {
              v119 = v125;
            }

            else
            {
              v119 = v135;
            }

            [v118 setFragmentTexture:v119 atIndex:0];
            [v118 setFragmentTexture:v135 atIndex:1];
            *&v120 = v138;
            *(&v120 + 1) = v113;
            v139[0] = v120;
            [v118 setFragmentBytes:v139 length:8 atIndex:0];
            [v118 setFragmentBytes:v242 length:48 atIndex:1];
            sub_1AF6F5B7C(1);

            swift_unknownObjectRelease();

            ++v111;
            v112 = v113;
          }

          while (v113);
          if (*(v130 + 16))
          {
            [swift_unknownObjectRetain() popDebugGroup];
            sub_1AF602304(&v260);
            sub_1AF602304(&v296);
            sub_1AF602304(&v332);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1AF602304(&v260);
            sub_1AF602304(&v296);
            sub_1AF602304(&v332);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v97 = v124;
          goto LABEL_61;
        }
      }
    }

    while (1)
    {
LABEL_69:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  os_unfair_recursive_lock_unlock();
}

uint64_t sub_1AFA4DCF0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(a2 + 200);
    v4 = *(v3 + 24);
    if (v4 != 2)
    {
      if ((v4 & 0x100000000) == 0)
      {
        return result;
      }

      v6 = *(v3 + 40);
      v5 = *(v3 + 44);
      v159 = result;
      sub_1AF0D879C(&v181);
      v7 = v181;

      v8 = sub_1AF750DEC(v7, *(&v7 + 1), 0, 0, 0, 1, 1);

      if (v8)
      {
        sub_1AF0D8F38(&v181);
      }

      else
      {
        v157 = v2;
        v9 = v186;
        v10 = 32;
        if (!v186)
        {
          v10 = 1;
        }

        if (v187)
        {
          v9 = v10;
        }

        v279 = v184;
        v280 = v185;
        v281 = v184;
        v282 = v185;
        v283 = v182;
        v284 = v9;
        v285 = v183;
        v286 = 0u;
        v287 = 0u;
        v11 = *(v3 + 16);
        v12 = v11[38];
        *&__dst[80] = v11[39];
        *&__dst[64] = v12;
        v13 = v11[36];
        *&__dst[48] = v11[37];
        *&__dst[32] = v13;
        v14 = v11[41];
        *&__dst[128] = v11[42];
        v15 = v11[40];
        *&__dst[112] = v14;
        *&__dst[96] = v15;
        v16 = v11[34];
        *&__dst[16] = v11[35];
        *__dst = v16;
        *&__dst[137] = *(v11 + 681);

        if (sub_1AF448314(__dst) == 1)
        {
          goto LABEL_71;
        }

        v17 = v3;
        v18 = *&__dst[8];
        ObjectType = swift_getObjectType();
        v20 = *(v18 + 80);
        swift_unknownObjectRetain();
        v21 = v20(ObjectType, v18);
        v23 = v22;

        swift_unknownObjectRelease();
        v24 = sub_1AFBE973C(0, 2, v21, v23);
        v26 = v25;
        LODWORD(ObjectType) = v27;

        v8 = sub_1AF750DEC(v7, *(&v7 + 1), v24, v26, ObjectType, 0, 1);
        sub_1AF0D8F38(&v181);

        v3 = v17;
        v2 = v157;
      }

      v28 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
      v29 = [v28 colorAttachments];
      v30 = [v29 objectAtIndexedSubscript_];

      [v30 setTexture_];
      [v30 setLoadAction_];
      [v30 setStoreAction_];
      [v30 setClearColor_];
      [v30 setLevel_];

      sub_1AFDFE238();

      sub_1AF7180FC();

      v154 = sub_1AF6F3D60(v28, 0, 0);
      sub_1AF709E8C(v154);

      sub_1AF0D879C(v188);
      v31 = v188[0];

      v156 = sub_1AF750DEC(v31, *(&v31 + 1), 0, 0, 0, 1, 1);
      sub_1AF0D8F38(v188);

      sub_1AF0D879C(v189);
      v153 = v3;
      v32 = v189[0];

      v155 = sub_1AF750DEC(v32, *(&v32 + 1), 0, 0, 0, 1, 1);
      sub_1AF0D8F38(v189);

      v33 = log2f(v6);
      v34 = log2f(v5);
      v35 = *(v2 + 392);
      v36 = *(v2 + 656);
      v179[6] = *(v2 + 640);
      v179[7] = v36;
      v180[0] = *(v2 + 672);
      *(v180 + 9) = *(v2 + 681);
      v37 = *(v2 + 592);
      v179[2] = *(v2 + 576);
      v179[3] = v37;
      v38 = *(v2 + 624);
      v179[4] = *(v2 + 608);
      v179[5] = v38;
      v39 = *(v2 + 560);
      v179[0] = *(v2 + 544);
      v179[1] = v39;
      v158 = v28;
      if (sub_1AF448314(v179) != 1)
      {
        v40 = v4 & 0x10000;
        v41 = v4 & 0x1000000;
        v151 = v34;
        v42 = (1 - v34);
        v149 = v33;
        v43 = (1 - v33);
        v44 = *(&v179[0] + 1);
        v45 = swift_getObjectType();
        v148 = v35;
        v46 = *(v44 + 112);
        swift_unknownObjectRetain();
        v47 = v46(v45, v44);
        swift_unknownObjectRelease();
        v126 = v47 == 1;
        v48 = v47 != 1;
        if (v126)
        {
          v49 = 0;
        }

        else
        {
          v49 = 5;
        }

        sub_1AF88DCAC();
        v50 = swift_allocObject();
        v152 = v41;
        v175 = 0;
        *(v50 + 16) = xmmword_1AFE4C6A0;
        *(v50 + 32) = xmmword_1AFE968C0;
        *(v50 + 48) = 0;
        *(v50 + 64) = BYTE3(v41);
        *(v50 + 128) = 13;
        v176 = 0;
        *(v50 + 144) = xmmword_1AFE968D0;
        *(v50 + 160) = 0;
        *(v50 + 176) = v43;
        *(v50 + 240) = 0;
        v150 = v40;
        v177 = 0;
        *(v50 + 256) = xmmword_1AFE968E0;
        *(v50 + 272) = 0;
        *(v50 + 288) = BYTE2(v40);
        *(v50 + 352) = 13;
        v178 = 0;
        *(v50 + 368) = xmmword_1AFE968F0;
        *(v50 + 384) = 0;
        *(v50 + 400) = v42;
        *(v50 + 464) = 0;
        v174 = 0;
        *(v50 + 480) = xmmword_1AFE96900;
        *(v50 + 496) = 0;
        *(v50 + 512) = (v41 != 0) & (v35 ^ 1);
        *(v50 + 576) = 13;
        sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0x7469736F706D6F63, 0xE900000000000065, v50, v190);

        sub_1AF474680(&v191);
        __src[8] = v190[8];
        __src[9] = v190[9];
        __src[4] = v190[4];
        __src[5] = v190[5];
        __src[6] = v190[6];
        __src[7] = v190[7];
        __src[0] = v190[0];
        __src[1] = v190[1];
        __src[2] = v190[2];
        __src[3] = v190[3];
        __src[14] = v194;
        __src[15] = v195;
        *&__src[16] = v196;
        __src[10] = v190[10];
        __src[11] = v191;
        __src[12] = v192;
        __src[13] = v193;
        sub_1AF5FF2F0(v170);
        *&v170[23] = xmmword_1AFE96910;
        *&v170[39] = xmmword_1AFE96910;
        *&v170[55] = 0x10000010F0000;
        v170[63] = 0;
        *&v170[1] = 271;
        v170[3] = v49;
        *&v170[4] = 256;
        v170[6] = v49;
        *&v170[7] = xmmword_1AFE96910;
        v170[0] = v48;
        *(&__src[16] + 8) = *v170;
        *(&__src[17] + 8) = *&v170[16];
        *(&__src[18] + 8) = *&v170[32];
        *(&__src[19] + 8) = *&v170[48];
        sub_1AFDFF308();
        sub_1AF6021F8(v190, __dst);
        sub_1AF89747C(v169);
        sub_1AF602254(v190);
        v51 = *(&v191 + 1);
        v52 = v192;
        v53 = v193;
        v54 = v194;
        MEMORY[0x1B271ACB0](v191);
        MEMORY[0x1B271ACB0](v51);
        MEMORY[0x1B271ACB0](v52);
        MEMORY[0x1B271ACB0](*(&v52 + 1));
        MEMORY[0x1B271ACB0](v53);
        MEMORY[0x1B271ACB0](*(&v53 + 1));
        MEMORY[0x1B271ACB0](v54);
        MEMORY[0x1B271ACB0](*(&v54 + 1));
        MEMORY[0x1B271ACB0](v195);
        MEMORY[0x1B271ACB0](*(&v195 + 1));
        sub_1AFDFF2A8();
        v275 = *v170;
        v276 = *&v170[16];
        v277 = *&v170[32];
        v278 = *&v170[48];
        sub_1AF5FF304();
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        MEMORY[0x1B271ACB0](3);
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        v55 = sub_1AFDFF2E8();
        memcpy(__dst, __src, sizeof(__dst));
        v263 = 0;
        v262 = 0;
        v264 = 3;
        v265 = 0;
        v266 = 0;
        v267 = 2;
        v270 = 0;
        v268 = 0;
        v269 = 0;
        v271 = 257;
        v272 = v171;
        v273 = v172;
        v274 = v55;
        v56 = *(v159 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

        v57 = sub_1AF730058(__dst, 0);
        v59 = v58;
        v61 = v60;
        v62 = v60;

        if (v62)
        {
          sub_1AF6022A8(v57, v59, v61);
          sub_1AF602304(__dst);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

        v63 = swift_unknownObjectRetain();
        sub_1AF6022A8(v63, v59, 0);
        v64 = v154;
        swift_getObjectType();
        [v154 setRenderPipelineState_];
        [v154 setFragmentTexture:v156 atIndex:0];
        [v154 setFragmentTexture:v155 atIndex:1];
        v65 = v41;
        if (v41)
        {
          sub_1AF0D879C(&v197);
          v66 = v197;

          v67 = sub_1AF750DEC(v66, *(&v66 + 1), 0, 0, 0, 1, 1);

          if (v67)
          {
            sub_1AF0D8F38(&v197);
          }

          else
          {
            v68 = v202;
            v69 = 32;
            if (!v202)
            {
              v69 = 1;
            }

            if (v203)
            {
              v68 = v69;
            }

            v252 = v200;
            v253 = v201;
            v254 = v200;
            v255 = v201;
            v256 = v198;
            v257 = v68;
            v258 = v199;
            v259 = 0u;
            v260 = 0u;
            v70 = *(v153 + 16);
            v71 = v70[39];
            v164 = v70[38];
            v165 = v71;
            v72 = v70[37];
            v162 = v70[36];
            v163 = v72;
            v73 = v70[42];
            v167 = v70[41];
            v168[0] = v73;
            v166 = v70[40];
            v74 = v70[35];
            v160 = v70[34];
            v161 = v74;
            *(v168 + 9) = *(v70 + 681);

            if (sub_1AF448314(&v160) == 1)
            {
              goto LABEL_71;
            }

            v75 = *(&v160 + 1);
            v76 = swift_getObjectType();
            v77 = *(v75 + 80);
            swift_unknownObjectRetain();
            v78 = v77(v76, v75);
            v80 = v79;

            swift_unknownObjectRelease();
            v81 = sub_1AFBE973C(0, 2, v78, v80);
            v83 = v82;
            LODWORD(v77) = v84;

            v67 = sub_1AF750DEC(v66, *(&v66 + 1), v81, v83, v77, 0, 1);
            sub_1AF0D8F38(&v197);

            v64 = v154;
            v65 = v152;
          }

          [v64 setFragmentTexture:v67 atIndex:2];
          if ((v148 & 1) == 0)
          {
            sub_1AF0D879C(&v204);
            v85 = v204;

            v86 = sub_1AF750DEC(v85, *(&v85 + 1), 0, 0, 0, 1, 1);

            if (v86)
            {
              sub_1AF0D8F38(&v204);
            }

            else
            {
              v87 = v209;
              v88 = 32;
              if (!v209)
              {
                v88 = 1;
              }

              if (v210)
              {
                v87 = v88;
              }

              v243 = v207;
              v244 = v208;
              v245 = v207;
              v246 = v208;
              v247 = v205;
              v248 = v87;
              v249 = v206;
              v250 = 0u;
              v251 = 0u;
              v89 = *(v153 + 16);
              v90 = v89[39];
              v164 = v89[38];
              v165 = v90;
              v91 = v89[37];
              v162 = v89[36];
              v163 = v91;
              v92 = v89[42];
              v167 = v89[41];
              v168[0] = v92;
              v166 = v89[40];
              v93 = v89[35];
              v160 = v89[34];
              v161 = v93;
              *(v168 + 9) = *(v89 + 681);

              if (sub_1AF448314(&v160) == 1)
              {
                goto LABEL_71;
              }

              v94 = *(&v160 + 1);
              v95 = swift_getObjectType();
              v96 = *(v94 + 80);
              swift_unknownObjectRetain();
              v97 = v96(v95, v94);
              v99 = v98;

              swift_unknownObjectRelease();
              v100 = sub_1AFBE973C(0, 2, v97, v99);
              v102 = v101;
              LODWORD(v95) = v103;

              v86 = sub_1AF750DEC(v85, *(&v85 + 1), v100, v102, v95, 0, 1);
              sub_1AF0D8F38(&v204);

              v64 = v154;
              v65 = v152;
            }

            [v64 setFragmentTexture:v86 atIndex:5];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        v105 = v149;
        v104 = v150;
        v106 = v151;
        if (v150)
        {
          sub_1AF0D879C(&v211);
          v107 = v211;

          v108 = sub_1AF750DEC(v107, *(&v107 + 1), 0, 0, 0, 1, 1);

          if (v108)
          {
            sub_1AF0D8F38(&v211);
          }

          else
          {
            v109 = v216;
            v110 = 32;
            if (!v216)
            {
              v110 = 1;
            }

            if (v217)
            {
              v109 = v110;
            }

            v234 = v214;
            v235 = v215;
            v236 = v214;
            v237 = v215;
            v238 = v212;
            v239 = v109;
            v240 = v213;
            v241 = 0u;
            v242 = 0u;
            v111 = *(v153 + 16);
            v112 = v111[39];
            v164 = v111[38];
            v165 = v112;
            v113 = v111[37];
            v162 = v111[36];
            v163 = v113;
            v114 = v111[42];
            v167 = v111[41];
            v168[0] = v114;
            v166 = v111[40];
            v115 = v111[35];
            v160 = v111[34];
            v161 = v115;
            *(v168 + 9) = *(v111 + 681);

            if (sub_1AF448314(&v160) == 1)
            {
              goto LABEL_71;
            }

            v116 = *(&v160 + 1);
            v117 = swift_getObjectType();
            v118 = *(v116 + 80);
            swift_unknownObjectRetain();
            v119 = v118(v117, v116);
            v121 = v120;

            swift_unknownObjectRelease();
            v122 = sub_1AFBE973C(0, 2, v119, v121);
            v124 = v123;
            LODWORD(v118) = v125;

            v108 = sub_1AF750DEC(v107, *(&v107 + 1), v122, v124, v118, 0, 1);
            sub_1AF0D8F38(&v211);

            v64 = v154;
            v105 = v149;
            v104 = v150;
          }

          [v64 setFragmentTexture:v108 atIndex:3];
          swift_unknownObjectRelease();
          v106 = v151;
          v65 = v152;
        }

        if (v104)
        {
          v126 = v106 == 1;
        }

        else
        {
          v126 = 1;
        }

        v127 = v126;
        v128 = v105 == 1 || v65 == 0;
        if (v128 && (v127 & 1) != 0)
        {
          goto LABEL_69;
        }

        sub_1AF0D879C(&v218);
        v129 = v218;

        v130 = sub_1AF750DEC(v129, *(&v129 + 1), 0, 0, 0, 1, 1);

        if (v130)
        {
          sub_1AF0D8F38(&v218);
LABEL_68:
          [v64 setFragmentTexture:v130 atIndex:4];
          swift_unknownObjectRelease();
LABEL_69:
          sub_1AF6F5B7C(1);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return sub_1AF602304(__dst);
        }

        v131 = v223;
        v132 = 32;
        if (!v223)
        {
          v132 = 1;
        }

        if (v224)
        {
          v131 = v132;
        }

        v225 = v221;
        v226 = v222;
        v227 = v221;
        v228 = v222;
        v229 = v219;
        v230 = v131;
        v231 = v220;
        v232 = 0u;
        v233 = 0u;
        v133 = *(v153 + 16);
        v134 = v133[39];
        v164 = v133[38];
        v165 = v134;
        v135 = v133[37];
        v162 = v133[36];
        v163 = v135;
        v136 = v133[42];
        v167 = v133[41];
        v168[0] = v136;
        v166 = v133[40];
        v137 = v133[35];
        v160 = v133[34];
        v161 = v137;
        *(v168 + 9) = *(v133 + 681);

        if (sub_1AF448314(&v160) != 1)
        {
          v138 = *(&v160 + 1);
          v139 = swift_getObjectType();
          v140 = *(v138 + 80);
          swift_unknownObjectRetain();
          v141 = v140(v139, v138);
          v143 = v142;

          swift_unknownObjectRelease();
          v144 = sub_1AFBE973C(0, 2, v141, v143);
          v146 = v145;
          LODWORD(v140) = v147;

          v130 = sub_1AF750DEC(v129, *(&v129 + 1), v144, v146, v140, 0, 1);
          sub_1AF0D8F38(&v218);

          v64 = v154;
          goto LABEL_68;
        }
      }
    }

LABEL_71:
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFA4F054(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, id *a5)
{
  if (a4)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x7065645F79706F63;
  }

  if (a4)
  {
    v7 = 0x80000001AFF44F80;
  }

  else
  {
    v7 = 0xEA00000000006874;
  }

  sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, v6, v7, MEMORY[0x1E69E7CC0], v41);

  __src[8] = v41[8];
  __src[9] = v41[9];
  __src[4] = v41[4];
  __src[5] = v41[5];
  __src[6] = v41[6];
  __src[7] = v41[7];
  __src[0] = v41[0];
  __src[1] = v41[1];
  __src[2] = v41[2];
  __src[3] = v41[3];
  v8 = a2[2];
  v9 = a2[4];
  __src[14] = a2[3];
  __src[15] = v9;
  v10 = *a2;
  v11 = a2[1];
  __src[10] = v41[10];
  __src[11] = v10;
  *&__src[16] = *(a2 + 10);
  __src[12] = v11;
  __src[13] = v8;
  sub_1AF5FF2F0(&v34);
  v36 = xmmword_1AFE68E40;
  v37 = xmmword_1AFE68E40;
  v34 = xmmword_1AFE68E40;
  v35 = xmmword_1AFE68E40;
  *(&__src[16] + 8) = xmmword_1AFE68E40;
  *(&__src[17] + 8) = xmmword_1AFE68E40;
  *(&__src[18] + 8) = xmmword_1AFE68E40;
  *(&__src[19] + 8) = xmmword_1AFE68E40;
  sub_1AFDFF308();
  sub_1AF6021F8(v41, __dst);
  sub_1AF89747C(v33);
  sub_1AF602254(v41);
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  v16 = *(a2 + 4);
  v15 = *(a2 + 5);
  v18 = *(a2 + 6);
  v17 = *(a2 + 7);
  MEMORY[0x1B271ACB0](*a2);
  MEMORY[0x1B271ACB0](v12);
  MEMORY[0x1B271ACB0](v13);
  MEMORY[0x1B271ACB0](v14);
  MEMORY[0x1B271ACB0](v16);
  MEMORY[0x1B271ACB0](v15);
  MEMORY[0x1B271ACB0](v18);
  MEMORY[0x1B271ACB0](v17);
  MEMORY[0x1B271ACB0](*(a2 + 8));
  MEMORY[0x1B271ACB0](*(a2 + 9));
  sub_1AFDFF2A8();
  v56 = v34;
  v57 = v35;
  v58 = v36;
  v59 = v37;
  sub_1AF5FF304();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  MEMORY[0x1B271ACB0](3);
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  v19 = sub_1AFDFF2E8();
  memcpy(__dst, __src, sizeof(__dst));
  v44 = 0;
  v43 = 0;
  v45 = 3;
  v46 = 0;
  v47 = 0;
  v48 = 2;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v52 = 257;
  v53 = v38;
  v54 = v39;
  v55 = v19;
  v20 = sub_1AF730058(__dst, 0);
  v22 = v21;
  v24 = v23;
  LODWORD(v19) = v23;

  sub_1AF602304(__dst);
  if (v19)
  {
    v25 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    v24 = 0;
    v25 = v20;
  }

  sub_1AF6022A8(v20, v22, v24);
  swift_getObjectType();
  [a1 setRenderPipelineState_];
  [a1 setDepthStencilState_];
  if (!*a5)
  {
    v27 = 0;
LABEL_17:
    [a1 setFragmentTexture:v27 atIndex:0];
    goto LABEL_18;
  }

  if ([*a5 storageMode] != 3)
  {
    v27 = *a5;
    goto LABEL_17;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v26 = sub_1AFDFDA08();
  v32 = 1;
  sub_1AF75A4B4(v26, 0xD000000000000037, 0x80000001AFF44FA0, &v32);
LABEL_18:
  sub_1AF6F5B7C(1);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AFA4F4BC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 200);
    v4 = *(v3 + 24);
    if (v4 == 2)
    {
      goto LABEL_79;
    }

    if (v4)
    {
      v5 = *(v3 + 32);
      if (((v4 & 0x100000100) != 0) | v5 & 1)
      {
        v114 = result;
        v7 = *(v3 + 36);
        v6 = *(v3 + 40);
        v8 = *(v3 + 44);

        v9 = sub_1AFDFE238();
        v11 = *(a2 + 280);
        v12 = *(v11 + 16);
        if (v12)
        {
          *__dst = v9;
          *&__dst[8] = v10;
          swift_unknownObjectRetain();
          sub_1AFDFD1E8();
          v13 = sub_1AFDFCEC8();

          [v12 pushDebugGroup_];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        sub_1AF0D879C(v136);
        v14 = v136[0];

        v15 = sub_1AF750DEC(v14, *(&v14 + 1), 0, 0, 0, 1, 1);
        sub_1AF0D8F38(v136);

        if (v15)
        {
          v111 = v11;
          sub_1AF0D879C(&v137);
          v16 = v137;

          v17 = sub_1AF750DEC(v16, *(&v16 + 1), 0, 0, 0, 1, 1);

          v118 = v17;
          v113 = v3;
          v112 = v15;
          v110 = v5;
          if (v17)
          {
            sub_1AF0D8F38(&v137);
LABEL_21:
            v37 = 1.0;
            if ((v4 & 0x100) != 0 && v7 < 1.0)
            {
              if (v6 >= v7)
              {
                v38 = v7;
              }

              else
              {
                v38 = v6;
              }

              if ((v4 & 0x1000000) != 0)
              {
                v6 = v38;
              }

              else
              {
                v6 = v7;
              }
            }

            else if ((v4 & 0x1000000) == 0 || v6 >= 1.0)
            {
              v39 = fminf(v8, 1.0);
              if ((v4 & 0x10000) != 0)
              {
                v37 = v39;
              }

LABEL_39:
              v117 = a2;
              v40 = 1 - log2f(v37);
              swift_getObjectType();
              v41 = [v118 mipmapLevelCount];
              if (v41 < v40)
              {
                v40 = v41;
              }

              [v118 pixelFormat];
              [v118 textureType];
              v135 = v15;
              v115 = v40;
              if (v40)
              {
                swift_unknownObjectRetain();
                v42 = 0;
                do
                {
                  v43 = v42 + 1;
                  v44 = sub_1AFDFD9B8();
                  if (v42)
                  {
                    *__dst = 0;
                    *&__dst[8] = 0xE000000000000000;
                    sub_1AFDFE218();

                    *__dst = 0x776F446874706544;
                    *&__dst[8] = 0xEF656C706D61736ELL;
                    *&__src[0] = v42;
                    v45 = sub_1AFDFEA08();
                    MEMORY[0x1B2718AE0](v45);
                  }

                  v46 = objc_allocWithZone(MEMORY[0x1E6974128]);
                  swift_unknownObjectRetain();
                  v47 = [v46 init];
                  v48 = [v47 colorAttachments];
                  v49 = [v48 objectAtIndexedSubscript_];

                  [v49 setTexture_];
                  [v49 setLoadAction_];
                  [v49 setStoreAction_];
                  [v49 setClearColor_];
                  [v49 setLevel_];

                  if (v44)
                  {
                    v50 = [v47 depthAttachment];
                    swift_unknownObjectRetain();
                    [v50 setTexture_];
                    [v50 setLoadAction_];
                    [v50 setStoreAction_];
                    [v50 setClearDepth_];
                    [v50 &selRef:0 setGainColor:?];

                    swift_unknownObjectRelease();
                    sub_1AF474EC4();
                    swift_unknownObjectRelease();
                  }

                  v51 = v44;
                  sub_1AF7180FC();

                  v52 = sub_1AF6F3D60(v47, 0, 0);
                  sub_1AF474680(v144);
                  sub_1AFA4F054(v52, v144, a2, v42, &v135);

                  swift_unknownObjectRelease();

                  swift_unknownObjectRelease();
                  v135 = v51;
                  ++v42;
                }

                while (v115 != v43);
              }

              else
              {
                swift_unknownObjectRetain();
              }

              sub_1AF0D879C(&v145);
              v53 = v145;

              v54 = sub_1AF750DEC(v53, *(&v53 + 1), 0, 0, 0, 1, 1);

              if (v54)
              {
                sub_1AF0D8F38(&v145);
              }

              else
              {
                if ((v110 & 1) == 0)
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  sub_1AF0D8F38(&v145);
LABEL_72:
                  swift_unknownObjectRelease();
LABEL_73:
                  if (*(v111 + 16))
                  {
                    [swift_unknownObjectRetain() popDebugGroup];
                    swift_unknownObjectRelease();
                  }

                  goto LABEL_75;
                }

                v71 = v150;
                v72 = 32;
                if (!v150)
                {
                  v72 = 1;
                }

                if (v151)
                {
                  v71 = v72;
                }

                v177 = v148;
                v178 = v149;
                v179 = v148;
                v180 = v149;
                v181 = v146;
                v182 = v71;
                v183 = v147;
                v184 = 0u;
                v185 = 0u;
                v73 = *(v113 + 16);
                v74 = v73[38];
                *&__dst[80] = v73[39];
                *&__dst[64] = v74;
                v75 = v73[36];
                *&__dst[48] = v73[37];
                *&__dst[32] = v75;
                v76 = v73[41];
                *&__dst[128] = v73[42];
                v77 = v73[40];
                *&__dst[112] = v76;
                *&__dst[96] = v77;
                v78 = v73[34];
                *&__dst[16] = v73[35];
                *__dst = v78;
                *&__dst[137] = *(v73 + 681);

                if (sub_1AF448314(__dst) == 1)
                {
LABEL_79:
                  result = sub_1AFDFE518();
                  __break(1u);
                  return result;
                }

                v79 = *&__dst[8];
                ObjectType = swift_getObjectType();
                v81 = *(v79 + 80);
                swift_unknownObjectRetain();
                v82 = v81(ObjectType, v79);
                v84 = v83;

                swift_unknownObjectRelease();
                v85 = sub_1AFBE973C(0, 2, v82, v84);
                v87 = v86;
                v89 = v88;

                v54 = sub_1AF750DEC(v53, *(&v53 + 1), v85, v87, v89, 0, 1);
                sub_1AF0D8F38(&v145);

                if (!v54)
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  goto LABEL_73;
                }
              }

              v55 = objc_allocWithZone(MEMORY[0x1E6974128]);
              swift_unknownObjectRetain();
              v56 = [v55 init];
              v57 = [v56 colorAttachments];
              v58 = [v57 objectAtIndexedSubscript_];

              [v58 setTexture_];
              [v58 setLoadAction_];
              [v58 setStoreAction_];
              [v58 setClearColor_];
              [v58 setLevel_];
              swift_unknownObjectRelease();

              sub_1AF7180FC();

              v119 = sub_1AF6F3D60(v56, 0, 0);
              v116 = v56;
              sub_1AF474680(&v152);

              sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0x7A697261656E696CLL, 0xEE00687470654465, MEMORY[0x1E69E7CC0], v158);
              __src[8] = v158[8];
              __src[9] = v158[9];
              __src[4] = v158[4];
              __src[5] = v158[5];
              __src[6] = v158[6];
              __src[7] = v158[7];
              __src[0] = v158[0];
              __src[1] = v158[1];
              __src[2] = v158[2];
              __src[3] = v158[3];
              __src[14] = v155;
              __src[15] = v156;
              __src[10] = v158[10];
              __src[11] = v152;
              *&__src[16] = v157;
              __src[12] = v153;
              __src[13] = v154;
              sub_1AF5FF2F0(&v128);
              v130 = xmmword_1AFE68E40;
              v131 = xmmword_1AFE68E40;
              v128 = xmmword_1AFE68E40;
              v129 = xmmword_1AFE68E40;
              *(&__src[16] + 8) = xmmword_1AFE68E40;
              *(&__src[17] + 8) = xmmword_1AFE68E40;
              *(&__src[18] + 8) = xmmword_1AFE68E40;
              *(&__src[19] + 8) = xmmword_1AFE68E40;
              sub_1AFDFF308();
              sub_1AF6021F8(v158, __dst);
              sub_1AF89747C(v127);
              sub_1AF602254(v158);
              v59 = *(&v152 + 1);
              v61 = *(&v153 + 1);
              v60 = v153;
              v62 = v154;
              v63 = v155;
              MEMORY[0x1B271ACB0](v152);
              MEMORY[0x1B271ACB0](v59);
              MEMORY[0x1B271ACB0](v60);
              MEMORY[0x1B271ACB0](v61);
              MEMORY[0x1B271ACB0](v62);
              MEMORY[0x1B271ACB0](*(&v62 + 1));
              MEMORY[0x1B271ACB0](v63);
              MEMORY[0x1B271ACB0](*(&v63 + 1));
              MEMORY[0x1B271ACB0](v156);
              MEMORY[0x1B271ACB0](*(&v156 + 1));
              sub_1AFDFF2A8();
              v173 = v128;
              v174 = v129;
              v175 = v130;
              v176 = v131;
              sub_1AF5FF304();
              sub_1AFDFF2A8();
              sub_1AFDFF2A8();
              MEMORY[0x1B271ACB0](3);
              sub_1AFDFF2A8();
              sub_1AFDFF2A8();
              v64 = sub_1AFDFF2E8();
              memcpy(__dst, __src, sizeof(__dst));
              v161 = 0;
              v160 = 0;
              v162 = 3;
              v163 = 0;
              v164 = 0;
              v165 = 2;
              v168 = 0;
              v166 = 0;
              v167 = 0;
              v169 = 257;
              v170 = v132;
              v171 = v133;
              v172 = v64;
              v65 = sub_1AF730058(__dst, 0);
              v67 = v66;
              v69 = v68;
              LODWORD(v56) = v68;

              sub_1AF602304(__dst);
              if (v56)
              {
                v70 = 0;
              }

              else
              {
                swift_unknownObjectRetain();
                v69 = 0;
                v70 = v65;
              }

              sub_1AF6022A8(v65, v67, v69);
              swift_getObjectType();
              [v119 setRenderPipelineState_];
              CFXTextureDescriptorMakeDefault(v122);
              v90 = *(v117 + 656);
              v125[6] = *(v117 + 640);
              v125[7] = v90;
              v126[0] = *(v117 + 672);
              *(v126 + 9) = *(v117 + 681);
              v91 = *(v117 + 592);
              v125[2] = *(v117 + 576);
              v125[3] = v91;
              v92 = *(v117 + 624);
              v125[4] = *(v117 + 608);
              v125[5] = v92;
              v93 = *(v117 + 560);
              v125[0] = *(v117 + 544);
              v125[1] = v93;
              if (sub_1AF448314(v125) != 1)
              {
                v94 = *(&v125[0] + 1);
                v95 = swift_getObjectType();
                v96 = *(v94 + 80);
                swift_unknownObjectRetain();
                v97 = v96(v95, v94);
                swift_unknownObjectRelease();
                sub_1AF46749C(v97, v122);
                v98 = *(v117 + 656);
                v120[6] = *(v117 + 640);
                v120[7] = v98;
                v121[0] = *(v117 + 672);
                *(v121 + 9) = *(v117 + 681);
                v99 = *(v117 + 592);
                v120[2] = *(v117 + 576);
                v120[3] = v99;
                v100 = *(v117 + 624);
                v120[4] = *(v117 + 608);
                v120[5] = v100;
                v101 = *(v117 + 560);
                v120[0] = *(v117 + 544);
                v120[1] = v101;
                if (sub_1AF448314(v120) != 1)
                {
                  v102 = *(&v120[0] + 1);
                  v103 = swift_getObjectType();
                  v104 = *(v102 + 80);
                  swift_unknownObjectRetain();
                  v104(v103, v102);
                  v106 = v105;
                  swift_unknownObjectRelease();
                  sub_1AF4674A4(v106, v122);
                  sub_1AF46748C(*(v117 + 288), v122);
                  sub_1AFA4DCA8(v122);
                  sub_1AF48F3EC(v122);
                  sub_1AF4674D0(v122);
                  sub_1AF8DB86C(v122[0], v122[1], v123 | (v124 << 16));
                  v107 = 1.0;
                  v108 = 0;
                  if (v8 >= 1.0)
                  {
                    v109 = &selRef_numberWithBool_;
                  }

                  else
                  {
                    v109 = &selRef_numberWithBool_;
                    do
                    {
                      ++v108;
                      v107 = v107 * 0.5;
                    }

                    while (v107 > v8);
                  }

                  [v118 v109[98]];
                  [v118 textureType];
                  [v119 setFragmentTexture:sub_1AFDFD9B8() atIndex:0];
                  sub_1AFB19490(v114, v117);
                  sub_1AF6F5B7C(1);

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  goto LABEL_72;
                }
              }

              goto LABEL_79;
            }

            if (v6 <= v8)
            {
              v37 = v6;
            }

            else
            {
              v37 = v8;
            }

            if ((v4 & 0x10000) == 0)
            {
              v37 = v6;
            }

            goto LABEL_39;
          }

          v18 = v142;
          v19 = 32;
          if (!v142)
          {
            v19 = 1;
          }

          if (v143)
          {
            v18 = v19;
          }

          v186 = v140;
          v187 = v141;
          v188 = v140;
          v189 = v141;
          v190 = v138;
          v191 = v18;
          v192 = v139;
          v193 = 0u;
          v194 = 0u;
          v20 = *(v3 + 16);
          v21 = v20[38];
          *&__dst[80] = v20[39];
          *&__dst[64] = v21;
          v22 = v20[36];
          *&__dst[48] = v20[37];
          *&__dst[32] = v22;
          v23 = v20[41];
          *&__dst[128] = v20[42];
          v24 = v20[40];
          *&__dst[112] = v23;
          *&__dst[96] = v24;
          v25 = v20[34];
          *&__dst[16] = v20[35];
          *__dst = v25;
          *&__dst[137] = *(v20 + 681);

          if (sub_1AF448314(__dst) == 1)
          {
            goto LABEL_79;
          }

          v26 = *&__dst[8];
          v27 = swift_getObjectType();
          v28 = *(v26 + 80);
          swift_unknownObjectRetain();
          v29 = v28(v27, v26);
          v31 = v30;

          swift_unknownObjectRelease();
          v32 = sub_1AFBE973C(0, 2, v29, v31);
          v34 = v33;
          LODWORD(v27) = v35;

          v36 = sub_1AF750DEC(v16, *(&v16 + 1), v32, v34, v27, 0, 1);
          sub_1AF0D8F38(&v137);

          v118 = v36;
          if (v36)
          {
            v15 = v112;
            goto LABEL_21;
          }

          swift_unknownObjectRelease();
          if (!*(v11 + 16))
          {
LABEL_75:
          }
        }

        else if (!*(v11 + 16))
        {
          goto LABEL_75;
        }

        [swift_unknownObjectRetain() popDebugGroup];
        swift_unknownObjectRelease();
        goto LABEL_75;
      }
    }
  }

  return result;
}

uint64_t sub_1AFA50650()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  sub_1AFA52084(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ProjectionMatrix;
  *(inited + 40) = &off_1F2511D20;
  sub_1AF5F58E4(inited, 1, v4);
  swift_setDeallocating();
  v2 = v4[1];
  *(v0 + 16) = v4[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v5;
  return v0;
}

_OWORD *sub_1AFA50774(void *a1, int a2, uint64_t a3, float a4)
{
  v8 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  if (v8 == 2)
  {
    v9 = 0;
    if (a3 != 3)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1AFA52084(0, &qword_1ED726930, sub_1AF6AF6D4);
    v10 = swift_allocObject();
    v10[1] = xmmword_1AFE4C680;
    v10[2] = xmmword_1AFE969A0;
    v10[3] = xmmword_1AFE969B0;
    v10[4] = xmmword_1AFE969C0;
    goto LABEL_9;
  }

  v11 = [swift_unknownObjectRetain() contents];
  v12 = a1;
  v9 = &v11[a2];
  if (a3 == 3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (a3 == 2)
  {
    sub_1AFA52084(0, &qword_1ED726930, sub_1AF6AF6D4);
    v10 = swift_allocObject();
    v10[1] = xmmword_1AFE4C620;
    v10[2] = xmmword_1AFE969D0;
    v10[3] = xmmword_1AFE969E0;
  }

  else
  {
    if (a3 != 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    sub_1AFA52084(0, &qword_1ED726930, sub_1AF6AF6D4);
    v10 = swift_allocObject();
    v10[1] = xmmword_1AFE431C0;
    v10[2] = xmmword_1AFE969F0;
  }

LABEL_9:
  v13 = 0;
  v14 = vcvtps_s32_f32(a4);
  v45 = v10;
  v15 = v10 + 2;
  v16 = v9;
  do
  {
    v17 = v15;
    v46 = v15[v13];
    LODWORD(v18) = HIDWORD(*&v15[v13]);
    v19 = (2 * v14) | 1;
    v20 = v16;
    v21 = -v14;
    do
    {
      v22 = ((v21 * 1.1) / a4) * ((v21 * 1.1) / a4);
      v47 = expf(v18 * v22);
      v23 = __sincosf_stret(*&v46 * v22);
      *v20++ = vmul_n_f32(__PAIR64__(LODWORD(v23.__sinval), LODWORD(v23.__cosval)), v47);
      ++v21;
      --v19;
    }

    while (v19);
    ++v13;
    v16 += 128;
    v15 = v17;
  }

  while (v13 != a3);
  v24 = 0;
  v25 = 0.0;
  v26 = v9;
  result = v45;
  do
  {
    v28 = &v17[v24];
    v29 = v24 << 7;
    v30 = v9[128 * v24 + v14];
    v31 = v28[2];
    v32 = v28[3];
    v33 = vmuls_lane_f32(v30.f32[0], v30, 1);
    v25 = (v32 * (v33 + v33)) + (v25 + (v31 * (vmul_f32(v30, v30).f32[0] - vmuls_lane_f32(v30.f32[1], v30, 1))));
    if (v14)
    {
      v34 = 0;
      v35 = v31 + v31;
      v36 = v32 + v32;
      do
      {
        v25 = (v36 * (vmuls_lane_f32(v30.f32[0], v26[v34], 1) + (v30.f32[1] * COERCE_FLOAT(*&v26[v34])))) + (v25 + (v35 * (vmul_f32(v30, v26[v34]).f32[0] - vmuls_lane_f32(v30.f32[1], v26[v34], 1))));
        ++v34;
      }

      while (v14 != v34);
      v37 = 0;
      v38 = v31 * 4.0;
      v39 = v32 * 4.0;
      do
      {
        v40 = 0;
        v41 = v9[v37 + v29];
        v25 = (v36 * ((v30.f32[1] * v41.f32[0]) + vmuls_lane_f32(v30.f32[0], v41, 1))) + (v25 + (v35 * (vmul_f32(v30, v41).f32[0] - vmuls_lane_f32(v30.f32[1], v41, 1))));
        do
        {
          LODWORD(v42) = HIDWORD(*&v9[v37 + v29]);
          v25 = (v39 * (vmuls_lane_f32(v41.f32[0], v26[v40], 1) + (v42 * COERCE_FLOAT(*&v26[v40])))) + (v25 + (v38 * (vmul_f32(v41, v26[v40]).f32[0] - vmuls_lane_f32(v42, v26[v40], 1))));
          ++v40;
        }

        while (v14 != v40);
        ++v37;
      }

      while (v37 != v14);
    }

    ++v24;
    v26 += 128;
  }

  while (v24 != a3);
  v43 = a3 << 7;
  if (a3 << 7)
  {
    v44 = 1.0 / sqrtf(v25);
    do
    {
      *v9 = vmul_n_f32(*v9, v44);
      ++v9;
      --v43;
    }

    while (v43);
  }

  return result;
}

unint64_t sub_1AFA50B4C(uint64_t a1, uint64_t a2)
{
  v218 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 184);

  os_unfair_recursive_lock_lock_with_options();
  v5 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
  if (v6 == 2 || (v6 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v8 = *(v4 + 16);
    v9 = 32 * v7;
    v10 = v5;
    os_unfair_lock_lock(*(*(v4 + 32) + 32 * v7 + 24));
    os_unfair_recursive_lock_unlock();
    v11 = *(v8 + v10);
    os_unfair_lock_unlock(*(*(v4 + 32) + v9 + 24));

    result = sub_1AF3CAC48(v11);
    if ((result & 0xFF00000000) != 0x300000000)
    {
      v13 = *&result;
      if (*&result > 0.0 && a2 != 0)
      {
        v15 = *(a2 + 200);
        v16 = BYTE4(result);

        v17 = sub_1AFBE4EC4();

        v141 = *(a2 + 456);
        v150 = v16 + 1;
        v18 = v13 * 0.01;
        v160 = 0;
        v159 = 0;
        v162 = 0;
        v161 = 0;
        v158 = v13 * 0.01;
        v19 = (v13 * 0.01) * [v17 height];
        v155 = 1056964608;
        if (v19 <= 128.0)
        {
          if (v19 <= 32.0)
          {
            v22 = v16 + 1;
            if (v19 < 4.0)
            {
              v22 = 1;
            }

            v150 = v22;
            v21 = "_TtC3VFX18LensBlurPassSystem";
            v20 = 1056964608;
          }

          else
          {
            v20 = 1048576000;
            v155 = 1048576000;
            v21 = "compute_lens_blur_horizontal";
          }
        }

        else
        {
          v20 = 1040187392;
          v155 = 1040187392;
          v21 = "compute_downsample4";
        }

        v23 = v21 | 0x8000000000000000;

        v25 = sub_1AF0D9730(&v168, 9);
        if (*(v24 + 8))
        {
          *(v24 + 32) = v20;
          *(v24 + 40) = 1;
        }

        (v25)(&v168, 0);

        sub_1AF0D879C(&v177);
        v26 = v177;

        v27 = sub_1AF750DEC(v26, *(&v26 + 1), 0, 0, 0, 1, 1);

        if (v27)
        {
          sub_1AF0D8F38(&v177);
        }

        else
        {
          v148 = v23;
          v143 = v17;
          v145 = a2;
          v28 = v182;
          v29 = 32;
          if (!v182)
          {
            v29 = 1;
          }

          if (v183)
          {
            v28 = v29;
          }

          v209 = v180;
          v210 = v181;
          v211 = v180;
          v212 = v181;
          v213 = v178;
          v214 = v28;
          v215 = v179;
          v216 = 0u;
          v217 = 0u;
          v30 = *(v15 + 16);
          v31 = v30[39];
          v172 = v30[38];
          v173 = v31;
          v32 = v30[37];
          v170 = v30[36];
          v171 = v32;
          v33 = v30[42];
          v175 = v30[41];
          v176[0] = v33;
          v174 = v30[40];
          v34 = v30[35];
          v168 = v30[34];
          v169 = v34;
          *(v176 + 9) = *(v30 + 681);

          if (sub_1AF448314(&v168) == 1)
          {
            sub_1AFDFE518();
            __break(1u);
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          v35 = *(&v168 + 1);
          ObjectType = swift_getObjectType();
          v37 = *(v35 + 80);
          swift_unknownObjectRetain();
          v38 = v37(ObjectType, v35);
          v40 = v39;

          swift_unknownObjectRelease();
          v41 = sub_1AFBE973C(1, 2, v38, v40);
          v43 = v42;
          v45 = v44;

          v27 = sub_1AF750DEC(v26, *(&v26 + 1), v41, v43, v45, 0, 1);
          sub_1AF0D8F38(&v177);

          if (!v27)
          {

LABEL_100:
            swift_unknownObjectRelease();
          }

          v17 = v143;
          a2 = v145;
          v23 = v148;
        }

        v46 = [v27 height];
        if ((v18 * v46) <= 63.0)
        {
          v47 = v18 * v46;
        }

        else
        {
          v47 = 63.0;
        }

        v133 = vcvtps_s32_f32(v47);
        v162 = v133;
        CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 232), v150 << 10);
        v134 = v48;
        v135 = v49;
        v50 = sub_1AFA50774(v48, v49, v150, v47);
        v159 = vextq_s8(v50[2], v50[2], 8uLL).u64[0];
        CFXTextureDescriptorFromMTLTexture(v27, v51, v52, v53, v156);
        sub_1AFA52060(v156);
        sub_1AF4674C8(v150, v156);
        if (v150 < 2 || (v160 = vextq_s8(v50[3], v50[3], 8uLL).u64[0], v150 == 2))
        {
        }

        else
        {
          *v146 = v50[4];

          v161 = vextq_s8(*v146, *v146, 8uLL).u64[0];
        }

        v54 = *(a2 + 192);
        v55 = v156[0];
        v56 = v156[1];
        v57 = v157;

        v58 = sub_1AF750DEC(0xD000000000000014, 0x80000001AFF45020, v55, v56, v57, 0, 0);

        v142 = v58;
        if (v58)
        {

          v59 = sub_1AF750DEC(0xD000000000000012, 0x80000001AFF45040, v55, v56, v57, 0, 0);

          v140 = v59;
          if (v59)
          {
            v132 = v54;
            v139 = v27;
            v144 = v17;
            v137 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
            v136 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
            v131 = v136;
            sub_1AF7180FC();

            v60 = sub_1AF6F4158();
            swift_getObjectType();
            swift_unknownObjectRetain();
            v61 = sub_1AFDFCEC8();
            v147 = v60;
            [v60 pushDebugGroup_];

            sub_1AF6F3BD8();
            swift_unknownObjectRelease();
            sub_1AF88DCAC();
            v62 = swift_allocObject();
            *(v62 + 16) = xmmword_1AFE431C0;
            *(v62 + 32) = xmmword_1AFE96A00;
            *(v62 + 48) = 0;
            *(v62 + 64) = v141;
            *(v62 + 128) = 13;
            sub_1AFDFF308();

            v149 = v23;
            sub_1AFDFD038();
            v63 = *(v62 + 16);
            MEMORY[0x1B271ACB0](v63);
            if (v63)
            {
              v64 = v62 + 64;
              do
              {
                v65 = *(v64 - 32);
                v66 = *(v64 - 24);
                v67 = *(v64 - 16);
                v68 = *(v64 + 48);
                v206 = *(v64 + 32);
                v207 = v68;
                v208 = *(v64 + 64);
                v69 = *v64;
                v205 = *(v64 + 16);
                v204 = v69;
                if (v67 == 1)
                {
                  MEMORY[0x1B271ACB0](1);

                  sub_1AFDFD038();
                }

                else
                {
                  MEMORY[0x1B271ACB0](0);
                  MEMORY[0x1B271ACB0](v65);
                }

                sub_1AF87A0E4();
                sub_1AF4456D0(v65, v66, v67);
                v64 += 112;
                --v63;
              }

              while (v63);
            }

            MEMORY[0x1B271ACB0](0);
            v170 = v165;
            v171 = v166;
            *&v172 = v167;
            v168 = v163;
            v169 = v164;
            v70 = sub_1AFDFF2E8();
            *&v199 = 0xD000000000000013;
            *(&v199 + 1) = v149;
            v201 = 0;
            v200 = 0;
            v202 = v62;
            v203 = v70;
            v71 = sub_1AF73BD84(&v199, 0, v137, v136);
            v73 = v72;

            v74 = v142;
            v75 = v60;
            if (!v71)
            {
              goto LABEL_85;
            }

            [v60 setTexture:v144 atIndex:0];
            [v60 setTexture:v27 atIndex:1];
            [v60 setBytes:&v155 length:4 atIndex:0];
            sub_1AF6F448C(v71, v27, 0);
            v76 = [CFXGPUDeviceGetMTLDevice(*(a2 + 16)) supportsWritableArrayOfTextures];
            swift_unknownObjectRelease();
            v77 = &unk_1AFE96000;
            if (v76)
            {
              v78 = swift_allocObject();
              LOBYTE(v189) = 0;
              *(v78 + 16) = xmmword_1AFE431C0;
              *(v78 + 32) = xmmword_1AFE96A10;
              *(v78 + 48) = 0;
              *(v78 + 64) = v150;
              *(v78 + 128) = 14;
              sub_1AFDFF308();

              sub_1AFDFD038();
              MEMORY[0x1B271ACB0](1);
              v79 = *(v78 + 32);
              v80 = *(v78 + 40);
              v81 = *(v78 + 48);
              v82 = *(v78 + 112);
              v165 = *(v78 + 96);
              v166 = v82;
              LOBYTE(v167) = *(v78 + 128);
              v83 = *(v78 + 80);
              v163 = *(v78 + 64);
              v164 = v83;
              if (v81 == 1)
              {
                MEMORY[0x1B271ACB0](1);

                sub_1AFDFD038();
              }

              else
              {
                MEMORY[0x1B271ACB0](0);
                MEMORY[0x1B271ACB0](v79);
              }

              sub_1AF87A0E4();
              sub_1AF4456D0(v79, v80, v81);
              MEMORY[0x1B271ACB0](0);
              v102 = sub_1AFDFF2E8();
              *&v194 = 0xD00000000000001CLL;
              *(&v194 + 1) = 0x80000001AFF45110;
              v196 = 0;
              v195 = 0;
              v197 = v78;
              v198 = v102;
              v103 = sub_1AF73BD84(&v194, 0, v137, v136);
              v105 = v104;

              if (v103)
              {
                [v147 setTexture:v139 atIndex:0];
                [v147 setTexture:v142 atIndex:1];
                [v147 setTexture:v140 atIndex:2];
                [v147 setBytes:&v158 length:40 atIndex:0];
                sub_1AF6F458C(v134, v135, 0, 1);
                sub_1AF6F448C(v103, v139, 0);
                swift_unknownObjectRelease();
LABEL_74:
                v106 = swift_allocObject();
                v107 = v77[161];
                *(v106 + 16) = xmmword_1AFE431C0;
                *(v106 + 32) = v107;
                *(v106 + 48) = 0;
                *(v106 + 64) = v150;
                *(v106 + 128) = 14;
                sub_1AFDFF308();

                sub_1AFDFD038();
                MEMORY[0x1B271ACB0](1);
                v108 = *(v106 + 32);
                v109 = *(v106 + 40);
                v110 = *(v106 + 48);
                v111 = *(v106 + 112);
                v191 = *(v106 + 96);
                v192 = v111;
                v193 = *(v106 + 128);
                v112 = *(v106 + 80);
                v189 = *(v106 + 64);
                v190 = v112;
                if (v110 == 1)
                {
                  MEMORY[0x1B271ACB0](1);

                  sub_1AFDFD038();
                }

                else
                {
                  MEMORY[0x1B271ACB0](0);
                  MEMORY[0x1B271ACB0](v108);
                }

                sub_1AF87A0E4();
                sub_1AF4456D0(v108, v109, v110);
                MEMORY[0x1B271ACB0](0);
                v113 = sub_1AFDFF2E8();
                *&v184 = 0xD00000000000001ALL;
                *(&v184 + 1) = 0x80000001AFF450F0;
                v186 = 0;
                v185 = 0;
                v187 = v106;
                v188 = v113;
                v114 = sub_1AF73BD84(&v184, 0, v137, v136);
                v116 = v115;

                if (v114)
                {
                  v75 = v147;
                  [v147 setTexture:v74 atIndex:0];
                  [v147 setTexture:v140 atIndex:1];
                  [v147 setTexture:v139 atIndex:2];
                  v117 = [v114 threadExecutionWidth];
                  sub_1AFA52074(1, (v117 + 126) / v117 * v117, &v153);
                  v118 = v153;
                  v119 = v154;
                  sub_1AFA52074([v139 width], (objc_msgSend(v139, sel_height) + *(&v153 + 1) - 1) / *(&v153 + 1), &v153);
                  v138 = v153;
                  v120 = v154;
                  v121 = 15;
                  v122 = (16 * v150 * (*(&v118 + 1) + 2 * v133)) | 0xF;
                  if (v122 <= 0)
                  {
                    v121 = -(-v122 & 0xF);
                  }

                  [v147 setThreadgroupMemoryLength:v122 - v121 atIndex:0];
                  [v147 setComputePipelineState_];
                  v153 = v138;
                  v154 = v120;
                  v151 = v118;
                  v152 = v119;
                  [v147 dispatchThreadgroups:&v153 threadsPerThreadgroup:&v151];
LABEL_84:
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  goto LABEL_85;
                }
              }
            }

            else
            {
              v85 = swift_allocObject();
              LOBYTE(v189) = 0;
              *(v85 + 16) = xmmword_1AFE431C0;
              *(v85 + 32) = xmmword_1AFE96A10;
              *(v85 + 48) = 0;
              *(v85 + 64) = v150;
              *(v85 + 128) = 14;
              sub_1AFDFF308();

              sub_1AFDFD038();
              v86 = *(v85 + 16);
              MEMORY[0x1B271ACB0](v86);
              if (v86)
              {
                v87 = v85 + 64;
                do
                {
                  v88 = *(v87 - 32);
                  v89 = *(v87 - 24);
                  v90 = *(v87 - 16);
                  v91 = *(v87 + 48);
                  v165 = *(v87 + 32);
                  v166 = v91;
                  LOBYTE(v167) = *(v87 + 64);
                  v92 = *(v87 + 16);
                  v163 = *v87;
                  v164 = v92;
                  if (v90 == 1)
                  {
                    MEMORY[0x1B271ACB0](1);

                    sub_1AFDFD038();
                  }

                  else
                  {
                    MEMORY[0x1B271ACB0](0);
                    MEMORY[0x1B271ACB0](v88);
                  }

                  sub_1AF87A0E4();
                  sub_1AF4456D0(v88, v89, v90);
                  v87 += 112;
                  --v86;
                }

                while (v86);
              }

              MEMORY[0x1B271ACB0](0);
              v93 = sub_1AFDFF2E8();
              *&v194 = 0xD00000000000002BLL;
              *(&v194 + 1) = 0x80000001AFF450C0;
              v196 = 0;
              v195 = 0;
              v197 = v85;
              v198 = v93;
              v94 = sub_1AF73BD84(&v194, 0, v137, v136);
              v96 = v95;

              if (v94)
              {
                v130 = v94;
                [v147 setTexture:v27 atIndex:0];
                v97 = 0;
                v74 = v142;
                while (1)
                {
                  swift_getObjectType();
                  v98 = sub_1AF4736A0();
                  if (!v98)
                  {
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v75 = v147;
                    goto LABEL_85;
                  }

                  v99 = v97 + 1;
                  v75 = v147;
                  [v147 setTexture:v98 atIndex:v97 + 1];
                  swift_getObjectType();
                  v100 = sub_1AF4736A0();
                  if (!v100)
                  {
                    break;
                  }

                  [v147 setTexture:v100 atIndex:v97 + 4];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  ++v97;
                  if (v99 == v150)
                  {
                    [v147 setBytes:&v158 length:40 atIndex:0];
                    sub_1AF6F458C(v134, v135, 0, 1);
                    sub_1AF6F448C(v130, v27, 0);
                    swift_unknownObjectRelease();
                    v77 = &unk_1AFE96000;
                    goto LABEL_74;
                  }
                }

                swift_unknownObjectRelease();
                goto LABEL_84;
              }
            }

            swift_unknownObjectRelease();
            v75 = v147;
LABEL_85:
            [v75 popDebugGroup];

            swift_unknownObjectRelease();
            v123 = sub_1AF8509C8(0xD000000000000012, 0x80000001AFF45040);
            if (v123)
            {
              CFXTextureAllocatorPerFrameFree(*(v132 + 16), v123);
              swift_unknownObjectRelease();
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v124 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                v127 = v124;
                swift_once();
                v124 = v127;
              }

              *&v153 = 0;
              sub_1AF0D4F18(v124, &v153, 0xD000000000000027, 0x80000001AFF45090);
            }

            swift_unknownObjectRelease();
            v125 = sub_1AF8509C8(0xD000000000000014, 0x80000001AFF45020);
            if (v125)
            {
              CFXTextureAllocatorPerFrameFree(*(v132 + 16), v125);

              swift_unknownObjectRelease();
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v126 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                v128 = v126;
                swift_once();
                v126 = v128;
              }

              *&v153 = 0;
              sub_1AF0D4F18(v126, &v153, 0xD000000000000029, 0x80000001AFF45060);
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_100;
          }

          v84 = sub_1AF8509C8(0xD000000000000014, 0x80000001AFF45020);
          if (v84)
          {
            CFXTextureAllocatorPerFrameFree(*(v54 + 16), v84);

            swift_unknownObjectRelease();
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v101 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v129 = v101;
              swift_once();
              v101 = v129;
            }

            *&v168 = 0;
            sub_1AF0D4F18(v101, &v168, 0xD000000000000029, 0x80000001AFF45060);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1AFA52074@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

void sub_1AFA52084(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFEA18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AFA520D8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AFA52150()
{
  type metadata accessor for PostProcessSystem();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ProjectionMatrix;
  *(inited + 40) = &off_1F2511D20;
  sub_1AF5F58E4(inited, 1, v4);
  swift_setDeallocating();
  v2 = v4[1];
  *(v0 + 24) = v4[0];
  *(v0 + 40) = v2;
  *(v0 + 56) = v5;
  return v0;
}

void sub_1AFA5224C(uint64_t a1, uint64_t a2)
{
  v380 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 184);

  os_unfair_recursive_lock_lock_with_options();
  v5 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
  if (v6 == 2 || (v6 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v8 = (*(v4 + 16) + v5);
    v9 = 32 * v7;
    os_unfair_lock_lock(*(*(v4 + 32) + 32 * v7 + 24));
    os_unfair_recursive_lock_unlock();
    v10 = *v8;
    v11 = v8[1];
    os_unfair_lock_unlock(*(*(v4 + 32) + v9 + 24));

    if (!a2)
    {
      return;
    }

    v12 = *(a2 + 200);
    v13 = *(v12 + 24);
    if (v13 == 2)
    {
      return;
    }

    v14 = sub_1AFBE45A8(a1);
    if (v14)
    {
      v15 = v14;
      sub_1AFDFE238();

      sub_1AF7180FC();

      v207 = v13;
      v211 = sub_1AF6F3D60(v15, 0, 0);
      sub_1AF709E8C(v211);

      v253 = 0u;
      v252 = 0u;
      v251 = 0u;
      v250 = 0u;
      v249 = 0u;
      v248 = 0u;
      v247 = 0u;
      v16 = v10 | (v11 << 32);
      v246 = 0u;
      v204 = sub_1AF3CAB74(v16);
      v198 = v17;
      sub_1AF3CA934(v16, &v340);
      v18 = *&v340;
      v196 = v343.u8[8];
      v19 = sub_1AF3CAC48(v16);
      v178 = sub_1AF3CAD28(v16);
      v179 = v20;
      v209 = v21;
      v22 = sub_1AF3CAE14(v16, &v340);
      v23 = *(&v340 + 1);
      v24 = v340;
      v25 = *(&v340 + 2);
      v22.n128_u32[0] = v342.i32[0];
      v180 = v22.n128_u64[0];
      v181 = v341;
      v182 = v343;
      v183 = v345;
      v26 = v344.f32[0];
      v27 = v346.f32[0];
      v28 = *(v346.i64 + 4);
      v210 = v346.i8[12];
      v29 = sub_1AF3CAF2C(v16);
      v193 = v29;
      v30 = *(*(a2 + 280) + 80);
      if (v30)
      {
        v31 = v30;
        sub_1AF474680(v254);
        v224 = v254[0];
        v32 = v254[1];
        v217 = v254[3];
        v218 = v254[2];
        v213 = v254[5];
        v216 = v254[4];
        v195 = v254[6];
        v201 = v254[8];
        v202 = v254[7];
        v200 = v254[9];
        v33 = v254[10];

        v34 = 0;
      }

      else
      {
        v33 = 0;
        v224 = 0;
        v32 = 0;
        v217 = 0;
        v218 = 0;
        v213 = 0;
        v216 = 0;
        v195 = 0;
        v201 = 0;
        v202 = 0;
        v200 = 0;
        v34 = 1;
      }

      v206 = v15;
      v35 = *(a2 + 656);
      v287[6] = *(a2 + 640);
      v287[7] = v35;
      v288[0] = *(a2 + 672);
      v185 = (a2 + 544);
      *(v288 + 9) = *(a2 + 681);
      v36 = *(a2 + 592);
      v287[2] = *(a2 + 576);
      v287[3] = v36;
      v37 = *(a2 + 624);
      v287[4] = *(a2 + 608);
      v287[5] = v37;
      v38 = *(a2 + 560);
      v287[0] = *(a2 + 544);
      v203 = v33;
      *v289 = v33;
      v289[8] = v34;
      v199 = *&v289[1];
      v287[1] = v38;
      if (sub_1AF448314(v287) == 1)
      {
        goto LABEL_88;
      }

      v39 = *(&v287[0] + 1);
      ObjectType = swift_getObjectType();
      v41 = *(v39 + 112);
      swift_unknownObjectRetain();
      v42 = v41(ObjectType, v39);
      swift_unknownObjectRelease();
      v212 = v12;
      if (v42 == 1)
      {
        v55 = 5;
        v54 = 1;
      }

      else
      {
        v43 = *(a2 + 656);
        v346 = *(a2 + 640);
        v347 = v43;
        v348[0] = *(a2 + 672);
        *(v348 + 9) = *(a2 + 681);
        v44 = *(a2 + 592);
        v342 = *(a2 + 576);
        v343 = v44;
        v45 = *(a2 + 624);
        v344 = *(a2 + 608);
        v345 = v45;
        v46 = *(a2 + 560);
        v340 = *v185;
        v341 = v46;
        if (sub_1AF448314(&v340) == 1)
        {
          goto LABEL_88;
        }

        v47 = *(&v340 + 1);
        v48 = swift_getObjectType();
        v49 = *(v47 + 120);
        swift_unknownObjectRetain();
        v50 = v49(v48, v47);
        v189 = v51;
        v191 = v50;
        v186 = v53;
        v187 = v52;
        swift_unknownObjectRelease();
        v54 = 0;
        v55 = 0;
        v56.f64[0] = v187;
        v56.f64[1] = v186;
        v57.f64[0] = v191;
        v57.f64[1] = v189;
        v253 = vcvt_hight_f32_f64(vcvt_f32_f64(v57), v56);
      }

      v58 = 0;
      v208 = v207 & 0x10000000000;
      v59 = *&v19;
      v61 = *&v19 > 0.0 && (v19 & 0xFF00000000) != 0x300000000;
      v63 = v18 > 0.0 && v196 != 2;
      v192 = v54;
      v190 = v55;
      if ((v224 - 71) <= 0x2C && ((1 << (v224 - 71)) & 0x100000000401) != 0 || v224 == 553)
      {
        v64 = v193;
      }

      else
      {
        v64 = v193;
        if (v224 != 555)
        {
          v58 = 1;
        }
      }

      v194 = v42 != 1;
      v197 = *(a2 + 456);
      if (v64 == 4)
      {
        v65 = -1;
      }

      else
      {
        v65 = v64;
      }

      v66 = v58;
      sub_1AF88DCAC();
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1AFE4C690;
      *(v67 + 32) = xmmword_1AFE96A70;
      *(v67 + 48) = 0;
      *(v67 + 64) = v65;
      *(v67 + 128) = 14;
      *(v67 + 144) = xmmword_1AFE96A80;
      *(v67 + 160) = 0;
      *(v67 + 176) = (*(&v204 + 1) > 0.0) & ~v198;
      *(v67 + 240) = 13;
      *(v67 + 256) = xmmword_1AFE96A90;
      *(v67 + 272) = 0;
      v184 = v61;
      *(v67 + 288) = v61;
      *(v67 + 352) = 13;
      *(v67 + 368) = xmmword_1AFE96AA0;
      *(v67 + 384) = 0;
      *(v67 + 400) = (v209 ^ 1) & 1;
      *(v67 + 464) = 13;
      *(v67 + 480) = xmmword_1AFE96AB0;
      *(v67 + 496) = 0;
      *(v67 + 512) = (v210 ^ 1) & 1;
      *(v67 + 576) = 13;
      *(v67 + 592) = xmmword_1AFE96AC0;
      *(v67 + 608) = 0;
      v188 = v63;
      *(v67 + 624) = v63;
      *(v67 + 688) = 13;
      *(v67 + 704) = xmmword_1AFE96AD0;
      *(v67 + 720) = 0;
      *(v67 + 736) = BYTE5(v208);
      *(v67 + 800) = 13;
      *(v67 + 816) = xmmword_1AFE96AE0;
      *(v67 + 832) = 0;
      *(v67 + 848) = 0;
      *(v67 + 912) = 13;
      *(v67 + 928) = xmmword_1AFE96AF0;
      *(v67 + 944) = 0;
      *(v67 + 960) = v66;
      *(v67 + 1024) = 13;
      *(v67 + 1040) = xmmword_1AFE96B00;
      *(v67 + 1056) = 0;
      *(v67 + 1072) = v194;
      *(v67 + 1136) = 13;
      *(v67 + 1152) = xmmword_1AFE96B10;
      *(v67 + 1168) = 0;
      *(v67 + 1176) = *&v286[7];
      *(v67 + 1169) = *v286;
      *(v67 + 1184) = v197;
      *(v67 + 1248) = 13;
      sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0x6F72705F74736F70, 0xEC00000073736563, v67, v290);

      v283 = v290[8];
      v284 = v290[9];
      v285 = v290[10];
      v279 = v290[4];
      v280 = v290[5];
      v281 = v290[6];
      v282 = v290[7];
      v275 = v290[0];
      v276 = v290[1];
      v277 = v290[2];
      v278 = v290[3];
      sub_1AF5FF2F0(v226);
      *&v226[23] = xmmword_1AFE96910;
      *&v226[39] = xmmword_1AFE96910;
      *&v226[55] = 0x10000010F0000;
      v226[63] = 0;
      *&v226[1] = 271;
      v226[3] = v190;
      *&v226[4] = 256;
      v226[6] = v190;
      *&v226[7] = xmmword_1AFE96910;
      v226[0] = v192;
      v227 = *v226;
      v228 = *&v226[16];
      v229 = *&v226[32];
      v230 = *&v226[48];
      sub_1AFDFF308();
      sub_1AF6021F8(v290, &v340);
      sub_1AF89747C(&v266);
      sub_1AF602254(v290);
      MEMORY[0x1B271ACB0](v224);
      MEMORY[0x1B271ACB0](v32);
      MEMORY[0x1B271ACB0](v218);
      MEMORY[0x1B271ACB0](v217);
      MEMORY[0x1B271ACB0](v216);
      MEMORY[0x1B271ACB0](v213);
      MEMORY[0x1B271ACB0](v195);
      MEMORY[0x1B271ACB0](v202);
      MEMORY[0x1B271ACB0](v201);
      MEMORY[0x1B271ACB0](v200);
      sub_1AFDFF2A8();
      v236 = *v226;
      v237 = *&v226[16];
      v238 = *&v226[32];
      v239 = *&v226[48];
      sub_1AF5FF304();
      sub_1AFDFF2A8();
      sub_1AFDFF2A8();
      MEMORY[0x1B271ACB0](3);
      sub_1AFDFF2A8();
      sub_1AFDFF2A8();
      v233 = v268;
      v234 = v269;
      v235 = v270;
      v231 = v266;
      v232 = v267;
      v68 = sub_1AFDFF2E8();
      v348[0] = v283;
      v348[1] = v284;
      v348[2] = v285;
      v344 = v279;
      v345 = v280;
      v346 = v281;
      v347 = v282;
      v340 = v275;
      v341 = v276;
      v342 = v277;
      v343 = v278;
      v349 = v224;
      v350 = v32;
      v351 = v218;
      v352 = v217;
      v353 = v216;
      v354 = v213;
      v355 = v195;
      v356 = v202;
      v357 = v201;
      v358 = v200;
      v359 = v203;
      v361 = WORD2(v199);
      v360 = v199;
      v362 = BYTE6(v199);
      v363 = v227;
      v364 = v228;
      v365 = v229;
      v366 = v230;
      v368 = 0;
      v367 = 0;
      v369 = 3;
      v370 = 0;
      v371 = 0;
      v372 = 2;
      v375 = 0;
      v373 = 0;
      v374 = 0;
      v376 = 257;
      v377 = v244;
      v378 = v245;
      v379 = v68;
      v69 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

      v70 = sub_1AF730058(&v340, 0);
      v72 = v71;
      v74 = v73;
      v75 = v73;

      if (v75)
      {
        sub_1AF6022A8(v70, v72, v74);
        sub_1AF602304(&v340);

        swift_unknownObjectRelease();

        return;
      }

      v76 = swift_unknownObjectRetain();
      sub_1AF6022A8(v76, v72, 0);
      swift_getObjectType();
      [v211 setRenderPipelineState_];
      v225 = sub_1AFBE4EC4();
      CFXTextureDescriptorMakeDefault(&v242);
      v77 = *(a2 + 656);
      v272 = *(a2 + 640);
      v273 = v77;
      v274[0] = *(a2 + 672);
      *(v274 + 9) = *(a2 + 681);
      v78 = *(a2 + 592);
      v268 = *(a2 + 576);
      v269 = v78;
      v79 = *(a2 + 624);
      v270 = *(a2 + 608);
      v271 = v79;
      v80 = *(a2 + 560);
      v266 = *v185;
      v267 = v80;
      if (sub_1AF448314(&v266) == 1)
      {
        goto LABEL_88;
      }

      v81 = *(&v266 + 1);
      v82 = swift_getObjectType();
      v83 = *(v81 + 80);
      swift_unknownObjectRetain();
      v84 = v83(v82, v81);
      swift_unknownObjectRelease();
      sub_1AF46749C(v84, &v242);
      v85 = *(a2 + 656);
      v264[6] = *(a2 + 640);
      v264[7] = v85;
      v265[0] = *(a2 + 672);
      *(v265 + 9) = *(a2 + 681);
      v86 = *(a2 + 592);
      v264[2] = *(a2 + 576);
      v264[3] = v86;
      v87 = *(a2 + 624);
      v264[4] = *(a2 + 608);
      v264[5] = v87;
      v88 = *(a2 + 560);
      v264[0] = *v185;
      v264[1] = v88;
      if (sub_1AF448314(v264) == 1)
      {
        goto LABEL_88;
      }

      v89 = *(&v264[0] + 1);
      v90 = swift_getObjectType();
      v91 = *(v89 + 80);
      swift_unknownObjectRetain();
      v91(v90, v89);
      v93 = v92;
      swift_unknownObjectRelease();
      sub_1AF4674A4(v93, &v242);
      sub_1AF46748C(*(a2 + 288), &v242);
      sub_1AFA4DCA8(&v242);
      sub_1AF48F3EC(&v242);
      sub_1AF4674D0(&v242);
      v94.i32[1] = DWORD1(v242);
      v240 = v242;
      v241 = v243;
      if (((*(&v204 + 1) > 0.0) & ~v198) != 0)
      {
        sub_1AF0D879C(v291);
        v96 = *(&v291[0] + 1);
        v95 = *&v291[0];

        v97 = sub_1AF750DEC(v95, v96, 0, 0, 0, 1, 1);
        sub_1AF0D8F38(v291);

        *&v246 = v204;
      }

      else
      {
        v97 = 0;
      }

      v98 = v206;
      if (v188)
      {
        sub_1AF0D879C(&v292);
        v100 = *(&v292 + 1);
        v99 = v292;

        v101 = sub_1AF750DEC(v99, v100, 0, 0, 0, 1, 1);

        v222 = v101;
        if (v101)
        {
          sub_1AF0D8F38(&v292);
          v98 = v206;
        }

        else
        {
          v223 = v99;
          v214 = v97;
          v219 = v27;
          v102 = v28;
          v338 = 0u;
          v339 = 0u;
          v103 = *(v212 + 16);
          v104 = v103[34];
          v256 = v103[35];
          v105 = v103[39];
          v259 = v103[38];
          v260 = v105;
          v106 = v103[37];
          v257 = v103[36];
          v258 = v106;
          v107 = v103[42];
          v262 = v103[41];
          v263[0] = v107;
          v261 = v103[40];
          v108 = v297;
          v109 = 32;
          if (!v297)
          {
            v109 = 1;
          }

          if (v298)
          {
            v108 = v109;
          }

          v331 = v295;
          v332 = v296;
          v333 = v295;
          v334 = v296;
          v335 = v293;
          v336 = v108;
          v337 = v294;
          v255 = v104;
          *(v263 + 9) = *(v103 + 681);

          if (sub_1AF448314(&v255) == 1)
          {
            goto LABEL_88;
          }

          v110 = *(&v255 + 1);
          v111 = swift_getObjectType();
          v112 = *(v110 + 80);
          swift_unknownObjectRetain();
          v113 = v112(v111, v110);
          v115 = v114;

          swift_unknownObjectRelease();
          v116 = sub_1AFBE973C(0, 2, v113, v115);
          v118 = v117;
          LODWORD(v110) = v119;

          v222 = sub_1AF750DEC(v223, v100, v116, v118, v110, 0, 1);
          sub_1AF0D8F38(&v292);

          v98 = v206;
          v28 = v102;
          v27 = v219;
          v97 = v214;
        }
      }

      else
      {
        v222 = 0;
      }

      if (v184)
      {
        sub_1AF0D879C(&v299);
        v120 = *(&v299 + 1);
        v121 = v299;

        v122 = sub_1AF750DEC(v121, v120, 0, 0, 0, 1, 1);

        v220 = v122;
        if (v122)
        {
          sub_1AF0D8F38(&v299);
        }

        else
        {
          v221 = v120;
          v215 = v97;
          v205 = v24;
          v123 = v23;
          v124 = v25;
          v125 = v26;
          v126 = v27;
          v127 = v28;
          v128 = v304;
          v129 = 32;
          if (!v304)
          {
            v129 = 1;
          }

          if (v305)
          {
            v128 = v129;
          }

          v322 = v302;
          v323 = v303;
          v324 = v302;
          v325 = v303;
          v326 = v300;
          v327 = v128;
          v328 = v301;
          v329 = 0u;
          v330 = 0u;
          v130 = *(v212 + 16);
          v131 = v130[39];
          v259 = v130[38];
          v260 = v131;
          v132 = v130[37];
          v257 = v130[36];
          v258 = v132;
          v133 = v130[42];
          v262 = v130[41];
          v263[0] = v133;
          v261 = v130[40];
          v134 = v130[35];
          v255 = v130[34];
          v256 = v134;
          *(v263 + 9) = *(v130 + 681);

          if (sub_1AF448314(&v255) == 1)
          {
            goto LABEL_88;
          }

          v135 = *(&v255 + 1);
          v136 = swift_getObjectType();
          v137 = *(v135 + 80);
          swift_unknownObjectRetain();
          v138 = v137(v136, v135);
          v140 = v139;

          swift_unknownObjectRelease();
          v141 = sub_1AFBE973C(0, 2, v138, v140);
          v143 = v142;
          v145 = v144;

          v220 = sub_1AF750DEC(v121, v221, v141, v143, v145, 0, 1);
          sub_1AF0D8F38(&v299);

          v98 = v206;
          v28 = v127;
          v27 = v126;
          v26 = v125;
          v25 = v124;
          v23 = v123;
          v24 = v205;
          v97 = v215;
        }

        *(&v252 + 2) = (v59 * 0.01) * [v225 height];
      }

      else
      {
        v220 = 0;
      }

      if (v209)
      {
        if (v210)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v255 = v240;
        *&v256 = v241;
        v147 = sub_1AF445CB0(&v255);
        v255 = v240;
        *&v256 = v241;
        *v94.i32 = v147 / sub_1AF445CA8(&v255);
        *(&v246 + 3) = *v94.i32 + ((1.0 - *v94.i32) * fminf(fmaxf(*(&v178 + 1), 0.0), 1.0));
        DWORD2(v246) = fminf(fmaxf(*&v178, 0.0), 1.0);
        LODWORD(v247) = fminf(fmaxf(1.0 - *&v179, 0.0), 1.0);
        *(&v247 + 1) = *&v247 + *(&v179 + 1);
        if (v210)
        {
LABEL_72:
          if (!v208)
          {
LABEL_73:
            v146 = 0;
LABEL_84:
            if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) == 1 && [v225 sampleCount] >= 2)
            {
              swift_unknownObjectRelease();
              sub_1AF602304(&v340);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              [v211 setFragmentTexture:v225 atIndex:0];
              [v211 setFragmentTexture:v97 atIndex:1];
              [v211 setFragmentTexture:v222 atIndex:2];
              [v211 setFragmentTexture:v220 atIndex:3];
              [v211 setFragmentTexture:v146 atIndex:4];
              [v211 setFragmentBytes:&v246 length:128 atIndex:0];
              sub_1AF6F5B7C(1);
              swift_unknownObjectRelease();
              sub_1AF602304(&v340);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            return;
          }

          goto LABEL_76;
        }
      }

      DWORD2(v247) = v24;
      v148 = 0.31271 - (v23 * 0.1);
      v149 = (v25 * 0.1) + (((v148 * 2.87) + (v148 * (v148 * -3.0))) + -0.275);
      v150.i32[1] = 1002955394;
      v151 = vmlaq_n_f32(vaddq_f32(vmulq_n_f32(xmmword_1AFE42EE0, v148 / v149), xmmword_1AFE42EF0), xmmword_1AFE42F00, ((1.0 - v148) - v149) / v149);
      *&v152 = vdiv_f32(0x3F8487FD3F730553, *v151.f32);
      *(&v152 + 2) = 1.0872 / v151.f32[2];
      HIDWORD(v152) = 0;
      v248 = v152;
      v153 = vmul_f32(*&vextq_s8(v181, v181, 4uLL), 0x3D93DD983F371759);
      *v150.i32 = v153.f32[1] + ((0.2126 * v181.f32[0]) + v153.f32[0]);
      v154 = vdupq_lane_s32(v150, 0);
      *&v155 = vsubq_f32(vaddq_f32(vdupq_lane_s32(v180, 0), v181), v154).u64[0];
      *(&v155 + 2) = (*v180.i32 + v181.f32[2]) - *v150.i32;
      HIDWORD(v155) = 0;
      *&v152 = v26 + 1.0;
      v156 = vmul_f32(*&vextq_s8(v182, v182, 4uLL), 0x3D93DD983F371759);
      v154.f32[0] = v156.f32[1] + ((0.2126 * v182.f32[0]) + v156.f32[0]);
      *&v152 = vsubq_f32(vaddq_f32(v182, vdupq_lane_s32(*&v152, 0)), vdupq_lane_s32(*v154.f32, 0)).u64[0];
      *(&v152 + 2) = (v182.f32[2] + (v26 + 1.0)) - v154.f32[0];
      HIDWORD(v152) = 0;
      v249 = v155;
      v250 = v152;
      *v94.i32 = v27 + 1.0;
      v157 = vmul_f32(*&vextq_s8(v183, v183, 4uLL), 0x3D93DD983F371759);
      v151.f32[0] = v157.f32[1] + ((0.2126 * v183.f32[0]) + v157.f32[0]);
      *&v158 = vsubq_f32(vaddq_f32(v183, vdupq_lane_s32(v94, 0)), vdupq_lane_s32(*v151.f32, 0)).u64[0];
      *(&v158 + 2) = (v183.f32[2] + (v27 + 1.0)) - v151.f32[0];
      HIDWORD(v158) = 0;
      v251 = v158;
      *&v252 = v28;
      if (!v208)
      {
        goto LABEL_73;
      }

LABEL_76:
      sub_1AF0D879C(&v306);
      v159 = v306;

      v146 = sub_1AF750DEC(v159, *(&v159 + 1), 0, 0, 0, 1, 1);

      if (v146)
      {
        sub_1AF0D8F38(&v306);
        goto LABEL_84;
      }

      v160 = v311;
      v161 = 32;
      if (!v311)
      {
        v161 = 1;
      }

      if (v312)
      {
        v160 = v161;
      }

      v313 = v309;
      v314 = v310;
      v315 = v309;
      v316 = v310;
      v317 = v307;
      v318 = v160;
      v319 = v308;
      v320 = 0u;
      v321 = 0u;
      v162 = *(v212 + 16);
      v163 = v162[39];
      v259 = v162[38];
      v260 = v163;
      v164 = v162[37];
      v257 = v162[36];
      v258 = v164;
      v165 = v162[42];
      v262 = v162[41];
      v263[0] = v165;
      v261 = v162[40];
      v166 = v162[35];
      v255 = v162[34];
      v256 = v166;
      *(v263 + 9) = *(v162 + 681);

      if (sub_1AF448314(&v255) != 1)
      {
        v167 = *(&v255 + 1);
        v168 = swift_getObjectType();
        v169 = *(v167 + 80);
        swift_unknownObjectRetain();
        v170 = v169(v168, v167);
        v172 = v171;

        swift_unknownObjectRelease();
        v173 = sub_1AFBE973C(0, 2, v170, v172);
        v175 = v174;
        v177 = v176;

        v146 = sub_1AF750DEC(v159, *(&v159 + 1), v173, v175, v177, 0, 1);
        sub_1AF0D8F38(&v306);

        v98 = v206;
        goto LABEL_84;
      }

LABEL_88:
      sub_1AFDFE518();
      __break(1u);
      return;
    }
  }
}

uint64_t sub_1AFA53AE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 == 3)
  {
    v25 = 0x6E6F6974636E7566;
    v27 = 0xE900000000000020;
  }

  else
  {
    v12 = *(a7 + 16);
    if (v12)
    {
      v13 = (a7 + 40);
      do
      {
        v26 = *(v13 - 1);
        v28 = *v13;

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v26, v28);

        v13 += 2;
        --v12;
      }

      while (v12);
    }

    if (a6)
    {

      MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      MEMORY[0x1B2718AE0](a5, a6);
    }

    v25 = a3;
    v27 = a4;

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  }

  MEMORY[0x1B2718AE0]();
  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v25, v27);

  v14 = sub_1AFA53DDC(&unk_1F2500D58);
  sub_1AF974118(&unk_1F2500D78);
  v15 = *(v14 + 2);
  if (v15)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v16 = 0;
    v17 = (v14 + 56);
    do
    {
      v22 = *(v17 - 1);
      v21 = *v17;
      v23 = *(v14 + 2) - 1;

      swift_bridgeObjectRetain_n();
      if (v16 != v23)
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
      }

      if (v21)
      {
        MEMORY[0x1B2718AE0](v22, v21);

        MEMORY[0x1B2718AE0](539963168, 0xE400000000000000);
      }

      ++v16;
      v17 += 4;
      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v18 = sub_1AFAF888C();
      v20 = v19;

      MEMORY[0x1B2718AE0](v18, v20);
    }

    while (v15 != v16);
  }

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1AFA53D98()
{
  v0 = sub_1AFA562B8();

  return v0;
}

char *sub_1AFA53DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 2);
      v7 = v6 + v5;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v7 <= *(v3 + 3) >> 1)
      {
        if (*(v4 + 16))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v6 <= v7)
        {
          v9 = v6 + v5;
        }

        else
        {
          v9 = v6;
        }

        v3 = sub_1AF426264(isUniquelyReferenced_nonNull_native, v9, 1, v3);
        if (*(v4 + 16))
        {
LABEL_13:
          swift_arrayInitWithCopy();

          if (v5)
          {
            *(v3 + 2) += v5;
          }

          goto LABEL_4;
        }
      }

LABEL_4:
      ++v2;
      if (!--v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AFA53EE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v6 = sub_1AFB054AC(a4);
  v7 = *(v6 + 16);
  if (v7 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v8 = 0;
    v9 = (v6 + 40);
    while (1)
    {
      v10 = *(v9 - 1);
      v12 = *v9;
      v22 = v10;
      v23 = *v9;
      swift_bridgeObjectRetain_n();
      v13 = sub_1AFDFD188();

      if (v13)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v14 = sub_1AFDFD1F8();
        v16 = v15;
        v18 = v17;
        v20 = v19;

        v10 = MEMORY[0x1B27189E0](v14, v16, v18, v20);
        v12 = v21;

        v22 = v10;
        v23 = v12;
      }

      if (v8 == *(v6 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v10 = v22;
          v12 = v23;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v10 = sub_1AFAF888C();
      v12 = v11;

LABEL_7:
      MEMORY[0x1B2718AE0](v10, v12);
      ++v8;

      v9 += 4;
      if (v7 == v8)
      {
        goto LABEL_15;
      }
    }
  }

  if (v7)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
}

uint64_t sub_1AFA5413C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 56;
  do
  {
    v3 = *(v2 - 24);
    v4 = *(v2 - 16);

    MEMORY[0x1B2718AE0](v3, v4);

    if ((sub_1AFDFD188() & 1) == 0)
    {
      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    }

    v2 += 32;
    --v1;
  }

  while (v1);
  return 0;
}

uint64_t sub_1AFA54218()
{
  MEMORY[0x1B2718AE0]();
  MEMORY[0x1B2718AE0](31520, 0xE200000000000000);
  v0 = sub_1AFA53DDC(&unk_1F25010C0);
  sub_1AF974118(&unk_1F25010E0);
  v1 = *(v0 + 2);
  if (v1)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v2 = v0 + 56;
    do
    {
      v4 = *(v2 - 3);
      v5 = *(v2 - 2);

      v6 = sub_1AFDFD178();

      if (v6)
      {
        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        v3 = v4;
      }

      else
      {
        MEMORY[0x1B2718AE0](2619, 0xE200000000000000);
        v7 = sub_1AFAF888C();
        v5 = v8;

        v3 = v7;
      }

      MEMORY[0x1B2718AE0](v3, v5);
      v2 += 32;

      --v1;
    }

    while (v1);
  }

  MEMORY[0x1B2718AE0](670589, 0xE300000000000000);
  return 0x20746375727473;
}

uint64_t sub_1AFA543E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  MEMORY[0x1B2718AE0]();
  MEMORY[0x1B2718AE0](31520, 0xE200000000000000);
  v6 = a4(a3);
  v7 = *(v6 + 16);
  if (v7)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v8 = v6 + 56;
    do
    {
      v10 = *(v8 - 24);
      v11 = *(v8 - 16);

      v12 = sub_1AFDFD178();

      if (v12)
      {
        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        v9 = v10;
      }

      else
      {
        MEMORY[0x1B2718AE0](2619, 0xE200000000000000);
        v13 = sub_1AFAF888C();
        v11 = v14;

        v9 = v13;
      }

      MEMORY[0x1B2718AE0](v9, v11);
      v8 += 32;

      --v7;
    }

    while (v7);
  }

  MEMORY[0x1B2718AE0](670589, 0xE300000000000000);
  return 0x20746375727473;
}

uint64_t sub_1AFA54564(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1AFA56C3C(0, &qword_1EB638390, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 32) = inited;

  v5 = sub_1AFA53DDC(v4);
  swift_setDeallocating();
  sub_1AF974118(v4 + 32);
  v6 = *(v5 + 2);
  if (!v6)
  {
LABEL_7:

    return 0;
  }

  v7 = v5 + 40;
  v8 = *(v5 + 2);
  while (1)
  {
    v9 = *(v7 - 1) & 0xFFFFFFFFFFFFLL;
    if ((*v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(*v7) & 0xFLL;
    }

    if (v9)
    {
      break;
    }

    v7 += 4;
    if (!--v8)
    {
      goto LABEL_7;
    }
  }

  v45 = v5;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  v13 = v12 + v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v15 = v11, v13 > *(v11 + 3) >> 1))
  {
    if (v12 <= v13)
    {
      v16 = v12 + v6;
    }

    else
    {
      v16 = v12;
    }

    v15 = sub_1AF426264(isUniquelyReferenced_nonNull_native, v16, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v5 + 2))
  {
    swift_arrayInitWithCopy();

    *(v15 + 2) += v6;
  }

  else
  {
  }

  sub_1AF974118(&v45);
  v44 = v15;
  v17 = *(v15 + 2);
  v18 = *(v11 + 2);
  v19 = v18 + v17;

  v20 = swift_isUniquelyReferenced_nonNull_native();
  if ((v20 & 1) == 0 || (v21 = v11, v19 > *(v11 + 3) >> 1))
  {
    if (v18 <= v19)
    {
      v22 = v18 + v17;
    }

    else
    {
      v22 = v18;
    }

    v21 = sub_1AF426264(v20, v22, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v15 + 2))
  {
    swift_arrayInitWithCopy();

    if (v17)
    {
      *(v21 + 2) += v17;
    }
  }

  else
  {
  }

  sub_1AF974118(&v44);
  sub_1AFA5413C(v21);

  v23 = sub_1AFAF888C();
  v25 = v24;

  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1AFE431C0;
  *(v26 + 32) = v23;
  *(v26 + 40) = v25;
  *(v26 + 48) = 0;
  *(v26 + 56) = 0;
  v43 = v26;
  v27 = qword_1F2504678;
  v28 = *(v11 + 2);
  v29 = v28 + qword_1F2504678;

  v30 = swift_isUniquelyReferenced_nonNull_native();
  if ((v30 & 1) == 0 || v29 > *(v11 + 3) >> 1)
  {
    if (v28 <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v28;
    }

    v11 = sub_1AF426264(v30, v31, 1, MEMORY[0x1E69E7CC0]);
  }

  if (qword_1F2504678)
  {
    swift_arrayInitWithCopy();

    v32 = *(v11 + 2);
    if (v27)
    {
      v32 += v27;
      *(v11 + 2) = v32;
    }
  }

  else
  {

    v32 = *(v11 + 2);
  }

  v33 = *(v43 + 16);
  v34 = v32 + v33;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  if (v35 && v34 <= *(v11 + 3) >> 1)
  {
    if (*(v43 + 16))
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v32 <= v34)
    {
      v37 = v32 + v33;
    }

    else
    {
      v37 = v32;
    }

    v11 = sub_1AF426264(v35, v37, 1, v11);
    if (*(v43 + 16))
    {
LABEL_40:
      swift_arrayInitWithCopy();

      v36 = *(v11 + 2);
      if (v33)
      {
        v36 += v33;
        *(v11 + 2) = v36;
      }

      goto LABEL_47;
    }
  }

  v36 = *(v11 + 2);
LABEL_47:
  v38 = unk_1F25046B8;
  v39 = v36 + unk_1F25046B8;

  v40 = swift_isUniquelyReferenced_nonNull_native();
  if (!v40 || v39 > *(v11 + 3) >> 1)
  {
    if (v36 <= v39)
    {
      v41 = v36 + v38;
    }

    else
    {
      v41 = v36;
    }

    v11 = sub_1AF426264(v40, v41, 1, v11);
  }

  if (unk_1F25046B8)
  {
    swift_arrayInitWithCopy();

    if (v38)
    {
      *(v11 + 2) += v38;
    }
  }

  else
  {
  }

  sub_1AFA56C3C(0, &unk_1ED723290, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  v42 = sub_1AFA5413C(v11);

  return v42;
}

uint64_t sub_1AFA54A60(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  sub_1AFA56C3C(0, &qword_1EB638390, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 32) = inited;

  v5 = sub_1AFA53DDC(v4);
  swift_setDeallocating();
  sub_1AF974118(v4 + 32);
  v6 = *(v5 + 2);
  if (!v6)
  {
LABEL_7:

    return 0;
  }

  v7 = v5 + 40;
  v8 = *(v5 + 2);
  while (1)
  {
    v9 = *(v7 - 1) & 0xFFFFFFFFFFFFLL;
    if ((*v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(*v7) & 0xFLL;
    }

    if (v9)
    {
      break;
    }

    v7 += 4;
    if (!--v8)
    {
      goto LABEL_7;
    }
  }

  v45 = v5;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  v13 = v12 + v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v15 = v11, v13 > *(v11 + 3) >> 1))
  {
    if (v12 <= v13)
    {
      v16 = v12 + v6;
    }

    else
    {
      v16 = v12;
    }

    v15 = sub_1AF426264(isUniquelyReferenced_nonNull_native, v16, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v5 + 2))
  {
    swift_arrayInitWithCopy();

    *(v15 + 2) += v6;
  }

  else
  {
  }

  sub_1AF974118(&v45);
  v44 = v15;
  v17 = *(v15 + 2);
  v18 = *(v11 + 2);
  v19 = v18 + v17;

  v20 = swift_isUniquelyReferenced_nonNull_native();
  if ((v20 & 1) == 0 || (v21 = v11, v19 > *(v11 + 3) >> 1))
  {
    if (v18 <= v19)
    {
      v22 = v18 + v17;
    }

    else
    {
      v22 = v18;
    }

    v21 = sub_1AF426264(v20, v22, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v15 + 2))
  {
    swift_arrayInitWithCopy();

    if (v17)
    {
      *(v21 + 2) += v17;
    }
  }

  else
  {
  }

  sub_1AF974118(&v44);
  sub_1AFA5413C(v21);

  v23 = sub_1AFAF888C();
  v25 = v24;

  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1AFE431C0;
  *(v26 + 32) = v23;
  *(v26 + 40) = v25;
  *(v26 + 48) = 0;
  *(v26 + 56) = 0;
  v43 = v26;
  v27 = qword_1F25046F8;
  v28 = *(v11 + 2);
  v29 = v28 + qword_1F25046F8;

  v30 = swift_isUniquelyReferenced_nonNull_native();
  if ((v30 & 1) == 0 || v29 > *(v11 + 3) >> 1)
  {
    if (v28 <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v28;
    }

    v11 = sub_1AF426264(v30, v31, 1, MEMORY[0x1E69E7CC0]);
  }

  if (qword_1F25046F8)
  {
    swift_arrayInitWithCopy();

    v32 = *(v11 + 2);
    if (v27)
    {
      v32 += v27;
      *(v11 + 2) = v32;
    }
  }

  else
  {

    v32 = *(v11 + 2);
  }

  v33 = *(v43 + 16);
  v34 = v32 + v33;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  if (v35 && v34 <= *(v11 + 3) >> 1)
  {
    if (*(v43 + 16))
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v32 <= v34)
    {
      v37 = v32 + v33;
    }

    else
    {
      v37 = v32;
    }

    v11 = sub_1AF426264(v35, v37, 1, v11);
    if (*(v43 + 16))
    {
LABEL_40:
      swift_arrayInitWithCopy();

      v36 = *(v11 + 2);
      if (v33)
      {
        v36 += v33;
        *(v11 + 2) = v36;
      }

      goto LABEL_47;
    }
  }

  v36 = *(v11 + 2);
LABEL_47:
  v38 = unk_1F2504738;
  v39 = v36 + unk_1F2504738;

  v40 = swift_isUniquelyReferenced_nonNull_native();
  if (!v40 || v39 > *(v11 + 3) >> 1)
  {
    if (v36 <= v39)
    {
      v41 = v36 + v38;
    }

    else
    {
      v41 = v36;
    }

    v11 = sub_1AF426264(v40, v41, 1, v11);
  }

  if (unk_1F2504738)
  {
    swift_arrayInitWithCopy();

    if (v38)
    {
      *(v11 + 2) += v38;
    }
  }

  else
  {
  }

  sub_1AFA56C3C(0, &unk_1ED723290, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  v42 = sub_1AFA5413C(v11);

  return v42;
}

uint64_t sub_1AFA54F5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1AFC0787C(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_1AFC0787C(v8 > 1, v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = (v11 + 32 * v7);
      v9[4] = v6;
      v9[5] = v5;
      v9[6] = 0;
      v9[7] = 0;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AFA55030(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v15 = sub_1AF9193E8(a4, a5, a6, a7, a8, a9);
  v16 = *(v15 + 16);
  if (v16 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v17 = 0;
    v18 = (v15 + 40);
    while (1)
    {
      v19 = *(v18 - 1);
      v21 = *v18;
      v31 = v19;
      v32 = *v18;
      swift_bridgeObjectRetain_n();
      v22 = sub_1AFDFD188();

      if (v22)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v23 = sub_1AFDFD1F8();
        v25 = v24;
        v27 = v26;
        v29 = v28;

        v19 = MEMORY[0x1B27189E0](v23, v25, v27, v29);
        v21 = v30;

        v31 = v19;
        v32 = v21;
      }

      if (v17 == *(v15 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v19 = v31;
          v21 = v32;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v19 = sub_1AFAF888C();
      v21 = v20;

LABEL_7:
      MEMORY[0x1B2718AE0](v19, v21);
      ++v17;

      v18 += 4;
      if (v16 == v17)
      {
        goto LABEL_15;
      }
    }
  }

  if (v16)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AFA552B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v14 = sub_1AF932090(a4, a5, a6, a7, a8);
  v15 = *(v14 + 16);
  if (v15 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v16 = 0;
    v17 = (v14 + 40);
    while (1)
    {
      v18 = *(v17 - 1);
      v20 = *v17;
      v30 = v18;
      v31 = *v17;
      swift_bridgeObjectRetain_n();
      v21 = sub_1AFDFD188();

      if (v21)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v22 = sub_1AFDFD1F8();
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v18 = MEMORY[0x1B27189E0](v22, v24, v26, v28);
        v20 = v29;

        v30 = v18;
        v31 = v20;
      }

      if (v16 == *(v14 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v18 = v30;
          v20 = v31;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v18 = sub_1AFAF888C();
      v20 = v19;

LABEL_7:
      MEMORY[0x1B2718AE0](v18, v20);
      ++v16;

      v17 += 4;
      if (v15 == v16)
      {
        goto LABEL_15;
      }
    }
  }

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
}

uint64_t sub_1AFA55558(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v14 = a8(a4, a5, a6, a7);
  v15 = *(v14 + 16);
  if (v15 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v16 = 0;
    v17 = (v14 + 40);
    while (1)
    {
      v18 = *(v17 - 1);
      v20 = *v17;
      v31 = v18;
      v32 = *v17;
      swift_bridgeObjectRetain_n();
      v21 = sub_1AFDFD188();

      if (v21)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v22 = sub_1AFDFD1F8();
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v18 = MEMORY[0x1B27189E0](v22, v24, v26, v28);
        v20 = v29;

        v31 = v18;
        v32 = v20;
      }

      if (v16 == *(v14 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v18 = v31;
          v20 = v32;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v18 = sub_1AFAF888C();
      v20 = v19;

LABEL_7:
      MEMORY[0x1B2718AE0](v18, v20);
      ++v16;

      v17 += 4;
      if (v15 == v16)
      {
        goto LABEL_15;
      }
    }
  }

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return a1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AFA557D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v15 = sub_1AF9B6F9C(a4, a5, a6, a7, a8, a9);
  v16 = *(v15 + 16);
  if (v16 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v17 = 0;
    v18 = (v15 + 40);
    while (1)
    {
      v19 = *(v18 - 1);
      v21 = *v18;
      v31 = v19;
      v32 = *v18;
      swift_bridgeObjectRetain_n();
      v22 = sub_1AFDFD188();

      if (v22)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v23 = sub_1AFDFD1F8();
        v25 = v24;
        v27 = v26;
        v29 = v28;

        v19 = MEMORY[0x1B27189E0](v23, v25, v27, v29);
        v21 = v30;

        v31 = v19;
        v32 = v21;
      }

      if (v17 == *(v15 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v19 = v31;
          v21 = v32;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v19 = sub_1AFAF888C();
      v21 = v20;

LABEL_7:
      MEMORY[0x1B2718AE0](v19, v21);
      ++v17;

      v18 += 4;
      if (v16 == v17)
      {
        goto LABEL_15;
      }
    }
  }

  if (v16)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
}

uint64_t sub_1AFA55A68(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v10 = a6(a4, a5);
  v11 = *(v10 + 16);
  if (v11 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v12 = 0;
    v13 = (v10 + 40);
    while (1)
    {
      v14 = *(v13 - 1);
      v16 = *v13;
      v27 = v14;
      v28 = *v13;
      swift_bridgeObjectRetain_n();
      v17 = sub_1AFDFD188();

      if (v17)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v18 = sub_1AFDFD1F8();
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v14 = MEMORY[0x1B27189E0](v18, v20, v22, v24);
        v16 = v25;

        v27 = v14;
        v28 = v16;
      }

      if (v12 == *(v10 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v14 = v27;
          v16 = v28;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v14 = sub_1AFAF888C();
      v16 = v15;

LABEL_7:
      MEMORY[0x1B2718AE0](v14, v16);
      ++v12;

      v13 += 4;
      if (v11 == v12)
      {
        goto LABEL_15;
      }
    }
  }

  if (v11)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return a1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AFA55CD0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v10 = sub_1AF97D76C(a4, a5, a6);
  v11 = *(v10 + 16);
  if (v11 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v12 = 0;
    v13 = (v10 + 40);
    while (1)
    {
      v14 = *(v13 - 1);
      v16 = *v13;
      v26 = v14;
      v27 = *v13;
      swift_bridgeObjectRetain_n();
      v17 = sub_1AFDFD188();

      if (v17)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v18 = sub_1AFDFD1F8();
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v14 = MEMORY[0x1B27189E0](v18, v20, v22, v24);
        v16 = v25;

        v26 = v14;
        v27 = v16;
      }

      if (v12 == *(v10 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v14 = v26;
          v16 = v27;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v14 = sub_1AFAF888C();
      v16 = v15;

LABEL_7:
      MEMORY[0x1B2718AE0](v14, v16);
      ++v12;

      v13 += 4;
      if (v11 == v12)
      {
        goto LABEL_15;
      }
    }
  }

  if (v11)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
}

uint64_t sub_1AFA55F38(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t))
{

  v6 = MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v7 = a4(v6);
  v8 = *(v7 + 16);
  if (v8 && (a3 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
LABEL_5:
    v9 = 0;
    v10 = (v7 + 40);
    while (1)
    {
      v11 = *(v10 - 1);
      v13 = *v10;
      v24 = v11;
      v25 = *v10;
      swift_bridgeObjectRetain_n();
      v14 = sub_1AFDFD188();

      if (v14)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v15 = sub_1AFDFD1F8();
        v17 = v16;
        v19 = v18;
        v21 = v20;

        v11 = MEMORY[0x1B27189E0](v15, v17, v19, v21);
        v13 = v22;

        v24 = v11;
        v25 = v13;
      }

      if (v9 == *(v7 + 16) - 1)
      {
        if (a3)
        {
          goto LABEL_7;
        }
      }

      else
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
        if (a3)
        {
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          v11 = v24;
          v13 = v25;
          goto LABEL_7;
        }
      }

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v11 = sub_1AFAF888C();
      v13 = v12;

LABEL_7:
      MEMORY[0x1B2718AE0](v11, v13);
      ++v9;

      v10 += 4;
      if (v8 == v9)
      {
        goto LABEL_15;
      }
    }
  }

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_15:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return a1;
}

uint64_t sub_1AFA56198(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  MEMORY[0x1B2718AE0]();
  MEMORY[0x1B2718AE0](175841321, 0xE400000000000000);
  v6 = sub_1AF97EEC4(a3, a4);
  sub_1AF441DD8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v6;
  v8 = inited + 32;
  v9 = sub_1AFA53DDC(inited);
  swift_setDeallocating();
  sub_1AF974118(v8);
  sub_1AFA5413C(v9);

  v10 = sub_1AFAF888C();
  v12 = v11;

  MEMORY[0x1B2718AE0](v10, v12);

  MEMORY[0x1B2718AE0](2685, 0xE200000000000000);
  return 0x2820726F66;
}

uint64_t sub_1AFA562B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF97A93C(a1, a2);
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_7:

    return 0;
  }

  v4 = (v2 + 40);
  v5 = *(v2 + 16);
  while (1)
  {
    v6 = *(v4 - 1) & 0xFFFFFFFFFFFFLL;
    if ((*v4 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(*v4) & 0xFLL;
    }

    if (v6)
    {
      break;
    }

    v4 += 4;
    if (!--v5)
    {
      goto LABEL_7;
    }
  }

  v43 = v2;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = *(MEMORY[0x1E69E7CC0] + 16);
  v10 = v9 + v3;
  v11 = v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v13 = v8, v10 > *(v8 + 3) >> 1))
  {
    if (v9 <= v10)
    {
      v14 = v9 + v3;
    }

    else
    {
      v14 = v9;
    }

    v13 = sub_1AF426264(isUniquelyReferenced_nonNull_native, v14, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v11 + 16))
  {
    swift_arrayInitWithCopy();

    *(v13 + 2) += v3;
  }

  else
  {
  }

  sub_1AF974118(&v43);
  v42 = v13;
  v15 = *(v13 + 2);
  v16 = *(v8 + 2);
  v17 = v16 + v15;

  v18 = swift_isUniquelyReferenced_nonNull_native();
  if ((v18 & 1) == 0 || (v19 = v8, v17 > *(v8 + 3) >> 1))
  {
    if (v16 <= v17)
    {
      v20 = v16 + v15;
    }

    else
    {
      v20 = v16;
    }

    v19 = sub_1AF426264(v18, v20, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v13 + 2))
  {
    swift_arrayInitWithCopy();

    if (v15)
    {
      *(v19 + 2) += v15;
    }
  }

  else
  {
  }

  sub_1AF974118(&v42);
  sub_1AFA5413C(v19);

  v21 = sub_1AFAF888C();
  v23 = v22;

  sub_1AFA56C3C(0, &qword_1EB638390, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v21;
  *(inited + 40) = v23;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v41 = inited;
  v25 = qword_1F2505BF0;
  v26 = *(v8 + 2);
  v27 = v26 + qword_1F2505BF0;

  v28 = swift_isUniquelyReferenced_nonNull_native();
  if ((v28 & 1) == 0 || v27 > *(v8 + 3) >> 1)
  {
    if (v26 <= v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = v26;
    }

    v8 = sub_1AF426264(v28, v29, 1, MEMORY[0x1E69E7CC0]);
  }

  if (qword_1F2505BF0)
  {
    swift_arrayInitWithCopy();

    v30 = *(v8 + 2);
    if (v25)
    {
      v30 += v25;
      *(v8 + 2) = v30;
    }
  }

  else
  {

    v30 = *(v8 + 2);
  }

  v31 = *(v41 + 16);
  v32 = v30 + v31;

  v33 = swift_isUniquelyReferenced_nonNull_native();
  if (v33 && v32 <= *(v8 + 3) >> 1)
  {
    if (*(v41 + 16))
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v30 <= v32)
    {
      v35 = v30 + v31;
    }

    else
    {
      v35 = v30;
    }

    v8 = sub_1AF426264(v33, v35, 1, v8);
    if (*(v41 + 16))
    {
LABEL_40:
      swift_arrayInitWithCopy();

      v34 = *(v8 + 2);
      if (v31)
      {
        v34 += v31;
        *(v8 + 2) = v34;
      }

      goto LABEL_47;
    }
  }

  v34 = *(v8 + 2);
LABEL_47:
  v36 = unk_1F2505C30;
  v37 = v34 + unk_1F2505C30;

  v38 = swift_isUniquelyReferenced_nonNull_native();
  if (!v38 || v37 > *(v8 + 3) >> 1)
  {
    if (v34 <= v37)
    {
      v39 = v34 + v36;
    }

    else
    {
      v39 = v34;
    }

    v8 = sub_1AF426264(v38, v39, 1, v8);
  }

  if (unk_1F2505C30)
  {
    swift_arrayInitWithCopy();

    if (v36)
    {
      *(v8 + 2) += v36;
    }
  }

  else
  {
  }

  sub_1AFA56C3C(0, &unk_1ED723290, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  v40 = sub_1AFA5413C(v8);

  return v40;
}

uint64_t sub_1AFA56740(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1AFA56C3C(0, &qword_1EB638390, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 32) = inited;

  v5 = sub_1AFA53DDC(v4);
  swift_setDeallocating();
  sub_1AF974118(v4 + 32);
  v6 = *(v5 + 2);
  if (!v6)
  {
LABEL_7:

    return 0;
  }

  v7 = v5 + 40;
  v8 = *(v5 + 2);
  while (1)
  {
    v9 = *(v7 - 1) & 0xFFFFFFFFFFFFLL;
    if ((*v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(*v7) & 0xFLL;
    }

    if (v9)
    {
      break;
    }

    v7 += 4;
    if (!--v8)
    {
      goto LABEL_7;
    }
  }

  v45 = v5;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  v13 = v12 + v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v15 = v11, v13 > *(v11 + 3) >> 1))
  {
    if (v12 <= v13)
    {
      v16 = v12 + v6;
    }

    else
    {
      v16 = v12;
    }

    v15 = sub_1AF426264(isUniquelyReferenced_nonNull_native, v16, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v5 + 2))
  {
    swift_arrayInitWithCopy();

    *(v15 + 2) += v6;
  }

  else
  {
  }

  sub_1AF974118(&v45);
  v44 = v15;
  v17 = *(v15 + 2);
  v18 = *(v11 + 2);
  v19 = v18 + v17;

  v20 = swift_isUniquelyReferenced_nonNull_native();
  if ((v20 & 1) == 0 || (v21 = v11, v19 > *(v11 + 3) >> 1))
  {
    if (v18 <= v19)
    {
      v22 = v18 + v17;
    }

    else
    {
      v22 = v18;
    }

    v21 = sub_1AF426264(v20, v22, 1, MEMORY[0x1E69E7CC0]);
  }

  if (*(v15 + 2))
  {
    swift_arrayInitWithCopy();

    if (v17)
    {
      *(v21 + 2) += v17;
    }
  }

  else
  {
  }

  sub_1AF974118(&v44);
  sub_1AFA5413C(v21);

  v23 = sub_1AFAF888C();
  v25 = v24;

  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1AFE431C0;
  *(v26 + 32) = v23;
  *(v26 + 40) = v25;
  *(v26 + 48) = 0;
  *(v26 + 56) = 0;
  v43 = v26;
  v27 = qword_1F25065E0;
  v28 = *(v11 + 2);
  v29 = v28 + qword_1F25065E0;

  v30 = swift_isUniquelyReferenced_nonNull_native();
  if ((v30 & 1) == 0 || v29 > *(v11 + 3) >> 1)
  {
    if (v28 <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v28;
    }

    v11 = sub_1AF426264(v30, v31, 1, MEMORY[0x1E69E7CC0]);
  }

  if (qword_1F25065E0)
  {
    swift_arrayInitWithCopy();

    v32 = *(v11 + 2);
    if (v27)
    {
      v32 += v27;
      *(v11 + 2) = v32;
    }
  }

  else
  {

    v32 = *(v11 + 2);
  }

  v33 = *(v43 + 16);
  v34 = v32 + v33;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  if (v35 && v34 <= *(v11 + 3) >> 1)
  {
    if (*(v43 + 16))
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v32 <= v34)
    {
      v37 = v32 + v33;
    }

    else
    {
      v37 = v32;
    }

    v11 = sub_1AF426264(v35, v37, 1, v11);
    if (*(v43 + 16))
    {
LABEL_40:
      swift_arrayInitWithCopy();

      v36 = *(v11 + 2);
      if (v33)
      {
        v36 += v33;
        *(v11 + 2) = v36;
      }

      goto LABEL_47;
    }
  }

  v36 = *(v11 + 2);
LABEL_47:
  v38 = unk_1F2506620;
  v39 = v36 + unk_1F2506620;

  v40 = swift_isUniquelyReferenced_nonNull_native();
  if (!v40 || v39 > *(v11 + 3) >> 1)
  {
    if (v36 <= v39)
    {
      v41 = v36 + v38;
    }

    else
    {
      v41 = v36;
    }

    v11 = sub_1AF426264(v40, v41, 1, v11);
  }

  if (unk_1F2506620)
  {
    swift_arrayInitWithCopy();

    if (v38)
    {
      *(v11 + 2) += v38;
    }
  }

  else
  {
  }

  sub_1AFA56C3C(0, &unk_1ED723290, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  v42 = sub_1AFA5413C(v11);

  return v42;
}

void sub_1AFA56C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CodeEmitter.Code);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *sub_1AFA56CA4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1AFDFC318();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v5 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1AFA56DB4(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v3 = sub_1AFDFC318();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *sub_1AFA56E30(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1AFDFC318();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_1AFA56F00(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1AFA56FE0(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1AFDFC318();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_1AFA56FE0(uint64_t a1)
{
  v2 = type metadata accessor for ScriptIndex();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ScriptIndex()
{
  result = qword_1ED7306B0;
  if (!qword_1ED7306B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1AFA57088(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1AFDFC318();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_1AFA57158(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1AFA56FE0(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1AFDFC318();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_1AFA5729C()
{
  result = sub_1AFDFC318();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1AFA57330()
{
  result = type metadata accessor for ScriptCompileAttempt();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1AFDFDD58();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1AFA57454(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  if (*(v8 + 84))
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = *(v8 + 64) + 1;
  }

  v11 = v9 | *(v6 + 80) & 0xF8;
  v12 = v11 <= 7 && ((*(v6 + 80) | *(v8 + 80)) & 0x100000) == 0;
  if (v12 && (v13 = (((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8, ((-10 - v9 - ((((((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) | v9) - v10 >= 0xFFFFFFFFFFFFFFE7))
  {
    v40 = v10;
    v14 = v13 + 8;
    (*(v6 + 16))(a1, a2, v5);
    v42 = a1;
    v15 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    *(v15 + 8) = *(v16 + 8);
    *v15 = v17;
    *(v15 + 9) = *(v16 + 9);
    v18 = ((v15 + 17) & 0xFFFFFFFFFFFFFFF8);
    v19 = (v16 + 17) & 0xFFFFFFFFFFFFFFF8;
    v20 = *v19;
    v19 += 15;
    v21 = v20;
    *v18 = v20;
    v22 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *(v19 & 0xFFFFFFFFFFFFFFF8);
    v22[1] = *((v19 & 0xFFFFFFFFFFFFFFF8) + 8);
    *((v22 + 23) & 0xFFFFFFFFFFFFFFF8) = *(((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((a2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v24;
    v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v26;
    v27 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v28;
    v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = *v30;
    *v29 = *v30;
    *(v29 + 8) = *(v30 + 8);
    v32 = (v27 + 31) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v28 + 31) & 0xFFFFFFFFFFFFFFF8;
    LOBYTE(v30) = *(v33 + 8);
    *v32 = *v33;
    *(v32 + 8) = v30;
    v41 = v9 + 9 + v32;
    v34 = v9 + 9 + v33;
    v35 = *(v8 + 48);

    v36 = v31;
    if (v35(v34 & ~v9, 1, AssociatedTypeWitness))
    {
      memcpy((v41 & ~v9), (v34 & ~v9), v40);
    }

    else
    {
      (*(v8 + 16))(v41 & ~v9, v34 & ~v9, AssociatedTypeWitness);
      (*(v8 + 56))(v41 & ~v9, 0, 1, AssociatedTypeWitness);
    }

    return v42;
  }

  else
  {
    v37 = *a2;
    *a1 = *a2;
    v38 = v37 + (((v11 | 7) + 16) & ~(v11 | 7));
  }

  return v38;
}

uint64_t sub_1AFA577D0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56) + 7;

  v5 = (((((a1 + (((((((v4 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + v8 + 9;
  v12 = v7;
  result = (*(v7 + 48))(v9 & ~v8, 1, AssociatedTypeWitness);
  if (!result)
  {
    v11 = *(v12 + 8);

    return v11(v9 & ~v8, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1AFA57994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = ((v7 + 17) & 0xFFFFFFFFFFFFFFF8);
  v11 = (v8 + 17) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v11 += 15;
  v13 = v12;
  *v10 = v12;
  v14 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *(v11 & 0xFFFFFFFFFFFFFFF8);
  v14[1] = *((v11 & 0xFFFFFFFFFFFFFFF8) + 8);
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *(((v11 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a1 + v15 + 7;
  v17 = ((a2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 &= 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  v18 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v18;
  v20 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  *v22 = *v23;
  *(v22 + 8) = *(v23 + 8);
  v25 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v21) = *(v26 + 8);
  *v25 = *v26;
  *(v25 + 8) = v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v29 = *(v28 + 80);
  v35 = v29 + 9 + v25;
  v30 = v29 + 9 + v26;
  v31 = *(v28 + 48);

  v32 = v24;
  if (v31(v30 & ~v29, 1, AssociatedTypeWitness))
  {
    if (*(v28 + 84))
    {
      v33 = *(v28 + 64);
    }

    else
    {
      v33 = *(v28 + 64) + 1;
    }

    memcpy((v35 & ~v29), (v30 & ~v29), v33);
  }

  else
  {
    (*(v28 + 16))(v35 & ~v29, v30 & ~v29, AssociatedTypeWitness);
    (*(v28 + 56))(v35 & ~v29, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

uint64_t sub_1AFA57C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = ((v7 + 17) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 17) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *v11;
  v14 = *v10;
  *v10 = v12;

  v15 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v15[1] = v16[1];

  *((v15 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 23) & 0xFFFFFFFFFFFFFFF8);

  v17 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = a1 + v17 + 7;
  v19 = a2 + v17 + 7;
  v20 = (v19 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v18 & 0xFFFFFFFFFFFFFFF8) = *(v19 & 0xFFFFFFFFFFFFFFF8);
  v21 = (v18 & 0xFFFFFFFFFFFFFFF8) + 15;

  v21 &= 0xFFFFFFFFFFFFFFF8;
  v20 &= 0xFFFFFFFFFFFFFFF8;
  *v21 = *v20;

  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22 + 31;
  v24 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v22;

  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  v28 = *v25;
  *v25 = *v26;
  v29 = v27;

  *(v25 + 8) = *(v26 + 8);
  v30 = (v24 + 31) & 0xFFFFFFFFFFFFFFF8;
  v23 &= 0xFFFFFFFFFFFFFFF8;
  v31 = *v23;
  *(v30 + 8) = *(v23 + 8);
  *v30 = v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v34 = *(v33 + 80);
  v35 = v34 + 9 + v30;
  v36 = (v34 + 9 + v23);
  v37 = *(v33 + 48);
  v38 = v37(v35 & ~v34, 1, AssociatedTypeWitness);
  v39 = v37(v36 & ~v34, 1, AssociatedTypeWitness);
  if (v38)
  {
    if (!v39)
    {
      (*(v33 + 16))(v35 & ~v34, v36 & ~v34, AssociatedTypeWitness);
      (*(v33 + 56))(v35 & ~v34, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v40 = *(v33 + 84);
    v41 = *(v33 + 64);
  }

  else
  {
    if (!v39)
    {
      (*(v33 + 24))(v35 & ~v34, v36 & ~v34, AssociatedTypeWitness);
      return a1;
    }

    v43 = *(v33 + 8);
    v42 = v33 + 8;
    v43(v35 & ~v34, AssociatedTypeWitness);
    v40 = *(v42 + 76);
    v41 = *(v42 + 56);
  }

  if (v40)
  {
    v44 = v41;
  }

  else
  {
    v44 = v41 + 1;
  }

  memcpy((v35 & ~v34), (v36 & ~v34), v44);
  return a1;
}

uint64_t sub_1AFA57F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = ((v7 + 17) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v14 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = a1 + v14 + 7;
  v16 = ((a2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 &= 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  v17 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v17;
  v19 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);
  v23 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v20) = *(v24 + 8);
  *v23 = *v24;
  *(v23 + 8) = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v27 = *(v26 + 80);
  v28 = v27 + 9 + v23;
  v29 = v27 + 9 + v24;
  if ((*(v26 + 48))(v29 & ~v27, 1, AssociatedTypeWitness))
  {
    if (*(v26 + 84))
    {
      v30 = *(v26 + 64);
    }

    else
    {
      v30 = *(v26 + 64) + 1;
    }

    memcpy((v28 & ~v27), (v29 & ~v27), v30);
  }

  else
  {
    (*(v26 + 32))(v28 & ~v27, v29 & ~v27, AssociatedTypeWitness);
    (*(v26 + 56))(v28 & ~v27, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

uint64_t sub_1AFA581E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  *(v7 + 9) = *(v8 + 9);
  v10 = ((v7 + 17) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 17) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v10;
  *v10 = *v11;

  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v13[1] = v14[1];

  *((v13 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 23) & 0xFFFFFFFFFFFFFFF8);

  v15 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a1 + v15 + 7;
  v17 = ((a2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *(v16 & 0xFFFFFFFFFFFFFFF8) = *v17;
  v18 = (v16 & 0xFFFFFFFFFFFFFFF8) + 15;

  v18 &= 0xFFFFFFFFFFFFFFF8;
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;

  v20 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 + 31;
  v22 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v20;

  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *v23;
  *v23 = *v24;

  *(v23 + 8) = *(v24 + 8);
  v26 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v27 = v21 & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v21 & 0xFFFFFFFFFFFFFFF8);
  *(v26 + 8) = *((v21 & 0xFFFFFFFFFFFFFFF8) + 8);
  *v26 = v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v31 = *(v30 + 80);
  v32 = v31 + 9 + v26;
  v33 = v31 + 9 + v27;
  v34 = *(v30 + 48);
  v35 = v34(v32 & ~v31, 1, AssociatedTypeWitness);
  v36 = v34(v33 & ~v31, 1, AssociatedTypeWitness);
  if (v35)
  {
    if (!v36)
    {
      (*(v30 + 32))(v32 & ~v31, v33 & ~v31, AssociatedTypeWitness);
      (*(v30 + 56))(v32 & ~v31, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v37 = *(v30 + 84);
    v38 = *(v30 + 64);
  }

  else
  {
    if (!v36)
    {
      (*(v30 + 40))(v32 & ~v31, v33 & ~v31, AssociatedTypeWitness);
      return a1;
    }

    v40 = *(v30 + 8);
    v39 = v30 + 8;
    v40(v32 & ~v31, AssociatedTypeWitness);
    v37 = *(v39 + 76);
    v38 = *(v39 + 56);
  }

  if (v37)
  {
    v41 = v38;
  }

  else
  {
    v41 = v38 + 1;
  }

  memcpy((v32 & ~v31), (v33 & ~v31), v41);
  return a1;
}

uint64_t sub_1AFA584F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v10 + 80);
  if (v11)
  {
    v16 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v16 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = (((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v18 = v16 + ((v15 + ((((((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v15);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v13 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v22 < 2)
    {
LABEL_37:
      if (v8 >= v12)
      {
        if (v7 < 0x7FFFFFFF)
        {
          v28 = *(((((((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v28 >= 0xFFFFFFFF)
          {
            LODWORD(v28) = -1;
          }

          return (v28 + 1);
        }

        else
        {
          v27 = *(v6 + 48);

          return v27(a1, v7, v5);
        }
      }

      else
      {
        v26 = (*(v10 + 48))((v15 + ((((((((a1 + v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & ~v15);
        if (v26 >= 2)
        {
          return v26 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_37;
  }

LABEL_24:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v23) + 1;
}

void sub_1AFA58824(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v35 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  if (v13)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = (((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v12 + 80);
  if (v13)
  {
    v19 = *(v12 + 64);
  }

  else
  {
    v19 = *(v12 + 64) + 1;
  }

  v20 = ((v18 + ((((((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v18) + v19;
  if (a3 <= v16)
  {
    goto LABEL_24;
  }

  if (v20 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
    if (HIWORD(v21))
    {
      v11 = 4;
      if (v16 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if (v21 >= 2)
    {
      v11 = v22;
    }

    else
    {
      v11 = 0;
    }

LABEL_24:
    if (v16 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v11 = 1;
  if (v16 >= a2)
  {
LABEL_34:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v20] = 0;
    }

    else if (v11)
    {
      a1[v20] = 0;
      if (!a2)
      {
        return;
      }

LABEL_41:
      v26 = v17 + 8;
      if (v10 >= v15)
      {
        if (v10 >= a2)
        {
          if (v9 < 0x7FFFFFFF)
          {
            v34 = (((((&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v34 = a2 & 0x7FFFFFFF;
              v34[1] = 0;
            }

            else
            {
              v34[1] = (a2 - 1);
            }
          }

          else
          {
            v33 = *(v35 + 56);

            v33(a1, a2, v9, v7);
          }
        }

        else if (v26)
        {
          bzero(a1, v26);
          *a1 = ~v10 + a2;
        }
      }

      else
      {
        v27 = v18 + (((((((&a1[v26 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
        v28 = (v27 & ~v18);
        if (v15 >= a2)
        {
          v32 = *(v12 + 56);

          v32(v27 & ~v18, (a2 + 1));
        }

        else
        {
          if (v19 <= 3)
          {
            v29 = ~(-1 << (8 * v19));
          }

          else
          {
            v29 = -1;
          }

          if (v19)
          {
            v30 = v29 & (~v15 + a2);
            if (v19 <= 3)
            {
              v31 = v19;
            }

            else
            {
              v31 = 4;
            }

            bzero(v28, v19);
            if (v31 > 2)
            {
              if (v31 == 3)
              {
                *v28 = v30;
                v28[2] = BYTE2(v30);
              }

              else
              {
                *v28 = v30;
              }
            }

            else if (v31 == 1)
            {
              *v28 = v30;
            }

            else
            {
              *v28 = v30;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

LABEL_25:
  v23 = ~v16 + a2;
  if (v20 >= 4)
  {
    bzero(a1, v20);
    *a1 = v23;
    v24 = 1;
    if (v11 > 1)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  v24 = (v23 >> (8 * v20)) + 1;
  if (!v20)
  {
LABEL_66:
    if (v11 > 1)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  v25 = v23 & ~(-1 << (8 * v20));
  bzero(a1, v20);
  if (v20 == 3)
  {
    *a1 = v25;
    a1[2] = BYTE2(v25);
    goto LABEL_66;
  }

  if (v20 == 2)
  {
    *a1 = v25;
    if (v11 > 1)
    {
LABEL_70:
      if (v11 == 2)
      {
        *&a1[v20] = v24;
      }

      else
      {
        *&a1[v20] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v11 > 1)
    {
      goto LABEL_70;
    }
  }

LABEL_67:
  if (v11)
  {
    a1[v20] = v24;
  }
}

unint64_t sub_1AFA58CE8()
{
  result = qword_1EB642510;
  if (!qword_1EB642510)
  {
    sub_1AFA58D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642510);
  }

  return result;
}

void sub_1AFA58D40()
{
  if (!qword_1EB642518)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642518);
    }
  }
}

void sub_1AFA58DB8()
{
  if (*(*v0 + 16))
  {
    v1 = *(v0 + 32);
    if (v1 >= 4)
    {
    }

    else
    {
      v2 = sub_1AFDFEE28();

      if ((v2 & 1) == 0)
      {

        *(v0 + 8) = 0x64656D6D6972743CLL;
        *(v0 + 16) = 0xE90000000000003ELL;
      }
    }
  }
}

uint64_t sub_1AFA58EBC()
{
  v1 = *(v0 + 24);
  if (v1 >= 4)
  {
  }

  else
  {
    v2 = sub_1AFDFEE28();

    if ((v2 & 1) == 0)
    {

      *(v0 + 8) = 0x64656D6D6972743CLL;
      *(v0 + 16) = 0xE90000000000003ELL;
    }
  }

  return result;
}

void sub_1AFA58FB4()
{
  if ((v0[40] & 1) != 0 || *(*(v0 + 4) + 16))
  {
    v1 = *v0;
    if (v1 >= 4)
    {
    }

    else
    {
      v2 = sub_1AFDFEE28();

      if ((v2 & 1) == 0)
      {

        *(v0 + 1) = 0x64656D6D6972743CLL;
        *(v0 + 2) = 0xE90000000000003ELL;
      }
    }
  }
}

uint64_t sub_1AFA590C0()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  else
  {
    v2 = sub_1AFDFEE28();

    if ((v2 & 1) == 0)
    {

      *v0 = 0x64656D6D6972743CLL;
      *(v0 + 8) = 0xE90000000000003ELL;
    }
  }

  return result;
}

void sub_1AFA591B8()
{
  if ((*(v0 + 40) & 1) != 0 || *(*(v0 + 32) + 16))
  {
    v1 = *(v0 + 24);
    if (v1 >= 4)
    {
    }

    else
    {
      v2 = sub_1AFDFEE28();

      if ((v2 & 1) == 0)
      {

        *v0 = 0x64656D6D6972743CLL;
        *(v0 + 8) = 0xE90000000000003ELL;
      }
    }
  }
}

uint64_t sub_1AFA592C4(uint64_t a1)
{
  v2 = sub_1AFA5A768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA59300(uint64_t a1)
{
  v2 = sub_1AFA5A768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA5933C(void *a1)
{
  sub_1AFA5A864(0, &qword_1EB642528, sub_1AFA5A768, &type metadata for CodableVoid.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA5A768();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AFA594A0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFA5A374(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AFA594E4()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](qword_1AFE97258[v1]);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA5956C()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](qword_1AFE97258[v1]);
  return sub_1AFDFF2F8();
}

unint64_t sub_1AFA5967C()
{
  result = qword_1EB631D10;
  if (!qword_1EB631D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631D10);
  }

  return result;
}

uint64_t sub_1AFA596D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *(a1 + 16);
  result = sub_1AFAF8B58(*a1, *(a1 + 8), a2, a3, a4, a5, a6, a7);
  *a8 = result;
  *(a8 + 8) = v11;
  *(a8 + 16) = v9;
  return result;
}

uint64_t sub_1AFA59730(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  sub_1AFA5A864(0, &qword_1EB642550, sub_1AFA5A7BC, &type metadata for ScriptFunction.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA5A7BC();
  sub_1AFDFF3F8();
  v17 = 0;
  v11 = v13[1];
  sub_1AFDFE8B8();
  if (!v11)
  {
    v16 = v14;
    v15 = 1;
    sub_1AFA5A8CC();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFA5999C()
{
  v1 = 0x786574726576;
  if (*v0 != 2)
  {
    v1 = 7696483;
  }

  v2 = 0x657475706D6F63;
  if (*v0)
  {
    v2 = 0x746E656D67617266;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1AFA59A0C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1684957547;
  }

  else
  {
    v2 = 1701667182;
  }

  if (*a2)
  {
    v3 = 1684957547;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1AFDFEE28();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1AFA59A84()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1AFA59AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AFA59B84(uint64_t a1)
{
  v2 = sub_1AFA5A7BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA59BC0(uint64_t a1)
{
  v2 = sub_1AFA5A7BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA59BFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AFA5A150(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1AFA59CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AFDFDD58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for ScriptCompileAttempt();
  v34 = a1;
  v35 = a2;
  sub_1AF4579E8(a1, a2, v16);
  v17 = *(a3 + 60);
  v18 = *(v9 + 16);
  v19 = v3;
  v37 = v17;
  v20 = v3 + v17;
  v21 = v8;
  v22 = AssociatedTypeWitness;
  v18(v15, v20, v21);
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 48);
  if (v24(v15, 1, v22) == 1)
  {
    v33 = v23;
    (*(v9 + 8))(v15, v21);
  }

  else
  {
    if (swift_dynamicCast())
    {
      v39 = v38;
      v25 = v21;
      sub_1AFA9F1AC(v34, v35);
      v26 = v37;
      (*(v9 + 8))(v19 + v37, v25);
      v38 = v39;
      swift_dynamicCast();
      return (*(v23 + 56))(v19 + v26, 0, 1, v22);
    }

    v33 = v23;
  }

  v28 = v19;
  v29 = v37;
  v30 = v19 + v37;
  v31 = v36;
  v18(v36, v30, v21);
  if (v24(v31, 1, v22) == 1)
  {
    return (*(v9 + 8))(v31, v21);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v39 = v38;
    sub_1AFA9F2B8(v34, v35);
    (*(v9 + 8))(v28 + v29, v21);
    v38 = v39;
    swift_dynamicCast();
    return (*(v33 + 56))(v28 + v29, 0, 1, v22);
  }

  return result;
}

uint64_t sub_1AFA5A024@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1AF457A00(a1, a2);
  v3 = type metadata accessor for ScriptRuntime();
  *(a2 + v3[9]) = 0;
  *(a2 + v3[10]) = 0;
  *(a2 + v3[11]) = 0;
  *(a2 + v3[12]) = 0;
  *(a2 + v3[13]) = 0;
  v4 = a2 + v3[14];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v3[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 56);

  return v7(a2 + v5, 1, 1, AssociatedTypeWitness);
}

void sub_1AFA5A11C(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
}

void sub_1AFA5A12C(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v1;
}

uint64_t sub_1AFA5A150(void *a1)
{
  sub_1AFA5A864(0, &qword_1EB642538, sub_1AFA5A7BC, &type metadata for ScriptFunction.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AFA5A7BC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1AFDFE708();
    v12 = 1;
    sub_1AFA5A810();
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AFA5A374(unint64_t a1)
{
  if (a1 > 0x13)
  {
    return 17;
  }

  else
  {
    return byte_1AFE972E0[a1];
  }
}

unint64_t sub_1AFA5A394()
{
  result = qword_1EB633730;
  if (!qword_1EB633730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633730);
  }

  return result;
}

uint64_t sub_1AFA5A3E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for ScriptCompileOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for ScriptCompileOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t destroy for GeneratedScriptCode()
{
}

void *initializeWithCopy for GeneratedScriptCode(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

void *assignWithCopy for GeneratedScriptCode(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];

  return a1;
}

void *assignWithTake for GeneratedScriptCode(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  v5 = a2[4];
  a1[3] = a2[3];
  a1[4] = v5;

  return a1;
}

unint64_t sub_1AFA5A6C0()
{
  result = qword_1EB632120;
  if (!qword_1EB632120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632120);
  }

  return result;
}

unint64_t sub_1AFA5A714()
{
  result = qword_1EB642520;
  if (!qword_1EB642520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642520);
  }

  return result;
}

unint64_t sub_1AFA5A768()
{
  result = qword_1EB642530;
  if (!qword_1EB642530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642530);
  }

  return result;
}

unint64_t sub_1AFA5A7BC()
{
  result = qword_1EB642540;
  if (!qword_1EB642540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642540);
  }

  return result;
}

unint64_t sub_1AFA5A810()
{
  result = qword_1EB642548;
  if (!qword_1EB642548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642548);
  }

  return result;
}

void sub_1AFA5A864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AFA5A8CC()
{
  result = qword_1EB642558;
  if (!qword_1EB642558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642558);
  }

  return result;
}

unint64_t sub_1AFA5A944()
{
  result = qword_1EB642560;
  if (!qword_1EB642560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642560);
  }

  return result;
}

unint64_t sub_1AFA5A99C()
{
  result = qword_1EB642568;
  if (!qword_1EB642568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642568);
  }

  return result;
}

unint64_t sub_1AFA5A9F4()
{
  result = qword_1EB642570;
  if (!qword_1EB642570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642570);
  }

  return result;
}

unint64_t sub_1AFA5AA4C()
{
  result = qword_1EB642578;
  if (!qword_1EB642578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642578);
  }

  return result;
}

unint64_t sub_1AFA5AAA4()
{
  result = qword_1EB642580;
  if (!qword_1EB642580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642580);
  }

  return result;
}

uint64_t sub_1AFA5AB04(void *a1)
{
  v2 = v1;
  sub_1AF5B21E4(0);
  v5 = v4;
  *(v2 + *(v4 + 40)) = 1;
  v6 = *(v4 + 44);
  v7 = *(v2 + v6);
  v8 = a1;

  *(v2 + v6) = a1;
  v9 = a1;
  sub_1AF5C5358(0, &qword_1ED7268D0);
  if (swift_dynamicCast())
  {
    v10 = v31;
    v11 = v32;
    if (v35 == 1)
    {
      v12 = (v2 + *(v5 + 48));

      *v12 = v31;
      v12[1] = v32;
      if (v34)
      {
        v13 = sub_1AF458208();
        v15 = v14;

LABEL_10:
        v20 = v13;
        goto LABEL_20;
      }

LABEL_18:
      v20 = 0;
      goto LABEL_19;
    }

    sub_1AF456D9C(v31, v32, v33, v34, v35);
  }

  v16 = a1;
  if (swift_dynamicCast())
  {
    if (v35 == 2)
    {
      swift_getErrorValue();
      v10 = sub_1AFDFF1D8();
      v11 = v17;
      v18 = (v2 + *(v5 + 48));

      *v18 = v10;
      v18[1] = v11;
      if (v33)
      {
        v13 = sub_1AF458208();
        v15 = v19;

        goto LABEL_10;
      }

      goto LABEL_18;
    }

    sub_1AF456D9C(v31, v32, v33, v34, v35);
  }

  v21 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v10 = v31;
  v11 = v32;
  if (v35 != 3)
  {
    sub_1AF456D9C(v31, v32, v33, v34, v35);
LABEL_15:
    swift_getErrorValue();
    v10 = sub_1AFDFF1D8();
    v11 = v22;
  }

  v23 = (v2 + *(v5 + 48));

  v20 = 0;
  *v23 = v10;
  v23[1] = v11;
LABEL_19:
  v15 = 1;
LABEL_20:
  v24 = sub_1AF458308(v10, v11, v20, v15 & 1);
  v25 = *(v5 + 52);

  *(v2 + v25) = v24;
  v27 = v2[4];
  if (v27)
  {
    v29 = v2[1];
    v28 = v2[2];
    sub_1AF0FBD8C(v27);
    v30 = sub_1AF458B0C(v29, v28);
    v27(v24, v30);

    return sub_1AF0FB8EC(v27);
  }

  return result;
}

uint64_t sub_1AFA5AE14(void *a1)
{
  v2 = v1;
  sub_1AF5B22D4(0);
  v5 = v4;
  *(v2 + *(v4 + 40)) = 1;
  v6 = *(v4 + 44);
  v7 = *(v2 + v6);
  v8 = a1;

  *(v2 + v6) = a1;
  v9 = a1;
  sub_1AF5C5358(0, &qword_1ED7268D0);
  if (swift_dynamicCast())
  {
    v10 = v31;
    v11 = v32;
    if (v35 == 1)
    {
      v12 = (v2 + *(v5 + 48));

      *v12 = v31;
      v12[1] = v32;
      if (v34)
      {
        v13 = sub_1AF458208();
        v15 = v14;

LABEL_10:
        v20 = v13;
        goto LABEL_20;
      }

LABEL_18:
      v20 = 0;
      goto LABEL_19;
    }

    sub_1AF456D9C(v31, v32, v33, v34, v35);
  }

  v16 = a1;
  if (swift_dynamicCast())
  {
    if (v35 == 2)
    {
      swift_getErrorValue();
      v10 = sub_1AFDFF1D8();
      v11 = v17;
      v18 = (v2 + *(v5 + 48));

      *v18 = v10;
      v18[1] = v11;
      if (v33)
      {
        v13 = sub_1AF458208();
        v15 = v19;

        goto LABEL_10;
      }

      goto LABEL_18;
    }

    sub_1AF456D9C(v31, v32, v33, v34, v35);
  }

  v21 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v10 = v31;
  v11 = v32;
  if (v35 != 3)
  {
    sub_1AF456D9C(v31, v32, v33, v34, v35);
LABEL_15:
    swift_getErrorValue();
    v10 = sub_1AFDFF1D8();
    v11 = v22;
  }

  v23 = (v2 + *(v5 + 48));

  v20 = 0;
  *v23 = v10;
  v23[1] = v11;
LABEL_19:
  v15 = 1;
LABEL_20:
  v24 = sub_1AF458308(v10, v11, v20, v15 & 1);
  v25 = *(v5 + 52);

  *(v2 + v25) = v24;
  v27 = v2[6];
  if (v27)
  {
    v29 = *v2;
    v28 = v2[1];
    sub_1AF0FBD8C(v27);
    v30 = sub_1AF458B0C(v29, v28);
    v27(v24, v30);

    return sub_1AF0FB8EC(v27);
  }

  return result;
}

uint64_t sub_1AFA5B124(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = v3;
  v7 = a2(0);
  *(v5 + v7[10]) = 1;
  v8 = v7[11];
  v9 = *(v5 + v8);
  v10 = a1;

  *(v5 + v8) = a1;
  v11 = a1;
  sub_1AF5C5358(0, &qword_1ED7268D0);
  if (swift_dynamicCast())
  {
    v12 = v34;
    v13 = v35;
    if (v38 == 1)
    {
      v14 = (v5 + v7[12]);

      *v14 = v34;
      v14[1] = v35;
      if (v37)
      {
        v15 = sub_1AF458208();
        v17 = v16;

LABEL_10:
        v22 = v15;
        goto LABEL_20;
      }

LABEL_18:
      v22 = 0;
      goto LABEL_19;
    }

    sub_1AF456D9C(v34, v35, v36, v37, v38);
  }

  v18 = a1;
  if (swift_dynamicCast())
  {
    if (v38 == 2)
    {
      swift_getErrorValue();
      v12 = sub_1AFDFF1D8();
      v13 = v19;
      v20 = (v5 + v7[12]);

      *v20 = v12;
      v20[1] = v13;
      if (v36)
      {
        v15 = sub_1AF458208();
        v17 = v21;

        goto LABEL_10;
      }

      goto LABEL_18;
    }

    sub_1AF456D9C(v34, v35, v36, v37, v38);
  }

  v23 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v12 = v34;
  v13 = v35;
  if (v38 != 3)
  {
    sub_1AF456D9C(v34, v35, v36, v37, v38);
LABEL_15:
    swift_getErrorValue();
    v12 = sub_1AFDFF1D8();
    v13 = v24;
  }

  v25 = (v5 + v7[12]);

  v22 = 0;
  *v25 = v12;
  v25[1] = v13;
LABEL_19:
  v17 = 1;
LABEL_20:
  v26 = sub_1AF458308(v12, v13, v22, v17 & 1);
  v27 = v7[13];

  *(v5 + v27) = v26;
  result = a3(0);
  v29 = (v5 + *(result + 28));
  v30 = *v29;
  if (*v29)
  {
    v32 = *v5;
    v31 = v5[1];
    sub_1AF0FBD8C(*v29);
    v33 = sub_1AF458B0C(v32, v31);
    v30(v26, v33);

    return sub_1AF0FB8EC(v30);
  }

  return result;
}

uint64_t sub_1AFA5B438(void *a1)
{
  v2 = v1;
  sub_1AF5B24B4(0);
  v5 = v4;
  *(v2 + *(v4 + 40)) = 1;
  v6 = *(v4 + 44);
  v7 = *(v2 + v6);
  v8 = a1;

  *(v2 + v6) = a1;
  v9 = a1;
  sub_1AF5C5358(0, &qword_1ED7268D0);
  if (swift_dynamicCast())
  {
    v10 = v31;
    v11 = v32;
    if (v35 == 1)
    {
      v12 = (v2 + *(v5 + 48));

      *v12 = v31;
      v12[1] = v32;
      if (v34)
      {
        v13 = sub_1AF458208();
        v15 = v14;

LABEL_10:
        v20 = v13;
        goto LABEL_20;
      }

LABEL_18:
      v20 = 0;
      goto LABEL_19;
    }

    sub_1AF456D9C(v31, v32, v33, v34, v35);
  }

  v16 = a1;
  if (swift_dynamicCast())
  {
    if (v35 == 2)
    {
      swift_getErrorValue();
      v10 = sub_1AFDFF1D8();
      v11 = v17;
      v18 = (v2 + *(v5 + 48));

      *v18 = v10;
      v18[1] = v11;
      if (v33)
      {
        v13 = sub_1AF458208();
        v15 = v19;

        goto LABEL_10;
      }

      goto LABEL_18;
    }

    sub_1AF456D9C(v31, v32, v33, v34, v35);
  }

  v21 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v10 = v31;
  v11 = v32;
  if (v35 != 3)
  {
    sub_1AF456D9C(v31, v32, v33, v34, v35);
LABEL_15:
    swift_getErrorValue();
    v10 = sub_1AFDFF1D8();
    v11 = v22;
  }

  v23 = (v2 + *(v5 + 48));

  v20 = 0;
  *v23 = v10;
  v23[1] = v11;
LABEL_19:
  v15 = 1;
LABEL_20:
  v24 = sub_1AF458308(v10, v11, v20, v15 & 1);
  v25 = *(v5 + 52);

  *(v2 + v25) = v24;
  v27 = v2[5];
  if (v27)
  {
    v29 = v2[1];
    v28 = v2[2];
    sub_1AF0FBD8C(v27);
    v30 = sub_1AF458B0C(v29, v28);
    v27(v24, v30);

    return sub_1AF0FB8EC(v27);
  }

  return result;
}

uint64_t sub_1AFA5B748(void *a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v5 = a2(0);
  *(v3 + v5[10]) = 1;
  v6 = v5[11];
  v7 = *(v3 + v6);
  v8 = a1;

  *(v3 + v6) = a1;
  v9 = a1;
  sub_1AF5C5358(0, &qword_1ED7268D0);
  if (swift_dynamicCast())
  {
    v10 = v31;
    v11 = v32;
    if (v35 == 1)
    {
      v12 = (v3 + v5[12]);

      *v12 = v31;
      v12[1] = v32;
      if (v34)
      {
        v13 = sub_1AF458208();
        v15 = v14;

LABEL_10:
        v20 = v13;
        goto LABEL_20;
      }

LABEL_18:
      v20 = 0;
      goto LABEL_19;
    }

    sub_1AF456D9C(v31, v32, v33, v34, v35);
  }

  v16 = a1;
  if (swift_dynamicCast())
  {
    if (v35 == 2)
    {
      swift_getErrorValue();
      v10 = sub_1AFDFF1D8();
      v11 = v17;
      v18 = (v3 + v5[12]);

      *v18 = v10;
      v18[1] = v11;
      if (v33)
      {
        v13 = sub_1AF458208();
        v15 = v19;

        goto LABEL_10;
      }

      goto LABEL_18;
    }

    sub_1AF456D9C(v31, v32, v33, v34, v35);
  }

  v21 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v10 = v31;
  v11 = v32;
  if (v35 != 3)
  {
    sub_1AF456D9C(v31, v32, v33, v34, v35);
LABEL_15:
    swift_getErrorValue();
    v10 = sub_1AFDFF1D8();
    v11 = v22;
  }

  v23 = (v3 + v5[12]);

  v20 = 0;
  *v23 = v10;
  v23[1] = v11;
LABEL_19:
  v15 = 1;
LABEL_20:
  v24 = sub_1AF458308(v10, v11, v20, v15 & 1);
  v25 = v5[13];

  *(v3 + v25) = v24;
  v27 = v3[6];
  if (v27)
  {
    v29 = v3[1];
    v28 = v3[2];
    sub_1AF0FBD8C(v27);
    v30 = sub_1AF458B0C(v29, v28);
    v27(v24, v30);

    return sub_1AF0FB8EC(v27);
  }

  return result;
}

uint64_t sub_1AFA5BA44(void *a1)
{
  v2 = v1;
  sub_1AF5B25A4(0);
  v5 = v4;
  *(v2 + *(v4 + 40)) = 1;
  v6 = *(v4 + 44);
  v7 = *(v2 + v6);
  v8 = a1;

  *(v2 + v6) = a1;
  v9 = a1;
  sub_1AF5C5358(0, &qword_1ED7268D0);
  if (swift_dynamicCast())
  {
    v10 = v32;
    v11 = v33;
    if (v36 == 1)
    {
      v12 = (v2 + *(v5 + 48));

      *v12 = v32;
      v12[1] = v33;
      if (v35)
      {
        v13 = sub_1AF458208();
        v15 = v14;

LABEL_10:
        v20 = v13;
        goto LABEL_20;
      }

LABEL_18:
      v20 = 0;
      goto LABEL_19;
    }

    sub_1AF456D9C(v32, v33, v34, v35, v36);
  }

  v16 = a1;
  if (swift_dynamicCast())
  {
    if (v36 == 2)
    {
      swift_getErrorValue();
      v10 = sub_1AFDFF1D8();
      v11 = v17;
      v18 = (v2 + *(v5 + 48));

      *v18 = v10;
      v18[1] = v11;
      if (v34)
      {
        v13 = sub_1AF458208();
        v15 = v19;

        goto LABEL_10;
      }

      goto LABEL_18;
    }

    sub_1AF456D9C(v32, v33, v34, v35, v36);
  }

  v21 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v10 = v32;
  v11 = v33;
  if (v36 != 3)
  {
    sub_1AF456D9C(v32, v33, v34, v35, v36);
LABEL_15:
    swift_getErrorValue();
    v10 = sub_1AFDFF1D8();
    v11 = v22;
  }

  v23 = (v2 + *(v5 + 48));

  v20 = 0;
  *v23 = v10;
  v23[1] = v11;
LABEL_19:
  v15 = 1;
LABEL_20:
  v24 = sub_1AF458308(v10, v11, v20, v15 & 1);
  v25 = *(v5 + 52);

  *(v2 + v25) = v24;
  result = type metadata accessor for EmitterScript(0);
  v27 = (v2 + *(result + 36));
  v28 = *v27;
  if (*v27)
  {
    v30 = *(v2 + 8);
    v29 = *(v2 + 16);
    sub_1AF0FBD8C(*v27);
    v31 = sub_1AF458B0C(v30, v29);
    v28(v24, v31);

    return sub_1AF0FB8EC(v28);
  }

  return result;
}