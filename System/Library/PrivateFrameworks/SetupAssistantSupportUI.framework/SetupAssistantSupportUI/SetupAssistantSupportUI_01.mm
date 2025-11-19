uint64_t sub_265A6B6C8(char a1)
{
  if (a1)
  {
    return 0x6163536576727563;
  }

  else
  {
    return 0x6974756C6F736572;
  }
}

uint64_t sub_265A6B704(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6163536576727563;
  }

  else
  {
    v3 = 0x6974756C6F736572;
  }

  if (v2)
  {
    v4 = 0xEA00000000006E6FLL;
  }

  else
  {
    v4 = 0xEA0000000000656CLL;
  }

  if (*a2)
  {
    v5 = 0x6163536576727563;
  }

  else
  {
    v5 = 0x6974756C6F736572;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000656CLL;
  }

  else
  {
    v6 = 0xEA00000000006E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_265AA7B50();
  }

  return v8 & 1;
}

uint64_t sub_265A6B7B0()
{
  sub_265AA7C10();
  sub_265AA75B0();

  return sub_265AA7C40();
}

uint64_t sub_265A6B838()
{
  sub_265AA75B0();
}

uint64_t sub_265A6B8AC()
{
  sub_265AA7C10();
  sub_265AA75B0();

  return sub_265AA7C40();
}

uint64_t sub_265A6B93C@<X0>(char *a1@<X8>)
{
  v2 = sub_265AA7A40();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_265A6B998(uint64_t *a1@<X8>)
{
  v2 = 0x6974756C6F736572;
  if (*v1)
  {
    v2 = 0x6163536576727563;
  }

  v3 = 0xEA0000000000656CLL;
  if (!*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_265A6B9DC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_265A6BA2C(a1, a2);
  return v4;
}

uint64_t sub_265A6BA2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  sub_265A6DF9C(v75);
  v6 = v75[7];
  *(v3 + 160) = v75[6];
  *(v3 + 176) = v6;
  v7 = v76;
  v8 = v75[3];
  *(v3 + 96) = v75[2];
  *(v3 + 112) = v8;
  v9 = v75[5];
  *(v3 + 128) = v75[4];
  *(v3 + 144) = v9;
  v10 = v75[1];
  *(v3 + 64) = v75[0];
  *(v3 + 80) = v10;
  __asm { FMOV            V0.4S, #1.0 }

  *(v3 + 192) = v7;
  v42 = _Q0;
  *(v3 + 208) = _Q0;
  *(v3 + 200) = 40;
  v16 = (v3 + 200);
  v41 = a1;
  v17 = sub_265AA6D70();
  v19 = v18;
  sub_265AA6C30();
  swift_allocObject();
  sub_265AA6C20();
  sub_265A6E098();
  sub_265AA6C10();

  v52 = v72;
  v53 = v73;
  v48 = v68;
  v49 = v69;
  v50 = v70;
  v51 = v71;
  v46 = v66;
  v47 = v67;
  v61 = v72;
  v62 = v73;
  v57 = v68;
  v58 = v69;
  v59 = v70;
  v60 = v71;
  v54 = v74;
  v63 = v74;
  v55 = v66;
  v56 = v67;
  nullsub_1(v73, *&v71, *&v67);
  swift_beginAccess();
  v20 = *(v3 + 176);
  v64[6] = *(v3 + 160);
  v64[7] = v20;
  v65 = *(v3 + 192);
  v21 = *(v3 + 112);
  v64[2] = *(v3 + 96);
  v64[3] = v21;
  v22 = *(v3 + 144);
  v64[4] = *(v3 + 128);
  v64[5] = v22;
  v23 = *(v3 + 80);
  v64[0] = *(v3 + 64);
  v64[1] = v23;
  v24 = v71;
  *(v3 + 128) = v70;
  *(v3 + 144) = v24;
  v25 = v62;
  *(v3 + 160) = v61;
  *(v3 + 176) = v25;
  *(v3 + 192) = v63;
  v26 = v58;
  *(v3 + 96) = v57;
  *(v3 + 112) = v26;
  v27 = v56;
  *(v3 + 64) = v55;
  *(v3 + 80) = v27;
  sub_265A6E0EC(&v46, v45);
  sub_265A6E030(v64);
  if (!a2)
  {
    swift_beginAccess();
    *v16 = 40;
    goto LABEL_14;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_8;
  }

  v28 = sub_265A6CCC4(0);
  if ((v29 & 1) == 0)
  {

    goto LABEL_8;
  }

  sub_265A65A6C(*(a2 + 56) + 32 * v28, v45);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v30 = 40;
    goto LABEL_9;
  }

  v30 = v44;
LABEL_9:
  swift_beginAccess();
  *v16 = v30;
  if (*(a2 + 16) && (v31 = sub_265A6CCC4(1), (v32 & 1) != 0))
  {
    sub_265A65A6C(*(a2 + 56) + 32 * v31, v45);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF80);
    if (swift_dynamicCast())
    {
      v42 = v43;
    }
  }

  else
  {
  }

LABEL_14:
  swift_beginAccess();
  *(v3 + 208) = v42;
  if (!*v16)
  {
    v33 = *(&v47 + 1);
    if (*(&v47 + 1))
    {
      v34 = v47;

      sub_265A6E124(&v46);
      if (v33 == 0xE300000000000000 && v34 == 3157554)
      {

        goto LABEL_23;
      }
    }

    else
    {
      sub_265A6E124(&v46);
    }

    v35 = sub_265AA7B50();

    if (v35)
    {
      v36 = 5;
LABEL_24:
      *v16 = v36;
      goto LABEL_25;
    }

LABEL_23:
    v36 = 2;
    goto LABEL_24;
  }

  sub_265A6E124(&v46);
LABEL_25:
  sub_265A6BFC4();
  swift_beginAccess();
  v37 = *(v3 + 24) / 3000.0;
  swift_beginAccess();
  *(v3 + 28) = v37;
  v38 = powf((fminf(fmaxf(v37, 0.0), 10.0) / 10.0) + -1.0, 3.0);
  sub_265A6572C(v17, v19);
  v39 = sub_265AA6D60();
  (*(*(v39 - 8) + 8))(v41, v39);
  *(v3 + 28) = (v38 + 1.0) * 4.0;
  return v3;
}

uint64_t sub_265A6BFC4()
{
  v1 = &v93;
  v2 = (*v0 + 296);
  v3 = *v2;
  (*v2)(&v104);
  v4 = v111;
  v5 = v112;
  v6 = v113;
  v121[4] = v108;
  v121[5] = v109;
  v121[6] = v110;
  v121[0] = v104;
  v121[1] = v105;
  v121[2] = v106;
  v121[3] = v107;
  v122 = v111;
  v123 = v112;
  v124 = v113;
  if (sub_265A6E154(v121) == 1)
  {
    v118 = v108;
    v119 = v109;
    *v120 = v110;
    v114 = v104;
    v115 = v105;
    v116 = v106;
    v117 = v107;
    *&v120[16] = v4;
    *&v120[24] = v5;
    v120[32] = v6;
    v7 = sub_265A6E030(&v114);
    __asm { FMOV            V0.4S, #1.0 }
  }

  else
  {
    v118 = v108;
    v119 = v109;
    *v120 = v110;
    v114 = v104;
    v115 = v105;
    v116 = v106;
    v117 = v107;
    *&v120[16] = v4;
    *&v120[24] = v5;
    v120[32] = v6;
    v7 = sub_265A6E030(&v114);
    if (v6)
    {
      __asm { FMOV            V0.4S, #1.0 }
    }

    else
    {
      _Q0.i64[0] = v4;
      _Q0.i64[1] = v5;
    }
  }

  v75 = _Q0;
  v13 = &v114;
  (v3)(&v114, v7);
  v14 = *v120;
  v101[2] = v116;
  v101[3] = v117;
  v101[4] = v118;
  v101[5] = v119;
  v101[0] = v114;
  v101[1] = v115;
  v103[0] = *&v120[8];
  *(v103 + 9) = *&v120[17];
  v102 = *v120;
  if (sub_265A6E154(v101) != 1)
  {
LABEL_51:
    v95 = v116;
    v96 = v117;
    v97 = v118;
    v98 = v119;
    v93 = v114;
    v94 = v115;
    v99 = v14;
    *(v1 + 104) = *(v13 + 104);
    *(v1 + 113) = *(v13 + 113);

    sub_265A6E030(&v93);
    if (v14)
    {
      result = v14;
    }

    else
    {
      result = MEMORY[0x277D84F90];
    }

    v17 = *(result + 16);
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_55:

    v22 = 0x80000000800000;
    *&v91 = vneg_f32(0x80000000800000);
    v23 = MEMORY[0x277D84F90];
    v25 = 0.0;
    LODWORD(v89) = 2139095039;
    v26 = -3.4028e38;
    v27 = -3.4028e38;
    v62 = *(MEMORY[0x277D84F90] + 16);
    if (!v62)
    {
      goto LABEL_70;
    }

    goto LABEL_56;
  }

  v95 = v116;
  v96 = v117;
  v97 = v118;
  v98 = v119;
  v93 = v114;
  v94 = v115;
  v99 = v14;
  v100[0] = *&v120[8];
  *(v100 + 9) = *&v120[17];
  sub_265A6E030(&v93);
  result = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
  if (!v17)
  {
    goto LABEL_55;
  }

LABEL_8:
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0x80000000800000;
  *&v15 = vneg_f32(0x80000000800000);
  v91 = v15;
  v23 = MEMORY[0x277D84F90];
  v72 = result;
  v73 = result + 32;
  v24 = 1;
  v25 = 0.0;
  LODWORD(v15) = 2139095039;
  v89 = v15;
  v26 = -3.4028e38;
  v27 = -3.4028e38;
  v71 = v17;
  do
  {
    if (v21 >= *(result + 16))
    {
      goto LABEL_77;
    }

    v74 = v21;
    v28 = *(v73 + 8 * v21);
    v29 = *(v28 + 16);
    if (!v29)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = MEMORY[0x277D84F90];
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_45;
      }

LABEL_50:
      v23 = sub_265A6CFE8(0, v23[2] + 1, 1, v23);
      goto LABEL_45;
    }

    v80 = *(*v81 + 344);
    v78 = v28 + 32;
    v79 = v29 - 1;

    v30 = 0;
    v31 = MEMORY[0x277D84F90];
    v76 = v29;
    v77 = result;
    while (2)
    {
      if (v30 >= *(result + 16))
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v32 = (v78 + (v30 << 6));
      v34 = v32[2];
      v33 = v32[3];
      v35 = v32[1];
      v93 = *v32;
      v94 = v35;
      v95 = v34;
      v96 = v33;
      *v36.i64 = v80();
      sub_265A6AD98(vmulq_f32(v75, v36));
      v84 = v93;
      v85 = v96;
      v37 = vmovn_s32(vceqq_f32(v93, v96));
      v38 = v37.i8[0] & v37.i8[2];
      if (v37.i8[0] & v37.i8[2] & 1) != 0 && (v37.i16[2] & v37.i16[3])
      {
        result = 1;
        if (v37.i8[0] & v37.i8[2])
        {
          goto LABEL_19;
        }
      }

      else
      {
        v88 = v37.i32[1];
        result = (*(*v81 + 320))();
        v37.i32[1] = v88;
        if (v38)
        {
LABEL_19:
          if (v37.i16[2] & v37.i16[3])
          {
            v39 = v85;
            v39.f32[1] = v85.f32[1] + 0.1;
            v85 = v39;
          }
        }
      }

      v13 = result;
      if (v30 != v79)
      {
        v13 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_75;
        }
      }

      if (v13 < 0)
      {
        goto LABEL_74;
      }

      v1 = 0;
      ++v30;
      v40 = 1.0 / result;
      v82 = v95;
      v83 = v94;
      while (1)
      {
        *v41.i64 = sub_265A6AD44(v40 * v1, v84, v83, v82, v85);
        v42 = v41;
        v42.i32[3] = 0;
        v43 = v41.u32[2];
        v86 = v42;
        v87 = v41;
        if (v24)
        {
          v19 = *v41.f32;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_32;
          }

LABEL_27:
          v31 = sub_265A6CEE8(0, *(v31 + 2) + 1, 1, v31);
          goto LABEL_32;
        }

        *v44.f32 = v19;
        v44.i64[1] = v20;
        v45 = vsubq_f32(v41, v44);
        v46 = vsub_f32(*v41.f32, v19);
        v47 = sqrtf(COERCE_FLOAT(vmulq_f32(v45, v45).i32[2]) + vaddv_f32(vmul_f32(v46, v46)));
        if (v18)
        {
          v48 = 0.25;
        }

        else
        {
          v48 = 1.0;
        }

        v25 = v25 + (v48 * v47);
        v19 = *v42.f32;
        v18 = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_32:
        v20 = v43;
        v50 = *(v31 + 2);
        v49 = *(v31 + 3);
        v14 = v50 + 1;
        v51 = v87;
        if (v50 >= v49 >> 1)
        {
          v58 = sub_265A6CEE8((v49 > 1), v50 + 1, 1, v31);
          v51 = v87;
          v31 = v58;
        }

        *(v31 + 2) = v14;
        v52 = &v31[32 * v50];
        *(v52 + 2) = v86;
        *(v52 + 12) = v51.i32[3];
        *(v52 + 13) = v25;
        v53 = vdup_laneq_s32(v51, 3);
        v54 = vsub_f32(*v51.i8, v53);
        *(&v55 + 1) = *(&v91 + 1);
        *&v55 = vbsl_s8(vcgt_f32(*&v91, v54), v54, *&v91);
        v56 = vadd_f32(*v51.i8, v53);
        v22 = vbsl_s8(vcge_f32(v56, v22), v56, v22);
        v57 = v89;
        if ((*&v51.i32[2] - *&v51.i32[3]) < *&v89)
        {
          *&v57 = *&v51.i32[2] - *&v51.i32[3];
        }

        v89 = v57;
        v91 = v55;
        if (v27 <= (*&v51.i32[2] + *&v51.i32[3]))
        {
          v27 = *&v51.i32[2] + *&v51.i32[3];
        }

        if (v26 <= *&v51.i32[3])
        {
          v26 = *&v51.i32[3];
        }

        if (v13 == v1)
        {
          break;
        }

        v24 = 0;
        _VF = __OFADD__(v1, 1);
        v1 = (v1 + 1);
        if (_VF)
        {
          __break(1u);
          goto LABEL_51;
        }
      }

      v24 = 0;
      v18 = 1;
      result = v77;
      if (v30 != v76)
      {
        continue;
      }

      break;
    }

    v24 = 0;
    v17 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_45:
    v60 = v23[2];
    v59 = v23[3];
    if (v60 >= v59 >> 1)
    {
      v23 = sub_265A6CFE8((v59 > 1), v60 + 1, 1, v23);
    }

    v21 = v74 + 1;
    v23[2] = v60 + 1;
    v23[v60 + 4] = v31;
    result = v72;
  }

  while (v74 + 1 != v17);

  v62 = v23[2];
  if (!v62)
  {
LABEL_70:
    swift_beginAccess();
    *(v81 + 16) = v23;

    swift_beginAccess();
    *(v81 + 24) = v25;
    *&v69 = v91;
    *(&v69 + 1) = vsub_f32(v22, *&v91);
    v92 = v69;
    swift_beginAccess();
    LODWORD(v70) = v89;
    *(v81 + 32) = v92;
    *(&v70 + 1) = v27 - *&v89;
    v90 = v70;
    swift_beginAccess();
    *(v81 + 48) = v90;
    swift_beginAccess();
    *(v81 + 56) = v26;
  }

LABEL_56:
  v63 = 0;
  while (v63 < v23[2])
  {
    v64 = *(v23[v63 + 4] + 16);
    if (v64)
    {
      v65 = 0;
      v66 = 52;
      while (1)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_265A6CED4(v23);
          v23 = result;
        }

        if (v63 >= v23[2])
        {
          break;
        }

        v67 = v23 + 4;
        v68 = v23[v63 + 4];
        result = swift_isUniquelyReferenced_nonNull_native();
        v23[v63 + 4] = v68;
        if ((result & 1) == 0)
        {
          result = sub_265A6CEC0(v68);
          v68 = result;
          v67[v63] = result;
        }

        if (v65 >= *(v68 + 16))
        {
          goto LABEL_72;
        }

        ++v65;
        *(v68 + v66) = *(v68 + v66) / v25;
        v67[v63] = v68;
        v66 += 32;
        if (v64 == v65)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_57:
    if (++v63 == v62)
    {
      goto LABEL_70;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_265A6C820@<X0>(char a1@<W0>, __int128 *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>)
{
  (*(*v7 + 296))(v73);
  v79 = v73[6];
  v80 = v73[7];
  v81 = v74;
  v75[2] = v73[2];
  v76 = v73[3];
  v77 = v73[4];
  v78 = v73[5];
  v75[0] = v73[0];
  v75[1] = v73[1];
  result = sub_265A6E154(v75);
  if (result == 1)
  {
    v15 = xmmword_265AAB690;
    v16 = xmmword_265AAB6A0;
    v17 = 0uLL;
LABEL_15:
    *a2 = v16;
    a2[1] = v15;
    a2[2] = v17;
    return result;
  }

  if (BYTE4(v76))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (BYTE12(v76))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((BYTE4(v77) & 1) == 0)
  {
    v18 = a6;
    v19 = a3;
    v20 = *&v77;
    v21 = *&v76;
    v64 = *&v76;
    v22 = *(&v76 + 2);
    sub_265A6E030(v73);
    v23 = v22 - v20;
    v24 = -v20 / v23;
    v25 = v23 / v21 * a7;
    v82.origin.x = v19;
    v60 = v19;
    v26 = a4;
    v82.origin.y = a4;
    v82.size.width = a5;
    v27 = v18;
    v82.size.height = v18;
    v62 = (CGRectGetHeight(v82) - v25) * 0.5;
    v28 = *(*v7 + 224);
    v29 = v28();
    rect = a5;
    v30 = COERCE_FLOAT((v28)().n128_u32[1]);
    v31 = COERCE_FLOAT((v28)().n128_u32[2]);
    v83.size.height = COERCE_FLOAT((v28)().n128_u32[3]);
    v83.origin.x = v29;
    v83.origin.y = v30;
    v83.size.width = v31;
    Width = CGRectGetWidth(v83);
    CGAffineTransformMakeTranslation(&t1, -v29 - Width * 0.5, 0.0);
    v33 = 1.0 - v24;
    if ((a1 & 1) == 0)
    {
      v33 = v24;
    }

    v63 = v25 * v33 + v62;
    tx = t1.tx;
    ty = t1.ty;
    v36 = a7 / v64;
    if (a1)
    {
      v37 = -v36;
    }

    else
    {
      v37 = a7 / v64;
    }

    v65 = *&t1.c;
    v68 = *&t1.a;
    CGAffineTransformMakeScale(&t1, v36, v37);
    v38 = *&t1.a;
    v39 = *&t1.c;
    v40 = *&t1.tx;
    *&t1.a = v68;
    *&t1.c = v65;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v38;
    *&t2.c = v39;
    *&t2.tx = v40;
    v41 = CGAffineTransformConcat(&v70, &t1, &t2);
    v66 = *&v70.a;
    v69 = *&v70.c;
    v58 = v70.ty;
    v59 = v70.tx;
    v42 = v36 * COERCE_FLOAT((v28)(v41).n128_u32[2]);
    v84.origin.x = v60;
    v84.origin.y = v26;
    v84.size.width = rect;
    v84.size.height = v27;
    if (CGRectGetWidth(v84) + -20.0 >= v42)
    {
      v50 = rect;
      v51 = v27;
      v49 = v58;
      v48 = v59;
    }

    else
    {
      v85.origin.x = v60;
      v85.origin.y = v26;
      v85.size.width = rect;
      v85.size.height = v27;
      v43 = CGRectGetWidth(v85) + -20.0;
      v44 = (v28)();
      CGAffineTransformMakeScale(&t1, v43 / (v36 * v44.n128_f32[2]), v43 / (v36 * v44.n128_f32[2]));
      v45 = *&t1.a;
      v46 = *&t1.c;
      v47 = *&t1.tx;
      *&t1.a = v66;
      *&t1.c = v69;
      t1.tx = v59;
      t1.ty = v58;
      *&t2.a = v45;
      *&t2.c = v46;
      *&t2.tx = v47;
      CGAffineTransformConcat(&v70, &t1, &t2);
      v66 = *&v70.a;
      v69 = *&v70.c;
      v48 = v70.tx;
      v49 = v70.ty;
      v50 = rect;
      v51 = v27;
    }

    v52 = v60;
    v53 = v26;
    v54 = CGRectGetWidth(*(&v50 - 2));
    CGAffineTransformMakeTranslation(&t1, v54 * 0.5 + v60, v63 + v26);
    v55 = *&t1.a;
    v56 = *&t1.c;
    v57 = *&t1.tx;
    *&t1.a = v66;
    *&t1.c = v69;
    t1.tx = v48;
    t1.ty = v49;
    *&t2.a = v55;
    *&t2.c = v56;
    *&t2.tx = v57;
    result = CGAffineTransformConcat(&v70, &t1, &t2);
    v16 = *&v70.a;
    v15 = *&v70.c;
    v17 = *&v70.tx;
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_265A6CC08()
{

  v1 = *(v0 + 176);
  v6[6] = *(v0 + 160);
  v6[7] = v1;
  v7 = *(v0 + 192);
  v2 = *(v0 + 112);
  v6[2] = *(v0 + 96);
  v6[3] = v2;
  v3 = *(v0 + 144);
  v6[4] = *(v0 + 128);
  v6[5] = v3;
  v4 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v4;
  sub_265A6E030(v6);
  return v0;
}

uint64_t sub_265A6CC60()
{

  v1 = *(v0 + 176);
  v6[6] = *(v0 + 160);
  v6[7] = v1;
  v7 = *(v0 + 192);
  v2 = *(v0 + 112);
  v6[2] = *(v0 + 96);
  v6[3] = v2;
  v3 = *(v0 + 144);
  v6[4] = *(v0 + 128);
  v6[5] = v3;
  v4 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v4;
  sub_265A6E030(v6);
  return swift_deallocClassInstance();
}

unint64_t sub_265A6CCC4(char a1)
{
  sub_265AA7C10();
  sub_265AA75B0();

  v2 = sub_265AA7C40();

  return sub_265A6CD70(a1 & 1, v2);
}

unint64_t sub_265A6CD70(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6163536576727563;
    }

    else
    {
      v6 = 0x6974756C6F736572;
    }

    if (a1)
    {
      v7 = 0xEA0000000000656CLL;
    }

    else
    {
      v7 = 0xEA00000000006E6FLL;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6163536576727563 : 0x6974756C6F736572;
      v9 = *(*(v2 + 48) + v4) ? 0xEA0000000000656CLL : 0xEA00000000006E6FLL;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_265AA7B50();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_265A6CEE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FC68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_265A6CFE8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FFA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FC60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_265A6D11C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_265AA7B50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_265AA7B50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6867697279706F63 && a2 == 0xE900000000000074 || (sub_265AA7B50() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265507374696E75 && a2 == 0xEA00000000006D45 || (sub_265AA7B50() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265646E65637361 && a2 == 0xE800000000000000 || (sub_265AA7B50() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65646E6563736564 && a2 == 0xE900000000000072 || (sub_265AA7B50() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6867696548706163 && a2 == 0xE900000000000074 || (sub_265AA7B50() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_265AA7B50() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73656B6F727473 && a2 == 0xE700000000000000 || (sub_265AA7B50() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_265AA7B50();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_265A6D458@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FC80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v104 = 1;
  v101 = 1;
  v98 = 1;
  v95 = 1;
  v92 = 1;
  v9 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_265A6AACC();
  sub_265AA7C50();
  if (v2)
  {
    v105 = v2;
    v53 = 0;
    v54 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    *&v67 = v15;
    *(&v67 + 1) = v14;
    *&v68 = v13;
    *(&v68 + 1) = v12;
    *&v69 = v11;
    *(&v69 + 1) = v10;
    v70 = v54;
    v71 = v104;
    v72 = v102;
    v73 = v103;
    v74 = v53;
    v75 = v101;
    v76 = v99;
    v77 = v100;
    v78 = v16;
    v79 = v98;
    v80 = v96;
    v81 = v97;
    v82 = v51;
    v83 = v95;
    v84 = v93;
    v85 = v94;
    v86 = v50;
    v87 = v49;
    v88 = v48;
    v89 = 0;
    v90 = 0;
    v91 = v92;
    return sub_265A6E124(&v67);
  }

  LOBYTE(v67) = 0;
  *&v47 = sub_265AA7A50();
  *(&v47 + 1) = v18;
  LOBYTE(v67) = 1;
  *&v46 = sub_265AA7A50();
  *(&v46 + 1) = v19;
  LOBYTE(v67) = 2;
  *&v45 = sub_265AA7A50();
  *(&v45 + 1) = v20;
  LOBYTE(v67) = 3;
  v54 = sub_265AA7A60();
  v104 = BYTE4(v54) & 1;
  LOBYTE(v67) = 4;
  v53 = sub_265AA7A60();
  v101 = BYTE4(v53) & 1;
  LOBYTE(v67) = 5;
  v44 = sub_265AA7A60();
  v98 = BYTE4(v44) & 1;
  LOBYTE(v67) = 6;
  v51 = sub_265AA7A60();
  v95 = BYTE4(v51) & 1;
  LOBYTE(v67) = 7;
  v21 = sub_265AA7A50();
  v105 = 0;
  v49 = v22;
  v50 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FC10);
  LOBYTE(v55) = 8;
  sub_265A6E988(&qword_28002FC88, sub_265A6EA00);
  v23 = v105;
  sub_265AA7A70();
  v105 = v23;
  if (v23)
  {
    (*(v6 + 8))(v8, v5);
    v48 = 0;
LABEL_5:
    v14 = *(&v47 + 1);
    v15 = v47;
    v12 = *(&v46 + 1);
    v13 = v46;
    v10 = *(&v45 + 1);
    v11 = v45;
    v16 = v44;
    goto LABEL_4;
  }

  v43 = a2;
  v48 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF80);
  v64 = 9;
  sub_265A6E938(&qword_28002FC78);
  v24 = v105;
  sub_265AA7A70();
  v105 = v24;
  if (v24)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_5;
  }

  (*(v6 + 8))(v8, v5);
  v40 = *(&v65 + 1);
  v41 = v65;
  v92 = v66;
  v55 = v47;
  v56 = v46;
  v57 = v45;
  LODWORD(v58) = v54;
  v42 = v104;
  BYTE4(v58) = v104;
  DWORD2(v58) = v53;
  v39 = v101;
  BYTE12(v58) = v101;
  v25 = v44;
  LODWORD(v59) = v44;
  v26 = v98;
  BYTE4(v59) = v98;
  v28 = v50;
  v27 = v51;
  DWORD2(v59) = v51;
  v29 = v95;
  BYTE12(v59) = v95;
  v30 = v48;
  v31 = v49;
  *&v60 = v50;
  *(&v60 + 1) = v49;
  *&v61 = v48;
  v62 = v65;
  v32 = v66;
  v63 = v66;
  sub_265A6E0EC(&v55, &v67);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  v67 = v47;
  v68 = v46;
  v69 = v45;
  v70 = v54;
  v71 = v42;
  v74 = v53;
  v75 = v39;
  v78 = v25;
  v79 = v26;
  v82 = v27;
  v83 = v29;
  v86 = v28;
  v87 = v31;
  v88 = v30;
  v89 = v41;
  v90 = v40;
  v91 = v32;
  result = sub_265A6E124(&v67);
  v33 = v62;
  v34 = v43;
  *(v43 + 96) = v61;
  *(v34 + 112) = v33;
  *(v34 + 128) = v63;
  v35 = v58;
  *(v34 + 32) = v57;
  *(v34 + 48) = v35;
  v36 = v60;
  *(v34 + 64) = v59;
  *(v34 + 80) = v36;
  v37 = v56;
  *v34 = v55;
  *(v34 + 16) = v37;
  return result;
}

unint64_t sub_265A6DB84()
{
  result = qword_2800310C8[0];
  if (!qword_2800310C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800310C8);
  }

  return result;
}

uint64_t sub_265A6DBD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12400 && a2 == 0xE200000000000000;
  if (v3 || (sub_265AA7B50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12656 && a2 == 0xE200000000000000 || (sub_265AA7B50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12912 && a2 == 0xE200000000000000 || (sub_265AA7B50() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 13168 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_265AA7B50();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_265A6DD1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FC70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A6DB84();
  sub_265AA7C50();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF80);
    v9 = 0;
    sub_265A6E938(&qword_28002FC78);
    sub_265AA7AA0();
    v8[3] = v10;
    v9 = 1;
    sub_265AA7AA0();
    v8[2] = v10;
    v9 = 2;
    sub_265AA7AA0();
    v8[1] = v10;
    v9 = 3;
    sub_265AA7AA0();
    (*(v4 + 8))(v6, v3);
    v8[0] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

double sub_265A6DF9C(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_265AAB1F0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

uint64_t sub_265A6DFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FC48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A6E030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FC48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_265A6E098()
{
  result = qword_28002FC50;
  if (!qword_28002FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FC50);
  }

  return result;
}

uint64_t sub_265A6E154(uint64_t a1)
{
  v1 = *(a1 + 8);
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

unint64_t sub_265A6E17C()
{
  result = qword_28002FC58;
  if (!qword_28002FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FC58);
  }

  return result;
}

unint64_t sub_265A6E1D4()
{
  result = qword_28002FFC0;
  if (!qword_28002FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FFC0);
  }

  return result;
}

__n128 __swift_memcpy24_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CursiveTextPathLegacy.PathPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CursiveTextPathLegacy.PathPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy129_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_265A6E2DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 129))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_265A6E338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265A6E3D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265A6E3F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_265A6E468(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_265A6E4FC(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CursiveTextPathDefinition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CursiveTextPathDefinition.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_265A6E72C()
{
  result = qword_2800316D0[0];
  if (!qword_2800316D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800316D0);
  }

  return result;
}

unint64_t sub_265A6E784()
{
  result = qword_2800318E0[0];
  if (!qword_2800318E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800318E0);
  }

  return result;
}

unint64_t sub_265A6E7DC()
{
  result = qword_2800319F0;
  if (!qword_2800319F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800319F0);
  }

  return result;
}

unint64_t sub_265A6E834()
{
  result = qword_2800319F8[0];
  if (!qword_2800319F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800319F8);
  }

  return result;
}

unint64_t sub_265A6E88C()
{
  result = qword_280031A80;
  if (!qword_280031A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280031A80);
  }

  return result;
}

unint64_t sub_265A6E8E4()
{
  result = qword_280031A88[0];
  if (!qword_280031A88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280031A88);
  }

  return result;
}

uint64_t sub_265A6E938(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002FF80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265A6E988(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002FC10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265A6EA34(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002FC28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_265A6EAAC()
{
  result = qword_28002FC98;
  if (!qword_28002FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FC98);
  }

  return result;
}

uint64_t sub_265A6EB5C()
{
  sub_265AA7C10();
  sub_265AA7C30();
  return sub_265AA7C40();
}

uint64_t sub_265A6EBC8()
{
  sub_265AA7C10();
  sub_265AA7C30();
  return sub_265AA7C40();
}

uint64_t sub_265A6EC24()
{
  result = type metadata accessor for FeatureFlagsManager();
  qword_2800333C0 = result;
  *algn_2800333C8 = &off_287755D68;
  return result;
}

uint64_t *sub_265A6EC50()
{
  if (qword_280031B10 != -1)
  {
    swift_once();
  }

  return &qword_2800333C0;
}

uint64_t sub_265A6ECA0()
{
  if (qword_280031B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_2800333C0;
}

uint64_t sub_265A6ED14(uint64_t a1, uint64_t a2)
{
  if (qword_280031B10 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  qword_2800333C0 = a1;
  *algn_2800333C8 = a2;
  return result;
}

uint64_t (*sub_265A6ED98())()
{
  if (qword_280031B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_265A6EE24()
{
  result = qword_28002FCA0;
  if (!qword_28002FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FCA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnBoardingKit(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for OnBoardingKit(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id sub_265A6EFD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureFlagsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

float32_t sub_265A6F040()
{
  v1 = *v0;
  if (vmovn_s32(vcgtq_f32(*v0, v0[1])).u8[0])
  {
    v1.i32[0] = v0[1];
  }

  return v1.f32[0];
}

float sub_265A6F05C()
{
  result = *(v0 + 4);
  if (*(v0 + 20) < result)
  {
    return *(v0 + 20);
  }

  return result;
}

float32_t sub_265A6F070()
{
  v1 = *v0;
  if (vmovn_s32(vcgeq_f32(v0[1], *v0)).u8[0])
  {
    v1.i32[0] = v0[1];
  }

  return v1.f32[0];
}

float sub_265A6F08C()
{
  result = *(v0 + 4);
  if (result <= *(v0 + 20))
  {
    return *(v0 + 20);
  }

  return result;
}

uint64_t sub_265A6F0D4(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

char *sub_265A6F104(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {

    v6 = sub_265A71DB8(v5);

    v7 = *(v6 + 16);
    v8 = *(v3 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v9 <= *(v3 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v10 = v8 + v7;
      }

      else
      {
        v10 = v8;
      }

      result = sub_265A705E4(result, v10, 1, v3);
      v3 = result;
      if (*(v6 + 16))
      {
LABEL_14:
        v11 = *(v3 + 2);
        if ((*(v3 + 3) >> 1) - v11 < v7)
        {
          goto LABEL_22;
        }

        memcpy(&v3[96 * v11 + 32], (v6 + 32), 96 * v7);

        if (v7)
        {
          v12 = *(v3 + 2);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

BOOL sub_265A6F250(__int128 *a1, __n128 a2, double a3, float a4)
{
  v8 = a2.n128_u32[0];
  v10 = *a1;
  v11 = a1[1];
  if (sub_265A7233C(*a1, *&v11, a2.n128_u64[0]) >= a4 && (v5.f32[0] = a2.n128_f32[0] + a2.n128_f32[2], v5.i32[1] = a2.n128_i32[1], sub_265A7233C(*&v10, *&v11, v5) >= a4) && (v6.f32[0] = a2.n128_f32[0] + a2.n128_f32[2], v6.f32[1] = a2.n128_f32[1] + a2.n128_f32[3], sub_265A7233C(*&v10, *&v11, v6) >= a4))
  {
    return sub_265A7233C(*&v10, *&v11, __PAIR64__(a2.n128_f32[1] + a2.n128_f32[3], v8)) < a4;
  }

  else
  {
    return 1;
  }
}

void sub_265A6F314(uint64_t a1, float a2, float a3, __n128 a4)
{
  v5 = ceilf(a4.n128_f32[2] / a2);
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v7 = ceilf(a4.n128_f32[3] / a2);
  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (v7 >= 9.2234e18)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v8 = v7;
  if (v7 < 0)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v54 = a4.n128_u64[0];
  if (v8)
  {
    v9 = v5;
    if (v5 < 0)
    {
LABEL_107:
      __break(1u);
      return;
    }

    v10 = MEMORY[0x277D84F90];
    do
    {
      if (v9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FCA8);
        v11 = sub_265AA7670();
        *(v11 + 16) = v9;
        memset_pattern16((v11 + 32), &unk_279BB2D80, 8 * v9);
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_265A70804(0, v10[2] + 1, 1, v10, &qword_28002FCD8, &unk_265AABE68, &qword_28002FCE0);
      }

      v13 = v10[2];
      v12 = v10[3];
      a4.n128_u64[0] = v54;
      if (v13 >= v12 >> 1)
      {
        v14 = sub_265A70804((v12 > 1), v13 + 1, 1, v10, &qword_28002FCD8, &unk_265AABE68, &qword_28002FCE0);
        a4.n128_u64[0] = v54;
        v10 = v14;
      }

      v10[2] = v13 + 1;
      v10[v13 + 4] = v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (!*(a1 + 16))
  {
    return;
  }

  v15 = 0;
  v16 = a4.n128_f32[1];
  v17 = a1 + 32;
  v48 = a1 + 32;
  v49 = *(a1 + 16);
  while (2)
  {
    v18 = (v17 + 96 * v15);
    v20 = *v18;
    v19 = v18[1];
    if (vmovn_s32(vcgtq_f32(*v18, v19)).u8[0])
    {
      LODWORD(v21) = v18[1];
    }

    else
    {
      LODWORD(v21) = *v18->f32;
    }

    v22 = floorf((v21 - a3) / a2);
    LODWORD(v23) = HIDWORD(v18[1].i64[0]);
    if (v19.f32[1] >= v20.f32[1])
    {
      LODWORD(v24) = HIDWORD(v18->i64[0]);
    }

    else
    {
      LODWORD(v24) = HIDWORD(v18[1].i64[0]);
    }

    if (vmovn_s32(vcgeq_f32(v19, v20)).u8[0])
    {
      LODWORD(v25) = v18[1];
    }

    else
    {
      LODWORD(v25) = *v18->f32;
    }

    if (v20.f32[1] > v19.f32[1])
    {
      LODWORD(v23) = HIDWORD(v18->i64[0]);
    }

    v26 = v22 * a2;
    v27 = ((v22 * a2) - a4.n128_f32[0]) / a2;
    if (v27 <= -9.2234e18)
    {
      goto LABEL_94;
    }

    if (v27 >= 9.2234e18)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v28 = floorf((v24 - a3) / a2);
    v29 = v28 * a2;
    v30 = ((v28 * a2) - v16) / a2;
    if (v30 <= -9.2234e18)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (v30 >= 9.2234e18)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v31 = ((ceilf((v23 + a3) / a2) * a2) - v29) / a2;
    if (v31 <= -9.2234e18)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v31 >= 9.2234e18)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v32 = v30;
    v33 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    if (v33 < v32)
    {
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v34 = ((ceilf((v25 + a3) / a2) * a2) - v26) / a2;
    if ((LODWORD(v34) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v31) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v27) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v30) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      goto LABEL_102;
    }

    if (v34 <= -9.2234e18)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v34 >= 9.2234e18)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v35 = v27;
    v52 = v34;
    if (__OFADD__(v27, v34))
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (v27 + v34 < v35)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v50 = v15 + 1;
    v51 = v27;
    v58 = v18[1];
    v60 = *v18;
    while (2)
    {
      v53 = (v16 + (v32 * a2)) + a2;
      v36 = v52;
      while (1)
      {
        v37.f32[0] = a4.n128_f32[0] + (v35 * a2);
        v55 = v37.i32[0];
        v56 = v37.f32[0];
        v37.f32[1] = v16 + (v32 * a2);
        if (sub_265A7233C(*v20.f32, *v19.f32, v37) < a3)
        {
          break;
        }

        v57 = v56 + a2;
        v38.f32[0] = v57;
        v38.f32[1] = v16 + (v32 * a2);
        if (sub_265A7233C(*v60.f32, *v58.f32, v38) < a3 || sub_265A7233C(*v60.f32, *v58.f32, __PAIR64__(LODWORD(v53), LODWORD(v57))) < a3 || sub_265A7233C(*v60.f32, *v58.f32, __PAIR64__(LODWORD(v53), v55)) < a3)
        {
          break;
        }

        a4.n128_u32[0] = v54;
        v19.i64[0] = v58.i64[0];
        v20.i64[0] = v60.i64[0];
        if (!v36)
        {
          goto LABEL_76;
        }

LABEL_67:
        --v36;
        v46 = __OFADD__(v35++, 1);
        if (v46)
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v32 < 0)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v10 = sub_265A70B08(v10);
        if (v32 < 0)
        {
          goto LABEL_82;
        }
      }

      if (v32 >= v10[2])
      {
        goto LABEL_83;
      }

      v39 = v10[v32 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10[v32 + 4] = v39;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v35 < 0)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v39 = sub_265A70AC0(v39);
        v10[v32 + 4] = v39;
        if (v35 < 0)
        {
          goto LABEL_84;
        }
      }

      if (v35 >= v39[2])
      {
        goto LABEL_85;
      }

      v41 = &v39[v35];
      v42 = v41[4];
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v41[4] = v42;
      if ((v43 & 1) == 0)
      {
        v42 = sub_265A70700(0, *(v42 + 2) + 1, 1, v42);
        v41[4] = v42;
      }

      v45 = *(v42 + 2);
      v44 = *(v42 + 3);
      a4.n128_u32[0] = v54;
      v19.i64[0] = v58.i64[0];
      v20.i64[0] = v60.i64[0];
      if (v45 >= v44 >> 1)
      {
        v47 = sub_265A70700((v44 > 1), v45 + 1, 1, v42);
        v19.i64[0] = v58.i64[0];
        v20.i64[0] = v60.i64[0];
        a4.n128_u32[0] = v54;
        v42 = v47;
        v41[4] = v47;
      }

      *(v42 + 2) = v45 + 1;
      *&v42[8 * v45 + 32] = v15;
      if (v36)
      {
        goto LABEL_67;
      }

LABEL_76:
      if (v32 != v33)
      {
        v46 = __OFADD__(v32++, 1);
        v35 = v51;
        if (!v46)
        {
          continue;
        }

        goto LABEL_86;
      }

      break;
    }

    ++v15;
    v17 = v48;
    if (v50 != v49)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_265A6F958(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FCB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265AAB1D0;
  *(inited + 32) = 0;
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_44;
  }

  v5 = inited;
  v7 = *(a2 + 32);
  v6 = a2 + 32;
  v8 = *(v7 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_265AAABB0;
  *(v9 + 32) = v8;
  *(v9 + 40) = v4;
  v10 = v8 * v4;
  v38 = v8;
  if ((v8 * v4) >> 64 != (v8 * v4) >> 63)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v11 = __OFADD__(v10, 2);
  v12 = v10 + 2;
  if (v11)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    goto LABEL_47;
  }

  v37 = v12;
  v33 = v9;
  v34 = v6;
  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  v35 = v4;
  do
  {
    v36 = v14;
    if (v38)
    {
      v16 = 0;
      v17 = *(v34 + 8 * v14);
      while (1)
      {
        if (v16 >= *(v17 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v18 = *(v17 + 32 + 8 * v16);
        v19 = *(v18 + 16);
        if (v19)
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_265A70700(0, *(v15 + 2) + 1, 1, v15);
        }

        v30 = *(v15 + 2);
        v29 = *(v15 + 3);
        if (v30 >= v29 >> 1)
        {
          v15 = sub_265A70700((v29 > 1), v30 + 1, 1, v15);
        }

        *(v15 + 2) = v30 + 1;
        *&v15[8 * v30 + 32] = v37;
LABEL_11:
        if (v38 == ++v16)
        {
          goto LABEL_6;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_265A70700(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v15 = sub_265A70700((v20 > 1), v21 + 1, 1, v15);
      }

      *(v15 + 2) = v21 + 1;
      *&v15[8 * v21 + 32] = v13;
      v23 = *(v5 + 2);
      v22 = *(v5 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v5 = sub_265A70700((v22 > 1), v23 + 1, 1, v5);
      }

      *(v5 + 2) = v24;
      *&v5[8 * v23 + 32] = v19;
      v25 = *(v18 + 16);
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_39;
      }

      if (v26 > *(v5 + 3) >> 1)
      {
        if (v24 <= v26)
        {
          v31 = v24 + v25;
        }

        else
        {
          v31 = v24;
        }

        v5 = sub_265A70700(1, v31, 1, v5);
        v24 = *(v5 + 2);
        if (*(v18 + 16))
        {
LABEL_23:
          if (((*(v5 + 3) >> 1) - v24) < v25)
          {
            goto LABEL_42;
          }

          memcpy(&v5[8 * v24 + 32], (v18 + 32), 8 * v25);

          if (v25)
          {
            v27 = *(v5 + 2);
            v11 = __OFADD__(v27, v25);
            v28 = v27 + v25;
            if (v11)
            {
              goto LABEL_43;
            }

            *(v5 + 2) = v28;
          }

          goto LABEL_10;
        }
      }

      else if (v25)
      {
        goto LABEL_23;
      }

      if (v25)
      {
        goto LABEL_40;
      }

LABEL_10:
      v11 = __OFADD__(v13, v19 + 1);
      v13 += v19 + 1;
      if (v11)
      {
        goto LABEL_41;
      }

      goto LABEL_11;
    }

LABEL_6:
    v14 = v36 + 1;
  }

  while (v36 + 1 != v35);
  sub_265A704F8(v15);
  sub_265A704F8(v5);
  return v33;
}

uint64_t sub_265A6FCDC(uint64_t a1, uint64_t a2)
{
  v92[5] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FCB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265AAB1D0;
  *(inited + 32) = 0;
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_102;
  }

  v5 = inited;
  v6 = a2 + 32;
  v7 = *(*(a2 + 32) + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_265AAABB0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v4;
  v76 = v8;
  v9 = v7 * v4;
  v84 = v7;
  if ((v7 * v4) >> 64 != (v7 * v4) >> 63)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v10 = __OFADD__(v9, 2);
  v11 = v9 + 2;
  if (v10)
  {
LABEL_104:
    __break(1u);
LABEL_105:
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
    goto LABEL_112;
  }

  v81 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    goto LABEL_105;
  }

  v77 = v11;
  v85 = MEMORY[0x277D84F90];
  v12 = 0;
  v88 = a2 + 32;
  v89 = a2;
  v78 = v4;
  do
  {
    v86 = v12 + 1;
    v13 = v12;
    if (v84)
    {
      v14 = 0;
      v15 = v12 - 1;
      v79 = v13 - 1;
      v80 = v13;
      do
      {
        v82 = v5;
        v16 = v14++;
        v17 = MEMORY[0x277D84FA0];
        v91 = MEMORY[0x277D84FA0];
        v83 = v16;
        v87 = v16 - 1;
        v18 = MEMORY[0x277D84FA0];
        v19 = v15;
        v90 = v14;
        v20 = v16 - 1;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

        while (1)
        {
LABEL_11:
          while (1)
          {
            v22 = v20++ == v14;
            if (v22)
            {
              break;
            }

            if ((v19 & 0x8000000000000000) == 0)
            {
              goto LABEL_13;
            }
          }

          v22 = v19++ == v86;
          if (v22)
          {
            break;
          }

          v20 = v87;
          if ((v19 & 0x8000000000000000) == 0)
          {
LABEL_13:
            if (v19 < *(a2 + 16) && (v20 & 0x8000000000000000) == 0)
            {
              v23 = *(v6 + 8 * v19);
              if (v20 < *(v23 + 16))
              {
                v24 = *(v23 + 8 * v20 + 32);
                v25 = *(v24 + 16);
                if (v25)
                {
                  v26 = v24 + 32;

                  v27 = 0;
                  while (1)
                  {
                    v28 = v17 + 56;
                    while (1)
                    {
                      v29 = *(v26 + 8 * v27++);
                      v30 = sub_265AA7C00();
                      v31 = -1 << v17[32];
                      v32 = v30 & ~v31;
                      if (((*&v28[(v32 >> 3) & 0xFFFFFFFFFFFFFF8] >> v32) & 1) == 0)
                      {
                        break;
                      }

                      v33 = ~v31;
                      while (*(*(v17 + 6) + 8 * v32) != v29)
                      {
                        v32 = (v32 + 1) & v33;
                        if (((*&v28[(v32 >> 3) & 0xFFFFFFFFFFFFFF8] >> v32) & 1) == 0)
                        {
                          goto LABEL_26;
                        }
                      }

                      if (v27 == v25)
                      {
                        v21 = v18;
                        goto LABEL_10;
                      }
                    }

LABEL_26:
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v92[0] = v18;
                    if (*(v18 + 24) <= *(v18 + 16))
                    {
                      if (isUniquelyReferenced_nonNull_native)
                      {
                        sub_265A717F8();
                      }

                      else
                      {
                        sub_265A71608();
                      }

                      v21 = v92[0];
                      v35 = sub_265AA7C00();
                      v36 = -1 << v21[32];
                      v32 = v35 & ~v36;
                      if ((*&v21[((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v32))
                      {
                        v37 = ~v36;
                        while (*(*(v21 + 6) + 8 * v32) != v29)
                        {
                          v32 = (v32 + 1) & v37;
                          if (((*&v21[((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v32) & 1) == 0)
                          {
                            goto LABEL_36;
                          }
                        }

LABEL_112:
                        sub_265AA7B90();
                        __break(1u);
                      }
                    }

                    else if (isUniquelyReferenced_nonNull_native)
                    {
                      v21 = v18;
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FCC0);
                      v40 = sub_265AA7910();
                      v21 = v40;
                      v41 = *(v18 + 16);
                      if (v41)
                      {
                        v42 = (v40 + 56);
                        v43 = v18 + 56;
                        v44 = ((1 << v21[32]) + 63) >> 6;
                        if (v21 != v18 || v42 >= v43 + 8 * v44)
                        {
                          memmove(v42, (v18 + 56), 8 * v44);
                          v41 = *(v18 + 16);
                        }

                        v45 = 0;
                        *(v21 + 2) = v41;
                        v46 = 1 << *(v18 + 32);
                        if (v46 < 64)
                        {
                          v47 = ~(-1 << v46);
                        }

                        else
                        {
                          v47 = -1;
                        }

                        v48 = v47 & *(v18 + 56);
                        v49 = (v46 + 63) >> 6;
                        if (!v48)
                        {
                          goto LABEL_48;
                        }

                        while (1)
                        {
                          v50 = __clz(__rbit64(v48));
                          v48 &= v48 - 1;
                          for (i = v50 | (v45 << 6); ; i = __clz(__rbit64(v53)) | (v45 << 6))
                          {
                            *(*(v21 + 6) + 8 * i) = *(*(v18 + 48) + 8 * i);
                            if (v48)
                            {
                              break;
                            }

LABEL_48:
                            v52 = v45;
                            do
                            {
                              v45 = v52 + 1;
                              if (__OFADD__(v52, 1))
                              {
                                goto LABEL_99;
                              }

                              if (v45 >= v49)
                              {
                                goto LABEL_55;
                              }

                              v53 = *(v43 + 8 * v45);
                              ++v52;
                            }

                            while (!v53);
                            v48 = (v53 - 1) & v53;
                          }
                        }
                      }

LABEL_55:
                    }

LABEL_36:
                    *&v21[((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] |= 1 << v32;
                    *(*(v21 + 6) + 8 * v32) = v29;
                    v38 = *(v21 + 2);
                    v10 = __OFADD__(v38, 1);
                    v39 = v38 + 1;
                    if (v10)
                    {
                      break;
                    }

                    *(v21 + 2) = v39;
                    v91 = v21;
                    v17 = v21;
                    v18 = v21;
                    if (v27 == v25)
                    {
LABEL_10:

                      v18 = v21;
                      v6 = v88;
                      a2 = v89;
                      v14 = v90;
                      goto LABEL_11;
                    }
                  }

                  __break(1u);
LABEL_99:
                  __break(1u);
LABEL_100:
                  __break(1u);
LABEL_101:
                  __break(1u);
LABEL_102:
                  __break(1u);
                  goto LABEL_103;
                }
              }
            }
          }
        }

        if (*(a2 + 16) <= v80)
        {
          goto LABEL_100;
        }

        v54 = *(v6 + 8 * v80);
        if (*(v54 + 16) <= v83)
        {
          goto LABEL_101;
        }

        if (*(v17 + 2))
        {
          v55 = *(v54 + 8 * v83 + 32);
          v56 = *(v55 + 16);
          if (v56)
          {

            v57 = 32;
            do
            {
              sub_265A713D8(*(v55 + v57));
              v57 += 8;
              --v56;
            }

            while (v56);

            v18 = v91;
          }
        }

        v58 = *(v18 + 16);
        if (v58)
        {
          v59 = sub_265A70A3C(*(v18 + 16), 0);
          v60 = sub_265A71BA0(v92, v59 + 4, v58, v18);
          sub_265A58CF4();
          if (v60 != v58)
          {
            goto LABEL_106;
          }
        }

        else
        {

          v59 = MEMORY[0x277D84F90];
        }

        v92[0] = v59;

        sub_265A70B50(v92);
        v5 = v82;
        v4 = v78;

        v61 = v92[0];
        v62 = *(v92[0] + 2);
        if (!v62)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_265A70700(0, *(v85 + 2) + 1, 1, v85);
          }

          v73 = *(v85 + 2);
          v72 = *(v85 + 3);
          if (v73 >= v72 >> 1)
          {
            v85 = sub_265A70700((v72 > 1), v73 + 1, 1, v85);
          }

          *(v85 + 2) = v73 + 1;
          *&v85[8 * v73 + 32] = v77;
          goto LABEL_95;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_265A70700(0, *(v85 + 2) + 1, 1, v85);
        }

        v64 = *(v85 + 2);
        v63 = *(v85 + 3);
        if (v64 >= v63 >> 1)
        {
          v85 = sub_265A70700((v63 > 1), v64 + 1, 1, v85);
        }

        *(v85 + 2) = v64 + 1;
        *&v85[8 * v64 + 32] = v81;
        v66 = *(v82 + 2);
        v65 = *(v82 + 3);
        v67 = v66 + 1;
        if (v66 >= v65 >> 1)
        {
          v5 = sub_265A70700((v65 > 1), v66 + 1, 1, v82);
        }

        *(v5 + 2) = v67;
        *&v5[8 * v66 + 32] = v62;
        v68 = *(v61 + 2);
        v69 = v67 + v68;
        if (__OFADD__(v67, v68))
        {
          goto LABEL_107;
        }

        if (v69 > *(v5 + 3) >> 1)
        {
          if (v67 <= v69)
          {
            v74 = v67 + v68;
          }

          else
          {
            v74 = v67;
          }

          v5 = sub_265A70700(1, v74, 1, v5);
          v67 = *(v5 + 2);
          if (*(v61 + 2))
          {
            goto LABEL_80;
          }

LABEL_93:

          if (v68)
          {
            goto LABEL_108;
          }

          goto LABEL_94;
        }

        if (!v68)
        {
          goto LABEL_93;
        }

LABEL_80:
        if (((*(v5 + 3) >> 1) - v67) < v68)
        {
          goto LABEL_110;
        }

        memcpy(&v5[8 * v67 + 32], v61 + 32, 8 * v68);

        if (v68)
        {
          v70 = *(v5 + 2);
          v10 = __OFADD__(v70, v68);
          v71 = v70 + v68;
          if (v10)
          {
            goto LABEL_111;
          }

          *(v5 + 2) = v71;
        }

LABEL_94:
        v10 = __OFADD__(v81, v62 + 1);
        v81 += v62 + 1;
        if (v10)
        {
          goto LABEL_109;
        }

LABEL_95:
        v15 = v79;
      }

      while (v14 != v84);
    }

    v12 = v86;
  }

  while (v86 != v4);
  sub_265A704F8(v85);
  sub_265A704F8(v5);
  return v76;
}

uint64_t sub_265A704F8(uint64_t result)
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

  result = sub_265A70700(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

char *sub_265A705E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FCE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 96 * v8);
  }

  return v10;
}

char *sub_265A70700(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FCB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_265A70804(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_265A70938(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FCC8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_265A70A3C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FCB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_265A70B50(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_265A71CA0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_265AA7B00();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_265AA7670();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_265A70C84(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_265A70C84(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_265A713C4(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_265A711D0((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_265A70938(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_265A70938((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_265A711D0((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_265A711D0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_265A713D8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_265AA7C00();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_265A714C8();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_265A71A1C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void *sub_265A714C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FCC0);
  v2 = *v0;
  v3 = sub_265AA7910();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_265A71608()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FCC0);
  result = sub_265AA7920();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_265AA7C00();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_265A717F8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FCC0);
  result = sub_265AA7920();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_265AA7C00();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_265A71A1C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_265AA78F0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_265AA7C00() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_265A71BA0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *sub_265A71CB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FCB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_265A71DB8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_52;
  }

  v2 = v1 - 1;
  if (v1 == 1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = result;
  v4 = 0;
  v5 = v1 - 2;
  v6 = result + 32;
  v64 = *(result + 16);
  v62 = 32 * (v1 - 2);
  v63 = v1 - 3;
  if (v1 == 2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = (result + 48);
  v9 = MEMORY[0x277D84F90];
  v10 = result + 32;
  while (1)
  {
    v11 = v4 + 1;
    if (!v4)
    {
      v77 = v3[2];
      Array.subscript.getter(1, &type metadata for SegmentPoint, &v80);
      v13 = v77;
      if ((v81 & 1) == 0)
      {
        v13 = v80;
      }

      v72 = v13;
      Array.subscript.getter(2, &type metadata for SegmentPoint, &v80);
      v14 = v72;
      if ((v81 & 1) == 0)
      {
        v14 = v80;
      }

      v15 = vsubq_f32(v72, v77);
      v16 = vmuls_lane_f32(v15.f32[2], v15, 2);
      v15.i32[3] = 0;
      v66 = v15;
      v15.f32[0] = sqrtf(v16 + vaddv_f32(vmul_f32(*v15.f32, *v15.f32)));
      v17 = vsubq_f32(v14, v77);
      v20 = vmulq_f32(v17, v17);
      *&v18 = v20.f32[2] + vaddv_f32(*v20.f32);
      *v20.f32 = vrsqrte_f32(v18);
      *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v18, vmul_f32(*v20.f32, *v20.f32)));
      v19 = vmulq_n_f32(v17, vmul_f32(*v20.f32, vrsqrts_f32(v18, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
      *v20.f32 = vmul_n_f32(*v19.f32, v15.f32[0]);
      v21 = vmuls_lane_f32(v15.f32[0], v19, 2);
LABEL_32:
      v20.i64[1] = LODWORD(v21);
      v65 = v20;
      goto LABEL_33;
    }

    if (v5 != v4)
    {
      break;
    }

    Array.subscript.getter(v63, &type metadata for SegmentPoint, &v80);
    if (v81)
    {
      v12 = v62;
      v76 = *(v6 + v62);
    }

    else
    {
      v76 = v80;
      v12 = v62;
    }

    v73 = *(v6 + v12);
    Array.subscript.getter(v4 + 1, &type metadata for SegmentPoint, &v80);
    v23 = v73;
    if ((v81 & 1) == 0)
    {
      v23 = v80;
    }

    v24 = vsubq_f32(v23, v73);
    v25 = vmuls_lane_f32(v24.f32[2], v24, 2);
    v24.i32[3] = 0;
    v65 = v24;
    v24.f32[0] = sqrtf(v25 + vaddv_f32(vmul_f32(*v24.f32, *v24.f32)));
    v26 = vsubq_f32(v23, v76);
    v27 = vmulq_f32(v26, v26);
    *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
    *v27.f32 = vrsqrte_f32(v28);
    *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
    v29 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
    *v27.f32 = vmul_n_f32(*v29.f32, v24.f32[0]);
    v27.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v24.f32[0], v29, 2));
    v66 = v27;
LABEL_33:
    v79 = v8[-1];
    v69 = v8->i32[0];
    v71 = v8->i32[1];
    v75 = v8[1];
    v68 = v8[2].i32[0];
    v67 = v8[2].i32[1];
    if (v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      LODWORD(v43) = 0;
      if (v5 == v4)
      {
        v44 = 1.0;
      }

      else
      {
        v44 = 0.0;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_41;
      }

LABEL_45:
      v58 = v44;
      v60 = v43;
      v56 = sub_265A705E4(0, *(v9 + 2) + 1, 1, v9);
      v44 = v58;
      LODWORD(v43) = v60;
      v9 = v56;
      goto LABEL_41;
    }

    v45 = swift_isUniquelyReferenced_nonNull_native();
    LODWORD(v43) = 1.0;
    v44 = v7;
    if ((v45 & 1) == 0)
    {
      goto LABEL_45;
    }

    v44 = v7;
LABEL_41:
    v47 = *(v9 + 2);
    v46 = *(v9 + 3);
    if (v47 >= v46 >> 1)
    {
      v59 = v44;
      v61 = v43;
      v57 = sub_265A705E4((v46 > 1), v47 + 1, 1, v9);
      v44 = v59;
      LODWORD(v43) = v61;
      v9 = v57;
    }

    v48 = v75;
    v49 = v79;
    v50 = vsubq_f32(v75, v79);
    v48.i32[3] = v68;
    v49.i32[3] = v69;
    v52 = v65;
    v51 = v66;
    v53 = vmulq_f32(v66, v50);
    v54 = vmulq_f32(v65, v50);
    v51.f32[3] = 1.0 / (v53.f32[2] + vaddv_f32(*v53.f32));
    v52.f32[3] = 1.0 / (v54.f32[2] + vaddv_f32(*v54.f32));
    *(&v43 + 1) = v44;
    *(v9 + 2) = v47 + 1;
    v55 = &v9[96 * v47];
    v55[2] = v49;
    v55[3] = v48;
    v55[4].i64[0] = __PAIR64__(v67, v71);
    v55[5] = v51;
    v55[6] = v52;
    v55[7].i64[0] = v43;
    v8 += 2;
    ++v4;
    v6 = v10;
    if (v2 == v11)
    {
      return v9;
    }
  }

  result = v4 - 1;
  if (!__OFSUB__(v4, 1))
  {
    result = Array.subscript.getter(result, &type metadata for SegmentPoint, &v80);
    if (v81)
    {
      if (v4 >= v64)
      {
        goto LABEL_51;
      }

      v22 = v8[-1];
    }

    else
    {
      v22 = v80;
    }

    if (v4 >= v64)
    {
      goto LABEL_49;
    }

    v74 = v22;
    v78 = v8[-1];
    Array.subscript.getter(v4 + 1, &type metadata for SegmentPoint, &v80);
    v30 = v78;
    if ((v81 & 1) == 0)
    {
      v30 = v80;
    }

    result = v4 + 2;
    if (__OFADD__(v4, 2))
    {
      goto LABEL_50;
    }

    v70 = v30;
    Array.subscript.getter(result, &type metadata for SegmentPoint, &v80);
    v31 = v70;
    if ((v81 & 1) == 0)
    {
      v31 = v80;
    }

    v32 = vextq_s8(v78, v78, 8uLL).u64[0];
    v33 = vsub_f32(vzip1_s32(v32, *&vextq_s8(v70, v70, 8uLL)), vzip1_s32(*&vextq_s8(v74, v74, 8uLL), v32));
    v34 = vsubq_f32(v31, v70);
    v35 = vsub_f32(vzip1_s32(*v78.i8, *v70.f32), vzip1_s32(*v74.i8, *v78.i8));
    v36 = vsub_f32(vzip2_s32(*v78.i8, *v70.f32), vzip2_s32(*v74.i8, *v78.i8));
    v37 = vsqrt_f32(vadd_f32(vmul_f32(v33, v33), vadd_f32(vmul_f32(v35, v35), vmul_f32(v36, v36))));
    v37.f32[0] = v37.f32[1] / vaddv_f32(v37);
    v38 = v37.f32[1] / (v37.f32[1] + sqrtf(vmuls_lane_f32(v34.f32[2], v34, 2) + vaddv_f32(vmul_f32(*v34.f32, *v34.f32))));
    v39 = vzip1_s32(v35, v36);
    v40 = vzip2_s32(v35, v36);
    *v41.f32 = vmul_n_f32(vadd_f32(v39, v40), v37.f32[0]);
    v41.f32[2] = vaddv_f32(v33) * v37.f32[0];
    v41.i32[3] = 0;
    v66 = v41;
    *v20.f32 = vmul_n_f32(vadd_f32(v40, *v34.f32), v38);
    v21 = (v33.f32[1] + v34.f32[2]) * v38;
    goto LABEL_32;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

float sub_265A7233C(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vsub_f32(a2, a1);
  v11[0] = 0;
  v10 = 1065353216;
  v4 = vsub_f32(a3, a1);
  v8 = v3;
  v9 = v4;
  v5 = vadd_f32(vmul_f32(v3, __PAIR64__(v4.u32[1], v3.u32[0])), vmul_f32(vrev64_s32(v3), vext_s8(v3, v4, 4uLL)));
  v11[1] = vdiv_f32(vdup_lane_s32(v5, 1), v5).u32[0];
  Comparable.clamp(minimum:maximum:)(v11, &v10, MEMORY[0x277D83A90], &v12);
  v6 = vsub_f32(v9, vmul_n_f32(v8, v12));
  return sqrtf(vaddv_f32(vmul_f32(v6, v6)));
}

__n128 __swift_memcpy40_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265A723F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265A7243C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_265A724B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265A724D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

void type metadata accessor for Segment()
{
  if (!qword_28002FCB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28002FCB8);
    }
  }
}

uint64_t sub_265A725A8(float a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_265A72674(float a1)
{
  result = swift_beginAccess();
  *(v1 + 20) = a1;
  return result;
}

uint64_t sub_265A72790(float a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_265A7281C(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return result;
}

__n128 sub_265A72874@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 192);
  v18 = *(v1 + 176);
  v19 = v3;
  v20 = *(v1 + 208);
  v4 = *(v1 + 128);
  v14 = *(v1 + 112);
  v15 = v4;
  v5 = *(v1 + 160);
  v16 = *(v1 + 144);
  v17 = v5;
  v6 = *(v1 + 96);
  v12 = *(v1 + 80);
  v13 = v6;
  sub_265A6DFC0(&v12, &v11);
  v7 = v19;
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 128) = v20;
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_265A7290C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 192);
  v12[6] = *(v1 + 176);
  v12[7] = v3;
  v13 = *(v1 + 208);
  v4 = *(v1 + 128);
  v12[2] = *(v1 + 112);
  v12[3] = v4;
  v5 = *(v1 + 160);
  v12[4] = *(v1 + 144);
  v12[5] = v5;
  v6 = *(v1 + 96);
  v12[0] = *(v1 + 80);
  v12[1] = v6;
  v7 = *(a1 + 80);
  *(v1 + 144) = *(a1 + 64);
  *(v1 + 160) = v7;
  v8 = *(a1 + 112);
  *(v1 + 176) = *(a1 + 96);
  *(v1 + 192) = v8;
  *(v1 + 208) = *(a1 + 128);
  v9 = *(a1 + 48);
  *(v1 + 112) = *(a1 + 32);
  *(v1 + 128) = v9;
  v10 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v10;
  return sub_265A6E030(v12);
}

uint64_t sub_265A729D4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 216) = a1;
  return result;
}

uint64_t sub_265A72A48(char a1)
{
  result = swift_beginAccess();
  *(v1 + 224) = a1;
  return result;
}

uint64_t sub_265A72A8C(char a1)
{
  if (!a1)
  {
    return 0x6974756C6F736572;
  }

  if (a1 == 1)
  {
    return 0x7245656C62616E65;
  }

  return 0x6163536576727563;
}

uint64_t sub_265A72AF0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = *a1;
  v4 = 0x7245656C62616E65;
  v5 = 0xEB00000000657361;
  if (v3 != 1)
  {
    v4 = 0x6163536576727563;
    v5 = 0xEA0000000000656CLL;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6974756C6F736572;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006E6FLL;
  }

  v8 = 0x7245656C62616E65;
  if (*a2 == 1)
  {
    v2 = 0xEB00000000657361;
  }

  else
  {
    v8 = 0x6163536576727563;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974756C6F736572;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xEA00000000006E6FLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_265AA7B50();
  }

  return v11 & 1;
}

uint64_t sub_265A72C00()
{
  sub_265AA7C10();
  sub_265AA75B0();

  return sub_265AA7C40();
}

uint64_t sub_265A72CB0()
{
  sub_265AA75B0();
}

uint64_t sub_265A72D4C()
{
  sub_265AA7C10();
  sub_265AA75B0();

  return sub_265AA7C40();
}

uint64_t sub_265A72DF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_265A750E0();
  *a1 = result;
  return result;
}

void sub_265A72E28(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000657361;
  v3 = 0x7245656C62616E65;
  if (*v1 != 1)
  {
    v3 = 0x6163536576727563;
    v2 = 0xEA0000000000656CLL;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6974756C6F736572;
  }

  if (*v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xEA00000000006E6FLL;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_265A72E94(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_265A72EE4(a1, a2);
  return v4;
}

uint64_t sub_265A72EE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 32) = 0;
  *(v3 + 16) = xmmword_265AABE80;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  sub_265A6DF9C(v71);
  v6 = v71[7];
  *(v3 + 176) = v71[6];
  *(v3 + 192) = v6;
  *(v3 + 208) = v72;
  v7 = v71[3];
  *(v3 + 112) = v71[2];
  *(v3 + 128) = v7;
  v8 = v71[5];
  *(v3 + 144) = v71[4];
  *(v3 + 160) = v8;
  v9 = v71[1];
  *(v3 + 80) = v71[0];
  *(v3 + 96) = v9;
  *(v3 + 216) = 40;
  v10 = (v3 + 216);
  *(v3 + 224) = 0;
  v38 = a1;
  v11 = sub_265AA6D70();
  v13 = v12;
  sub_265AA6C30();
  swift_allocObject();
  sub_265AA6C20();
  sub_265A6E098();
  sub_265AA6C10();
  v37 = v11;

  v48 = v68;
  v49 = v69;
  v44 = v64;
  v45 = v65;
  v46 = v66;
  v47 = v67;
  v42 = v62;
  v43 = v63;
  v57 = v68;
  v58 = v69;
  v53 = v64;
  v54 = v65;
  v55 = v66;
  v56 = v67;
  v50 = v70;
  v59 = v70;
  v51 = v62;
  v52 = v63;
  nullsub_1(v63, *&v68, *&v64);
  swift_beginAccess();
  v14 = *(v3 + 192);
  v60[6] = *(v3 + 176);
  v60[7] = v14;
  v61 = *(v3 + 208);
  v15 = *(v3 + 128);
  v60[2] = *(v3 + 112);
  v60[3] = v15;
  v16 = *(v3 + 160);
  v60[4] = *(v3 + 144);
  v60[5] = v16;
  v17 = *(v3 + 96);
  v60[0] = *(v3 + 80);
  v60[1] = v17;
  v18 = v67;
  *(v3 + 144) = v66;
  *(v3 + 160) = v18;
  v19 = v58;
  *(v3 + 176) = v57;
  *(v3 + 192) = v19;
  *(v3 + 208) = v59;
  v20 = v54;
  *(v3 + 112) = v53;
  *(v3 + 128) = v20;
  v21 = v52;
  *(v3 + 80) = v51;
  *(v3 + 96) = v21;
  sub_265A6E0EC(&v42, v41);
  sub_265A6E030(v60);
  if (!a2)
  {
    swift_beginAccess();
    *v10 = 40;
    sub_265A6E124(&v42);
    goto LABEL_19;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_12;
  }

  v22 = sub_265A74D3C(0);
  if ((v23 & 1) == 0)
  {

    goto LABEL_12;
  }

  sub_265A65A6C(*(a2 + 56) + 32 * v22, v41);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    swift_beginAccess();
    *v10 = 40;
    goto LABEL_13;
  }

  swift_beginAccess();
  *v10 = v40;
  if (v40)
  {
LABEL_13:
    sub_265A6E124(&v42);
    goto LABEL_14;
  }

  v24 = v43.n128_u64[1];
  if (v43.n128_u64[1])
  {
    v25 = v43.n128_u64[0];

    sub_265A6E124(&v42);
    if (v24 == 0xE300000000000000 && v25 == 3157554)
    {

LABEL_24:
      *v10 = 2;
      goto LABEL_14;
    }
  }

  else
  {
    sub_265A6E124(&v42);
  }

  v36 = sub_265AA7B50();

  if ((v36 & 1) == 0)
  {
    goto LABEL_24;
  }

  *v10 = 5;
LABEL_14:
  if (!*(a2 + 16) || (v26 = sub_265A74D3C(1u), (v27 & 1) == 0))
  {

    goto LABEL_19;
  }

  sub_265A65A6C(*(a2 + 56) + 32 * v26, v41);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v28 = 0;
    goto LABEL_20;
  }

  v28 = v39;
LABEL_20:
  swift_beginAccess();
  *(v3 + 224) = v28;
  v29 = sub_265A735F0(1, 0.0, 0.0);
  PathBoundingBox = CGPathGetPathBoundingBox(v29);
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  swift_beginAccess();
  *(v3 + 40) = x;
  *(v3 + 48) = y;
  *(v3 + 56) = width;
  *(v3 + 64) = height;
  swift_beginAccess();
  *&x = *(v3 + 28) / 3000.0;
  swift_beginAccess();
  *(v3 + 32) = LODWORD(x);
  LODWORD(x) = powf((fminf(fmaxf(*&x, 0.0), 10.0) / 10.0) + -1.0, 3.0);
  sub_265A6572C(v37, v13);

  v34 = sub_265AA6D60();
  (*(*(v34 - 8) + 8))(v38, v34);
  *(v3 + 32) = (*&x + 1.0) * 4.0;
  return v3;
}

float sub_265A734A8()
{
  v1 = (*(*v0 + 344))();
  (*(*v0 + 248))();
  if (v1)
  {
    return result + result;
  }

  return result;
}

CGMutablePathRef sub_265A73524(float a1)
{
  v3 = *(*v1 + 248);
  v4 = v3();
  v5 = (*(*v1 + 344))();
  v6 = 0.0;
  if (v5)
  {
    v7 = a1 - v3();
    v6 = v7 / v3();
  }

  return sub_265A735F0(0, a1 / v4, v6);
}

CGMutablePathRef sub_265A735F0(char a1, float a2, float a3)
{
  v5 = v3;
  v8 = (*(*v3 + 200))();
  v9 = (*(*v3 + 248))();
  v10 = *(*v3 + 296);
  v10(&v146);
  v11 = v153;
  v12 = v154;
  v13 = v155;
  v163[4] = v150;
  v163[5] = v151;
  v163[6] = v152;
  v163[0] = v146;
  v163[1] = v147;
  v163[2] = v148;
  v163[3] = v149;
  v164 = v153;
  v165 = v154;
  v166 = v155;
  if (sub_265A6E154(v163) == 1)
  {
    v160 = v150;
    v161 = v151;
    *v162 = v152;
    v156 = v146;
    v157 = v147;
    v158 = v148;
    v159 = v149;
    *&v162[16] = v11;
    *&v162[24] = v12;
    v162[32] = v13;
    v14 = sub_265A6E030(&v156);
    __asm { FMOV            V0.4S, #1.0 }
  }

  else
  {
    v160 = v150;
    v161 = v151;
    *v162 = v152;
    v156 = v146;
    v157 = v147;
    v158 = v148;
    v159 = v149;
    *&v162[16] = v11;
    *&v162[24] = v12;
    v162[32] = v13;
    v14 = sub_265A6E030(&v156);
    if (v13)
    {
      __asm { FMOV            V0.4S, #1.0 }
    }

    else
    {
      _Q0.i64[0] = v11;
      _Q0.i64[1] = v12;
    }
  }

  v108 = _Q0;
  (v10)(&v156, v14);
  v19 = *v162;
  v143[2] = v158;
  v143[3] = v159;
  v143[4] = v160;
  v143[5] = v161;
  v143[0] = v156;
  v143[1] = v157;
  v145[0] = *&v162[8];
  *(v145 + 9) = *&v162[17];
  v144 = *v162;
  if (sub_265A6E154(v143) != 1)
  {
    v137 = v158;
    v138 = v159;
    v139 = v160;
    v140 = v161;
    v135 = v156;
    v136 = v157;
    v141 = v19;
    v142[0] = *&v162[8];
    *(v142 + 9) = *&v162[17];

    sub_265A6E030(&v135);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v21 = *(v20 + 16);
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_69:

    v33 = MEMORY[0x277D84F90];
    v31 = 0.0;
    if ((a1 & 1) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v137 = v158;
  v138 = v159;
  v139 = v160;
  v140 = v161;
  v135 = v156;
  v136 = v157;
  v141 = v19;
  v142[0] = *&v162[8];
  *(v142 + 9) = *&v162[17];
  sub_265A6E030(&v135);
  v20 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 16);
  if (!v21)
  {
    goto LABEL_69;
  }

LABEL_8:
  v127 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = (a3 * 1.25) + -0.25;
  v26 = v20 + 32;
  v27 = 1.0;
  v113 = (a3 * -0.5) + 1.0;
  v114 = (((v8 / v9) + 1.0) * a2) - (v8 / v9);
  v115 = v8 / v9;
  v116 = (v8 / v9) + v114;
  v4 = MEMORY[0x277D84F90];
  v28 = 1;
  __asm
  {
    FMOV            V1.2S, #3.0
    FMOV            V0.2S, #6.0
  }

  v104 = _D0;
  v105 = _D1;
  v31 = 0.0;
  v32 = 0.0;
  v33 = MEMORY[0x277D84F90];
  v100 = v20 + 32;
  v101 = v20;
  v99 = v21;
LABEL_9:
  if (v24 >= *(v20 + 16))
  {
    goto LABEL_93;
  }

  v34 = *(v26 + 8 * v24);
  v102 = v24;
  v103 = *(v34 + 16);
  if (!v103)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  v109 = v33;
  v120 = *(*v5 + 224);
  v33 = (*v5 + 320);
  v35 = *v33;
  v107 = v34 + 32;

  v37 = 0;
  v106 = v36;
LABEL_13:
  if (v37 >= *(v36 + 16))
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v111 = v37;
  v38 = (v107 + (v37 << 6));
  v40 = v38[2];
  v39 = v38[3];
  v41 = v38[1];
  v135 = *v38;
  v136 = v41;
  v137 = v40;
  v138 = v39;
  sub_265A6AD98(v108);
  v128 = v135;
  v129 = v138;
  v42 = vmovn_s32(vceqq_f32(v135, v138));
  v43 = v42.i8[0] & v42.i8[2];
  if (v42.i8[0] & v42.i8[2] & 1) != 0 && (v42.i16[2] & v42.i16[3])
  {
    v44 = 2;
    if ((v42.i8[0] & v42.i8[2] & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (v42.i16[2] & v42.i16[3])
    {
      v46 = v129;
      v46.f32[1] = v129.f32[1] + 0.1;
      v129 = v46;
    }

    goto LABEL_21;
  }

  v134 = v42.i32[1];
  v45 = v35();
  v42.i32[1] = v134;
  v44 = v45;
  if (v43)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (v44 < 0)
  {
    goto LABEL_91;
  }

  v47 = 0;
  v112 = v111 + 1;
  v48 = vmul_f32(vzip1_s32(*v136.f32, *v128.f32), v105);
  v49 = vmul_f32(vzip2_s32(*v136.f32, *v128.f32), v105);
  v125 = v137;
  v126 = v136;
  v123 = vmul_f32(vzip2_s32(*v137.f32, *v136.f32), v104);
  v124 = vmul_f32(vzip1_s32(*v137.f32, *v136.f32), v104);
  v121 = vmul_f32(vzip2_s32(*v129.f32, *v137.f32), v105);
  v122 = vmul_f32(vzip1_s32(*v129.f32, *v137.f32), v105);
  v117 = v49;
  do
  {
    v132 = (v27 / v35()) * v47;
    *v50.i64 = sub_265A6AD44(v132, v128, v126, v125, v129);
    v51 = vmul_n_f32(vmul_n_f32(v48, v27 - v132), v27 - v132);
    v52 = vmul_n_f32(vmul_n_f32(v49, v27 - v132), v27 - v132);
    v53 = vmul_n_f32(vmul_n_f32(v124, v27 - v132), v132);
    v54 = vmul_n_f32(vmul_n_f32(v123, v27 - v132), v132);
    v55 = vmul_n_f32(vmul_n_f32(v122, v132), v132);
    v56 = vmul_n_f32(vmul_n_f32(v121, v132), v132);
    v51.f32[0] = vadd_f32(v55, vsub_f32(vadd_f32(v53, vsub_f32(vsub_f32(v51, vdup_lane_s32(v51, 1)), vdup_lane_s32(v53, 1))), vdup_lane_s32(v55, 1))).f32[0];
    v55.i32[0] = vadd_f32(v56, vsub_f32(vadd_f32(v54, vsub_f32(vsub_f32(v52, vdup_lane_s32(v52, 1)), vdup_lane_s32(v54, 1))), vdup_lane_s32(v56, 1))).u32[0];
    v55.f32[1] = -v51.f32[0];
    v57 = vmul_f32(v55, v55);
    v57.i32[0] = vadd_f32(v57, vdup_lane_s32(v57, 1)).u32[0];
    v58 = vrsqrte_f32(v57.u32[0]);
    v59 = vmul_f32(v58, vrsqrts_f32(v57.u32[0], vmul_f32(v58, v58)));
    v60 = vmul_n_f32(v55, vmul_f32(v59, vrsqrts_f32(v57.u32[0], vmul_f32(v59, v59))).f32[0]);
    _ZF = (~v60.i32[0] & 0x7F800000) != 0 || (v60.i32[0] & 0x7FFFFF) == 0;
    if (!_ZF || ((~v60.i32[1] & 0x7F800000) == 0 ? (v62 = (v60.i32[1] & 0x7FFFFF) == 0) : (v62 = 1), !v62))
    {
      v60 = 0x3F80000000000000;
    }

    v130 = v50;
    v133 = v60;
    if ((v28 & 1) == 0)
    {
      *v63.f32 = v22;
      v63.i64[1] = v23;
      v64 = vsubq_f32(v50, v63);
      v65 = vsub_f32(*v50.f32, v22);
      v66 = sqrtf(COERCE_FLOAT(vmulq_f32(v64, v64).i32[2]) + vaddv_f32(vmul_f32(v65, v65)));
      v67 = 0.25;
      if ((v127 & 1) == 0)
      {
        v67 = v27;
      }

      v31 = v32 + (v67 * v66);
      v32 = v31;
      v127 = 0;
    }

    v68 = v31 / v120();
    if (v68 < v25)
    {
      v69 = v130;
      goto LABEL_49;
    }

    v119 = v31;
    v70 = v48;
    v71 = v32;
    if (a3 > 0.0)
    {
      v72 = v113 * (*(*v5 + 176))();
      v73 = ((powf(fminf(fmaxf((v68 - v25) * 4.0, 0.0), v27) + -1.0, 3.0) + v27) * (v72 + -0.2)) + 0.2;
      if (a1)
      {
        goto LABEL_44;
      }

LABEL_43:
      if (v116 >= v68)
      {
        goto LABEL_44;
      }

      v33 = v109;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_61:
        v31 = v119;
        v90 = v33[2];
        v89 = v33[3];
        if (v90 >= v89 >> 1)
        {
          v33 = sub_265A70804((v89 > 1), v90 + 1, 1, v33, &qword_28002FCF8, &unk_265AAC000, &qword_28002FD00);
        }

        v33[2] = v90 + 1;
        v33[v90 + 4] = v4;
        if ((a1 & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      }

LABEL_94:
      v33 = sub_265A70804(0, v33[2] + 1, 1, v33, &qword_28002FCF8, &unk_265AAC000, &qword_28002FD00);
      goto LABEL_61;
    }

    v74 = fminf(fmaxf((v68 - v114) / v115, 0.0), v27);
    v75 = v25;
    v76 = a3;
    v77 = 1.0 - v74;
    v78 = (*(*v5 + 152))();
    v79 = (*(*v5 + 176))();
    v80 = v77 + -1.0;
    a3 = v76;
    v25 = v75;
    v27 = 1.0;
    v73 = v78 + ((powf(v80, 3.0) + 1.0) * (v79 - v78));
    if ((a1 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_44:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_265A74FC4(0, *(v4 + 2) + 1, 1, v4);
    }

    v48 = v70;
    v82 = *(v4 + 2);
    v81 = *(v4 + 3);
    v31 = v119;
    v69 = v130;
    if (v82 >= v81 >> 1)
    {
      v84 = sub_265A74FC4((v81 > 1), v82 + 1, 1, v4);
      v69 = v130;
      v4 = v84;
    }

    *(v4 + 2) = v82 + 1;
    v83 = &v4[24 * v82];
    *(v83 + 4) = v69.i64[0];
    *(v83 + 5) = v133;
    *(v83 + 12) = vmuls_lane_f32(v73, v69, 3);
    *(v83 + 13) = v119;
    v32 = v71;
    v49 = v117;
LABEL_49:
    v22 = *v69.f32;
    v23 = v69.u32[2];
    if (v44 == v47)
    {
      v28 = 0;
      v127 = 1;
      v37 = v112;
      v36 = v106;
      if (v112 != v103)
      {
        goto LABEL_13;
      }

      v33 = v109;
      v28 = 0;
      v127 = 1;
      v20 = v101;
      v21 = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_59:
        v33 = sub_265A70804(0, v33[2] + 1, 1, v33, &qword_28002FCF8, &unk_265AAC000, &qword_28002FD00);
      }

LABEL_54:
      v86 = v33[2];
      v85 = v33[3];
      v87 = v102;
      if (v86 >= v85 >> 1)
      {
        v88 = sub_265A70804((v85 > 1), v86 + 1, 1, v33, &qword_28002FCF8, &unk_265AAC000, &qword_28002FD00);
        v87 = v102;
        v33 = v88;
      }

      v24 = v87 + 1;
      v33[2] = v86 + 1;
      v33[v86 + 4] = v4;
      v26 = v100;
      v4 = MEMORY[0x277D84F90];
      if (v24 == v21)
      {
        goto LABEL_87;
      }

      goto LABEL_9;
    }

    v28 = 0;
  }

  while (!__OFADD__(v47++, 1));
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_87:

    if (a1)
    {
LABEL_70:
      swift_beginAccess();
      *(v5 + 28) = v31;
    }

LABEL_71:
    Mutable = CGPathCreateMutable();
    v131 = v33[2];
    if (!v131)
    {
      break;
    }

    v92 = 0;
    v135 = 0x3FF0000000000000uLL;
    v136.i64[0] = 0;
    v136.i64[1] = 0x3FF0000000000000;
    v93 = v33 + 4;
    v137 = 0uLL;
    v110 = v33;
    while (1)
    {
      if (v92 >= v33[2])
      {
        __break(1u);
        goto LABEL_90;
      }

      v33 = v93[v92];

      v94 = CGPathCreateMutable();
      v95 = v33[2];
      if (v95)
      {
        break;
      }

LABEL_73:
      ++v92;

      sub_265AA77C0();

      v33 = v110;
      if (v92 == v131)
      {
        goto LABEL_85;
      }
    }

    v4 = (v33 + 6);
    atan2f(-COERCE_FLOAT(HIDWORD(v33[5])), -COERCE_FLOAT(v33[5]));
    sub_265AA77D0();
    v5 = 0;
    while (v5 < v33[2])
    {
      ++v5;
      sub_265AA77E0();
      v4 += 24;
      if (v95 == v5)
      {
        if (v95 > v33[2])
        {
          goto LABEL_92;
        }

        v5 = 24 * v95;
        atan2f(COERCE_FLOAT(HIDWORD(v33[3 * v95 + 2])), COERCE_FLOAT(v33[3 * v95 + 2]));
        sub_265AA77D0();
        v96 = (v95 - 1);
        v97 = v33 + v5 + 24;
        while (v96 < v33[2])
        {
          v97 -= 24;
          sub_265AA77E0();
          if (--v96 == -1)
          {
            goto LABEL_73;
          }
        }

        __break(1u);
        goto LABEL_85;
      }
    }
  }

LABEL_85:

  return Mutable;
}

void sub_265A742B0()
{
  v1 = (*v0 + 296);
  v2 = *v1;
  (*v1)(&v90);
  v3 = v97;
  v4 = v98;
  v5 = v99;
  v107[4] = v94;
  v107[5] = v95;
  v107[6] = v96;
  v107[0] = v90;
  v107[1] = v91;
  v107[2] = v92;
  v107[3] = v93;
  v108 = v97;
  v109 = v98;
  v110 = v99;
  if (sub_265A6E154(v107) == 1)
  {
    v104 = v94;
    v105 = v95;
    *v106 = v96;
    v100 = v90;
    v101 = v91;
    v102 = v92;
    v103 = v93;
    *&v106[16] = v3;
    *&v106[24] = v4;
    v106[32] = v5;
    v6 = sub_265A6E030(&v100);
    __asm { FMOV            V0.4S, #1.0 }
  }

  else
  {
    v104 = v94;
    v105 = v95;
    *v106 = v96;
    v100 = v90;
    v101 = v91;
    v102 = v92;
    v103 = v93;
    *&v106[16] = v3;
    *&v106[24] = v4;
    v106[32] = v5;
    v6 = sub_265A6E030(&v100);
    if (v5)
    {
      __asm { FMOV            V0.4S, #1.0 }
    }

    else
    {
      _Q0.i64[0] = v3;
      _Q0.i64[1] = v4;
    }
  }

  v63 = _Q0;
  v12 = &v100;
  (v2)(&v100, v6);
  v13 = *v106;
  v87[2] = v102;
  v87[3] = v103;
  v87[4] = v104;
  v87[5] = v105;
  v87[0] = v100;
  v87[1] = v101;
  v89[0] = *&v106[8];
  *(v89 + 9) = *&v106[17];
  v88 = *v106;
  if (sub_265A6E154(v87) != 1)
  {
LABEL_44:
    v81 = v102;
    v82 = v103;
    v83 = v104;
    v84 = v105;
    v79 = v100;
    v80 = v101;
    v85 = v13;
    v86[0] = *(v12 + 104);
    *(v86 + 9) = *(v12 + 113);

    sub_265A6E030(&v79);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v15 = *(v14 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_41:

    return;
  }

  v81 = v102;
  v82 = v103;
  v83 = v104;
  v84 = v105;
  v79 = v100;
  v80 = v101;
  v85 = v13;
  v86[0] = *&v106[8];
  *(v86 + 9) = *&v106[17];
  sub_265A6E030(&v79);
  v14 = MEMORY[0x277D84F90];
  v15 = *(MEMORY[0x277D84F90] + 16);
  if (!v15)
  {
    goto LABEL_41;
  }

LABEL_8:
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = v14 + 32;
  v21 = MEMORY[0x277D84F90];
  v22 = 1;
  v23 = 0.0;
  v59 = v15;
  v60 = v14;
  v58 = v14 + 32;
  while (v19 < *(v14 + 16))
  {
    v61 = v19;
    v62 = v21;
    v24 = *(v20 + 8 * v19);
    v66 = *(v24 + 16);
    if (!v66)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = MEMORY[0x277D84F90];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    v69 = *(*v78 + 224);
    v25 = *(*v78 + 320);
    v65 = v24 + 32;

    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    v64 = v26;
LABEL_13:
    if (v27 >= *(v26 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      break;
    }

    v67 = v27;
    v29 = (v65 + (v27 << 6));
    v31 = v29[2];
    v30 = v29[3];
    v32 = v29[1];
    v79 = *v29;
    v80 = v32;
    v81 = v31;
    v82 = v30;
    sub_265A6AD98(v63);
    v72 = v79;
    v73 = v82;
    v33 = vmovn_s32(vceqq_f32(v79, v82));
    v34 = v33.i8[0] & v33.i8[2];
    if (v33.i8[0] & v33.i8[2] & 1) != 0 && (v33.i16[2] & v33.i16[3])
    {
      v35 = 2;
      if ((v33.i8[0] & v33.i8[2] & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v77 = v33.i32[1];
      v36 = v25();
      v33.i32[1] = v77;
      v35 = v36;
      if ((v34 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v33.i16[2] & v33.i16[3])
    {
      v37 = v73;
      v37.f32[1] = v73.f32[1] + 0.1;
      v73 = v37;
    }

LABEL_21:
    if (v35 < 0)
    {
      goto LABEL_50;
    }

    v12 = 0;
    v68 = v67 + 1;
    v70 = v81;
    v71 = v80;
    while (1)
    {
      v38 = v25();
      *v39.i64 = sub_265A6AD44((1.0 / v38) * v12, v72, v71, v70, v73);
      if ((v22 & 1) == 0)
      {
        *v40.f32 = v17;
        v40.i64[1] = v18;
        v41 = vsubq_f32(v39, v40);
        v42 = vsub_f32(*v39.f32, v17);
        v43 = sqrtf(COERCE_FLOAT(vmulq_f32(v41, v41).i32[2]) + vaddv_f32(vmul_f32(v42, v42)));
        if (v16)
        {
          v44 = 0.25;
        }

        else
        {
          v44 = 1.0;
        }

        v23 = v23 + (v44 * v43);
        v16 = 0;
      }

      v45 = v39.f32[3];
      v39.i32[3] = 0;
      v76 = v39;
      v39.f32[2] = v39.f32[2] + v39.f32[2];
      v74 = v39;
      v46 = v69();
      *&v47 = nullsub_1(v74, v45, v23 / v46);
      v75 = v47;
      v49 = v48;
      v51 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_265A6CEE8(0, *(v28 + 2) + 1, 1, v28);
      }

      v53 = *(v28 + 2);
      v52 = *(v28 + 3);
      v13 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v28 = sub_265A6CEE8((v52 > 1), v53 + 1, 1, v28);
      }

      v18 = v76.i64[1];
      v17 = *v76.f32;
      *(v28 + 2) = v13;
      v54 = &v28[32 * v53];
      *(v54 + 2) = v75;
      *(v54 + 12) = v49;
      *(v54 + 13) = v51;
      if (v35 == v12)
      {
        break;
      }

      v22 = 0;
      _VF = __OFADD__(v12, 1);
      v12 = (v12 + 1);
      if (_VF)
      {
        __break(1u);
        goto LABEL_44;
      }
    }

    v22 = 0;
    v16 = 1;
    v27 = v68;
    v26 = v64;
    if (v68 != v66)
    {
      goto LABEL_13;
    }

    v22 = 0;
    v20 = v58;
    v15 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_43:
      v21 = sub_265A70804(0, v62[2] + 1, 1, v62, &unk_28002FFA0, &unk_265AABC38, &qword_28002FC60);
      goto LABEL_38;
    }

LABEL_37:
    v21 = v62;
LABEL_38:
    v56 = v21[2];
    v55 = v21[3];
    if (v56 >= v55 >> 1)
    {
      v21 = sub_265A70804((v55 > 1), v56 + 1, 1, v21, &unk_28002FFA0, &unk_265AABC38, &qword_28002FC60);
    }

    ++v19;
    v21[2] = v56 + 1;
    v21[v56 + 4] = v28;
    v14 = v60;
    if (v61 + 1 == v15)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
}

uint64_t sub_265A74914@<X0>(char a1@<W0>, __int128 *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>)
{
  (*(*v7 + 296))(v61);
  v67 = v61[6];
  v68 = v61[7];
  v69 = v62;
  v63[2] = v61[2];
  v64 = v61[3];
  v65 = v61[4];
  v66 = v61[5];
  v63[0] = v61[0];
  v63[1] = v61[1];
  result = sub_265A6E154(v63);
  if (result == 1)
  {
    v16 = xmmword_265AAB690;
    v17 = xmmword_265AAB6A0;
    v18 = 0uLL;
LABEL_16:
    *a2 = v17;
    a2[1] = v16;
    a2[2] = v18;
    return result;
  }

  if (BYTE4(v64))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (BYTE12(v64))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((BYTE4(v65) & 1) == 0)
  {
    v19 = *&v65;
    v20 = *&v64;
    v21 = *(&v64 + 2);
    sub_265A6E030(v61);
    v22 = v21 - v19;
    v23 = -v19 / v22;
    v24 = v22 / v20 * a7;
    v70.origin.x = a3;
    v70.origin.y = a4;
    v70.size.width = a5;
    v70.size.height = a6;
    v53 = a4;
    rect = a5;
    v25 = (CGRectGetHeight(v70) - v24) * 0.5;
    v26 = *(*v7 + 272);
    v71.origin.x = v26();
    v27 = -v71.origin.x;
    Width = CGRectGetWidth(v71);
    CGAffineTransformMakeTranslation(&t1, v27 - Width * 0.5, 0.0);
    if (a1)
    {
      v29 = 1.0 - v23;
    }

    else
    {
      v29 = v23;
    }

    v52 = v24 * v29 + v25;
    tx = t1.tx;
    ty = t1.ty;
    v32 = a7 / v20;
    if (a1)
    {
      v33 = -v32;
    }

    else
    {
      v33 = v32;
    }

    v54 = *&t1.c;
    v56 = *&t1.a;
    CGAffineTransformMakeScale(&t1, v32, v33);
    v34 = *&t1.a;
    v35 = *&t1.c;
    v36 = *&t1.tx;
    *&t1.a = v56;
    *&t1.c = v54;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v34;
    *&t2.c = v35;
    *&t2.tx = v36;
    v37 = CGAffineTransformConcat(&v58, &t1, &t2);
    v55 = *&v58.a;
    v57 = *&v58.c;
    v38 = v58.tx;
    v50 = v58.ty;
    v72.origin.x = (v26)(v37);
    v39 = v32 * CGRectGetWidth(v72);
    v73.origin.x = a3;
    v73.origin.y = v53;
    v73.size.width = rect;
    v73.size.height = a6;
    if (CGRectGetWidth(v73) + -20.0 >= v39)
    {
      v45 = v50;
    }

    else
    {
      v74.origin.x = a3;
      v74.origin.y = v53;
      v74.size.width = rect;
      v74.size.height = a6;
      v40 = CGRectGetWidth(v74) + -20.0;
      v75.origin.x = v26();
      v41 = CGRectGetWidth(v75);
      CGAffineTransformMakeScale(&t1, v40 / (v32 * v41), v40 / (v32 * v41));
      v42 = *&t1.a;
      v43 = *&t1.c;
      v44 = *&t1.tx;
      *&t1.a = v55;
      *&t1.c = v57;
      t1.tx = v38;
      t1.ty = v50;
      *&t2.a = v42;
      *&t2.c = v43;
      *&t2.tx = v44;
      CGAffineTransformConcat(&v58, &t1, &t2);
      v55 = *&v58.a;
      v57 = *&v58.c;
      v38 = v58.tx;
      v45 = v58.ty;
    }

    v76.origin.x = a3;
    v76.origin.y = v53;
    v76.size.width = rect;
    v76.size.height = a6;
    v46 = CGRectGetWidth(v76);
    CGAffineTransformMakeTranslation(&t1, v46 * 0.5 + a3, v52 + v53);
    v47 = *&t1.a;
    v48 = *&t1.c;
    v49 = *&t1.tx;
    *&t1.a = v55;
    *&t1.c = v57;
    t1.tx = v38;
    t1.ty = v45;
    *&t2.a = v47;
    *&t2.c = v48;
    *&t2.tx = v49;
    result = CGAffineTransformConcat(&v58, &t1, &t2);
    v17 = *&v58.a;
    v16 = *&v58.c;
    v18 = *&v58.tx;
    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_265A74C90()
{
  v1 = *(v0 + 192);
  v6[6] = *(v0 + 176);
  v6[7] = v1;
  v7 = *(v0 + 208);
  v2 = *(v0 + 128);
  v6[2] = *(v0 + 112);
  v6[3] = v2;
  v3 = *(v0 + 160);
  v6[4] = *(v0 + 144);
  v6[5] = v3;
  v4 = *(v0 + 96);
  v6[0] = *(v0 + 80);
  v6[1] = v4;
  sub_265A6E030(v6);
  return v0;
}

uint64_t sub_265A74CE0()
{
  v1 = *(v0 + 192);
  v6[6] = *(v0 + 176);
  v6[7] = v1;
  v7 = *(v0 + 208);
  v2 = *(v0 + 128);
  v6[2] = *(v0 + 112);
  v6[3] = v2;
  v3 = *(v0 + 160);
  v6[4] = *(v0 + 144);
  v6[5] = v3;
  v4 = *(v0 + 96);
  v6[0] = *(v0 + 80);
  v6[1] = v4;
  sub_265A6E030(v6);
  return swift_deallocClassInstance();
}

unint64_t sub_265A74D3C(unsigned __int8 a1)
{
  sub_265AA7C10();
  sub_265AA75B0();

  v2 = sub_265AA7C40();

  return sub_265A74E10(a1, v2);
}

unint64_t sub_265A74E10(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA00000000006E6FLL;
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v8 = 0x7245656C62616E65;
          v9 = 0xEB00000000657361;
          v10 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0x6163536576727563;
          v9 = 0xEA0000000000656CLL;
          v10 = a1;
          if (!a1)
          {
LABEL_17:
            if (v8 != 0x6974756C6F736572)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0x6974756C6F736572;
        v9 = 0xEA00000000006E6FLL;
        v10 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v10 == 1)
      {
        v11 = 0x7245656C62616E65;
      }

      else
      {
        v11 = 0x6163536576727563;
      }

      if (v10 == 1)
      {
        v7 = 0xEB00000000657361;
      }

      else
      {
        v7 = 0xEA0000000000656CLL;
      }

      if (v8 != v11)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v9 == v7)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_265AA7B50();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_265A74FC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FD08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

uint64_t sub_265A750E0()
{
  v0 = sub_265AA7A40();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_265A75130()
{
  result = qword_28002FCF0;
  if (!qword_28002FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FCF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CursiveTextPathLegacy.OptionKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CursiveTextPathLegacy.OptionKey(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_265A75350(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView_viewModel;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

unint64_t sub_265A75408()
{
  if (!(MEMORY[0x277D84F90] >> 62) || !sub_265AA79F0())
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = MEMORY[0x277D84F90];

  return sub_265A7622C(v2);
}

id sub_265A75460()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView____lazy_storage___textLayer;
  v2 = *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView____lazy_storage___textLayer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView____lazy_storage___textLayer];
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
    [v0 bounds];
    [v4 setFrame_];
    v5 = sub_265AA7540();
    [v4 setName_];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

double sub_265A7553C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

char *sub_265A75588(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FD18);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FD20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FD28);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  if (MEMORY[0x277D84F90] >> 62 && sub_265AA79F0())
  {
    v11 = sub_265A7622C(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView_cancellables] = v11;
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView____lazy_storage___textLayer] = 0;
  v12 = &v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView_textTransform];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  v12[48] = 1;
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView_viewModel] = a1;
  v13 = type metadata accessor for CursiveTextView();
  v40.receiver = v1;
  v40.super_class = v13;
  v34 = a1;

  v14 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = [v14 layer];
  v16 = sub_265AA7540();
  [v15 setName_];

  v17 = [v14 layer];
  v18 = sub_265A75460();
  [v17 addSublayer_];

  v19 = OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView_viewModel;
  v31 = OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView_viewModel;
  swift_beginAccess();
  v38 = *(*&v14[v19] + 72);
  sub_265A56C08();

  v20 = sub_265AA7830();
  v39 = v20;
  v29 = sub_265AA7810();
  v21 = *(v29 - 8);
  v28 = *(v21 + 56);
  v30 = v21 + 56;
  v28(v7, 1, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FD48);
  v27[3] = MEMORY[0x277CBCE48];
  sub_265A56E18(&qword_28002FD50, &qword_28002FD48);
  v27[2] = sub_265A768A8(&qword_28002FD58, sub_265A56C08);
  sub_265AA6F20();
  sub_265A764E4(v7);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v27[1] = MEMORY[0x277CBCD60];
  sub_265A56E18(&qword_28002FD60, &qword_28002FD28);
  v22 = v33;
  sub_265AA6F30();

  (*(v32 + 8))(v10, v22);
  swift_beginAccess();
  sub_265AA6E40();
  swift_endAccess();

  v38 = *(*&v14[v31] + 64);

  v23 = sub_265AA7830();
  v39 = v23;
  v28(v7, 1, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FD68);
  sub_265A56E18(&qword_28002FD70, &qword_28002FD68);
  v24 = v35;
  sub_265AA6F20();
  sub_265A764E4(v7);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_265A56E18(&qword_28002FD78, &qword_28002FD18);
  v25 = v37;
  sub_265AA6F30();

  (*(v36 + 8))(v24, v25);
  swift_beginAccess();
  sub_265AA6E40();
  swift_endAccess();

  return v14;
}

id sub_265A75C4C(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_265A75CBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CursiveTextView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  return sub_265A75D4C();
}

id sub_265A75D4C()
{
  v1 = sub_265A75460();
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [v0 bounds];
  v29.origin.x = v10;
  v29.origin.y = v11;
  v29.size.width = v12;
  v29.size.height = v13;
  v28.origin.x = v3;
  v28.origin.y = v5;
  v28.size.width = v7;
  v28.size.height = v9;
  result = CGRectEqualToRect(v28, v29);
  if ((result & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView____lazy_storage___textLayer;
    v16 = *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView____lazy_storage___textLayer];
    [v0 bounds];
    [v16 setFrame_];

    v17 = *&v0[v15];
    v18 = objc_opt_self();
    v19 = v17;
    v20 = [v18 blackColor];
    v21 = [v20 CGColor];

    [v19 setStrokeColor_];
    v22 = *&v0[v15];
    v23 = [v18 blackColor];
    v24 = [v23 CGColor];

    [v22 setFillColor_];
    [*&v0[v15] setShadowRadius_];
    LODWORD(v25) = 1036831949;
    [*&v0[v15] setShadowOpacity_];
    v26 = *&v0[v15];

    return [v26 setShadowOffset_];
  }

  return result;
}

void sub_265A75F60(double a1)
{
  v15 = *MEMORY[0x277D85DE8];
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))();

  sub_265AA6E80();

  if (v11)
  {
    v4 = a1;
    v5 = (*(*v11 + 384))(v3, v4);
    v6 = sub_265A75460();
    v7 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView_textTransform + 48);
    v8 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView_textTransform + 16);
    v11 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView_textTransform);
    v12 = v8;
    v13 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView_textTransform + 32);
    LOBYTE(v14) = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = v6;
      v10 = MEMORY[0x266768590](v5, &v11);
      [v9 setPath_];
    }
  }
}

id CursiveTextView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CursiveTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CursiveTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_265A7622C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_265AA79F0();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FD88);
      result = sub_265AA7930();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_265AA79F0();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x2667681B0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_265AA6E50();
    sub_265A768A8(&qword_28002FD90, MEMORY[0x277CBCDA8]);
    result = sub_265AA74D0();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_265A768A8(&qword_28002FD98, MEMORY[0x277CBCDA8]);
      do
      {
        result = sub_265AA7530();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_265A764E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FD20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265A7654C()
{
  MEMORY[0x266769280](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_265A76584(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {

      v4 = sub_265A75460();
      [v4 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      (*(*v1 + 408))(v17, 1, v6, v8, v10, v12, 64.0);
      v13 = v18;
      v14 = v19;

      v15 = &v3[OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView_textTransform];
      v16 = v17[1];
      *v15 = v17[0];
      *(v15 + 1) = v16;
      *(v15 + 4) = v13;
      *(v15 + 5) = v14;
      v15[48] = 0;
    }
  }
}

void sub_265A766A8(double *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_265A75F60(v1);
  }
}

void sub_265A76708()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_265AA79F0())
  {
    v1 = sub_265A7622C(MEMORY[0x277D84F90]);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView_cancellables) = v1;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView____lazy_storage___textLayer) = 0;
  v2 = v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15CursiveTextView_textTransform;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 1;
  sub_265AA79E0();
  __break(1u);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_265A76800(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265A76820(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

void type metadata accessor for CGAffineTransform()
{
  if (!qword_28002FD80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28002FD80);
    }
  }
}

uint64_t sub_265A768A8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_265A768F0()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    type metadata accessor for DisplayLinkManager();
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = v3;
    v5 = v0;
    v6 = sub_265A9EE70(sub_265A77B40, v4);
    v7 = *(v0 + 56);
    *(v5 + 56) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_265A76998()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FD68);
  swift_allocObject();
  return sub_265AA6EA0();
}

uint64_t sub_265A769FC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_265A777A0(a1, a2, a3);

  return v6;
}

uint64_t sub_265A76A64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_265A777A0(a1, a2, a3);

  return v4;
}

void sub_265A76AA8()
{
  sub_265A77100();
  v0 = sub_265A768F0();
  (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
}

void sub_265A76B48()
{
  v0 = sub_265A768F0();
  (*((*MEMORY[0x277D85000] & *v0) + 0xA0))();
}

uint64_t sub_265A76BC0()
{
  v1 = v0;
  v2 = sub_265AA7410();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_265AA7440();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265AA7460();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v40 = &v39 - v10;
  v11 = *(v0 + 24);
  v12 = *(*v11 + 112);
  v13 = v12(v9);
  v15 = v14;
  v16 = (*(*v11 + 232))();
  if (!v17)
  {
    v16 = v12(v16);
  }

  v18 = v16;
  v19 = v17;
  if (*(v1 + 48))
  {
    v20 = objc_allocWithZone(SASBookendNextAnimationData);
    v21 = sub_265AA7540();
    v22 = [v20 initWithLanguage:v21 animationDuration:0.0 delayTillNextAnimation:0.0];

    v23 = objc_allocWithZone(SASBookendAnimationFinishedData);
    v24 = sub_265AA7540();
    v25 = [v23 initWithCurrentLanguage:v24 isLastLanguage:0 nextAnimationData:v22];

    sub_265AA5FE8(v25);
  }

  *(v1 + 88) = 1;
  if (v13 == v18 && v15 == v19)
  {
  }

  else
  {
    v27 = sub_265AA7B50();

    if ((v27 & 1) == 0)
    {
      sub_265A56C08();
      v28 = sub_265AA7830();
      sub_265AA7450();
      v29 = v40;
      sub_265AA74B0();
      v41 = *(v41 + 8);
      v30 = v8;
      v31 = v42;
      (v41)(v30, v42);
      v32 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_265A779E4;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_265A554D0;
      aBlock[3] = &block_descriptor_3;
      v33 = _Block_copy(aBlock);

      v34 = v43;
      sub_265AA7420();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_265A77A84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
      sub_265A77ADC();
      v35 = v45;
      v36 = v48;
      sub_265AA78E0();
      MEMORY[0x266768050](v29, v34, v35, v33);
      _Block_release(v33);

      (*(v47 + 8))(v35, v36);
      (*(v44 + 8))(v34, v46);
      return (v41)(v29, v31);
    }
  }

  v38 = *(*v1 + 232);

  return v38();
}

void sub_265A77100()
{
  v1 = v0;
  sub_265A7724C();
  sub_265AA6E90();
  v2 = sub_265AA6E90();
  if (*(v0 + 48))
  {
    (*(**(v0 + 24) + 112))(v2);
    sub_265AA6E80();
    v3 = objc_allocWithZone(SASBookendCurrentAnimationData);
    v4 = sub_265AA7540();

    v5 = [v3 initWithLanguage:v4 animationDuration:0.0];

    sub_265AA5EF4(v5);
  }

  *(v1 + 88) = 0;
}

uint64_t sub_265A7724C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_265AA6D60();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_265A77418(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_265A77944(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    type metadata accessor for CursiveTextPathLegacy();
    (*(v4 + 16))(v7, v9, v3);
    v11 = sub_265A72E94(v7, 0);
    (*(v4 + 8))(v9, v3);
    return v11;
  }
}

void sub_265A77418(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_265AA6D60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v9 = *(v2 + 24);
  (*(*v9 + 112))();
  v10 = sub_265AA7540();

  v11 = sub_265AA7540();
  v12 = sub_265AA7540();
  v13 = [v17 URLForResource:v10 withExtension:v11 subdirectory:v12];

  if (v13)
  {
    sub_265AA6D30();

    (*(v5 + 32))(a1, v7, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
  }

  else
  {
    (*(*v9 + 232))();

    sub_265A77418(v14);
    v15 = v17;
  }
}

uint64_t sub_265A7768C()
{

  return v0;
}

uint64_t sub_265A776D4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_265A777A0(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FD68);
  swift_allocObject();
  *(v3 + 64) = sub_265AA6EA0();
  *(v3 + 80) = 0x4000000000000000;
  *(v3 + 88) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FD48);
  swift_allocObject();

  *(v3 + 72) = sub_265AA6EA0();
  *(v3 + 48) = a3;
  if (!a1)
  {
    v7 = 0xE500000000000000;
    v8 = 0x6F6C6C6548;
LABEL_5:
    *(v3 + 32) = v8;
    *(v3 + 40) = v7;
    v9 = *(**(v3 + 24) + 232);
    v10 = a3;

    v9(v11);

    return v3;
  }

  if (a1 == 1)
  {
    v7 = 0xE700000000000000;
    v8 = 0x656D6F636C6557;
    goto LABEL_5;
  }

  type metadata accessor for BookendType(0);
  v13 = a3;
  result = sub_265AA7B70();
  __break(1u);
  return result;
}

uint64_t sub_265A77944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265A779AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265A779E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(**(result + 24) + 232))();

    sub_265A77100();
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_265A77A84()
{
  result = qword_280030190;
  if (!qword_280030190)
  {
    sub_265AA7410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280030190);
  }

  return result;
}

unint64_t sub_265A77ADC()
{
  result = qword_2800301A0;
  if (!qword_2800301A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28002FAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800301A0);
  }

  return result;
}

uint64_t sub_265A77B40(double a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 88) != 1)
    {
      sub_265AA6E80();
      if (v6[0] != 0.0)
      {
        v3 = sub_265AA6E80();
        if (v6[0] >= (*(**&v6[0] + 248))(v3))
        {
          sub_265A76BC0();
        }

        else
        {
          v4 = sub_265AA6E70();
          *v5 = *v5 + a1;
          v4(v6, 0);
        }
      }
    }
  }

  return result;
}

char *sub_265A77C64()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    type metadata accessor for CursiveTextView();

    v4 = v0;
    v5 = sub_265A75554(v3);
    v6 = *(v0 + 24);
    *(v4 + 24) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_265A77CD8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  type metadata accessor for CursiveTextViewModel();
  *(v6 + 16) = sub_265A769FC(a1, a2, a3);
  return v6;
}

uint64_t sub_265A77D4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *(v4 + 24) = 0;
  type metadata accessor for CursiveTextViewModel();
  *(v4 + 16) = sub_265A769FC(a1, a2, a3);
  return v4;
}

uint64_t sub_265A77DE0()
{

  return v0;
}

uint64_t sub_265A77E08()
{

  return swift_deallocClassInstance();
}

id sub_265A77E6C()
{
  v0 = sub_265AA6E20();
  __swift_allocate_value_buffer(v0, qword_2800333D0);
  __swift_project_value_buffer(v0, qword_2800333D0);
  v1 = objc_opt_self();
  result = [v1 defaultSubsystem];
  if (result)
  {
    v3 = result;
    sub_265AA7570();

    result = [v1 defaultCategory];
    if (result)
    {
      v4 = result;
      sub_265AA7570();

      return sub_265AA6E10();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_265A77FD0()
{
  v0 = sub_265AA6E20();
  __swift_allocate_value_buffer(v0, qword_2800333E8);
  __swift_project_value_buffer(v0, qword_2800333E8);
  result = [objc_opt_self() defaultSubsystem];
  if (result)
  {
    v2 = result;
    sub_265AA7570();

    result = [objc_opt_self() bookendCategory];
    if (result)
    {
      v3 = result;
      sub_265AA7570();

      return sub_265AA6E10();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_265A78100()
{
  v0 = sub_265AA6E20();
  __swift_allocate_value_buffer(v0, qword_280033400);
  __swift_project_value_buffer(v0, qword_280033400);
  result = [objc_opt_self() defaultSubsystem];
  if (result)
  {
    v2 = result;
    sub_265AA7570();

    result = [objc_opt_self() newFeaturesCategory];
    if (result)
    {
      v3 = result;
      sub_265AA7570();

      return sub_265AA6E10();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_265A78204(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_265AA6E20();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_265A7827C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_265AA6E20();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_265A78388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDA0);
  v4 = *(a1 + 16);
  v5 = swift_dynamicCast();
  return (*(*(v4 - 8) + 56))(a2, v5 ^ 1u, 1, v4);
}

uint64_t sub_265A78430(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  sub_265AA7B30();
  (*(*(a2 - 8) + 8))(a1, a2);
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_265A784CC()
{
  result = sub_265A79368(MEMORY[0x277D84F90]);
  qword_280031EC8 = result;
  return result;
}

uint64_t sub_265A784F4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280031EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280031EC8;
  if (*(qword_280031EC8 + 16) && (v5 = sub_265A78940(a1), (v6 & 1) != 0))
  {
    sub_265A79488(*(v4 + 56) + 8 * v5, &v17, &qword_28002FDB8);
    v18 = 0;
    sub_265A79488(&v17, &v16, &qword_28002FDB8);
    sub_265A65EE0(&v17, &qword_28002FDA8);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_265A65EE0(&v16, &qword_28002FDB8);
    if (Strong)
    {
      swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        v9 = v8;
        ObjectType = swift_getObjectType();
        (*(v9 + 56))(ObjectType, v9);
        v17 = 0;
        v18 = 1;
        swift_beginAccess();
        sub_265A78778(&v17, a1);
        swift_endAccess();
      }
    }

    v11 = swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
    v18 = 1;
    sub_265A65EE0(&v17, &qword_28002FDA8);
    v11 = swift_endAccess();
  }

  v12 = a2(v11);
  v14 = v13;
  swift_unknownObjectWeakInit();
  v19 = v12;
  v20 = v14;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDB0);
  sub_265AA7B80();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v18 = 0;
  swift_beginAccess();
  sub_265A78778(&v17, a1);
  swift_endAccess();
  return v12;
}

uint64_t sub_265A78778(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_265A65EE0(a1, &qword_28002FDA8);
    v5 = sub_265A78940(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_265A790F8();
        v10 = v13;
      }

      sub_265A79288(*(v10 + 56) + 8 * v8, &v15);
      sub_265A78D84(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_265A65EE0(&v15, &qword_28002FDA8);
  }

  else
  {
    sub_265A79288(a1, &v15);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_265A78F6C(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_265A78888()
{
  v1 = *v0;
  sub_265AA7C10();
  MEMORY[0x266768470](v1);
  return sub_265AA7C40();
}

uint64_t sub_265A788FC()
{
  v1 = *v0;
  sub_265AA7C10();
  MEMORY[0x266768470](v1);
  return sub_265AA7C40();
}

unint64_t sub_265A78940(uint64_t a1)
{
  sub_265AA7C10();
  MEMORY[0x266768470](a1);
  v2 = sub_265AA7C40();

  return sub_265A78A6C(a1, v2);
}

uint64_t sub_265A789AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_265A789E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265A78A08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_265A78A6C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_265A78AD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDC0);
  result = sub_265AA7A10();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = 8 * (v17 | (v8 << 6));
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + v20;
      if (a2)
      {
        sub_265A79288(v22, v31);
      }

      else
      {
        sub_265A79488(v22, v31, &qword_28002FDB8);
      }

      sub_265AA7C10();
      MEMORY[0x266768470](v21);
      result = sub_265AA7C40();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      *(*(v7 + 48) + v16) = v21;
      result = sub_265A79288(v31, *(v7 + 56) + v16);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_265A78D84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265AA78F0() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_265AA7C10();
      MEMORY[0x266768470](v9);
      result = sub_265AA7C40();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDB8);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDB8);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v14 = *(a2 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v16;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_265A78F6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_265A78940(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_265A790F8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_265A78AD8(v14, a3 & 1);
    v9 = sub_265A78940(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for BookendType(0);
      result = sub_265AA7BA0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 8 * v9;

    return sub_265A792F8(a1, v20);
  }

  else
  {

    return sub_265A7908C(v9, a2, a1, v19);
  }
}

uint64_t sub_265A7908C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_265A79288(a3, a4[7] + 8 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_265A790F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDC0);
  v2 = *v0;
  v3 = sub_265AA7A00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_265A79488(*(v2 + 56) + v17, v19, &qword_28002FDB8);
        *(*(v4 + 48) + v17) = v18;
        result = sub_265A79288(v19, *(v4 + 56) + v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_265A79288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A792F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_265A79368(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDC0);
    v3 = sub_265AA7A20();
    for (i = a1 + 32; ; i += 16)
    {
      sub_265A79488(i, &v11, &qword_28002FDC8);
      v5 = v11;
      result = sub_265A78940(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_265A79288(&v12, v3[7] + 8 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_265A79488(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_265A79524()
{
  result = qword_28002FDD0;
  if (!qword_28002FDD0)
  {
    type metadata accessor for BookendType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FDD0);
  }

  return result;
}

uint64_t sub_265A795F0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_265A79680()
{
  if ((*(*v0 + 96))())
  {
    return 0;
  }

  (*(*v0 + 104))(1);
  v1 = v0[2];

  return v1;
}

uint64_t sub_265A7972C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_265A79764()
{
  result = swift_allocObject();
  *(result + 16) = 28267;
  *(result + 24) = 0xE200000000000000;
  *(result + 32) = 0;
  return result;
}